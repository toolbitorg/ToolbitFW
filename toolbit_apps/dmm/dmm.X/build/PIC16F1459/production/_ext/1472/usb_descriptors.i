# 1 "../usb_descriptors.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "../usb_descriptors.c" 2
# 21 "../usb_descriptors.c"
# 1 "../usb_config.h" 1
# 22 "../usb_descriptors.c" 2
# 1 "../../../usb/include\\usb.h" 1
# 39 "../../../usb/include\\usb.h"
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdint.h" 1 3



# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\musl_xc8.h" 1 3
# 4 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdint.h" 2 3
# 22 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdint.h" 3
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 127 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned long uintptr_t;
# 142 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long intptr_t;
# 158 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef signed char int8_t;




typedef short int16_t;




typedef __int24 int24_t;




typedef long int32_t;





typedef long long int64_t;
# 188 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long long intmax_t;





typedef unsigned char uint8_t;




typedef unsigned short uint16_t;




typedef __uint24 uint24_t;




typedef unsigned long uint32_t;





typedef unsigned long long uint64_t;
# 229 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned long long uintmax_t;
# 22 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdint.h" 2 3


typedef int8_t int_fast8_t;

typedef int64_t int_fast64_t;


typedef int8_t int_least8_t;
typedef int16_t int_least16_t;

typedef int24_t int_least24_t;

typedef int32_t int_least32_t;

typedef int64_t int_least64_t;


typedef uint8_t uint_fast8_t;

typedef uint64_t uint_fast64_t;


typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;

typedef uint24_t uint_least24_t;

typedef uint32_t uint_least32_t;

typedef uint64_t uint_least64_t;
# 139 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdint.h" 3
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/stdint.h" 1 3
typedef int32_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef uint32_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
# 139 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdint.h" 2 3
# 40 "../../../usb/include\\usb.h" 2
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdbool.h" 1 3
# 41 "../../../usb/include\\usb.h" 2
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdlib.h" 1 3
# 10 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdlib.h" 3
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\features.h" 1 3
# 10 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdlib.h" 2 3
# 21 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdlib.h" 3
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 18 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long int wchar_t;
# 122 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned size_t;
# 21 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdlib.h" 2 3


int atoi (const char *);
long atol (const char *);
long long atoll (const char *);
double atof (const char *);

float strtof (const char *restrict, char **restrict);
double strtod (const char *restrict, char **restrict);
long double strtold (const char *restrict, char **restrict);



long strtol (const char *restrict, char **restrict, int);
unsigned long strtoul (const char *restrict, char **restrict, int);
long long strtoll (const char *restrict, char **restrict, int);
unsigned long long strtoull (const char *restrict, char **restrict, int);

int rand (void);
void srand (unsigned);

          void abort (void);
int atexit (void (*) (void));
          void exit (int);
          void _Exit (int);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));

__attribute__((nonreentrant)) void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);
long long llabs (long long);

typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;
typedef struct { long long quot, rem; } lldiv_t;

div_t div (int, int);
ldiv_t ldiv (long, long);
lldiv_t lldiv (long long, long long);

typedef struct { unsigned int quot, rem; } udiv_t;
typedef struct { unsigned long quot, rem; } uldiv_t;
udiv_t udiv (unsigned int, unsigned int);
uldiv_t uldiv (unsigned long, unsigned long);





size_t __ctype_get_mb_cur_max(void);
# 42 "../../../usb/include\\usb.h" 2




