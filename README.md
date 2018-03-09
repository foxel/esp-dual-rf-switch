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

## BOM

Item | Qty | Reference(s) | Link
-----|-----|--------------|------
100uF, 5v | 1 | C1 | 
3mm LED | 2 | D1, D2 | 
BT137 | 2 | D3, D4 | 
1A fuse | 2 | F1, F2 | 
Screw_Terminal_01x03 | 1 | J1 | 
4pin header | 1 | J2 | 
Screw_Terminal_01x02 | 1 | J5 | 
470R, 0.25W | 4 | R1, R2, R3, R4 | 
390R, 0.5W | 2 | R5, R7 | 
470R, 0.5W | 2 | R6, R8 | 
Itead.cc RF receiver | 1 | RF1 | https://www.itead.cc/rf-receiver-module-433mhz.html
ATTINY441-SSU | 1 | U1 | 
ESP-01S | 1 | U2 | 
MOC3041M | 2 | U3, U4 | 
HLK-PM03 | 1 | U5 | 

