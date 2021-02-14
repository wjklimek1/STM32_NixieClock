EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Nixie Clock Driver"
Date ""
Rev "v1.1"
Comp "Anvil Electronics"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x06_Female J1
U 1 1 5DA13791
P 1100 1300
F 0 "J1" H 992 775 50  0000 C CNN
F 1 "Multiplexer" H 992 866 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 1100 1300 50  0001 C CNN
F 3 "~" H 1100 1300 50  0001 C CNN
	1    1100 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 1800 5000 1700
Wire Wire Line
	5000 1700 5100 1700
Wire Wire Line
	5200 1700 5200 1800
Wire Wire Line
	5100 1800 5100 1700
Connection ~ 5100 1700
Wire Wire Line
	5200 1700 5300 1700
Wire Wire Line
	5300 1700 5300 1800
Connection ~ 5200 1700
Wire Wire Line
	4900 4800 4900 4850
Wire Wire Line
	4900 4850 5000 4850
Wire Wire Line
	5000 4850 5000 4800
Wire Wire Line
	5000 4850 5050 4850
Wire Wire Line
	5100 4850 5100 4800
Connection ~ 5000 4850
Wire Wire Line
	5100 4850 5200 4850
Wire Wire Line
	5200 4850 5200 4800
Connection ~ 5100 4850
$Comp
L power:+3.3V #PWR08
U 1 1 5DA1CFD0
P 5100 1600
F 0 "#PWR08" H 5100 1450 50  0001 C CNN
F 1 "+3.3V" H 5115 1773 50  0000 C CNN
F 2 "" H 5100 1600 50  0001 C CNN
F 3 "" H 5100 1600 50  0001 C CNN
	1    5100 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1700 5100 1600
$Comp
L power:GND #PWR07
U 1 1 5DA1DBED
P 5050 4950
F 0 "#PWR07" H 5050 4700 50  0001 C CNN
F 1 "GND" H 5055 4777 50  0000 C CNN
F 2 "" H 5050 4950 50  0001 C CNN
F 3 "" H 5050 4950 50  0001 C CNN
	1    5050 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4950 5050 4850
Connection ~ 5050 4850
Wire Wire Line
	5050 4850 5100 4850
$Comp
L Connector:Conn_01x04_Male J6
U 1 1 5DA1F14D
P 10200 5650
F 0 "J6" H 10308 5931 50  0000 C CNN
F 1 "SWD" H 10308 5840 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 10200 5650 50  0001 C CNN
F 3 "~" H 10200 5650 50  0001 C CNN
	1    10200 5650
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR011
U 1 1 5DA205F6
P 8650 950
F 0 "#PWR011" H 8650 800 50  0001 C CNN
F 1 "+12V" V 8665 1078 50  0000 L CNN
F 2 "" H 8650 950 50  0001 C CNN
F 3 "" H 8650 950 50  0001 C CNN
	1    8650 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5DA213FF
P 9000 1250
F 0 "C9" H 9092 1296 50  0000 L CNN
F 1 "100n" H 9092 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 9000 1250 50  0001 C CNN
F 3 "~" H 9000 1250 50  0001 C CNN
	1    9000 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5DA21937
P 9950 1550
F 0 "#PWR015" H 9950 1300 50  0001 C CNN
F 1 "GND" V 9955 1422 50  0000 R CNN
F 2 "" H 9950 1550 50  0001 C CNN
F 3 "" H 9950 1550 50  0001 C CNN
	1    9950 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 1050 9000 1150
Wire Wire Line
	9000 1350 9000 1450
$Comp
L Device:C_Small C10
U 1 1 5DA22C8C
P 9350 1250
F 0 "C10" H 9442 1296 50  0000 L CNN
F 1 "6,8u" H 9442 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 9350 1250 50  0001 C CNN
F 3 "~" H 9350 1250 50  0001 C CNN
	1    9350 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1050 9350 1150
Wire Wire Line
	9350 1350 9350 1450
Wire Wire Line
	9000 1050 9350 1050
Connection ~ 9000 1050
Wire Wire Line
	9000 1450 9350 1450
$Comp
L Regulator_Linear:AMS1117-3.3 U4
U 1 1 5DA23F93
P 9950 1050
F 0 "U4" H 9950 1292 50  0000 C CNN
F 1 "AMS1117-3.3" H 9950 1201 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 9950 1250 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 10050 800 50  0001 C CNN
	1    9950 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1050 9650 1050
Connection ~ 9350 1050
Wire Wire Line
	9350 1450 9950 1450
Wire Wire Line
	9950 1450 9950 1350
Connection ~ 9350 1450
$Comp
L Device:C_Small C12
U 1 1 5DA26DDF
P 10500 1250
F 0 "C12" H 10592 1296 50  0000 L CNN
F 1 "6,8u" H 10592 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 10500 1250 50  0001 C CNN
F 3 "~" H 10500 1250 50  0001 C CNN
	1    10500 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1050 10500 1050
Wire Wire Line
	10500 1450 9950 1450
Connection ~ 9950 1450
Wire Wire Line
	10500 1450 10500 1350
Wire Wire Line
	10500 1150 10500 1050
$Comp
L power:+3.3V #PWR019
U 1 1 5DA29E16
P 10650 1050
F 0 "#PWR019" H 10650 900 50  0001 C CNN
F 1 "+3.3V" V 10665 1178 50  0000 L CNN
F 2 "" H 10650 1050 50  0001 C CNN
F 3 "" H 10650 1050 50  0001 C CNN
	1    10650 1050
	0    1    1    0   
$EndComp
Wire Wire Line
	10500 1050 10650 1050
Connection ~ 10500 1050
$Comp
L power:+3.3V #PWR016
U 1 1 5DA2B32F
P 9950 5400
F 0 "#PWR016" H 9950 5250 50  0001 C CNN
F 1 "+3.3V" H 9965 5573 50  0000 C CNN
F 2 "" H 9950 5400 50  0001 C CNN
F 3 "" H 9950 5400 50  0001 C CNN
	1    9950 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 5450 9950 5450
Wire Wire Line
	9950 5450 9950 5400
