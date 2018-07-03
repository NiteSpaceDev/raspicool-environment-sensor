EESchema Schematic File Version 2
LIBS:ESP32-footprints-Shem-Lib
LIBS:4xxx
LIBS:4xxx_IEEE
LIBS:74xGxx
LIBS:74xx
LIBS:74xx_IEEE
LIBS:Amplifier_Audio
LIBS:Amplifier_Buffer
LIBS:Amplifier_Current
LIBS:Amplifier_Difference
LIBS:Amplifier_Instrumentation
LIBS:Amplifier_Operational
LIBS:Amplifier_Video
LIBS:Analog
LIBS:Analog_ADC
LIBS:Analog_DAC
LIBS:Analog_Switch
LIBS:Audio
LIBS:Battery_Management
LIBS:Comparator
LIBS:Connector
LIBS:Connector_Generic
LIBS:Connector_Generic_MountingPin
LIBS:Connector_Generic_Shielded
LIBS:Converter_ACDC
LIBS:Converter_DCDC
LIBS:CPLD_Altera
LIBS:CPLD_Xilinx
LIBS:CPU
LIBS:CPU_NXP_6800
LIBS:CPU_NXP_68000
LIBS:CPU_PowerPC
LIBS:Device
LIBS:Diode
LIBS:Diode_Bridge
LIBS:Diode_Laser
LIBS:Display_Character
LIBS:Display_Graphic
LIBS:Driver_Display
LIBS:Driver_FET
LIBS:Driver_LED
LIBS:Driver_Motor
LIBS:Driver_Relay
LIBS:DSP_Freescale
LIBS:DSP_Microchip_DSPIC33
LIBS:DSP_Motorola
LIBS:DSP_Texas
LIBS:Filter
LIBS:FPGA_Microsemi
LIBS:FPGA_Xilinx
LIBS:FPGA_Xilinx_Artix7
LIBS:FPGA_Xilinx_Kintex7
LIBS:FPGA_Xilinx_Spartan6
LIBS:FPGA_Xilinx_Virtex5
LIBS:FPGA_Xilinx_Virtex6
LIBS:FPGA_Xilinx_Virtex7
LIBS:GPU
LIBS:Graphic
LIBS:Interface
LIBS:Interface_CAN_LIN
LIBS:Interface_CurrentLoop
LIBS:Interface_Ethernet
LIBS:Interface_Expansion
LIBS:Interface_HID
LIBS:Interface_LineDriver
LIBS:Interface_Optical
LIBS:Interface_Telecom
LIBS:Interface_UART
LIBS:Interface_USB
LIBS:Isolator
LIBS:Isolator_Analog
LIBS:Jumper
LIBS:LED
LIBS:Logic_LevelTranslator
LIBS:Logic_Programmable
LIBS:MCU_AnalogDevices
LIBS:MCU_Cypress
LIBS:MCU_Espressif
LIBS:MCU_Intel
LIBS:MCU_Microchip_8051
LIBS:MCU_Microchip_ATmega
LIBS:MCU_Microchip_ATtiny
LIBS:MCU_Microchip_AVR
LIBS:MCU_Microchip_PIC10
LIBS:MCU_Microchip_PIC12
LIBS:MCU_Microchip_PIC16
LIBS:MCU_Microchip_PIC18
LIBS:MCU_Microchip_PIC24
LIBS:MCU_Microchip_PIC32
LIBS:MCU_Microchip_SAME
LIBS:MCU_Microchip_SAML
LIBS:MCU_Module
LIBS:MCU_Nordic
LIBS:MCU_NXP_ColdFire
LIBS:MCU_NXP_HC11
LIBS:MCU_NXP_HC12
LIBS:MCU_NXP_HCS12
LIBS:MCU_NXP_Kinetis
LIBS:MCU_NXP_LPC
LIBS:MCU_NXP_MAC7100
LIBS:MCU_NXP_MCore
LIBS:MCU_NXP_S08
LIBS:MCU_Parallax
LIBS:MCU_SiFive
LIBS:MCU_SiliconLabs
LIBS:MCU_ST_STM8
LIBS:MCU_ST_STM32F0
LIBS:MCU_ST_STM32F1
LIBS:MCU_ST_STM32F2
LIBS:MCU_ST_STM32F3
LIBS:MCU_ST_STM32F4
LIBS:MCU_ST_STM32F7
LIBS:MCU_ST_STM32H7
LIBS:MCU_ST_STM32L0
LIBS:MCU_ST_STM32L1
LIBS:MCU_ST_STM32L4
LIBS:MCU_ST_STM32L4+
LIBS:MCU_Texas
LIBS:MCU_Texas_MSP430
LIBS:Mechanical
LIBS:Memory_Controller
LIBS:Memory_EEPROM
LIBS:Memory_EPROM
LIBS:Memory_Flash
LIBS:Memory_NVRAM
LIBS:Memory_RAM
LIBS:Memory_ROM
LIBS:Memory_UniqueID
LIBS:Motor
LIBS:Oscillator
LIBS:Potentiometer_Digital
LIBS:power
LIBS:Power_Management
LIBS:Power_Protection
LIBS:Power_Supervisor
LIBS:pspice
LIBS:Reference_Current
LIBS:Reference_Voltage
LIBS:Regulator_Controller
LIBS:Regulator_Current
LIBS:Regulator_Linear
LIBS:Regulator_SwitchedCapacitor
LIBS:Regulator_Switching
LIBS:Relay
LIBS:Relay_SolidState
LIBS:RF
LIBS:RF_AM_FM
LIBS:RF_Amplifier
LIBS:RF_Bluetooth
LIBS:RF_GPS
LIBS:RF_Mixer
LIBS:RF_Module
LIBS:RF_RFID
LIBS:RF_Switch
LIBS:RF_WiFi
LIBS:RF_ZigBee
LIBS:Sensor
LIBS:Sensor_Audio
LIBS:Sensor_Current
LIBS:Sensor_Gas
LIBS:Sensor_Humidity
LIBS:Sensor_Magnetic
LIBS:Sensor_Motion
LIBS:Sensor_Optical
LIBS:Sensor_Pressure
LIBS:Sensor_Proximity
LIBS:Sensor_Temperature
LIBS:Sensor_Touch
LIBS:Sensor_Voltage
LIBS:Switch
LIBS:Timer
LIBS:Timer_PLL
LIBS:Timer_RTC
LIBS:Transformer
LIBS:Transistor_Array
LIBS:Transistor_BJT
LIBS:Transistor_FET
LIBS:Transistor_IGBT
LIBS:Triac_Thyristor
LIBS:Valve
LIBS:Video
LIBS:AP2112K-3.3TRG1
LIBS:sensor-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Rapicool Environment Sensor"
Date ""
Rev ""
Comp "https://github.com/nitespacedev/raspicool-environment-sensor"
Comment1 ""
Comment2 "SPI / I2C expansion pads setup for 1mm spacing, may be left unpopulated"
Comment3 ""
Comment4 "ESP32-WROOM based environment sensor"
$EndDescr
$Comp
L ESP32-WROOM U2
U 1 1 5B259CAF
P 5050 3050
F 0 "U2" H 4350 4300 60  0000 C CNN
F 1 "ESP32-WROOM" H 5550 4300 60  0000 C CNN
F 2 "ESP32-footprints-Lib:ESP32-WROOM" H 5400 4400 60  0001 C CNN
F 3 "" H 4600 3500 60  0001 C CNN
	1    5050 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5B25A5F0
