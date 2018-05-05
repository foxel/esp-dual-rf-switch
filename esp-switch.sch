EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
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
LIBS:sensors
LIBS:ESP8266
LIBS:triac_ttg
LIBS:hlk-pm05
LIBS:esp-switch-cache
EELAYER 25 0
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
L ATTINY441-SSU U1
U 1 1 59CBD50A
P 2550 1700
F 0 "U1" H 1700 2450 50  0000 C CNN
F 1 "ATTINY441-SSU" H 3250 950 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 2550 1500 50  0001 C CIN
F 3 "" H 2550 1700 50  0001 C CNN
	1    2550 1700
	1    0    0    -1  
$EndComp
$Comp
L ESP-01v090 U2
U 1 1 59CBD699
P 5100 2850
F 0 "U2" H 5100 2750 50  0000 C CNN
F 1 "ESP-01v090" H 5100 2950 50  0000 C CNN
F 2 "ESP8266:ESP-01" H 5100 2850 50  0001 C CNN
F 3 "" H 5100 2850 50  0001 C CNN
	1    5100 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 59CBDBC1
P 1200 2500
F 0 "#PWR01" H 1200 2250 50  0001 C CNN
F 1 "GND" H 1200 2350 50  0000 C CNN
F 2 "" H 1200 2500 50  0001 C CNN
F 3 "" H 1200 2500 50  0001 C CNN
	1    1200 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 59CBDD84
P 6500 2800
F 0 "#PWR02" H 6500 2550 50  0001 C CNN
F 1 "GND" H 6500 2650 50  0000 C CNN
F 2 "" H 6500 2800 50  0001 C CNN
F 3 "" H 6500 2800 50  0001 C CNN
	1    6500 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 59CBE133
P 7350 1900
F 0 "#PWR03" H 7350 1650 50  0001 C CNN
F 1 "GND" H 7350 1750 50  0000 C CNN
F 2 "" H 7350 1900 50  0001 C CNN
F 3 "" H 7350 1900 50  0001 C CNN
	1    7350 1900
	1    0    0    -1  
$EndComp
$Comp
L MOC3041M U3
U 1 1 5A12EA5D
P 8650 3000
F 0 "U3" H 8450 3200 50  0000 L CNN
F 1 "MOC3041M" H 8650 3200 50  0000 L CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 8450 2800 50  0001 L CIN
F 3 "" H 8615 3000 50  0001 L CNN
	1    8650 3000
	1    0    0    -1  
$EndComp
NoConn ~ 7800 2750
$Comp
L LED D1
U 1 1 5A12EBCD
P 7950 2850
F 0 "D1" H 7950 2950 50  0000 C CNN
F 1 "LED" H 7950 2750 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 7950 2850 50  0001 C CNN
F 3 "" H 7950 2850 50  0001 C CNN
	1    7950 2850
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 5A12ECC7
P 7950 3450
F 0 "R1" V 8030 3450 50  0000 C CNN
F 1 "470R" V 7950 3450 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 7880 3450 50  0001 C CNN
F 3 "" H 7950 3450 50  0001 C CNN
	1    7950 3450
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5A12ED7C
P 8300 3450
F 0 "R3" V 8380 3450 50  0000 C CNN
F 1 "470R" V 8300 3450 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 8230 3450 50  0001 C CNN
F 3 "" H 8300 3450 50  0001 C CNN
	1    8300 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5A12EDB6
P 8100 3850
F 0 "#PWR04" H 8100 3600 50  0001 C CNN
F 1 "GND" H 8100 3700 50  0000 C CNN
F 2 "" H 8100 3850 50  0001 C CNN
F 3 "" H 8100 3850 50  0001 C CNN
	1    8100 3850
	1    0    0    -1  
$EndComp
$Comp
L TRIAC_TTG D3
U 1 1 5A12F072
P 9500 3000
F 0 "D3" H 9625 3025 50  0000 L CNN
F 1 "BT137" H 9625 2950 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" V 9575 3025 50  0001 C CNN
F 3 "" V 9500 3000 50  0001 C CNN
	1    9500 3000
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5A12F124
P 9250 2550
F 0 "R5" V 9330 2550 50  0000 C CNN
F 1 "390R" V 9250 2550 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P5.08mm_Vertical" V 9180 2550 50  0001 C CNN
F 3 "" H 9250 2550 50  0001 C CNN
	1    9250 2550
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5A12F2D1
P 9250 3400
F 0 "R6" V 9330 3400 50  0000 C CNN
F 1 "470R" V 9250 3400 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P7.62mm_Vertical" V 9180 3400 50  0001 C CNN
F 3 "" H 9250 3400 50  0001 C CNN
	1    9250 3400
	0    1    1    0   
