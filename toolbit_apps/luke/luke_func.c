#include "luke_func.h"
#include "hardware.h"
#include "i2c-lib.h"
#include "attribute.h"



void i2c_reg_write(uint8_t regAddr, uint8_t dat0, uint8_t dat1)
{
    i2c_start();
    i2c_send_byte(I2C_INA_ADDR << 1 | I2C_WRITE_CMD);
    i2c_send_byte(regAddr);
    i2c_send_byte(dat0);
    i2c_send_byte(dat1);
    i2c_stop();
}


uint16_t i2c_reg_read(uint8_t regAddr)
{
    uint16_t dat;
    i2c_start();
    i2c_send_byte(I2C_INA_ADDR << 1 | I2C_WRITE_CMD);
    i2c_send_byte(regAddr);
    i2c_repeat_start();                        
    i2c_send_byte(I2C_INA_ADDR << 1 | I2C_READ_CMD);
    dat = i2c_read_byte(1) << 8; 
    dat = i2c_read_byte(1);
    i2c_stop();
    return dat;
}


void set_current_range(CurrentRange r)
{            
	if (r == CURRENT_RANGE_HIGH) {
    	// Set the lowest limit to assert CRITICAL pin of INA3221
//        i2c_reg_write(REG_CRITICAL_LIMIT_1, 0x8000);
	}
	else if (r == CURRENT_RANGE_LOW) {
		// Set the highest limit to deassert CRITICAL pin of INA3221
//        i2c_reg_write(REG_CRITICAL_LIMIT_1, 0x7FF8);
	}
}
