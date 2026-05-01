/*
 * rv_3028.h
 *
 *  Created on: April 29, 2026
 *      Author: Faysal
 */

#ifndef RV_3028_H_
#define RV_3028_H_

#include "stm32u0xx_hal.h"

#define RV3028_ADDRESS 0b10100100

HAL_StatusTypeDef RTC_set_register_value(I2C_HandleTypeDef *hi2c, uint8_t register_number, uint8_t *value, uint8_t size);
HAL_StatusTypeDef RTC_read_register_value(I2C_HandleTypeDef *hi2c, uint8_t register_number, uint8_t *buffer, int8_t size);
//HAL_StatusTypeDef RTC_handle_interrupt(I2C_HandleTypeDef *hi2c);

#endif /* RV_3028_H_ */
