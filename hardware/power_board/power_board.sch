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
L Regulator_Linear:LM1117-ADJ U2
U 1 1 5E19E5EF
P 3750 3300
F 0 "U2" H 3750 3542 50  0000 C CNN
F 1 "LM1117-ADJ" H 3750 3451 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3750 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 3750 3300 50  0001 C CNN
F 4 "C7920" H 3750 3300 50  0001 C CNN "LCSC"
	1    3750 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3300 4200 3300
$Comp
L Device:R_Small R3
U 1 1 5E1A22F2
P 4200 3500
F 0 "R3" H 4259 3546 50  0000 L CNN
F 1 "120" H 4259 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4200 3500 50  0001 C CNN
F 3 "~" H 4200 3500 50  0001 C CNN
F 4 "C22787" H 4200 3500 50  0001 C CNN "LCSC"
	1    4200 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5E1A290B
P 4200 3900
F 0 "R4" H 4259 3946 50  0000 L CNN
F 1 "360" H 4259 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4200 3900 50  0001 C CNN
F 3 "~" H 4200 3900 50  0001 C CNN
F 4 "C25194" H 4200 3900 50  0001 C CNN "LCSC"
	1    4200 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3300 4200 3400
Connection ~ 4200 3300
Wire Wire Line
	4200 3600 4200 3700
Wire Wire Line
	4200 3700 3750 3700
Connection ~ 4200 3700
Wire Wire Line
	4200 3700 4200 3800
Wire Wire Line
	3750 3700 3750 3600
$Comp
L power:GND #PWR03
U 1 1 5E1A6664
P 4200 4200
F 0 "#PWR03" H 4200 3950 50  0001 C CNN
F 1 "GND" H 4205 4027 50  0000 C CNN
F 2 "" H 4200 4200 50  0001 C CNN
F 3 "" H 4200 4200 50  0001 C CNN
	1    4200 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4100 4200 4100
Wire Wire Line
	4200 4100 4200 4200
Wire Wire Line
	4200 4100 4200 4000
Connection ~ 4200 4100
Wire Notes Line
	2950 2950 2950 4500
Wire Notes Line
	2950 4500 5750 4500
Wire Notes Line
	5750 4500 5750 2950
Wire Notes Line
	5750 2950 2950 2950
$Comp
L Regulator_Linear:LM1117-ADJ U3
U 1 1 5E1B29A0
P 3750 5000
F 0 "U3" H 3750 5242 50  0000 C CNN
F 1 "LM1117-ADJ" H 3750 5151 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3750 5000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 3750 5000 50  0001 C CNN
F 4 "C7920" H 3750 5000 50  0001 C CNN "LCSC"
	1    3750 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 5000 4200 5000
$Comp
L Device:R_Small R5
U 1 1 5E1B29A8
P 4200 5200
F 0 "R5" H 4259 5246 50  0000 L CNN
F 1 "110" H 4259 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4200 5200 50  0001 C CNN
F 3 "~" H 4200 5200 50  0001 C CNN
F 4 "C22781" H 4200 5200 50  0001 C CNN "LCSC"
	1    4200 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5E1B29AE
P 4200 5600
F 0 "R6" H 4259 5646 50  0000 L CNN
F 1 "180" H 4259 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4200 5600 50  0001 C CNN
F 3 "~" H 4200 5600 50  0001 C CNN
F 4 "C22828" H 4200 5600 50  0001 C CNN "LCSC"
	1    4200 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5000 4200 5100
Connection ~ 4200 5000
Wire Wire Line
	4200 5300 4200 5400
Wire Wire Line
	4200 5400 3750 5400
Connection ~ 4200 5400
Wire Wire Line
	4200 5400 4200 5500
Wire Wire Line
	3750 5400 3750 5300
$Comp
L power:GND #PWR04
U 1 1 5E1B29C5
P 4200 5900
F 0 "#PWR04" H 4200 5650 50  0001 C CNN
F 1 "GND" H 4205 5727 50  0000 C CNN
F 2 "" H 4200 5900 50  0001 C CNN
F 3 "" H 4200 5900 50  0001 C CNN
	1    4200 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5800 4200 5800
Wire Wire Line
	4200 5800 4200 5900
Wire Wire Line
	4200 5800 4200 5700
Connection ~ 4200 5800
Wire Notes Line
	2950 4650 2950 6200
Wire Notes Line
	2950 6200 5750 6200
