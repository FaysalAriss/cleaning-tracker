/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
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
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
//EPD
#include "../MyDrivers/EPDs/EPD/Ap_29demo.h"
#include "../MyDrivers/EPDs/EPD/Display_EPD_W21.h"
#include "../MyDrivers/EPDs/EPD/Display_EPD_W21_spi.h"
#include "../MyDrivers/EPDs/Fonts/fonts.h"
#include "../MyDrivers/EPDs/GUI/GUI_Paint.h"

#if 1
   unsigned char BlackImage[EPD_ARRAY];//Define canvas space
#endif
//Tips//
/*
1.Flickering is normal when EPD is performing a full screen update to clear ghosting from the previous image so to ensure better clarity and legibility for the new image.
2.There will be no flicker when EPD performs a partial refresh.
3.Please make sue that EPD enters sleep mode when update is completed and always leave the sleep mode command. Otherwise, this may result in a reduced lifespan of EPD.
4.Please refrain from inserting EPD to the FPC socket or unplugging it when the MCU is being powered to prevent potential damage.)
5.Re-initialization is required for every full screen update.
6.When porting the program, set the BUSY pin to input mode and other pins to output mode.
*/
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{

  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  /* USER CODE BEGIN 2 */

#if 1
	//Full screen refresh, fast refresh, and partial update demostration.
	EPD_Init(); //Full screen update initialization.
	EPD_WhiteScreen_White(); //Clear screen function.
	EPD_DeepSleep(); //Enter the sleep mode and please do not delete it, otherwise it will reduce the lifespan of the screen.
	HAL_Delay(2000); //Delay for 2s.

	/************Full display(2s)*******************/
	EPD_Init(); //Full screen updateinitialization.
	EPD_WhiteScreen_ALL(gImage_1); //To Display one image using full screen refresh.
	EPD_DeepSleep(); //Enter the sleep mode and please do not delete it, otherwise it will reduce the lifespan of the screen.
	HAL_Delay(2000); //Delay for 2s.

	/************Fast updatemode(1.5s)*******************/
	EPD_Init_Fast(); //Fast updateinitialization.
	EPD_WhiteScreen_ALL(gImage_2); //To display one image using fast refresh.
	EPD_DeepSleep(); //Enter the sleep mode and please do not delete it, otherwise it will reduce the lifespan of the screen.
	HAL_Delay(2000); //Delay for 2s.

	/************4 Gray updatemode*******************/
	EPD_Init_4G(); //Fast updateinitialization.
	EPD_WhiteScreen_ALL_4G(gImage_4G1); //To display one image using fast refresh.
	EPD_DeepSleep(); //Enter the sleep mode and please do not delete it, otherwise it will reduce the lifespan of the screen.
	HAL_Delay(2000); //Delay for 2s.

	#if 0
		//Partial updatedemostration.
		//Partial updatedemo support displaying a clock at 5 locations with 00:00.  If you need to perform partial updatemore than 5 locations, please use the feature of using partial updateat the full screen demo.
		//After 5 partial refreshes, implement a full screen updateto clear the ghosting caused by partial refreshes.
		//////////////////////Partial updatetime demo/////////////////////////////////////
		EPD_Init(); //Electronic paper initialization.
		EPD_SetRAMValue_BaseMap(gImage_basemap); //Please do not delete the background color function, otherwise it will cause unstable display during partial refresh.
		for(int i=0;i<6;i++)
		{
		  EPD_Dis_Part_Time(100,120,Num[1],Num[0],gImage_numdot,Num[0],Num[i],5,32,64); //x,y,DATA-A~E,number,Resolution 32*64
		}
		EPD_DeepSleep();  //Enter the sleep mode and please do not delete it, otherwise it will reduce the lifespan of the screen.
		HAL_Delay(2000);	//Delay for 2s.
		EPD_Init(); //Full screen updateinitialization.
		EPD_WhiteScreen_White(); //Clear screen function.
		EPD_DeepSleep(); //Enter the sleep mode and please do not delete it, otherwise it will reduce the lifespan of the screen.
		HAL_Delay(2000); //Delay for 2s.
	#endif

	#if 1
		//Demo of using partial updateto update the full screen, to enable this feature, please change 0 to 1.
		//After 5 partial refreshes, implement a full screen updateto clear the ghosting caused by partial refreshes.
		//////////////////////Partial updatetime demo/////////////////////////////////////
		EPD_Init(); //Full screen updateinitialization.
		EPD_WhiteScreen_White(); //Clear screen function.
		EPD_Dis_PartAll(gImage_p1);
		EPD_Dis_PartAll(gImage_p2);
		EPD_Dis_PartAll(gImage_p3);
		EPD_DeepSleep();//Enter the sleep mode and please do not delete it, otherwise it will reduce the lifespan of the screen.
		HAL_Delay(2000); //Delay for 2s.

		EPD_Init(); //Full screen updateinitialization.
		EPD_WhiteScreen_White(); //Clear screen function.
		EPD_DeepSleep(); //Enter the sleep mode and please do not delete it, otherwise it will reduce the lifespan of the screen.
		HAL_Delay(2000);	//Delay for 2s.
	#endif

	#if 0
		//Demonstration of full screen updatewith 180-degree rotation, to enable this feature, please change 0 to 1.
		/************Full display(2s)*******************/
		EPD_Init_180(); //Full screen updateinitialization.
		EPD_WhiteScreen_ALL(gImage_p1); //To Display one image using full screen refresh.
		EPD_DeepSleep(); //Enter the sleep mode and please do not delete it, otherwise it will reduce the lifespan of the screen.
		HAL_Delay(2000); //Delay for 2s.
	#endif

#endif

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE2);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 25;
  RCC_OscInitStruct.PLL.PLLN = 168;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 4;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};
  /* USER CODE BEGIN MX_GPIO_Init_1 */

  /* USER CODE END MX_GPIO_Init_1 */

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, RST_Pin|DC_Pin|SPI_CS_Pin|EPD_SCK_Pin
                          |PWR_Pin|EPD_SDA_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pins : RST_Pin DC_Pin SPI_CS_Pin EPD_SCK_Pin
                           PWR_Pin EPD_SDA_Pin */
  GPIO_InitStruct.Pin = RST_Pin|DC_Pin|SPI_CS_Pin|EPD_SCK_Pin
                          |PWR_Pin|EPD_SDA_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pin : BUSY_Pin */
  GPIO_InitStruct.Pin = BUSY_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  HAL_GPIO_Init(BUSY_GPIO_Port, &GPIO_InitStruct);

  /* USER CODE BEGIN MX_GPIO_Init_2 */

  /* USER CODE END MX_GPIO_Init_2 */
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}
#ifdef USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
