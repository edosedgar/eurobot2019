#ifndef _H_IO_SYSCALL_
#define _H_IO_SYSCALL_

#include "stm32f407xx.h"

USART_TypeDef *chardev;

int set_chardev(USART_TypeDef *cd);

#endif
