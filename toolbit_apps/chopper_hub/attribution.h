#ifndef ATTRIBUTION_H__
#define	ATTRIBUTION_H__

#ifdef __C18
#define ROMPTR rom
#else
#define ROMPTR
#endif

typedef enum
{
	// Basic operation code
	OP_GET_ATTR_VALUE = 0x10,
	OP_SET_ATTR_VALUE = 0x11
} HidCommBasicOperationCode;

typedef enum
{
	// Common attribution
	ATTR_PRODUCT_NAME = 0x0000,
	ATTR_PRODUCT_REVISION = 0x0001,
	ATTR_PRODUCT_SERIAL = 0x0002,
	ATTR_FIRM_VERSION = 0x0003
} HidCommCommonAttribution;

/*
struct Attribution{
    uint16_t id;
    uint8_t permission;
    uint8_t property;
    uint8_t *value;
};
 */

static const ROMPTR char PRODUCT_NAME[]     = "USB CHOPPER";
static const ROMPTR char PRODUCT_REVISION[] = "0.2";
static const ROMPTR char PRODUCT_SERIAL[]   = "SN0001";
static const ROMPTR char FIRM_VERSION[]     = "0.1";

#endif	/* ATTRIBUTION_H__ */