$EndComp
$Comp
L MOC3041M U4
U 1 1 5A132A8B
P 8650 4850
F 0 "U4" H 8450 5050 50  0000 L CNN
F 1 "MOC3041M" H 8650 5050 50  0000 L CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 8450 4650 50  0001 L CIN
F 3 "" H 8615 4850 50  0001 L CNN
	1    8650 4850
	1    0    0    -1  
$EndComp
NoConn ~ 7800 4600
$Comp
L LED D2
U 1 1 5A132A92
P 7950 4700
F 0 "D2" H 7950 4800 50  0000 C CNN
F 1 "LED" H 7950 4600 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 7950 4700 50  0001 C CNN
F 3 "" H 7950 4700 50  0001 C CNN
	1    7950 4700
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 5A132A98
P 7950 5300
F 0 "R2" V 8030 5300 50  0000 C CNN
F 1 "470R" V 7950 5300 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 7880 5300 50  0001 C CNN
F 3 "" H 7950 5300 50  0001 C CNN
	1    7950 5300
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5A132A9E
P 8300 5300
F 0 "R4" V 8380 5300 50  0000 C CNN
F 1 "470R" V 8300 5300 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 8230 5300 50  0001 C CNN
F 3 "" H 8300 5300 50  0001 C CNN
	1    8300 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5A132AA4
P 8100 5700
F 0 "#PWR05" H 8100 5450 50  0001 C CNN
F 1 "GND" H 8100 5550 50  0000 C CNN
F 2 "" H 8100 5700 50  0001 C CNN
F 3 "" H 8100 5700 50  0001 C CNN
	1    8100 5700
	1    0    0    -1  
$EndComp
$Comp
L TRIAC_TTG D4
U 1 1 5A132AB3
P 9500 4850
F 0 "D4" H 9625 4875 50  0000 L CNN
F 1 "BT137" H 9625 4800 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" V 9575 4875 50  0001 C CNN
F 3 "" V 9500 4850 50  0001 C CNN
	1    9500 4850
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5A132AB9
P 9250 4400
F 0 "R7" V 9330 4400 50  0000 C CNN
F 1 "390R" V 9250 4400 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P5.08mm_Vertical" V 9180 4400 50  0001 C CNN
F 3 "" H 9250 4400 50  0001 C CNN
	1    9250 4400
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 5A132AC2
P 9250 5250
F 0 "R8" V 9330 5250 50  0000 C CNN
F 1 "470R" V 9250 5250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P7.62mm_Vertical" V 9180 5250 50  0001 C CNN
F 3 "" H 9250 5250 50  0001 C CNN
	1    9250 5250
	0    1    1    0   
$EndComp
$Comp
L Conn_01x04 J4
U 1 1 5A557EC8
P 6850 3400
F 0 "J4" H 6850 3600 50  0000 C CNN
F 1 "Conn_01x04" H 6850 3100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 6850 3400 50  0001 C CNN
F 3 "" H 6850 3400 50  0001 C CNN
	1    6850 3400
	-1   0    0    -1  
$EndComp
$Comp
L HLK-PM05 U5
U 1 1 5A55884C
P 9450 1550
F 0 "U5" H 9300 1700 40  0000 C CNN
F 1 "HLK-PM03" H 9450 1400 40  0000 C CNN
F 2 "Power_Supply:HLK-PM05" H 8550 2900 60  0001 C CNN
F 3 "" H 8550 2900 60  0000 C CNN
	1    9450 1550
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5A55918B
P 9050 1700
F 0 "#PWR06" H 9050 1450 50  0001 C CNN
F 1 "GND" H 9050 1550 50  0000 C CNN
F 2 "" H 9050 1700 50  0001 C CNN
F 3 "" H 9050 1700 50  0001 C CNN
	1    9050 1700
	1    0    0    -1  