struct setup_packet;
# 83 "../../../usb/include\\usb.h"
extern int16_t usb_application_get_string(uint8_t string_number, const void **ptr);
# 92 "../../../usb/include\\usb.h"
extern const struct device_descriptor this_device_descriptor;
# 110 "../../../usb/include\\usb.h"
extern const struct configuration_descriptor *usb_application_config_descs[];
# 144 "../../../usb/include\\usb.h"
void app_set_configuration_callback(uint8_t configuration);
# 158 "../../../usb/include\\usb.h"
uint16_t app_get_device_status_callback();
# 172 "../../../usb/include\\usb.h"
void app_endpoint_halt_callback(uint8_t endpoint, _Bool halted);
# 191 "../../../usb/include\\usb.h"
int8_t app_set_interface_callback(uint8_t interface, uint8_t alt_setting);
# 209 "../../../usb/include\\usb.h"
int8_t app_get_interface_callback(uint8_t interface);
# 226 "../../../usb/include\\usb.h"
void app_out_transaction_callback(uint8_t endpoint);
# 243 "../../../usb/include\\usb.h"
void app_in_transaction_complete_callback(uint8_t endpoint);
# 290 "../../../usb/include\\usb.h"
int8_t app_unknown_setup_request_callback(const struct setup_packet *pkt);
# 316 "../../../usb/include\\usb.h"
int16_t app_unknown_get_descriptor_callback(const struct setup_packet *pkt, const void **descriptor);
# 327 "../../../usb/include\\usb.h"
void app_start_of_frame_callback(void);
# 337 "../../../usb/include\\usb.h"
void app_usb_reset_callback(void);
# 350 "../../../usb/include\\usb.h"
void usb_init(void);
# 364 "../../../usb/include\\usb.h"
void usb_service(void);
# 375 "../../../usb/include\\usb.h"
uint8_t usb_get_configuration(void);
# 402 "../../../usb/include\\usb.h"
unsigned char *usb_get_in_buffer(uint8_t endpoint);
# 416 "../../../usb/include\\usb.h"
void usb_send_in_buffer(uint8_t endpoint, size_t len);
# 428 "../../../usb/include\\usb.h"
_Bool usb_in_endpoint_busy(uint8_t endpoint);
# 440 "../../../usb/include\\usb.h"
uint8_t usb_halt_ep_in(uint8_t ep);
# 453 "../../../usb/include\\usb.h"
_Bool usb_in_endpoint_halted(uint8_t endpoint);
# 466 "../../../usb/include\\usb.h"
_Bool usb_out_endpoint_has_data(uint8_t endpoint);
# 478 "../../../usb/include\\usb.h"
void usb_arm_out_endpoint(uint8_t endpoint);
# 490 "../../../usb/include\\usb.h"
uint8_t usb_halt_ep_out(uint8_t ep);
# 504 "../../../usb/include\\usb.h"
_Bool usb_out_endpoint_halted(uint8_t endpoint);
# 519 "../../../usb/include\\usb.h"
uint8_t usb_get_out_buffer(uint8_t endpoint, const unsigned char **buffer);
# 556 "../../../usb/include\\usb.h"
typedef int8_t (*usb_ep0_data_stage_callback)(_Bool data_ok, void *context);
# 581 "../../../usb/include\\usb.h"
void usb_start_receive_ep0_data_stage(char *buffer, size_t len,
 usb_ep0_data_stage_callback callback, void *context);
# 610 "../../../usb/include\\usb.h"
void usb_send_data_stage(char *buffer, size_t len,
 usb_ep0_data_stage_callback callback, void *context);
# 23 "../usb_descriptors.c" 2
# 1 "../../../usb/include\\usb_ch9.h" 1
# 59 "../../../usb/include\\usb_ch9.h"
enum PID {
 PID_OUT = 0x01,
 PID_IN = 0x09,
 PID_SOF = 0x05,
 PID_SETUP = 0x0D,
 PID_DATA0 = 0x03,
 PID_DATA1 = 0x0B,
 PID_DATA2 = 0x07,
 PID_MDATA = 0x0F,
 PID_ACK = 0x02,
 PID_NAK = 0x0A,
 PID_STALL = 0x0E,
 PID_NYET = 0x06,
 PID_PRE = 0x0C,
 PID_ERR = 0x0C,
 PID_SPLIT = 0x08,
 PID_PING = 0x04,
 PID_RESERVED = 0x00,
};