Wire Notes Line
	5750 6200 5750 4650
Wire Notes Line
	5750 4650 2950 4650
$Comp
L Regulator_Linear:LM1117-ADJ U1
U 1 1 5E1B5B25
P 3750 1600
F 0 "U1" H 3750 1842 50  0000 C CNN
F 1 "LM1117-ADJ" H 3750 1751 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3750 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 3750 1600 50  0001 C CNN
F 4 "C7920" H 3750 1600 50  0001 C CNN "LCSC"
	1    3750 1600
	1    0    0    -1  
$EndComp
Connection ~ 4700 1600
Wire Wire Line
	4050 1600 4200 1600
$Comp
L Device:R_Small R1
U 1 1 5E1B5B2D
P 4200 1800
F 0 "R1" H 4259 1846 50  0000 L CNN
F 1 "150" H 4259 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4200 1800 50  0001 C CNN
F 3 "~" H 4200 1800 50  0001 C CNN
F 4 "C22808" H 4200 1800 50  0001 C CNN "LCSC"
	1    4200 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5E1B5B33
P 4200 2200
F 0 "R2" H 4259 2246 50  0000 L CNN
F 1 "820" H 4259 2155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4200 2200 50  0001 C CNN
F 3 "~" H 4200 2200 50  0001 C CNN
F 4 "C23253" H 4200 2200 50  0001 C CNN "LCSC"
	1    4200 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1600 4200 1700
Wire Wire Line
	4700 1600 4200 1600
Connection ~ 4200 1600
Wire Wire Line
	4200 1900 4200 2000
Wire Wire Line
	4200 2000 3750 2000
Connection ~ 4200 2000
Wire Wire Line
	4200 2000 4200 2100
Wire Wire Line
	3750 2000 3750 1900
$Comp
L power:GND #PWR02
U 1 1 5E1B5B4A
P 4200 2500
F 0 "#PWR02" H 4200 2250 50  0001 C CNN
F 1 "GND" H 4205 2327 50  0000 C CNN
F 2 "" H 4200 2500 50  0001 C CNN
F 3 "" H 4200 2500 50  0001 C CNN
	1    4200 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2400 4200 2400
Wire Wire Line
	4200 2400 4200 2500
Wire Wire Line
	4200 2400 4200 2300
Connection ~ 4200 2400
Wire Notes Line
	2950 1250 2950 2800
Wire Notes Line
	2950 2800 5750 2800
Wire Notes Line
	5750 2800 5750 1250
Wire Notes Line
	5750 1250 2950 1250
Text Notes 2950 3050 0    50   ~ 0
+5V Rail
Text Notes 2950 4750 0    50   ~ 0
+3.3V Rail
Text Notes 2950 1350 0    50   ~ 0
+8V Rail
$Comp
L Connector:TestPoint TP1
U 1 1 5E1BECE3
P 5250 2200
F 0 "TP1" H 5193 2226 50  0000 R CNN
F 1 "TestPoint" H 5193 2317 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 5450 2200 50  0001 C CNN
F 3 "~" H 5450 2200 50  0001 C CNN
	1    5250 2200
	1    0    0    1   
$EndComp
Wire Wire Line
	5250 2200 5250 1600
$Comp
L Connector:TestPoint TP3
U 1 1 5E1C3EBA
P 5250 5600
F 0 "TP3" H 5193 5626 50  0000 R CNN
F 1 "TestPoint" H 5193 5717 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 5450 5600 50  0001 C CNN
F 3 "~" H 5450 5600 50  0001 C CNN
	1    5250 5600
	1    0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5E1C6760
P 5250 3900
F 0 "TP2" H 5193 3926 50  0000 R CNN
F 1 "TestPoint" H 5193 4017 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 5450 3900 50  0001 C CNN
F 3 "~" H 5450 3900 50  0001 C CNN
	1    5250 3900
	1    0    0    1   
$EndComp
Wire Wire Line
	5250 3900 5250 3300
Wire Wire Line
	5250 5600 5250 5000
Wire Wire Line
	2750 5000 2750 3300
Connection ~ 2750 3300
Wire Wire Line
	2750 3300 2750 2200
Connection ~ 2750 2200
Wire Wire Line
	2750 2200 2750 1600
