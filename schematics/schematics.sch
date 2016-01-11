EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:attiny85
LIBS:max7219
LIBS:hx711
LIBS:4x7seg-cc
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "11 jan 2016"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L NPN Q2
U 1 1 569393C1
P 4050 5550
F 0 "Q2" H 4050 5400 50  0000 R CNN
F 1 "S8050" H 4050 5700 50  0000 R CNN
F 2 "~" H 4050 5550 60  0000 C CNN
F 3 "~" H 4050 5550 60  0000 C CNN
	1    4050 5550
	-1   0    0    -1  
$EndComp
$Comp
L PNP Q1
U 1 1 569393D0
P 2350 5000
F 0 "Q1" H 2350 4850 60  0000 R CNN
F 1 "S8550 " H 2350 5150 60  0000 R CNN
F 2 "~" H 2350 5000 60  0000 C CNN
F 3 "~" H 2350 5000 60  0000 C CNN
	1    2350 5000
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 5693A526
P 7900 3650
F 0 "R1" V 7980 3650 40  0000 C CNN
F 1 "10kΩ" V 7907 3651 40  0000 C CNN
F 2 "~" V 7830 3650 30  0000 C CNN
F 3 "~" H 7900 3650 30  0000 C CNN
	1    7900 3650
	-1   0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5693A535
P 8400 3900
F 0 "C2" H 8400 4000 40  0000 L CNN
F 1 "100nF" H 8406 3815 40  0000 L CNN
F 2 "~" H 8438 3750 30  0000 C CNN
F 3 "~" H 8400 3900 60  0000 C CNN
	1    8400 3900
	-1   0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 5693A57F
P 8650 3900
F 0 "C1" H 8700 4000 40  0000 L CNN
F 1 "10μF" H 8700 3800 40  0000 L CNN
F 2 "~" H 8750 3750 30  0000 C CNN
F 3 "~" H 8650 3900 300 0000 C CNN
	1    8650 3900
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5693A58E
P 8250 1450
F 0 "#PWR?" H 8250 1450 30  0001 C CNN
F 1 "GND" H 8250 1380 30  0001 C CNN
F 2 "" H 8250 1450 60  0000 C CNN
F 3 "" H 8250 1450 60  0000 C CNN
	1    8250 1450
	1    0    0    1   
$EndComp
NoConn ~ 8700 2700
NoConn ~ 8700 2800
NoConn ~ 8700 2900
NoConn ~ 8700 3000
$Comp
L GND #PWR?
U 1 1 5693A805
P 8400 4300
F 0 "#PWR?" H 8400 4300 30  0001 C CNN
F 1 "GND" H 8400 4230 30  0001 C CNN
F 2 "" H 8400 4300 60  0000 C CNN
F 3 "" H 8400 4300 60  0000 C CNN
	1    8400 4300
	-1   0    0    -1  
$EndComp
$Comp
L BATTERY BT1
U 1 1 5693AC72
P 1650 5400
F 0 "BT1" H 1650 5600 50  0000 C CNN
F 1 "9V BATTERY" H 1650 5210 50  0000 C CNN
F 2 "~" H 1650 5400 60  0000 C CNN
F 3 "~" H 1650 5400 60  0000 C CNN
	1    1650 5400
	0    1    1    0   
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 5693ACB8
P 4400 5000
F 0 "SW1" H 4550 5110 50  0000 C CNN
F 1 "PWR_BTN" H 4400 4920 50  0000 C CNN
F 2 "~" H 4400 5000 60  0000 C CNN
F 3 "~" H 4400 5000 60  0000 C CNN
	1    4400 5000
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 5693ACC7
P 7500 3400
F 0 "SW2" H 7650 3510 50  0000 C CNN
F 1 "RST_BTN" H 7500 3320 50  0000 C CNN
F 2 "~" H 7500 3400 60  0000 C CNN
F 3 "~" H 7500 3400 60  0000 C CNN
	1    7500 3400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5693AD48
P 7500 3850
F 0 "#PWR?" H 7500 3850 30  0001 C CNN
F 1 "GND" H 7500 3780 30  0001 C CNN
F 2 "" H 7500 3850 60  0000 C CNN
F 3 "" H 7500 3850 60  0000 C CNN
	1    7500 3850
	-1   0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5693AF6C