P 4600 4100
F 0 "#PWR01" H 4600 3850 50  0001 C CNN
F 1 "GND" H 4600 3950 50  0000 C CNN
F 2 "" H 4600 4100 50  0001 C CNN
F 3 "" H 4600 4100 50  0001 C CNN
	1    4600 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5B25A612
P 6100 3600
F 0 "#PWR02" H 6100 3350 50  0001 C CNN
F 1 "GND" H 6100 3450 50  0000 C CNN
F 2 "" H 6100 3600 50  0001 C CNN
F 3 "" H 6100 3600 50  0001 C CNN
	1    6100 3600
	0    -1   -1   0   
$EndComp
Text GLabel 3400 1400 0    60   Input ~ 0
VCC
$Comp
L BME280 U3
U 1 1 5B353EC2
P 5900 6600
F 0 "U3" H 6200 7100 50  0000 C CNN
F 1 "BME280" H 6200 6100 50  0000 C CNN
F 2 "Housings_LGA:Bosch_LGA-8_2.5x2.5mm_Pitch0.65mm_ClockwisePinNumbering" H 5900 6400 50  0001 C CNN
F 3 "" H 5900 6400 50  0001 C CNN
	1    5900 6600
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5B356DBF
P 6300 7300
F 0 "#PWR03" H 6300 7050 50  0001 C CNN
F 1 "GND" H 6300 7150 50  0000 C CNN
F 2 "" H 6300 7300 50  0001 C CNN
F 3 "" H 6300 7300 50  0001 C CNN
	1    6300 7300
	1    0    0    -1  