$Comp
L Regulator_SwitchedCapacitor:LM2776 U4
U 1 1 5E1F5DE6
P 7450 4000
F 0 "U4" H 7200 4250 50  0000 L CNN
F 1 "LM2776" H 7500 3650 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 7500 3650 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2776.pdf" H 5600 5250 50  0001 C CNN
F 4 "C69527" H 7450 4000 50  0001 C CNN "LCSC"
	1    7450 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5E1F834F
P 6900 4100
F 0 "C8" H 6809 4054 50  0000 R CNN
F 1 "1µF" H 6809 4145 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6900 4100 50  0001 C CNN
F 3 "~" H 6900 4100 50  0001 C CNN
F 4 "C15849" H 6900 4100 50  0001 C CNN "LCSC"
	1    6900 4100
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5E2062D3
P 7450 4550
F 0 "#PWR05" H 7450 4300 50  0001 C CNN
F 1 "GND" H 7455 4377 50  0000 C CNN
F 2 "" H 7450 4550 50  0001 C CNN
F 3 "" H 7450 4550 50  0001 C CNN
	1    7450 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4550 7450 4500
$Comp
L Device:C_Small C7
U 1 1 5E209D29
P 6500 4100
F 0 "C7" H 6408 4054 50  0000 R CNN
F 1 "2.2µF" H 6408 4145 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6500 4100 50  0001 C CNN
F 3 "~" H 6500 4100 50  0001 C CNN
F 4 "C23630" H 6500 4100 50  0001 C CNN "LCSC"
	1    6500 4100
	1    0    0    1   
$EndComp
Wire Wire Line
	6500 4200 6500 4500
Wire Wire Line
	6500 4500 7450 4500
Connection ~ 7450 4500
Wire Wire Line
	7450 4500 7450 4400
Wire Wire Line
	7450 4500 8150 4500
Wire Wire Line
	8150 4500 8150 4200
Wire Wire Line
	8150 4000 8150 3900
Wire Wire Line
	8150 3900 7850 3900
Wire Wire Line
	7450 3600 6900 3600
Wire Wire Line
	6500 3600 6500 4000
Wire Wire Line
	7450 3600 7450 3700
Connection ~ 8150 3900
Wire Notes Line
	6150 4800 6150 3450
Text Notes 6150 3550 0    50   ~ 0
-5V Rail
$Comp
L Connector:Conn_01x05_Male J2
U 1 1 5E23092A
P 10350 4000
F 0 "J2" H 10322 3932 50  0000 R CNN
F 1 "Conn_01x05_Male" H 10322 4023 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 10350 4000 50  0001 C CNN
F 3 "~" H 10350 4000 50  0001 C CNN
	1    10350 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	8150 3900 8700 3900
$Comp
L power:GND #PWR06
U 1 1 5E251D94
P 9900 4350
F 0 "#PWR06" H 9900 4100 50  0001 C CNN
F 1 "GND" H 9905 4177 50  0000 C CNN
F 2 "" H 9900 4350 50  0001 C CNN
F 3 "" H 9900 4350 50  0001 C CNN
	1    9900 4350
	1    0    0    -1  
$EndComp
Text Notes 1100 2500 0    50   ~ 0
+12v to +18v acceptable
Wire Wire Line
	4700 1600 5250 1600
Wire Wire Line
	4700 2050 4700 2400
Wire Wire Line
	4700 1600 4700 1850
Wire Wire Line
	4200 3300 4700 3300
Wire Wire Line
	4200 5000 4700 5000
Wire Wire Line
	2750 1600 3200 1600
$Comp
L Device:CP_Small C1
U 1 1 5E276491
P 3200 1950
F 0 "C1" H 3288 1996 50  0000 L CNN
F 1 "10µF" H 3288 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3200 1950 50  0001 C CNN
F 3 "~" H 3200 1950 50  0001 C CNN
F 4 "C7171" H 3200 1950 50  0001 C CNN "LCSC"
	1    3200 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1850 3200 1600
Connection ~ 3200 1600
Wire Wire Line
	3200 1600 3450 1600
Wire Wire Line
	3200 2050 3200 2400
Wire Wire Line
	3200 2400 4200 2400
Wire Wire Line
	4700 3750 4700 4100
Wire Wire Line
	4700 5450 4700 5800
Wire Wire Line
	2750 3300 3200 3300
Wire Wire Line
	2750 5000 3200 5000
