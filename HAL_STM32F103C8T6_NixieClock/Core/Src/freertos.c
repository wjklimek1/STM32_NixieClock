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

uint8_t hours = 0;
uint8_t minutes = 0;
uint8_t seconds = 0;

_RTC rtc = {
    .Year = 0, .Month = 8, .Date = 6,
    .DaysOfWeek = SUNDAY,
    .Hour = 12, .Min = 34, .Sec = 0
};

/* USER CODE END Variables */
/* Definitions for defaultTask */
osThreadId_t defaultTaskHandle;
const osThreadAttr_t defaultTask_attributes = {
  .name = "defaultTask",
  .priority = (osPriority_t) osPriorityBelowNormal,
  .stack_size = 128 * 4
};
/* Definitions for ButtonsTask */
osThreadId_t ButtonsTaskHandle;
const osThreadAttr_t ButtonsTask_attributes = {
  .name = "ButtonsTask",
  .priority = (osPriority_t) osPriorityLow,
  .stack_size = 128 * 4
};
/* Definitions for RTC_ReadTask */
osThreadId_t RTC_ReadTaskHandle;
const osThreadAttr_t RTC_ReadTask_attributes = {
  .name = "RTC_ReadTask",
  .priority = (osPriority_t) osPriorityLow,
  .stack_size = 128 * 4
};
/* Definitions for SharedMemoryMutex */
osMutexId_t SharedMemoryMutexHandle;
const osMutexAttr_t SharedMemoryMutex_attributes = {
  .name = "SharedMemoryMutex"
};
/* Definitions for I2C_Mutex */
osMutexId_t I2C_MutexHandle;
const osMutexAttr_t I2C_Mutex_attributes = {
  .name = "I2C_Mutex"
};
/* Definitions for H_PLUS_Semaphore */
osSemaphoreId_t H_PLUS_SemaphoreHandle;
const osSemaphoreAttr_t H_PLUS_Semaphore_attributes = {
  .name = "H_PLUS_Semaphore"
};
/* Definitions for H_MINUS_Semaphore */
osSemaphoreId_t H_MINUS_SemaphoreHandle;
const osSemaphoreAttr_t H_MINUS_Semaphore_attributes = {
  .name = "H_MINUS_Semaphore"
};
/* Definitions for M_PLUS_Semaphore */
osSemaphoreId_t M_PLUS_SemaphoreHandle;
const osSemaphoreAttr_t M_PLUS_Semaphore_attributes = {
  .name = "M_PLUS_Semaphore"
};
/* Definitions for M_MINUS_Semaphore */
osSemaphoreId_t M_MINUS_SemaphoreHandle;
const osSemaphoreAttr_t M_MINUS_Semaphore_attributes = {
  .name = "M_MINUS_Semaphore"
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */
   
/* USER CODE END FunctionPrototypes */

void StartDefaultTask(void *argument);
void Start_ButtonsTask(void *argument);
void start_RTC_ReadTask(void *argument);

void MX_FREERTOS_Init(void); /* (MISRA C 2004 rule 8.1) */

/**
  * @brief  FreeRTOS initialization
  * @param  None
  * @retval None
  */
void MX_FREERTOS_Init(void) {
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
  /* creation of H_PLUS_Semaphore */
  H_PLUS_SemaphoreHandle = osSemaphoreNew(1, 1, &H_PLUS_Semaphore_attributes);

  /* creation of H_MINUS_Semaphore */
  H_MINUS_SemaphoreHandle = osSemaphoreNew(1, 1, &H_MINUS_Semaphore_attributes);

  /* creation of M_PLUS_Semaphore */
  M_PLUS_SemaphoreHandle = osSemaphoreNew(1, 1, &M_PLUS_Semaphore_attributes);

  /* creation of M_MINUS_Semaphore */
  M_MINUS_SemaphoreHandle = osSemaphoreNew(1, 1, &M_MINUS_Semaphore_attributes);

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
  defaultTaskHandle = osThreadNew(StartDefaultTask, NULL, &defaultTask_attributes);

  /* creation of ButtonsTask */
  ButtonsTaskHandle = osThreadNew(Start_ButtonsTask, NULL, &ButtonsTask_attributes);

  /* creation of RTC_ReadTask */
  RTC_ReadTaskHandle = osThreadNew(start_RTC_ReadTask, NULL, &RTC_ReadTask_attributes);

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
  for(;;)
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

	uint8_t button_pressed = 0;

	/* Infinite loop */
	for (;;)
	{
		button_pressed = osSemaphoreAcquire(H_PLUS_SemaphoreHandle, 20);
		if(button_pressed == osOK)
		{
			osSemaphoreAcquire(SharedMemoryMutexHandle, osWaitForever);
			rtc.Hour++;
			osSemaphoreAcquire(I2C_MutexHandle, osWaitForever);
			DS3231_SetTime(&rtc);
			osSemaphoreRelease(I2C_MutexHandle);
			osSemaphoreRelease(SharedMemoryMutexHandle);
		}
		button_pressed = osSemaphoreAcquire(H_MINUS_SemaphoreHandle, 20);
		if(button_pressed == osOK)
		{
			osSemaphoreAcquire(SharedMemoryMutexHandle, osWaitForever);
			rtc.Hour--;
			osSemaphoreAcquire(I2C_MutexHandle, osWaitForever);
			DS3231_SetTime(&rtc);
			osSemaphoreRelease(I2C_MutexHandle);
			osSemaphoreRelease(SharedMemoryMutexHandle);
		}
		button_pressed = osSemaphoreAcquire(M_PLUS_SemaphoreHandle, 20);
		if(button_pressed == osOK)
		{
			osSemaphoreAcquire(SharedMemoryMutexHandle, osWaitForever);
			rtc.Min++;
			osSemaphoreAcquire(I2C_MutexHandle, osWaitForever);
			DS3231_SetTime(&rtc);
			osSemaphoreRelease(I2C_MutexHandle);
			osSemaphoreRelease(SharedMemoryMutexHandle);
		}
		button_pressed = osSemaphoreAcquire(M_MINUS_SemaphoreHandle, 20);
		if(button_pressed == osOK)
		{
			osSemaphoreAcquire(SharedMemoryMutexHandle, osWaitForever);
			rtc.Min--;
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
	WriteRegister(DS3231_REG_CONTROL, 0b01000000);   //set SQW output of RTC to 1Hz frequency
	osSemaphoreRelease(I2C_MutexHandle);

	/* Infinite loop */
	for (;;)
	{
		osSemaphoreAcquire(I2C_MutexHandle, osWaitForever);
		osSemaphoreAcquire(SharedMemoryMutexHandle, osWaitForever);
		DS3231_GetTime(&rtc);
		osSemaphoreRelease(SharedMemoryMutexHandle);
		osSemaphoreRelease(I2C_MutexHandle);
		osDelay(100);
	}
  /* USER CODE END start_RTC_ReadTask */
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
	if (GPIO_Pin == H_PLUS_Pin)
	{
		osSemaphoreRelease(H_PLUS_SemaphoreHandle);
		return;
	}
	if (GPIO_Pin == H_MINUS_Pin)
	{
		osSemaphoreRelease(H_MINUS_SemaphoreHandle);
		return;
	}
	if (GPIO_Pin == M_PLUS_Pin)
	{
		osSemaphoreRelease(M_PLUS_SemaphoreHandle);
		return;
	}
	if (GPIO_Pin == M_MINUS_Pin)
	{
		osSemaphoreRelease(M_MINUS_SemaphoreHandle);
		return;
	}
}
     
/* USER CODE END Application */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
