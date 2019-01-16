#include "manipulators.h"
#include "stm32f407xx.h"
#include "stm32f4xx_ll_usart.h"
#include "peripheral.h"
#include "gpio_map.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "FreeRTOS.h"
#include "task.h"
#include "terminal_cmds.h"
#include "motor_kinematics.h"

/*
 * Private task notifier
 */
static manip_ctrl_t *manip_ctrl = NULL;

/*
 * Private functions
 */
static void stm_driver_send_msg(uint8_t *buff, int len)
{
        int i = 0;

        LL_USART_ClearFlag_TC(STM_DRIVER_USART);
        while (len--) {
                while (!LL_USART_IsActiveFlag_TXE(STM_DRIVER_USART));
                LL_USART_TransmitData8(STM_DRIVER_USART, buff[i++]);
        }
        while (!LL_USART_IsActiveFlag_TC(STM_DRIVER_USART));
        return;
}

static void manip_hw_cnfg(void)
{
        LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
        LL_GPIO_SetPinMode(MANIP_PUMP_PORT, MANIP_PUMP_PIN,
                           LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinOutputType(MANIP_PUMP_PORT, MANIP_PUMP_PIN,
                                 MANIP_PUMP_OUTPUT_TYPE);
        LL_GPIO_SetPinPull(MANIP_PUMP_PORT, MANIP_PUMP_PIN,
                           LL_GPIO_PULL_UP);
}

static void stm_driver_hw_config(manip_ctrl_t *manip_ctrl)
{
         /* Init terminal pins */
        LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);

        LL_GPIO_SetPinMode(STM_DRIVER_USART_TX_PORT, STM_DRIVER_USART_TX_PIN,
                           LL_GPIO_MODE_ALTERNATE);
        LL_GPIO_SetAFPin_8_15(STM_DRIVER_USART_TX_PORT, STM_DRIVER_USART_TX_PIN,
                             STM_DRIVER_USART_PIN_AF);
        LL_GPIO_SetPinOutputType(STM_DRIVER_USART_TX_PORT,
                                 STM_DRIVER_USART_TX_PIN,
                                 LL_GPIO_OUTPUT_PUSHPULL);
        LL_GPIO_SetPinPull(STM_DRIVER_USART_TX_PORT, STM_DRIVER_USART_TX_PIN,
                           LL_GPIO_PULL_UP);
        LL_GPIO_SetPinSpeed(STM_DRIVER_USART_TX_PORT, STM_DRIVER_USART_TX_PIN,
                            LL_GPIO_SPEED_FREQ_HIGH);

        LL_GPIO_SetPinMode(STM_DRIVER_USART_RX_PORT, STM_DRIVER_USART_RX_PIN,
                           LL_GPIO_MODE_ALTERNATE);
        LL_GPIO_SetAFPin_8_15(STM_DRIVER_USART_RX_PORT, STM_DRIVER_USART_RX_PIN,
                             STM_DRIVER_USART_PIN_AF);
        LL_GPIO_SetPinOutputType(STM_DRIVER_USART_RX_PORT,
                                 STM_DRIVER_USART_RX_PIN,
                                 LL_GPIO_OUTPUT_PUSHPULL);
        LL_GPIO_SetPinPull(STM_DRIVER_USART_RX_PORT, STM_DRIVER_USART_RX_PIN,
                           LL_GPIO_PULL_UP);
        LL_GPIO_SetPinSpeed(STM_DRIVER_USART_RX_PORT, STM_DRIVER_USART_RX_PIN,
                            LL_GPIO_SPEED_FREQ_HIGH);

        /* Enable clocking on USART and DMA */
        LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_DMA1);
        LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_USART3);

        /* UART configuration */
        LL_USART_SetTransferDirection(STM_DRIVER_USART,
                                      LL_USART_DIRECTION_TX_RX);
        LL_USART_SetParity(STM_DRIVER_USART, LL_USART_PARITY_NONE);
        LL_USART_SetDataWidth(STM_DRIVER_USART, LL_USART_DATAWIDTH_8B);
        LL_USART_SetStopBitsLength(STM_DRIVER_USART, LL_USART_STOPBITS_1);
        LL_USART_SetHWFlowCtrl(STM_DRIVER_USART, LL_USART_HWCONTROL_NONE);
        LL_USART_SetBaudRate(STM_DRIVER_USART,
                             SystemCoreClock/STM_DRIVER_USART_PERIPH_PRESCALER,
                             LL_USART_OVERSAMPLING_16,
                             STM_DRIVER_USART_BAUDRATE);
        LL_USART_EnableDirectionRx(STM_DRIVER_USART);
        LL_USART_EnableDirectionTx(STM_DRIVER_USART);
        LL_USART_EnableDMAReq_RX(STM_DRIVER_USART);
        LL_USART_EnableIT_IDLE(STM_DRIVER_USART);
        LL_USART_Enable(STM_DRIVER_USART);

        NVIC_SetPriority(STM_DRIVER_USART_IRQN, STM_DRIVER_USART_IRQN_PRIORITY);
        NVIC_EnableIRQ(STM_DRIVER_USART_IRQN);

        /* DMA configuration */
        LL_DMA_SetChannelSelection(STM_DRIVER_DMA, STM_DRIVER_DMA_STREAM,
                                   STM_DRIVER_DMA_CHANNEL);
        LL_DMA_ConfigAddresses(STM_DRIVER_DMA, STM_DRIVER_DMA_STREAM,
                               STM_DRIVER_DMA_SRC_ADDR, 
                               (uint32_t)manip_ctrl->stm_dr_buff,
                               STM_DRIVER_DMA_DIRECTION);
        LL_DMA_SetDataLength(STM_DRIVER_DMA, STM_DRIVER_DMA_STREAM,
                             STM_DRIVER_DMA_BUFFER_SIZE);
        LL_DMA_SetMemoryIncMode(STM_DRIVER_DMA, STM_DRIVER_DMA_STREAM,
                                STM_DRIVER_DMA_MEM_INC_MODE);

        LL_DMA_EnableStream(STM_DRIVER_DMA, STM_DRIVER_DMA_STREAM);
        LL_DMA_EnableIT_TC(STM_DRIVER_DMA, STM_DRIVER_DMA_STREAM);

        /* Enable global DMA stream interrupts */
        NVIC_SetPriority(STM_DRIVER_DMA_STREAM_IRQN,
                         STM_DRIVER_DMA_STREAM_IRQN_PRIORITY);
        NVIC_EnableIRQ(STM_DRIVER_DMA_STREAM_IRQN);
        return;
}

