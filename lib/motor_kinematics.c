#include "motor_kinematics.h"
#include "peripheral.h"
#include "gpio_map.h"

#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"

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
        motors_ctrl_t *m_ctrl = (motors_ctrl_t *)arg;

        mk_hw_config();
        m_ctrl->mk_wakeup = XSemaphoreCreateBinaryStatic(&semaphore_buffer);

        while (1) {
                xSemaphoreTake(m_ctrl->mk_wakeup, portMAX_DELAY);
                //Set PWM
                //Calculate matrices
                //
        }
        return;
}
