#ifndef DMM_FUNC_H__
#define DMM_FUNC_H__

#include <xc.h>
#include <stdint.h>
#include "i2c-lib.h"

void dmm_init();
void i2c_reg_write(uint8_t regAddr, uint8_t dat0, uint8_t dat1);
uint16_t i2c_reg_read(uint8_t regAddr);
int16_t get_shunt_voltage(uint8_t regAddr);
void set_autorange_threshould();

float get_voltage();
float get_current();

#endif