$EndComp
Text GLabel 6300 5900 2    60   Input ~ 0
VCC
Text GLabel 3850 2850 0    60   Input ~ 0
bsense
NoConn ~ 4800 4100
NoConn ~ 4900 4100
NoConn ~ 5000 4100
NoConn ~ 5100 4100
NoConn ~ 5200 4100
NoConn ~ 5300 4100
Text GLabel 3850 3250 0    60   Input ~ 0
spi1_clk
Text GLabel 3350 3350 0    60   Input ~ 0
spi1_mosi
Text GLabel 3850 3450 0    60   Input ~ 0
spi1_miso
Text GLabel 3350 2950 0    60   Input ~ 0
spi1_ssa
Text GLabel 3850 3050 0    60   Input ~ 0
spi1_ssb
Text GLabel 3350 3150 0    60   Input ~ 0
spi1_ssc
$Comp
L C C5
U 1 1 5B39873B
P 3800 1750
F 0 "C5" H 3825 1850 50  0000 L CNN
F 1 "10uF" H 3825 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 3838 1600 50  0001 C CNN
F 3 "" H 3800 1750 50  0001 C CNN
	1    3800 1750
	0    1    1    0   
$EndComp
$Comp
L C C6
U 1 1 5B3987C4
P 3800 2050
F 0 "C6" H 3825 2150 50  0000 L CNN
F 1 "0.1uF" H 3825 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 3838 1900 50  0001 C CNN
F 3 "" H 3800 2050 50  0001 C CNN
	1    3800 2050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 5B39883B
P 3950 2200
F 0 "#PWR04" H 3950 1950 50  0001 C CNN
F 1 "GND" H 3950 2050 50  0000 C CNN
F 2 "" H 3950 2200 50  0001 C CNN
F 3 "" H 3950 2200 50  0001 C CNN
	1    3950 2200
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5B3988B3
P 2900 2150
F 0 "C4" H 2925 2250 50  0000 L CNN
F 1 "0.1uF" H 2925 2050 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 2938 2000 50  0001 C CNN
F 3 "" H 2900 2150 50  0001 C CNN
	1    2900 2150
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5B398961
P 3100 1900
F 0 "R3" V 3180 1900 50  0000 C CNN
F 1 "10k" V 3100 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_1210" V 3030 1900 50  0001 C CNN
F 3 "" H 3100 1900 50  0001 C CNN
	1    3100 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5B398DC8
P 2550 2150
F 0 "#PWR05" H 2550 1900 50  0001 C CNN
F 1 "GND" H 2550 2000 50  0000 C CNN
F 2 "" H 2550 2150 50  0001 C CNN
F 3 "" H 2550 2150 50  0001 C CNN
	1    2550 2150
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5B3A6753
P 1850 6650
F 0 "C1" H 1875 6750 50  0000 L CNN
F 1 "1uF" H 1875 6550 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 1888 6500 50  0001 C CNN
F 3 "" H 1850 6650 50  0001 C CNN
	1    1850 6650
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5B3A675C
P 1250 7050
F 0 "R2" V 1330 7050 50  0000 C CNN
F 1 "R" V 1250 7050 50  0000 C CNN
F 2 "Resistors_SMD:R_1210" V 1180 7050 50  0001 C CNN
F 3 "" H 1250 7050 50  0001 C CNN
	1    1250 7050
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5B3A6769
P 1250 6650
F 0 "R1" V 1330 6650 50  0000 C CNN
F 1 "R" V 1250 6650 50  0000 C CNN
F 2 "Resistors_SMD:R_1210" V 1180 6650 50  0001 C CNN
F 3 "" H 1250 6650 50  0001 C CNN
	1    1250 6650
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5B3A6788
P 3700 6700
F 0 "C3" H 3725 6800 50  0000 L CNN
F 1 "1uF" H 3725 6600 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 3738 6550 50  0001 C CNN
F 3 "" H 3700 6700 50  0001 C CNN
	1    3700 6700
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5B3A678F
P 3350 6700
F 0 "C2" H 3375 6800 50  0000 L CNN
F 1 "10uF" H 3375 6600 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 3388 6550 50  0001 C CNN
F 3 "" H 3350 6700 50  0001 C CNN
	1    3350 6700
	1    0    0    -1  
