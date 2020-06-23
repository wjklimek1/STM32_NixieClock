EESchema Schematic File Version 4
LIBS:NixieClock-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 5D9E08F5
P 1400 1600
F 0 "J1" H 1450 1900 50  0000 C CNN
F 1 "Multiplexer" H 1150 1500 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1400 1600 50  0001 C CNN
F 3 "~" H 1400 1600 50  0001 C CNN
	1    1400 1600
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MPSA42 Q1
U 1 1 5D9E59FE
P 2400 2900
F 0 "Q1" H 2591 2946 50  0000 L CNN
F 1 "MPSA42" H 2591 2855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2600 2825 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA42-D.PDF" H 2400 2900 50  0001 L CNN
	1    2400 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5D9E723D
P 1900 2700
F 0 "R1" H 1959 2746 50  0000 L CNN
F 1 "33k" H 1959 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1900 2700 50  0001 C CNN
F 3 "~" H 1900 2700 50  0001 C CNN
	1    1900 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5D9E77F5
P 2500 2450
F 0 "R3" H 2559 2496 50  0000 L CNN
F 1 "470k" H 2559 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2500 2450 50  0001 C CNN
F 3 "~" H 2500 2450 50  0001 C CNN
	1    2500 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5D9E82F0
P 2500 2150
F 0 "R2" H 2559 2196 50  0000 L CNN
F 1 "100k" H 2559 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2500 2150 50  0001 C CNN
F 3 "~" H 2500 2150 50  0001 C CNN
	1    2500 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5D9E8698
P 3100 3000
F 0 "R4" H 3159 3046 50  0000 L CNN
F 1 "47k" H 3159 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3100 3000 50  0001 C CNN
F 3 "~" H 3100 3000 50  0001 C CNN
	1    3100 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5D9E9571
P 2500 3150
F 0 "#PWR0101" H 2500 2900 50  0001 C CNN
F 1 "GND" H 2505 2977 50  0000 C CNN
F 2 "" H 2500 3150 50  0001 C CNN
F 3 "" H 2500 3150 50  0001 C CNN
	1    2500 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5D9E9FAF
P 1650 2000
F 0 "#PWR0102" H 1650 1750 50  0001 C CNN
F 1 "GND" H 1655 1827 50  0000 C CNN
F 2 "" H 1650 2000 50  0001 C CNN
F 3 "" H 1650 2000 50  0001 C CNN
	1    1650 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1900 1650 1900
Wire Wire Line
	1650 1900 1650 2000
$Comp
L Transistor_BJT:MPSA92 Q2
U 1 1 5D9EA31F
P 3000 2300
F 0 "Q2" H 3191 2254 50  0000 L CNN
F 1 "MPSA92" H 3191 2345 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3200 2225 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA92-D.PDF" H 3000 2300 50  0001 L CNN
	1    3000 2300
	1    0    0    1   
$EndComp
Wire Wire Line
	1900 2800 1900 2900
Wire Wire Line
	1900 2900 2200 2900
Wire Wire Line
	2500 3100 2500 3150
Wire Wire Line
	2500 2700 2500 2550
Wire Wire Line
	2800 2300 2500 2300
Wire Wire Line
	2500 2300 2500 2350
Wire Wire Line
	2500 2250 2500 2300
Connection ~ 2500 2300
Wire Wire Line
	2500 2050 2500 2000
Wire Wire Line
	2500 2000 3100 2000
Wire Wire Line
	3100 2000 3100 2100
Wire Wire Line
	3100 2500 3100 2900
$Comp
L WK_lib:CD61 L1
U 1 1 5D9EEE26
P 3100 3650
F 0 "L1" H 3300 3750 50  0000 L CNN
F 1 "CD61" H 3250 3650 50  0000 L CNN
F 2 "WK_lib:CD61_nixie" H 3100 3750 50  0001 C CNN
F 3 "" H 3100 3750 50  0001 C CNN
	1    3100 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3100 3100 3350
$Comp
L Transistor_BJT:MPSA42 Q3
U 1 1 5D9FCFDD
P 4250 2900
F 0 "Q3" H 4441 2946 50  0000 L CNN
F 1 "MPSA42" H 4441 2855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4450 2825 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA42-D.PDF" H 4250 2900 50  0001 L CNN
	1    4250 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5D9FCFE3
P 3750 2700
F 0 "R5" H 3809 2746 50  0000 L CNN
F 1 "33k" H 3809 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3750 2700 50  0001 C CNN
F 3 "~" H 3750 2700 50  0001 C CNN
	1    3750 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5D9FCFE9
