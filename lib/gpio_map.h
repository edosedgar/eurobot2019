#ifndef _H_GPIO_MAP_
#define _H_GPIO_MAP_

#include "stm32f407xx.h"
#include "stm32f4xx_ll_gpio.h"

/*
 * Terminal UART pinout
 */
#define TERM_USART_TX_PORT                  GPIOB
#define TERM_USART_TX_PIN                   LL_GPIO_PIN_6
#define TERM_USART_RX_PORT                  GPIOB
#define TERM_USART_RX_PIN                   LL_GPIO_PIN_7
#define TERM_USART_PIN_AF                   LL_GPIO_AF_7
//TODO changed on LL_GPIO_OUTPUT_OPENDRAIN with Odroid communication
#define TERM_USART_OUTPUT_TYPE              LL_GPIO_OUTPUT_PUSHPULL

/*
 * STMF0 driver UART pinout
 */
#define STM_DRIVER_USART_TX_PORT            GPIOC
#define STM_DRIVER_USART_TX_PIN             LL_GPIO_PIN_10
#define STM_DRIVER_USART_RX_PORT            GPIOC
#define STM_DRIVER_USART_RX_PIN             LL_GPIO_PIN_11
#define STM_DRIVER_USART_PIN_AF             LL_GPIO_AF_7

/*
 * GPIO for start/stop pumping
 */
#define MANIP_PUMP_PORT                     GPIOD
#define MANIP_PUMP_PIN                      LL_GPIO_PIN_1
#define MANIP_PUMP_OUTPUT_TYPE              LL_GPIO_OUTPUT_PUSHPULL

/*
 * Motor kinematics pinout
 * PWM pins
 */
#define MOTOR_CH_PWM_PORT                   GPIOD
#define MOTOR_CH1_PWM_PIN                   LL_GPIO_PIN_12
#define MOTOR_CH2_PWM_PIN                   LL_GPIO_PIN_13
#define MOTOR_CH3_PWM_PIN                   LL_GPIO_PIN_14
#define MOTOR_CH4_PWM_PIN                   LL_GPIO_PIN_15
#define MOTOR_CH_PWM_PIN_AF                 LL_GPIO_AF_2

/* Motor direction pins */
#define MOTOR_CH1_DIR_PORT                  GPIOC
#define MOTOR_CH1_DIR_PIN                   LL_GPIO_PIN_14
#define MOTOR_CH2_DIR_PORT                  GPIOC
#define MOTOR_CH2_DIR_PIN                   LL_GPIO_PIN_15
#define MOTOR_CH3_DIR_PORT                  GPIOE
#define MOTOR_CH3_DIR_PIN                   LL_GPIO_PIN_10
#define MOTOR_CH4_DIR_PORT                  GPIOE
#define MOTOR_CH4_DIR_PIN                   LL_GPIO_PIN_14

/*
 * Starting cord pinout
 */
#define MOTOR_CORD_PORT                     GPIOD
#define MOTOR_CORD_PIN                      LL_GPIO_PIN_2

/*
 * Strategy choose button pinout
 */
#define MOTOR_STRATEGY_PORT                 GPIOD
#define MOTOR_STRATEGY_PIN                  LL_GPIO_PIN_7

/*
 * Side switcher
 */
#define MOTOR_SIDE_SW_PORT                  GPIOD
#define MOTOR_SIDE_SW_PIN                   LL_GPIO_PIN_9

/*
 * Pack checking pinout
 */
#define MANIP_PACK_CHECK_PORT               GPIOD
#define MANIP_PACK_CHECK_PIN                LL_GPIO_PIN_3

/*
 * Odometry pinout
 * Encoder pins
 */
#define ENCODER_1_CHA_PORT                  GPIOB
#define ENCODER_1_CHA_PIN                   LL_GPIO_PIN_3
#define ENCODER_1_CHB_PORT                  GPIOA
#define ENCODER_1_CHB_PIN                   LL_GPIO_PIN_15
#define ENCODER_1_PIN_AF                    LL_GPIO_AF_1

#define ENCODER_2_CHA_PORT                  GPIOA
#define ENCODER_2_CHA_PIN                   LL_GPIO_PIN_6
#define ENCODER_2_CHB_PORT                  GPIOA
#define ENCODER_2_CHB_PIN                   LL_GPIO_PIN_7
#define ENCODER_2_PIN_AF                    LL_GPIO_AF_2

#define ENCODER_3_CHA_PORT                  GPIOE
#define ENCODER_3_CHA_PIN                   LL_GPIO_PIN_11
#define ENCODER_3_CHB_PORT                  GPIOE
#define ENCODER_3_CHB_PIN                   LL_GPIO_PIN_9
#define ENCODER_3_PIN_AF                    LL_GPIO_AF_1

/*
 * Stepper motor pins
 */
#define STEP_MOTOR_PORT                     GPIOE  
#define STEP_MOTOR_P1                       LL_GPIO_PIN_8
#define STEP_MOTOR_P2                       LL_GPIO_PIN_6
#define STEP_MOTOR_P3                       LL_GPIO_PIN_12
#define STEP_MOTOR_P4                       LL_GPIO_PIN_5

/*
 * Limit switch pin for step motor calibration
 */
#define STEP_LIMIT_SWITCH_PORT              GPIOD
#define STEP_LIMIT_SWITCH_PIN               LL_GPIO_PIN_0

/*
 * Barometer ADC pinout
 */
#define BAR_PORT                            GPIOC
#define BAR_PIN                             LL_GPIO_PIN_2
#endif
