#ifndef _H_MOTOR_KINEMATICS_
#define _H_MOTOR_KINEMATICS_

#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"

/*
 * SET_PWM command args structure
 */
typedef struct {
        uint8_t channel;
        float pwm_value;
} __attribute__((packed)) cmd_set_pwm_t;

#define SET_PWM_ARGS_ERR(cmd_args) \
        ((cmd_args)->channel > 3) || (fabsf((cmd_args)->pwm_value) < 0.1f) || \
                                     (fabsf((cmd_args)->pwm_value) > 1.0f)

/*
 * SET_SPEED command args structure
 */
typedef struct {
        float vx;
        float vy;
        float wz;
} __attribute__((packed)) cmd_set_speed_t;

/*
 * Motor control structure definition
 */
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
        TaskHandle_t mk_notify;
        SemaphoreHandle_t lock;
        float pwm_motors[4];
} motors_ctrl_t;

/*
 * Memory for motor kinematics task
 */
#define MOTOR_KIN_STACK_DEPTH    1024
StackType_t motor_kinematics_ts[MOTOR_KIN_STACK_DEPTH];
StaticTask_t motor_kinematics_tb;

/*
 * Semaphore service structure
 */
StaticSemaphore_t mutex_buffer;

/*
 * Forward kinematics parameters
 */
#define MK_MAX_ROT_SPEED 27.22713f
#define MK_LIN_KIN_MATRIX \
        24.4161859f,    27.2213531f,    0.0f, \
        31.09554175f,  -15.04963672f,   0.0f, \
        31.07573411f,   16.22788419f,   0.0f, \
        24.4161859f,   -25.11085301f,   0.0f

#define MK_ROT_KIN_MATRIX \
        0.0f,   0.0f,   -5.77869177f, \
        0.0f,   0.0f,    4.47936896f, \
        0.0f,   0.0f,    4.47936896f, \
        0.0f,   0.0f,   -5.77869177f

#define MK_SPEED2PWM_A \
        0.0293824f, \
        0.0293824f, \
        0.0293824f, \
        0.0293824f

#define MK_SPEED2PWM_B \
        0.1f, \
        0.1f, \
        0.1f, \
        0.1f

/*
 * Main freertos task
 */
void motor_kinematics(void *arg);

#endif
