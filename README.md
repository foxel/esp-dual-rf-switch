# ESP8266 Dual RF switch

![photo](esp-switch.jpg)

## Schematics

![shematics](esp-switch-schema.png)

## Layout

![Board layout](esp-switch-brd.png)

## Firmware

There are two microcontrollers to run this switch
* **ESP-01** - use Tasmota firmware fork: https://github.com/foxel/Sonoff-Tasmota/tree/foxel_dual_rf
* **ATTINY441** - firmware is in `attiny-firmware` folder. This requires ATTinyCore to build: https://github.com/SpenceKonde/ATTinyCore
