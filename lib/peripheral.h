#ifndef _H_PERIPHERAL_
#define _H_PERIPHERAL_

#include "stm32f407xx.h"
#include "stm32f4xx_ll_rcc.h"
#include "stm32f4xx_ll_bus.h"
#include "stm32f4xx_ll_usart.h"
#include "stm32f4xx_ll_dma.h"
#include "stm32f4xx_ll_tim.h"

/*
 * Clock configuration parameters
 */
#define RCC_SOURCE                              LL_RCC_PLLSOURCE_HSE
#define RCC_PLLM                                LL_RCC_PLLM_DIV_8
#define RCC_PLLN                                336
#define RCC_PLLR                                LL_RCC_PLLP_DIV_2
#define RCC_SYS_SOURCE                          LL_RCC_SYS_CLKSOURCE_PLL
#define RCC_AHB_PRESCALER                       LL_RCC_SYSCLK_DIV_1
#define RCC_APB1_PRESCALER                      LL_RCC_APB1_DIV_4
#define RCC_APB2_PRESCALER                      LL_RCC_APB2_DIV_2
#define RCC_SYSTEM_CLK                          168000000
#define RCC_AHB_CLK                             RCC_SYSTEM_CLK/1
#define RCC_APB1_CLK                            RCC_SYSTEM_CLK/4
#define RCC_APB2_CLK                            RCC_SYSTEM_CLK/2

/*
 * Terminal configuration
 * UART configuration
 */
#define TERM_USART                              USART1
#define TERM_USART_IRQN                         USART1_IRQn
#define TERM_USART_IRQN_PRIORITY                1
#define TERM_USART_PERIPH_PRESCALER             2
#define TERM_USART_BAUDRATE                     115200
#define TERM_USART_DATA_WIDTH                   LL_USART_DATAWIDTH_8B
#define TERM_USART_HAWDWARE_FLOAT_CNTRL         LL_USART_HWCONTROL_NONE
#define TERM_USART_OVERSAMPL                    LL_USART_OVERSAMPLING_16
#define TERM_USART_PARITY                       LL_USART_PARITY_NONE
#define TERM_USART_STOPBITS                     LL_USART_STOPBITS_1
#define TERM_USART_TRANSFER_DIRECTION           LL_USART_DIRECTION_TX_RX

/*
 * Terminal configuration
 * DMA configuration
 */
#define TERM_DMA                                DMA2
#define TERM_DMA_CHANNEL                        LL_DMA_CHANNEL_4
#define TERM_DMA_STREAM                         LL_DMA_STREAM_2
#define TERM_DMA_STREAM_IRQN                    DMA2_Stream2_IRQn
#define TERM_DMA_STREAM_IRQN_PRIORITY           (configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY + 1)
#define TERM_DMA_DIRECTION                      LL_DMA_DIRECTION_PERIPH_TO_MEMORY
#define TERM_DMA_BUFFER_SIZE                    256
#define TERM_DMA_MEM_INC_MODE                   LL_DMA_MEMORY_INCREMENT
#define TERM_DMA_SRC_ADDR                       (uint32_t)&(TERM_USART)->DR

/*
 * STM32F0 driver configuration
 * UART configuration
 */
#define STM_DRIVER_USART                        USART3
#define STM_DRIVER_USART_IRQN                   USART3_IRQn
#define STM_DRIVER_USART_IRQN_PRIORITY          1
#define STM_DRIVER_USART_PERIPH_PRESCALER       4
#define STM_DRIVER_USART_BAUDRATE               115200

/*
 * STM32F0 driver configuration
 * DMA configuration
 */
#define STM_DRIVER_DMA                          DMA1
#define STM_DRIVER_DMA_CHANNEL                  LL_DMA_CHANNEL_4
#define STM_DRIVER_DMA_STREAM                   LL_DMA_STREAM_1
#define STM_DRIVER_DMA_STREAM_IRQN              DMA1_Stream1_IRQn
#define STM_DRIVER_DMA_STREAM_IRQN_PRIORITY     (configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY + 1)
#define STM_DRIVER_DMA_DIRECTION                LL_DMA_DIRECTION_PERIPH_TO_MEMORY
#define STM_DRIVER_DMA_BUFFER_SIZE              256
#define STM_DRIVER_DMA_MEM_INC_MODE             LL_DMA_MEMORY_INCREMENT
#define STM_DRIVER_DMA_SRC_ADDR                 (uint32_t)&(STM_DRIVER_USART)->DR

/*
 * Srtepper motor timer
 * APB1_CLK = 42000000, T = 500 ms
 */
#define STEP_TIM                                TIM5
#define STEP_TIM_MODE                           LL_TIM_COUNTERMODE_UP
#define STEP_TIM_ARR                            500
#define STEP_TIM_PSC                            41999
#define STEP_TIM_IRQN                           TIM5_IRQn
#define STEP_TIM_IRQN_PRIORITY                  1

/*
 * Motor kinematics timer configuration
 * APB1_CLK = 42000000, TIM_ARR = 42000, freq_pwm = 1KHz
 */
#define MOTOR_TIM                               TIM4
#define MOTOR_TIM_PERIPH_PRESCALER              4
#define MOTOR_PWM_TIM_ARR                       42000
#define MOTOR_PWM_TIM_CCR_INIT                  4200
#define MOTOR_PWM_TIM_PSC                       1

/*
 * Odometry configuration
 * Encoder times configuration
 */
#define ENCODER_TIM_CNT_INITIAL_VALUE           (uint16_t) 0x7530
#define ENCODER_TIM_ARR                         0xffff

#define ENCODER_1_TIM_MODULE                    TIM2
#define ENCODER_1_CNT                           ((uint16_t *)&(ENCODER_1_TIM_MODULE->CNT))
#define ENCODER_2_TIM_MODULE                    TIM3
#define ENCODER_2_CNT                           ((uint16_t *)&(ENCODER_2_TIM_MODULE->CNT))
#define ENCODER_3_TIM_MODULE                    TIM1
#define ENCODER_3_CNT                           ((uint16_t *)&(ENCODER_3_TIM_MODULE->CNT))

/*
 * Time calculation timer configuration
 * APB1_CLK = 42000000, TIM_ARR = 42000, freq = 50Hz
 */
#define ODOMETRY_TIM_MODULE                     TIM6
#define ODOMETRY_IRQN                           TIM6_DAC_IRQn
#define ODOMETRY_IRQN_PRIORITY                  (configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY + 2)
#define ODOMETRY_TIM_ARR                        42000
#define ODOMETRY_TIM_PSC                        20

#endif
