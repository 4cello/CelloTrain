EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 11
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
S 4400 3900 800  400 
U 609F734F
F0 "Sniffer2" 50
F1 "sniffer.sch" 50
F2 "Track" I L 4400 4100 50 
F3 "Coupler" I R 5200 4100 50 
$EndSheet
$Sheet
S 4400 4500 800  400 
U 609F73C6
F0 "Sniffer3" 50
F1 "sniffer.sch" 50
F2 "Track" I L 4400 4700 50 
F3 "Coupler" I R 5200 4700 50 
$EndSheet
$Sheet
S 4400 5100 800  400 
U 609F7500
F0 "Sniffer4" 50
F1 "sniffer.sch" 50
F2 "Track" I L 4400 5300 50 
F3 "Coupler" I R 5200 5300 50 
$EndSheet
$Comp
L Isolator:LTV-844 U1
U 1 1 609FBB06
P 6000 3550
AR Path="/60F22492/609FBB06" Ref="U1"  Part="1" 
AR Path="/60A16D53/609FBB06" Ref="U2"  Part="1" 
AR Path="/60A173BB/609FBB06" Ref="U3"  Part="1" 
AR Path="/60A17A6B/609FBB06" Ref="U4"  Part="1" 
F 0 "U1" H 6000 3875 50  0000 C CNN
F 1 "LTV-844" H 6000 3784 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5800 3350 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS-70-96-0013/S_110_LTV-814%20824%20844%20(M,%20S,%20S-TA,%20S-TA1,%20S-TP)%20Series.pdf" H 6025 3550 50  0001 L CNN
	1    6000 3550
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-844 U1
U 2 1 609FE345
P 6000 4100
AR Path="/60F22492/609FE345" Ref="U1"  Part="2" 
AR Path="/60A16D53/609FE345" Ref="U2"  Part="2" 
AR Path="/60A173BB/609FE345" Ref="U3"  Part="2" 
AR Path="/60A17A6B/609FE345" Ref="U4"  Part="2" 
F 0 "U1" H 6000 4425 50  0000 C CNN
F 1 "LTV-844" H 6000 4334 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5800 3900 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS-70-96-0013/S_110_LTV-814%20824%20844%20(M,%20S,%20S-TA,%20S-TA1,%20S-TP)%20Series.pdf" H 6025 4100 50  0001 L CNN
	2    6000 4100
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-844 U1
U 3 1 60A019CB
P 6000 4700
AR Path="/60F22492/60A019CB" Ref="U1"  Part="3" 
AR Path="/60A16D53/60A019CB" Ref="U2"  Part="3" 
AR Path="/60A173BB/60A019CB" Ref="U3"  Part="3" 
AR Path="/60A17A6B/60A019CB" Ref="U4"  Part="3" 
F 0 "U1" H 6000 5025 50  0000 C CNN
F 1 "LTV-844" H 6000 4934 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5800 4500 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS-70-96-0013/S_110_LTV-814%20824%20844%20(M,%20S,%20S-TA,%20S-TA1,%20S-TP)%20Series.pdf" H 6025 4700 50  0001 L CNN
	3    6000 4700
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-844 U1
U 4 1 60A03D62
P 6000 5300
AR Path="/60F22492/60A03D62" Ref="U1"  Part="4" 
AR Path="/60A16D53/60A03D62" Ref="U2"  Part="4" 
AR Path="/60A173BB/60A03D62" Ref="U3"  Part="4" 
AR Path="/60A17A6B/60A03D62" Ref="U4"  Part="4" 
F 0 "U1" H 6000 5625 50  0000 C CNN
F 1 "LTV-844" H 6000 5534 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5800 5100 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS-70-96-0013/S_110_LTV-814%20824%20844%20(M,%20S,%20S-TA,%20S-TA1,%20S-TP)%20Series.pdf" H 6025 5300 50  0001 L CNN
	4    6000 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3550 5350 3550
Wire Wire Line
	5350 3550 5350 3450
Wire Wire Line
	5350 3450 5700 3450
Wire Wire Line
	5200 4100 5350 4100
Wire Wire Line
	5350 4100 5350 4000
Wire Wire Line
	5350 4000 5700 4000
Wire Wire Line
	5400 4700 5400 4600
Wire Wire Line
	5400 4600 5700 4600
Wire Wire Line
	5200 4700 5400 4700
Wire Wire Line
	5200 5300 5400 5300
Wire Wire Line
	5400 5300 5400 5200
Wire Wire Line
	5400 5200 5700 5200
Text GLabel 5700 3650 0    50   Input ~ 0
Booster
Text GLabel 5700 4200 0    50   Input ~ 0
Booster
Text GLabel 5700 4800 0    50   Input ~ 0
Booster
Text GLabel 5700 5400 0    50   Input ~ 0
Booster
Wire Wire Line
	4400 3550 4000 3550
Wire Wire Line
	4400 4100 4000 4100
Wire Wire Line
	4400 4700 4000 4700
Wire Wire Line
	4400 5300 4000 5300
Wire Wire Line
	6300 3450 6450 3450
Wire Wire Line
	6300 4000 6450 4000
Wire Wire Line
	6300 4600 6450 4600
Wire Wire Line
	6300 5200 6450 5200
Text HLabel 4000 3550 0    50   Input ~ 0
Track1
Text HLabel 4000 4100 0    50   Input ~ 0
Track2
Text HLabel 4000 4700 0    50   Input ~ 0
Track3
Text HLabel 4000 5300 0    50   Input ~ 0
Track4
Text HLabel 6450 3450 2    50   Input ~ 0
Presence1
Text HLabel 6450 4000 2    50   Input ~ 0
Presence2
Text HLabel 6450 4600 2    50   Input ~ 0
Presence3
Text HLabel 6450 5200 2    50   Input ~ 0
Presence4
$Sheet
S 4400 3350 800  400 
U 60F225B5
F0 "Sniffer1" 50
F1 "sniffer.sch" 50
F2 "Track" I L 4400 3550 50 
F3 "Coupler" I R 5200 3550 50 
$EndSheet
Text GLabel 6300 3650 2    50   Input ~ 0
LogicReference
Text GLabel 6300 4200 2    50   Input ~ 0
LogicReference
Text GLabel 6300 4800 2    50   Input ~ 0
LogicReference
Text GLabel 6300 5400 2    50   Input ~ 0
LogicReference
$EndSCHEMATC
