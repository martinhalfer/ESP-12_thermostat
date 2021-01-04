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
P 4400 4800
F 0 "PS1" H 4400 5167 50  0000 C CNN
F 1 "RAC04-3.3SGA" H 4400 5076 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_RECOM_RAC04-xxSGx_THT" H 4400 4450 50  0001 C CNN
F 3 "https://www.recom-power.com/pdf/Powerline-AC-DC/RAC04-GA.pdf" H 4300 5100 50  0001 C CNN
	1    4400 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5FC75B2D
P 5100 3900
F 0 "C2" H 5192 3946 50  0000 L CNN
F 1 "C_Small" H 5192 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5100 3900 50  0001 C CNN
F 3 "~" H 5100 3900 50  0001 C CNN
	1    5100 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5FC754FE
P 3750 4000
F 0 "C1" H 3842 4046 50  0000 L CNN
F 1 "C_Small" H 3842 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3750 4000 50  0001 C CNN
F 3 "~" H 3750 4000 50  0001 C CNN
	1    3750 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5FC748ED
P 6300 2600
F 0 "J3" V 6264 2412 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 6173 2412 50  0000 R CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x02_P3.50mm_Horizontal" H 6300 2600 50  0001 C CNN
F 3 "~" H 6300 2600 50  0001 C CNN
	1    6300 2600
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5FC74571
P 5050 2900
F 0 "J2" V 5014 2712 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 4923 2712 50  0000 R CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x02_P3.50mm_Horizontal" H 5050 2900 50  0001 C CNN
F 3 "~" H 5050 2900 50  0001 C CNN
	1    5050 2900
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5FC7354D
P 4150 3050
F 0 "J1" V 4114 2862 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 4023 2862 50  0000 R CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 4150 3050 50  0001 C CNN
F 3 "~" H 4150 3050 50  0001 C CNN
	1    4150 3050
	0    1    1    0   
$EndComp
$Comp
L Sensor_Temperature:MAX31855KASA U1
U 1 1 5FC761B6
P 4400 4000
F 0 "U1" H 4400 4581 50  0000 C CNN
F 1 "MAX31855KASA" H 4400 4490 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5400 3650 50  0001 C CIN
F 3 "http://datasheets.maximintegrated.com/en/ds/MAX31855.pdf" H 4400 4000 50  0001 C CNN
	1    4400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3300 4250 3300
$Comp
L power:GND #PWR02
U 1 1 5FC828D7
P 4800 5250
F 0 "#PWR02" H 4800 5000 50  0001 C CNN
F 1 "GND" H 4805 5077 50  0000 C CNN
F 2 "" H 4800 5250 50  0001 C CNN
F 3 "" H 4800 5250 50  0001 C CNN
	1    4800 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5FC83085
P 5000 5250
F 0 "#PWR03" H 5000 5000 50  0001 C CNN
F 1 "GND" H 5005 5077 50  0000 C CNN
F 2 "" H 5000 5250 50  0001 C CNN
F 3 "" H 5000 5250 50  0001 C CNN
	1    5000 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5FC8325C
P 6450 5250
F 0 "#PWR06" H 6450 5000 50  0001 C CNN
F 1 "GND" H 6455 5077 50  0000 C CNN
F 2 "" H 6450 5250 50  0001 C CNN
F 3 "" H 6450 5250 50  0001 C CNN
	1    6450 5250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5FC836EC
P 4400 3350
F 0 "#PWR01" H 4400 3200 50  0001 C CNN
F 1 "VCC" H 4415 3523 50  0000 C CNN
F 2 "" H 4400 3350 50  0001 C CNN
F 3 "" H 4400 3350 50  0001 C CNN
	1    4400 3350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR04
U 1 1 5FC84129
P 5050 4500
F 0 "#PWR04" H 5050 4350 50  0001 C CNN
F 1 "VCC" H 5065 4673 50  0000 C CNN
F 2 "" H 5050 4500 50  0001 C CNN
F 3 "" H 5050 4500 50  0001 C CNN
	1    5050 4500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 5FC8437F
P 6450 3350
F 0 "#PWR05" H 6450 3200 50  0001 C CNN
F 1 "VCC" H 6465 3523 50  0000 C CNN
F 2 "" H 6450 3350 50  0001 C CNN
F 3 "" H 6450 3350 50  0001 C CNN
	1    6450 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4700 4800 4500
Wire Wire Line
	4800 4900 4800 5100
Wire Wire Line
	5050 4500 4800 4500
Wire Wire Line
	4400 4400 4900 4400
Wire Wire Line
	4900 4400 4900 4250
Wire Wire Line
	5150 4250 5150 5250
Wire Wire Line
	5150 5250 5050 5250
Wire Wire Line
	4400 3350 4400 3500
Connection ~ 4400 3500
Wire Wire Line
	4400 3500 4400 3600