P 2750 4800
F 0 "R2" V 2830 4800 40  0000 C CNN
F 1 "33kΩ" V 2757 4801 40  0000 C CNN
F 2 "~" V 2680 4800 30  0000 C CNN
F 3 "~" H 2750 4800 30  0000 C CNN
	1    2750 4800
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5693AF7B
P 3250 5000
F 0 "R3" V 3330 5000 40  0000 C CNN
F 1 "3.3kΩ" V 3257 5001 40  0000 C CNN
F 2 "~" V 3180 5000 30  0000 C CNN
F 3 "~" H 3250 5000 30  0000 C CNN
	1    3250 5000
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5693AF8A
P 4600 5800
F 0 "R4" V 4680 5800 40  0000 C CNN
F 1 "100kΩ" V 4607 5801 40  0000 C CNN
F 2 "~" V 4530 5800 30  0000 C CNN
F 3 "~" H 4600 5800 30  0000 C CNN
	1    4600 5800
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5693AF99
P 5050 5550
F 0 "R5" V 5130 5550 40  0000 C CNN
F 1 "27kΩ" V 5057 5551 40  0000 C CNN
F 2 "~" V 4980 5550 30  0000 C CNN
F 3 "~" H 5050 5550 30  0000 C CNN
	1    5050 5550
	0    1    1    0   
$EndComp
$Comp
L C C4
U 1 1 5693AFA8
P 2250 5800
F 0 "C4" H 2250 5900 40  0000 L CNN
F 1 "100nF" H 2256 5715 40  0000 L CNN
F 2 "~" H 2288 5650 30  0000 C CNN
F 3 "~" H 2250 5800 60  0000 C CNN
	1    2250 5800
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5693AFB7
P 3500 5800
F 0 "C5" H 3500 5900 40  0000 L CNN
F 1 "100nF" H 3506 5715 40  0000 L CNN
F 2 "~" H 3538 5650 30  0000 C CNN
F 3 "~" H 3500 5800 60  0000 C CNN
	1    3500 5800
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5693AFC6
P 4350 5800
F 0 "C6" H 4350 5900 40  0000 L CNN
F 1 "10nF" H 4356 5715 40  0000 L CNN
F 2 "~" H 4388 5650 30  0000 C CNN
F 3 "~" H 4350 5800 60  0000 C CNN
	1    4350 5800
	1    0    0    -1  
$EndComp
$Comp
L CP C3
U 1 1 5693AFD5
P 1950 5800
F 0 "C3" H 2000 5900 40  0000 L CNN
F 1 "10μF" H 2000 5700 40  0000 L CNN
F 2 "~" H 2050 5650 30  0000 C CNN
F 3 "~" H 1950 5800 300 0000 C CNN
	1    1950 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5693B304
P 4700 5100
F 0 "#PWR?" H 4700 5100 30  0001 C CNN
F 1 "GND" H 4700 5030 30  0001 C CNN
F 2 "" H 4700 5100 60  0000 C CNN
F 3 "" H 4700 5100 60  0000 C CNN
	1    4700 5100
	1    0    0    -1  
$EndComp
$Comp
L 7805 U1
U 1 1 5693AC62
P 2950 5600
F 0 "U1" H 3100 5404 60  0000 C CNN
F 1 "7805" H 2950 5800 60  0000 C CNN
F 2 "" H 2950 5600 60  0000 C CNN
F 3 "" H 2950 5600 60  0000 C CNN
	1    2950 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5693BEE1
P 2950 6200
F 0 "#PWR?" H 2950 6200 30  0001 C CNN
F 1 "GND" H 2950 6130 30  0001 C CNN
F 2 "" H 2950 6200 60  0000 C CNN
F 3 "" H 2950 6200 60  0000 C CNN
	1    2950 6200
	1    0    0    -1  
$EndComp
Text GLabel 3500 5350 1    31   Output ~ 0
+5V
Text GLabel 8200 4250 3    31   Input ~ 0
+5V
NoConn ~ 7900 2750
$Comp
L ATTINY85 IC1
U 1 1 5693DD27
P 6700 2600
F 0 "IC1" H 6710 2480 60  0000 C CNN
F 1 "ATTINY85" H 6700 2700 60  0000 C CNN
F 2 "~" V 9300 3350 60  0000 C CNN
F 3 "~" V 9300 3350 60  0000 C CNN
	1    6700 2600
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5693DFFA
P 4100 3200
F 0 "#PWR?" H 4100 3200 30  0001 C CNN
F 1 "GND" H 4100 3130 30  0001 C CNN
F 2 "" H 4100 3200 60  0000 C CNN
F 3 "" H 4100 3200 60  0000 C CNN
	1    4100 3200
	-1   0    0    -1  
