#include "manipulators.h"
#include "stm32f407xx.h"
#include "stm32f4xx_ll_usart.h"
#include "peripheral.h"
#include "gpio_map.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

#include "FreeRTOS.h"
#include "task.h"
#include "terminal_cmds.h"
#include "motor_kinematics.h"
#include "stepper.h"

/*
 * Private task notifier
 */
static manip_ctrl_t *manip_ctrl = NULL;

/*
 * Private functions
 */
static void stm_driver_send_msg(uint8_t *buff, int len)
{
        int i = 0;

        LL_USART_ClearFlag_TC(STM_DRIVER_USART);
        while (len--) {
                while (!LL_USART_IsActiveFlag_TXE(STM_DRIVER_USART));
                LL_USART_TransmitData8(STM_DRIVER_USART, buff[i++]);
        }
        while (!LL_USART_IsActiveFlag_TC(STM_DRIVER_USART));
        return;
}

static void manip_dyn_stop(void)
{
        uint8_t tx[] = {0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
        stm_driver_send_msg(tx, 10);
        return;
}

static void manip_hw_config(void)
{
        /*
         * Pump pin configuration
         */
        LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOD);
        LL_GPIO_SetPinMode(MANIP_PUMP_PORT, MANIP_PUMP_PIN,
                           LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinOutputType(MANIP_PUMP_PORT, MANIP_PUMP_PIN,
                                 MANIP_PUMP_OUTPUT_TYPE);
        LL_GPIO_SetPinPull(MANIP_PUMP_PORT, MANIP_PUMP_PIN,
                           LL_GPIO_PULL_NO);
        /*
         * Pack check pin configuration
         */
        LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOE);
        LL_GPIO_SetPinMode(MANIP_PACK_CHECK_PORT, MANIP_PACK_CHECK_PIN,
                           LL_GPIO_MODE_INPUT);
        LL_GPIO_SetPinPull(MANIP_PACK_CHECK_PORT, MANIP_PACK_CHECK_PIN,
                           LL_GPIO_PULL_NO);
        /*
         * Dynamixel update timer
         */
        LL_APB2_GRP1_EnableClock(LL_APB2_GRP1_PERIPH_TIM8);
        LL_TIM_SetAutoReload(DYNAMIXEL_TIM, DYNAMIXEL_TIM_ARR);
        LL_TIM_SetPrescaler(DYNAMIXEL_TIM, DYNAMIXEL_TIM_PSC);
        LL_TIM_SetCounterMode(DYNAMIXEL_TIM, LL_TIM_COUNTERMODE_UP);
        LL_TIM_EnableIT_UPDATE(DYNAMIXEL_TIM);
        NVIC_SetPriority(DYNAMIXEL_TIM_IRQN, DYNAMIXEL_TIM_IRQN_PRIORITY);
        NVIC_EnableIRQ(DYNAMIXEL_TIM_IRQN);
        return;
}

static void manip_pump_start(void)
{
        LL_GPIO_SetOutputPin(MANIP_PUMP_PORT, MANIP_PUMP_PIN);
        return;
}

static void manip_pump_stop(void)
{
        LL_GPIO_ResetOutputPin(MANIP_PUMP_PORT, MANIP_PUMP_PIN);
        return;
}

static uint8_t manip_pack_check(void)
{
        return (uint8_t) !LL_GPIO_IsInputPinSet(MANIP_PACK_CHECK_PORT,
                                                MANIP_PACK_CHECK_PIN);
}

static void dyn_set_angle(uint8_t num, uint8_t id, uint16_t angle,
                          uint16_t speed)
{
        dyn_ctrl_t *dyn = &(manip_ctrl->sequence_cmd[num]);
        float delay_ms_f = 0;

        manip_ctrl->total_cmd += 1;
        dyn->id = id;
        dyn->goal_pos = angle;
        dyn->current_pos = manip_ctrl->dyn_pos[id - 1];
        manip_ctrl->dyn_pos[id - 1] = dyn->goal_pos;
        dyn->speed = speed;
        dyn->cmd_started = 0;
        dyn->cmd_completed = 0;
        if (dyn->current_pos == 0) {
                dyn->delay_ms = DEFAULT_DELAY;
        }
        else {
                delay_ms_f = fabs((float)(dyn->goal_pos - dyn->current_pos)) /
                             (float) (dyn->speed)  * CONVERT_COEF_MS
                             + RELAXATION_TIME;
                dyn->delay_ms = (uint32_t) delay_ms_f;
        }
        dyn->cmd_buff[0] = 0x00;
        dyn->cmd_buff[1] = (id);
        dyn->cmd_buff[2] = (uint8_t) (angle & 0xff);
        dyn->cmd_buff[3] = (uint8_t) ((angle >> 8) & 0xff);
        dyn->cmd_buff[4] = (uint8_t) (speed & 0xff);
        dyn->cmd_buff[5] = (uint8_t) ((speed >> 8) & 0xff);
        return;
}