Wire Wire Line
	4400 3500 5100 3500
Wire Wire Line
	5100 3500 5100 3800
Wire Wire Line
	4900 4250 5100 4250
Connection ~ 5100 4250
Wire Wire Line
	5100 4250 5150 4250
Wire Wire Line
	5100 4250 5100 4000
Wire Wire Line
	4000 3900 3750 3900
Connection ~ 3750 3900
Wire Wire Line
	3750 3900 3750 3400
Wire Wire Line
	3750 3400 5150 3400
Wire Wire Line
	5150 3400 5150 3100
Wire Wire Line
	4000 4100 3750 4100
Connection ~ 3750 4100
Wire Wire Line
	5050 3100 5050 3200
Wire Wire Line
	5050 3200 4300 3200
Wire Wire Line
	4300 3200 4300 3350
Wire Wire Line
	4300 3350 3650 3350
Wire Wire Line
	3650 3350 3650 4100
Wire Wire Line
	3650 4100 3750 4100
Wire Wire Line
	4800 3800 4800 3650
Wire Wire Line
	4800 3900 4900 3900
Wire Wire Line
	4900 3900 4900 4050
Wire Wire Line
	4900 4050 5550 4050
Wire Wire Line
	4800 4100 5400 4100
$Comp
L power:GND #PWR0101
U 1 1 5FCB8E89
P 5300 3300
F 0 "#PWR0101" H 5300 3050 50  0001 C CNN
F 1 "GND" H 5305 3127 50  0000 C CNN
F 2 "" H 5300 3300 50  0001 C CNN
F 3 "" H 5300 3300 50  0001 C CNN
	1    5300 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3300 5300 3300
Wire Wire Line
	6300 2800 5400 2800
Wire Wire Line
	5400 2800 5400 3300
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 5FCDA8C7
P 4850 4750
F 0 "J5" H 4958 4931 50  0000 C CNN
F 1 "Conn_01x02_Male" H 4958 4840 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4850 4750 50  0001 C CNN
F 3 "~" H 4850 4750 50  0001 C CNN
	1    4850 4750
	1    0    0    -1  
$EndComp
Connection ~ 5050 4500
Wire Wire Line
	5050 4500 5050 4750
Wire Wire Line
	5050 4850 5050 5250
Connection ~ 5050 5250
Wire Wire Line
	5050 5250 5000 5250
$Comp
L Device:Fuse F1
U 1 1 5FCF0B37
P 3600 4350
F 0 "F1" H 3660 4396 50  0000 L CNN
F 1 "Fuse" H 3660 4305 50  0000 L CNN
F 2 "libraries:FUSC6125X279N" V 3530 4350 50  0001 C CNN
F 3 "~" H 3600 4350 50  0001 C CNN
	1    3600 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4200 3600 3300
$Comp
L Device:Varistor RV1
U 1 1 5FCF190E
P 3800 4750
F 0 "RV1" H 3903 4796 50  0000 L CNN
F 1 "Varistor" H 3903 4705 50  0000 L CNN
F 2 "Varistor:RV_Disc_D15.5mm_W3.9mm_P7.5mm" V 3730 4750 50  0001 C CNN
F 3 "~" H 3800 4750 50  0001 C CNN
	1    3800 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4900 3800 4900
Wire Wire Line
	3800 4900 3400 4900
Connection ~ 3800 4900
Wire Wire Line
	4000 4700 4000 4600
Wire Wire Line
	4000 4600 3800 4600
Wire Wire Line
	3800 4600 3600 4600
Connection ~ 3800 4600
Wire Wire Line
	3600 4600 3600 4500
Wire Wire Line
	5550 4050 5550 5550
Wire Wire Line
	5550 5550 7200 5550
Wire Wire Line
	7200 5550 7200 4400
Wire Wire Line
	7150 4600 7150 5500
Wire Wire Line
	7150 5500 5600 5500
Wire Wire Line
	5600 5500 5600 3650
Wire Wire Line
	5600 3650 4800 3650
Wire Wire Line
	7250 4300 7250 5600
Wire Wire Line
	7250 5600 5400 5600
Wire Wire Line
	5400 4100 5400 5600
Wire Wire Line
	7650 4200 7650 2800
Wire Wire Line
	7650 2800 6400 2800
$Comp
L Device:R R2
U 1 1 5FDC462E
P 5750 3850
F 0 "R2" H 5820 3896 50  0000 L CNN
F 1 "R" H 5820 3805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5680 3850 50  0001 C CNN
F 3 "~" H 5750 3850 50  0001 C CNN
	1    5750 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3700 5750 3600
Wire Wire Line
	5750 3600 6300 3600
$Comp
L Connector_Generic:Conn_02x03_Top_Bottom J4
U 1 1 5FCB02AD
P 5850 3400
F 0 "J4" H 5900 3717 50  0000 C CNN
F 1 "Conn_02x03_Top_Bottom" H 5900 3626 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 5850 3400 50  0001 C CNN
F 3 "~" H 5850 3400 50  0001 C CNN
	1    5850 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5FDCCC4E
