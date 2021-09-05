/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * File Name          : freertos.c
 * Description        : Code for freertos applications
 ******************************************************************************
 * @attention
 *
 * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
 * All rights reserved.</center></h2>
 *
 * This software component is licensed by ST under Ultimate Liberty license
 * SLA0044, the "License"; You may not use this file except in compliance with
 * the License. You may obtain a copy of the License at:
 *                             www.st.com/SLA0044
 *
 ******************************************************************************
 */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "FreeRTOS.h"
#include "task.h"
#include "main.h"
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "DS3231.h"
#include "i2c.h"

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
/* USER CODE BEGIN Variables */

_RTC rtc =
{ .Year = 0, .Month = 8, .Date = 6, .DaysOfWeek = SUNDAY, .Hour = 12, .Min = 34,
		.Sec = 0 };

/* USER CODE END Variables */
/* Definitions for defaultTask */
osThreadId_t defaultTaskHandle;
const osThreadAttr_t defaultTask_attributes =
{ .name = "defaultTask", .priority = (osPriority_t) osPriorityBelowNormal,
		.stack_size = 128 * 4 };
/* Definitions for ButtonsTask */
osThreadId_t ButtonsTaskHandle;
const osThreadAttr_t ButtonsTask_attributes =
{ .name = "ButtonsTask", .priority = (osPriority_t) osPriorityNormal,
		.stack_size = 128 * 4 };
/* Definitions for RTC_ReadTask */
osThreadId_t RTC_ReadTaskHandle;
const osThreadAttr_t RTC_ReadTask_attributes =
{ .name = "RTC_ReadTask", .priority = (osPriority_t) osPriorityNormal,
		.stack_size = 128 * 4 };
/* Definitions for DisplayTask */
osThreadId_t DisplayTaskHandle;
const osThreadAttr_t DisplayTask_attributes =
{ .name = "DisplayTask", .priority = (osPriority_t) osPriorityBelowNormal7,
		.stack_size = 128 * 4 };
/* Definitions for SharedMemoryMutex */
osMutexId_t SharedMemoryMutexHandle;
const osMutexAttr_t SharedMemoryMutex_attributes =
{ .name = "SharedMemoryMutex" };
/* Definitions for I2C_Mutex */
osMutexId_t I2C_MutexHandle;
const osMutexAttr_t I2C_Mutex_attributes =
{ .name = "I2C_Mutex" };
/* Definitions for ButtonsSemaphore */
osSemaphoreId_t ButtonsSemaphoreHandle;
const osSemaphoreAttr_t ButtonsSemaphore_attributes =
{ .name = "ButtonsSemaphore" };

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */

/* USER CODE END FunctionPrototypes */

void StartDefaultTask(void *argument);
void Start_ButtonsTask(void *argument);
void start_RTC_ReadTask(void *argument);
void StartDisplayTask(void *argument);

void MX_FREERTOS_Init(void); /* (MISRA C 2004 rule 8.1) */

/**
 * @brief  FreeRTOS initialization
 * @param  None
 * @retval None
 */
