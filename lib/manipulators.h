#ifndef _MANIPULATORS_H_
#define _MANIPULATORS_H_

#include "stm32f4xx_ll_usart.h"

#include "FreeRTOS.h"
#include "task.h"
#include "terminal_cmds.h"

#define STM_DRIVER_BUF_SIZE        256
#define STM_DRIVER_STACK_DEPTH    1024

/*
 * Memory for terminal task
 */
StackType_t manipulators_ts[STM_DRIVER_STACK_DEPTH];
StaticTask_t manipulators_tb;

/*
 * Manipulators control structure defenition
 */
typedef struct {
        uint8_t *stm_dr_buff;
        uint8_t *stm_dr_buff_tx;
        uint8_t dynamix_manip;
        uint8_t pump_manip;
        TaskHandle_t manip_notify;
} manip_ctrl_t;

/*
 * Main manager for processing incoming commands
 */
void manipulators_manager(void *arg);

#endif
