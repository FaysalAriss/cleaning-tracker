/*
 * ds_3231.c
 *
 *  Created on: Feb 25, 2026
 *      Author: Faysal
 */

#include "ds_3231.h"
#include "main.h"

/**
 * For all the following functions:
 *@param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
 *                the configuration information for the specified I2C.
 */


/**
  * @brief  Set the value in a register(s) in the RTC
  * @param  register_number - the number of the first register to put the value(s) in
  * @param  value - pointer to the data to put in the register(s)
  * @param	size - size of the amount of data to be sent
  * @retval HAL status
  */
HAL_StatusTypeDef RTC_set_register_value(I2C_HandleTypeDef *hi2c, uint8_t register_number, uint8_t *value, uint8_t size){
	return HAL_I2C_Mem_Write(hi2c, DS3231_ADDRESS, register_number, I2C_MEMADD_SIZE_8BIT, value, size, HAL_MAX_DELAY);
}

/**
  * @brief  Read the value from register(s) in the RTC
  * @param  register_number - the number of the first register to read from
  * @param  value - pointer to where to write the data
  * @param	size - size of the amount of data to be read
  * @retval HAL status
  */
HAL_StatusTypeDef RTC_read_register_value(I2C_HandleTypeDef *hi2c, uint8_t register_number, uint8_t *buffer, int8_t size){
	return HAL_I2C_Mem_Read(hi2c, DS3231_ADDRESS, register_number, I2C_MEMADD_SIZE_8BIT, buffer, size, HAL_MAX_DELAY);
}

/**
  * @brief  Reset alarm1 interrupt bit in the RTC so it's able to throw a new interrupt the next time
  * @retval HAL status
  */
HAL_StatusTypeDef RTC_handle_interrupt(I2C_HandleTypeDef *hi2c){
	HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
	//reset interrupt on RTC
	return RTC_set_register_value(hi2c, 0x0F, 0x00, 1); //set register 0x0f to all 0
}