P 4350 2450
F 0 "R7" H 4409 2496 50  0000 L CNN
F 1 "470k" H 4409 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4350 2450 50  0001 C CNN
F 3 "~" H 4350 2450 50  0001 C CNN
	1    4350 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5D9FCFEF
P 4350 2150
F 0 "R6" H 4409 2196 50  0000 L CNN
F 1 "100k" H 4409 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4350 2150 50  0001 C CNN
F 3 "~" H 4350 2150 50  0001 C CNN
	1    4350 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5D9FCFF5
P 4950 3000
F 0 "R8" H 5009 3046 50  0000 L CNN
F 1 "47k" H 5009 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4950 3000 50  0001 C CNN
F 3 "~" H 4950 3000 50  0001 C CNN
	1    4950 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5D9FCFFB
P 4350 3150
F 0 "#PWR0103" H 4350 2900 50  0001 C CNN
F 1 "GND" H 4355 2977 50  0000 C CNN
F 2 "" H 4350 3150 50  0001 C CNN
F 3 "" H 4350 3150 50  0001 C CNN
	1    4350 3150
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MPSA92 Q4
U 1 1 5D9FD001
P 4850 2300
F 0 "Q4" H 5041 2254 50  0000 L CNN
F 1 "MPSA92" H 5041 2345 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5050 2225 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA92-D.PDF" H 4850 2300 50  0001 L CNN
	1    4850 2300
	1    0    0    1   
$EndComp
Wire Wire Line
	3750 2800 3750 2900
Wire Wire Line
	3750 2900 4050 2900
Wire Wire Line
	4350 3100 4350 3150
Wire Wire Line
	4350 2700 4350 2550
Wire Wire Line
	4650 2300 4350 2300
Wire Wire Line
	4350 2300 4350 2350
Wire Wire Line
	4350 2250 4350 2300
Connection ~ 4350 2300
Wire Wire Line
	4350 2050 4350 2000
Wire Wire Line
	4350 2000 4950 2000
Wire Wire Line
	4950 2000 4950 2100
Wire Wire Line
	4950 2500 4950 2900
$Comp
L WK_lib:CD61 L2
U 1 1 5D9FD013
P 4950 3650
F 0 "L2" H 5150 3750 50  0000 L CNN
F 1 "CD61" H 5100 3650 50  0000 L CNN
F 2 "WK_lib:CD61_nixie" H 4950 3750 50  0001 C CNN
F 3 "" H 4950 3750 50  0001 C CNN
	1    4950 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3100 4950 3350
$Comp
L Transistor_BJT:MPSA42 Q6
U 1 1 5DA03777
P 7200 2900
F 0 "Q6" H 7391 2946 50  0000 L CNN
F 1 "MPSA42" H 7391 2855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7400 2825 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA42-D.PDF" H 7200 2900 50  0001 L CNN
	1    7200 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5DA0377D
P 6700 2700
F 0 "R11" H 6759 2746 50  0000 L CNN
F 1 "33k" H 6759 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6700 2700 50  0001 C CNN
F 3 "~" H 6700 2700 50  0001 C CNN
	1    6700 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 5DA03783
P 7300 2450
F 0 "R13" H 7359 2496 50  0000 L CNN
F 1 "470k" H 7359 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7300 2450 50  0001 C CNN
F 3 "~" H 7300 2450 50  0001 C CNN
	1    7300 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R12
U 1 1 5DA03789
P 7300 2150
F 0 "R12" H 7359 2196 50  0000 L CNN
F 1 "100k" H 7359 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7300 2150 50  0001 C CNN
F 3 "~" H 7300 2150 50  0001 C CNN
	1    7300 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R14
U 1 1 5DA0378F
P 7900 3000
F 0 "R14" H 7959 3046 50  0000 L CNN
F 1 "47k" H 7959 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7900 3000 50  0001 C CNN
F 3 "~" H 7900 3000 50  0001 C CNN
	1    7900 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5DA03795
P 7300 3150
F 0 "#PWR0104" H 7300 2900 50  0001 C CNN
F 1 "GND" H 7305 2977 50  0000 C CNN
F 2 "" H 7300 3150 50  0001 C CNN
F 3 "" H 7300 3150 50  0001 C CNN
	1    7300 3150
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MPSA92 Q7
U 1 1 5DA0379B
P 7800 2300
F 0 "Q7" H 7991 2254 50  0000 L CNN
F 1 "MPSA92" H 7991 2345 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8000 2225 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA92-D.PDF" H 7800 2300 50  0001 L CNN
	1    7800 2300
	1    0    0    1   
$EndComp
Wire Wire Line
	6700 2800 6700 2900
Wire Wire Line
	6700 2900 7000 2900
