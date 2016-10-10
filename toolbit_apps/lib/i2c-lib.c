/********************************************************
 *
 * Copyright (C) INOUE Hirokazu, All Rights Reserved
 *     http://oasis.halfmoon.jp/
 *
 *
 * GNU GPL Free Software
 *
 * ���̃v���O�����̓t���[�\�t�g�E�F�A�ł��B���Ȃ��͂�����A�t���[�\�t�g�E�F�A��
 * �c�ɂ���Ĕ��s���ꂽ GNU ��ʌ��O���p�����_��(�o�[�W����2���A��]�ɂ���Ă�
 * ����ȍ~�̃o�[�W�����̂����ǂꂩ)�̒�߂�����̉��ōĔЕz�܂��͉��ς��邱�Ƃ�
 * �ł��܂��B
 *
 * ���̃v���O�����͗L�p�ł��邱�Ƃ�����ĔЕz����܂����A*�S���̖��ۏ�* �ł��B
 * ���Ɖ\���̕ۏ؂����̖ړI�ւ̓K�����́A���O�Ɏ����ꂽ���̂��܂ߑS�����݂�
 * �܂���B�ڂ�����GNU ��ʌ��O���p�����_�񏑂��������������B
 *
 * ���Ȃ��͂��̃v���O�����Ƌ��ɁAGNU ��ʌ��O���p�����_�񏑂̕��������ꕔ�󂯎�
 * �����͂��ł��B�����󂯎���Ă��Ȃ���΁A�t���[�\�t�g�E�F�A���c�܂Ő������Ă�
 * ������(����� the Free Software Foundation, Inc., 59 Temple Place, Suite 330
 * , Boston, MA 02111-1307 USA)�B
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
    /* ��F4MHz�̏ꍇ�A4000000 ���Z�b�g���� */
    #define _XTAL_FREQ 4000000
#endif
#endif


// I2C�o�X��L����
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

// I2C�o�X�𖳌���
void i2c_disable(void){
    SSP1CON1 = 0b00001000;      // I2C??, Master Mode
}

// I2C�������݃T�C�N���̊J�n�iStart Condition�̔��s�j
void i2c_start(void){
    SSP1CON2bits.SEN = 1;       //  Start Condition Enabled bit
    i2c_wait();
}

// I2C�������݃T�C�N���̊J�n�iRepeat Start Condition�̔��s�j
void i2c_repeat_start(void){
    SSP1CON2bits.RSEN = 1;      //  Start Condition Enabled bit
    i2c_wait();
}

// I2C�������݃T�C�N���̏I���iStop Condition�̔��s�j
void i2c_stop(void){
    SSP1CON2bits.PEN = 1;       // Stop Condition Enable bit
    i2c_wait();
}

// I2C�ʐM���r�W�[��Ԃ�E����܂ő҂�
void i2c_wait(void){
    while ( ( SSP1CON2 & 0x1F ) || ( SSP1STATbits.R_nW ) );

}

// I2C�o�X�Ƀf�[�^�𑗐M�i1�o�C�g���j
void i2c_send_byte(const unsigned char data){
    SSP1BUF = data;
    i2c_wait();
}

//I2C�o�X����f�[�^��M
// ack=1 : ��M��ACK�𑗐M���A���̃f�[�^�𑗂�悤�X���[�u�f�o�C�X�Ɏw��
// ack=0 : ��M��NO_ACK�𑗐M���A����ȏ��M���Ȃ����Ƃ��X���[�u�f�o�C�X�Ɏw��
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

 