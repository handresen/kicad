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
Text Label 2350 1700 0    50   ~ 0
VCC
Text Label 2950 3400 0    50   ~ 0
SCL
Text Label 2950 3300 0    50   ~ 0
SDA
Text Label 2950 2300 0    50   ~ 0
MOSI
Text Label 2950 2400 0    50   ~ 0
MISO
Text Label 2950 2500 0    50   ~ 0
SCK
Text Label 2950 2200 0    50   ~ 0
SS
Text Label 2950 3900 0    50   ~ 0
REC_INT
Text Label 2950 2100 0    50   ~ 0
RSTL
$Comp
L Device:R R3
U 1 1 5B81AE44
P 6550 5100
F 0 "R3" H 6620 5146 50  0000 L CNN
F 1 "4k7" H 6620 5055 50  0000 L CNN
F 2 "halib:R_0603_Compact_hand" V 6480 5100 50  0001 C CNN
F 3 "~" H 6550 5100 50  0001 C CNN
	1    6550 5100
	1    0    0    -1  
$EndComp
Text Label 6550 4950 0    50   ~ 0
VCC
Text Label 2950 3500 0    50   ~ 0
RES
Text Label 6550 5250 0    50   ~ 0
RES
Text Label 2450 1700 0    50   ~ 0
VCC
$Comp
L HASymbols:1276Module U3
U 1 1 5B8B81DB
P 5300 2650
F 0 "U3" H 5677 2896 50  0000 L CNN
F 1 "1276Module" H 5677 2805 50  0000 L CNN
F 2 "halib:1276Module2mm" H 5050 2550 50  0001 C CNN
F 3 "" H 5050 2550 50  0001 C CNN
	1    5300 2650
	1    0    0    -1  
$EndComp
Text Label 4450 1950 0    50   ~ 0
MISO
Text Label 4450 2050 0    50   ~ 0
MOSI
Text Label 4450 2250 0    50   ~ 0
SS
Text Label 4450 2150 0    50   ~ 0
SCK
Text Label 4450 2350 0    50   ~ 0
RSTL
Text Label 4450 2450 0    50   ~ 0
REC_INT
Text Label 5100 1650 0    50   ~ 0
VCC
Text Label 5100 3500 0    50   ~ 0
GND
$Comp
L power:GND #PWR01
U 1 1 5B8B8DD2
P 9300 1500
F 0 "#PWR01" H 9300 1250 50  0001 C CNN
F 1 "GND" H 9305 1327 50  0000 C CNN
F 2 "" H 9300 1500 50  0001 C CNN
F 3 "" H 9300 1500 50  0001 C CNN
	1    9300 1500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR02
U 1 1 5B8B8E57
P 9650 1550
F 0 "#PWR02" H 9650 1400 50  0001 C CNN
F 1 "VCC" H 9667 1723 50  0000 C CNN
F 2 "" H 9650 1550 50  0001 C CNN
F 3 "" H 9650 1550 50  0001 C CNN
	1    9650 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5BB6AA26
P 6550 4600
F 0 "C1" H 6665 4646 50  0000 L CNN
F 1 "10uF" H 6665 4555 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6588 4450 50  0001 C CNN
F 3 "~" H 6550 4600 50  0001 C CNN
	1    6550 4600
	1    0    0    -1  
$EndComp
Text Label 6550 4450 0    50   ~ 0
VCC
Text Label 6550 4750 0    50   ~ 0
GND
$Comp
L Device:C C3
U 1 1 5BB735A6
P 7450 4600
F 0 "C3" H 7565 4646 50  0000 L CNN
F 1 "100n" H 7565 4555 50  0000 L CNN
F 2 "halib:C_0603_Compact_hand" H 7488 4450 50  0001 C CNN
F 3 "~" H 7450 4600 50  0001 C CNN
	1    7450 4600
	1    0    0    -1  
$EndComp
Text Label 7450 4450 0    50   ~ 0
VCC
Text Label 7450 4750 0    50   ~ 0
GND
Text Label 2950 4000 0    50   ~ 0
INT1
Text Label 2350 4700 0    50   ~ 0
GND
Text Label 2950 3700 0    50   ~ 0
RXD
Text Label 2950 3800 0    50   ~ 0
TXD
$Comp
L Device:C C2
U 1 1 5BCB9BCB
P 7000 4600
F 0 "C2" H 7115 4646 50  0000 L CNN
F 1 "100n" H 7115 4555 50  0000 L CNN
F 2 "halib:C_0603_Compact_hand" H 7038 4450 50  0001 C CNN
F 3 "~" H 7000 4600 50  0001 C CNN
	1    7000 4600
	1    0    0    -1  
