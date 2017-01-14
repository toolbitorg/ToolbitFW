/*
 * Luke
 * 
 * This program is based on M-Stack and USB HID Mouse released by
 * Signal 11 Software
 */

/*
 * USB HID Mouse
 *
 * This file may be used by anyone for any purpose and may be used as a
 * starting point making your own application using M-Stack.
 *
 * It is worth noting that M-Stack itself is not under the same license as
 * this file.
 *
 * M-Stack is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  For details, see sections 7, 8, and 9
 * of the Apache License, version 2.0 which apply to this file.  If you have
 * purchased a commercial license for this software from Signal 11 Software,
 * your commerical license superceeds the information in this header.
 *
 * Alan Ott
 * Signal 11 Software
 * 2013-08-13
 */

#include "usb.h"
#include <xc.h>
#include <string.h>
#include "usb_config.h"
#include "usb_ch9.h"
#include "usb_hid.h"
#include "hardware.h"
#include "i2c-lib.h"
#include "attribute.h"
#include "luke_func.h"

#ifdef MULTI_CLASS_DEVICE
static uint8_t hid_interfaces[] = {0};
#endif


void luke_init() {
    LATC = 0x0;
    ANSELC = 0xC;
    PORTC = 0x00;
    TRISC = 0x03;  // RC0, RC1: input, other pins: output
    i2c_enable();
}

int main(void) {
    hardware_init();

    luke_init();
    
#ifdef MULTI_CLASS_DEVICE
    hid_set_interface_list(hid_interfaces, sizeof (hid_interfaces));
#endif
    usb_init();

    uint8_t value = 0; // This value will be set by host PC
    uint8_t regAddr = 0;
        
    while (1) {
        if (usb_is_configured() && usb_out_endpoint_has_data(1)) {
            //                uint8_t len;
            const unsigned char *RxDataBuffer;
            unsigned char *TxDataBuffer = usb_get_in_buffer(1);
            /* Data received from host */

            if (!usb_in_endpoint_halted(1)) {
                /* Wait for EP 1 IN to become free then send. This of
                 * course only works using interrupts. */
                while (usb_in_endpoint_busy(1))
                    ;

                usb_get_out_buffer(1, &RxDataBuffer);

                uint8_t pcktVer = RxDataBuffer[0] & 0xC0;
                uint8_t pcktLen = RxDataBuffer[0] & 0x2F;

                if (pcktVer == PROTOCOL_VERSION && pcktLen > 1) {

                    uint8_t opcode = RxDataBuffer[1];
                    TxDataBuffer[1] = opcode; // echo back operation code

                    if (opcode == OP_ATT_VALUE_GET) {

                        ATTID id = (RxDataBuffer[2] << 8) + RxDataBuffer[3];
                        TxDataBuffer[2] = RC_OK; // Return OK code
                        TxDataBuffer[0] = PROTOCOL_VERSION;
                        
                        if (id == ATT_PRODUCT_NAME) {

                            uint8_t len = strlen(PRODUCT_NAME) + 1; // +1 for NULL
                            TxDataBuffer[0] |= len + 3; // packet length
                            memcpy(&TxDataBuffer[3], PRODUCT_NAME, len);

                        } else if (id == ATT_PRODUCT_REVISION) {

                            uint8_t len = strlen(PRODUCT_REVISION) + 1; // +1 for NULL
                            TxDataBuffer[0] |= len + 3; // packet length
                            memcpy(&TxDataBuffer[3], PRODUCT_REVISION, len);

                        } else if (id == ATT_PRODUCT_SERIAL) {

                            uint8_t len = strlen(PRODUCT_SERIAL) + 1; // +1 for NULL
                            TxDataBuffer[0] |= len + 3; // packet length
                            memcpy(&TxDataBuffer[3], PRODUCT_SERIAL, len);

                        } else if (id == ATT_FIRM_VERSION) {

                            uint8_t len = strlen(FIRM_VERSION) + 1; // +1 for NULL
                            TxDataBuffer[0] |= len + 3; // packet length
                            memcpy(&TxDataBuffer[3], FIRM_VERSION, len);

                        } else if (id == ATT_VOLTAGE) {

                            TxDataBuffer[0] |= 4 + 3; // packet length
                            TxDataBuffer[3] = 0; // return setting... 
                            
                        } else if (id == ATT_REG_VAL) {

                            TxDataBuffer[0]  |= 2 + 3; // packet length
                            uint16_t dat = i2c_reg_read(regAddr);
                            TxDataBuffer[4] = dat >> 8; 
                            TxDataBuffer[3] = dat;
                            
                        } else {
                            TxDataBuffer[0] |= 3; // packet length
                            TxDataBuffer[2] = RC_FAIL; // Return error code
                        }

                        // end of if (opcode == OP_ATT_VALUE_GET)
                    } else if (opcode == OP_ATT_VALUE_SET) {

                        ATTID id = (RxDataBuffer[2] << 8) + RxDataBuffer[3];
                        TxDataBuffer[0] = PROTOCOL_VERSION | 3; // packet length
                        TxDataBuffer[2] = RC_OK; // Return OK code

                        if (id == ATT_REG_ADDR) {

                            regAddr = RxDataBuffer[4];

                        } else if (id == ATT_REG_VAL) {

                            i2c_reg_write(regAddr, RxDataBuffer[5], RxDataBuffer[4]);

                        } else {

                            TxDataBuffer[2] = RC_FAIL; // Return error code

                        }
                    }

                    // Send response
                    memcpy(usb_get_in_buffer(1), TxDataBuffer, EP_1_IN_LEN);
                    usb_send_in_buffer(1, EP_1_IN_LEN);

                   
                } // end of if (pcktVer == PROTOCOL_VERSION && pcktLen > 1)
            }
            usb_arm_out_endpoint(1);
        }

#ifndef USB_USE_INTERRUPTS
        usb_service();
#endif
    }

    return 0;
}