P 6750 5150
F 0 "R4" V 6543 5150 50  0000 C CNN
F 1 "R" V 6634 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6680 5150 50  0001 C CNN
F 3 "~" H 6750 5150 50  0001 C CNN
	1    6750 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 4700 7100 5150
Wire Wire Line
	7100 5150 6900 5150
Wire Wire Line
	6600 5150 6450 5150
Connection ~ 6450 5150
Wire Wire Line
	6450 5150 6450 5250
$Comp
L Device:R R3
U 1 1 5FDD1313
P 7350 3800
F 0 "R3" V 7143 3800 50  0000 C CNN
F 1 "R" V 7234 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7280 3800 50  0001 C CNN
F 3 "~" H 7350 3800 50  0001 C CNN
	1    7350 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5FDDB68A
P 5400 3750
F 0 "R1" V 5193 3750 50  0000 C CNN
F 1 "R" V 5284 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5330 3750 50  0001 C CNN
F 3 "~" H 5400 3750 50  0001 C CNN
	1    5400 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 3750 5250 3600
Wire Wire Line
	5250 3600 5750 3600
Connection ~ 5750 3600
$Comp
L Device:C_Small C3
U 1 1 5FDFB18C
P 5250 4900
F 0 "C3" H 5342 4946 50  0000 L CNN
F 1 "C_Small" H 5342 4855 50  0000 L CNN
F 2 "SamacSys_Parts:CAPC3216X160N" H 5250 4900 50  0001 C CNN
F 3 "~" H 5250 4900 50  0001 C CNN
	1    5250 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4500 5250 4500
Wire Wire Line
	5250 4500 5250 4800
Wire Wire Line
	5250 5000 5250 5100
Wire Wire Line
	5250 5100 4800 5100
Connection ~ 4800 5100
Wire Wire Line
	4800 5100 4800 5250
$Comp
L Device:C_Small C4
U 1 1 5FE041DC
P 5700 4200
F 0 "C4" H 5792 4246 50  0000 L CNN
F 1 "C_Small" H 5792 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5700 4200 50  0001 C CNN
F 3 "~" H 5700 4200 50  0001 C CNN
	1    5700 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4100 6300 4100
Connection ~ 6300 3600
Wire Wire Line
	5700 4300 5700 5150
Wire Wire Line
	5700 5150 6450 5150
Wire Wire Line
	5550 3750 5650 3750
Wire Wire Line
	7100 4100 7100 3500
Wire Wire Line
	7100 3500 6050 3500
Wire Wire Line
	7150 3900 7150 3400
Wire Wire Line
	7150 3400 6050 3400
Wire Wire Line
	5650 3750 5650 3650
Wire Wire Line
	5650 3650 6150 3650
Wire Wire Line
	6150 3650 6150 3300
Wire Wire Line
	6150 3300 6050 3300
Connection ~ 5650 3750
Wire Wire Line
	5650 3750 5850 3750
Wire Wire Line
	7050 3150 5450 3150
Wire Wire Line
	5450 3150 5450 3500
Wire Wire Line
	5450 3500 5550 3500
Wire Wire Line
	4250 2850 4150 2850
Wire Wire Line
	4250 2850 4250 3300
Wire Wire Line
	3400 2850 4050 2850
Wire Wire Line
	3400 2850 3400 4900
Wire Wire Line
	7500 3800 7500 3600
Wire Wire Line
	6300 4100 6300 3600
Wire Wire Line
	7500 3600 6450 3600
Wire Wire Line
	6300 3600 6450 3600
Connection ~ 6450 3600
Wire Wire Line
	6450 3350 6450 3600
Wire Wire Line
	7200 4400 7050 4400
Wire Wire Line
	7050 4600 7150 4600
Wire Wire Line
	5850 4000 5750 4000
Wire Wire Line
	7050 3900 7150 3900
Wire Wire Line
	7050 4100 7100 4100
Wire Wire Line
	7050 4300 7250 4300
Wire Wire Line
	7050 4200 7650 4200
Connection ~ 7050 3800
Wire Wire Line
	7050 3800 7200 3800
Wire Wire Line
	7050 3150 7050 3800
Wire Wire Line
	7050 4700 7100 4700
Wire Wire Line
	6450 5100 6450 5150
Wire Wire Line
	5850 3800 5850 3750
$Comp
L RF_Module:ESP-12E U2
U 1 1 5FC712DF
P 6450 4400
F 0 "U2" H 6450 5381 50  0000 C CNN
F 1 "ESP-12E" H 6450 5290 50  0000 C CNN
F 2 "RF_Module:ESP-12E" H 6450 4400 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 6100 4500 50  0001 C CNN
	1    6450 4400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
