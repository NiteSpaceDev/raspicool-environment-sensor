# Control chip info
The reference environment sensor is built on the ESP32 chip.  For ease of use, the ESP32-Wroom module is used, integrating SPI flash and antenna into a small module with castelated pins for soldering.

# SPI Bus info
- GP SPI0 - Master
|SPI Pin|GPIO PIN|Wroom Hardware Pin|Description|Board Location|
|-------|--------|------------------|-----------|--------------|
|clk| | | SPI bus clock | |
|MOSI| | | Data from master to slave | |
|MISO| | | Data from slave to master | |
|SSA| | | Slave select A: Environment sensor | Onboard |
|SSB| | | Slave select B: Open | JP? |
|SSC| | | Slave select C: Open | JP? |

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
|CLK| | |
|Data| | | 

Addresses:
BME280 - 0x76 or 0x77 - based on SD0 - [BME280 Datasheet](https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BME280_DS001-12.pdf) - [AliExpress Src](https://www.aliexpress.com/item/10PCS-BME280-up-LGA8/32838325290.html)



# PCB Design notes