void manipulators_manager(void *arg)
{
        (void) arg;

        manip_ctrl_t manip_ctrl_st;
        manip_ctrl_st.manip_notify = xTaskGetCurrentTaskHandle();
        manip_ctrl_st.stm_dr_buff = malloc(STM_DRIVER_BUF_SIZE);
        manip_ctrl_st.pump_manip = 0;
        manip_ctrl_st.dynamix_manip = 0;
        manip_ctrl = &manip_ctrl_st;
        manip_hw_cnfg();
        stm_driver_hw_config(&manip_ctrl_st);

        while (1) {
                ulTaskNotifyTake(pdTRUE, portMAX_DELAY);
        }
        return;
}

/*
 * Set of motor related handlers for terminal
 */

/*
 * Set dynamixel angle
 */
int cmd_set_angle(char *args)
{
        uint8_t *cmd_args = (uint8_t *) args;
        uint8_t buff[] = {0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl)
                goto error_set_angle;

        /*
         * Sent command to stm
         */
        memcpy(&buff[1], cmd_args, 3);

        stm_driver_send_msg(buff, 10);
        memcpy(args, "OK", 3);
        return 3;

error_set_angle:
        memcpy(args, "ERROR", 6);
        return 6;
}

/*
 * Set pump low
 */
int cmd_set_pump_low(char *args)
{
        uint8_t *cmd_args = (uint8_t *) args;
        uint8_t buff[] = {0x01, 0x01, 0x6B, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl)
                goto error_set_pump_low;

        /*
         * Sent command to stm
         */

        stm_driver_send_msg(buff, 10);
        memcpy(args, "OK", 3);
        return 3;

error_set_pump_low:
        memcpy(args, "ERROR", 6);
        return 6;
}

/*
 * Set pump default
 */
int cmd_set_pump_default(char *args)
{
        uint8_t *cmd_args = (uint8_t *) args;
        uint8_t buff[] = {0x01, 0x01, 0x62, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl)
                goto error_set_pump_default;

        /*
         * Sent command to stm
         */

        stm_driver_send_msg(buff, 10);
        memcpy(args, "OK", 3);
        return 3;

error_set_pump_default:
        memcpy(args, "ERROR", 6);
        return 6;
}

/*
 * Set pump high
 */
int cmd_set_pump_high(char *args)
{
        uint8_t *cmd_args = (uint8_t *) args;
        uint8_t buff[] = {0x01, 0x01, 0x59, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl)
                goto error_set_pump_high;

        /*
         * Sent command to stm
         */

        stm_driver_send_msg(buff, 10);
        memcpy(args, "OK", 3);
        return 3;

error_set_pump_high:
        memcpy(args, "ERROR", 6);
        return 6;
}