static void dyn_update(void)
{
        int i = 0;
        dyn_ctrl_t *dyn = manip_ctrl->sequence_cmd;

        for (i = manip_ctrl->completed_cmd; i <= manip_ctrl->current_cmd; i++) {
                if ((manip_ctrl->current_time - dyn[i].start_time >= dyn[i].delay_ms) && 
                    (dyn[i].cmd_started)) {
                        dyn[i].current_pos = dyn[i].goal_pos;
                        dyn[i].cmd_completed = 1;
                        dyn_clr_flag(manip_ctrl, dyn[i].id);
                }
        }
}

static void cmd_update(void)
{
        int i = 0;
        dyn_ctrl_t *dyn = manip_ctrl->sequence_cmd;

        for (i = manip_ctrl->completed_cmd; i <= manip_ctrl->current_cmd; i++) {
                if (dyn[i].cmd_completed == 1) 
                        manip_ctrl->completed_cmd++;
                else
                        break;
        }
}


static void dyn_time_slice_operator(manip_ctrl_t *manip_ctrl)
{
        dyn_ctrl_t *dyn = manip_ctrl->sequence_cmd;

        dyn_update();
        if (!(dyn[manip_ctrl->current_cmd].cmd_started) &&
            !(is_dyn_flag_set(manip_ctrl, dyn[manip_ctrl->current_cmd].id))) {
                dyn[manip_ctrl->current_cmd].cmd_started = 1;
                stm_driver_send_msg(dyn[manip_ctrl->current_cmd].cmd_buff, 10);
                dyn[manip_ctrl->current_cmd].start_time = manip_ctrl->current_time;
                dyn_set_flag(manip_ctrl, dyn[manip_ctrl->current_cmd].id);
                if (manip_ctrl->current_cmd != manip_ctrl->total_cmd - 1) {
                        manip_ctrl->current_cmd++;
                        vTaskDelay(10);
                }

        }
        cmd_update();
        return;
}

/*
 * Set initial speeds
 */
static void dyn_set_speeds(void)
{
        uint8_t tx[10];
        int i = 0;
        int j = 0;

        memset(tx, 0x00, 10);
        tx[0] = 0x01;
        for (i = 0, j = 1; i < NUMBER_OF_DYNAMIXELS; i++, j = j + 2) {
                tx[j+1] = (uint8_t) (manip_ctrl->dyn_speeds[i] & 0xff);
                tx[j] = (uint8_t) ((manip_ctrl->dyn_speeds[i] >> 8) & 0xff);
        }
        stm_driver_send_msg(tx, 10);
        return;
}

/*
 * Set all manipulators to default position
 */
static void manip_default_pos(void)
{
        uint32_t cur_step = 0;
        uint32_t goal_step = 0;
        /*
         * Start step motor calibration
         */
        step_start_calibration(0);
        /*
         * Set grabber and manipulator to default states
         */
        while (step_is_running(0))
                taskYIELD();
        cur_step = step_get_current_step(0);
        goal_step = cur_step + PACK_SIZE_IN_STEPS;
        step_set_step_goal(0, goal_step);
        return;
}

/*
 * Public functions
 */
void manipulators_block(void)
{
        /*
         * Stop and block pump
         */
        manip_pump_stop();
        manip_set_flag(manip_ctrl, BLOCK_PUMP);
        /*
         * Stop and block dynamixels
         */
        manip_dyn_stop();
        manip_set_flag(manip_ctrl, BLOCK_DYN);
        /*
         * Stop and block stepper
         */
        step_stop_motors();
        manip_set_flag(manip_ctrl, BLOCK_STEPPER);
        return;
}