$Comp
L power:GND #PWR017
U 1 1 5DA2E487
P 9950 5800
F 0 "#PWR017" H 9950 5550 50  0001 C CNN
F 1 "GND" H 9955 5627 50  0000 C CNN
F 2 "" H 9950 5800 50  0001 C CNN
F 3 "" H 9950 5800 50  0001 C CNN
	1    9950 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 5750 9950 5750
Wire Wire Line
	9950 5750 9950 5800
Text Label 10000 5650 2    50   ~ 0
SWCLK
$Comp
L Diode:1N4148 D3
U 1 1 5DA3129B
P 9450 4150
F 0 "D3" H 9450 3934 50  0000 C CNN
F 1 "1N4148" H 9450 4025 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9450 3975 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9450 4150 50  0001 C CNN
	1    9450 4150
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C11
U 1 1 5DA349F3
P 10100 4450
F 0 "C11" H 10218 4496 50  0000 L CNN
F 1 "Gold Cap 0.22F" H 10218 4405 50  0000 L CNN
F 2 "WK_lib:GOLD_CAP" H 10138 4300 50  0001 C CNN
F 3 "~" H 10100 4450 50  0001 C CNN
	1    10100 4450
	1    0    0    -1  
$EndComp
$Comp
L Timer_RTC:DS3231M U3
U 1 1 5DA360A3
P 9800 2950
F 0 "U3" H 10050 3500 50  0000 C CNN
F 1 "DS3231M" H 10050 3400 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 9800 2350 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS3231.pdf" H 10070 3000 50  0001 C CNN
	1    9800 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1800 4900 1700
Wire Wire Line
	4900 1700 5000 1700
Connection ~ 5000 1700
Text Label 9800 2550 1    50   ~ 0
VBAT
$Comp
L power:GND #PWR014
U 1 1 5DA39A41
P 9800 3450
F 0 "#PWR014" H 9800 3200 50  0001 C CNN
F 1 "GND" H 9805 3277 50  0000 C CNN
F 2 "" H 9800 3450 50  0001 C CNN
F 3 "" H 9800 3450 50  0001 C CNN
	1    9800 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR013
U 1 1 5DA3A0A9
P 9700 2250
F 0 "#PWR013" H 9700 2100 50  0001 C CNN
F 1 "+3.3V" H 9715 2423 50  0000 C CNN
F 2 "" H 9700 2250 50  0001 C CNN
F 3 "" H 9700 2250 50  0001 C CNN
	1    9700 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 2550 9700 2300
Wire Wire Line
	9800 3350 9800 3450
Text Label 8900 2750 2    50   ~ 0
SCL
Text Label 8900 2850 2    50   ~ 0
SDA
$Comp
L Device:R_Small R20
U 1 1 5DA4003A
P 9200 2450
F 0 "R20" H 9259 2496 50  0000 L CNN
F 1 "6k8" H 9259 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 9200 2450 50  0001 C CNN
F 3 "~" H 9200 2450 50  0001 C CNN
	1    9200 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R19
U 1 1 5DA4121B
P 9000 2450
F 0 "R19" H 8800 2500 50  0000 L CNN
F 1 "6k8" H 8800 2400 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 9000 2450 50  0001 C CNN
F 3 "~" H 9000 2450 50  0001 C CNN
	1    9000 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2850 9200 2850
Wire Wire Line
	9200 2350 9200 2300
Wire Wire Line
	9200 2300 9700 2300
Wire Wire Line
	9700 2250 9700 2300
Connection ~ 9700 2300
Wire Wire Line
	9200 2300 9000 2300
Wire Wire Line
	9000 2300 9000 2350
Connection ~ 9200 2300
Wire Wire Line
	9000 2550 9000 2750
Wire Wire Line
	8900 2750 9000 2750
Connection ~ 9000 2750
$Comp
L Device:R_Small R22
U 1 1 5DA49FCE
P 10450 2450
F 0 "R22" H 10391 2404 50  0000 R CNN
F 1 "6k8" H 10391 2495 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 10450 2450 50  0001 C CNN
F 3 "~" H 10450 2450 50  0001 C CNN
	1    10450 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	10450 2350 10450 2300
Wire Wire Line
	10450 2300 9700 2300
Wire Wire Line
	10300 2750 10450 2750
Wire Wire Line
	10450 2750 10450 2550
$Comp
L Device:R_Small R23
U 1 1 5DA50AC4
P 10700 2450
F 0 "R23" H 10759 2496 50  0000 L CNN
F 1 "6k8" H 10759 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 10700 2450 50  0001 C CNN
F 3 "~" H 10700 2450 50  0001 C CNN
	1    10700 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 2300 10700 2300
Wire Wire Line
	10700 2300 10700 2350
Connection ~ 10450 2300
Wire Wire Line
	10300 3050 10700 3050
Wire Wire Line
	10700 3050 10700 2750
Wire Wire Line
	10700 2750 10800 2750
Connection ~ 10700 2750
Wire Wire Line
	10700 2750 10700 2550
Text Label 10800 2750 0    50   ~ 0
SQW
NoConn ~ 9300 3150
Wire Wire Line
	9950 1550 9950 1450
$Comp
L Device:R_Small R21
U 1 1 5DA5CD5B
P 9850 4150
F 0 "R21" V 9950 4100 50  0000 L CNN
F 1 "100R" V 9750 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 9850 4150 50  0001 C CNN
F 3 "~" H 9850 4150 50  0001 C CNN
	1    9850 4150
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR012
U 1 1 5DA5EAFB
P 9200 4150
F 0 "#PWR012" H 9200 4000 50  0001 C CNN
F 1 "+3.3V" V 9215 4278 50  0000 L CNN
F 2 "" H 9200 4150 50  0001 C CNN
F 3 "" H 9200 4150 50  0001 C CNN
	1    9200 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9200 4150 9300 4150
Wire Wire Line
	9600 4150 9750 4150
Wire Wire Line
	9950 4150 10100 4150
Wire Wire Line
	10100 4150 10100 4300
Wire Wire Line
	10100 4150 10550 4150
Connection ~ 10100 4150
Wire Wire Line
	10100 4600 10100 4650
