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
        LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOD);
        LL_GPIO_SetPinMode(STEP_LIMIT_SWITCH_PORT, STEP_LIMIT_SWITCH_PIN,
                           LL_GPIO_MODE_INPUT);
        LL_GPIO_SetPinPull(STEP_LIMIT_SWITCH_PORT, STEP_LIMIT_SWITCH_PIN,
                           LL_GPIO_PULL_NO);
        /*
         * Timer initialization for all step motors control
         */
        LL_APB2_GRP1_EnableClock(LL_APB2_GRP1_PERIPH_TIM9);
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
 * Register pins for step motors driver
 */
static void step_reg_motor(uint8_t id, GPIO_TypeDef *GPIOx, uint32_t pin1,
                           uint32_t pin2, uint32_t pin3, uint32_t pin4) {
        step_ctrl[id].step_port = GPIOx;
        step_ctrl[id].step_state_pins[3] = pin4 | pin1;
        step_ctrl[id].step_state_pins[2] = pin2 | pin4;
        step_ctrl[id].step_state_pins[1] = pin2 | pin3;
        step_ctrl[id].step_state_pins[0] = pin1 | pin3;
        step_ctrl[id].step_mask = pin1 | pin2 | pin3 | pin4;
        return;
}

/*
 * Register pin for limit switcher
 */
static void step_reg_limit_switch(uint8_t id, GPIO_TypeDef *GPIOx,
                                  uint32_t pin) {
        step_ctrl[id].limit_swtch_port = GPIOx;
        step_ctrl[id].limit_swtch_pin = pin;
        return;
}

/*
 * Make step for 1st motor
 */
static void step_make_step(uint8_t id)
{
        uint32_t port_state = LL_GPIO_ReadInputPort(step_ctrl[id].step_port);

        port_state &= ~step_ctrl[id].step_mask;
        port_state |= step_ctrl[id].step_state_pins[step_ctrl[id].current_step
                                                    & 0x03];
        LL_GPIO_WriteOutputPort(step_ctrl[id].step_port, port_state);
        return;
}

/*
 * Stop 1st motor
 */
static void step_stop(uint8_t id)
{
        uint32_t port_state = LL_GPIO_ReadInputPort(step_ctrl[id].step_port);

        port_state &= ~step_ctrl[id].step_mask;
        LL_GPIO_WriteOutputPort(step_ctrl[id].step_port, port_state);
        return;
}

/*
 * End effector for 1st motor
 */
static uint32_t step_is_reached_limit(uint8_t id)
{
        return !LL_GPIO_IsInputPinSet(step_ctrl[id].limit_swtch_port,
                                     step_ctrl[id].limit_swtch_pin);
}

/*
 * Public functions
 */
void step_init(void)
{
        int i = 0;

        /*
         * Init step motor pins and timer
         */
        step_hw_config();
        /*
         * Register step motor and corresponding limit switch
         */
        step_reg_motor(0, STEP_MOTOR_PORT, STEP_MOTOR_P1, STEP_MOTOR_P2,
                       STEP_MOTOR_P3, STEP_MOTOR_P4);
        step_reg_limit_switch(0, STEP_LIMIT_SWITCH_PORT, STEP_LIMIT_SWITCH_PIN);
        /*
         * Set default speed and clear calibration flag for all step motors
         */
        for (i = 0; i < NUMBER_OF_STEP_MOTORS; i++) {
                step_ctrl[i].current_tick = 0;
                step_ctrl[i].goal_step = 0;
                step_set_speed(i, REV_PER_SEC_1);
                step_clr_flag(step_ctrl[i], STEP_RUNNING);
                step_clr_flag(step_ctrl[i], STEP_CALIBRATED);
                step_clr_flag(step_ctrl[i], STEP_START_CALIBRATION);
        }
        return;
}

void step_stop_motors(void)
{
        int i = 0;

        for (i = 0; i < NUMBER_OF_STEP_MOTORS; i++)
                step_stop(i);
        LL_TIM_DisableCounter(STEP_TIM);
}

int step_start_calibration(uint8_t id)
{
        if (!IS_VALID_ID(id))
                return -1;
        step_clr_flag(step_ctrl[id], STEP_CALIBRATED);
        step_set_flag(step_ctrl[id], STEP_START_CALIBRATION);
        step_set_flag(step_ctrl[id], STEP_RUNNING);
        LL_TIM_EnableCounter(STEP_TIM);
        return 0;
}

int step_is_calibrated(uint8_t id)
{
        if (!IS_VALID_ID(id))
                return -1;
        return is_step_flag_set(step_ctrl[id], STEP_CALIBRATED);
}

int step_is_running(uint8_t id)
{
        if (!IS_VALID_ID(id))
                return -1;
       return is_step_flag_set(step_ctrl[id], STEP_RUNNING);
}

int step_set_speed(uint8_t id, step_speed_t rev_per_sec)
{
        if (!IS_VALID_ID(id))
                return -1;

        step_ctrl[id].step_delay_ticks = (int) rev_per_sec;
        return 0;
}

int step_set_step_goal(uint8_t id, uint32_t goal_step)
{
        if (!IS_VALID_ID(id))
                return -1;
        if (goal_step > MAX_STEPS)
                return -1;
        if (is_step_flag_set(step_ctrl[id], STEP_RUNNING) ||
            !is_step_flag_set(step_ctrl[id], STEP_CALIBRATED))
                return -1;
        step_ctrl[id].goal_step = goal_step;
        LL_TIM_EnableCounter(STEP_TIM);
        return 0;
}

uint32_t step_get_current_step(uint8_t id)
{
        return step_ctrl[id].current_step;
}

/*
 * Hardware interrupts
 */
void TIM1_BRK_TIM9_IRQHandler(void)
{
        BaseType_t xHigherPriorityTaskWoken = pdFALSE;
        int i = 0;
        int leave_steps = 0;

        LL_TIM_ClearFlag_UPDATE(STEP_TIM);
        for (i = 0; i < NUMBER_OF_STEP_MOTORS; i++) {
                step_ctrl[i].current_tick++;
                if (step_ctrl[i].current_tick >= step_ctrl[i].step_delay_ticks
                    && is_step_flag_set(step_ctrl[i], STEP_CALIBRATED)) {
                        step_ctrl[i].current_tick = 0;
                        leave_steps = step_ctrl[i].goal_step -
                                      step_ctrl[i].current_step;
                        if (leave_steps) {
                                step_set_flag(step_ctrl[i], STEP_RUNNING);
                                step_ctrl[i].current_step +=
                                             (leave_steps > 0 ? 1 : -1);
                                step_make_step(i);
                        } else {
                                step_stop(i);
                                step_clr_flag(step_ctrl[i], STEP_RUNNING);
                                LL_TIM_DisableCounter(STEP_TIM);
                        }
                }
                if (is_step_flag_set(step_ctrl[i], STEP_START_CALIBRATION)) {
                        step_set_flag(step_ctrl[i], STEP_RUNNING);
                        step_make_step(i);
                        step_ctrl[i].current_step--;
                        if (step_is_reached_limit(i)) {
                                step_stop(i);
                                step_ctrl[i].current_step = 0;
                                step_set_flag(step_ctrl[i], STEP_CALIBRATED);
                                step_clr_flag(step_ctrl[i], STEP_RUNNING);
                                step_clr_flag(step_ctrl[i],
                                              STEP_START_CALIBRATION);
                                step_ctrl[i].current_tick = 0;
                                LL_TIM_DisableCounter(STEP_TIM);
                        }
                }
                
        }
        portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
}