$EndComp
$Comp
L 1N5819 D1
U 1 1 5B3A6796
P 1550 6500
F 0 "D1" H 1550 6600 50  0000 C CNN
F 1 "1N5819" H 1550 6400 50  0000 C CNN
F 2 "Diodes_SMD:D_SMA" H 1550 6325 50  0001 C CNN
F 3 "" H 1550 6500 50  0001 C CNN
	1    1550 6500
	-1   0    0    1   
$EndComp
$Comp
L Battery BT1
U 1 1 5B3A679D
P 1050 6700
F 0 "BT1" H 1150 6800 50  0000 L CNN
F 1 "Battery" H 1150 6700 50  0000 L CNN
F 2 "Connectors_JST:JST_EH_B02B-EH-A_02x2.50mm_Straight" V 1050 6760 50  0001 C CNN
F 3 "" V 1050 6760 50  0001 C CNN
	1    1050 6700
	-1   0    0    -1  
$EndComp
$Comp
L AP2112K-3.3TRG1 U1
U 1 1 5B3A67A9
P 2650 6700
AR Path="/5B3A67A9" Ref="U1"  Part="1" 
AR Path="/5B39C8B7/5B3A67A9" Ref="U?"  Part="1" 
F 0 "U1" H 2348 7041 50  0000 L BNN
F 1 "AP2112K-3.3TRG1" H 2349 6241 50  0000 L BNN
F 2 "AP2112K-3.3TRG1:SOT95P285X140-5N" H 2650 6700 50  0001 L BNN
F 3 "Diodes Inc." H 2650 6700 50  0001 L BNN
F 4 "SOT-753 Diodes Inc." H 2650 6700 50  0001 L BNN "Field4"
F 5 "AP2112 Series 0.6 A 3.3 V Fixed Output SMT LDO Linear Regulator - SOT23-5" H 2650 6700 50  0001 L BNN "Field5"
F 6 "0.19 USD" H 2650 6700 50  0001 L BNN "Field6"
F 7 "AP2112K-3.3TRG1" H 2650 6700 50  0001 L BNN "Field7"
F 8 "Good" H 2650 6700 50  0001 L BNN "Field8"
	1    2650 6700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5B3A67B5
P 1850 7200
F 0 "#PWR06" H 1850 6950 50  0001 C CNN
F 1 "GND" H 1850 7050 50  0000 C CNN
F 2 "" H 1850 7200 50  0001 C CNN
F 3 "" H 1850 7200 50  0001 C CNN
	1    1850 7200
	1    0    0    -1  
$EndComp
Text GLabel 3850 6550 2    60   Input ~ 0
VCC
Text GLabel 1350 6850 2    60   Input ~ 0
bsense
Text Notes 3000 7500 2    60   ~ 0
Power In - Li-Ion battery, 4.2v peak
$Comp
L GND #PWR07
U 1 1 5B39DC63
P 5250 6300
F 0 "#PWR07" H 5250 6050 50  0001 C CNN
F 1 "GND" H 5250 6150 50  0000 C CNN
F 2 "" H 5250 6300 50  0001 C CNN
F 3 "" H 5250 6300 50  0001 C CNN
	1    5250 6300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR08
U 1 1 5B39DDFF
P 5900 5500
F 0 "#PWR08" H 5900 5250 50  0001 C CNN
F 1 "GND" H 5900 5350 50  0000 C CNN
F 2 "" H 5900 5500 50  0001 C CNN
F 3 "" H 5900 5500 50  0001 C CNN
	1    5900 5500
	-1   0    0    1   