$Comp
L power:GND #PWR018
U 1 1 5DA7011F
P 10100 4650
F 0 "#PWR018" H 10100 4400 50  0001 C CNN
F 1 "GND" H 10105 4477 50  0000 C CNN
F 2 "" H 10100 4650 50  0001 C CNN
F 3 "" H 10100 4650 50  0001 C CNN
	1    10100 4650
	1    0    0    -1  
$EndComp
Text Label 10550 4150 0    50   ~ 0
VBAT
Text Label 10000 5550 2    50   ~ 0
SWDIO
Wire Wire Line
	5100 1700 5200 1700
$Comp
L Transistor_BJT:MPSA42 Q10
U 1 1 5DA8EB36
P 2650 7150
F 0 "Q10" V 2650 7400 50  0000 C CNN
F 1 "MPSA42" V 2550 7400 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2850 7075 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA42-D.PDF" H 2650 7150 50  0001 L CNN
	1    2650 7150
	0    -1   1    0   
$EndComp
$Comp
L Transistor_BJT:MPSA42 Q9
U 1 1 5DA918D2
P 2650 6700
F 0 "Q9" V 2650 6950 50  0000 C CNN
F 1 "MPSA42" V 2550 6950 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2850 6625 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA42-D.PDF" H 2650 6700 50  0001 L CNN
	1    2650 6700
	0    -1   1    0   
$EndComp
$Comp
L Transistor_BJT:MPSA42 Q8
U 1 1 5DA941D6
P 2650 6250
F 0 "Q8" V 2650 6500 50  0000 C CNN
F 1 "MPSA42" V 2550 6500 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2850 6175 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA42-D.PDF" H 2650 6250 50  0001 L CNN
	1    2650 6250
	0    -1   1    0   
$EndComp
$Comp
L Transistor_BJT:MPSA42 Q7
U 1 1 5DA941DC
P 2650 5800
F 0 "Q7" V 2650 6050 50  0000 C CNN
F 1 "MPSA42" V 2550 6050 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2850 5725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA42-D.PDF" H 2650 5800 50  0001 L CNN
	1    2650 5800
	0    -1   1    0   
$EndComp
$Comp
L Transistor_BJT:MPSA42 Q6
U 1 1 5DA96E09
P 2650 5350
F 0 "Q6" V 2650 5600 50  0000 C CNN
F 1 "MPSA42" V 2550 5600 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2850 5275 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA42-D.PDF" H 2650 5350 50  0001 L CNN
	1    2650 5350
	0    -1   1    0   
$EndComp
$Comp
L Transistor_BJT:MPSA42 Q5
U 1 1 5DA96E0F
P 2650 4900
F 0 "Q5" V 2650 5150 50  0000 C CNN
F 1 "MPSA42" V 2550 5150 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2850 4825 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA42-D.PDF" H 2650 4900 50  0001 L CNN
	1    2650 4900
	0    -1   1    0   
$EndComp
$Comp
L Transistor_BJT:MPSA42 Q4
U 1 1 5DA96E15
P 2650 4450
F 0 "Q4" V 2650 4700 50  0000 C CNN
F 1 "MPSA42" V 2550 4700 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2850 4375 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA42-D.PDF" H 2650 4450 50  0001 L CNN
	1    2650 4450
	0    -1   1    0   
$EndComp
$Comp
L Transistor_BJT:MPSA42 Q3
U 1 1 5DA96E1B
P 2650 4000
F 0 "Q3" V 2650 4250 50  0000 C CNN
F 1 "MPSA42" V 2550 4250 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2850 3925 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA42-D.PDF" H 2650 4000 50  0001 L CNN
	1    2650 4000
	0    -1   1    0   
$EndComp
$Comp
L Transistor_BJT:MPSA42 Q2
U 1 1 5DA9931C
P 2650 3550
F 0 "Q2" V 2650 3800 50  0000 C CNN
F 1 "MPSA42" V 2550 3800 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2850 3475 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA42-D.PDF" H 2650 3550 50  0001 L CNN
	1    2650 3550
	0    -1   1    0   
$EndComp
$Comp
L Transistor_BJT:MPSA42 Q1
U 1 1 5DA99322
P 2650 3100
F 0 "Q1" V 2650 3350 50  0000 C CNN
F 1 "MPSA42" V 2550 3350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2850 3025 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA42-D.PDF" H 2650 3100 50  0001 L CNN
	1    2650 3100
	0    -1   1    0   
$EndComp
Wire Wire Line
	1850 7250 2450 7250
Wire Wire Line
	2450 6800 2250 6800
Wire Wire Line
	2250 6800 2250 7150
Wire Wire Line
	2250 7150 1850 7150
$Comp
L Connector:Conn_01x10_Female J2
U 1 1 5DA1533B
P 1650 6750
F 0 "J2" H 1542 6025 50  0000 C CNN
F 1 "cathode_drivers" H 1542 6116 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x10_P2.54mm_Vertical" H 1650 6750 50  0001 C CNN
F 3 "~" H 1650 6750 50  0001 C CNN
	1    1650 6750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2200 7050 2200 6350
Wire Wire Line
	2200 6350 2450 6350
Wire Wire Line
	1850 7050 2200 7050
Wire Wire Line
	1850 6950 2150 6950
Wire Wire Line
	2150 6950 2150 5900
Wire Wire Line
	2150 5900 2450 5900
Wire Wire Line
	1850 6850 2100 6850
Wire Wire Line
	2100 6850 2100 5450
Wire Wire Line
	2100 5450 2450 5450
Wire Wire Line
	2450 5000 2050 5000
Wire Wire Line
	2050 5000 2050 6750
Wire Wire Line
	2050 6750 1850 6750
Wire Wire Line
	1850 6650 2000 6650
Wire Wire Line
	2000 6650 2000 4550
Wire Wire Line
	2000 4550 2450 4550
Wire Wire Line
	2450 4100 1950 4100
Wire Wire Line
	1950 4100 1950 6550
Wire Wire Line
	1950 6550 1850 6550
Wire Wire Line
	1850 6450 1900 6450
Wire Wire Line
	1900 6450 1900 3650
Wire Wire Line
	1900 3650 2450 3650
Wire Wire Line
	2450 3200 1850 3200
Wire Wire Line
	1850 3200 1850 6350
