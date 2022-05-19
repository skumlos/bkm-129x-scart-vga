EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L Regulator_Linear:LD1117S50TR_SOT223 U101
U 1 1 6292D85B
P 2400 1300
F 0 "U101" H 2400 1542 50  0000 C CNN
F 1 "LD1117S50TR_SOT223" H 2400 1451 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2400 1500 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 2500 1050 50  0001 C CNN
	1    2400 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0103
U 1 1 629477FE
P 2400 1600
F 0 "#PWR0103" H 2400 1350 50  0001 C CNN
F 1 "GNDA" H 2405 1427 50  0000 C CNN
F 2 "" H 2400 1600 50  0001 C CNN
F 3 "" H 2400 1600 50  0001 C CNN
	1    2400 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0104
U 1 1 62947D2A
P 2900 1300
F 0 "#PWR0104" H 2900 1150 50  0001 C CNN
F 1 "+3.3V" V 2915 1428 50  0000 L CNN
F 2 "" H 2900 1300 50  0001 C CNN
F 3 "" H 2900 1300 50  0001 C CNN
	1    2900 1300
	0    1    1    0   
$EndComp
$Comp
L bkm-129x-scart-vga-rescue:C C102
U 1 1 62949842
P 2800 1450
F 0 "C102" H 2915 1496 50  0000 L CNN
F 1 "4.7uF" H 2915 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2838 1300 50  0001 C CNN
F 3 "" H 2800 1450 50  0001 C CNN
	1    2800 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0105
U 1 1 62949C28
P 2800 1600
F 0 "#PWR0105" H 2800 1350 50  0001 C CNN
F 1 "GNDA" H 2805 1427 50  0000 C CNN
F 2 "" H 2800 1600 50  0001 C CNN
F 3 "" H 2800 1600 50  0001 C CNN
	1    2800 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1300 2800 1300
Wire Wire Line
	2900 1300 2800 1300
Connection ~ 2800 1300
$Comp
L bkm-129x-scart-vga-rescue:C C101
U 1 1 6294A184
P 1950 1450
F 0 "C101" H 2065 1496 50  0000 L CNN
F 1 "1uF" H 2065 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1988 1300 50  0001 C CNN
F 3 "" H 1950 1450 50  0001 C CNN
	1    1950 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0106
U 1 1 6294A7A3
P 1950 1600
F 0 "#PWR0106" H 1950 1350 50  0001 C CNN
F 1 "GNDA" H 1955 1427 50  0000 C CNN
F 2 "" H 1950 1600 50  0001 C CNN
F 3 "" H 1950 1600 50  0001 C CNN
	1    1950 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1300 2100 1300
$Comp
L power:VDDA #PWR0107
U 1 1 6294BD38
P 1850 1300
F 0 "#PWR0107" H 1850 1150 50  0001 C CNN
F 1 "VDDA" H 1865 1473 50  0000 C CNN
F 2 "" H 1850 1300 50  0001 C CNN
F 3 "" H 1850 1300 50  0001 C CNN
	1    1850 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1300 1950 1300
Connection ~ 1950 1300
Text Notes 800  750  0    50   ~ 0
Note that 3.3V+ is copied from BNC version, when using 5.0V LDO, it will be 5.0V net.
Text Notes 1650 2050 0    50   ~ 0
Many *1117 compatible units exist.\nEnsure LDO has a dropout voltage below 1V
$EndSCHEMATC