enum DestinationType {
 DEST_DEVICE = 0,
 DEST_INTERFACE = 1,
 DEST_ENDPOINT = 2,
 DEST_OTHER_ELEMENT = 3,
};





enum RequestType {
 REQUEST_TYPE_STANDARD = 0,
 REQUEST_TYPE_CLASS = 1,
 REQUEST_TYPE_VENDOR = 2,
 REQUEST_TYPE_RESERVED = 3,
};





enum StandardControlRequest {
 GET_STATUS = 0x0,
 CLEAR_FEATURE = 0x1,
 SET_FEATURE = 0x3,
 SET_ADDRESS = 0x5,
 GET_DESCRIPTOR = 0x6,
 SET_DESCRIPTOR = 0x7,
 GET_CONFIGURATION = 0x8,
 SET_CONFIGURATION = 0x9,
 GET_INTERFACE = 0xA,
 SET_INTERFACE = 0xB,
 SYNCH_FRAME = 0xC,
};


enum DescriptorTypes {
 DESC_DEVICE = 0x1,
 DESC_CONFIGURATION = 0x2,
 DESC_STRING = 0x3,
 DESC_INTERFACE = 0x4,
 DESC_ENDPOINT = 0x5,
 DESC_DEVICE_QUALIFIER = 0x6,
 DESC_OTHER_SPEED_CONFIGURATION = 0x7,
 DESC_INTERFACE_POWER = 0x8,
 DESC_OTG = 0x9,
 DESC_DEBUG = 0xA,
 DESC_INTERFACE_ASSOCIATION = 0xB,
};
# 143 "../../../usb/include\\usb_ch9.h"
enum DeviceClassCodes {
 DEVICE_CLASS_DEFINED_AT_INTERFACE_LEVEL = 0x0,
 DEVICE_CLASS_MISC = 0xef,
 DEVICE_CLASS_APPLICATION_SPECIFIC = 0xfe,
 DEVICE_CLASS_VENDOR_SPECIFIC = 0xff,
};


enum EndpointAttributes {
 EP_CONTROL = 0x0,
 EP_ISOCHRONOUS = 0x1,
 EP_BULK = 0x2,
 EP_INTERRUPT = 0x3,


};






struct setup_packet {
 union {
  struct {
   uint8_t destination : 5;
   uint8_t type : 2;
   uint8_t direction : 1;
  };
  uint8_t bmRequestType;
 } REQUEST;
 uint8_t bRequest;
 uint16_t wValue;
 uint16_t wIndex;
 uint16_t wLength;
};


struct device_descriptor {
 uint8_t bLength;
 uint8_t bDescriptorType;
 uint16_t bcdUSB;
 uint8_t bDeviceClass;
 uint8_t bDeviceSubclass;
 uint8_t bDeviceProtocol;
 uint8_t bMaxPacketSize0;
 uint16_t idVendor;
 uint16_t idProduct;
 uint16_t bcdDevice;
 uint8_t iManufacturer;
 uint8_t iProduct;
 uint8_t iSerialNumber;
 uint8_t bNumConfigurations;
};


struct configuration_descriptor {
 uint8_t bLength;
 uint8_t bDescriptorType;
 uint16_t wTotalLength;
 uint8_t bNumInterfaces;
 uint8_t bConfigurationValue;
 uint8_t iConfiguration;
 uint8_t bmAttributes;
 uint8_t bMaxPower;
};


struct interface_descriptor {
 uint8_t bLength;
 uint8_t bDescriptorType;
 uint8_t bInterfaceNumber;
 uint8_t bAlternateSetting;
 uint8_t bNumEndpoints;
 uint8_t bInterfaceClass;
 uint8_t bInterfaceSubclass;
 uint8_t bInterfaceProtocol;
 uint8_t iInterface;
};


struct endpoint_descriptor {