Wire Wire Line
	2850 7250 2900 7250
Wire Wire Line
	2900 7250 2900 6800
Wire Wire Line
	2900 6800 2850 6800
Wire Wire Line
	2900 6800 2900 6350
Wire Wire Line
	2900 6350 2850 6350
Connection ~ 2900 6800
Wire Wire Line
	2900 6350 2900 5900
Wire Wire Line
	2900 5900 2850 5900
Connection ~ 2900 6350
Wire Wire Line
	2900 5900 2900 5450
Wire Wire Line
	2900 5450 2850 5450
Connection ~ 2900 5900
Wire Wire Line
	2900 5450 2900 5000
Wire Wire Line
	2900 5000 2850 5000
Connection ~ 2900 5450
Wire Wire Line
	2900 5000 2900 4550
Wire Wire Line
	2900 4550 2850 4550
Connection ~ 2900 5000
Wire Wire Line
	2900 4550 2900 4100
Wire Wire Line
	2900 4100 2850 4100
Connection ~ 2900 4550
Wire Wire Line
	2900 4100 2900 3650
Wire Wire Line
	2900 3650 2850 3650
Connection ~ 2900 4100
Wire Wire Line
	2900 3650 2900 3200
Wire Wire Line
	2900 3200 2850 3200
Connection ~ 2900 3650
$Comp
L Device:R_Small R1
U 1 1 5DAFC200
P 3150 2850
F 0 "R1" V 3250 2800 50  0000 L CNN
F 1 "33k" V 3050 2750 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3150 2850 50  0001 C CNN
F 3 "~" H 3150 2850 50  0001 C CNN
	1    3150 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 2900 2650 2850
Wire Wire Line
	2650 2850 3050 2850
$Comp
L Device:R_Small R2
U 1 1 5DB097CA
P 3150 3300
F 0 "R2" V 3250 3250 50  0000 L CNN
F 1 "33k" V 3050 3200 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3150 3300 50  0001 C CNN
F 3 "~" H 3150 3300 50  0001 C CNN
	1    3150 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 3350 2650 3300
Wire Wire Line
	2650 3300 3050 3300
$Comp
L Device:R_Small R3
U 1 1 5DB0DD3E
P 3150 3750
F 0 "R3" V 3250 3700 50  0000 L CNN
F 1 "33k" V 3050 3650 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3150 3750 50  0001 C CNN
F 3 "~" H 3150 3750 50  0001 C CNN
	1    3150 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 3800 2650 3750
Wire Wire Line
	2650 3750 3050 3750
$Comp
L Device:R_Small R4
U 1 1 5DB12743
P 3150 4200
F 0 "R4" V 3250 4150 50  0000 L CNN
F 1 "33k" V 3050 4100 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3150 4200 50  0001 C CNN
F 3 "~" H 3150 4200 50  0001 C CNN
	1    3150 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 4250 2650 4200
Wire Wire Line
	2650 4200 3050 4200
$Comp
L Device:R_Small R5
U 1 1 5DB1C11C
P 3150 4650
F 0 "R5" V 3250 4600 50  0000 L CNN
F 1 "33k" V 3050 4550 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3150 4650 50  0001 C CNN
F 3 "~" H 3150 4650 50  0001 C CNN
	1    3150 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 4700 2650 4650
Wire Wire Line
	2650 4650 3050 4650
$Comp
L Device:R_Small R6
U 1 1 5DB20CE5
P 3150 5100
F 0 "R6" V 3250 5050 50  0000 L CNN
F 1 "33k" V 3050 5000 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3150 5100 50  0001 C CNN
F 3 "~" H 3150 5100 50  0001 C CNN
	1    3150 5100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 5150 2650 5100
Wire Wire Line
	2650 5100 3050 5100
$Comp
L Device:R_Small R7
U 1 1 5DB2B0D6
P 3150 5550
F 0 "R7" V 3250 5500 50  0000 L CNN
F 1 "33k" V 3050 5450 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3150 5550 50  0001 C CNN
F 3 "~" H 3150 5550 50  0001 C CNN
	1    3150 5550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 5600 2650 5550
Wire Wire Line
	2650 5550 3050 5550
$Comp
L Device:R_Small R8
U 1 1 5DB303B7
P 3150 6000
F 0 "R8" V 3250 5950 50  0000 L CNN
F 1 "33k" V 3050 5900 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3150 6000 50  0001 C CNN
F 3 "~" H 3150 6000 50  0001 C CNN
	1    3150 6000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 6050 2650 6000
Wire Wire Line
	2650 6000 3050 6000
$Comp
L Device:R_Small R9
U 1 1 5DB358E1
P 3150 6450
F 0 "R9" V 3250 6400 50  0000 L CNN
F 1 "33k" V 3050 6350 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3150 6450 50  0001 C CNN
F 3 "~" H 3150 6450 50  0001 C CNN
	1    3150 6450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 6500 2650 6450
Wire Wire Line
	2650 6450 3050 6450
$Comp
L Device:R_Small R10
U 1 1 5DB3AFBE
P 3150 6900
F 0 "R10" V 3250 6850 50  0000 L CNN
F 1 "33k" V 3050 6800 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3150 6900 50  0001 C CNN
F 3 "~" H 3150 6900 50  0001 C CNN
	1    3150 6900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 6950 2650 6900
Wire Wire Line
	2650 6900 3050 6900
Wire Wire Line
	3250 2850 3400 2850
Wire Wire Line
	3400 2850 3400 3200
Wire Wire Line
	3250 3750 3400 3750
Wire Wire Line
	3400 3400 3400 3750
Wire Wire Line
	3500 3500 3500 4200
Wire Wire Line
	3500 4200 3250 4200
Wire Wire Line
	3250 4650 3600 4650
Wire Wire Line
	3600 4650 3600 3600
Wire Wire Line
	4400 3600 3600 3600
Wire Wire Line
	4400 3700 3700 3700
Wire Wire Line
	3700 3700 3700 5100
Wire Wire Line
	3700 5100 3250 5100
Wire Wire Line
	3250 5550 3800 5550
Wire Wire Line
	4400 3800 3800 3800
Wire Wire Line
	3900 3900 3900 6000
