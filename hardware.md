# Control chip info
The reference environment sensor is built on the ESP32 chip.  For ease of use, the ESP32-Wroom module is used, integrating SPI flash and antenna into a small module with castelated pins for soldering.

# Available power
The sensor module is powered using an 18650 battery.   The voltage regulator provides a maximum of 600ma of current.  The board uses approximately 250ma while active, leaving approximately 300ma available for expansion.

# SPI Bus info
### GP SPI0 - Master
|SPI Pin|GPIO PIN|Wroom Hardware Pin|Description|Board Location|
|-------|--------|------------------|-----------|--------------|
|clk| 27 | 12 | SPI bus clock | |
|MOSI| 26 | 11 | Data from master to slave | |
|MISO| 25 | 10 | Data from slave to master | |
|SSA| 14 | 13 | Slave select A: Open | J5 |
|SSB| 12 | 14 | Slave select B: Open | J6 |
|SSC| 33 | 9 | Slave select C: Open | J7 |

### Wroom 4M Parallel QSPI Flash on GPIO pins 6-11
|SPI Pin|GPIO PIN|Wroom Hardware Pin|Description|
|-------|--------|------------------|-----------|
|clk| 6 | 20 | SPI bus clock |
|MOSI| 8 | 22 | Data from master to slave |
|MISO| 7 | 21 | Data from slave to master |
|SHD / SD2 | 9 | 17 | /HOLD |
|SWP / SD3 | 10 | HW18 | /WP |
|SCS / CMD | 11 | HW19 | /CS |

# I2C Bus info
## Pin mapping to WROOM
|I2C Pin|GPIO PIN|Wroom Hardware Pin|Board Location|
|-------|--------|------------------|--------------|
|CLK| 16 | 27 ||
|Data| 17 | 28 ||
|enable1| 18 | 30 | J3 |
|enable2| 19 | 31 | J4 |

## Addresses:
|Address|Device|
|-------|------|
|0x76|BME280 Sensor|
|0x78|OLED (Optional, connect to J3 or J4 )|

# Connector Pinouts
## SPI expansion
|Pin|Name|
|---|----|
|1|VCC - 3.3v|
|2|Clock|
|3|MOSI|
|4|MISO|
|5|slave select|
|6|Ground|

SPI Expansion headers are located at J5, J6, and J7

## I2C expansion
|Pin|Name|
|---|----|
|1|VCC - 3.3v|
|2|Clock|
|3|Data|
|4|Ground|

I2C expansion headers are located at J1, J2, J3, and J4.   VCC for J3 and J4 is controlled by using GPIO pins 18 and 19.

## JTAG
JTAG header on the board is setup for [Digilent HS2 JTAG adapter](https://store.digilentinc.com/jtag-hs2-programming-cable/) and located at J8

|Pin|Name|
|---|----|
|1|mtms|
|2|mtdi|
|3|mtdo|
|4|clock|
|5|Ground|
|6|VCC - 3.3v|


# Bill of Materials - Board version 1.0
|Reference|Value|Description|Datasheet|
|---------|-----|-----------|---------|
|U1|AP2112K-3.3TRG1|3.3v 600ma voltage regulator|(https://www.diodes.com/assets/Datasheets/AP2112.pdf)
|U2|ESP32-WROOM|ESP32 Wroom integrated module|(https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf)
|U3|BME280|Bosch BME280 Temperature/Humidity/Pressure sensor|(https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BME280_DS001-12.pdf)
|C1|1uF|SMD1206 Capacitor||
|C2|10uF|SMD1206 Capacitor||
|C3|1uF|SMD1206 Capacitor||
|C4|100nF|SMD1206 Capacitor||
|C5|10uF|SMD1206 Capacitor||
|C6|100nF|SMD1206 Capacitor||
|C7|100nF|SMD1206 Capacitor||
|C8|100nF|SMD1206 Capacitor||
|R1|10k|SMD1206 Resistor||
|R2|3.3k|SMD1206 Resistor||
|R3|10k|SMD1206 Resistor||
|R4|4.7k|SMD1206 Resistor||
|R5|4.7k|SMD1206 Resistor||
|R6|100|SMD1206 Resistor||
|R7|100|SMD1206 Resistor||
|R8|100|SMD1206 Resistor||
|R9|100|SMD1206 Resistor||
|D1|1N5819|SMD1206 (SOD123) Diode||
|BT1|18650 Battery holder|SMD 18650 Battery holder|(https://www.aliexpress.com/item/10pcs-DIY-Battery-Holder-SMT-2pin-for-single-18650-rechargeable-Lithium-battery-SMD-Surface-Mount-PCB/32734996935.html?spm=a2g0s.9042311.0.0.5b014c4dK10LK0)|
|JP1|2 Pin Header|Optional - programming||
|J1|4 Pin Header|Optional - I2C||
|J2|4 Pin Header|Optional - I2C||
|J3|4 Pin Header|Optional - I2C||
|J4|4 Pin Header|Optional - I2C||
|J5|6 Pin Header|Optional - SPI||
|J6|6 Pin Header|Optional - SPI||
|J7|6 Pin Header|Optional - SPI||
|J8|6 Pin Header|Optional - JTAG||
