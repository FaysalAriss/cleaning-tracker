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


/**
 * @brief  Wait until busy bit is high (free)
 */
void EPD_wait_busy(void){
	while(HAL_GPIO_ReadPin(EPD_BUSY_GPIO_Port, EPD_BUSY_Pin) == GPIO_PIN_RESET);
}

HAL_StatusTypeDef EPD_write_command(SPI_HandleTypeDef *hspi, uint8_t command){
	HAL_GPIO_WritePin(EPD_DC_GPIO_Port, EPD_DC_Pin, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(EPD_CS_GPIO_Port, EPD_CS_Pin, GPIO_PIN_RESET);
	HAL_TRY(HAL_SPI_Transmit(hspi, &command, 1, TIMEOUT));
	HAL_GPIO_WritePin(EPD_CS_GPIO_Port, EPD_CS_Pin, GPIO_PIN_SET);
	return HAL_OK;
}

HAL_StatusTypeDef EPD_write_data(SPI_HandleTypeDef *hspi, uint8_t *data, uint16_t size){
	HAL_GPIO_WritePin(EPD_DC_GPIO_Port, EPD_DC_Pin, GPIO_PIN_SET);
	HAL_GPIO_WritePin(EPD_CS_GPIO_Port, EPD_CS_Pin, GPIO_PIN_RESET);
	HAL_TRY(HAL_SPI_Transmit(hspi, data, size, TIMEOUT));
	HAL_GPIO_WritePin(EPD_CS_GPIO_Port, EPD_CS_Pin, GPIO_PIN_SET);
	return HAL_OK;
}

/**
 * @brief  Initialize the driver, UC8253
 */
HAL_StatusTypeDef EPD_driver_init(SPI_HandleTypeDef *hspi){
	//Reset driver by toggling RESET pin
	HAL_GPIO_WritePin(EPD_RST_GPIO_Port, EPD_RST_Pin, GPIO_PIN_RESET);
	HAL_Delay(10);
	HAL_GPIO_WritePin(EPD_RST_GPIO_Port, EPD_RST_Pin, GPIO_PIN_SET);
	HAL_Delay(10);

	uint8_t power_on = 0x04;
	EPD_write_command(hspi, power_on);
	EPD_wait_busy();

	EPD_write_command(hspi, 0x50);
	uint8_t white_border = 0x97;
	EPD_write_data(hspi, &white_border, 1);

	return HAL_OK;
}