Wire Wire Line
	3900 6000 3250 6000
Wire Wire Line
	4000 4000 4000 6450
Wire Wire Line
	4000 6450 3250 6450
Wire Wire Line
	3250 6900 4100 6900
Wire Wire Line
	2900 7250 2900 7350
Connection ~ 2900 7250
$Comp
L power:GND #PWR04
U 1 1 5DBFCA0F
P 2900 7350
F 0 "#PWR04" H 2900 7100 50  0001 C CNN
F 1 "GND" H 2905 7177 50  0000 C CNN
F 2 "" H 2900 7350 50  0001 C CNN
F 3 "" H 2900 7350 50  0001 C CNN
	1    2900 7350
	1    0    0    -1  
$EndComp
Text Label 5700 4400 0    50   ~ 0
SWDIO
Text Label 5700 4500 0    50   ~ 0
SWCLK
Wire Wire Line
	4100 3100 4400 3100
Text Label 4400 4100 2    50   ~ 0
SCL
Text Label 4400 4200 2    50   ~ 0
SDA
Wire Wire Line
	4400 3500 3500 3500
Wire Wire Line
	4000 4000 4400 4000
Wire Wire Line
	4400 3400 3400 3400
Wire Wire Line
	4400 3300 3250 3300
Wire Wire Line
	3400 3200 4400 3200
Wire Wire Line
	3800 5550 3800 3800
Wire Wire Line
	4100 3100 4100 6900
Wire Wire Line
	4400 3900 3900 3900
$Comp
L MCU_ST_STM32F1:STM32F103C8Tx U2
U 1 1 5DA0ED81
P 5100 3300
F 0 "U2" H 5100 4000 50  0000 C CNN
F 1 "STM32F103C8Tx" H 5150 3900 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 4500 1900 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 5100 3300 50  0001 C CNN
	1    5100 3300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push M+1
U 1 1 5DC2AD1E
P 8000 3200
F 0 "M+1" H 8000 3485 50  0000 C CNN
F 1 "M+" H 8000 3394 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 8000 3400 50  0001 C CNN
F 3 "~" H 8000 3400 50  0001 C CNN
	1    8000 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack J5
U 1 1 5DC2CB8F
P 8100 1150
F 0 "J5" H 8157 1475 50  0000 C CNN
F 1 "Barrel_Jack" H 8157 1384 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Wuerth_6941xx301002" H 8150 1110 50  0001 C CNN
F 3 "~" H 8150 1110 50  0001 C CNN
	1    8100 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 950  8650 1050
Wire Wire Line
	8650 1050 9000 1050
Wire Wire Line
	8650 1050 8400 1050
Connection ~ 8650 1050
Wire Wire Line
	8400 1250 8650 1250
Wire Wire Line
	8650 1250 8650 1450
Wire Wire Line
	8650 1450 9000 1450
Connection ~ 9000 1450
$Comp
L Switch:SW_Push M-1
U 1 1 5DCB1E7E
P 8000 2800
F 0 "M-1" H 8000 3085 50  0000 C CNN
F 1 "M-" H 8000 2994 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 8000 3000 50  0001 C CNN
F 3 "~" H 8000 3000 50  0001 C CNN
	1    8000 2800
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push H-1
U 1 1 5DCC29F2
P 8000 3600
F 0 "H-1" H 8000 3885 50  0000 C CNN
F 1 "H-" H 8000 3794 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 8000 3800 50  0001 C CNN
F 3 "~" H 8000 3800 50  0001 C CNN
	1    8000 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR010
U 1 1 5DD3BAAB
P 8300 2200
F 0 "#PWR010" H 8300 2050 50  0001 C CNN
F 1 "+3.3V" H 8315 2373 50  0000 C CNN
F 2 "" H 8300 2200 50  0001 C CNN
F 3 "" H 8300 2200 50  0001 C CNN
	1    8300 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2200 8300 2350
Wire Wire Line
	8300 4000 8200 4000
Wire Wire Line
	8200 3600 8300 3600
Connection ~ 8300 3600
Wire Wire Line
	8300 3600 8300 4000
Wire Wire Line
	8200 3200 8300 3200
Connection ~ 8300 3200
Wire Wire Line
	8300 3200 8300 3600
Wire Wire Line
	8200 2800 8300 2800
Wire Wire Line
	8300 2800 8300 3200
$Comp
L Switch:SW_Push H+1
U 1 1 5DCBA3B3
P 8000 4000
F 0 "H+1" H 8000 4285 50  0000 C CNN
F 1 "H+" H 8000 4194 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 8000 4200 50  0001 C CNN
F 3 "~" H 8000 4200 50  0001 C CNN
	1    8000 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5DE4ED58
P 7600 4150
F 0 "C7" V 7700 4100 50  0000 L CNN
F 1 "100n" V 7450 4050 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7600 4150 50  0001 C CNN
F 3 "~" H 7600 4150 50  0001 C CNN
	1    7600 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 4150 7500 4150
Wire Wire Line
	7700 4150 7800 4150
$Comp
L Device:C_Small C6
U 1 1 5DE586B0
P 7600 3750
F 0 "C6" V 7700 3700 50  0000 L CNN
F 1 "100n" V 7450 3650 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7600 3750 50  0001 C CNN
F 3 "~" H 7600 3750 50  0001 C CNN
	1    7600 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 3750 7500 3750
Wire Wire Line
	7700 3750 7800 3750
$Comp
L Device:C_Small C5
U 1 1 5DE61D61
P 7600 3350
F 0 "C5" V 7700 3300 50  0000 L CNN
F 1 "100n" V 7450 3250 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7600 3350 50  0001 C CNN
F 3 "~" H 7600 3350 50  0001 C CNN
	1    7600 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 3350 7500 3350
Wire Wire Line
	7700 3350 7800 3350
$Comp
L Device:C_Small C4
U 1 1 5DE6B645
P 7600 2950
F 0 "C4" V 7700 2900 50  0000 L CNN
F 1 "100n" V 7450 2850 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7600 2950 50  0001 C CNN
F 3 "~" H 7600 2950 50  0001 C CNN
	1    7600 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 2950 7500 2950
Wire Wire Line
	7700 2950 7800 2950
