#include "manipulators.h"
#include "stm32f407xx.h"
#include "stm32f4xx_ll_usart.h"
#include "peripheral.h"
#include "gpio_map.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

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
        DYN_SET_ANGLE(manip_ctrl, 0, 255, 0, 0, 0);
        stm_driver_send_msg(manip_ctrl->dyn_cmd[0].cmd_buff, 10);
        return;
}

static void manip_hw_config(void)
{
        LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOD);
        LL_GPIO_SetPinMode(MANIP_PUMP_PORT, MANIP_PUMP_PIN,
                           LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinOutputType(MANIP_PUMP_PORT, MANIP_PUMP_PIN,
                                 MANIP_PUMP_OUTPUT_TYPE);
        LL_GPIO_SetPinPull(MANIP_PUMP_PORT, MANIP_PUMP_PIN,
                           LL_GPIO_PULL_NO);
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

        manip_ctrl_st.manip_notify = xTaskGetCurrentTaskHandle();
        manip_ctrl_st.flags = 0x00;
        for (i = 0;i < MAX_COMMANDS; i++) {
                memset(manip_ctrl_st.dyn_cmd[i].cmd_buff, 0, 10);
                manip_ctrl_st.dyn_cmd[i].delay_ms = 0;
        }
        manip_ctrl = &manip_ctrl_st;
        manip_hw_config();
        step_init();
        while (1) {
                ulTaskNotifyTake(pdTRUE, portMAX_DELAY);
                for (i = 0; i < manip_ctrl->cmd_len; i++) {
                        stm_driver_send_msg(manip_ctrl->dyn_cmd[i].cmd_buff,
                                            10);
                        vTaskDelay(manip_ctrl->dyn_cmd[i].delay_ms);
                }
                manip_clr_flag(manip_ctrl, DYN_BUSY);
        }
        return;
}

/*
 * Set of motor related handlers for terminal
 */

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
        if (!manip_ctrl || is_manip_flag_set(manip_ctrl, DYN_BUSY)
            || is_manip_flag_set(manip_ctrl, BLOCK_DYN))
                goto error_set_pump_low;
        /*
         * Set dynamixel angles
         */
        DYN_SET_ANGLE(manip_ctrl, 0, 0x01, 0x032c, 0x00f9, 100);
        DYN_SET_ANGLE(manip_ctrl, 1, 0x02, 0x0194, 0x00f9, 400);
        DYN_SET_ANGLE(manip_ctrl, 2, 0x01, 0x036c, 0x00f9, 300);
        manip_ctrl->cmd_len = 3;
        /*
         * Notify manipulators manager
         */
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
        if (!manip_ctrl || is_manip_flag_set(manip_ctrl, DYN_BUSY)
            || is_manip_flag_set(manip_ctrl, BLOCK_DYN))
                goto error_set_pump_default;
         /*
         * Set dynamixel angles
         */
        DYN_SET_ANGLE(manip_ctrl, 0, 0x01, 0x02af, 0x00f9, 50);
        DYN_SET_ANGLE(manip_ctrl, 1, 0x02, 0x0229, 0x00f9, 400);
        manip_ctrl->cmd_len = 2;
        /*
         * Notify manipulators manager
         */
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
        if (!manip_ctrl || is_manip_flag_set(manip_ctrl, DYN_BUSY)
            || is_manip_flag_set(manip_ctrl, BLOCK_DYN))
                goto error_set_pump_high;
        /*
         * Set dynamixel angles
         */
        DYN_SET_ANGLE(manip_ctrl, 0, 0x01, 0x01c8, 0x00f9, 100);
        DYN_SET_ANGLE(manip_ctrl, 1, 0x02, 0x0248, 0x00f9, 600);
        DYN_SET_ANGLE(manip_ctrl, 2, 0x01, 0x018c, 0x00f9, 100);
        DYN_SET_ANGLE(manip_ctrl, 3, 0x02, 0x020d, 0x00f9, 200);
        DYN_SET_ANGLE(manip_ctrl, 4, 0x01, 0x015a, 0x00f9, 200);
        manip_ctrl->cmd_len = 5;
        /*
         * Notify manipulators manager
         */
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
        if (!manip_ctrl || is_manip_flag_set(manip_ctrl, DYN_BUSY)
            || is_manip_flag_set(manip_ctrl, BLOCK_DYN))
                goto error_release_grabber;
        /*
         * Set dynamixel angles
         */
        DYN_SET_ANGLE(manip_ctrl, 0, 0x03, 0x00df, 0x0000, 100);
        manip_ctrl->cmd_len = 1;
        /*
         * Notify manipulators manager
         */
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
        if (!manip_ctrl || is_manip_flag_set(manip_ctrl, DYN_BUSY)
            || is_manip_flag_set(manip_ctrl, BLOCK_DYN))
                goto error_prop_pack;
        /*
         * Set dynamixel angles
         */
        DYN_SET_ANGLE(manip_ctrl, 0, 0x03, 0x01cc, 0x0000, 200);
        manip_ctrl->cmd_len = 1;
        /*
         * Notify manipulators manager
         */
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
        if (!manip_ctrl || is_manip_flag_set(manip_ctrl, DYN_BUSY)
            || is_manip_flag_set(manip_ctrl, BLOCK_DYN))
                goto error_grab_pack;
        /*
         * Set dynamixel angles
         */
        DYN_SET_ANGLE(manip_ctrl, 0, 0x03, 0x0259, 0x0000, 700);
        manip_ctrl->cmd_len = 1;
        /*
         * Notify manipulators manager
         */
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

/*
 * Releaser set to default position
 */
int cmd_releaser_default(char *args)
{
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl || is_manip_flag_set(manip_ctrl, DYN_BUSY)
            || is_manip_flag_set(manip_ctrl, BLOCK_DYN))
                goto error_releaser_default;
        /*
         * Set dynamixel angles
         */
        DYN_SET_ANGLE(manip_ctrl, 0, 0x04, 0x01eb, 0x0000, 300);
        manip_ctrl->cmd_len = 1;
        /*
         * Notify manipulators manager
         */
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
        if (!manip_ctrl || is_manip_flag_set(manip_ctrl, DYN_BUSY)
            || is_manip_flag_set(manip_ctrl, BLOCK_DYN))
                goto error_releaser_throw;
        /*
         * Set dynamixel angles
         */
        DYN_SET_ANGLE(manip_ctrl, 0, 0x04, 0x02a2, 0x0000, 300);
        manip_ctrl->cmd_len = 1;
        /*
         * Notify manipulators manager
         */
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
