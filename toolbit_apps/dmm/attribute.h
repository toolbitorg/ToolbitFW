#ifndef ATTRIBUTE_H__
#define	ATTRIBUTE_H__

#ifdef __C18
#define ROMPTR rom
#else
#define ROMPTR
#endif

#define VALUE_LEN 32

#define PROTOCOL_VERSION 0x00  // 7-6bits is effective

//#define byte uint8_t
#define ATTID uint16_t

typedef enum
{
	// Operation Code
	OP_METADATA_GET = 0x10,
	OP_CONFIG_SET,
	OP_ATT_VALUE_SET,
	OP_ATT_VALUE_GET,
	// Event Code
	EVT_NOTIFY = 0xA0
} OperationCode;

typedef enum
{
	// Return Code
	RC_FAIL = 0x0,
	RC_OK   = 0x1,
} ReturnCode;

typedef enum
{
    // Toolbit common attribute ID
    ATT_VENDOR_NAME      = 0x0000,
    ATT_PRODUCT_NAME     = 0x0001,
    ATT_PRODUCT_REVISION = 0x0002,
    ATT_PRODUCT_SERIAL   = 0x0003,
    ATT_FIRM_VERSION     = 0x0004,

    // Platform commom attribute ID
    ATT_I2C0_DEVICE_ADDR = 0x1400,
    ATT_I2C0_REG_ADDR    = 0x1401,
    ATT_I2C0_RW_1BYTE    = 0x1402,
    ATT_I2C0_RW_2BYTE    = 0x1403,

    // Product specific attribute ID
    ATT_VOLTAGE_RANGE    = 0x8100,
    ATT_VOLTAGE          = 0x8101,
	ATT_CURRENT_RANGE    = 0x8102,
	ATT_CURRENT          = 0x8103
} AttributionID;

/*
struct Attribution{
    uint16_t id;
    uint8_t permission;
    uint8_t property;
    uint8_t *value;
};
 */

static const ROMPTR char VENDOR_NAME[]      = "Toolbit";
static const ROMPTR char PRODUCT_NAME[]     = "DMM";
static const ROMPTR char FIRM_VERSION[]     = "0.1";
// If PA5 input is high/low, PRODUCT_REVISION = 0/1

// The serial number provided by 'USB 512-Word DFU Bootloader for PIC16(L)F1454/5/9' as follows as
//      0x81EE: one byte length
//      0x81EF: one byte for string type
//      0x81F0-0x81FF: 8 x 2 bytes for eight character UNICODE string
#define NVM_PRODUCT_SERIAL_ADDR 0x81F0
#define NVM_PRODUCT_SERIAL_SIZE 16
static const ROMPTR char NVM_PRODUCT_SERIAL0 @ NVM_PRODUCT_SERIAL_ADDR;


#endif	/* ATTRIBUTE_H__ */
