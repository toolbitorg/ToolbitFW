#ifndef LUKE_FUNC_H__
#define LUKE_FUNC_H__

#include <stdint.h>
#include "i2c-lib.h"


#define I2C_INA_ADDR  0x40
#define I2C_WRITE_CMD 0
#define I2C_READ_CMD  1

#define INA3221_CONFG     0x00
#define INA3221_SHUNTV_1 0x01
#define INA3221_BUSV_1   0x02
#define INA3221_SHUNTV_2 0x03
#define INA3221_BUSV_2   0x04
#define INA3221_SHUNTV_3 0x05
#define INA3221_BUSV_3   0x06
#define INA3221_CRITICAL_LIMIT_1 0x07
#define INA3221_WARNING_LIMIT_1  0x08
#define INA3221_CRITICAL_LIMIT_2 0x09
#define INA3221_WARNING_LIMIT_2  0x0A
#define INA3221_CRITICAL_LIMIT_3 0x0B
#define INA3221_WARNING_LIMIT_3  0x0C
#define INA3221_SHUNTV_SUM       0x0D
#define INA3221_SHUNTV_SUM_LIMIT 0x0E
#define INA3221_MASK_ENABLE      0x0F
#define INA3221_POWER_VALID_UPPER_LIMIT 0x10
#define INA3221_POWER_VALID_LOWER_LIMIT 0x11
#define INA3221_MANUFACTURER_ID 0xFE
#define INA3221_DIE_ID 0xFF

typedef enum
{
	VOLTAGE_RANGE_AUTO = 0,
	VOLTAGE_RANGE_LOW = 1,
	VOLTAGE_RANGE_HIGH = 2
} VoltageRange;

typedef enum
{
	CURRENT_RANGE_AUTO = 0,
	CURRENT_RANGE_LOW = 1,
	CURRENT_RANGE_HIGH = 2
} CurrentRange;


void i2c_reg_write(uint8_t regAddr, uint8_t dat0, uint8_t dat1);
uint16_t i2c_reg_read(uint8_t regAddr);
void set_current_range(CurrentRange r);

#endif