#ifndef _DISPLAY_EPD_W21_SPI_
#define _DISPLAY_EPD_W21_SPI_
#include "stm32f4xx.h"
#include "main.h"


#define EPD_W21_MOSI_0	HAL_GPIO_WritePin(EPD_SDA_GPIO_Port, EPD_SDA_Pin, GPIO_PIN_RESET)
#define EPD_W21_MOSI_1	HAL_GPIO_WritePin(EPD_SDA_GPIO_Port, EPD_SDA_Pin, GPIO_PIN_SET)

#define EPD_W21_CLK_0	HAL_GPIO_WritePin(EPD_SCK_GPIO_Port, EPD_SCK_Pin, GPIO_PIN_RESET)
#define EPD_W21_CLK_1	HAL_GPIO_WritePin(EPD_SCK_GPIO_Port, EPD_SCK_Pin, GPIO_PIN_SET)

#define EPD_W21_CS_0	HAL_GPIO_WritePin(SPI_CS_GPIO_Port, SPI_CS_Pin, GPIO_PIN_RESET)
#define EPD_W21_CS_1	HAL_GPIO_WritePin(SPI_CS_GPIO_Port, SPI_CS_Pin, GPIO_PIN_SET)

#define EPD_W21_DC_0	HAL_GPIO_WritePin(DC_GPIO_Port, DC_Pin, GPIO_PIN_RESET)
#define EPD_W21_DC_1	HAL_GPIO_WritePin(DC_GPIO_Port, DC_Pin, GPIO_PIN_SET)

#define EPD_W21_RST_0	HAL_GPIO_WritePin(RST_GPIO_Port, RST_Pin, GPIO_PIN_RESET)
#define EPD_W21_RST_1	HAL_GPIO_WritePin(RST_GPIO_Port, RST_Pin, GPIO_PIN_SET)

#define isEPD_W21_BUSY HAL_GPIO_ReadPin(BUSY_GPIO_Port, BUSY_Pin)


void SPI_Write(unsigned char value);
void EPD_W21_WriteDATA(unsigned char data);
void EPD_W21_WriteCMD(unsigned char command);
void EPD_GPIO_Init(void);

//Fast
void PIC_display_Fast(const unsigned char* picData);

#endif  //#ifndef _MCU_SPI_H_

/***********************************************************
						end file
***********************************************************/