/* Callbacks. These function names are set in usb_config.h. */
void app_set_configuration_callback(uint8_t configuration) {

}

uint16_t app_get_device_status_callback() {
    return 0x0000;
}

void app_endpoint_halt_callback(uint8_t endpoint, bool halted) {

}

int8_t app_set_interface_callback(uint8_t interface, uint8_t alt_setting) {
    return 0;
}

int8_t app_get_interface_callback(uint8_t interface) {
    return 0;
}

void app_out_transaction_callback(uint8_t endpoint) {

}

void app_in_transaction_complete_callback(uint8_t endpoint) {

}

int8_t app_unknown_setup_request_callback(const struct setup_packet *setup) {
    /* To use the HID device class, have a handler for unknown setup
     * requests and call process_hid_setup_request() (as shown here),
     * which will check if the setup request is HID-related, and will
     * call the HID application callbacks defined in usb_hid.h. For
     * composite devices containing other device classes, make sure
     * MULTI_CLASS_DEVICE is defined in usb_config.h and call all
     * appropriate device class setup request functions here.
     */
    return process_hid_setup_request(setup);
}

int16_t app_unknown_get_descriptor_callback(const struct setup_packet *pkt, const void **descriptor) {
    return -1;
}

void app_start_of_frame_callback(void) {

}

void app_usb_reset_callback(void) {

}

/* HID Callbacks. See usb_hid.h for documentation. */

static uint8_t report_buf[3];

static int8_t get_report_callback(bool transfer_ok, void *context) {
    /* Nothing to do here really. It either succeeded or failed. If it
     * failed, the host will ask for it again. It's nice to be on the
     * device side in USB. */
    return 0;
}

int16_t app_get_report_callback(uint8_t interface, uint8_t report_type,
        uint8_t report_id, const void **report,
        usb_ep0_data_stage_callback *callback,
        void **context) {
    /* This isn't a composite device, so there's no need to check the
     * interface here. Also, we know that there's only one report for
     * this device, so there's no need to check report_type or report_id.
     *
     * Set report, callback, and context; and the USB stack will send
     * the report, calling our callback (get_report_callback()) when
     * it has finished.
     */
    *report = report_buf;
    *callback = get_report_callback;
    *context = NULL;
    return sizeof (report_buf);
}

int8_t app_set_report_callback(uint8_t interface, uint8_t report_type,
        uint8_t report_id) {
    /* To handle Set_Report, call usb_start_receive_ep0_data_stage()
     * here. See the documentation for HID_SET_REPORT_CALLBACK() in
     * usb_hid.h. For this device though, there are no output or
     * feature reports. */
    return -1;
}

uint8_t app_get_idle_callback(uint8_t interface, uint8_t report_id) {
    return 0;
}

int8_t app_set_idle_callback(uint8_t interface, uint8_t report_id,
        uint8_t idle_rate) {
    return -1;
}

int8_t app_get_protocol_callback(uint8_t interface) {
    return 1;
}

int8_t app_set_protocol_callback(uint8_t interface, uint8_t report_id) {
    return -1;
}


#ifdef _PIC14E

void interrupt isr() {
    usb_service();
}
#elif _PIC18

#ifdef __XC8

void interrupt high_priority isr() {
    usb_service();
}
#elif _PICC18
#error need to make ISR
#endif

#endif