$EndComp
$Comp
L C C7
U 1 1 5B39DE2F
P 5800 5700
F 0 "C7" H 5825 5800 50  0000 L CNN
F 1 "100nF" H 5825 5600 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 5838 5550 50  0001 C CNN
F 3 "" H 5800 5700 50  0001 C CNN
	1    5800 5700
	-1   0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 5B39E3B9
P 6000 5700
F 0 "C8" H 6025 5800 50  0000 L CNN
F 1 "100nF" H 6025 5600 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 6038 5550 50  0001 C CNN
F 3 "" H 6000 5700 50  0001 C CNN
	1    6000 5700
	1    0    0    -1  
$EndComp
Text GLabel 5100 6500 0    60   Input ~ 0
iic1_clk
Text GLabel 5100 6700 0    60   Input ~ 0
iic1_sda
Text GLabel 5150 7050 3    60   Input ~ 0
VCC
$Comp
L R R4
U 1 1 5B39F02D
P 4850 6400
F 0 "R4" V 4930 6400 50  0000 C CNN
F 1 "4.7k" V 4850 6400 50  0000 C CNN
F 2 "Resistors_SMD:R_1210" V 4780 6400 50  0001 C CNN
F 3 "" H 4850 6400 50  0001 C CNN
	1    4850 6400
	0    1    -1   0   
$EndComp
$Comp
L R R5
U 1 1 5B39F079
P 4850 6800
F 0 "R5" V 4930 6800 50  0000 C CNN
F 1 "4.7k" V 4850 6800 50  0000 C CNN
F 2 "Resistors_SMD:R_1210" V 4780 6800 50  0001 C CNN
F 3 "" H 4850 6800 50  0001 C CNN
	1    4850 6800
	0    1    1    0   
$EndComp
Text Notes 4700 7600 0    60   ~ 0
BME280 Built-in sensor\nI2C connection, always powered
Text GLabel 7500 5750 0    60   Input ~ 0
VCC
Text GLabel 7500 5850 0    60   Input ~ 0
iic1_clk
Text GLabel 7500 5950 0    60   Input ~ 0
iic1_sda
$Comp
L GND #PWR09
U 1 1 5B3A6B3D
P 7350 6050
F 0 "#PWR09" H 7350 5800 50  0001 C CNN
F 1 "GND" H 7350 5900 50  0000 C CNN
F 2 "" H 7350 6050 50  0001 C CNN
F 3 "" H 7350 6050 50  0001 C CNN
	1    7350 6050
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J1
U 1 1 5B3A6D68
P 7700 5850
F 0 "J1" H 7700 6050 50  0000 C CNN
F 1 "Conn_01x04" H 7700 5550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch1.00mm" H 7700 5850 50  0001 C CNN
F 3 "" H 7700 5850 50  0001 C CNN
	1    7700 5850
	1    0    0    -1  
$EndComp
Text GLabel 8450 5750 0    60   Input ~ 0
VCC
Text GLabel 8450 5850 0    60   Input ~ 0
iic1_clk
Text GLabel 8450 5950 0    60   Input ~ 0
iic1_sda
$Comp
L GND #PWR010
U 1 1 5B3A71A2
P 8300 6050
F 0 "#PWR010" H 8300 5800 50  0001 C CNN
F 1 "GND" H 8300 5900 50  0000 C CNN
F 2 "" H 8300 6050 50  0001 C CNN
F 3 "" H 8300 6050 50  0001 C CNN
	1    8300 6050
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J2
U 1 1 5B3A71A8
P 8650 5850
F 0 "J2" H 8650 6050 50  0000 C CNN
F 1 "Conn_01x04" H 8650 5550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch1.00mm" H 8650 5850 50  0001 C CNN
F 3 "" H 8650 5850 50  0001 C CNN
	1    8650 5850
	1    0    0    -1  
