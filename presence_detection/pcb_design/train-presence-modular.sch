EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
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
S 5100 2200 1100 1500
U 60A16D53
F0 "sheet60A16D49" 50
F1 "sniffer_quad.sch" 50
F2 "Track1" I B 5300 3700 50 
F3 "Track2" I B 5500 3700 50 
F4 "Track3" I B 5700 3700 50 
F5 "Track4" I B 5900 3700 50 
F6 "Presence1" I T 5300 2200 50 
F7 "Presence2" I T 5500 2200 50 
F8 "Presence3" I T 5700 2200 50 
F9 "Presence4" I T 5900 2200 50 
$EndSheet
$Comp
L Connector:Screw_Terminal_01x08 J2
U 1 1 60A22C29
P 4950 4600
F 0 "J2" V 5050 4600 50  0000 R CNN
F 1 "Screw_Terminal_01x08" V 5100 4950 50  0000 R CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-8-5.08_1x08_P5.08mm_Horizontal" H 4950 4600 50  0001 C CNN
F 3 "~" H 4950 4600 50  0001 C CNN
	1    4950 4600
	0    -1   1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 60A2F53F
P 6300 4600
F 0 "J4" V 6400 4500 50  0000 L CNN
F 1 "Screw_Terminal_01x02" V 6450 4100 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 6300 4600 50  0001 C CNN
F 3 "~" H 6300 4600 50  0001 C CNN
	1    6300 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 4400 4000 4400
Wire Wire Line
	4000 4400 4000 3700
Wire Wire Line
	4750 4400 4750 4250
Wire Wire Line
	4750 4250 4200 4250
Wire Wire Line
	4200 4250 4200 3700
Wire Wire Line
	4400 3700 4400 4100
Wire Wire Line
	4400 4100 4850 4100
Wire Wire Line
	4850 4100 4850 4400
Wire Wire Line
	4950 4400 4950 3950
Wire Wire Line
	4950 3950 4600 3950
Wire Wire Line
	4600 3950 4600 3700
Wire Wire Line
	5050 4400 5050 3950
Wire Wire Line
	5050 3950 5300 3950
Wire Wire Line
	5300 3950 5300 3700
Wire Wire Line
	5150 4400 5150 4100
Wire Wire Line
	5150 4100 5500 4100
Wire Wire Line
	5500 4100 5500 3700
Wire Wire Line
	5250 4400 5250 4250
Wire Wire Line
	5250 4250 5700 4250
Wire Wire Line
	5700 4250 5700 3700
Wire Wire Line
	5350 4400 5900 4400
Wire Wire Line
	5900 4400 5900 3700
Wire Wire Line
	6200 4400 6250 4400
Text GLabel 6250 4250 1    50   Input ~ 0
Booster
Wire Wire Line
	6250 4250 6250 4400
Connection ~ 6250 4400
Wire Wire Line
	6250 4400 6300 4400
$Comp
L Connector:Conn_01x08_Female J1
U 1 1 60A48B23
P 4900 1350
F 0 "J1" V 5065 1280 50  0000 C CNN
F 1 "Conn_01x08_Female" V 4974 1280 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 4900 1350 50  0001 C CNN
F 3 "~" H 4900 1350 50  0001 C CNN
	1    4900 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 2200 4200 1650
Wire Wire Line
	4200 1650 4700 1650
Wire Wire Line
	4700 1650 4700 1550
Wire Wire Line
	4400 2200 4400 1750
Wire Wire Line
	4400 1750 4800 1750
Wire Wire Line
	4800 1750 4800 1550
Wire Wire Line
	4600 2200 4600 1850
Wire Wire Line
	4600 1850 4900 1850
Wire Wire Line
	4900 1850 4900 1550
Wire Wire Line
	5000 1550 5000 1850
Wire Wire Line
	5000 1850 5300 1850
Wire Wire Line
	5300 1850 5300 2200
Wire Wire Line
	5100 1550 5100 1750
Wire Wire Line
	5100 1750 5500 1750
Wire Wire Line
	5500 1750 5500 2200
Wire Wire Line
	5700 2200 5700 1650
Wire Wire Line
	5700 1650 5200 1650
Wire Wire Line
	5200 1650 5200 1550
Wire Wire Line
	5300 1550 5900 1550
Wire Wire Line
	4000 1550 4600 1550
Wire Wire Line
	4000 2200 4000 1550
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 60A62625
P 6200 1350
F 0 "J3" V 6138 1162 50  0000 R CNN
F 1 "Conn_01x02_Female" V 6047 1162 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 6200 1350 50  0001 C CNN
F 3 "~" H 6200 1350 50  0001 C CNN
	1    6200 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 1550 5900 2200
$Sheet
S 3750 2200 1100 1500
U 60F22492
F0 "Quad_Sniffer1" 50
F1 "sniffer_quad.sch" 50
F2 "Track1" I B 4000 3700 50 
F3 "Track2" I B 4200 3700 50 
F4 "Track3" I B 4400 3700 50 
F5 "Track4" I B 4600 3700 50 
F6 "Presence1" I T 4000 2200 50 
F7 "Presence2" I T 4200 2200 50 
F8 "Presence3" I T 4400 2200 50 
F9 "Presence4" I T 4600 2200 50 
$EndSheet
Wire Wire Line
	6200 1550 6300 1550
Text GLabel 6250 1550 3    50   Input ~ 0
LogicReference
$EndSCHEMATC