$EndComp
$Comp
L RF_Receiver_EV1527 RF1
U 1 1 5A625B90
P 7750 1050
F 0 "RF1" H 7900 1350 60  0000 C CNN
F 1 "RF_Receiver_EV1527" H 7750 1500 60  0000 C CNN
F 2 "footprints:RF_Receiver_Decoder" H 7650 1050 60  0001 C CNN
F 3 "" H 7650 1050 60  0001 C CNN
	1    7750 1050
	1    0    0    -1  
$EndComp
NoConn ~ 8150 1300
$Comp
L CP_Small C1
U 1 1 5A669960
P 8750 1550
F 0 "C1" H 8760 1620 50  0000 L CNN
F 1 "CP_Small" H 8760 1470 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D4.0mm_P2.00mm" H 8750 1550 50  0001 C CNN
F 3 "" H 8750 1550 50  0001 C CNN
	1    8750 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5A669AF1
P 8750 1700
F 0 "#PWR07" H 8750 1450 50  0001 C CNN
F 1 "GND" H 8750 1550 50  0000 C CNN
F 2 "" H 8750 1700 50  0001 C CNN
F 3 "" H 8750 1700 50  0001 C CNN
	1    8750 1700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR08
U 1 1 5A6DF18D
P 8750 1350
F 0 "#PWR08" H 8750 1200 50  0001 C CNN
F 1 "+3.3V" H 8750 1490 50  0000 C CNN
F 2 "" H 8750 1350 50  0001 C CNN
F 3 "" H 8750 1350 50  0001 C CNN
	1    8750 1350
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR09
U 1 1 5A6DF2D7
P 9050 1450
F 0 "#PWR09" H 9050 1300 50  0001 C CNN
F 1 "+3.3V" H 9050 1590 50  0000 C CNN
F 2 "" H 9050 1450 50  0001 C CNN
F 3 "" H 9050 1450 50  0001 C CNN
	1    9050 1450
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR010
U 1 1 5A6DF347
P 7100 900
F 0 "#PWR010" H 7100 750 50  0001 C CNN
F 1 "+3.3V" H 7100 1040 50  0000 C CNN
F 2 "" H 7100 900 50  0001 C CNN
F 3 "" H 7100 900 50  0001 C CNN
	1    7100 900 
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR011
U 1 1 5A6DFFEC
P 7400 3350
F 0 "#PWR011" H 7400 3200 50  0001 C CNN
F 1 "+3.3V" H 7400 3490 50  0000 C CNN
F 2 "" H 7400 3350 50  0001 C CNN
F 3 "" H 7400 3350 50  0001 C CNN
	1    7400 3350
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR012
U 1 1 5A6E0C46
P 4050 2500
F 0 "#PWR012" H 4050 2350 50  0001 C CNN
F 1 "+3.3V" H 4050 2640 50  0000 C CNN
F 2 "" H 4050 2500 50  0001 C CNN
F 3 "" H 4050 2500 50  0001 C CNN
	1    4050 2500
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR013
U 1 1 5A6E1A62
P 1200 750
F 0 "#PWR013" H 1200 600 50  0001 C CNN
F 1 "+3.3V" H 1200 890 50  0000 C CNN
F 2 "" H 1200 750 50  0001 C CNN
F 3 "" H 1200 750 50  0001 C CNN
	1    1200 750 
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J2
U 1 1 5A635AA5
P 4750 750
F 0 "J2" H 4750 950 50  0000 C CNN
F 1 "Conn_01x04" H 4750 450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 4750 750 50  0001 C CNN
F 3 "" H 4750 750 50  0001 C CNN
	1    4750 750 
	1    0    0    -1  
$EndComp
$Comp
L Fuse_Small F1
U 1 1 5A136B02
P 10150 3550
F 0 "F1" H 10150 3490 50  0000 C CNN
F 1 "Fuse_Small" H 10150 3610 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 10150 3550 50  0001 C CNN
F 3 "" H 10150 3550 50  0001 C CNN
	1    10150 3550
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_01x03 J1
U 1 1 5A55A532
P 10650 3650
F 0 "J1" H 10650 3850 50  0000 C CNN
F 1 "Screw_Terminal_01x03" H 10650 3450 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-3pol" H 10650 3650 50  0001 C CNN
F 3 "" H 10650 3650 50  0001 C CNN
	1    10650 3650
	1    0    0    1   
