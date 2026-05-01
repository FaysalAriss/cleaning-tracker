/*
 * RV3028.h
 *
 *  Created on: April 29, 2026
 *      Author: Faysal
 */

#ifndef RV3028_H_
#define RV3028_H_

#include "stm32u0xx_hal.h"

#define RV3028_ADDRESS 0b10100100
#define TIMEOUT HAL_MAX_DELAY

#define HAL_TRY(expr) do{ \
		HAL_StatusTypeDef status = (expr); \
		if (status != HAL_OK) return status; \
	} while(0)

//general
HAL_StatusTypeDef RTC_set_register_value(I2C_HandleTypeDef *hi2c, uint8_t register_number, uint8_t *value, uint8_t size);
HAL_StatusTypeDef RTC_read_register_value(I2C_HandleTypeDef *hi2c, uint8_t register_number, uint8_t *buffer, int8_t size);

//specific to this project
HAL_StatusTypeDef RTC_handle_interrupt(I2C_HandleTypeDef *hi2c);
HAL_StatusTypeDef RTC_init(I2C_HandleTypeDef *hi2c);

#endif /* RV3028_H_ */