void MX_FREERTOS_Init(void)
{
	/* USER CODE BEGIN Init */

	/* USER CODE END Init */
	/* Create the mutex(es) */
	/* creation of SharedMemoryMutex */
	SharedMemoryMutexHandle = osMutexNew(&SharedMemoryMutex_attributes);

	/* creation of I2C_Mutex */
	I2C_MutexHandle = osMutexNew(&I2C_Mutex_attributes);

	/* USER CODE BEGIN RTOS_MUTEX */
	/* add mutexes, ... */
	/* USER CODE END RTOS_MUTEX */

	/* Create the semaphores(s) */
	/* creation of ButtonsSemaphore */
	ButtonsSemaphoreHandle = osSemaphoreNew(1, 1, &ButtonsSemaphore_attributes);

	/* USER CODE BEGIN RTOS_SEMAPHORES */
	/* add semaphores, ... */
	/* USER CODE END RTOS_SEMAPHORES */

	/* USER CODE BEGIN RTOS_TIMERS */
	/* start timers, add new ones, ... */
	/* USER CODE END RTOS_TIMERS */

	/* USER CODE BEGIN RTOS_QUEUES */
	/* add queues, ... */
	/* USER CODE END RTOS_QUEUES */

	/* Create the thread(s) */
	/* creation of defaultTask */
	defaultTaskHandle = osThreadNew(StartDefaultTask, NULL,
			&defaultTask_attributes);

	/* creation of ButtonsTask */
	ButtonsTaskHandle = osThreadNew(Start_ButtonsTask, NULL,
			&ButtonsTask_attributes);

	/* creation of RTC_ReadTask */
	RTC_ReadTaskHandle = osThreadNew(start_RTC_ReadTask, NULL,
			&RTC_ReadTask_attributes);

	/* creation of DisplayTask */
	DisplayTaskHandle = osThreadNew(StartDisplayTask, NULL,
			&DisplayTask_attributes);

	/* USER CODE BEGIN RTOS_THREADS */
	/* add threads, ... */
	/* USER CODE END RTOS_THREADS */

}

/* USER CODE BEGIN Header_StartDefaultTask */
/**
 * @brief  Function implementing the defaultTask thread.
 * @param  argument: Not used
 * @retval None
 */
/* USER CODE END Header_StartDefaultTask */
void StartDefaultTask(void *argument)
{
	/* USER CODE BEGIN StartDefaultTask */
	/* Infinite loop */
	for (;;)
	{
		osDelay(1);
	}
	/* USER CODE END StartDefaultTask */
}

/* USER CODE BEGIN Header_Start_ButtonsTask */
/**
 * @brief Function implementing the ButtonsTask thread.
 * @param argument: Not used
 * @retval None
 */
/* USER CODE END Header_Start_ButtonsTask */
void Start_ButtonsTask(void *argument)
{
	/* USER CODE BEGIN Start_ButtonsTask */

	/* Infinite loop */
	for (;;)
	{
		osSemaphoreAcquire(ButtonsSemaphoreHandle, osWaitForever);
		osDelay(50);

		if (HAL_GPIO_ReadPin(H_PLUS_GPIO_Port, H_PLUS_Pin))
		{
			osDelay(50);
			osSemaphoreAcquire(SharedMemoryMutexHandle, osWaitForever);
			if (rtc.Hour + 1 > 23)
			{
				rtc.Hour = 0;
			}
			else
			{
				rtc.Hour++;
			}
			osSemaphoreAcquire(I2C_MutexHandle, osWaitForever);
			DS3231_SetTime(&rtc);
			osSemaphoreRelease(I2C_MutexHandle);
			osSemaphoreRelease(SharedMemoryMutexHandle);
		}

		if (HAL_GPIO_ReadPin(H_MINUS_GPIO_Port, H_MINUS_Pin))
		{
			osDelay(50);
			osSemaphoreAcquire(SharedMemoryMutexHandle, osWaitForever);
			if (rtc.Hour - 1 < 0)
			{
				rtc.Hour = 23;
			}
			else
			{
				rtc.Hour--;
			}
			osSemaphoreAcquire(I2C_MutexHandle, osWaitForever);
			DS3231_SetTime(&rtc);
			osSemaphoreRelease(I2C_MutexHandle);
			osSemaphoreRelease(SharedMemoryMutexHandle);
		}

		if (HAL_GPIO_ReadPin(M_PLUS_GPIO_Port, M_PLUS_Pin))
		{
			osDelay(50);
			osSemaphoreAcquire(SharedMemoryMutexHandle, osWaitForever);
			if (rtc.Min + 1 > 59)
			{
				rtc.Min = 0;
				if (rtc.Hour + 1 > 23)
				{
					rtc.Hour = 0;
				}
				else
				{
					rtc.Hour++;
				}
			}
			else
			{
				rtc.Min++;
			}
			osSemaphoreAcquire(I2C_MutexHandle, osWaitForever);
			DS3231_SetTime(&rtc);
			osSemaphoreRelease(I2C_MutexHandle);
			osSemaphoreRelease(SharedMemoryMutexHandle);
		}

		if (HAL_GPIO_ReadPin(M_MINUS_GPIO_Port, M_MINUS_Pin))
		{
			osDelay(50);
			osSemaphoreAcquire(SharedMemoryMutexHandle, osWaitForever);
			if (rtc.Min - 1 < 0)
			{
				rtc.Min = 59;
				if (rtc.Hour - 1 < 0)
				{
					rtc.Hour = 23;
				}
				else
				{
					rtc.Hour--;
				}
			}
			else
			{
				rtc.Min--;
			}
			osSemaphoreAcquire(I2C_MutexHandle, osWaitForever);
			DS3231_SetTime(&rtc);
			osSemaphoreRelease(I2C_MutexHandle);
			osSemaphoreRelease(SharedMemoryMutexHandle);
		}
	}
	/* USER CODE END Start_ButtonsTask */
}

