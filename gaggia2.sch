EESchema Schematic File Version 4
EELAYER 30 0
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
L Converter_ACDC:RAC04-3.3SGA PS1
U 1 1 5FC6ED0E
P 2800 4800
F 0 "PS1" H 2800 5167 50  0000 C CNN
F 1 "RAC04-3.3SGA" H 2800 5076 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_RECOM_RAC04-xxSGx_THT" H 2800 4450 50  0001 C CNN
F 3 "https://www.recom-power.com/pdf/Powerline-AC-DC/RAC04-GA.pdf" H 2700 5100 50  0001 C CNN
	1    2800 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5FC75B2D
P 3500 3900
F 0 "C2" H 3592 3946 50  0000 L CNN
F 1 "C_Small" H 3592 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 3500 3900 50  0001 C CNN
F 3 "~" H 3500 3900 50  0001 C CNN
	1    3500 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5FC754FE
P 2150 4000
F 0 "C1" H 2242 4046 50  0000 L CNN
F 1 "C_Small" H 2242 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 2150 4000 50  0001 C CNN
F 3 "~" H 2150 4000 50  0001 C CNN
	1    2150 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5FC748ED
P 4700 2600
F 0 "J3" V 4664 2412 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 4573 2412 50  0000 R CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x02_P3.50mm_Horizontal" H 4700 2600 50  0001 C CNN
F 3 "~" H 4700 2600 50  0001 C CNN
	1    4700 2600
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5FC74571
P 3450 2900
F 0 "J2" V 3414 2712 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 3323 2712 50  0000 R CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x02_P3.50mm_Horizontal" H 3450 2900 50  0001 C CNN
F 3 "~" H 3450 2900 50  0001 C CNN
	1    3450 2900
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5FC7354D
P 2550 2900
F 0 "J1" V 2514 2712 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 2423 2712 50  0000 R CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x02_P3.50mm_Horizontal" H 2550 2900 50  0001 C CNN
F 3 "~" H 2550 2900 50  0001 C CNN
	1    2550 2900
	0    -1   -1   0   
$EndComp
$Comp
L Sensor_Temperature:MAX31855KASA U1
U 1 1 5FC761B6
P 2800 4000
F 0 "U1" H 2800 4581 50  0000 C CNN
F 1 "MAX31855KASA" H 2800 4490 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3800 3650 50  0001 C CIN
F 3 "http://datasheets.maximintegrated.com/en/ds/MAX31855.pdf" H 2800 4000 50  0001 C CNN
	1    2800 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4700 2000 4700
Wire Wire Line
	2000 4700 2000 3300
Wire Wire Line
	2000 3300 2650 3300
Wire Wire Line
	2650 3300 2650 3100
Wire Wire Line
	2400 4900 1800 4900
Wire Wire Line
	1800 4900 1800 3200
Wire Wire Line
	1800 3200 2550 3200
Wire Wire Line
	2550 3200 2550 3100
$Comp
L power:GND #PWR02
U 1 1 5FC828D7
P 3200 5250
F 0 "#PWR02" H 3200 5000 50  0001 C CNN
F 1 "GND" H 3205 5077 50  0000 C CNN
F 2 "" H 3200 5250 50  0001 C CNN
F 3 "" H 3200 5250 50  0001 C CNN
	1    3200 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5FC83085
P 3400 5250
F 0 "#PWR03" H 3400 5000 50  0001 C CNN
F 1 "GND" H 3405 5077 50  0000 C CNN
F 2 "" H 3400 5250 50  0001 C CNN
F 3 "" H 3400 5250 50  0001 C CNN
	1    3400 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5FC8325C
P 4850 5250
F 0 "#PWR06" H 4850 5000 50  0001 C CNN
F 1 "GND" H 4855 5077 50  0000 C CNN
F 2 "" H 4850 5250 50  0001 C CNN
F 3 "" H 4850 5250 50  0001 C CNN
	1    4850 5250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5FC836EC
P 2800 3350
F 0 "#PWR01" H 2800 3200 50  0001 C CNN
F 1 "VCC" H 2815 3523 50  0000 C CNN
F 2 "" H 2800 3350 50  0001 C CNN
F 3 "" H 2800 3350 50  0001 C CNN
	1    2800 3350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR04
U 1 1 5FC84129
P 3450 4500
F 0 "#PWR04" H 3450 4350 50  0001 C CNN
F 1 "VCC" H 3465 4673 50  0000 C CNN
F 2 "" H 3450 4500 50  0001 C CNN
F 3 "" H 3450 4500 50  0001 C CNN
	1    3450 4500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 5FC8437F
P 4850 3350
F 0 "#PWR05" H 4850 3200 50  0001 C CNN
F 1 "VCC" H 4865 3523 50  0000 C CNN
F 2 "" H 4850 3350 50  0001 C CNN
F 3 "" H 4850 3350 50  0001 C CNN
	1    4850 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4700 3200 4500
Wire Wire Line
	3200 4900 3200 5250
Wire Wire Line
	3450 4500 3200 4500
Wire Wire Line
	4850 3600 4850 3450
Wire Wire Line
	4850 5100 4850 5250
