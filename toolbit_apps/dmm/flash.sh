#! /bin/sh
cp ./dmm.X/dist/PIC16F1454/production/dmm.X.production.hex firmware.hex
454hex2dfu.exe firmware.hex firmware.dfu
dfu-util.exe -d 1209:2002 -D firmware.dfu
