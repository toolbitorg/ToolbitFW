/********************************************************
 *
 * Copyright (C) INOUE Hirokazu, All Rights Reserved
 *     http://oasis.halfmoon.jp/
 *
 *
 * GNU GPL Free Software
 *
 * このプログラムはフリーソフトウェアです。あなたはこれを、フリーソフトウェア財
 * 団によって発行された GNU 一般公衆利用許諾契約書(バージョン2か、希望によっては
 * それ以降のバージョンのうちどれか)の定める条件の下で再頒布または改変することが
 * できます。
 *
 * このプログラムは有用であることを願って頒布されますが、*全くの無保証* です。
 * 商業可能性の保証や特定の目的への適合性は、言外に示されたものも含め全く存在し
 * ません。詳しくはGNU 一般公衆利用許諾契約書をご覧ください。
 *
 * あなたはこのプログラムと共に、GNU 一般公衆利用許諾契約書の複製物を一部受け取
 * ったはずです。もし受け取っていなければ、フリーソフトウェア財団まで請求してく
 * ださい(宛先は the Free Software Foundation, Inc., 59 Temple Place, Suite 330
 * , Boston, MA 02111-1307 USA)。
 *
 * http://www.opensource.jp/gpl/gpl.ja.html
 ********************************************************/

/*
 * File:   i2c-lib.c   for Microchip PIC XC8 (12F1822, 16F1823, 16F1827)
 */

#include <stdio.h>
#include <stdlib.h>

#include <xc.h>
#include "i2c-lib.h"

#define MODIFIED_FOR_PIC16F145X   // This parts have been modified by Ohamax

#ifndef _XTAL_FREQ
#ifdef MODIFIED_FOR_PIC16F145X
    #define _XTAL_FREQ 42000000   // 42MHz
#elif
    /* 例：4MHzの場合、4000000 をセットする */
    #define _XTAL_FREQ 4000000
#endif
#endif


// I2Cバスを有効化
void i2c_enable(void)
{
#ifdef MODIFIED_FOR_PIC16F145X
    SSP1STAT = 0b00000000;      // Max 400kHz high speed mode
    SSP1ADD = 26;               // Baud rate:  42MHz/((SSP1ADD + 1)*4) = 388.8kHz
    SSP1CON1 = 0b00101000;      // Enable I2C as Master Mode
#elif
    SSP1STAT = 0b10000000;      // I2C 100kHz
    SSP1ADD = 9;                // I2C?? Baud rate,  4MHz/((SSP1ADD + 1)*4) = 100kHz
    SSP1CON1 = 0b00101000;      // I2C??, Master Mode
#endif
}

// I2Cバスを無効化
void i2c_disable(void){
    SSP1CON1 = 0b00001000;      // I2C??, Master Mode
}

// I2C書き込みサイクルの開始（Start Conditionの発行）
void i2c_start(void){
    SSP1CON2bits.SEN = 1;       //  Start Condition Enabled bit
    i2c_wait();
}

// I2C書き込みサイクルの開始（Repeat Start Conditionの発行）
void i2c_repeat_start(void){
    SSP1CON2bits.RSEN = 1;      //  Start Condition Enabled bit
    i2c_wait();
}

// I2C書き込みサイクルの終了（Stop Conditionの発行）
void i2c_stop(void){
    SSP1CON2bits.PEN = 1;       // Stop Condition Enable bit
    i2c_wait();
}

// I2C通信がビジー状態を脱するまで待つ
void i2c_wait(void){
    while ( ( SSP1CON2 & 0x1F ) || ( SSP1STATbits.R_nW ) );

}

// I2Cバスにデータを送信（1バイト分）
void i2c_send_byte(const unsigned char data){
    SSP1BUF = data;
    i2c_wait();
}

//I2Cバスからデータ受信
// ack=1 : 受信後ACKを送信し、次のデータを送るようスレーブデバイスに指示
// ack=0 : 受信後NO_ACKを送信し、これ以上受信しないことをスレーブデバイスに指示
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

 