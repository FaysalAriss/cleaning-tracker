/*
 * ds_3231.h
 *
 *  Created on: Feb 25, 2026
 *      Author: Faysal
 */

#ifndef DS_3231_H_
#define DS_3231_H_

#include "stm32f4xx_hal.h"

#define DS3231_ADDRESS (0x68 << 1)

HAL_StatusTypeDef RTC_set_register_value(I2C_HandleTypeDef *hi2c, uint8_t register_number, uint8_t *value, uint8_t size);
HAL_StatusTypeDef RTC_read_register_value(I2C_HandleTypeDef *hi2c, uint8_t register_number, uint8_t *buffer, int8_t size);
HAL_StatusTypeDef RTC_handle_interrupt(I2C_HandleTypeDef *hi2c);

#endif /* DS_3231_H_ */
