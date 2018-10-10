/**
  ******************************************************************************
  * @file    Project/STM32F4xx_StdPeriph_Template/stm32f4xx_it.c
  * @author  MCD Application Team
  * @version V1.0.0
  * @date    30-September-2011
  * @brief   Main Interrupt Service Routines.
  *          This file provides template for all exceptions handler and
  *          peripherals interrupt service routine.
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_it.h"

/** @addtogroup Template_Project
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/******************************************************************************/
/*            Cortex-M4 Processor Exceptions Handlers                         */
/******************************************************************************/

__attribute__((weak)) void NMI_Handler(void)
{
}

__attribute__((weak)) void HardFault_Handler(void)
{
        while (1) {
        }
}

__attribute__((weak)) void MemManage_Handler(void)
{
        while (1) {
        }
}

__attribute__((weak)) void BusFault_Handler(void)
{
}

__attribute__((weak)) void UsageFault_Handler(void)
{
        while (1) {
        }
}

__attribute__((weak)) void SVC_Handler(void)
{
}

__attribute__((weak)) void DebugMon_Handler(void)
{
}

__attribute__((weak)) void PendSV_Handler(void)
{
}

__attribute__((weak)) void SysTick_Handler(void)
{
}

/**
  * @brief  This function handles EXTI 3 interrupt request.
  * @param  None
  * @retval None
  */
__attribute__((weak)) void EXTI9_5_IRQHandler(void)
{
}

/**
  * @brief  This function handles EXTI 15-10 interrupt request.
  * @param  None
  * @retval None
  */
__attribute__((weak)) void EXTI15_10_IRQHandler(void)
{
}

/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
