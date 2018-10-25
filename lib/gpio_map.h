#ifndef _H_GPIO_MAP_
#define _H_GPIO_MAP_

#include "stm32f407xx.h"
#include "stm32f4xx_ll_gpio.h"

/* terminal UART pinout */
#define TERM_USART_TX_PORT                  GPIOB
#define TERM_USART_TX_PIN                   LL_GPIO_PIN_6
#define TERM_USART_RX_PORT                  GPIOB
#define TERM_USART_RX_PIN                   LL_GPIO_PIN_7
#define TERM_USART_PIN_AF                   LL_GPIO_AF_7
//TODO changed on LL_GPIO_OUTPUT_OPENDRAIN with Odroid communication
#define TERM_USART_OUTPUT_TYPE              LL_GPIO_OUTPUT_PUSHPULL
#define TERM_USART_PULL                     LL_GPIO_PULL_UP
#define TERM_USART_SPEED                    LL_GPIO_SPEED_FREQ_HIGH

#endif
