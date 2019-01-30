#include "stepper.h"
#include "gpio_map.h"
#include "peripheral.h"

#include "FreeRTOS.h"
#include "task.h"

#include <stdlib.h>
/*
 * Private variable for stepper motor control
 */
static step_ctrl_t step_ctrl[NUMBER_OF_STEP_MOTORS];

/*
 * Private functions
 */

/*
 * Hardware initialization
 */
static void step_hw_config(void)
{
        /*
         * Hardware pin initialization for step motors
         * Note: user needs to manually assign 4 pins for each motor
         */
        LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOE);
        LL_GPIO_SetPinMode(STEP_MOTOR_PORT, STEP_MOTOR_P1, LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinMode(STEP_MOTOR_PORT, STEP_MOTOR_P2, LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinMode(STEP_MOTOR_PORT, STEP_MOTOR_P3, LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinMode(STEP_MOTOR_PORT, STEP_MOTOR_P4, LL_GPIO_MODE_OUTPUT);
        /*
         * Hardware initialization for limit switch
         */
        LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
        LL_GPIO_SetPinMode(STEP_LIMIT_SWITCH_PORT, STEP_LIMIT_SWITCH_PIN,
                           LL_GPIO_MODE_INPUT);
        /*
         * Timer initialization for all step motors control
         */
        LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM5);
        LL_TIM_SetCounterMode(STEP_TIM, STEP_TIM_MODE);
        LL_TIM_SetAutoReload(STEP_TIM, STEP_TIM_ARR);
        LL_TIM_SetPrescaler(STEP_TIM, STEP_TIM_PSC);
        LL_TIM_EnableIT_UPDATE(STEP_TIM);
        /*
         * Set interrupt for timer
         */
        NVIC_SetPriority(STEP_TIM_IRQN, STEP_TIM_IRQN_PRIORITY);
        NVIC_EnableIRQ(STEP_TIM_IRQN);
        return;
}

/*
 * Make step for 1st motor
 */
static void step_make_step1(void)
{
        switch (abs(step_ctrl[0].current_step % 4)) {
                case 0:
                        LL_GPIO_SetOutputPin(STEP_MOTOR_PORT, STEP_MOTOR_P4);
                        LL_GPIO_ResetOutputPin(STEP_MOTOR_PORT, STEP_MOTOR_P3);
                        LL_GPIO_SetOutputPin(STEP_MOTOR_PORT, STEP_MOTOR_P2);
                        LL_GPIO_ResetOutputPin(STEP_MOTOR_PORT, STEP_MOTOR_P1);
                        break;
                case 1:
                        LL_GPIO_ResetOutputPin(STEP_MOTOR_PORT, STEP_MOTOR_P4);
                        LL_GPIO_SetOutputPin(STEP_MOTOR_PORT, STEP_MOTOR_P3);
                        LL_GPIO_SetOutputPin(STEP_MOTOR_PORT, STEP_MOTOR_P2);
                        LL_GPIO_ResetOutputPin(STEP_MOTOR_PORT, STEP_MOTOR_P1);
                        break;
                case 2:
                        LL_GPIO_ResetOutputPin(STEP_MOTOR_PORT, STEP_MOTOR_P4);
                        LL_GPIO_SetOutputPin(STEP_MOTOR_PORT, STEP_MOTOR_P3);
                        LL_GPIO_ResetOutputPin(STEP_MOTOR_PORT, STEP_MOTOR_P2);
                        LL_GPIO_SetOutputPin(STEP_MOTOR_PORT, STEP_MOTOR_P1);
                        break;
                case 3:
                        LL_GPIO_SetOutputPin(STEP_MOTOR_PORT, STEP_MOTOR_P4);
                        LL_GPIO_ResetOutputPin(STEP_MOTOR_PORT, STEP_MOTOR_P3);
                        LL_GPIO_ResetOutputPin(STEP_MOTOR_PORT, STEP_MOTOR_P2);
                        LL_GPIO_SetOutputPin(STEP_MOTOR_PORT, STEP_MOTOR_P1);
                        break;
        }
        return;
}

/*
 * Stop 1st motor
 */
static void step_stop1(void)
{
        LL_GPIO_ResetOutputPin(STEP_MOTOR_PORT, STEP_MOTOR_P1);
        LL_GPIO_ResetOutputPin(STEP_MOTOR_PORT, STEP_MOTOR_P2);
        LL_GPIO_ResetOutputPin(STEP_MOTOR_PORT, STEP_MOTOR_P3);
        LL_GPIO_ResetOutputPin(STEP_MOTOR_PORT, STEP_MOTOR_P4);
}

/*
 * End effector for 1st motor
 */
static uint32_t step_end_effector(void)
{
        return LL_GPIO_IsOutputPinSet(STEP_LIMIT_SWITCH_PORT,
                                      STEP_LIMIT_SWITCH_PIN);
}

/*
 * Public functions
 */
void step_init(step_ctrl_t *step_ctrl)
{
        int i = 0;

        /*
         * Init step motor pins and timer
         */
        step_hw_config();
        /*
         * Set default speed and clear calibration flag for all step motors
         */
        for (i = 0; i < NUMBER_OF_STEP_MOTORS; i++) {
                step_set_speed(i, REV_PER_SEC_1_75);
                step_clr_flag(step_ctrl[i], STEP_RUNNING);
                step_clr_flag(step_ctrl[i], STEP_CALIBRATED);
                step_clr_flag(step_ctrl[i], STEP_START_CALIBRATION);
        }
        /*
         * Assign private function for step motor movement
         */
        step_ctrl[0].step_make_step = step_make_step1;
        step_ctrl[0].step_stop = step_stop1;
        step_ctrl[0].step_end_effector = step_end_effector;
        return;
}

int step_start_calibration(uint8_t id)
{
        if (!IS_VALID_ID(id))
                return -1;
        step_set_flag(step_ctrl[id], STEP_START_CALIBRATION);
        LL_TIM_EnableCounter(STEP_TIM);
        return 0;
}

int step_is_calibrated(uint8_t id)
{
        if (!IS_VALID_ID(id))
                return -1;
        return is_step_flag_set(step_ctrl[id], STEP_CALIBRATED);
}

int step_set_speed(uint8_t id, step_speed_t rev_per_sec)
{
        if (!IS_VALID_ID(id))
                return -1;

        step_ctrl[id].step_delay_ticks = (int) rev_per_sec;
        return 0;
}

int step_set_step_goal(uint8_t id, int goal_step)
{
        if (!IS_VALID_ID(id))
                return -1;
        if (abs(goal_step - step_ctrl[id].current_step > MAX_STEPS))
                return -1;
        if (!is_step_flag_set(step_ctrl[id], STEP_RUNNING) ||
            !is_step_flag_set(step_ctrl[id], STEP_CALIBRATED))
                return -1;
        step_ctrl[id].goal_step = goal_step;
        return 0;
}

/*
 * Hardware interrupts
 */
void TIM5_IRQHandler(void)
{
        BaseType_t xHigherPriorityTaskWoken = pdFALSE;
        int i = 0;
        int leave_steps = 0;

        LL_TIM_ClearFlag_UPDATE(ODOMETRY_TIM_MODULE);
        for (i = 0; i < NUMBER_OF_STEP_MOTORS; i++) {
                step_ctrl[i].current_tick++;
                if (step_ctrl[i].current_tick == step_ctrl[i].step_delay_ticks
                    && is_step_flag_set(step_ctrl[i], STEP_CALIBRATED)) {
                        step_ctrl[i].current_tick = 0;
                        leave_steps = step_ctrl[i].goal_step -
                                      step_ctrl[i].current_step;
                        if (leave_steps > 0) {
                                step_set_flag(step_ctrl[i], STEP_RUNNING);
                                step_ctrl[i].current_step++;
                                step_ctrl[i].step_make_step();
                        }
                        if (leave_steps < 0) {
                                step_set_flag(step_ctrl[i], STEP_RUNNING);
                                step_ctrl[i].current_step--;
                                step_ctrl[i].step_make_step();
                        }
                        else {
                                step_ctrl[i].step_stop();
                                step_clr_flag(step_ctrl[i], STEP_RUNNING);
                        }
                }
                if (is_step_flag_set(step_ctrl[i], STEP_START_CALIBRATION)) {
                        step_set_flag(step_ctrl[i], STEP_RUNNING);
                        step_ctrl[i].step_make_step();
                        step_ctrl[i].current_step--;
                        if (step_ctrl[0].step_end_effector()) {
                                step_ctrl[i].step_stop();
                                step_ctrl[i].current_step = 0;
                                step_set_flag(step_ctrl[i], STEP_CALIBRATED);
                                step_clr_flag(step_ctrl[i], STEP_RUNNING);
                                step_clr_flag(step_ctrl[i],
                                              STEP_START_CALIBRATION);
                        }
                }
                
        }
        portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
}
