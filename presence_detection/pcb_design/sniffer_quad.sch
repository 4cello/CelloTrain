EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 5906 5315
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
S 1950 1500 800  400 
U 609F734F
F0 "Sniffer2" 50
F1 "sniffer.sch" 50
F2 "Track" I L 1950 1700 50 
F3 "Coupler" I R 2750 1700 50 
$EndSheet
$Sheet
S 1950 2100 800  400 
U 609F73C6
F0 "Sniffer3" 50
F1 "sniffer.sch" 50
F2 "Track" I L 1950 2300 50 
F3 "Coupler" I R 2750 2300 50 
$EndSheet
$Sheet
S 1950 2700 800  400 
U 609F7500
F0 "Sniffer4" 50
F1 "sniffer.sch" 50
F2 "Track" I L 1950 2900 50 
F3 "Coupler" I R 2750 2900 50 
$EndSheet
$Comp
L Isolator:LTV-844 U1
U 1 1 609FBB06
P 3550 1150
AR Path="/60F22492/609FBB06" Ref="U1"  Part="1" 
AR Path="/60A16D53/609FBB06" Ref="U2"  Part="1" 
AR Path="/60A173BB/609FBB06" Ref="U3"  Part="1" 
AR Path="/60A17A6B/609FBB06" Ref="U4"  Part="1" 
F 0 "U1" H 3550 1475 50  0000 C CNN
F 1 "LTV-844" H 3550 1384 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3350 950 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS-70-96-0013/S_110_LTV-814%20824%20844%20(M,%20S,%20S-TA,%20S-TA1,%20S-TP)%20Series.pdf" H 3575 1150 50  0001 L CNN
	1    3550 1150
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-844 U1
U 2 1 609FE345
P 3550 1700
AR Path="/60F22492/609FE345" Ref="U1"  Part="2" 
AR Path="/60A16D53/609FE345" Ref="U2"  Part="2" 
AR Path="/60A173BB/609FE345" Ref="U3"  Part="2" 
AR Path="/60A17A6B/609FE345" Ref="U4"  Part="2" 
F 0 "U1" H 3550 2025 50  0000 C CNN
F 1 "LTV-844" H 3550 1934 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3350 1500 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS-70-96-0013/S_110_LTV-814%20824%20844%20(M,%20S,%20S-TA,%20S-TA1,%20S-TP)%20Series.pdf" H 3575 1700 50  0001 L CNN
	2    3550 1700
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-844 U1
U 3 1 60A019CB
P 3550 2300
AR Path="/60F22492/60A019CB" Ref="U1"  Part="3" 
AR Path="/60A16D53/60A019CB" Ref="U2"  Part="3" 
AR Path="/60A173BB/60A019CB" Ref="U3"  Part="3" 
AR Path="/60A17A6B/60A019CB" Ref="U4"  Part="3" 
F 0 "U1" H 3550 2625 50  0000 C CNN
F 1 "LTV-844" H 3550 2534 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3350 2100 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS-70-96-0013/S_110_LTV-814%20824%20844%20(M,%20S,%20S-TA,%20S-TA1,%20S-TP)%20Series.pdf" H 3575 2300 50  0001 L CNN
	3    3550 2300
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-844 U1
U 4 1 60A03D62
P 3550 2900
AR Path="/60F22492/60A03D62" Ref="U1"  Part="4" 
AR Path="/60A16D53/60A03D62" Ref="U2"  Part="4" 
AR Path="/60A173BB/60A03D62" Ref="U3"  Part="4" 
AR Path="/60A17A6B/60A03D62" Ref="U4"  Part="4" 
F 0 "U1" H 3550 3225 50  0000 C CNN
F 1 "LTV-844" H 3550 3134 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3350 2700 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS-70-96-0013/S_110_LTV-814%20824%20844%20(M,%20S,%20S-TA,%20S-TA1,%20S-TP)%20Series.pdf" H 3575 2900 50  0001 L CNN
	4    3550 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1150 2900 1150
Wire Wire Line
	2900 1150 2900 1050
Wire Wire Line
	2900 1050 3250 1050
Wire Wire Line
	2750 1700 2900 1700
Wire Wire Line
	2900 1700 2900 1600
Wire Wire Line
	2900 1600 3250 1600
Wire Wire Line
	2950 2300 2950 2200
Wire Wire Line
	2950 2200 3250 2200
Wire Wire Line
	2750 2300 2950 2300
Wire Wire Line
	2750 2900 2950 2900
Wire Wire Line
	2950 2900 2950 2800
Wire Wire Line
	2950 2800 3250 2800
Text GLabel 3250 1250 0    50   Input ~ 0
Booster
Text GLabel 3250 1800 0    50   Input ~ 0
Booster
Text GLabel 3250 2400 0    50   Input ~ 0
Booster
Text GLabel 3250 3000 0    50   Input ~ 0
Booster
Wire Wire Line
	1950 1150 1550 1150
Wire Wire Line
	1950 1700 1550 1700
Wire Wire Line
	1950 2300 1550 2300
Wire Wire Line
	1950 2900 1550 2900
Wire Wire Line
	3850 1050 4000 1050
Wire Wire Line
	3850 1600 4000 1600
Wire Wire Line
	3850 2200 4000 2200
Wire Wire Line
	3850 2800 4000 2800
Text HLabel 1550 1150 0    50   Input ~ 0
Track1
Text HLabel 1550 1700 0    50   Input ~ 0
Track2
Text HLabel 1550 2300 0    50   Input ~ 0
Track3
Text HLabel 1550 2900 0    50   Input ~ 0
Track4
Text HLabel 4000 1050 2    50   Input ~ 0
Presence1
Text HLabel 4000 1600 2    50   Input ~ 0
Presence2
Text HLabel 4000 2200 2    50   Input ~ 0
Presence3
Text HLabel 4000 2800 2    50   Input ~ 0
Presence4
$Sheet
S 1950 950  800  400 
U 60F225B5
F0 "Sniffer1" 50
F1 "sniffer.sch" 50
F2 "Track" I L 1950 1150 50 
F3 "Coupler" I R 2750 1150 50 
$EndSheet
Text GLabel 3850 1250 2    50   Input ~ 0
LogicReference
Text GLabel 3850 1800 2    50   Input ~ 0
LogicReference
Text GLabel 3850 2400 2    50   Input ~ 0
LogicReference
Text GLabel 3850 3000 2    50   Input ~ 0
LogicReference
$EndSCHEMATC