$EndComp
Text Label 7000 4450 0    50   ~ 0
VCC
Text Label 7000 4750 0    50   ~ 0
GND
$Comp
L Device:C C5
U 1 1 5BCBAADC
P 8350 4600
F 0 "C5" H 8465 4646 50  0000 L CNN
F 1 "100n" H 8465 4555 50  0000 L CNN
F 2 "halib:C_0603_Compact_hand" H 8388 4450 50  0001 C CNN
F 3 "~" H 8350 4600 50  0001 C CNN
	1    8350 4600
	1    0    0    -1  
$EndComp
Text Label 8350 4450 0    50   ~ 0
VCC
Text Label 8350 4750 0    50   ~ 0
GND
$Comp
L Device:C C4
U 1 1 5BCBAAE5
P 7900 4600
F 0 "C4" H 8015 4646 50  0000 L CNN
F 1 "100n" H 8015 4555 50  0000 L CNN
F 2 "halib:C_0603_Compact_hand" H 7938 4450 50  0001 C CNN
F 3 "~" H 7900 4600 50  0001 C CNN
	1    7900 4600
	1    0    0    -1  
$EndComp
Text Label 7900 4450 0    50   ~ 0
VCC
Text Label 7900 4750 0    50   ~ 0
GND
$Comp
L Device:R R6
U 1 1 5BCBADF3
P 6950 5100
F 0 "R6" H 7020 5146 50  0000 L CNN
F 1 "4k7" H 7020 5055 50  0000 L CNN
F 2 "halib:R_0603_Compact_hand" V 6880 5100 50  0001 C CNN
F 3 "~" H 6950 5100 50  0001 C CNN
	1    6950 5100
	1    0    0    -1  
$EndComp
Text Label 6950 4950 0    50   ~ 0
VCC
Text Label 6950 5250 0    50   ~ 0
SCL
$Comp
L Device:R R7
U 1 1 5BCBAE1E
P 7350 5100
F 0 "R7" H 7420 5146 50  0000 L CNN
F 1 "4k7" H 7420 5055 50  0000 L CNN
F 2 "halib:R_0603_Compact_hand" V 7280 5100 50  0001 C CNN
F 3 "~" H 7350 5100 50  0001 C CNN
	1    7350 5100
	1    0    0    -1  
$EndComp
Text Label 7350 4950 0    50   ~ 0
VCC
Text Label 7350 5250 0    50   ~ 0
SDA
Text Label 6850 1700 0    50   ~ 0
VCC
Text Label 7050 1700 0    50   ~ 0
VCC
Text Label 6850 2900 0    50   ~ 0
GND
Text Label 7050 2900 0    50   ~ 0
GND
Text Label 7550 2600 0    50   ~ 0
VCC
Text Label 7550 2000 0    50   ~ 0
GND
$Comp
L Sensor:BME280 U4
U 1 1 5BCBBEBF
P 6950 2300
F 0 "U4" H 6520 2346 50  0000 R CNN
F 1 "BME280" H 6520 2255 50  0000 R CNN
F 2 "halib:Bme280_1mm" H 6950 2100 50  0001 C CNN
F 3 "https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BME280_DS001-11.pdf" H 6950 2100 50  0001 C CNN
	1    6950 2300
	1    0    0    -1  
$EndComp
Text Label 7550 2200 0    50   ~ 0
SCL
Text Label 7550 2400 0    50   ~ 0
SDA
Text Label 3500 3650 0    50   ~ 0
MISO
Text Label 4000 3650 0    50   ~ 0
VCC
Text Label 3500 3550 0    50   ~ 0
SCK
Text Label 4000 3550 0    50   ~ 0
MOSI
Text Label 3500 3450 0    50   ~ 0
RES
Text Label 4000 3450 0    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_02x03_Top_Bottom J2
U 1 1 5BCCEC4C
P 3700 3550
F 0 "J2" H 3750 3867 50  0000 C CNN
F 1 "Conn_02x03_Top_Bottom" H 3750 3776 50  0000 C CNN
F 2 "halib:EdgePads_FB_2x03" H 3700 3550 50  0001 C CNN
F 3 "~" H 3700 3550 50  0001 C CNN
	1    3700 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5BCCF321
P 3800 4100
F 0 "D1" H 3791 4316 50  0000 C CNN
F 1 "LED" H 3791 4225 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3800 4100 50  0001 C CNN
F 3 "~" H 3800 4100 50  0001 C CNN
	1    3800 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5BCCF3E2