Wire Wire Line
	7300 3100 7300 3150
Wire Wire Line
	7300 2700 7300 2550
Wire Wire Line
	7600 2300 7300 2300
Wire Wire Line
	7300 2300 7300 2350
Wire Wire Line
	7300 2250 7300 2300
Connection ~ 7300 2300
Wire Wire Line
	7300 2050 7300 2000
Wire Wire Line
	7300 2000 7900 2000
Wire Wire Line
	7900 2000 7900 2100
Wire Wire Line
	7900 2500 7900 2900
$Comp
L WK_lib:CD61 L4
U 1 1 5DA037AD
P 7900 3650
F 0 "L4" H 8100 3750 50  0000 L CNN
F 1 "CD61" H 8050 3650 50  0000 L CNN
F 2 "WK_lib:CD61_nixie" H 7900 3750 50  0001 C CNN
F 3 "" H 7900 3750 50  0001 C CNN
	1    7900 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 3100 7900 3350
$Comp
L Transistor_BJT:MPSA42 Q8
U 1 1 5DA05818
P 9000 2900
F 0 "Q8" H 9191 2946 50  0000 L CNN
F 1 "MPSA42" H 9191 2855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9200 2825 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA42-D.PDF" H 9000 2900 50  0001 L CNN
	1    9000 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R15
U 1 1 5DA0581E
P 8500 2700
F 0 "R15" H 8559 2746 50  0000 L CNN
F 1 "33k" H 8559 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8500 2700 50  0001 C CNN
F 3 "~" H 8500 2700 50  0001 C CNN
	1    8500 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R17
U 1 1 5DA05824
P 9100 2450
F 0 "R17" H 9159 2496 50  0000 L CNN
F 1 "470k" H 9159 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9100 2450 50  0001 C CNN
F 3 "~" H 9100 2450 50  0001 C CNN
	1    9100 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R16
U 1 1 5DA0582A
P 9100 2150
F 0 "R16" H 9159 2196 50  0000 L CNN
F 1 "100k" H 9159 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9100 2150 50  0001 C CNN
F 3 "~" H 9100 2150 50  0001 C CNN
	1    9100 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R18
U 1 1 5DA05830
P 9700 3000
F 0 "R18" H 9759 3046 50  0000 L CNN
F 1 "47k" H 9759 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9700 3000 50  0001 C CNN
F 3 "~" H 9700 3000 50  0001 C CNN
	1    9700 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5DA05836
P 9100 3150
F 0 "#PWR0105" H 9100 2900 50  0001 C CNN
F 1 "GND" H 9105 2977 50  0000 C CNN
F 2 "" H 9100 3150 50  0001 C CNN
F 3 "" H 9100 3150 50  0001 C CNN
	1    9100 3150
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MPSA92 Q9
U 1 1 5DA0583C
P 9600 2300
F 0 "Q9" H 9791 2254 50  0000 L CNN
F 1 "MPSA92" H 9791 2345 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9800 2225 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA92-D.PDF" H 9600 2300 50  0001 L CNN
	1    9600 2300
	1    0    0    1   
$EndComp
Wire Wire Line
	8500 2800 8500 2900
Wire Wire Line
	8500 2900 8800 2900
Wire Wire Line
	9100 3100 9100 3150
Wire Wire Line
	9100 2700 9100 2550
Wire Wire Line
	9400 2300 9100 2300
Wire Wire Line
	9100 2300 9100 2350
Wire Wire Line
	9100 2250 9100 2300
Connection ~ 9100 2300
Wire Wire Line
	9100 2050 9100 2000
Wire Wire Line
	9100 2000 9700 2000
Wire Wire Line
	9700 2000 9700 2100
Wire Wire Line
	9700 2500 9700 2900
$Comp
L WK_lib:CD61 L5
U 1 1 5DA0584E
P 9700 3650
F 0 "L5" H 9900 3750 50  0000 L CNN
F 1 "CD61" H 9850 3650 50  0000 L CNN
F 2 "WK_lib:CD61_nixie" H 9700 3750 50  0001 C CNN
F 3 "" H 9700 3750 50  0001 C CNN
	1    9700 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3100 9700 3350
Wire Wire Line
	1600 1800 1900 1800
Wire Wire Line
	1900 1800 1900 2600
Wire Wire Line
	1600 1700 3750 1700
Wire Wire Line
	3750 1700 3750 2600
Wire Wire Line
	1600 1500 6700 1500
Wire Wire Line
	6700 1500 6700 2600
Wire Wire Line
	1600 1400 8500 1400
Wire Wire Line
	8500 1400 8500 2600
