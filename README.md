# STM32_NixieClock
Nixie clock based on STM32F103C8T6, DS3231 and MC34063

Nixie clock is driven by STM32F103C8T6 MCU, reading data from DS3231 RTC clock. Step-up converter controlled by MC34063 produces 170V DC needed to power up display. Lamps are old japanese CD61 niexie tubes. 

Hardware is already finished, but software has to be re-devolped in order to use modern HAL library and FreeRTOS.