Wire Wire Line
	7800 2800 7800 2950
Wire Wire Line
	7800 3200 7800 3350
Wire Wire Line
	7800 3600 7800 3750
Wire Wire Line
	7800 4000 7800 4150
Wire Wire Line
	7400 2950 7400 3350
Connection ~ 7400 3350
Wire Wire Line
	7400 3350 7400 3750
Connection ~ 7400 3750
Wire Wire Line
	7400 3750 7400 4150
$Comp
L power:GND #PWR09
U 1 1 5DEB3A9D
P 7400 4800
F 0 "#PWR09" H 7400 4550 50  0001 C CNN
F 1 "GND" H 7405 4627 50  0000 C CNN
F 2 "" H 7400 4800 50  0001 C CNN
F 3 "" H 7400 4800 50  0001 C CNN
	1    7400 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 2800 7300 2800
Connection ~ 7800 2800
Wire Wire Line
	7800 3200 7300 3200
Connection ~ 7800 3200
Wire Wire Line
	7800 3600 7300 3600
Connection ~ 7800 3600
Connection ~ 7800 4000
Wire Wire Line
	7300 4000 7800 4000
Text Label 7300 2800 2    50   ~ 0
M-
Text Label 7300 3200 2    50   ~ 0
M+
Text Label 7300 3600 2    50   ~ 0
H-
Text Label 7300 4000 2    50   ~ 0
H+
Text Label 5700 3700 0    50   ~ 0
M-
Text Label 5700 3800 0    50   ~ 0
M+
Text Label 5700 3900 0    50   ~ 0
H-
Text Label 5700 4000 0    50   ~ 0
H+
Text Label 1300 1400 0    50   ~ 0
L1
Text Label 1300 1300 0    50   ~ 0
L2
Text Label 1300 1200 0    50   ~ 0
L3
Text Label 1300 1100 0    50   ~ 0
L4
Text Label 1300 1000 0    50   ~ 0
L5
$Comp
L power:GND #PWR01
U 1 1 5DEFE4AE
P 1350 1550
F 0 "#PWR01" H 1350 1300 50  0001 C CNN
F 1 "GND" H 1355 1377 50  0000 C CNN
F 2 "" H 1350 1550 50  0001 C CNN
F 3 "" H 1350 1550 50  0001 C CNN
	1    1350 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1500 1350 1500
Wire Wire Line
	1350 1500 1350 1550
Text Label 5700 3200 0    50   ~ 0
L1
Text Label 5700 3300 0    50   ~ 0
L2
Text Label 5700 3400 0    50   ~ 0
L3
Text Label 5700 3500 0    50   ~ 0
L4
Text Label 5700 3600 0    50   ~ 0
L5
$Comp
L power:+12V #PWR02
U 1 1 5DA04FCE
P 1600 9400
F 0 "#PWR02" H 1600 9250 50  0001 C CNN
F 1 "+12V" H 1615 9573 50  0000 C CNN
F 2 "" H 1600 9400 50  0001 C CNN
F 3 "" H 1600 9400 50  0001 C CNN
	1    1600 9400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5DA05C6B
P 1600 9800
F 0 "#PWR03" H 1600 9550 50  0001 C CNN
F 1 "GND" H 1605 9627 50  0000 C CNN
F 2 "" H 1600 9800 50  0001 C CNN
F 3 "" H 1600 9800 50  0001 C CNN
	1    1600 9800
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C1
U 1 1 5DA06A64
P 1950 9600
F 0 "C1" H 2038 9646 50  0000 L CNN
F 1 "470u" H 2038 9555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 1950 9600 50  0001 C CNN
F 3 "~" H 1950 9600 50  0001 C CNN
	1    1950 9600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R12
U 1 1 5DA08162
P 3250 8550
F 0 "R12" V 3054 8550 50  0000 C CNN
F 1 "1R" V 3145 8550 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3250 8550 50  0001 C CNN
F 3 "~" H 3250 8550 50  0001 C CNN
	1    3250 8550
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5DA099CF
P 3250 8250
F 0 "R11" V 3054 8250 50  0000 C CNN
F 1 "1R" V 3145 8250 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3250 8250 50  0001 C CNN
F 3 "~" H 3250 8250 50  0001 C CNN
	1    3250 8250
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 8250 3100 8250
Wire Wire Line
	3100 8250 3100 8400
Wire Wire Line
	3100 8550 3150 8550
Wire Wire Line
	3350 8250 3400 8250
Wire Wire Line
	3400 8250 3400 8400
Wire Wire Line
	3400 8550 3350 8550
Wire Wire Line
	1600 9400 1600 9450
Wire Wire Line
	1600 9450 1950 9450
Wire Wire Line
	1950 9450 1950 9500
Wire Wire Line
	1600 9800 1600 9750
Wire Wire Line
	1600 9750 1950 9750
Wire Wire Line
	1950 9750 1950 9700
Connection ~ 3100 8400
Wire Wire Line
	3100 8400 3100 8550
Connection ~ 1950 9450
$Comp
L Device:C_Small C2
U 1 1 5DA7957E
P 2650 9600
F 0 "C2" H 2742 9646 50  0000 L CNN
F 1 "1n" H 2742 9555 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 2650 9600 50  0001 C CNN
F 3 "~" H 2650 9600 50  0001 C CNN
	1    2650 9600
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Switching:MC34063AP U1
U 1 1 5DA7A570
P 3250 9150
F 0 "U1" H 3250 9617 50  0000 C CNN
F 1 "MC34063AP" H 3250 9526 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 3300 8700 50  0001 L CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MC34063A-D.PDF" H 3750 9050 50  0001 C CNN
	1    3250 9150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 8400 3100 8400
Wire Wire Line
	1950 8400 1950 8950
Wire Wire Line
	2850 8950 1950 8950
Connection ~ 1950 8950
Wire Wire Line
	1950 8950 1950 9450
Wire Wire Line
	2650 9500 2650 9350
Wire Wire Line
	2650 9350 2850 9350
Wire Wire Line
	1950 9750 2650 9750
Wire Wire Line
	2650 9750 2650 9700
Connection ~ 1950 9750
Wire Wire Line
	2650 9750 3250 9750