void manipulators_manager(void *arg)
{
        (void) arg;
        manip_ctrl_t manip_ctrl_st;
        int i = 0;
        uint16_t dyn_speeds[] = {DYN_SPEEDS};

        manip_ctrl_st.manip_notify = xTaskGetCurrentTaskHandle();
        manip_ctrl_st.dyn_status = 0x00;
        manip_ctrl_st.flags = 0x00;
        manip_ctrl_st.current_time = 0;
        manip_ctrl_st.total_cmd = 0;
        manip_ctrl_st.current_cmd = 0;
        manip_ctrl_st.completed_cmd = 0;
        for (i = 0; i < NUMBER_OF_DYNAMIXELS; i++) {
                manip_ctrl_st.dyn_pos[i] = 0x0000;
                manip_ctrl_st.dyn_speeds[i] = dyn_speeds[i];
        }
        for (i = 0; i < MAX_DYN_COMMANDS; i++) {
                memset(manip_ctrl_st.sequence_cmd[i].cmd_buff, 0, 10);
                manip_ctrl_st.sequence_cmd[i].goal_pos = 0x0000;
                manip_ctrl_st.sequence_cmd[i].current_pos = 0x0000;
                manip_ctrl_st.sequence_cmd[i].start_time = 0;
                manip_ctrl_st.sequence_cmd[i].cmd_started = 0;
                manip_ctrl_st.sequence_cmd[i].cmd_completed = 0;
        }
        manip_ctrl = &manip_ctrl_st;
        manip_hw_config();
        step_init();
        /*
         * Init all speeds and wait
         */
        dyn_set_speeds();
        vTaskDelay(30);
        /*
         * Set all manipulators to default position
         */
        manip_default_pos();
        while (1) {
                ulTaskNotifyTake(pdTRUE, portMAX_DELAY);
                if (manip_ctrl->sequence_cmd[manip_ctrl->total_cmd - 1].id == 0x01 ||
                    manip_ctrl->sequence_cmd[manip_ctrl->total_cmd - 1].id == 0x02)
                        manip_ctrl->sequence_cmd[manip_ctrl->total_cmd - 1].delay_ms +=
                                                        LAST_CMD_DELAY;
                LL_TIM_EnableCounter(DYNAMIXEL_TIM);
                manip_ctrl->current_cmd = 0;
                manip_ctrl->completed_cmd = 0;
                while (manip_ctrl->completed_cmd < manip_ctrl->total_cmd) {
                        dyn_time_slice_operator(manip_ctrl);
                        taskYIELD();
                }
                manip_ctrl->total_cmd = 0;
                manip_ctrl->current_cmd = 0;
                manip_ctrl->completed_cmd = 0;
                dyn_clr_flag(manip_ctrl, DYN_BUSY_POS);
                LL_TIM_DisableCounter(DYNAMIXEL_TIM);
                manip_clr_flag(manip_ctrl, DYN_BUSY);
        }
        return;
}

/*
 * Set of motor related handlers for terminal
 */

/*
 * Check pack status: 0 - fail, 1 - success
 */
int cmd_pack_check(char *args)
{
        uint8_t pack_status = manip_pack_check();
        memcpy(args, &pack_status, 1);
        return 1;
}

/*
 * Start step motor calibration
 */
int cmd_step_calibrate(char *args)
{
        if (is_manip_flag_set(manip_ctrl, BLOCK_STEPPER))
                goto error_step_calibrate;
        step_start_calibration(0);
        memcpy(args, "OK", 3);
        return 3;
error_step_calibrate:
        memcpy(args, "ER", 3);
        return 3;
}

/*
 * Set desired step for step motor
 */
int cmd_step_set_step(char *args)
{
        uint32_t *step_goal = (uint32_t *) args;

        if (!step_is_calibrated(0) ||
            is_manip_flag_set(manip_ctrl, BLOCK_STEPPER))
                goto error_step_set_step;
        if (step_set_step_goal(0, *step_goal))
                goto error_step_set_step;
        memcpy(args, "OK", 3);
        return 3;
error_step_set_step:
        memcpy(args, "ER", 3);
        return 3;
}

