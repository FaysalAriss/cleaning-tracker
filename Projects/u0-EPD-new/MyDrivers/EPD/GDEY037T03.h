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

#define EPD_WIDTH   240
#define EPD_HEIGHT  416
#define PIXELS_PER_BYTE 8
#define EPD_ARRAY  EPD_WIDTH*EPD_HEIGHT/PIXELS_PER_BYTE

//values based on settings from 0x50
typedef enum{
  WHITE = 1U,
  BLACK = 0U
} Pixel_Color;


//values based on settings from 0x50
typedef uint8_t Border_Color;
#define BORDER_WHITE ((Border_Color) 1U)
#define BORDER_BLACK ((Border_Color) 2U)


typedef uint8_t Power_Command;
#define POWER_ON ((Power_Command) 0x04U)
#define POWER_OFF ((Power_Command) 0x02U)

void EPD_wait_busy(void);
HAL_StatusTypeDef EPD_write_command(SPI_HandleTypeDef *hspi, uint8_t command);
HAL_StatusTypeDef EPD_write_data(SPI_HandleTypeDef *hspi, uint8_t *data, uint16_t size);
HAL_StatusTypeDef EPD_write_command_data(SPI_HandleTypeDef *hspi, uint8_t command, uint8_t *data, uint16_t size);
HAL_StatusTypeDef EPD_set_power(SPI_HandleTypeDef *hspi, Power_Command command);
HAL_StatusTypeDef EPD_deepsleep(SPI_HandleTypeDef *hspi);
void EPD_reset(SPI_HandleTypeDef *hspi);
HAL_StatusTypeDef EPD_wakeup(SPI_HandleTypeDef *hspi);
HAL_StatusTypeDef EPD_set_border(SPI_HandleTypeDef *hspi, Border_Color color);
HAL_StatusTypeDef EPD_refresh(SPI_HandleTypeDef *hspi);
HAL_StatusTypeDef EPD_fill_screen(SPI_HandleTypeDef *hspi, Pixel_Color color);


#endif /* EPD_GDEY037T03_H_ */