Wire Wire Line
	3250 9750 3250 9650
Connection ~ 2650 9750
$Comp
L Device:R_Small R13
U 1 1 5DAE2A8F
P 3850 8900
F 0 "R13" H 3750 8850 50  0000 C CNN
F 1 "180R" H 3700 8950 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3850 8900 50  0001 C CNN
F 3 "~" H 3850 8900 50  0001 C CNN
	1    3850 8900
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 8400 3750 8400
Wire Wire Line
	3750 8400 3750 8700
Wire Wire Line
	3750 8950 3650 8950
Connection ~ 3400 8400
Wire Wire Line
	3400 8400 3400 8550
Wire Wire Line
	3650 9050 3850 9050
Wire Wire Line
	3850 9050 3850 9000
Wire Wire Line
	3850 8800 3850 8700
Wire Wire Line
	3850 8700 3750 8700
Connection ~ 3750 8700
Wire Wire Line
	3750 8700 3750 8950
Wire Wire Line
	3650 9150 4200 9150
Wire Wire Line
	4200 9150 4200 8700
Wire Wire Line
	4200 8700 3850 8700
Connection ~ 3850 8700
$Comp
L Device:L L1
U 1 1 5DB3028F
P 4800 8700
F 0 "L1" V 4990 8700 50  0000 C CNN
F 1 "L" V 4899 8700 50  0000 C CNN
F 2 "Inductor_THT:L_Radial_D10.0mm_P5.00mm_Fastron_07P" H 4800 8700 50  0001 C CNN
F 3 "~" H 4800 8700 50  0001 C CNN
	1    4800 8700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 8700 4650 8700
Connection ~ 4200 8700
$Comp
L Transistor_FET:IRF740 Q12
U 1 1 5DB41AE1
P 5000 9000
F 0 "Q12" H 5206 9046 50  0000 L CNN
F 1 "IRF740" H 5206 8955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 5250 8925 50  0001 L CIN
F 3 "http://www.vishay.com/docs/91054/91054.pdf" H 5000 9000 50  0001 L CNN
	1    5000 9000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 8700 5100 8700
Wire Wire Line
	5100 8700 5100 8800
Wire Wire Line
	3250 9750 4300 9750
Wire Wire Line
	5100 9750 5100 9200
Connection ~ 3250 9750
$Comp
L Transistor_BJT:BC557 Q11
U 1 1 5DB650FD
P 4650 9250
F 0 "Q11" H 4841 9296 50  0000 L CNN
F 1 "BC557" H 4841 9205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4850 9175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 4650 9250 50  0001 L CNN
	1    4650 9250
	1    0    0    1   
$EndComp
$Comp
L Diode:1N4148 D1
U 1 1 5DB6659C
P 4550 9000
F 0 "D1" H 4550 8784 50  0000 C CNN
F 1 "1N4148" H 4550 8875 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4550 8825 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4550 9000 50  0001 C CNN
	1    4550 9000
	-1   0    0    1   
$EndComp
Wire Wire Line
	4700 9000 4750 9000
Wire Wire Line
	4750 9050 4750 9000
Connection ~ 4750 9000
Wire Wire Line
	4750 9000 4800 9000
Wire Wire Line
	4400 9000 4300 9000
Wire Wire Line
	4300 9000 4300 9250
Wire Wire Line
	4300 9250 4450 9250
$Comp
L Device:R_Small R15
U 1 1 5DB9AEC6
P 4300 9500
F 0 "R15" H 4200 9450 50  0000 C CNN
F 1 "1k" H 4200 9550 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 4300 9500 50  0001 C CNN
F 3 "~" H 4300 9500 50  0001 C CNN
	1    4300 9500
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 9600 4300 9750
Connection ~ 4300 9750
Wire Wire Line
	4300 9750 4750 9750
Wire Wire Line
	4300 9400 4300 9350
Connection ~ 4300 9250
Wire Wire Line
	3650 9350 4300 9350
Connection ~ 4300 9350
Wire Wire Line
	4300 9350 4300 9250
$Comp
L Diode:1N4007 D2
U 1 1 5DC06DAC
P 5600 8700
F 0 "D2" H 5600 8484 50  0000 C CNN
F 1 "1N4007" H 5600 8575 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5600 8525 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 5600 8700 50  0001 C CNN
	1    5600 8700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 8700 5450 8700
Connection ~ 5100 8700
Wire Wire Line
	5750 8700 6050 8700
Wire Wire Line
	6050 8700 6050 8800
Wire Wire Line
	6050 9000 6050 9150
Wire Wire Line
	6050 9500 6050 9750
Wire Wire Line
	6050 9750 5100 9750
Connection ~ 5100 9750
Wire Wire Line
	3650 9450 4000 9450
Wire Wire Line
	4000 9450 4000 9900
Wire Wire Line
	4000 9900 5700 9900
Wire Wire Line
	5700 9900 5700 9150
Wire Wire Line
	5700 9150 6050 9150
Connection ~ 6050 9150
Wire Wire Line
	6050 9150 6050 9300
$Comp
L Device:CP_Small C3
U 1 1 5DC66517
P 6800 9150
F 0 "C3" H 6888 9196 50  0000 L CNN
F 1 "470u" H 6888 9105 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x10.5" H 6800 9150 50  0001 C CNN
F 3 "~" H 6800 9150 50  0001 C CNN
	1    6800 9150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 8700 6800 8700
Wire Wire Line
	6800 8700 6800 9050
Connection ~ 6050 8700
Wire Wire Line
	6050 9750 6800 9750
Wire Wire Line
	6800 9750 6800 9250
Connection ~ 6050 9750
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5DCA2A98
P 7500 9100
F 0 "J4" H 7580 9092 50  0000 L CNN
F 1 "HV_OUT" H 7580 9001 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 7500 9100 50  0001 C CNN
F 3 "~" H 7500 9100 50  0001 C CNN
	1    7500 9100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 8700 7250 8700
Wire Wire Line
	7250 8700 7250 9100
Wire Wire Line
	7250 9100 7300 9100
Connection ~ 6800 8700
Wire Wire Line
	7300 9200 7250 9200
Wire Wire Line
	7250 9200 7250 9750