$EndComp
$Comp
L Screw_Terminal_01x03 J3
U 1 1 5AEEDF87
P 10600 2050
F 0 "J3" H 10600 2250 50  0000 C CNN
F 1 "Screw_Terminal_01x03" H 10600 1850 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-3pol" H 10600 2050 50  0001 C CNN
F 3 "" H 10600 2050 50  0001 C CNN
	1    10600 2050
	1    0    0    1   
$EndComp
$Comp
L +3.3V #PWR014
U 1 1 5AEF4831
P 6300 700
F 0 "#PWR014" H 6300 550 50  0001 C CNN
F 1 "+3.3V" H 6300 840 50  0000 C CNN
F 2 "" H 6300 700 50  0001 C CNN
F 3 "" H 6300 700 50  0001 C CNN
	1    6300 700 
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5AEF60B4
P 6300 850
F 0 "R9" V 6380 850 50  0000 C CNN
F 1 "10K" V 6300 850 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 6230 850 50  0001 C CNN
F 3 "" H 6300 850 50  0001 C CNN
	1    6300 850 
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 2700 3950 2700
Wire Wire Line
	3600 1300 6700 1300
Wire Wire Line
	6200 3000 6050 3000
Wire Wire Line
	1200 2300 1500 2300
Wire Wire Line
	1200 1100 1200 750 
Wire Wire Line
	6050 2700 6500 2700
Wire Wire Line
	6500 2700 6500 2800
Wire Wire Line
	4150 3000 4050 3000
Wire Wire Line
	7950 3600 7950 3750
Wire Wire Line
	7350 3750 8300 3750
Wire Wire Line
	8300 3750 8300 3600
Wire Wire Line
	8100 3750 8100 3850
Connection ~ 8100 3750
Wire Wire Line
	7950 3000 7950 3300
Wire Wire Line
	8300 3300 8300 3100
Wire Wire Line
	8350 2550 8350 2900
Wire Wire Line
	7150 2550 8350 2550
Wire Wire Line
	8950 2900 9000 2900
Wire Wire Line
	9000 2900 9000 2550
Wire Wire Line
	9000 2550 9100 2550
Wire Wire Line
	9000 3100 9000 3400
Wire Wire Line
	9000 3400 9100 3400
Connection ~ 9000 3100
Wire Wire Line
	8300 3100 8350 3100
Wire Wire Line
	7950 2700 7950 2550
Connection ~ 7950 2550
Wire Wire Line
	9350 3100 8950 3100
Wire Wire Line
	9500 3150 9500 3400
Connection ~ 9500 3400
Wire Wire Line
	9500 2550 9500 2850
Connection ~ 9500 2550
Wire Wire Line
	7950 5450 7950 5600
Wire Wire Line
	7950 5600 8300 5600
Wire Wire Line
	8300 5600 8300 5450
Wire Wire Line
	8100 5600 8100 5700
Connection ~ 8100 5600
Wire Wire Line
	7950 4850 7950 5150
Wire Wire Line
	8300 5150 8300 4950
Wire Wire Line
	8350 4400 8350 4750
Wire Wire Line
	6700 4400 8350 4400
Wire Wire Line
	8950 4750 9000 4750
Wire Wire Line
	9000 4750 9000 4400
Wire Wire Line
	9000 4400 9100 4400
Wire Wire Line
	9000 4950 9000 5250
Wire Wire Line
	9000 5250 9100 5250
Connection ~ 9000 4950
Wire Wire Line
	8300 4950 8350 4950
Wire Wire Line
	7950 4550 7950 4400
Connection ~ 7950 4400
Wire Wire Line
	9350 4950 8950 4950
Wire Wire Line
	9500 5000 9500 5250
Connection ~ 9500 5250
Wire Wire Line
	9500 4400 9500 4700
Connection ~ 9500 4400
Wire Wire Line
	9900 5250 9400 5250
Wire Wire Line
	9400 2550 9850 2550
Wire Wire Line
	9650 4400 9400 4400
Wire Wire Line
	7150 3300 7050 3300
Wire Wire Line
	7150 2000 7150 3300
Wire Wire Line
	7050 3400 7150 3400
Wire Wire Line
	7150 3400 7150 4400
Wire Wire Line
	7050 3600 7350 3600
Wire Wire Line
	7350 3600 7350 3750
Connection ~ 7950 3750
Wire Wire Line
	7050 3500 7400 3500
