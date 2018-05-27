# A Feather Huzzah based AWS IOT temp sensor

## Overview

This will eventually be an Adafruit Feather based environmental sensor

## How to install this app

- mos build
- mos flash


## Helpful commands
Local build:
  mos build --platform esp32 --local --verbose

Local OTA Push
  curl -v -F file=@build/fw.zip -F commit_timeout=60 http://192.168.1.102/update

Local OTA commit
  curl -v http://192.168.1.102/update/commit

# Built for (MongooseOS)[https://mongoose-os.com]