P 3650 4250
F 0 "R2" H 3720 4296 50  0000 L CNN
F 1 "R400" H 3720 4205 50  0000 L CNN
F 2 "halib:R_0603_Compact_hand" V 3580 4250 50  0001 C CNN
F 3 "~" H 3650 4250 50  0001 C CNN
	1    3650 4250
	1    0    0    -1  
$EndComp
Text Label 2950 3100 0    50   ~ 0
LED
Text Label 3950 4100 0    50   ~ 0
LED
Text Label 3650 4400 0    50   ~ 0
GND
Text Label 9650 1550 0    50   ~ 0
VCC
Text Label 9300 1500 0    50   ~ 0
GND
$Comp
L HASymbols:TPL5111 U2
U 1 1 5BCF9D1F
P 6800 3900
F 0 "U2" H 6800 4665 50  0000 C CNN
F 1 "TPL5110" H 6800 4574 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6" H 7250 3850 50  0001 C CNN
F 3 "" H 7250 3850 50  0001 C CNN
	1    6800 3900
	1    0    0    -1  
$EndComp
Text Label 6450 3400 0    50   ~ 0
VCC
Text Label 6450 3550 0    50   ~ 0
GND
$Comp
L Device:R R1
U 1 1 5BCF9EBA
P 6950 5600
F 0 "R1" H 6880 5554 50  0000 R CNN
F 1 "10k" H 6880 5645 50  0000 R CNN
F 2 "halib:R_0603_Compact_hand" V 6880 5600 50  0001 C CNN
F 3 "~" H 6950 5600 50  0001 C CNN
	1    6950 5600
	-1   0    0    1   
$EndComp
Text Label 7150 3700 0    50   ~ 0
EN_RST
Text Label 7150 3600 0    50   ~ 0
INT1
Text Label 6950 5450 0    50   ~ 0
GND
Text Label 2950 4100 0    50   ~ 0
SIG_DONE
Text Label 7150 3500 0    50   ~ 0
SIG_DONE
$Comp
L Device:Antenna AE1
U 1 1 5BD8D18C
P 9350 2100
F 0 "AE1" H 9430 2091 50  0000 L CNN
F 1 "Antenna" H 9430 2000 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 9350 2100 50  0001 C CNN
F 3 "~" H 9350 2100 50  0001 C CNN
	1    9350 2100
	1    0    0    -1  
$EndComp
Text Label 4450 3050 0    50   ~ 0
ANA
Text Label 9350 2300 0    50   ~ 0
ANA
$Comp
L Device:C C6
U 1 1 5BD8E570
P 8800 4600
F 0 "C6" H 8915 4646 50  0000 L CNN
F 1 "100n" H 8915 4555 50  0000 L CNN
F 2 "halib:C_0603_Compact_hand" H 8838 4450 50  0001 C CNN
F 3 "~" H 8800 4600 50  0001 C CNN
	1    8800 4600
	1    0    0    -1  
$EndComp
Text Label 8800 4450 0    50   ~ 0
VCC
Text Label 8800 4750 0    50   ~ 0
GND
$Comp
L Device:R R4
U 1 1 5C4DBF98
P 6550 5600
F 0 "R4" H 6620 5646 50  0000 L CNN
F 1 "4k7" H 6620 5555 50  0000 L CNN
F 2 "halib:R_0603_Compact_hand" V 6480 5600 50  0001 C CNN
F 3 "~" H 6550 5600 50  0001 C CNN
	1    6550 5600
	1    0    0    -1  
$EndComp
Text Label 6550 5450 0    50   ~ 0
VCC
Text Label 6550 5750 0    50   ~ 0
INT1
Text Label 2950 4200 0    50   ~ 0
PD5
Text Label 3750 2200 0    50   ~ 0
INT1
Text Label 3750 2000 0    50   ~ 0
GND
Text Label 3750 2100 0    50   ~ 0
TXD
Text Label 7150 3400 0    50   ~ 0
T_DEL
Text Label 6950 5750 0    50   ~ 0
T_DEL
$Comp
L Device:Battery_Cell BT1
U 1 1 5C96335D
P 4750 5300
F 0 "BT1" H 4868 5396 50  0000 L CNN
F 1 "CR2032" H 4868 5305 50  0000 L CNN
F 2 "halib:2032-SMD_COMPACT" V 4750 5360 50  0001 C CNN
F 3 "~" V 4750 5360 50  0001 C CNN
	1    4750 5300
	1    0    0    -1  
