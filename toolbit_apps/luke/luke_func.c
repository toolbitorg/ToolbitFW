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
    dat |= i2c_read_byte(1);
    i2c_stop();
    return dat;
}

int16_t get_shunt_voltage(uint8_t regAddr)
{
    union {
        uint16_t uint16;
        int16_t  int16;
    } vshunt;
    
    vshunt.uint16 = i2c_reg_read(regAddr);
    return vshunt.int16 >> 3;
}

void set_autorange_threshould()
{
    	// Set the swiching threshould 150mA to assert CRITICAL pin of INA3221
        i2c_reg_write(INA3221_CRITICAL_LIMIT_2, 0x05, 0xD8);        
}

/*        
void set_voltage_range(VoltageRange r)
{            
	if (r == VOLTAGE_RANGE_AUTO) {
    	// Set the swiching threshould to assert WARNING pin of INA3221
        i2c_reg_write(INA3221_WARNING_LIMIT_3, 0x5F, 0xF8);
    }
    else if (r == VOLTAGE_RANGE_HIGH) {
    	// Set the lowest limit to assert WARNING pin of INA3221
        i2c_reg_write(INA3221_WARNING_LIMIT_3, 0x5F, 0xF8);
	}
	else if (r == VOLTAGE_RANGE_LOW) {
		// Set the highest limit to deassert WARNING pin of INA3221
        i2c_reg_write(INA3221_WARNING_LIMIT_3, 0x7F, 0xF8);
	}
}

void set_current_range(CurrentRange r)
{            
	if (r == CURRENT_RANGE_AUTO) {
    	// Set the swiching threshould 150mA to assert CRITICAL pin of INA3221
        i2c_reg_write(INA3221_CRITICAL_LIMIT_2, 0x05, 0xD8);        
    }
    else if (r == CURRENT_RANGE_HIGH) {
    	// Set the lowest limit to assert CRITICAL pin of INA3221
        i2c_reg_write(INA3221_CRITICAL_LIMIT_2, 0x00, 0x00);
	}
	else if (r == CURRENT_RANGE_LOW) {
		// Set the highest limit to deassert CRITICAL pin of INA3221
        i2c_reg_write(INA3221_CRITICAL_LIMIT_2, 0x7F, 0xF8);
	}
}
 */

float get_voltage()
{          
    float volt = get_shunt_voltage(INA3221_SHUNTV_3) * 0.0015214;   // 1.5214 mV/bit

    // Low range
    if(volt>-6.05 && volt<6.05) {
        return volt;
    }
    
    volt = get_shunt_voltage(INA3221_BUSV_3) * 0.304296 - 62.761;   // 304.296 mV/bit
    // High range
    return volt;  
}

float get_current()
{          
    float low_curr = get_shunt_voltage(INA3221_SHUNTV_1)  * 0.000040;  // 40.0uA/bit
//    float high_curr = get_shunt_voltage(INA3221_SHUNTV_2) * 0.00080;   // 0.80mA/bit
    float high_curr = get_shunt_voltage(INA3221_SHUNTV_2) * 0.00080 * 5.0 / 4.0;   // 0.80mA/bit

    if(high_curr>0.150 | high_curr<-0.15)
        return high_curr;
    else
        return low_curr;
}