/*
 * Make step down for one pack
 */
int cmd_step_down(char *args)
{
        uint32_t cur_step = 0;
        uint32_t goal_step = 0;

        if (!step_is_calibrated(0) ||
            is_manip_flag_set(manip_ctrl, BLOCK_STEPPER))
                goto error_step_down;
        cur_step = step_get_current_step(0);
        goal_step = cur_step + PACK_SIZE_IN_STEPS;
        if (step_set_step_goal(0, goal_step))
                goto error_step_down;
        memcpy(args, "OK", 3);
        return 3;
error_step_down:
        memcpy(args, "ER", 3);
        return 3;
}

/*
 * Make step up for one pack
 */
int cmd_step_up(char *args)
{
        uint32_t cur_step = 0;
        uint32_t goal_step = 0;

        if (!step_is_calibrated(0) ||
            is_manip_flag_set(manip_ctrl, BLOCK_STEPPER))
                goto error_step_up;
        cur_step = step_get_current_step(0);
        goal_step = cur_step - PACK_SIZE_IN_STEPS;
        if (step_set_step_goal(0, goal_step))
                goto error_step_up;
        memcpy(args, "OK", 3);
        return 3;
error_step_up:
        memcpy(args, "ER", 3);
        return 3;
}

/*
* Retern running state
*/
int cmd_step_is_running(char *args)
{
        if (step_is_running(0))
                goto error_step_is_running;
        memcpy(args, "OK", 3);
        return 3;
error_step_is_running:
        memcpy(args, "ER", 3);
        return 3;
}

/*
 * Set pump to ground
 */
int cmd_set_pump_ground(char *args)
{
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl || is_dyn_flag_set(manip_ctrl, DYN_BUSY_POS)
            || is_manip_flag_set(manip_ctrl, BLOCK_DYN))
                goto error_set_pump_low;
        /*
         * Set dynamixel angles
         */
        dyn_set_angle(0, 0x01, 0x01ed, manip_ctrl->dyn_speeds[0]);
        dyn_set_angle(1, 0x02, 0x0292, manip_ctrl->dyn_speeds[1]);
        dyn_set_angle(2, 0x01, 0x01af, manip_ctrl->dyn_speeds[0]);
        dyn_set_angle(3, 0x02, 0x0262, manip_ctrl->dyn_speeds[1]);
        /*
         * Notify manipulators manager
         */
        dyn_set_flag(manip_ctrl, DYN_BUSY_POS);
        manip_set_flag(manip_ctrl, DYN_BUSY);
        xTaskNotifyGive(manip_ctrl->manip_notify);
        /*
         * Sent command to stm
         */
        memcpy(args, "OK", 3);
        return 3;

error_set_pump_low:
        memcpy(args, "ER", 3);
        return 3;
}

/*
 * Set pump to wall
 */
int cmd_set_pump_wall(char *args)
{
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl || is_dyn_flag_set(manip_ctrl, DYN_BUSY_POS)
            || is_manip_flag_set(manip_ctrl, BLOCK_DYN))
                goto error_set_pump_default;
         /*
         * Set dynamixel angles
         */
        dyn_set_angle(0, 0x01, 0x02B2, manip_ctrl->dyn_speeds[0]);
        dyn_set_angle(1, 0x02, 0x0238, manip_ctrl->dyn_speeds[1]);
        /*
         * Notify manipulators manager
         */
        dyn_set_flag(manip_ctrl, DYN_BUSY_POS);
        manip_set_flag(manip_ctrl, DYN_BUSY);
        xTaskNotifyGive(manip_ctrl->manip_notify);
        /*
         * Sent command to stm
         */
        memcpy(args, "OK", 3);
        return 3;

error_set_pump_default:
        memcpy(args, "ER", 3);
        return 3;
}

/*
 * Set pump to platform
 */
