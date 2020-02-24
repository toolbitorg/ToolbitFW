# ToolbitFW

ToolbitFW is firmware for measurement and automation tools.
As for products using this firmware, please see the following pages:
- http://toolbit.org
- https://hackaday.io/project/10398-luke-open-framework-multimeterlogger
- https://hackaday.io/project/12349-chopper-hub

For example, a PC-based digital multimeter named Toolbit DMM is one of devices that implement this firmware.

# Build

Target microcontrollers are PIC16F1454 or PIC16F1455.

### Compiler
The following software is supported. Older version of software might not work properly.
- MPLAB X IDE v3.40
- XC8 v2.10

### Bootloader
ToolbitFW is designed to use [USB DFU Bootloader for PIC16F1454/5/9](https://github.com/majbthrd/PIC16F1-USB-DFU-Bootloader) as bootloader.
The following compile options are set:
```
--codeoffset==0x200
--rom=default,-0-1FF,-1F7F-1FFF
```

The following commands show how to flash the firmware to a target device via USB.

```shell
 cp ./dmm.X/dist/PIC16F1454/production/dmm.X.production.hex firmware.hex
 454hex2dfu.exe firmware.hex firmware.dfu
 dfu-util.exe -d 1209:2002 -D firmware.dfu
```

In details, please refer to usage of [USB DFU Bootloader for PIC16F1454/5/9](https://github.com/majbthrd/PIC16F1-USB-DFU-Bootloader)


# Reference
- ToolbitSDK
  - Cross Platform SDK for Measurement and Automation System
  - https://github.com/toolbitorg/ToolbitSDK
- ToolbitDMM
  - Toolbit DMM cross platform GUI application
  - https://github.com/toolbitorg/ToolbitDMM
- USB DFU Bootloader for PIC16F1454/5/9
  - https://github.com/majbthrd/PIC16F1-USB-DFU-Bootloader

# Dependency

Please refer to [the top page](https://github.com/toolbitorg/ToolbitFW) of this repository:

# Licence

- Source code in [dmm](dmm) and [chopper_hub](chopper_hub) folders is distributed in [GNU General Public License version 2.0](LICENSE)
- This software includes the work that is distributed in the Apache License 2.0