Wire Wire Line
	7250 9750 6800 9750
Connection ~ 6800 9750
Wire Wire Line
	4750 9450 4750 9750
Connection ~ 4750 9750
Wire Wire Line
	4750 9750 5100 9750
Wire Wire Line
	8300 4400 8200 4400
Wire Wire Line
	8300 4000 8300 4400
$Comp
L Switch:SW_Push RESET1
U 1 1 5DA26C1F
P 8000 4400
F 0 "RESET1" H 8000 4685 50  0000 C CNN
F 1 "RESET" H 8000 4594 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 8000 4600 50  0001 C CNN
F 3 "~" H 8000 4600 50  0001 C CNN
	1    8000 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5DA26C25
P 7600 4550
F 0 "C8" V 7700 4500 50  0000 L CNN
F 1 "100n" V 7450 4450 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7600 4550 50  0001 C CNN
F 3 "~" H 7600 4550 50  0001 C CNN
	1    7600 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 4550 7500 4550
Wire Wire Line
	7700 4550 7800 4550
Wire Wire Line
	7800 4400 7800 4550
Wire Wire Line
	7400 4550 7400 4800
Connection ~ 7800 4400
Text Label 7300 4400 2    50   ~ 0
RESET
Connection ~ 8300 4000
Wire Wire Line
	7300 4400 7800 4400
Wire Wire Line
	7400 4150 7400 4550
Connection ~ 7400 4150
Connection ~ 7400 4550
Text Label 4400 2000 2    50   ~ 0
RESET
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5DA6A9F0
P 3900 1850
F 0 "J3" V 3700 1750 50  0000 L CNN
F 1 "BOOT_0" V 3800 1650 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 3900 1850 50  0001 C CNN
F 3 "~" H 3900 1850 50  0001 C CNN
	1    3900 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 2050 3900 2200
Connection ~ 8300 2800
Wire Wire Line
	8300 2550 8300 2800
$Comp
L Device:R_Small R18
U 1 1 5DD0FEB9
P 8300 2450
F 0 "R18" H 8100 2500 50  0000 L CNN
F 1 "10k" H 8100 2400 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 8300 2450 50  0001 C CNN
F 3 "~" H 8300 2450 50  0001 C CNN
	1    8300 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2200 4150 2200
$Comp
L Device:R_Small R14
U 1 1 5DAC8133
P 4150 2350
F 0 "R14" H 3950 2400 50  0000 L CNN
F 1 "10k" H 3950 2300 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 4150 2350 50  0001 C CNN
F 3 "~" H 4150 2350 50  0001 C CNN
	1    4150 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2250 4150 2200
Connection ~ 4150 2200
Wire Wire Line
	4150 2200 4400 2200
Wire Wire Line
	4150 2450 4150 2500
Wire Wire Line
	3800 2050 3800 2500
$Comp
L power:GND #PWR06
U 1 1 5DB238C2
P 4150 2500
F 0 "#PWR06" H 4150 2250 50  0001 C CNN
F 1 "GND" H 4155 2327 50  0000 C CNN
F 2 "" H 4150 2500 50  0001 C CNN
F 3 "" H 4150 2500 50  0001 C CNN
	1    4150 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 5DB24539
P 3800 2500
F 0 "#PWR05" H 3800 2350 50  0001 C CNN
F 1 "+3.3V" H 3815 2673 50  0000 C CNN
F 2 "" H 3800 2500 50  0001 C CNN
F 3 "" H 3800 2500 50  0001 C CNN
	1    3800 2500
	-1   0    0    1   
$EndComp
NoConn ~ 4400 2400
NoConn ~ 4400 2500
NoConn ~ 4400 2800
NoConn ~ 4400 2900
NoConn ~ 4400 4300
NoConn ~ 4400 4400
NoConn ~ 4400 4500
NoConn ~ 4400 4600
NoConn ~ 5700 4600
NoConn ~ 5700 4300
NoConn ~ 5700 4200
NoConn ~ 5700 4100
Wire Wire Line
	9000 2750 9300 2750
Wire Wire Line
	9200 2550 9200 2850
Connection ~ 9200 2850
Wire Wire Line
	9200 2850 9300 2850
Text Label 5700 3100 0    50   ~ 0
SQW
$Comp
L Device:R_Small R24
U 1 1 5DAF887C
P 3300 2150
F 0 "R24" H 3100 2200 50  0000 L CNN
F 1 "10k" H 3100 2100 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3300 2150 50  0001 C CNN
F 3 "~" H 3300 2150 50  0001 C CNN
	1    3300 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 2050 3300 2000
$Comp
L power:GND #PWR0101
U 1 1 5DAF8883
P 3300 2000
F 0 "#PWR0101" H 3300 1750 50  0001 C CNN
F 1 "GND" H 3305 1827 50  0000 C CNN
F 2 "" H 3300 2000 50  0001 C CNN
F 3 "" H 3300 2000 50  0001 C CNN
	1    3300 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 2700 4300 2700
Wire Wire Line
	4300 2700 4300 2750
Wire Wire Line
	4300 2750 3300 2750
Wire Wire Line
	3300 2750 3300 2600
$Comp
L Device:LED D4
U 1 1 5DB29434
P 3300 2450
F 0 "D4" V 3339 2333 50  0000 R CNN
F 1 "LED" V 3248 2333 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 3300 2450 50  0001 C CNN
F 3 "~" H 3300 2450 50  0001 C CNN
	1    3300 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 2300 3300 2250
$Comp
L Device:R_Small R17
U 1 1 5DBF41C0
P 6050 9400
F 0 "R17" H 5900 9350 50  0000 C CNN
F 1 "4.7k" H 5900 9450 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 6050 9400 50  0001 C CNN
F 3 "~" H 6050 9400 50  0001 C CNN
	1    6050 9400
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R16
U 1 1 5DBE2141
P 6050 8900
F 0 "R16" H 5900 8850 50  0000 C CNN
F 1 "680k" H 5900 8950 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 6050 8900 50  0001 C CNN
F 3 "~" H 6050 8900 50  0001 C CNN
	1    6050 8900
	-1   0    0    1   
$EndComp
$EndSCHEMATC
