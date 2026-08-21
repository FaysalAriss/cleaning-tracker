/*
 * GDEY037T03.c
 *
 * Driver for GooDisplay 3.7" 416x240 epaper screen (model num GDEY037T03)
 *
 *  Created on: Aug 13, 2026
 *      Author: Faysal
 */

#include "GDEY037T03.h"
#include "hal_utils.h"
#include "main.h"

/*holds the old pixel data to be sent when writing new pixels
* kept uninitialized since we don't know the old pixel data on boot */
uint8_t old_data[EPD_ARRAY];

/**
 * For all the following functions:
 *@param hspi - Pointer to the SPI_HandleTypeDef structure that contains
 *				the configuration information for the specified SPI line
 */


/**
 * @brief  Wait until busy bit is high (free)
 */
void EPD_wait_busy(void){
	while(HAL_GPIO_ReadPin(EPD_BUSY_GPIO_Port, EPD_BUSY_Pin) == GPIO_PIN_RESET);
}

/**
 * @brief  Send a command to the driver
 * @param  command - The command to send
 */
HAL_StatusTypeDef EPD_write_command(SPI_HandleTypeDef *hspi, uint8_t command){
	HAL_GPIO_WritePin(EPD_DC_GPIO_Port, EPD_DC_Pin, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(EPD_CS_GPIO_Port, EPD_CS_Pin, GPIO_PIN_RESET);
	HAL_TRY(HAL_SPI_Transmit(hspi, &command, 1, TIMEOUT));
	HAL_GPIO_WritePin(EPD_CS_GPIO_Port, EPD_CS_Pin, GPIO_PIN_SET);
	return HAL_OK;
}

/**
 * @brief  Send data to the driver
 * @param  data - Pointer to the start of the data to send
 * @param  size - Size of the amount of data to be sent, in bytes
 */
HAL_StatusTypeDef EPD_write_data(SPI_HandleTypeDef *hspi, uint8_t *data, uint16_t size){
	HAL_GPIO_WritePin(EPD_DC_GPIO_Port, EPD_DC_Pin, GPIO_PIN_SET);
	for(unsigned int i = 0; i < size; i++){
		HAL_GPIO_WritePin(EPD_CS_GPIO_Port, EPD_CS_Pin, GPIO_PIN_RESET);
		HAL_TRY(HAL_SPI_Transmit(hspi, data+i, 1, TIMEOUT));
		HAL_GPIO_WritePin(EPD_CS_GPIO_Port, EPD_CS_Pin, GPIO_PIN_SET);
	}

	return HAL_OK;
}

/**
 * @brief  Send a command then data to the driver
 * @param  command - The command to send
 * @param  data - Pointer to the start of the data to send
 * @param  size - Size of the amount of data to be sent, in bytes
 */
HAL_StatusTypeDef EPD_write_command_data(SPI_HandleTypeDef *hspi, uint8_t command, uint8_t *data, uint16_t size){
	HAL_TRY(EPD_write_command(hspi, command));
	HAL_TRY(EPD_write_data(hspi, data, size));
	return HAL_OK;
}
/**
 * @brief  Powers on/off the screen and wait until it's finished
 */
HAL_StatusTypeDef EPD_set_power(SPI_HandleTypeDef *hspi, Power_Command command){
	HAL_TRY(EPD_write_command(hspi, command));
	EPD_wait_busy();
	return HAL_OK;
}

/**
 * @brief  Put screen into deep sleep mode
 */
HAL_StatusTypeDef EPD_deepsleep(SPI_HandleTypeDef *hspi){
	HAL_TRY(EPD_set_power(hspi, POWER_OFF));
	uint8_t deepsleep = 0xA5;
	HAL_TRY(EPD_write_command_data(hspi, 0x07, &deepsleep, 1));
	return HAL_OK;
}

/**
 * @brief  Reset driver through hardware reset (toggling RESET pin)
 */
void EPD_reset(SPI_HandleTypeDef *hspi){
	HAL_GPIO_WritePin(EPD_RST_GPIO_Port, EPD_RST_Pin, GPIO_PIN_RESET); //active low
	HAL_Delay(10);
	HAL_GPIO_WritePin(EPD_RST_GPIO_Port, EPD_RST_Pin, GPIO_PIN_SET);
	HAL_Delay(10);
}

/**
 * @brief  Wakeup from deepsleep through hardware reset + power on
 */
HAL_StatusTypeDef EPD_wakeup(SPI_HandleTypeDef *hspi){
	EPD_reset(hspi);
	HAL_TRY(EPD_set_power(hspi, POWER_ON));
	return HAL_OK;
}

/**
 * @brief  Set the border color on the screen
 */
HAL_StatusTypeDef EPD_set_border(SPI_HandleTypeDef *hspi, Border_Color color){
	uint8_t data = color << 6; //use colors for 2 MSBs
	data |= 0b010111; //keep the bits for the rest of the settings
	data = 0x97;
	HAL_TRY(EPD_write_command_data(hspi, 0x50, &data, 1));
	return HAL_OK;
}

/**
 * @brief  Refresh screen to display the newest data pushed to the driver
 */
HAL_StatusTypeDef EPD_refresh(SPI_HandleTypeDef *hspi){
	HAL_TRY(EPD_write_command(hspi, 0x12)); //refresh
	HAL_Delay(1); //Need to wait 200uS for internal BUSY_N flag to update, possibly applies to physical busy pin, not specified, kept just in case
	EPD_wait_busy();

	return HAL_OK;
}

/**
 * @brief  Get a byte filled with one color
 * @param  color
 */
static uint8_t fill_byte(Pixel_Color color){
	switch(color){
	case WHITE:
		return 0xFF;
	case BLACK:
		return 0x00;
	default:
		return 0x00;
	}
}

/**
 * @brief  Fill screen with color
 */
HAL_StatusTypeDef EPD_fill_screen(SPI_HandleTypeDef *hspi, Pixel_Color color){
	HAL_TRY(EPD_write_command_data(hspi, 0x10, old_data, EPD_ARRAY));
	HAL_TRY(EPD_write_command(hspi, 0x13));
	uint8_t color_byte = fill_byte(color);
	for(unsigned int i = 0; i < EPD_ARRAY; i++){
		HAL_TRY(EPD_write_data(hspi, &color_byte, 1));
	}

	return HAL_OK;
}