int cmd_set_pump_platform(char *args)
{
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl || is_dyn_flag_set(manip_ctrl, DYN_BUSY_POS)
            || is_manip_flag_set(manip_ctrl, BLOCK_DYN))
                goto error_set_pump_high;
        /*
         * Set dynamixel angles
         */
        dyn_set_angle(0, 0x01, 0x0369, manip_ctrl->dyn_speeds[0]);
        dyn_set_angle(1, 0x02, 0x01e0, manip_ctrl->dyn_speeds[1]);
        dyn_set_angle(2, 0x01, 0x03ba, manip_ctrl->dyn_speeds[0]);
        dyn_set_angle(3, 0x02, 0x01f8, manip_ctrl->dyn_speeds[1]);
        dyn_set_angle(4, 0x01, 0x03e1, manip_ctrl->dyn_speeds[0]);
        /*
         * Notify manipulators manager
         */
        dyn_set_flag(manip_ctrl, DYN_BUSY_POS);
        manip_set_flag(manip_ctrl, DYN_BUSY);
        xTaskNotifyGive(manip_ctrl->manip_notify);
        /*
         * Sent command to stm
         */
        memcpy(args, "OK", 3);
        return 3;

error_set_pump_high:
        memcpy(args, "ER", 3);
        return 3;
}

/*
 * Release grabber
 */
int cmd_release_grabber(char *args)
{
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl || is_dyn_flag_set(manip_ctrl, DYN_BUSY_POS)
            || is_manip_flag_set(manip_ctrl, BLOCK_DYN))
                goto error_release_grabber;
        /*
         * Set dynamixel angles
         */
        dyn_set_angle(0, 0x03, 0x0104, manip_ctrl->dyn_speeds[2]);
        /*
         * Notify manipulators manager
         */
        dyn_set_flag(manip_ctrl, DYN_BUSY_POS);
        manip_set_flag(manip_ctrl, DYN_BUSY);
        xTaskNotifyGive(manip_ctrl->manip_notify);
        /*
         * Sent command to stm
         */
        memcpy(args, "OK", 3);
        return 3;

error_release_grabber:
        memcpy(args, "ER", 3);
        return 3;
}

/*
 * Prop pack
 */
int cmd_prop_pack(char *args)
{
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl || is_dyn_flag_set(manip_ctrl, DYN_BUSY_POS)
            || is_manip_flag_set(manip_ctrl, BLOCK_DYN))
                goto error_prop_pack;
        /*
         * Set dynamixel angles
         */
        dyn_set_angle(0, 0x03, 0x01dd, manip_ctrl->dyn_speeds[2]);
        /*
         * Notify manipulators manager
         */
        dyn_set_flag(manip_ctrl, DYN_BUSY_POS);
        manip_set_flag(manip_ctrl, DYN_BUSY);
        xTaskNotifyGive(manip_ctrl->manip_notify);
        /*
         * Sent command to stm
         */
        memcpy(args, "OK", 3);
        return 3;

error_prop_pack:
        memcpy(args, "ER", 3);
        return 3;
}

/*
 * Grab pack
 */
int cmd_grab_pack(char *args)
{
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl || is_dyn_flag_set(manip_ctrl, DYN_BUSY_POS)
            || is_manip_flag_set(manip_ctrl, BLOCK_DYN))
                goto error_grab_pack;
        /*
         * Set dynamixel angles
         */
        dyn_set_angle(0, 0x03, 0x0278, manip_ctrl->dyn_speeds[2]);
        /*
         * Notify manipulators manager
         */
        dyn_set_flag(manip_ctrl, DYN_BUSY_POS);
        manip_set_flag(manip_ctrl, DYN_BUSY);
        xTaskNotifyGive(manip_ctrl->manip_notify);
        /*
         * Sent command to stm
         */
        memcpy(args, "OK", 3);
        return 3;

error_grab_pack:
        memcpy(args, "ER", 3);
        return 3;
}

int cmd_grabber_throw(char *args)
{
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl || is_dyn_flag_set(manip_ctrl, DYN_BUSY_POS)
            || is_manip_flag_set(manip_ctrl, BLOCK_DYN))
                goto error_grabber_throw;
        /*
         * Set dynamixel angles
         */
        dyn_set_angle(0, 0x03, 0x327, manip_ctrl->dyn_speeds[2]);
        /*
         * Notify manipulators manager
         */
        dyn_set_flag(manip_ctrl, DYN_BUSY_POS);
        manip_set_flag(manip_ctrl, DYN_BUSY);
        xTaskNotifyGive(manip_ctrl->manip_notify);
        /*
         * Sent command to stm
         */
        memcpy(args, "OK", 3);
        return 3;