$EndComp
Text Label 4750 5100 0    50   ~ 0
VCC
Text Label 4750 5400 0    50   ~ 0
GND
$Comp
L Device:R R5
U 1 1 5E12CE0D
P 6200 5600
F 0 "R5" H 6270 5646 50  0000 L CNN
F 1 "4k7" H 6270 5555 50  0000 L CNN
F 2 "halib:R_0603_Compact_hand" V 6130 5600 50  0001 C CNN
F 3 "~" H 6200 5600 50  0001 C CNN
	1    6200 5600
	1    0    0    -1  
$EndComp
Text Label 6200 5750 0    50   ~ 0
INT1
Text Label 6200 5450 0    50   ~ 0
GND
$Comp
L Device:Battery_Cell BT2
U 1 1 5E152B34
P 4150 5300
F 0 "BT2" H 4268 5396 50  0000 L CNN
F 1 "CR123" H 4268 5305 50  0000 L CNN
F 2 "halib:CR123Holder" V 4150 5360 50  0001 C CNN
F 3 "~" V 4150 5360 50  0001 C CNN
	1    4150 5300
	1    0    0    -1  
$EndComp
Text Label 4150 5100 0    50   ~ 0
VCC
Text Label 4150 5400 0    50   ~ 0
GND
Text Label 2950 4300 0    50   ~ 0
PD6
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U1
U 1 1 5E154146
P 2350 3200
F 0 "U1" H 2350 1611 50  0000 C CNN
F 1 "ATmega328P-AU" H 2350 1520 50  0000 C CNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 2350 3200 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 2350 3200 50  0001 C CNN
	1    2350 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5E18AD03
P 6200 5100
F 0 "R8" H 6270 5146 50  0000 L CNN
F 1 "100k" H 6270 5055 50  0000 L CNN
F 2 "halib:R_0603_Compact_hand" V 6130 5100 50  0001 C CNN
F 3 "~" H 6200 5100 50  0001 C CNN
	1    6200 5100
	1    0    0    -1  
$EndComp
Text Label 6200 5250 0    50   ~ 0
SS
Text Label 6200 4950 0    50   ~ 0
VCC
Text Label 4450 2550 0    50   ~ 0
D1
Text Label 4450 2650 0    50   ~ 0
D2
Text Label 2950 3000 0    50   ~ 0
D1
Text Label 2950 2900 0    50   ~ 0
D2
Text Label 3750 1900 0    50   ~ 0
VCC
$Comp
L Device:R R9
U 1 1 5E5D9B17
P 5800 5100
F 0 "R9" H 5870 5146 50  0000 L CNN
F 1 "4k7" H 5870 5055 50  0000 L CNN
F 2 "halib:R_0603_Compact_hand" V 5730 5100 50  0001 C CNN
F 3 "~" H 5800 5100 50  0001 C CNN
	1    5800 5100
	1    0    0    -1  
$EndComp
Text Label 5800 4950 0    50   ~ 0
VCC
Text Label 5800 5250 0    50   ~ 0
EN_RST
$Comp
L Device:R R10
U 1 1 5E5DA028
P 5800 5600
F 0 "R10" H 5870 5646 50  0000 L CNN
F 1 "100" H 5870 5555 50  0000 L CNN
F 2 "halib:R_0603_Compact_hand" V 5730 5600 50  0001 C CNN
F 3 "~" H 5800 5600 50  0001 C CNN
	1    5800 5600
	1    0    0    -1  
$EndComp
Text Label 5800 5750 0    50   ~ 0
EN_RST
Text Label 5800 5450 0    50   ~ 0
RES
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 5E5EF889
P 3550 2000
F 0 "J1" H 3658 2281 50  0000 C CNN
F 1 "Conn_01x04_Male" H 3658 2190 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 3550 2000 50  0001 C CNN
F 3 "~" H 3550 2000 50  0001 C CNN
	1    3550 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5E60BB98
P 9200 4600
F 0 "C7" H 9315 4646 50  0000 L CNN
F 1 "100n" H 9315 4555 50  0000 L CNN
F 2 "halib:C_0603_Compact_hand" H 9238 4450 50  0001 C CNN
F 3 "~" H 9200 4600 50  0001 C CNN
	1    9200 4600
	1    0    0    -1  
$EndComp
Text Label 9200 4450 0    50   ~ 0
VCC
Text Label 9200 4750 0    50   ~ 0
GND
$EndSCHEMATC
