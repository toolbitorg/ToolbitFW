/* 
 * File:   i2c-lib.h   for Microchip PIC XC8
 */

#ifndef LCD_I2C_LIB_H
#define	LCD_I2C_LIB_H

#ifdef	__cplusplus
extern "C" {
#endif

void i2c_enable(void);
void i2c_disable(void);
void i2c_start(void);
void i2c_repeat_start(void);
void i2c_stop(void);
void i2c_wait(void);
void i2c_send_byte(const unsigned char data);
unsigned char i2c_read_byte(const char ack);


#ifdef	__cplusplus
}
#endif

#endif	/* LCD_I2C_LIB_H */

