# STM32_NixieClock
Nixie clock based on STM32F103C8T6, DS3231 and MC34063

Nixie clock is driven by STM32F103C8T6 MCU, reading data from DS3231 RTC clock. Step-up converter controlled by MC34063 produces 170V DC needed to power up display. Lamps are old japanese CD61 niexie tubes. 

Hardware is already finished, but software is being re-devolped in order to use modern HAL library and FreeRTOS. I know that any operating system is a total overkill when it comes to such a simple project but I used it to get familiar with FreeRTOS before I start more advanced projects.

![NixieClock](https://github.com/wjklimek1/STM32_NixieClock/blob/master/NixieClockFinal.jpg?raw=true)