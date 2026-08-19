/*
 * GDEY037T03.h
 *
 *  Created on: Aug 13, 2026
 *      Author: Faysal
 */

#ifndef EPD_GDEY037T03_H_
#define EPD_GDEY037T03_H_

#include "stm32u0xx_hal.h"
#define TIMEOUT HAL_MAX_DELAY

HAL_StatusTypeDef Driver_init(SPI_HandleTypeDef *hspi);

#endif /* EPD_GDEY037T03_H_ */