$Comp
L Device:CP_Small C2
U 1 1 5E289D59
P 3200 3650
F 0 "C2" H 3288 3696 50  0000 L CNN
F 1 "10µF" H 3288 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3200 3650 50  0001 C CNN
F 3 "~" H 3200 3650 50  0001 C CNN
F 4 "C7171" H 3200 3650 50  0001 C CNN "LCSC"
	1    3200 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3750 3200 4100
Wire Wire Line
	3200 4100 4200 4100
$Comp
L Device:CP_Small C3
U 1 1 5E28C3D2
P 3200 5350
F 0 "C3" H 3288 5396 50  0000 L CNN
F 1 "10µF" H 3288 5305 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3200 5350 50  0001 C CNN
F 3 "~" H 3200 5350 50  0001 C CNN
F 4 "C7171" H 3200 5350 50  0001 C CNN "LCSC"
	1    3200 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5450 3200 5800
Wire Wire Line
	3200 5800 4200 5800
Connection ~ 5250 1600
Wire Wire Line
	5250 1600 9500 1600
Connection ~ 5250 3300
Connection ~ 5250 5000
Wire Wire Line
	5250 3300 5950 3300
Wire Wire Line
	6500 3600 5950 3600
Wire Wire Line
	5950 3600 5950 3300
Connection ~ 6500 3600
Wire Wire Line
	6900 4000 7050 4000
Wire Wire Line
	7050 4200 6900 4200
Text Label 10150 4100 2    50   ~ 0
+3.3v
Text Label 10150 4000 2    50   ~ 0
-5v
Text Label 10150 3900 2    50   ~ 0
+5v
Text Label 10150 3800 2    50   ~ 0
+8v
Wire Wire Line
	7050 3900 6900 3900
Wire Wire Line
	6900 3900 6900 3600
Connection ~ 6900 3600
Wire Wire Line
	6900 3600 6500 3600
$Comp
L Connector:TestPoint TP4
U 1 1 5E2ABBD7
P 8700 4300
F 0 "TP4" H 8643 4326 50  0000 R CNN
F 1 "TestPoint" H 8643 4417 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 8900 4300 50  0001 C CNN
F 3 "~" H 8900 4300 50  0001 C CNN
	1    8700 4300
	1    0    0    1   
$EndComp
Wire Wire Line
	8700 4300 8700 3900
Wire Notes Line
	8900 3450 8900 4800
Wire Notes Line
	6150 4800 8900 4800
Wire Notes Line
	6150 3450 8900 3450
$Comp
L Device:CP_Small C4
U 1 1 5E2CDF73
P 4700 1950
F 0 "C4" H 4788 1996 50  0000 L CNN
F 1 "10µF" H 4788 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4700 1950 50  0001 C CNN
F 3 "~" H 4700 1950 50  0001 C CNN
F 4 "C7171" H 4700 1950 50  0001 C CNN "LCSC"
	1    4700 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C5
U 1 1 5E2CE4B8
P 4700 3650
F 0 "C5" H 4788 3696 50  0000 L CNN
F 1 "10µF" H 4788 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4700 3650 50  0001 C CNN
F 3 "~" H 4700 3650 50  0001 C CNN
F 4 "C7171" H 4700 3650 50  0001 C CNN "LCSC"
	1    4700 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C6
U 1 1 5E2CEA99
P 4700 5350
F 0 "C6" H 4788 5396 50  0000 L CNN
F 1 "10µF" H 4788 5305 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4700 5350 50  0001 C CNN
F 3 "~" H 4700 5350 50  0001 C CNN
F 4 "C7171" H 4700 5350 50  0001 C CNN "LCSC"
	1    4700 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5E2D0D93
P 8150 4100
F 0 "C9" H 8058 4054 50  0000 R CNN
F 1 "2.2µF" H 8058 4145 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8150 4100 50  0001 C CNN
F 3 "~" H 8150 4100 50  0001 C CNN
F 4 "C23630" H 8150 4100 50  0001 C CNN "LCSC"
	1    8150 4100
	1    0    0    1   
$EndComp
Wire Wire Line
	3200 3550 3200 3300
Connection ~ 3200 3300
Wire Wire Line
	3200 3300 3450 3300
Wire Wire Line
	4700 3550 4700 3300
Connection ~ 4700 3300
Wire Wire Line
	4700 3300 5250 3300
Wire Wire Line
	4700 5250 4700 5000
Connection ~ 4700 5000
Wire Wire Line
	4700 5000 5250 5000