$EndComp
Text GLabel 9350 5750 0    60   Input ~ 0
iic1_en1
Text GLabel 9350 5850 0    60   Input ~ 0
iic1_clk
Text GLabel 9350 5950 0    60   Input ~ 0
iic1_sda
$Comp
L GND #PWR011
U 1 1 5B3A7947
P 9200 6050
F 0 "#PWR011" H 9200 5800 50  0001 C CNN
F 1 "GND" H 9200 5900 50  0000 C CNN
F 2 "" H 9200 6050 50  0001 C CNN
F 3 "" H 9200 6050 50  0001 C CNN
	1    9200 6050
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J3
U 1 1 5B3A794D
P 9550 5850
F 0 "J3" H 9550 6050 50  0000 C CNN
F 1 "Conn_01x04" H 9550 5550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch1.00mm" H 9550 5850 50  0001 C CNN
F 3 "" H 9550 5850 50  0001 C CNN
	1    9550 5850
	1    0    0    -1  
$EndComp
Text GLabel 10350 5750 0    60   Input ~ 0
iic1_en2
Text GLabel 10350 5850 0    60   Input ~ 0
iic1_clk
Text GLabel 10350 5950 0    60   Input ~ 0
iic1_sda
$Comp
L GND #PWR012
U 1 1 5B3A8015
P 10200 6050
F 0 "#PWR012" H 10200 5800 50  0001 C CNN
F 1 "GND" H 10200 5900 50  0000 C CNN
F 2 "" H 10200 6050 50  0001 C CNN
F 3 "" H 10200 6050 50  0001 C CNN
	1    10200 6050
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J4
U 1 1 5B3A801B
P 10550 5850
F 0 "J4" H 10550 6050 50  0000 C CNN
F 1 "Conn_01x04" H 10550 5550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch1.00mm" H 10550 5850 50  0001 C CNN
F 3 "" H 10550 5850 50  0001 C CNN
	1    10550 5850
	1    0    0    -1  
$EndComp
Text Notes 10700 6400 2    60   ~ 0
I2C expansion connectors - 2 always powered, 2 with power enable pins
Text GLabel 6100 3000 2    60   Input ~ 0
iic1_en1
Text GLabel 6550 2900 2    60   Input ~ 0
iic1_en2
Text GLabel 6550 3300 2    60   Input ~ 0
iic1_clk
Text GLabel 6100 3200 2    60   Input ~ 0
iic1_sda
Text GLabel 9100 4250 0    60   Input ~ 0
VCC
Text GLabel 9100 4350 0    60   Input ~ 0
spi1_clk
Text GLabel 9100 4450 0    60   Input ~ 0
spi1_mosi
Text GLabel 9100 4550 0    60   Input ~ 0
spi1_miso
$Comp
L GND #PWR013
U 1 1 5B3ADD7E
P 9000 4750
F 0 "#PWR013" H 9000 4500 50  0001 C CNN
F 1 "GND" H 9000 4600 50  0000 C CNN
F 2 "" H 9000 4750 50  0001 C CNN
F 3 "" H 9000 4750 50  0001 C CNN
	1    9000 4750
	1    0    0    -1  
$EndComp
Text GLabel 9100 4650 0    60   Input ~ 0
spi1_ssb
$Comp
L Conn_01x06 J6
U 1 1 5B3ADE47
P 9300 4450
F 0 "J6" H 9300 4750 50  0000 C CNN
F 1 "Conn_01x06" H 9300 4050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch1.00mm" H 9300 4450 50  0001 C CNN
F 3 "" H 9300 4450 50  0001 C CNN
	1    9300 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 7300 6300 7300
Wire Wire Line
	5800 7300 5800 7200
Wire Wire Line
	6000 7200 6000 7300
Connection ~ 6000 7300
Wire Wire Line
	5800 5900 6300 5900
Wire Wire Line
	5800 5850 5800 6000
Wire Wire Line
	6000 5850 6000 6000
Connection ~ 6000 5900
Wire Wire Line
	3850 2850 4100 2850
Wire Wire Line
	3350 3350 4100 3350
Wire Wire Line
	3850 3450 4100 3450
Wire Wire Line
	3350 3150 4100 3150
Wire Wire Line
	3350 2950 4100 2950
Wire Wire Line
	3850 3050 4100 3050
Wire Wire Line
	3400 1400 3500 1400
Wire Wire Line
	3500 1400 3500 2450
Wire Wire Line
	3500 2450 4100 2450
Wire Wire Line
	3100 1750 3650 1750
Connection ~ 3500 1750
Wire Wire Line
	3100 2050 3100 2550
