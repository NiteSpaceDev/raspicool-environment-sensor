# Environment sensor module based on the ESP32-Wroom Module

## Overview

This environment sensor is intended to be a low cost sensor that can be deployed throughout the environment controlled by the RaspiCool system.

## Recommended sensor locations
* One sensor for each room
  * Thermostat includes a sensor and only needs a sensor module if drafts, etc. make the built-in sensor unreliable.
* One sensor for each return air vent
* One sensor in the vent closest to the AC coil
  * This sensor, combined with the return air sensors, is used to track 'delta-t', which can help indicate system troubles.

## Hardware description
The sensor module is built using an esp32-wroom module, providing encryption, wifi, and bluetooth capabilities.  The primary sensor included is the BME280, providing temperature, humidity, and pressure data.   Power is provided by an 18650 battery.

## Sensor Options
* Option to include SSD1306 oled display
* SPI and I2C expansion points included on sensor pcb

# Usage
## Sensor pairing
The base sensor image does not include any wifi configuration or authentication certificates.   When the sensor is powered in this state, it will scan bluetooth looking for a RaspiCool thermostat.   When it finds one, it will trigger a popup on the thermostat to confirm pairing the sensor.

* Note:   The thermostat must be set into pairing mode in order to pair additional sensors.  Bluetooth is normally off on the thermostat.

Pairing causes the following events:
- Wifi configuration is sent via bluetooth to the sensor
- Thermostat will assign a static IP and set a static DHCP reservation for the sensor
- Sensor receives IP via DHCP and verifies the address with the thermostat registration service
- Client authentication certificates are generated and delivered to the sensor
- Sensor retrieves additional configuration from the thermostat services
- Sensor resets and starts normal data loop

## Sensor operation
In normal operation, the sensor spends the majority of the time in a sleep state.  During each wake cycle, the following events happen:
* Read sensor values
* Cache current value
* Determine if values need to be reported - Enter sleep at this point if no reporting needed
  * Sensor values have changed by more than threshhold (Default 0.1c, 0.5%) 
  * Reporting cycle time has expired (Default 1 minute)
* Bring wifi online
* Connect to thermostat
* Send sensor data
* Check for commands (Update, config, etc.)
* Enter sleep

TODO:   Thermostat data via https api instead of mqtt?

## How to install this app

- mos build
- mos flash


## Helpful commands
- See bashaliases.sh for information

# Built for (MongooseOS)[https://mongoose-os.com]