Wire Wire Line
	3200 5250 3200 5000
Connection ~ 3200 5000
Wire Wire Line
	3200 5000 3450 5000
Wire Wire Line
	1750 2200 2750 2200
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5E310E8A
P 1550 2200
F 0 "J1" H 1468 2417 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1468 2326 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 1550 2200 50  0001 C CNN
F 3 "~" H 1550 2200 50  0001 C CNN
	1    1550 2200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1750 2300 2250 2300
Wire Wire Line
	2250 2300 2250 2550
$Comp
L power:GND #PWR01
U 1 1 5E19C530
P 2250 2550
F 0 "#PWR01" H 2250 2300 50  0001 C CNN
F 1 "GND" H 2255 2377 50  0000 C CNN
F 2 "" H 2250 2550 50  0001 C CNN
F 3 "" H 2250 2550 50  0001 C CNN
	1    2250 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J3
U 1 1 5E323659
P 10350 3450
F 0 "J3" H 10322 3382 50  0000 R CNN
F 1 "Conn_01x05_Male" H 10322 3473 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 10350 3450 50  0001 C CNN
F 3 "~" H 10350 3450 50  0001 C CNN
	1    10350 3450
	-1   0    0    1   
$EndComp
Text Label 10150 3550 2    50   ~ 0
+3.3v
Text Label 10150 3450 2    50   ~ 0
-5v
Text Label 10150 3350 2    50   ~ 0
+5v
Text Label 10150 3250 2    50   ~ 0
+8v
Wire Wire Line
	10150 3650 9900 3650
Wire Wire Line
	9900 3650 9900 4200
Wire Wire Line
	9900 4200 10150 4200
Wire Wire Line
	10150 4100 9800 4100
Wire Wire Line
	9800 4100 9800 3550
Wire Wire Line
	9800 3550 10150 3550
Wire Wire Line
	10150 4000 9700 4000
Wire Wire Line
	9700 4000 9700 3450
Wire Wire Line
	9700 3450 10150 3450
Wire Wire Line
	10150 3900 9600 3900
Wire Wire Line
	9600 3900 9600 3350
Wire Wire Line
	9600 3350 10150 3350
Wire Wire Line
	10150 3800 9500 3800
Wire Wire Line
	9500 3800 9500 3250
Wire Wire Line
	9500 3250 10150 3250
Wire Wire Line
	9500 3250 9500 1600
Connection ~ 9500 3250
Wire Wire Line
	9800 4100 9800 5000
Wire Wire Line
	5250 5000 9800 5000
Connection ~ 9800 4100
Wire Wire Line
	9700 4000 9150 4000
Wire Wire Line
	9150 4000 9150 3900
Wire Wire Line
	9150 3900 8700 3900
Connection ~ 9700 4000
Connection ~ 8700 3900
Wire Wire Line
	5950 3300 9250 3300
Wire Wire Line
	9250 3300 9250 3900
Wire Wire Line
	9250 3900 9600 3900
Connection ~ 5950 3300
Connection ~ 9600 3900
Wire Wire Line
	9900 4350 9900 4200
Connection ~ 9900 4200
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5E38A7BA
P 1650 5150
F 0 "J4" H 1758 5331 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1758 5240 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1650 5150 50  0001 C CNN
F 3 "~" H 1650 5150 50  0001 C CNN
	1    1650 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 5E38D05F
P 1650 5550
F 0 "J5" H 1758 5731 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1758 5640 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1650 5550 50  0001 C CNN
F 3 "~" H 1650 5550 50  0001 C CNN
	1    1650 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5E38D67A
P 2050 5850
F 0 "#PWR07" H 2050 5600 50  0001 C CNN
F 1 "GND" H 2055 5677 50  0000 C CNN
F 2 "" H 2050 5850 50  0001 C CNN
F 3 "" H 2050 5850 50  0001 C CNN
	1    2050 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 5650 2050 5650
Wire Wire Line
	2050 5650 2050 5850
Wire Wire Line
	1850 5550 2050 5550
Wire Wire Line
	2050 5550 2050 5650
Connection ~ 2050 5650
Wire Wire Line
	1850 5250 2050 5250
Wire Wire Line
	2050 5250 2050 5550
Connection ~ 2050 5550
Wire Wire Line
	1850 5150 2050 5150
Wire Wire Line
	2050 5150 2050 5250
Connection ~ 2050 5250
$EndSCHEMATC