Wire Wire Line
	7400 3500 7400 3350
Wire Wire Line
	9750 1600 10250 1600
Wire Wire Line
	9150 1600 9050 1600
Wire Wire Line
	9050 1600 9050 1700
Wire Wire Line
	9150 1500 9050 1500
Wire Wire Line
	9050 1500 9050 1450
Wire Wire Line
	1200 2300 1200 2500
Wire Wire Line
	1200 1100 1500 1100
Wire Wire Line
	9900 3400 9400 3400
Wire Wire Line
	9650 2550 9650 4400
Wire Wire Line
	10050 3550 9650 3550
Connection ~ 9650 3550
Wire Wire Line
	10250 3550 10450 3550
Wire Wire Line
	9900 3400 9900 3650
Wire Wire Line
	9900 3650 10450 3650
Wire Wire Line
	9900 5250 9900 3750
Wire Wire Line
	9900 3750 10450 3750
Wire Wire Line
	6200 3000 6200 3300
Wire Wire Line
	6200 3300 3850 3300
Wire Wire Line
	3600 1200 6600 1200
Wire Wire Line
	3600 1600 4150 1600
Wire Wire Line
	3600 1700 6200 1700
Wire Wire Line
	4050 3000 4050 2500
Wire Wire Line
	3600 1100 6500 1100
Wire Wire Line
	3600 1400 7550 1400
Wire Wire Line
	7950 1800 3600 1800
Wire Wire Line
	7350 1300 7350 1900
Wire Wire Line
	3600 2000 7150 2000
Connection ~ 7150 2550
Wire Wire Line
	3600 2100 6700 2100
Wire Wire Line
	6700 2100 6700 4400
Connection ~ 7150 4400
Wire Wire Line
	4150 2800 4050 2800
Connection ~ 4050 2800
Wire Wire Line
	4150 2900 4050 2900
Connection ~ 4050 2900
Wire Wire Line
	6200 1700 6200 2800
Wire Wire Line
	6200 2800 6050 2800
Wire Wire Line
	8750 1650 8750 1700
Wire Wire Line
	8750 1350 8750 1450
Wire Wire Line
	3850 3300 3850 1600
Connection ~ 3850 1600
Wire Wire Line
	3950 2700 3950 1500
Connection ~ 3950 1500
Wire Wire Line
	4100 1500 3600 1500
Wire Wire Line
	7450 1300 7100 1300
Wire Wire Line
	7100 1300 7100 900 
Wire Wire Line
	7550 1400 7550 1300
Wire Wire Line
	6700 1300 6700 1500
Wire Wire Line
	6700 1500 7650 1500
Wire Wire Line
	7650 1500 7650 1300
Wire Wire Line
	6600 1200 6600 1600
Wire Wire Line
	6600 1600 7750 1600
Wire Wire Line
	7750 1600 7750 1300
Wire Wire Line
	6500 1100 6500 1700
Wire Wire Line
	6500 1700 7850 1700
Wire Wire Line
	7850 1700 7850 1300
Connection ~ 4200 1700
Wire Wire Line
	8050 2200 3600 2200
Wire Wire Line
	8050 1300 8050 2200
Wire Wire Line
	7950 1300 7950 1800
Wire Wire Line
	4250 2300 4250 950 
Wire Wire Line
	4200 1700 4200 850 
Wire Wire Line
	4150 1600 4150 750 
Wire Wire Line
	4100 1500 4100 650 
Wire Wire Line
	4250 950  4550 950 
Wire Wire Line
	4200 850  4550 850 
Wire Wire Line
	4150 750  4550 750 
Wire Wire Line
	4100 650  4550 650 
Wire Wire Line
	6300 2900 6050 2900
Wire Wire Line
	9850 2550 9850 1500
Connection ~ 9650 2550
Wire Wire Line
	9850 1500 9750 1500
Wire Wire Line
	10250 1600 10250 2150
Wire Wire Line
	10250 1950 10400 1950
Wire Wire Line
	10250 2050 10400 2050
Connection ~ 10250 1950
Wire Wire Line
	10250 2150 10400 2150
Connection ~ 10250 2050
Connection ~ 4250 2300
Wire Wire Line
	3600 2300 6300 2300
Connection ~ 6300 2300
Wire Wire Line
	6300 1000 6300 2900
$EndSCHEMATC