Wire Wire Line
	3100 2150 3050 2150
Wire Wire Line
	2750 2150 2550 2150
Wire Wire Line
	3100 2550 4100 2550
Connection ~ 3100 2150
Connection ~ 3500 2050
Wire Wire Line
	3650 2050 3500 2050
Wire Wire Line
	3500 1750 3500 1750
Wire Wire Line
	3950 1750 3950 2200
Connection ~ 3950 2050
Wire Wire Line
	3150 7200 1050 7200
Connection ~ 1250 6850
Wire Wire Line
	1350 6850 1250 6850
Wire Wire Line
	1250 6800 1250 6900
Connection ~ 1250 7200
Connection ~ 1250 6500
Connection ~ 1850 7200
Wire Wire Line
	1850 6800 1850 7200
Wire Wire Line
	1050 6500 1400 6500
Connection ~ 2050 6500
Wire Wire Line
	2050 6500 2050 6700
Connection ~ 1850 6500
Wire Wire Line
	1700 6500 2150 6500
Wire Wire Line
	3150 6850 3150 7200
Wire Wire Line
	2050 6700 2150 6700
Wire Wire Line
	1050 7200 1050 6900
Wire Wire Line
	3150 6850 3700 6850
Connection ~ 3150 6900
Connection ~ 3350 6850
Wire Wire Line
	3150 6550 3850 6550
Wire Wire Line
	3150 6550 3150 6500
Connection ~ 3350 6550
Connection ~ 3700 6550
Wire Notes Line
	600  6150 4200 6150
Wire Notes Line
	4200 6150 4200 7700
Wire Notes Line
	4200 7700 600  7700
Wire Notes Line
	600  7700 600  6150
Wire Wire Line
	6000 5500 6000 5550
Wire Wire Line
	5800 5500 6000 5500
Wire Wire Line
	5800 5550 5800 5500
Connection ~ 5900 5500
Connection ~ 5800 5900
Wire Wire Line
	5250 6300 5300 6300
Wire Wire Line
	5150 6900 5150 7050
Wire Wire Line
	4600 6900 5300 6900
Wire Wire Line
	4700 6900 4700 6800
Connection ~ 5150 6900
Wire Wire Line
	5200 6800 5200 6700
Wire Wire Line
	5100 6700 5300 6700
Connection ~ 5200 6700
Wire Wire Line
	4600 6900 4600 6400
Wire Wire Line
	4600 6400 4700 6400
Connection ~ 4700 6900
Wire Wire Line
	5000 6400 5200 6400
Wire Wire Line
	5200 6400 5200 6500
Connection ~ 5200 6500
Wire Wire Line
	5000 6800 5200 6800
Wire Wire Line
	5100 6500 5300 6500
Wire Notes Line
	4400 5300 6800 5300
Wire Notes Line
	6800 5300 6800 7700
Wire Notes Line
	6800 7700 4400 7700
Wire Notes Line
	4400 7700 4400 5300
Wire Wire Line
	7350 6050 7500 6050
Wire Wire Line
	8300 6050 8450 6050
Wire Wire Line
	9200 6050 9350 6050
Wire Wire Line
	10200 6050 10350 6050
Wire Notes Line
	6950 6450 6950 5300
Wire Notes Line
	6950 5300 11100 5300
Wire Notes Line
	11100 5300 11100 6450
Wire Notes Line
	11100 6450 6950 6450
Wire Wire Line
	5950 3300 6550 3300
Wire Wire Line
	5950 3200 6100 3200
Wire Wire Line
	5950 3000 6100 3000
Wire Wire Line
	5950 2900 6550 2900
Wire Wire Line
	9000 4750 9100 4750
Text GLabel 8000 4250 0    60   Input ~ 0
VCC
Text GLabel 8000 4350 0    60   Input ~ 0
spi1_clk
Text GLabel 8000 4450 0    60   Input ~ 0
spi1_mosi
Text GLabel 8000 4550 0    60   Input ~ 0
spi1_miso
$Comp
L GND #PWR014
U 1 1 5B3AE7A7
P 7900 4750
F 0 "#PWR014" H 7900 4500 50  0001 C CNN
F 1 "GND" H 7900 4600 50  0000 C CNN
F 2 "" H 7900 4750 50  0001 C CNN
F 3 "" H 7900 4750 50  0001 C CNN
	1    7900 4750
	1    0    0    -1  