error_grabber_throw:
        memcpy(args, "ER", 3);
        return 3;
}

/*
 * Releaser set to default position
 */
int cmd_releaser_default(char *args)
{
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl || is_dyn_flag_set(manip_ctrl, DYN_BUSY_POS)
            || is_manip_flag_set(manip_ctrl, BLOCK_DYN))
                goto error_releaser_default;
        /*
         * Set dynamixel angles
         */
        dyn_set_angle(0, 0x04, 0x015d, manip_ctrl->dyn_speeds[3]);
        /*
         * Notify manipulators manager
         */
        dyn_set_flag(manip_ctrl, DYN_BUSY_POS);
        manip_set_flag(manip_ctrl, DYN_BUSY);
        xTaskNotifyGive(manip_ctrl->manip_notify);
        /*
         * Sent command to stm
         */
        memcpy(args, "OK", 3);
        return 3;

error_releaser_default:
        memcpy(args, "ER", 3);
        return 3;
}

/*
 * Releaser throw pack
 */
int cmd_releaser_throw(char *args)
{
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl || is_dyn_flag_set(manip_ctrl, DYN_BUSY_POS)
            || is_manip_flag_set(manip_ctrl, BLOCK_DYN))
                goto error_releaser_throw;
        /*
         * Set dynamixel angles
         */
        dyn_set_angle(0, 0x04, 0x02a5, manip_ctrl->dyn_speeds[3]);
        manip_ctrl->sequence_cmd[manip_ctrl->total_cmd - 1].delay_ms +=
                                                            GRABBER_THROW_DELAY;
        /*
         * Notify manipulators manager
         */
        dyn_set_flag(manip_ctrl, DYN_BUSY_POS);
        manip_set_flag(manip_ctrl, DYN_BUSY);
        xTaskNotifyGive(manip_ctrl->manip_notify);
        /*
         * Sent command to stm
         */
        memcpy(args, "OK", 3);
        return 3;

error_releaser_throw:
        memcpy(args, "ER", 3);
        return 3;
}

/*
 * Releaser pack the pack into container
 */
int cmd_releaser_pack(char *args)
{
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl || is_dyn_flag_set(manip_ctrl, DYN_BUSY_POS)
            || is_manip_flag_set(manip_ctrl, BLOCK_DYN))
                goto error_releaser_pack;
        /*
         * Set dynamixel angles
         */
        dyn_set_angle(0, 0x04, 0x0261, manip_ctrl->dyn_speeds[3]);
        /*
         * Notify manipulators manager
         */
        dyn_set_flag(manip_ctrl, DYN_BUSY_POS);
        manip_set_flag(manip_ctrl, DYN_BUSY);
        xTaskNotifyGive(manip_ctrl->manip_notify);
        /*
         * Sent command to stm
         */
        memcpy(args, "OK", 3);
        return 3;

error_releaser_pack:
        memcpy(args, "ER", 3);
        return 3;
}

/*
 * Set angle to push plunium pack
 */
int cmd_push_blunium(char *args)
{
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl || is_dyn_flag_set(manip_ctrl, DYN_BUSY_POS)
            || is_manip_flag_set(manip_ctrl, BLOCK_DYN))
                goto error_push_blunium;
        /*
         * Set dynamixel angles
         */
        dyn_set_angle(0, 0x01, 0x02bd, manip_ctrl->dyn_speeds[0]);
        dyn_set_angle(1, 0x02, 0x01fa, manip_ctrl->dyn_speeds[1]);
        /*
         * Notify manipulators manager
         */
        dyn_set_flag(manip_ctrl, DYN_BUSY_POS);
        manip_set_flag(manip_ctrl, DYN_BUSY);
        xTaskNotifyGive(manip_ctrl->manip_notify);
        /*
         * Sent command to stm
         */
        memcpy(args, "OK", 3);
        return 3;

error_push_blunium:
        memcpy(args, "ER", 3);
        return 3;
}

