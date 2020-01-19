#include "dmm_func.h"
#include "hardware.h"
#include "i2c-lib.h"
#include "attribute.h"

#ifdef __C18
#define ROMPTR rom
#else
#define ROMPTR
#endif

#define I2C_INA_ADDR  0x40    // This is also defined in dmm_func.h
#define I2C_WRITE_CMD 0
#define I2C_READ_CMD  1

#define INA3221_CONFG    0x00
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

#define CURRENT_RANGE_THRESHOULD  187    // Low/High threshould 150mA / 0.80mA/bit = 187.5   
#define CURRENT_RANGE_THRESHOULD0 0x06   // Change burden threshould 160mA = 0xC8; 0xC8 << 3 = 0x0640
#define CURRENT_RANGE_THRESHOULD1 0x40
#define VOLTAGE_RANGE_THRESHOULD  4080

#define NVM_LOW_CURRENT_SLOPE_ADDR   0x1F80
#define NVM_LOW_CURRENT_OFFSET_ADDR  0x1F83
#define NVM_HIGH_CURRENT_SLOPE_ADDR  0x1F86
#define NVM_HIGH_CURRENT_OFFSET_ADDR 0x1F89
#define NVM_LOW_VOLTAGE_SLOPE_ADDR   0x1F8C
#define NVM_LOW_VOLTAGE_OFFSET_ADDR  0x1F8F
#define NVM_HIGH_VOLTAGE_SLOPE_ADDR  0x1F92
#define NVM_HIGH_VOLTAGE_OFFSET_ADDR 0x1F95

static const ROMPTR float NVM_LOW_CURRENT_SLOPE   @ NVM_LOW_CURRENT_SLOPE_ADDR    = 0.000040;    // 40.0uA/bit
static const ROMPTR float NVM_LOW_CURRENT_OFFSET  @ NVM_LOW_CURRENT_OFFSET_ADDR   = -0.0; 
static const ROMPTR float NVM_HIGH_CURRENT_SLOPE  @ NVM_HIGH_CURRENT_SLOPE_ADDR   = 0.00080;     // 0.80mA/bit
static const ROMPTR float NVM_HIGH_CURRENT_OFFSET @ NVM_HIGH_CURRENT_OFFSET_ADDR  = 0.0;
static const ROMPTR float NVM_LOW_VOLTAGE_SLOPE   @ NVM_LOW_VOLTAGE_SLOPE_ADDR    = -0.0015214;  // 1.5214 mV/bit
static const ROMPTR float NVM_LOW_VOLTAGE_OFFSET  @ NVM_LOW_VOLTAGE_OFFSET_ADDR   = 0.0;
static const ROMPTR float NVM_HIGH_VOLTAGE_SLOPE  @ NVM_HIGH_VOLTAGE_SLOPE_ADDR   = 0.304296;    // 304.296 mV/bit
static const ROMPTR float NVM_HIGH_VOLTAGE_OFFSET @ NVM_HIGH_VOLTAGE_OFFSET_ADDR  = -62.76111;   // ideal offset

float lowCurrentSlope;
float lowCurrentOffset;
float highCurrentSlope;
float highCurrentOffset;
float lowVoltageSlope;
float lowVoltageOffset;
float highVoltageSlope;
float highVoltageOffset;

void dmm_init() {
    LATC = 0x0;
    ANSELC = 0x00;  // All pins are set as digital I/O
    PORTC = 0x00;
    TRISC = 0x03;  // RC0, RC1: input, other pins: output

    WPUA = 0x38;   // Enable weak pull-up of RA3, RA4, RA5
    OPTION_REGbits.nWPUEN = 0;

    // Load parameters from HEF memory
    lowCurrentSlope   = NVM_LOW_CURRENT_SLOPE;
    lowCurrentOffset  = NVM_LOW_CURRENT_OFFSET;
    highCurrentSlope  = NVM_HIGH_CURRENT_SLOPE;
    highCurrentOffset = NVM_HIGH_CURRENT_OFFSET;
    lowVoltageSlope   = NVM_LOW_VOLTAGE_SLOPE;
    lowVoltageOffset  = NVM_LOW_VOLTAGE_OFFSET;
    highVoltageSlope  = NVM_HIGH_VOLTAGE_SLOPE;
    highVoltageOffset = NVM_HIGH_VOLTAGE_OFFSET;
    
    i2c_enable();
    set_autorange_threshould();
}

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
    i2c_reg_write(INA3221_CRITICAL_LIMIT_2, CURRENT_RANGE_THRESHOULD0, CURRENT_RANGE_THRESHOULD1);
}

float get_voltage()
{
    int16_t val = get_shunt_voltage(INA3221_SHUNTV_3);

    if(val<VOLTAGE_RANGE_THRESHOULD && val>-VOLTAGE_RANGE_THRESHOULD)
        return val * lowVoltageSlope + lowVoltageOffset;
    else
        return get_shunt_voltage(INA3221_BUSV_3) * highVoltageSlope + highVoltageOffset;
}

float get_current()
{
    int16_t val = get_shunt_voltage(INA3221_SHUNTV_2);
    
    if(val<CURRENT_RANGE_THRESHOULD && val>-CURRENT_RANGE_THRESHOULD)
        return get_shunt_voltage(INA3221_SHUNTV_1) * lowCurrentSlope + lowCurrentOffset;
    else
        return val * highCurrentSlope + highCurrentOffset;
}
