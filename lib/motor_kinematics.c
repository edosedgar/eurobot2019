#include "motor_kinematics.h"
#include "peripheral.h"
#include "gpio_map.h"

#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"

#include "string.h"

/*
 * Main motor kinematics control structure
 */
motors_ctrl_t *mk_ctrl = NULL;

/*
 * Set motors pwm command
 * Input: values for each pwm channel
 * Output:
 */
int cmd_set_pwm(void *args)
{
        cmd_set_pwm_t *cmd_args = (cmd_set_pwm_t *)args;
        /*
         * Check whether kinematics ready or not
         */
        if (!mk_ctrl)
                goto error_set_pwm;
        /*
         * Arguments processing
         */

        /*
         * Update control structure
         */
        xSemaphoreTake(mk_ctrl->lock, portMAX_DELAY);
        mk_set_pwm_ctrl(mk_ctrl);
        mk_ctrl->pwm_motors[0] = 0.1f;
        mk_ctrl->pwm_motors[1] = 0.1f;
        mk_ctrl->pwm_motors[2] = 0.1f;
        mk_ctrl->pwm_motors[3] = 0.1f;
        xSemaphoreGive(mk_ctrl->lock);
        /*
         * Wake up kinematics task
         */
        xTaskNotifyGive(mk_ctrl->mk_notify);
        memcpy(args, "OK", 3);
        return 0;
error_set_pwm:
        memcpy(args, "ERROR", 6);
        return 0;
}

