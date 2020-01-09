#! /bin/sh
cp ./chopper_hub.X/dist/PIC16F1454/production/chopper_hub.X.production.hex firmware.hex
454hex2dfu.exe firmware.hex firmware.dfu
dfu-util.exe -d 1209:2002 -D firmware.dfu