 uint8_t bLength;
 uint8_t bDescriptorType;
 uint8_t bEndpointAddress;
 uint8_t bmAttributes;
 uint16_t wMaxPacketSize;
 uint8_t bInterval;
};


struct string_descriptor {
 uint8_t bLength;
 uint8_t bDescriptorType;
 uint16_t chars[];
};






struct interface_association_descriptor {
 uint8_t bLength;
 uint8_t bDescriptorType;
 uint8_t bFirstInterface;
 uint8_t bInterfaceCount;
 uint8_t bFunctionClass;
 uint8_t bFunctionSubClass;
 uint8_t bFunctionProtocol;
 uint8_t iFunction;
};
# 24 "../usb_descriptors.c" 2
# 1 "../../../usb/include\\usb_hid.h" 1
# 63 "../../../usb/include\\usb_hid.h"
enum HIDDescriptorTypes {
 DESC_HID = 0x21,
 DESC_REPORT = 0x22,
 DESC_PHYSICAL = 0x23,
};


enum HIDRequests {
 HID_GET_REPORT = 0x1,
 HID_GET_IDLE = 0x2,
 HID_GET_PROTOCOL = 0x3,
 HID_SET_REPORT = 0x9,
 HID_SET_IDLE = 0xa,
 HID_SET_PROTOCOL = 0xb,
};


enum HIDReportTypes {
 HID_INPUT = 0x1,
 HID_OUTPUT = 0x2,
 HID_FEATURE = 0x3,
};


enum HIDProtocols {
 HID_PROTO_BOOT = 0,
 HID_PROTO_REPORT = 1,
};

struct hid_descriptor {
 uint8_t bLength;
 uint8_t bDescriptorType;
 uint16_t bcdHID;
 uint8_t bCountryCode;
 uint8_t bNumDescriptors;
 uint8_t bDescriptorType2;
 uint16_t wDescriptorLength;
};

struct hid_optional_descriptor {
 uint8_t bDescriptorType;
 uint16_t wDescriptorLength;
};
# 121 "../../../usb/include\\usb_hid.h"
extern int16_t usb_application_get_hid_descriptor(uint8_t interface, const void **ptr);
# 137 "../../../usb/include\\usb_hid.h"
extern int16_t usb_application_get_hid_report_descriptor(uint8_t interface, const void **ptr);
# 192 "../../../usb/include\\usb_hid.h"
extern int16_t app_get_report_callback(uint8_t interface, uint8_t report_type,
                                       uint8_t report_id, const void **report,
                                       usb_ep0_data_stage_callback *callback,
                                       void **context);
# 232 "../../../usb/include\\usb_hid.h"
extern int8_t app_set_report_callback(uint8_t interface, uint8_t report_type,
                                      uint8_t report_id);
# 249 "../../../usb/include\\usb_hid.h"
extern uint8_t app_get_idle_callback(uint8_t interface, uint8_t report_id);
# 266 "../../../usb/include\\usb_hid.h"
extern int8_t app_set_idle_callback(uint8_t interface, uint8_t report_id,
                                    uint8_t idle_rate);
# 283 "../../../usb/include\\usb_hid.h"
extern int8_t app_get_protocol_callback(uint8_t interface);
# 300 "../../../usb/include\\usb_hid.h"
extern int8_t app_set_protocol_callback(uint8_t interface, uint8_t protocol);
# 329 "../../../usb/include\\usb_hid.h"
uint8_t process_hid_setup_request(const struct setup_packet *setup);
# 25 "../usb_descriptors.c" 2
# 58 "../usb_descriptors.c"
struct configuration_1_packet {
 struct configuration_descriptor config;
 struct interface_descriptor interface;
 struct hid_descriptor hid;
 struct endpoint_descriptor ep;
 struct endpoint_descriptor ep1_out;
};
# 74 "../usb_descriptors.c"
const struct device_descriptor this_device_descriptor =
{
 sizeof(struct device_descriptor),
 DESC_DEVICE,
 0x0200,
 0x00,
 0x00,
 0x00,
 8,
 0x04D8,



  0xEC0,
 0x0003,
 1,
 2,
 0,
 1
};


