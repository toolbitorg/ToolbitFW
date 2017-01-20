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
    ATT_GPIO_INOUT_MODE  = 0x1000,
    ATT_GPIO_RW          = 0x1003,

    // Product specific attribute ID
    ATT_USB_PORT_CTRL    = 0x8000,
} AttributionID;

/*
struct Attribution{
    uint16_t id;
    uint8_t permission;
    uint8_t property;
    uint8_t *value;
};
 */

static const ROMPTR char PRODUCT_NAME[]     = "CHOPPER HUB";
static const ROMPTR char PRODUCT_REVISION[] = "0.2";
static const ROMPTR char PRODUCT_SERIAL[]   = "SN0001";
static const ROMPTR char FIRM_VERSION[]     = "0.1";

#endif	/* ATTRIBUTE_H__ */

