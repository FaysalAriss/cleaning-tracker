/*
 * RV3028.c
 *
 *  Created on: April 29, 2026
 *      Author: Faysal
 */

#include "RV3028.h"
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
	return HAL_I2C_Mem_Write(hi2c, RV3028_ADDRESS, register_number, I2C_MEMADD_SIZE_8BIT, value, size, TIMEOUT);
}

/**
  * @brief  Read the value from register(s) in the RTC
  * @param  register_number - the number of the first register to read from
  * @param  value - pointer to where to write the data
  * @param	size - size of the amount of data to be read
  * @retval HAL status
  */
HAL_StatusTypeDef RTC_read_register_value(I2C_HandleTypeDef *hi2c, uint8_t register_number, uint8_t *buffer, int8_t size){
	return HAL_I2C_Mem_Read(hi2c, RV3028_ADDRESS, register_number, I2C_MEMADD_SIZE_8BIT, buffer, size, TIMEOUT);
}

/**
  * @brief  Reset AF interrupt bit in the RTC so it's able to throw a new interrupt the next time
  * @retval HAL status
  * @warning resets status register to default values
  */
HAL_StatusTypeDef RTC_handle_interrupt(I2C_HandleTypeDef *hi2c){
	//reset interrupt on RTC
	uint8_t defaults = 0x0;
	return RTC_set_register_value(hi2c, 0x0E, &defaults, 1); //default values of status register
}

/**
 * @brief Initialize the RTC with the settings for this project, see specifics internally
 * @retval HAL status
 */
HAL_StatusTypeDef RTC_init(I2C_HandleTypeDef *hi2c){

	//disable clkout to use less power, since we don't need it (as specified in datasheet)
	uint8_t fd = 0b00000111; //disable using fd = 111
	HAL_TRY(RTC_set_register_value(hi2c, 0x35, &fd, 1));

	//setup hour alarm to trigger at midnight and one minute
	uint8_t minutes = 0x1;
	HAL_TRY(RTC_set_register_value(hi2c, 0x07, &minutes, 1));
	uint8_t midnight = 0x0;
	HAL_TRY(RTC_set_register_value(hi2c, 0x08, &midnight, 1));

	//set AIE bit in control 2 register high to enable alarm interrupts
	uint8_t enable_alarm = 0b00001000;
	HAL_TRY(RTC_set_register_value(hi2c, 0x10, &enable_alarm, 1));

	//wake up on RTC interrupt
	HAL_PWR_EnableWakeUpPin(PWR_WAKEUP_PIN7_LOW);

	return HAL_OK; //no previous HAL_TRY returned so all good
}