/* USER CODE BEGIN Header_start_RTC_ReadTask */
/**
 * @brief Function implementing the RTC_ReadTask thread.
 * @param argument: Not used
 * @retval None
 */
/* USER CODE END Header_start_RTC_ReadTask */
void start_RTC_ReadTask(void *argument)
{
	/* USER CODE BEGIN start_RTC_ReadTask */

	osSemaphoreAcquire(I2C_MutexHandle, osWaitForever);
	DS3231_Init(&hi2c2);
	//DS3231_SetTime(&rtc);
	WriteRegister(DS3231_REG_CONTROL, 0b01000000); //set SQW output of RTC to 1Hz frequency
	osSemaphoreRelease(I2C_MutexHandle);

	/* Infinite loop */
	for (;;)
	{
		osSemaphoreAcquire(I2C_MutexHandle, osWaitForever);
		osSemaphoreAcquire(SharedMemoryMutexHandle, osWaitForever);
		if(DS3231_GetTime(&rtc) == false)
		{
			rtc.Hour = 0;
			rtc.Min = 0;
			rtc.Sec = 0;
		}
		osSemaphoreRelease(SharedMemoryMutexHandle);
		osSemaphoreRelease(I2C_MutexHandle);
		osDelay(100);
	}
	/* USER CODE END start_RTC_ReadTask */
}

/* USER CODE BEGIN Header_StartDisplayTask */
/**
 * @brief Function implementing the DisplayTask thread.
 * @param argument: Not used
 * @retval None
 */
