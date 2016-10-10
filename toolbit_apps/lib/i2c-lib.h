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

