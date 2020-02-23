# ToolbitFW

ToolbitFW is firmware for measurement and automation tools.

Please see the following pages:
- http://toolbit.org
- https://hackaday.io/project/10398-luke-open-framework-multimeterlogger
- https://hackaday.io/project/12349-chopper-hub

# Reference

- M-Stack
 - http://www.signal11.us/oss/m-stack/

# Licence

Please refer to the following and source files in this repository.

- ToolbitFW original code
  - ToolbitFW original source code is located in [toolbit_apps](toolbit_apps) folder
  - Source code in [toolbit_apps/dmm](toolbit_apps/dmm) and [toolbit_apps/chopper_hub](toolbit_apps/chopper_hub) folders is distributed in [GNU General Public License version 2.0](toolbit_apps/LICENSE)
  - This software includes the work that is distributed in the Apache License 2.0
  - The details are written on [toolbit_apps/README.md](toolbit_apps/README.md)
- M-Stack
  - Dual-licensed under the LGPL version 3 and the Apache License version 2.0
  - The details are written on [README-M-Stack.txt](README-M-Stack.txt)
- PIC-I2C-LIB
  - Please refer to the header of [i2c-lib.h](toolbit_apps/lib/i2c-lib.h) and [i2c-lib.c](toolbit_apps/lib/i2c-lib.c)
- Software released by Microchip Technology Inc.
  - [Flash.h](toolbit_apps/lib/Flash.h), [Flash.c](toolbit_apps/lib/Flash.h): Self-Write Flash support functions
  - [HEFlash.h](toolbit_apps/lib/HEFlash.h), [HEFlash.c](toolbit_apps/lib/HEFlash.c): High Endurance Flash - EEPROM emulation and support routines
  - Please follow their license agreement
