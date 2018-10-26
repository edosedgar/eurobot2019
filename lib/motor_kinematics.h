#ifndef _H_MOTOR_KINEMATICS_
#define _H_MOTOR_KINEMATICS_

#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"

enum motor_kinem_status_flags {
        MK_PWM_CONTROL_BIT,
        MK_SPEED_CONTROL_BIT,
        MK_STOP_MOTORS_BIT
};

#define ENUM_FLAG(name) name = 1 << name##_BIT
enum mk_flags {
        ENUM_FLAG(MK_PWM_CONTROL),
        ENUM_FLAG(MK_SPEED_CONTROL),
        ENUM_FLAG(MK_STOP_MOTORS)
};

typedef struct {
        int status;
        float vel_x;
        float vel_y;
        float wz;
        SemaphoreHandle_t mk_wakeup;
        int pwm_motors[4];
} motors_ctrl_t;

/*
 * Semaphore service structure
 */
StaticSemaphore_t semaphore_buffer;

/*
 * Main freertos task
 */
void motor_kinematics_manager(void *arg);
/*
 * Set of functions to control motor work mode
 */
void mk_set_pwm_ctrl(motors_ctrl_t *mk_ctrl);

void mk_set_speed_ctrl(motors_ctrl_t *mk_ctrl);

#endif
