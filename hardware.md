# Control chip info
The reference environment sensor is built on the ESP32 chip.  For ease of use, the ESP32-Wroom module is used, integrating SPI flash and antenna into a small module with castelated pins for soldering.

# SPI Bus info
- GP SPI0 - Master
|SPI Pin|GPIO PIN|Wroom Hardware Pin|Description|Board Location|
|-------|--------|------------------|-----------|--------------|
|clk| 25 | 10 | SPI bus clock | |
|MOSI| 26 | 11 | Data from master to slave | |
|MISO| 27 | 12 | Data from slave to master | |
|SSA| 14 | 13 | Slave select A: Environment sensor | Onboard |
|SSB| 12 | 14 | Slave select B: Open | JP? |
|SSC| 33 | 9 | Slave select C: Open | JP? |

- Wroom 4M Parallel QSPI Flash on GPIO pins 6-11
|SPI Pin|GPIO PIN|Wroom Hardware Pin|Description|Board Location|
|-------|--------|------------------|-----------|--------------|
|clk| 6 | 20 | SPI bus clock | |
|MOSI| 8 | 22 | Data from master to slave | |
|MISO| 7 | 21 | Data from slave to master | |
SHD / SD2 - GP9 - HW17 - /HOLD
SWP / SD3 - GP10 - HW18 - /WP
SCS / CMD - GP11 - HW19 - /CS

# I2C Bus info
|I2C Pin|GPIO PIN|Wroom Hardware Pin|
|-------|--------|------------------|
|CLK| 16 | 27 |
|Data| 17 | 28 |
|enable1| 18 | 30 |
|enable2| 19 | 31 |

Addresses:
BME280 - 0x76 or 0x77 - based on SD0 - [BME280 Datasheet](https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BME280_DS001-12.pdf) - [AliExpress Src](https://www.aliexpress.com/item/10PCS-BME280-up-LGA8/32838325290.html)
OLED - 0x78
  - Use additional pullup pin to turn the display on/off


# PCB Design notes
