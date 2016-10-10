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