$Comp
L WK_lib:Neon_bulb L3
U 1 1 5DA0D3EA
P 6150 2350
F 0 "L3" H 6278 2396 50  0000 L CNN
F 1 "Neon_bulb" H 6278 2305 50  0000 L CNN
F 2 "WK_lib:neon_lamp" H 6500 2350 50  0001 C CNN
F 3 "" H 6500 2350 50  0001 C CNN
	1    6150 2350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MPSA42 Q5
U 1 1 5DA180D3
P 6050 3050
F 0 "Q5" H 6241 3096 50  0000 L CNN
F 1 "MPSA42" H 6241 3005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6250 2975 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA42-D.PDF" H 6050 3050 50  0001 L CNN
	1    6050 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5DA180D9
P 5550 2850
F 0 "R9" H 5609 2896 50  0000 L CNN
F 1 "33k" H 5609 2805 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5550 2850 50  0001 C CNN
F 3 "~" H 5550 2850 50  0001 C CNN
	1    5550 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R10
U 1 1 5DA180DF
P 6150 2700
F 0 "R10" H 6209 2746 50  0000 L CNN
F 1 "220k" H 6209 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6150 2700 50  0001 C CNN
F 3 "~" H 6150 2700 50  0001 C CNN
	1    6150 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5DA180E5
P 6150 3300
F 0 "#PWR0106" H 6150 3050 50  0001 C CNN
F 1 "GND" H 6155 3127 50  0000 C CNN
F 2 "" H 6150 3300 50  0001 C CNN
F 3 "" H 6150 3300 50  0001 C CNN
	1    6150 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2950 5550 3050
Wire Wire Line
	5550 3050 5850 3050
Wire Wire Line
	6150 3250 6150 3300
Wire Wire Line
	6150 2600 6150 2550
Wire Wire Line
	6150 2850 6150 2800
Wire Wire Line
	1600 1600 5550 1600
Wire Wire Line
	5550 1600 5550 2750
Wire Wire Line
	6150 2150 6150 2000
Wire Wire Line
	6150 2000 4950 2000
Connection ~ 4950 2000
Wire Wire Line
	6150 2000 7300 2000
Connection ~ 6150 2000
Connection ~ 7300 2000
Wire Wire Line
	7900 2000 9100 2000
Connection ~ 7900 2000
Connection ~ 9100 2000
Wire Wire Line
	4350 2000 3100 2000
Connection ~ 4350 2000
Connection ~ 3100 2000
Wire Wire Line
	9700 1400 9700 2000
Connection ~ 9700 2000
NoConn ~ 2600 3950
NoConn ~ 4450 3950
NoConn ~ 7400 3950
NoConn ~ 9200 3950
$Comp
L Connector:Conn_01x10_Male J2
U 1 1 5DA383C8
P 1400 4650
F 0 "J2" H 1500 5150 50  0000 C CNN
F 1 "sterowanie_lamp" H 1100 4600 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 1400 4650 50  0001 C CNN
F 3 "~" H 1400 4650 50  0001 C CNN
	1    1400 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4250 2700 3950
Wire Wire Line
	2800 4350 2800 3950
Wire Wire Line
	2900 4450 2900 3950
Wire Wire Line
	3000 4550 3000 3950
Wire Wire Line
	3100 4650 3100 3950
Wire Wire Line
	3200 4750 3200 3950
Wire Wire Line
	3300 4850 3300 3950
Wire Wire Line
	3400 4950 3400 3950
Wire Wire Line
	3500 3950 3500 5050
Wire Wire Line
	3600 5150 3600 3950
Wire Wire Line
	2700 4250 4550 4250
Wire Wire Line
	4550 4250 4550 3950
Connection ~ 2700 4250
Wire Wire Line
	4550 4250 7500 4250
Wire Wire Line
	7500 4250 7500 3950
Connection ~ 4550 4250
Wire Wire Line
	7500 4250 9300 4250
Wire Wire Line
	9300 4250 9300 3950
Connection ~ 7500 4250
Wire Wire Line
	2800 4350 4650 4350
Wire Wire Line
	4650 4350 4650 3950
Connection ~ 2800 4350
Wire Wire Line
	4650 4350 7600 4350
Wire Wire Line
	7600 4350 7600 3950
Connection ~ 4650 4350
Wire Wire Line
	7600 4350 9400 4350
Wire Wire Line
	9400 4350 9400 3950
Connection ~ 7600 4350
Wire Wire Line
	9500 3950 9500 4450
Wire Wire Line
	9500 4450 7700 4450
Connection ~ 2900 4450
Wire Wire Line
	9600 4550 9600 3950
Connection ~ 3000 4550
Wire Wire Line
	9700 3950 9700 4650
