#ifndef _STEPPER_H_
#define _STEPPER_H_

#include <stdint.h>
#include "stm32f407xx.h"

#include "dev_map.h"

#define STEPS_PER_REVOLUTION        200
#define MAX_STEPS                   100000 // TODO change

#define IS_VALID_ID(id)             ((id) < NUMBER_OF_STEP_MOTORS)

/*
 * Flags for stepper motor
 */
#define STEP_RUNNING_POS            (0U)
#define STEP_START_CALIBRATION_POS  (1U)
#define STEP_CALIBRATED_POS         (2U)

#define STEP_RUNNING                (0x01 << STEP_RUNNING_POS)
#define STEP_START_CALIBRATION      (0x01 << STEP_START_CALIBRATION_POS)
#define STEP_CALIBRATED             (0x01 << STEP_CALIBRATED_POS)

#define is_step_flag_set(step_ctrl, bit) \
        (step_ctrl.flags & bit)

#define step_set_flag(step_ctrl, bit) \
        step_ctrl.flags |= bit

#define step_clr_flag(step_ctrl, bit) \
        step_ctrl.flags &= (~bit)

/*
 * Type for step motor speed
 */
typedef enum {
        REV_PER_SEC_10 =   0x01,
        REV_PER_SEC_5 =    0x02,
        REV_PER_SEC_2_5 =  0x04,
        REV_PER_SEC_1_75 = 0x08
} step_speed_t;

/*
 * Control structure for stepper motor
 */
typedef struct {
        int current_tick;
        int step_delay_ticks;
        int current_step;
        int goal_step;
        GPIO_TypeDef *step_port;
        uint32_t step_state_pins[4];
        uint32_t step_mask;
        GPIO_TypeDef *limit_swtch_port;
        uint32_t limit_swtch_pin;
        uint8_t flags;
} step_ctrl_t;

void step_init(void);
int step_start_calibration(uint8_t id);
int step_is_calibrated(uint8_t id);
int step_set_speed(uint8_t id, step_speed_t rev_per_sec);
int step_set_step_goal(uint8_t id, int goal_step);

#endif //_STEPPER_H_
