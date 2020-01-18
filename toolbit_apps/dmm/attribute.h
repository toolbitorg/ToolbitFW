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
	ATT_PRODUCT_NAME     = 0x0000,
	ATT_PRODUCT_REVISION = 0x0001,
	ATT_PRODUCT_SERIAL   = 0x0002,
	ATT_FIRM_VERSION     = 0x0003,

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

static const ROMPTR char PRODUCT_NAME[]     = "Dmm";
static const ROMPTR char FIRM_VERSION[]     = "0.1";
// If PC2 input is low/high, PRODUCT_REVISION = 0/1
// PRODUCT_SERIAL is stored in HEF memory
#define NVM_PRODUCT_SERIAL_ADDR   0x1FF8
#define NVM_PRODUCT_SERIAL_SIZE   8
static const ROMPTR uint32_t NVM_PRODUCT_SERIAL0 @ NVM_PRODUCT_SERIAL_ADDR   = 1;
static const ROMPTR uint32_t NVM_PRODUCT_SERIAL1 @ NVM_PRODUCT_SERIAL_ADDR+4 = 0;


#endif	/* ATTRIBUTE_H__ */