/* USER CODE END Header_StartDisplayTask */
void StartDisplayTask(void *argument)
{
	/* USER CODE BEGIN StartDisplayTask */
	uint8_t hours_10, hours_1, minutes_10, minutes_1;

	float temperature = 0;            //variable to read temperature from DS3231
	int temperature_int = 0;               //variable for temperature conversion
	int temperature_display_counter = 0; //count time while temperature is displayed

	osSemaphoreAcquire(I2C_MutexHandle, osWaitForever);
	DS3231_ReadTemperature(&temperature);         //read temperature from DS3231
	osSemaphoreRelease(I2C_MutexHandle);

	temperature_int = (int) (temperature * 100);

	hours_10 = temperature_int / 1000;                   //10's degrees celcius
	hours_1 = temperature_int % 1000 / 100;               //1's degrees celcius
	minutes_10 = temperature_int % 100 / 10;             //0.1's degrees celcius
	minutes_1 = temperature_int % 10;                   //0.01's degrees celcius

	/* Infinite loop */
	for (;;)
	{
		if (temperature_display_counter > 400)
		{
			osSemaphoreAcquire(SharedMemoryMutexHandle, osWaitForever);
			hours_10 = rtc.Hour / 10;
			hours_1 = rtc.Hour % 10;
			minutes_10 = rtc.Min / 10;
			minutes_1 = rtc.Min % 10;
			osSemaphoreRelease(SharedMemoryMutexHandle);
		}
		else
		{
			temperature_display_counter++;
		}

		//Multiplexing nixie tubes

		// Decimal digit of hours - 1st tube
		HAL_GPIO_WritePin(N0_GPIO_Port, N0_Pin, 0);
		HAL_GPIO_WritePin(N1_GPIO_Port, N1_Pin, 0);
		HAL_GPIO_WritePin(N2_GPIO_Port, N2_Pin, 0);
		HAL_GPIO_WritePin(N3_GPIO_Port, N3_Pin, 0);
		HAL_GPIO_WritePin(N4_GPIO_Port, N4_Pin, 0);
		HAL_GPIO_WritePin(N5_GPIO_Port, N5_Pin, 0);
		HAL_GPIO_WritePin(N6_GPIO_Port, N6_Pin, 0);
		HAL_GPIO_WritePin(N7_GPIO_Port, N7_Pin, 0);
		HAL_GPIO_WritePin(N8_GPIO_Port, N8_Pin, 0);
		HAL_GPIO_WritePin(N9_GPIO_Port, N9_Pin, 0);

		HAL_GPIO_WritePin(L1_GPIO_Port, L1_Pin, 1);
		HAL_GPIO_WritePin(L2_GPIO_Port, L2_Pin, 0);
		HAL_GPIO_WritePin(L4_GPIO_Port, L4_Pin, 0);
		HAL_GPIO_WritePin(L5_GPIO_Port, L5_Pin, 0);

		//if (hours_10 == 0)
			//HAL_GPIO_WritePin(N0_GPIO_Port, N0_Pin, 1);
		if (hours_10 == 1)
			HAL_GPIO_WritePin(N7_GPIO_Port, N7_Pin, 1);
		else if (hours_10 == 2)
			HAL_GPIO_WritePin(N1_GPIO_Port, N1_Pin, 1);
		else if (hours_10 == 3)
			HAL_GPIO_WritePin(N2_GPIO_Port, N2_Pin, 1);
		else if (hours_10 == 4)
			HAL_GPIO_WritePin(N3_GPIO_Port, N3_Pin, 1);
		else if (hours_10 == 5)
			HAL_GPIO_WritePin(N4_GPIO_Port, N4_Pin, 1);
		else if (hours_10 == 6)
			HAL_GPIO_WritePin(N5_GPIO_Port, N5_Pin, 1);
		else if (hours_10 == 7)
			HAL_GPIO_WritePin(N6_GPIO_Port, N6_Pin, 1);
		else if (hours_10 == 8)
			HAL_GPIO_WritePin(N8_GPIO_Port, N8_Pin, 1);
		else if (hours_10 == 9)
			HAL_GPIO_WritePin(N9_GPIO_Port, N9_Pin, 1);
		osDelay(4);

		// Single digit of hours - 2nd tube

		HAL_GPIO_WritePin(N0_GPIO_Port, N0_Pin, 0);
		HAL_GPIO_WritePin(N1_GPIO_Port, N1_Pin, 0);
		HAL_GPIO_WritePin(N2_GPIO_Port, N2_Pin, 0);
		HAL_GPIO_WritePin(N3_GPIO_Port, N3_Pin, 0);
		HAL_GPIO_WritePin(N4_GPIO_Port, N4_Pin, 0);
		HAL_GPIO_WritePin(N5_GPIO_Port, N5_Pin, 0);
		HAL_GPIO_WritePin(N6_GPIO_Port, N6_Pin, 0);
		HAL_GPIO_WritePin(N7_GPIO_Port, N7_Pin, 0);
		HAL_GPIO_WritePin(N8_GPIO_Port, N8_Pin, 0);
		HAL_GPIO_WritePin(N9_GPIO_Port, N9_Pin, 0);

		HAL_GPIO_WritePin(L1_GPIO_Port, L1_Pin, 0);
		HAL_GPIO_WritePin(L2_GPIO_Port, L2_Pin, 1);
		HAL_GPIO_WritePin(L4_GPIO_Port, L4_Pin, 0);
		HAL_GPIO_WritePin(L5_GPIO_Port, L5_Pin, 0);

		if (hours_1 == 0)
			HAL_GPIO_WritePin(N0_GPIO_Port, N0_Pin, 1);
		else if (hours_1 == 1)
			HAL_GPIO_WritePin(N7_GPIO_Port, N7_Pin, 1);
		else if (hours_1 == 2)
			HAL_GPIO_WritePin(N1_GPIO_Port, N1_Pin, 1);
		else if (hours_1 == 3)
			HAL_GPIO_WritePin(N2_GPIO_Port, N2_Pin, 1);
		else if (hours_1 == 4)
			HAL_GPIO_WritePin(N3_GPIO_Port, N3_Pin, 1);
		else if (hours_1 == 5)
			HAL_GPIO_WritePin(N4_GPIO_Port, N4_Pin, 1);
		else if (hours_1 == 6)
			HAL_GPIO_WritePin(N5_GPIO_Port, N5_Pin, 1);
		else if (hours_1 == 7)
			HAL_GPIO_WritePin(N6_GPIO_Port, N6_Pin, 1);
		else if (hours_1 == 8)
			HAL_GPIO_WritePin(N8_GPIO_Port, N8_Pin, 1);
		else if (hours_1 == 9)
			HAL_GPIO_WritePin(N9_GPIO_Port, N9_Pin, 1);
		osDelay(4);

		// Decimal digit of minutes - 4th tube  (3th is neon lamp in a middle)
		HAL_GPIO_WritePin(N0_GPIO_Port, N0_Pin, 0);
		HAL_GPIO_WritePin(N1_GPIO_Port, N1_Pin, 0);
		HAL_GPIO_WritePin(N2_GPIO_Port, N2_Pin, 0);
		HAL_GPIO_WritePin(N3_GPIO_Port, N3_Pin, 0);
		HAL_GPIO_WritePin(N4_GPIO_Port, N4_Pin, 0);
		HAL_GPIO_WritePin(N5_GPIO_Port, N5_Pin, 0);
		HAL_GPIO_WritePin(N6_GPIO_Port, N6_Pin, 0);
		HAL_GPIO_WritePin(N7_GPIO_Port, N7_Pin, 0);
		HAL_GPIO_WritePin(N8_GPIO_Port, N8_Pin, 0);
		HAL_GPIO_WritePin(N9_GPIO_Port, N9_Pin, 0);

		HAL_GPIO_WritePin(L1_GPIO_Port, L1_Pin, 0);
		HAL_GPIO_WritePin(L2_GPIO_Port, L2_Pin, 0);
		HAL_GPIO_WritePin(L4_GPIO_Port, L4_Pin, 1);
		HAL_GPIO_WritePin(L5_GPIO_Port, L5_Pin, 0);

		if (minutes_10 == 0)
			HAL_GPIO_WritePin(N0_GPIO_Port, N0_Pin, 1);
		else if (minutes_10 == 1)
			HAL_GPIO_WritePin(N7_GPIO_Port, N7_Pin, 1);
		else if (minutes_10 == 2)
			HAL_GPIO_WritePin(N1_GPIO_Port, N1_Pin, 1);
		else if (minutes_10 == 3)
			HAL_GPIO_WritePin(N2_GPIO_Port, N2_Pin, 1);
		else if (minutes_10 == 4)
			HAL_GPIO_WritePin(N3_GPIO_Port, N3_Pin, 1);
		else if (minutes_10 == 5)
			HAL_GPIO_WritePin(N4_GPIO_Port, N4_Pin, 1);
		else if (minutes_10 == 6)
			HAL_GPIO_WritePin(N5_GPIO_Port, N5_Pin, 1);
		else if (minutes_10 == 7)
			HAL_GPIO_WritePin(N6_GPIO_Port, N6_Pin, 1);
		else if (minutes_10 == 8)
			HAL_GPIO_WritePin(N8_GPIO_Port, N8_Pin, 1);
		else if (minutes_10 == 9)
			HAL_GPIO_WritePin(N9_GPIO_Port, N9_Pin, 1);
		osDelay(4);

		// Single digit of minutes - 5th tube

		HAL_GPIO_WritePin(N0_GPIO_Port, N0_Pin, 0);
		HAL_GPIO_WritePin(N1_GPIO_Port, N1_Pin, 0);
		HAL_GPIO_WritePin(N2_GPIO_Port, N2_Pin, 0);
		HAL_GPIO_WritePin(N3_GPIO_Port, N3_Pin, 0);
		HAL_GPIO_WritePin(N4_GPIO_Port, N4_Pin, 0);
		HAL_GPIO_WritePin(N5_GPIO_Port, N5_Pin, 0);
		HAL_GPIO_WritePin(N6_GPIO_Port, N6_Pin, 0);
		HAL_GPIO_WritePin(N7_GPIO_Port, N7_Pin, 0);
		HAL_GPIO_WritePin(N8_GPIO_Port, N8_Pin, 0);
		HAL_GPIO_WritePin(N9_GPIO_Port, N9_Pin, 0);

		HAL_GPIO_WritePin(L1_GPIO_Port, L1_Pin, 0);
		HAL_GPIO_WritePin(L2_GPIO_Port, L2_Pin, 0);
		HAL_GPIO_WritePin(L4_GPIO_Port, L4_Pin, 0);
		HAL_GPIO_WritePin(L5_GPIO_Port, L5_Pin, 1);

		if (minutes_1 == 0)
			HAL_GPIO_WritePin(N0_GPIO_Port, N0_Pin, 1);
		else if (minutes_1 == 1)
			HAL_GPIO_WritePin(N7_GPIO_Port, N7_Pin, 1);
		else if (minutes_1 == 2)
			HAL_GPIO_WritePin(N1_GPIO_Port, N1_Pin, 1);
		else if (minutes_1 == 3)
			HAL_GPIO_WritePin(N2_GPIO_Port, N2_Pin, 1);
		else if (minutes_1 == 4)
			HAL_GPIO_WritePin(N3_GPIO_Port, N3_Pin, 1);
		else if (minutes_1 == 5)
			HAL_GPIO_WritePin(N4_GPIO_Port, N4_Pin, 1);
		else if (minutes_1 == 6)
			HAL_GPIO_WritePin(N5_GPIO_Port, N5_Pin, 1);
		else if (minutes_1 == 7)
			HAL_GPIO_WritePin(N6_GPIO_Port, N6_Pin, 1);
		else if (minutes_1 == 8)
			HAL_GPIO_WritePin(N8_GPIO_Port, N8_Pin, 1);
		else if (minutes_1 == 9)
			HAL_GPIO_WritePin(N9_GPIO_Port, N9_Pin, 1);
		osDelay(4);
	}
	/* USER CODE END StartDisplayTask */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
	if (GPIO_Pin == SQW_Pin)
	{
		HAL_GPIO_TogglePin(L3_GPIO_Port, L3_Pin);  //toggle state of neon lamp
		return;
	}
	if (GPIO_Pin == H_PLUS_Pin || GPIO_Pin == H_MINUS_Pin
			|| GPIO_Pin == M_PLUS_Pin || GPIO_Pin == M_MINUS_Pin)
	{
		osSemaphoreRelease(ButtonsSemaphoreHandle);
		return;
	}
}

/* USER CODE END Application */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