$EndComp
Text GLabel 4100 1750 1    31   Input ~ 0
+5V
Text GLabel 5750 2450 0    31   Input ~ 0
+5V
$Comp
L VR VR1
U 1 1 5693E72A
P 1900 2250
F 0 "VR1" V 1960 2204 40  0000 C TNN
F 1 "VR" V 1900 2250 40  0000 C CNN
F 2 "~" H 1900 2250 60  0000 C CNN
F 3 "~" H 1900 2250 60  0000 C CNN
	1    1900 2250
	0    1    1    0   
$EndComp
$Comp
L VR VR2
U 1 1 5693E739
P 2150 2500
F 0 "VR2" V 2210 2454 40  0000 C TNN
F 1 "VR" V 2150 2500 40  0000 C CNN
F 2 "~" H 2150 2500 60  0000 C CNN
F 3 "~" H 2150 2500 60  0000 C CNN
	1    2150 2500
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5693E748
P 1900 2750
F 0 "R6" V 1980 2750 40  0000 C CNN
F 1 "R" V 1907 2751 40  0000 C CNN
F 2 "~" V 1830 2750 30  0000 C CNN
F 3 "~" H 1900 2750 30  0000 C CNN
	1    1900 2750
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 5693E757
P 1650 2500
F 0 "R7" V 1730 2500 40  0000 C CNN
F 1 "R" V 1657 2501 40  0000 C CNN
F 2 "~" V 1580 2500 30  0000 C CNN
F 3 "~" H 1650 2500 30  0000 C CNN
	1    1650 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 2550 9450 2500
Wire Wire Line
	9450 2500 8700 2500
Wire Wire Line
	9550 2550 9550 2400
Wire Wire Line
	9550 2400 8700 2400
Wire Wire Line
	9650 2550 9650 2300
Wire Wire Line
	9650 2300 8700 2300
Wire Wire Line
	9750 2550 9750 2200
Wire Wire Line
	9750 2200 8700 2200
Wire Wire Line
	9850 2550 9850 2100
Wire Wire Line
	9850 2100 8700 2100
Wire Wire Line
	9950 2550 9950 2000
Wire Wire Line
	9950 2000 8700 2000
Wire Wire Line
	10050 2550 10050 1900
Wire Wire Line
	10050 1900 8700 1900
Wire Wire Line
	10150 2550 10150 1800
Wire Wire Line
	10150 1800 8700 1800
Wire Wire Line
	9650 3750 9100 3750
Wire Wire Line
	9100 3750 9100 3100
Wire Wire Line
	9100 3100 8700 3100
Wire Wire Line
	9000 3200 8700 3200
Wire Wire Line
	9000 3200 9000 3850
Wire Wire Line
	9000 3850 9750 3850
Wire Wire Line
	9750 3850 9750 3750
Wire Wire Line
	9850 3750 9850 3950
Wire Wire Line
	9850 3950 8900 3950
Wire Wire Line
	8900 3950 8900 3300
Wire Wire Line
	8900 3300 8700 3300
Wire Wire Line
	9950 4050 8800 4050
Wire Wire Line
	9950 4050 9950 3750
Wire Wire Line
	8800 4050 8800 3400
Wire Wire Line
	8800 3400 8700 3400
Wire Wire Line
	8150 1600 8250 1600
Wire Wire Line
	8250 1600 8250 1450
Connection ~ 8250 1600
Wire Wire Line
	8200 3950 7900 3950
Connection ~ 8200 3950
Wire Wire Line
	8200 3700 8650 3700
Connection ~ 8400 3700
Connection ~ 8200 3700
Wire Wire Line
	8650 4100 8400 4100
Wire Wire Line
	8400 4100 8400 4300
Wire Wire Line
	7500 2750 7500 3100
Wire Wire Line
	2250 5200 2250 5600
Wire Wire Line
	2550 5550 1950 5550
Wire Wire Line
	2550 5000 3000 5000
Wire Wire Line
	4100 5000 3500 5000
Wire Wire Line
	3950 5350 3950 5000
Connection ~ 3950 5000
Connection ~ 2250 5550
Wire Wire Line
	4600 6050 1650 6050
Connection ~ 2950 6050
Wire Wire Line
	3350 5550 3500 5550
Connection ~ 3500 5550
Wire Wire Line
	3950 5750 3950 6050
Wire Wire Line
	4800 5550 4250 5550