static const uint8_t custom_report_descriptor[] =
{
    0x06, 0x00, 0xFF,
    0x09, 0x01,
    0xA1, 0x01,
    0x19, 0x01,
    0x29, 0x40,
    0x15, 0x01,
    0x25, 0x40,
    0x75, 0x08,
    0x95, 0x40,
    0x81, 0x00,
    0x19, 0x01,
    0x29, 0x40,
    0x91, 0x00,
    0xC0
};
# 123 "../usb_descriptors.c"
static const struct configuration_1_packet configuration_1 =
{
 {

 sizeof(struct configuration_descriptor),
 DESC_CONFIGURATION,
 sizeof(configuration_1),
 1,
 1,
 0,
 0b10000000,
 100/2,
 },

 {

 sizeof(struct interface_descriptor),
 DESC_INTERFACE,
 0x0,
 0x0,
 0x2,
 0x03,
 0x00,
 0x00,
 0x00,
 },

 {

 sizeof(struct hid_descriptor),
 DESC_HID,
 0x0101,
 0x0,
 1,
 DESC_REPORT,
 sizeof(custom_report_descriptor),
 },

 {

 sizeof(struct endpoint_descriptor),
 DESC_ENDPOINT,
 0x01 | 0x80,
 EP_INTERRUPT,
 64,
 1,
 },

 {

 sizeof(struct endpoint_descriptor),
 DESC_ENDPOINT,
 0x01 ,
 EP_INTERRUPT,
 64,
 1,
 },
};
# 194 "../usb_descriptors.c"
static const struct {uint8_t bLength;uint8_t bDescriptorType; uint16_t lang; } str00 = {
 sizeof(str00),
 DESC_STRING,
 0x0409
};

static const struct {uint8_t bLength;uint8_t bDescriptorType; uint16_t chars[11]; } vendor_string = {
 sizeof(vendor_string),
 DESC_STRING,
 {'t','o','o','l','b','i','t','.','o','r','g'}
};

static const struct {uint8_t bLength;uint8_t bDescriptorType; uint16_t chars[11]; } product_string = {
 sizeof(product_string),
 DESC_STRING,
 {'L','u','k','e'}
};

static const struct {uint8_t bLength;uint8_t bDescriptorType; uint16_t chars[11]; } interface_string = {
 sizeof(interface_string),
 DESC_STRING,
 {'I','n','t','e','r','f','a','c','e',' ','1'}
};
# 228 "../usb_descriptors.c"
int16_t usb_application_get_string(uint8_t string_number, const void **ptr)
{
 if (string_number == 0) {
  *ptr = &str00;
  return sizeof(str00);
 }
 else if (string_number == 1) {
  *ptr = &vendor_string;
  return sizeof(vendor_string);
 }
 else if (string_number == 2) {
  *ptr = &product_string;
  return sizeof(product_string);
 }
 else if (string_number == 3) {


  return -1;
 }

 return -1;
}
# 262 "../usb_descriptors.c"
const struct configuration_descriptor *usb_application_config_descs[] =
{
 (struct configuration_descriptor*) &configuration_1,
};
typedef char STATIC_SIZE_CHECK_LINE_266 [((sizeof(usb_application_config_descs)/sizeof(*usb_application_config_descs))==1)?1:-1];
typedef char STATIC_SIZE_CHECK_LINE_267 [(sizeof(this_device_descriptor)==18)?1:-1];


int16_t usb_application_get_hid_descriptor(uint8_t interface, const void **ptr)
{


 const void *p = &configuration_1.hid;
 *ptr = p;
 return sizeof(configuration_1.hid);
}


int16_t usb_application_get_hid_report_descriptor(uint8_t interface, const void **ptr)
{
 *ptr = custom_report_descriptor;
 return sizeof(custom_report_descriptor);
}
