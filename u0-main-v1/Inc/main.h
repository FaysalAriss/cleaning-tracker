/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2026 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32u0xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define LED__Pin GPIO_PIN_13
#define LED__GPIO_Port GPIOC
#define RTC_WKUP_Pin GPIO_PIN_0
#define RTC_WKUP_GPIO_Port GPIOA
#define BTN_WKUP1_Pin GPIO_PIN_1
#define BTN_WKUP1_GPIO_Port GPIOA
#define BTN_WKUP2_Pin GPIO_PIN_2
#define BTN_WKUP2_GPIO_Port GPIOA
#define EPD_RST_Pin GPIO_PIN_3
#define EPD_RST_GPIO_Port GPIOA
#define EPD_DC_Pin GPIO_PIN_4
#define EPD_DC_GPIO_Port GPIOA
#define EPD_SCK_Pin GPIO_PIN_5
#define EPD_SCK_GPIO_Port GPIOA
#define EPD_BUSY_Pin GPIO_PIN_6
#define EPD_BUSY_GPIO_Port GPIOA
#define EPD_MOSI_Pin GPIO_PIN_7
#define EPD_MOSI_GPIO_Port GPIOA
#define EPD_CS_Pin GPIO_PIN_0
#define EPD_CS_GPIO_Port GPIOB
#define EPD_PWR_Pin GPIO_PIN_1
#define EPD_PWR_GPIO_Port GPIOB
#define RTC_SCL_Pin GPIO_PIN_9
#define RTC_SCL_GPIO_Port GPIOA
#define RTC_SDA_Pin GPIO_PIN_10
#define RTC_SDA_GPIO_Port GPIOA
#define SWDIO_Pin GPIO_PIN_13
#define SWDIO_GPIO_Port GPIOA
#define SWCLK_Pin GPIO_PIN_14
#define SWCLK_GPIO_Port GPIOA

/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
