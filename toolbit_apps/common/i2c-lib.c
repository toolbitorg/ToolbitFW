/*
 * File:   i2c-lib.c   for Microchip PIC XC8 (12F1822, 16F1823, 16F1827)
 */

#include <stdio.h>
#include <stdlib.h>

#include <xc.h>
#include "i2c-lib.h"

#ifndef _XTAL_FREQ
    #define _XTAL_FREQ 48000000
#endif

void i2c_enable(void)
{
    SSP1STAT = 0b00000000;    // High speed mode
    //SSP1ADD = 9;            // I2C Baud rate,  4MHz/((SSP1ADD + 1)*4) = 100kHz
    SSP1ADD = 39;             // I2C Baud rate,  48MHz/((SSP1ADD + 1)*4) = 300kHz
    SSP1CON1 = 0b00101000;    // I2C, Master Mode
    SSP1CON3 = 0x00;
}

// I2C??????
void i2c_disable(void){
    SSP1CON1 = 0b00001000;      // I2C??, Master Mode
}

// I2C????????????Start Condition????
void i2c_start(void){
    SSP1CON2bits.SEN = 1;       //  Start Condition Enabled bit
    i2c_wait();
}

// I2C????????????Repeat Start Condition????
void i2c_repeat_start(void){
    SSP1CON2bits.RSEN = 1;      //  Start Condition Enabled bit
    i2c_wait();
}

// I2C????????????Stop Condition????
void i2c_stop(void){
    SSP1CON2bits.PEN = 1;       // Stop Condition Enable bit
    i2c_wait();
}

// I2C????????????????
void i2c_wait(void){
    while ( ( SSP1CON2 & 0x1F ) || ( SSP1STATbits.R_nW ) );

}

// I2C??????????1?????
void i2c_send_byte(const unsigned char data){
    SSP1BUF = data;
    i2c_wait();
}

//I2C?????????
// ack=1 : ???ACK??????????????????????????
// ack=0 : ???NO_ACK????????????????????????????
unsigned char i2c_read_byte(const char ack){
    SSP1CON2bits.RCEN = 1;
    i2c_wait();
    unsigned char data = SSP1BUF;
    i2c_wait();

    if(ack) SSP1CON2bits.ACKDT = 0;     // ACK
    else SSP1CON2bits.ACKDT = 1;        // NO_ACK

    SSP1CON2bits.ACKEN = 1;

    i2c_wait();
    return data;
}