static void mk_hw_config()
{
        /* Init motor_kinematics pins */
        LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOD);
        LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
        LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOE);
        LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM4);

        /* Config direction pins */
        LL_GPIO_SetPinMode(MOTOR_CH1_DIR_PORT, MOTOR_CH1_DIR_PIN,
                           LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinOutputType(MOTOR_CH1_DIR_PORT, MOTOR_CH1_DIR_PIN,
                                 LL_GPIO_OUTPUT_PUSHPULL);
        LL_GPIO_SetPinPull(MOTOR_CH1_DIR_PORT, MOTOR_CH1_DIR_PIN,
                           LL_GPIO_PULL_NO);

        LL_GPIO_SetPinMode(MOTOR_CH2_DIR_PORT, MOTOR_CH2_DIR_PIN,
                           LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinOutputType(MOTOR_CH2_DIR_PORT, MOTOR_CH2_DIR_PIN,
                                 LL_GPIO_OUTPUT_PUSHPULL);
        LL_GPIO_SetPinPull(MOTOR_CH2_DIR_PORT, MOTOR_CH2_DIR_PIN,
                           LL_GPIO_PULL_NO);

        LL_GPIO_SetPinMode(MOTOR_CH3_DIR_PORT, MOTOR_CH3_DIR_PIN,
                           LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinOutputType(MOTOR_CH3_DIR_PORT, MOTOR_CH3_DIR_PIN,
                                 LL_GPIO_OUTPUT_PUSHPULL);
        LL_GPIO_SetPinPull(MOTOR_CH3_DIR_PORT, MOTOR_CH3_DIR_PIN,
                           LL_GPIO_PULL_NO);

        LL_GPIO_SetPinMode(MOTOR_CH4_DIR_PORT, MOTOR_CH4_DIR_PIN,
                           LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinOutputType(MOTOR_CH4_DIR_PORT, MOTOR_CH4_DIR_PIN,
                                 LL_GPIO_OUTPUT_PUSHPULL);
        LL_GPIO_SetPinPull(MOTOR_CH4_DIR_PORT, MOTOR_CH4_DIR_PIN,
                           LL_GPIO_PULL_NO);

        /* Config PWM pins */
        LL_GPIO_SetPinMode(MOTOR_CH_PWM_PORT, MOTOR_CH1_PWM_PIN,
                           LL_GPIO_MODE_ALTERNATE);
        LL_GPIO_SetAFPin_8_15(MOTOR_CH_PWM_PORT, MOTOR_CH1_PWM_PIN,
                              MOTOR_CH_PWM_PIN_AF);
        LL_GPIO_SetPinOutputType(MOTOR_CH_PWM_PORT, MOTOR_CH1_PWM_PIN,
                                 LL_GPIO_OUTPUT_PUSHPULL);

        LL_GPIO_SetPinMode(MOTOR_CH_PWM_PORT, MOTOR_CH2_PWM_PIN,
                           LL_GPIO_MODE_ALTERNATE);
        LL_GPIO_SetAFPin_8_15(MOTOR_CH_PWM_PORT, MOTOR_CH2_PWM_PIN,
                              MOTOR_CH_PWM_PIN_AF);
        LL_GPIO_SetPinOutputType(MOTOR_CH_PWM_PORT, MOTOR_CH2_PWM_PIN,
                                 LL_GPIO_OUTPUT_PUSHPULL);

        LL_GPIO_SetPinMode(MOTOR_CH_PWM_PORT, MOTOR_CH3_PWM_PIN,
                           LL_GPIO_MODE_ALTERNATE);
        LL_GPIO_SetAFPin_8_15(MOTOR_CH_PWM_PORT, MOTOR_CH3_PWM_PIN,
                              MOTOR_CH_PWM_PIN_AF);
        LL_GPIO_SetPinOutputType(MOTOR_CH_PWM_PORT, MOTOR_CH3_PWM_PIN,
                                 LL_GPIO_OUTPUT_PUSHPULL);

        LL_GPIO_SetPinMode(MOTOR_CH_PWM_PORT, MOTOR_CH4_PWM_PIN,
                           LL_GPIO_MODE_ALTERNATE);
        LL_GPIO_SetAFPin_8_15(MOTOR_CH_PWM_PORT, MOTOR_CH4_PWM_PIN,
                              MOTOR_CH_PWM_PIN_AF);
        LL_GPIO_SetPinOutputType(MOTOR_CH_PWM_PORT, MOTOR_CH4_PWM_PIN,
                                 LL_GPIO_OUTPUT_PUSHPULL);

        /* Init timer in PWM mode */
        LL_TIM_EnableUpdateEvent(MOTOR_TIM);
        LL_TIM_SetClockDivision(MOTOR_TIM, LL_TIM_CLOCKDIVISION_DIV4);
        LL_TIM_SetCounterMode(MOTOR_TIM, LL_TIM_COUNTERMODE_UP);
        LL_TIM_SetAutoReload(MOTOR_TIM, MOTOR_PWM_TIM_ARR);
        LL_TIM_SetUpdateSource(MOTOR_TIM, LL_TIM_UPDATESOURCE_REGULAR);

        /* Enable capture mode */
        LL_TIM_CC_EnableChannel(MOTOR_TIM, LL_TIM_CHANNEL_CH1 |
                                LL_TIM_CHANNEL_CH2 | LL_TIM_CHANNEL_CH3 |
                                LL_TIM_CHANNEL_CH4);

        /* Set PWM mode */
        LL_TIM_OC_SetMode(MOTOR_TIM, LL_TIM_CHANNEL_CH1, LL_TIM_OCMODE_PWM1);
        LL_TIM_OC_SetMode(MOTOR_TIM, LL_TIM_CHANNEL_CH2, LL_TIM_OCMODE_PWM1);
        LL_TIM_OC_SetMode(MOTOR_TIM, LL_TIM_CHANNEL_CH3, LL_TIM_OCMODE_PWM1);
        LL_TIM_OC_SetMode(MOTOR_TIM, LL_TIM_CHANNEL_CH4, LL_TIM_OCMODE_PWM1);

        /* Enable fast mode */
        LL_TIM_OC_EnableFast(MOTOR_TIM, LL_TIM_CHANNEL_CH1);
        LL_TIM_OC_EnableFast(MOTOR_TIM, LL_TIM_CHANNEL_CH2);
        LL_TIM_OC_EnableFast(MOTOR_TIM, LL_TIM_CHANNEL_CH3);
        LL_TIM_OC_EnableFast(MOTOR_TIM, LL_TIM_CHANNEL_CH4);

        /* Enable preload */
        LL_TIM_OC_EnablePreload(MOTOR_TIM, LL_TIM_CHANNEL_CH1);
        LL_TIM_OC_EnablePreload(MOTOR_TIM, LL_TIM_CHANNEL_CH2);
        LL_TIM_OC_EnablePreload(MOTOR_TIM, LL_TIM_CHANNEL_CH3);
        LL_TIM_OC_EnablePreload(MOTOR_TIM, LL_TIM_CHANNEL_CH4);
        LL_TIM_EnableARRPreload(MOTOR_TIM);

        /* Set initial value */
        LL_TIM_OC_SetCompareCH1(MOTOR_TIM, MOTOR_PWM_TIM_CCR_INIT);
        LL_TIM_OC_SetCompareCH2(MOTOR_TIM, MOTOR_PWM_TIM_CCR_INIT);
        LL_TIM_OC_SetCompareCH3(MOTOR_TIM, MOTOR_PWM_TIM_CCR_INIT);
        LL_TIM_OC_SetCompareCH4(MOTOR_TIM, MOTOR_PWM_TIM_CCR_INIT);

        /* Enable timer */
        LL_TIM_GenerateEvent_UPDATE(MOTOR_TIM);
        LL_TIM_EnableCounter(MOTOR_TIM);
        return;
}

void mk_set_pwm_ctrl(motors_ctrl_t *mk_ctrl)
{
        mk_ctrl->status |= MK_PWM_CONTROL_BIT;
        mk_ctrl->status &= ~MK_SPEED_CONTROL_BIT;
        return;
}

void mk_set_speed_ctrl(motors_ctrl_t *mk_ctrl)
{
        mk_ctrl->status |= MK_SPEED_CONTROL_BIT;
        mk_ctrl->status &= ~MK_PWM_CONTROL_BIT;
        return;
}

void motor_kinematics(void *arg) {
        (void) arg;

        motors_ctrl_t mk_ctrl_st = {0};

        mk_hw_config();
        mk_ctrl_st.lock = xSemaphoreCreateMutexStatic(&mutex_buffer);
        mk_ctrl_st.mk_notify = xTaskGetCurrentTaskHandle();
        mk_ctrl = &mk_ctrl_st;

        while (1) {
                ulTaskNotifyTake(pdTRUE, portMAX_DELAY);
                xSemaphoreTake(mk_ctrl->lock, portMAX_DELAY);
                if (mk_ctrl->status & MK_STOP_MOTORS_BIT) {
                        mk_ctrl->pwm_motors[0] = 0.1f;
                        mk_ctrl->pwm_motors[1] = 0.1f;
                        mk_ctrl->pwm_motors[2] = 0.1f;
                        mk_ctrl->pwm_motors[3] = 0.1f;
                }
                if (mk_ctrl->status & MK_SPEED_CONTROL_BIT &&
                    !(mk_ctrl->status & MK_STOP_MOTORS_BIT)) {
                        //It is time to convert speed to PWM values in ctrl m
                }
                //Set hw PWM channels
                xSemaphoreGive(mk_ctrl->lock);
        }
        return;
}