Connection ~ 3100 4650
Wire Wire Line
	3200 4750 5050 4750
Wire Wire Line
	9800 4750 9800 3950
Connection ~ 3200 4750
Wire Wire Line
	9900 3950 9900 4850
Wire Wire Line
	9900 4850 8100 4850
Connection ~ 3300 4850
Wire Wire Line
	3400 4950 5250 4950
Wire Wire Line
	10000 4950 10000 3950
Connection ~ 3400 4950
Wire Wire Line
	10100 3950 10100 5050
Wire Wire Line
	10100 5050 8300 5050
Connection ~ 3500 5050
Wire Wire Line
	3600 5150 5450 5150
Wire Wire Line
	10200 5150 10200 3950
Connection ~ 3600 5150
Wire Wire Line
	7700 3950 7700 4450
Connection ~ 7700 4450
Wire Wire Line
	7700 4450 4750 4450
Wire Wire Line
	9700 4650 7900 4650
Wire Wire Line
	3000 4550 4850 4550
Wire Wire Line
	7800 3950 7800 4550
Connection ~ 7800 4550
Wire Wire Line
	7800 4550 9600 4550
Wire Wire Line
	7900 3950 7900 4650
Connection ~ 7900 4650
Wire Wire Line
	7900 4650 4950 4650
Wire Wire Line
	8000 3950 8000 4750
Connection ~ 8000 4750
Wire Wire Line
	8000 4750 9800 4750
Wire Wire Line
	8100 3950 8100 4850
Connection ~ 8100 4850
Wire Wire Line
	8100 4850 5150 4850
Wire Wire Line
	8200 3950 8200 4950
Connection ~ 8200 4950
Wire Wire Line
	8200 4950 10000 4950
Wire Wire Line
	8300 3950 8300 5050
Connection ~ 8300 5050
Wire Wire Line
	8300 5050 5350 5050
Wire Wire Line
	8400 5150 8400 3950
Connection ~ 8400 5150
Wire Wire Line
	8400 5150 10200 5150
Wire Wire Line
	4750 3950 4750 4450
Connection ~ 4750 4450
Wire Wire Line
	4750 4450 2900 4450
Wire Wire Line
	4850 3950 4850 4550
Connection ~ 4850 4550
Wire Wire Line
	4850 4550 7800 4550
Wire Wire Line
	4950 3950 4950 4650
Connection ~ 4950 4650
Wire Wire Line
	4950 4650 3100 4650
Wire Wire Line
	5050 3950 5050 4750
Connection ~ 5050 4750
Wire Wire Line
	5050 4750 8000 4750
Wire Wire Line
	5150 3950 5150 4850
Connection ~ 5150 4850
Wire Wire Line
	5150 4850 3300 4850
Wire Wire Line
	5250 3950 5250 4950
Connection ~ 5250 4950
Wire Wire Line
	5250 4950 8200 4950
Wire Wire Line
	5350 3950 5350 5050
Connection ~ 5350 5050
Wire Wire Line
	5350 5050 3500 5050
Wire Wire Line
	5450 3950 5450 5150
Connection ~ 5450 5150
Wire Wire Line
	5450 5150 8400 5150
Wire Wire Line
	1600 4250 2700 4250
Wire Wire Line
	1600 4350 2800 4350
Wire Wire Line
	1600 4450 2900 4450
Wire Wire Line
	1600 4550 3000 4550
Wire Wire Line
	1600 4650 3100 4650
Wire Wire Line
	1600 4750 3200 4750
Wire Wire Line
	1600 4850 3300 4850
Wire Wire Line
	1600 4950 3400 4950
Wire Wire Line
	1600 5050 3500 5050
Wire Wire Line
	1600 5150 3600 5150
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5DA2A4C8
P 10550 1300
F 0 "J3" H 10630 1292 50  0000 L CNN
F 1 "HV" H 10630 1201 50  0000 L CNN
F 2 "WK_lib:TerminalBlock_bornier-2_P5.08mm" H 10550 1300 50  0001 C CNN
F 3 "~" H 10550 1300 50  0001 C CNN
	1    10550 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1300 10350 1300
$Comp
L power:GND #PWR0107
U 1 1 5DA2E853
P 10250 1500
F 0 "#PWR0107" H 10250 1250 50  0001 C CNN
F 1 "GND" H 10255 1327 50  0000 C CNN
F 2 "" H 10250 1500 50  0001 C CNN
F 3 "" H 10250 1500 50  0001 C CNN
	1    10250 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 1400 9700 1400
Wire Wire Line
	10250 1300 10250 1500
$EndSCHEMATC