$EndComp
Text GLabel 8000 4650 0    60   Input ~ 0
spi1_ssa
$Comp
L Conn_01x06 J5
U 1 1 5B3AE7AE
P 8200 4450
F 0 "J5" H 8200 4750 50  0000 C CNN
F 1 "Conn_01x06" H 8200 4050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch1.00mm" H 8200 4450 50  0001 C CNN
F 3 "" H 8200 4450 50  0001 C CNN
	1    8200 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 4750 8000 4750
Text GLabel 10150 4250 0    60   Input ~ 0
VCC
Text GLabel 10150 4350 0    60   Input ~ 0
spi1_clk
Text GLabel 10150 4450 0    60   Input ~ 0
spi1_mosi
Text GLabel 10150 4550 0    60   Input ~ 0
spi1_miso
$Comp
L GND #PWR015
U 1 1 5B3AE846
P 10050 4750
F 0 "#PWR015" H 10050 4500 50  0001 C CNN
F 1 "GND" H 10050 4600 50  0000 C CNN
F 2 "" H 10050 4750 50  0001 C CNN
F 3 "" H 10050 4750 50  0001 C CNN
	1    10050 4750
	1    0    0    -1  
$EndComp
Text GLabel 10150 4650 0    60   Input ~ 0
spi1_ssc
$Comp
L Conn_01x06 J7
U 1 1 5B3AE84D
P 10350 4450
F 0 "J7" H 10350 4750 50  0000 C CNN
F 1 "Conn_01x06" H 10350 4050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch1.00mm" H 10350 4450 50  0001 C CNN
F 3 "" H 10350 4450 50  0001 C CNN
	1    10350 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 4750 10150 4750
Wire Notes Line
	6950 5200 6950 4000
Wire Notes Line
	6950 4000 11100 4000
Wire Notes Line
	11100 4000 11100 5200
Wire Notes Line
	11100 5200 6950 5200
Text Notes 8450 5100 0    60   ~ 0
SPI expansion connectors
Text GLabel 3350 3550 0    60   Input ~ 0
jt_mtms
Text GLabel 3850 3650 0    60   Input ~ 0
jt_mtdi
Wire Wire Line
	3850 3250 4100 3250
Wire Wire Line
	3350 3550 4100 3550
Wire Wire Line
	3850 3650 4100 3650
$Comp
L GND #PWR016
U 1 1 5B3BCA44
P 4100 3750
F 0 "#PWR016" H 4100 3500 50  0001 C CNN
F 1 "GND" H 4100 3600 50  0000 C CNN
F 2 "" H 4100 3750 50  0001 C CNN
F 3 "" H 4100 3750 50  0001 C CNN
	1    4100 3750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR017
U 1 1 5B3BCBD4
P 6550 3700
F 0 "#PWR017" H 6550 3450 50  0001 C CNN
F 1 "GND" H 6550 3550 50  0000 C CNN
F 2 "" H 6550 3700 50  0001 C CNN
F 3 "" H 6550 3700 50  0001 C CNN
	1    6550 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 3700 6550 3700
Wire Wire Line
	5950 3600 6100 3600
Text GLabel 4850 4300 2    60   Input ~ 0
jt_mtck
Text GLabel 5250 4450 0    60   Input ~ 0
jt_mtdo
Wire Wire Line
	5250 4450 5400 4450
Wire Wire Line
	5400 4450 5400 4100
Wire Wire Line
	4700 4100 4700 4300
Wire Wire Line
	4700 4300 4850 4300
NoConn ~ 4100 2650
NoConn ~ 4100 2750
Text GLabel 6550 3500 2    60   Input ~ 0
jt_prog
Wire Wire Line
	6550 3500 5950 3500
$Comp
L Conn_02x05_Odd_Even J?
U 1 1 5B3C29B9
P 1900 5600
F 0 "J?" H 1950 5900 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 1950 5300 50  0000 C CNN
F 2 "" H 1900 5600 50  0001 C CNN
F 3 "" H 1900 5600 50  0001 C CNN
	1    1900 5600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
