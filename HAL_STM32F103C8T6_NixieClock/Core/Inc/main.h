/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
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
#include "stm32f1xx_hal.h"

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
#define LED_Pin GPIO_PIN_13
#define LED_GPIO_Port GPIOC
#define SQW_Pin GPIO_PIN_0
#define SQW_GPIO_Port GPIOA
#define SQW_EXTI_IRQn EXTI0_IRQn
#define L1_Pin GPIO_PIN_1
#define L1_GPIO_Port GPIOA
#define L2_Pin GPIO_PIN_2
#define L2_GPIO_Port GPIOA
#define L3_Pin GPIO_PIN_3
#define L3_GPIO_Port GPIOA
#define L4_Pin GPIO_PIN_4
#define L4_GPIO_Port GPIOA
#define L5_Pin GPIO_PIN_5
#define L5_GPIO_Port GPIOA
#define M_MINUS_Pin GPIO_PIN_6
#define M_MINUS_GPIO_Port GPIOA
#define M_MINUS_EXTI_IRQn EXTI9_5_IRQn
#define M_PLUS_Pin GPIO_PIN_7
#define M_PLUS_GPIO_Port GPIOA
#define M_PLUS_EXTI_IRQn EXTI9_5_IRQn
#define N0_Pin GPIO_PIN_0
#define N0_GPIO_Port GPIOB
#define N1_Pin GPIO_PIN_1
#define N1_GPIO_Port GPIOB
#define N2_Pin GPIO_PIN_2
#define N2_GPIO_Port GPIOB
#define H_MINUS_Pin GPIO_PIN_8
#define H_MINUS_GPIO_Port GPIOA
#define H_MINUS_EXTI_IRQn EXTI9_5_IRQn
#define H_PLUS_Pin GPIO_PIN_9
#define H_PLUS_GPIO_Port GPIOA
#define H_PLUS_EXTI_IRQn EXTI9_5_IRQn
#define N3_Pin GPIO_PIN_3
#define N3_GPIO_Port GPIOB
#define N4_Pin GPIO_PIN_4
#define N4_GPIO_Port GPIOB
#define N5_Pin GPIO_PIN_5
#define N5_GPIO_Port GPIOB
#define N6_Pin GPIO_PIN_6
#define N6_GPIO_Port GPIOB
#define N7_Pin GPIO_PIN_7
#define N7_GPIO_Port GPIOB
#define N8_Pin GPIO_PIN_8
#define N8_GPIO_Port GPIOB
#define N9_Pin GPIO_PIN_9
#define N9_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
