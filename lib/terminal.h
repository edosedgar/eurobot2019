#ifndef _H_TERMINAL_
#define _H_TERMINAL_

#include "stm32f4xx_ll_usart.h"

#include "FreeRTOS.h"
#include "task.h"
#include "terminal_cmds.h"

/*
 * The main structure for terminal operating
 */
typedef struct {
        USART_TypeDef *dev;
        int int_line;
        void (*uart2dma_init)(char *);
        char *buffer;
        char *com_args;
        char *com_resp;
        uint8_t *stm_dr_buff;
        TaskHandle_t xTaskToNotify;
} terminal_task_t;

#define TERM_CH_BUF_SIZE        256
#define TERM_ARGS_BUF_SIZE      128
#define TERM_STM_DR_BUF_SIZE    10
#define TERM_MAN_STACK_DEPTH    1024
#define IS_COMMAND_VALID(com) (((com) > LOWER_BOUND_CMD) && \
                               ((com) < UPPER_BOUND_CMD))

/*
 * Memory for terminal task
 */
StackType_t terminal_manager_ts[TERM_MAN_STACK_DEPTH];
StaticTask_t terminal_manager_tb;

/*
 * Main manager for processing incoming commands
 */
void terminal_manager(void *arg);

#endif