Wire Wire Line
	2800 4400 3300 4400
Wire Wire Line
	3300 4400 3300 4250
Wire Wire Line
	3550 4250 3550 5250
Wire Wire Line
	3550 5250 3450 5250
Wire Wire Line
	2800 3350 2800 3500
Connection ~ 2800 3500
Wire Wire Line
	2800 3500 2800 3600
Wire Wire Line
	2800 3500 3500 3500
Wire Wire Line
	3500 3500 3500 3800
Wire Wire Line
	3300 4250 3500 4250
Connection ~ 3500 4250
Wire Wire Line
	3500 4250 3550 4250
Wire Wire Line
	3500 4250 3500 4000
Wire Wire Line
	2400 3900 2150 3900
Connection ~ 2150 3900
Wire Wire Line
	2150 3900 2150 3400
Wire Wire Line
	2150 3400 3550 3400
Wire Wire Line
	3550 3400 3550 3100
Wire Wire Line
	2400 4100 2150 4100
Connection ~ 2150 4100
Wire Wire Line
	3450 3100 3450 3200
Wire Wire Line
	3450 3200 2700 3200
Wire Wire Line
	2700 3200 2700 3350
Wire Wire Line
	2700 3350 2050 3350
Wire Wire Line
	2050 3350 2050 4100
Wire Wire Line
	2050 4100 2150 4100
Wire Wire Line
	4800 3100 5650 3100
Wire Wire Line
	5650 4600 5450 4600
Wire Wire Line
	3200 3800 3200 3650
Wire Wire Line
	4100 4900 4250 4900
Wire Wire Line
	3200 3650 4100 3650
Wire Wire Line
	3200 3900 3300 3900
Wire Wire Line
	3300 3900 3300 4050
Wire Wire Line
	3300 4050 3950 4050
Wire Wire Line
	3950 4050 3950 4500
Wire Wire Line
	3950 4500 4250 4500
Wire Wire Line
	3200 4100 3800 4100
Wire Wire Line
	3800 4100 3800 4400
Wire Wire Line
	3800 4400 4250 4400
$Comp
L Connector_Generic:Conn_02x03_Top_Bottom J4
U 1 1 5FCB02AD
P 4150 3400
F 0 "J4" H 4200 3717 50  0000 C CNN
F 1 "Conn_02x03_Top_Bottom" H 4200 3626 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 4150 3400 50  0001 C CNN
F 3 "~" H 4150 3400 50  0001 C CNN
	1    4150 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3550 3950 3550
Wire Wire Line
	3950 3550 3950 3500
Wire Wire Line
	5450 3900 5500 3900
Wire Wire Line
	5500 3900 5500 3500
Wire Wire Line
	5500 3500 4450 3500
Wire Wire Line
	5450 4100 5950 4100
Wire Wire Line
	5950 4100 5950 3400
Connection ~ 4850 3450
Wire Wire Line
	4850 3450 4850 3350
Wire Wire Line
	4450 3300 4650 3300
Wire Wire Line
	4650 3300 4650 3450
$Comp
L power:GND #PWR0101
U 1 1 5FCB8E89
P 3700 3300
F 0 "#PWR0101" H 3700 3050 50  0001 C CNN
F 1 "GND" H 3705 3127 50  0000 C CNN
F 2 "" H 3700 3300 50  0001 C CNN
F 3 "" H 3700 3300 50  0001 C CNN
	1    3700 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3300 3800 3300
Wire Wire Line
	4650 3450 4850 3450
Wire Wire Line
	4100 3650 4100 4900
Wire Wire Line
	5650 3100 5650 4600
Wire Wire Line
	5950 3400 4450 3400
$Comp
L RF_Module:ESP-12E U2
U 1 1 5FC712DF
P 4850 4400
F 0 "U2" H 4850 5381 50  0000 C CNN
F 1 "ESP-12E" H 4850 5290 50  0000 C CNN
F 2 "RF_Module:ESP-12E" H 4850 4400 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 4500 4500 50  0001 C CNN
	1    4850 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3800 4250 3550
Wire Wire Line
	5450 3800 5450 3200
Wire Wire Line
	5450 3200 3900 3200
Wire Wire Line
	3900 3200 3900 3400
Wire Wire Line
	3900 3400 3950 3400
Connection ~ 3800 3300
Wire Wire Line
	3800 3300 3700 3300
Wire Wire Line
	4700 2800 3800 2800
Wire Wire Line
	3800 2800 3800 3300
Wire Wire Line
	4800 3100 4800 2800
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 5FCDA8C7
P 3250 4750
F 0 "J5" H 3358 4931 50  0000 C CNN
F 1 "Conn_01x02_Male" H 3358 4840 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3250 4750 50  0001 C CNN
F 3 "~" H 3250 4750 50  0001 C CNN
	1    3250 4750
	1    0    0    -1  
$EndComp
Connection ~ 3450 4500
Wire Wire Line
	3450 4500 3450 4750
Wire Wire Line
	3450 4850 3450 5250
Connection ~ 3450 5250
Wire Wire Line
	3450 5250 3400 5250
$EndSCHEMATC