int cmd_swing_blunium(char *args)
{
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl || is_dyn_flag_set(manip_ctrl, DYN_BUSY_POS)
            || is_manip_flag_set(manip_ctrl, BLOCK_DYN))
                goto error_swing_blunium;
        /*
         * Set dynamixel angles
         */
        dyn_set_angle(0, 0x01, 0x02bd, manip_ctrl->dyn_speeds[0]); // TODO change angle
        dyn_set_angle(1, 0x02, 0x01fa, manip_ctrl->dyn_speeds[1]);
        /*
         * Notify manipulators manager
         */
        dyn_set_flag(manip_ctrl, DYN_BUSY_POS);
        manip_set_flag(manip_ctrl, DYN_BUSY);
        xTaskNotifyGive(manip_ctrl->manip_notify);
        /*
         * Sent command to stm
         */
        memcpy(args, "OK", 3);
        return 3;

error_swing_blunium:
        memcpy(args, "ER", 3);
        return 3;
}

/*
 * Set angle to take goldenium pack
 */
int cmd_take_goldenium(char *args)
{
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl || is_dyn_flag_set(manip_ctrl, DYN_BUSY_POS)
            || is_manip_flag_set(manip_ctrl, BLOCK_DYN))
                goto error_take_goldenium;
        /*
         * Set dynamixel angles
         */
        dyn_set_angle(0, 0x01, 0x030b, manip_ctrl->dyn_speeds[0]);
        dyn_set_angle(1, 0x02, 0x0267, manip_ctrl->dyn_speeds[1]);
        /*
         * Notify manipulators manager
         */
        dyn_set_flag(manip_ctrl, DYN_BUSY_POS);
        manip_set_flag(manip_ctrl, DYN_BUSY);
        xTaskNotifyGive(manip_ctrl->manip_notify);
        /*
         * Sent command to stm
         */
        memcpy(args, "OK", 3);
        return 3;

error_take_goldenium:
        memcpy(args, "ER", 3);
        return 3;
}

/*
 * Lift up goldenium pack
 */
int cmd_lift_goldenium(char *args)
{
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl || is_dyn_flag_set(manip_ctrl, DYN_BUSY_POS)
            || is_manip_flag_set(manip_ctrl, BLOCK_DYN))
                goto error_lift_goldenium;
        /*
         * Set dynamixel angles
         */
        dyn_set_angle(0, 0x01, 0x0367, manip_ctrl->dyn_speeds[0]);
        dyn_set_angle(1, 0x02, 0x020b, manip_ctrl->dyn_speeds[1]);
        /*
         * Notify manipulators manager
         */
        dyn_set_flag(manip_ctrl, DYN_BUSY_POS);
        manip_set_flag(manip_ctrl, DYN_BUSY);
        xTaskNotifyGive(manip_ctrl->manip_notify);
        /*
         * Sent command to stm
         */
        memcpy(args, "OK", 3);
        return 3;

error_lift_goldenium:
        memcpy(args, "ER", 3);
        return 3;
}

/*
 * Start pumping
 */
int cmd_start_pump(char *args)
{
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl || is_manip_flag_set(manip_ctrl, BLOCK_PUMP))
                goto error_start_pump;

        /*
         * Start pumping
         */
        manip_pump_start();

        memcpy(args, "OK", 3);
        return 3;

error_start_pump:
        memcpy(args, "ER", 3);
        return 3;
}

/*
 * Stop pumping
 */
int cmd_stop_pump(char *args)
{
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl || is_manip_flag_set(manip_ctrl, BLOCK_PUMP))
                goto error_stop_pump;

        /*
         * Stop pumping
         */
        manip_pump_stop();

        memcpy(args, "OK", 3);
        return 3;

error_stop_pump:
        memcpy(args, "ER", 3);
        return 3;
}

/*
 * Hardware interrupts
 */
void TIM8_UP_TIM13_IRQHandler(void)
{
        BaseType_t xHigherPriorityTaskWoken = pdFALSE;

        if (LL_TIM_IsActiveFlag_UPDATE(DYNAMIXEL_TIM)) {
                LL_TIM_ClearFlag_UPDATE(DYNAMIXEL_TIM);
                /*
                 * Increment time in milliseconds
                 */
                manip_ctrl->current_time += 1;
                /*
                 * Notify task
                 */
                vTaskNotifyGiveFromISR(manip_ctrl->manip_notify,
                                       &xHigherPriorityTaskWoken);
        }
        portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
}