Connection ~ 4350 5550
Connection ~ 4600 5550
Wire Wire Line
	3500 5350 3500 5600
Wire Wire Line
	4700 5000 4700 5100
Wire Wire Line
	2950 5850 2950 6200
Connection ~ 4350 6050
Connection ~ 2250 6050
Connection ~ 3500 6050
Connection ~ 3950 6050
Wire Wire Line
	4350 5600 4350 5550
Wire Wire Line
	4350 6000 4350 6050
Wire Wire Line
	3500 6000 3500 6050
Wire Wire Line
	1950 5550 1950 5600
Wire Wire Line
	2250 6000 2250 6050
Wire Wire Line
	1950 6000 1950 6050
Wire Wire Line
	7500 2650 7900 2650
Wire Wire Line
	7900 2550 7500 2550
Wire Wire Line
	7500 2450 7900 2450
Connection ~ 7700 2450
Wire Wire Line
	4100 3100 4100 3200
Connection ~ 1950 6050
Connection ~ 2250 4800
Wire Wire Line
	3000 5000 3000 4800
Connection ~ 3000 5000
Wire Wire Line
	2500 4800 1650 4800
Wire Wire Line
	1650 4800 1650 5100
Wire Wire Line
	1650 6050 1650 5700
Wire Wire Line
	5900 2750 5900 5550
Wire Wire Line
	5900 5550 5300 5550
Wire Wire Line
	7900 3350 7900 3400
Wire Wire Line
	7900 3950 7900 3900
Connection ~ 8400 4100
Wire Wire Line
	8200 3600 8200 4250
Wire Wire Line
	7500 3700 7500 3850
Wire Wire Line
	2150 2250 3000 2250
Connection ~ 2150 2250
Connection ~ 1650 2250
Connection ~ 1650 2750
Connection ~ 2150 2750
Wire Wire Line
	3000 2350 2300 2350
Wire Wire Line
	2300 2350 2300 2750
Wire Wire Line
	2300 2750 2150 2750
Wire Wire Line
	3000 2450 2400 2450
Wire Wire Line
	2400 2450 2400 2850
Wire Wire Line
	2400 2850 1650 2850
Wire Wire Line
	1650 2850 1650 2750
Wire Wire Line
	3000 2550 2500 2550
Wire Wire Line
	2500 2550 2500 2950
Wire Wire Line
	2500 2950 1500 2950
Wire Wire Line
	1500 2250 1650 2250
Wire Wire Line
	1500 2950 1500 2250
Wire Wire Line
	5900 2450 5750 2450
Wire Wire Line
	4600 2300 7700 2300
Wire Wire Line
	7700 2300 7700 2450
NoConn ~ 3000 2650
NoConn ~ 3000 2750
$Comp
L MAX7219 IC2
U 1 1 5693F084
P 8400 2700
F 0 "IC2" H 8400 3750 60  0000 C CNN
F 1 "MAX7219" V 8500 2800 60  0000 C CNN
F 2 "~" H 8600 2800 60  0000 C CNN
F 3 "~" H 8600 2800 60  0000 C CNN
	1    8400 2700
	-1   0    0    -1  
$EndComp
$Comp
L HX711 U2
U 1 1 5693CAB0
P 3800 2500
F 0 "U2" H 3810 2280 60  0000 C CNN
F 1 "HX711" H 3800 2650 60  0000 C CNN
F 2 "~" V 6400 3250 60  0000 C CNN
F 3 "~" V 6400 3250 60  0000 C CNN
	1    3800 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2550 5900 2550
Wire Wire Line
	4600 2300 4600 2450
Wire Wire Line
	4100 1900 4100 1750
$Comp
L GND #PWR?
U 1 1 5693CE04
P 5600 2800
F 0 "#PWR?" H 5600 2800 30  0001 C CNN
F 1 "GND" H 5600 2730 30  0001 C CNN
F 2 "" H 5600 2800 60  0000 C CNN
F 3 "" H 5600 2800 60  0000 C CNN
	1    5600 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2650 5600 2650
Wire Wire Line
	5600 2650 5600 2800
$Comp
L 4X7SEG-CC D1
U 1 1 5693D03E
P 9800 3200
F 0 "D1" H 10250 2900 60  0000 C CNN
F 1 "4X7SEG-CC" H 9250 2900 60  0000 C CNN
F 2 "~" H 9750 3200 60  0000 C CNN
F 3 "~" H 9750 3200 60  0000 C CNN
	1    9800 3200
	1    0    0    -1  
$EndComp
$EndSCHEMATC