EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 5906 5315
encoding utf-8
Sheet 1 11
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2050 1950 1500 1100
U 60A16D53
F0 "sheet60A16D49" 50
F1 "sniffer_quad.sch" 50
F2 "Track1" I L 2050 2150 50 
F3 "Track2" I L 2050 2350 50 
F4 "Track3" I L 2050 2550 50 
F5 "Track4" I L 2050 2750 50 
F6 "Presence1" I R 3550 2150 50 
F7 "Presence2" I R 3550 2350 50 
F8 "Presence3" I R 3550 2550 50 
F9 "Presence4" I R 3550 2750 50 
$EndSheet
$Comp
L Connector:Screw_Terminal_01x08 J2
U 1 1 60A22C29
P 1150 1800
F 0 "J2" V 1250 1800 50  0000 R CNN
F 1 "Screw_Terminal_01x08" V 1300 2150 50  0000 R CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-8-5.08_1x08_P5.08mm_Horizontal" H 1150 1800 50  0001 C CNN
F 3 "~" H 1150 1800 50  0001 C CNN
	1    1150 1800
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 60A2F53F
P 1150 3150
F 0 "J4" V 1250 3050 50  0000 L CNN
F 1 "Screw_Terminal_01x02" V 1300 2650 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 1150 3150 50  0001 C CNN
F 3 "~" H 1150 3150 50  0001 C CNN
	1    1150 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 1500 1350 850 
Wire Wire Line
	1350 850  2050 850 
Wire Wire Line
	1350 1600 1500 1600
Wire Wire Line
	1500 1600 1500 1050
Wire Wire Line
	1500 1050 2050 1050
Wire Wire Line
	2050 1250 1650 1250
Wire Wire Line
	1650 1250 1650 1700
Wire Wire Line
	1650 1700 1350 1700
Wire Wire Line
	1350 1800 1800 1800
Wire Wire Line
	1800 1800 1800 1450
Wire Wire Line
	1800 1450 2050 1450
Wire Wire Line
	1350 1900 1800 1900
Wire Wire Line
	1800 1900 1800 2150
Wire Wire Line
	1800 2150 2050 2150
Wire Wire Line
	1350 2000 1650 2000
Wire Wire Line
	1650 2000 1650 2350
Wire Wire Line
	1650 2350 2050 2350
Wire Wire Line
	1350 2100 1500 2100
Wire Wire Line
	1500 2100 1500 2550
Wire Wire Line
	1500 2550 2050 2550
Wire Wire Line
	1350 2200 1350 2750
Wire Wire Line
	1350 2750 2050 2750
Wire Wire Line
	1350 3050 1350 3100
Text GLabel 1500 3100 2    50   Input ~ 0
Booster
Wire Wire Line
	1500 3100 1350 3100
Connection ~ 1350 3100
Wire Wire Line
	1350 3100 1350 3150
$Comp
L Connector:Conn_01x08_Female J1
U 1 1 60A48B23
P 4400 1750
F 0 "J1" V 4565 1680 50  0000 C CNN
F 1 "Conn_01x08_Female" V 4474 1680 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 4400 1750 50  0001 C CNN
F 3 "~" H 4400 1750 50  0001 C CNN
	1    4400 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1050 4100 1050
Wire Wire Line
	4100 1050 4100 1550
Wire Wire Line
	4100 1550 4200 1550
Wire Wire Line
	3550 1250 4000 1250
Wire Wire Line
	4000 1250 4000 1650
Wire Wire Line
	4000 1650 4200 1650
Wire Wire Line
	3550 1450 3900 1450
Wire Wire Line
	3900 1450 3900 1750
Wire Wire Line
	3900 1750 4200 1750
Wire Wire Line
	4200 1850 3900 1850
Wire Wire Line
	3900 1850 3900 2150
Wire Wire Line
	3900 2150 3550 2150
Wire Wire Line
	4200 1950 4000 1950
Wire Wire Line
	4000 1950 4000 2350
Wire Wire Line
	4000 2350 3550 2350
Wire Wire Line
	3550 2550 4100 2550
Wire Wire Line
	4100 2550 4100 2050
Wire Wire Line
	4100 2050 4200 2050
Wire Wire Line
	4200 2150 4200 2750
Wire Wire Line
	4200 850  4200 1450
Wire Wire Line
	3550 850  4200 850 
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 60A62625
P 4400 3050
F 0 "J3" V 4400 3200 50  0000 R CNN
F 1 "Conn_01x02_Female" V 4500 3650 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4400 3050 50  0001 C CNN
F 3 "~" H 4400 3050 50  0001 C CNN
	1    4400 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2750 3550 2750
$Sheet
S 2050 600  1500 1100
U 60F22492
F0 "Quad_Sniffer1" 50
F1 "sniffer_quad.sch" 50
F2 "Track1" I L 2050 850 50 
F3 "Track2" I L 2050 1050 50 
F4 "Track3" I L 2050 1250 50 
F5 "Track4" I L 2050 1450 50 
F6 "Presence1" I R 3550 850 50 
F7 "Presence2" I R 3550 1050 50 
F8 "Presence3" I R 3550 1250 50 
F9 "Presence4" I R 3550 1450 50 
$EndSheet
Wire Wire Line
	4200 3050 4200 3150
Text GLabel 4200 3100 0    50   Input ~ 0
LogicReference
$EndSCHEMATC
