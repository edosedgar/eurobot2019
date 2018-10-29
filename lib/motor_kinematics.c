#include "motor_kinematics.h"
#include "peripheral.h"
#include "gpio_map.h"

#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"

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
        return 0;
error_set_pwm:
        return 0;
}

static void mk_hw_config()
{
        // Nikita, y should write it
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