/*
 * Set sucker to ground
 */
int cmd_set_sucker_low(char *args)
{
        uint8_t *cmd_args = (uint8_t *) args;
        uint8_t buff[] = {0x01, 0x02, 0x90, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl)
                goto error_set_sucker_low;

        /*
         * Sent command to stm
         */

        stm_driver_send_msg(buff, 10);
        memcpy(args, "OK", 3);
        return 3;

error_set_sucker_low:
        memcpy(args, "ERROR", 6);
        return 6;
}

/*
 * Set sucker to platform
 */
int cmd_set_sucker_high(char *args)
{
        uint8_t *cmd_args = (uint8_t *) args;
        uint8_t buff[] = {0x01, 0x02, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl)
                goto error_set_sucker_high;

        /*
         * Sent command to stm
         */

        stm_driver_send_msg(buff, 10);
        memcpy(args, "OK", 3);
        return 3;

error_set_sucker_high:
        memcpy(args, "ERROR", 6);
        return 6;
}

/*
 * Release grabber
 */
int cmd_release_grabber(char *args)
{
        uint8_t *cmd_args = (uint8_t *) args;
        uint8_t buff[] = {0x01, 0x03, 0x84, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl)
                goto error_release_grabber;

        /*
         * Sent command to stm
         */

        stm_driver_send_msg(buff, 10);
        memcpy(args, "OK", 3);
        return 3;

error_release_grabber:
        memcpy(args, "ERROR", 6);
        return 6;
}

/*
 * Prop pack
 */
int cmd_prop_pack(char *args)
{
        uint8_t *cmd_args = (uint8_t *) args;
        uint8_t buff[] = {0x01, 0x03, 0x3E, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl)
                goto error_prop_pack;

        /*
         * Sent command to stm
         */

        stm_driver_send_msg(buff, 10);
        memcpy(args, "OK", 3);
        return 3;

error_prop_pack:
        memcpy(args, "ERROR", 6);
        return 6;
}

/*
 * Grab pack
 */
int cmd_grab_pack(char *args)
{
        uint8_t *cmd_args = (uint8_t *) args;
        uint8_t buff[] = {0x01, 0x03, 0xEB, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl)
                goto error_grab_pack;

        /*
         * Sent command to stm
         */

        stm_driver_send_msg(buff, 10);
        memcpy(args, "OK", 3);
        return 3;

error_grab_pack:
        memcpy(args, "ERROR", 6);
        return 6;
}

/*
 * Start pumping
 */
int cmd_start_pump(char *args)
{
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl)
                goto error_start_pump;

        /*
         * Start pumping
         */
        LL_GPIO_SetOutputPin(MANIP_PUMP_PORT, MANIP_PUMP_PIN);

        memcpy(args, "OK", 3);
        return 3;

error_start_pump:
        memcpy(args, "ERROR", 6);
        return 6;
}

 /*
 * Stop pumping
 */
int cmd_stop_pump(char *args)
{
        /*
         * Check whether manipulators is ready or not
         */
        if (!manip_ctrl)
                goto error_stop_pump;

        /*
         * Stop pumping
         */
        LL_GPIO_ResetOutputPin(MANIP_PUMP_PORT, MANIP_PUMP_PIN);

        memcpy(args, "OK", 3);
        return 3;

error_stop_pump:
        memcpy(args, "ERROR", 6);
        return 6;     
}

void USART3_IRQHandler(void)
{
        BaseType_t xHigherPriorityTaskWoken = pdFALSE;

        LL_USART_ClearFlag_IDLE(STM_DRIVER_USART);
        LL_DMA_DisableStream(STM_DRIVER_DMA, STM_DRIVER_DMA_STREAM);
        portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
}

void DMA1_Stream1_IRQHandler(void)
{
        BaseType_t xHigherPriorityTaskWoken = pdFALSE;

        if (LL_DMA_IsActiveFlag_TC1(STM_DRIVER_DMA)) {
                LL_DMA_ClearFlag_TC1(STM_DRIVER_DMA);
                LL_DMA_ClearFlag_HT1(STM_DRIVER_DMA);
                LL_DMA_EnableStream(STM_DRIVER_DMA, STM_DRIVER_DMA_STREAM);
                vTaskNotifyGiveFromISR(manip_ctrl->manip_notify,
                                       &xHigherPriorityTaskWoken);
        }
        portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
}
