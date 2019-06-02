	.file "F:\\microchip\\mla\\v2013_12_20\\apps\\usb\\device\\msd_internal_flash\\firmware\\MPLAB.X\\..\\src\\usb\\usb_descriptors.c"
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
	.section	.debug_info,info
.Ldebug_info0:
	.section	.debug_line,info
.Ldebug_line0:
	.section	.text,code
.Ltext0:
	.global	_device_dsc	; export
	.section	.const,psv,page
	.align	2
	.type	_device_dsc,@object
_device_dsc:
	.byte 18
	.byte 1
	.word	512
	.byte 0
	.byte 0
	.byte 0
	.byte 8
	.word	1240
	.word	9
	.word	1
	.byte 1
	.byte 2
	.byte 3
	.byte 1
	.global	_configDescriptor1	; export
	.type	_configDescriptor1,@object
_configDescriptor1:
	.byte 9
	.byte 2
	.byte 32
	.byte 0
	.byte 1
	.byte 1
	.byte 0
	.byte -64
	.byte 50
	.byte 9
	.byte 4
	.byte 0
	.byte 0
	.byte 2
	.byte 8
	.byte 6
	.byte 80
	.byte 0
	.byte 7
	.byte 5
	.byte -127
	.byte 2
	.byte 64
	.byte 0
	.byte 1
	.byte 7
	.byte 5
	.byte 1
	.byte 2
	.byte 64
	.byte 0
	.byte 1
	.global	_sd000	; export
	.align	2
	.type	_sd000,@object
_sd000:
	.byte 4
	.byte 3
	.word	1033
	.global	_sd001	; export
	.align	2
	.type	_sd001,@object
_sd001:
	.byte 52
	.byte 3
	.word	77
	.word	105
	.word	99
	.word	114
	.word	111
	.word	99
	.word	104
	.word	105
	.word	112
	.word	32
	.word	84
	.word	101
	.word	99
	.word	104
	.word	110
	.word	111
	.word	108
	.word	111
	.word	103
	.word	121
	.word	32
	.word	73
	.word	110
	.word	99
	.word	46
	.global	_sd002	; export
	.align	2
	.type	_sd002,@object
_sd002:
	.byte 58
	.byte 3
	.word	77
	.word	105
	.word	99
	.word	114
	.word	111
	.word	99
	.word	104
	.word	105
	.word	112
	.word	32
	.word	77
	.word	97
	.word	115
	.word	115
	.word	32
	.word	83
	.word	116
	.word	111
	.word	114
	.word	97
	.word	103
	.word	101
	.word	32
	.word	68
	.word	114
	.word	105
	.word	118
	.word	101
	.global	_sd003	; export
	.align	2
	.type	_sd003,@object
_sd003:
	.byte 26
	.byte 3
	.word	49
	.word	50
	.word	51
	.word	52
	.word	53
	.word	54
	.word	55
	.word	56
	.word	57
	.word	48
	.word	57
	.word	57
	.global	_USB_CD_Ptr	; export
	.align	2
	.type	_USB_CD_Ptr,@object
_USB_CD_Ptr:
	.word	_configDescriptor1
	.global	_USB_SD_Ptr	; export
	.align	2
	.type	_USB_SD_Ptr,@object
_USB_SD_Ptr:
	.word	_sd000
	.word	_sd001
	.word	_sd002
	.word	_sd003
	.section	.text,code
.Letext0:
	.section	.debug_info,info
	.4byte	0x86b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1_21) (A) Build date: Jan  2 2014"
	.byte	0x1
	.asciz	"../src/usb/usb_descriptors.c"
	.ascii	"F:\\\\microchip\\\\mla\\\\v2013_12_20\\\\apps\\\\usb\\\\device\\\\ms"
	.asciz	"d_internal_flash\\\\firmware\\\\MPLAB.X"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.asciz	"signed char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.asciz	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.asciz	"long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.asciz	"long long int"
	.uleb128 0x3
	.asciz	"uint8_t"
	.byte	0x1
	.byte	0x2b
	.4byte	0x122
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.asciz	"uint16_t"
	.byte	0x1
	.byte	0x31
	.4byte	0xd0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.asciz	"long unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.asciz	"long long unsigned int"
	.uleb128 0x4
	.byte	0x2
	.byte	0x4
	.byte	0xc3
	.4byte	0x466
	.uleb128 0x5
	.asciz	"EVENT_NONE"
	.sleb128 0
	.uleb128 0x5
	.asciz	"EVENT_DEVICE_STACK_BASE"
	.sleb128 1
	.uleb128 0x5
	.asciz	"EVENT_HOST_STACK_BASE"
	.sleb128 100
	.uleb128 0x5
	.asciz	"EVENT_HUB_ATTACH"
	.sleb128 101
	.uleb128 0x5
	.asciz	"EVENT_STALL"
	.sleb128 102
	.uleb128 0x5
	.asciz	"EVENT_VBUS_SES_REQUEST"
	.sleb128 103
	.uleb128 0x5
	.asciz	"EVENT_VBUS_OVERCURRENT"
	.sleb128 104
	.uleb128 0x5
	.asciz	"EVENT_VBUS_REQUEST_POWER"
	.sleb128 105
	.uleb128 0x5
	.asciz	"EVENT_VBUS_RELEASE_POWER"
	.sleb128 106
	.uleb128 0x5
	.asciz	"EVENT_VBUS_POWER_AVAILABLE"
	.sleb128 107
	.uleb128 0x5
	.asciz	"EVENT_UNSUPPORTED_DEVICE"
	.sleb128 108
	.uleb128 0x5
	.asciz	"EVENT_CANNOT_ENUMERATE"
	.sleb128 109
	.uleb128 0x5
	.asciz	"EVENT_CLIENT_INIT_ERROR"
	.sleb128 110
	.uleb128 0x5
	.asciz	"EVENT_OUT_OF_MEMORY"
	.sleb128 111
	.uleb128 0x5
	.asciz	"EVENT_UNSPECIFIED_ERROR"
	.sleb128 112
	.uleb128 0x5
	.asciz	"EVENT_DETACH"
	.sleb128 113
	.uleb128 0x5
	.asciz	"EVENT_TRANSFER"
	.sleb128 114
	.uleb128 0x5
	.asciz	"EVENT_SOF"
	.sleb128 115
	.uleb128 0x5
	.asciz	"EVENT_RESUME"
	.sleb128 116
	.uleb128 0x5
	.asciz	"EVENT_SUSPEND"
	.sleb128 117
	.uleb128 0x5
	.asciz	"EVENT_RESET"
	.sleb128 118
	.uleb128 0x5
	.asciz	"EVENT_DATA_ISOC_READ"
	.sleb128 119
	.uleb128 0x5
	.asciz	"EVENT_DATA_ISOC_WRITE"
	.sleb128 120
	.uleb128 0x5
	.asciz	"EVENT_OVERRIDE_CLIENT_DRIVER_SELECTION"
	.sleb128 121
	.uleb128 0x5
	.asciz	"EVENT_1MS"
	.sleb128 122
	.uleb128 0x5
	.asciz	"EVENT_GENERIC_BASE"
	.sleb128 400
	.uleb128 0x5
	.asciz	"EVENT_MSD_BASE"
	.sleb128 500
	.uleb128 0x5
	.asciz	"EVENT_HID_BASE"
	.sleb128 600
	.uleb128 0x5
	.asciz	"EVENT_PRINTER_BASE"
	.sleb128 700
	.uleb128 0x5
	.asciz	"EVENT_CDC_BASE"
	.sleb128 800
	.uleb128 0x5
	.asciz	"EVENT_CHARGER_BASE"
	.sleb128 900
	.uleb128 0x5
	.asciz	"EVENT_AUDIO_BASE"
	.sleb128 1000
	.uleb128 0x5
	.asciz	"EVENT_USER_BASE"
	.sleb128 10000
	.uleb128 0x5
	.asciz	"EVENT_BUS_ERROR"
	.sleb128 32767
	.byte	0x0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0x6
	.asciz	"_USB_DEVICE_DESCRIPTOR"
	.byte	0x12
	.byte	0x2
	.byte	0x3c
	.4byte	0x5c8
	.uleb128 0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x3e
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.asciz	"bDescriptorType"
	.byte	0x2
	.byte	0x3f
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.asciz	"bcdUSB"
	.byte	0x2
	.byte	0x40
	.4byte	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.asciz	"bDeviceClass"
	.byte	0x2
	.byte	0x41
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.asciz	"bDeviceSubClass"
	.byte	0x2
	.byte	0x42
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x8
	.asciz	"bDeviceProtocol"
	.byte	0x2
	.byte	0x43
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.asciz	"bMaxPacketSize0"
	.byte	0x2
	.byte	0x44
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x8
	.asciz	"idVendor"
	.byte	0x2
	.byte	0x45
	.4byte	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.asciz	"idProduct"
	.byte	0x2
	.byte	0x46
	.4byte	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.asciz	"bcdDevice"
	.byte	0x2
	.byte	0x47
	.4byte	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.asciz	"iManufacturer"
	.byte	0x2
	.byte	0x48
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x8
	.asciz	"iProduct"
	.byte	0x2
	.byte	0x49
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x8
	.asciz	"iSerialNumber"
	.byte	0x2
	.byte	0x4a
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.asciz	"bNumConfigurations"
	.byte	0x2
	.byte	0x4b
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0x0
	.uleb128 0x3
	.asciz	"USB_DEVICE_DESCRIPTOR"
	.byte	0x2
	.byte	0x4c
	.4byte	0x46f
	.uleb128 0x9
	.byte	0x2
	.4byte	0x5eb
	.uleb128 0xa
	.4byte	0x113
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"short unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.asciz	"char"
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.byte	0xe0
	.4byte	0x641
	.uleb128 0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0xe0
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.4byte	.LASF1
	.byte	0x3
	.byte	0xe0
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.4byte	.LASF2
	.byte	0x3
	.byte	0xe0
	.4byte	0x641
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xc
	.4byte	0x133
	.4byte	0x651
	.uleb128 0xd
	.4byte	0xd0
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.byte	0x34
	.byte	0x3
	.byte	0xe6
	.4byte	0x684
	.uleb128 0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0xe6
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.4byte	.LASF1
	.byte	0x3
	.byte	0xe6
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.4byte	.LASF2
	.byte	0x3
	.byte	0xe6
	.4byte	0x684
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xc
	.4byte	0x133
	.4byte	0x694
	.uleb128 0xd
	.4byte	0xd0
	.byte	0x18
	.byte	0x0
	.uleb128 0xb
	.byte	0x3a
	.byte	0x3
	.byte	0xed
	.4byte	0x6c7
	.uleb128 0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0xed
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.4byte	.LASF1
	.byte	0x3
	.byte	0xed
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.4byte	.LASF2
	.byte	0x3
	.byte	0xed
	.4byte	0x6c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xc
	.4byte	0x133
	.4byte	0x6d7
	.uleb128 0xd
	.4byte	0xd0
	.byte	0x1b
	.byte	0x0
	.uleb128 0xb
	.byte	0x1a
	.byte	0x3
	.byte	0xf8
	.4byte	0x70a
	.uleb128 0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0xf8
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.4byte	.LASF1
	.byte	0x3
	.byte	0xf8
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.4byte	.LASF2
	.byte	0x3
	.byte	0xf8
	.4byte	0x70a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xc
	.4byte	0x133
	.4byte	0x71a
	.uleb128 0xd
	.4byte	0xd0
	.byte	0xb
	.byte	0x0
	.uleb128 0xc
	.4byte	0x113
	.4byte	0x72a
	.uleb128 0xd
	.4byte	0xd0
	.byte	0x1f
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF3
	.byte	0x3
	.byte	0xb9
	.4byte	0x737
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	0x71a
	.uleb128 0xf
	.asciz	"sd000"
	.byte	0x3
	.byte	0xe0
	.4byte	0x74b
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	0x60e
	.uleb128 0xf
	.asciz	"sd001"
	.byte	0x3
	.byte	0xe6
	.4byte	0x75f
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	0x651
	.uleb128 0xf
	.asciz	"sd002"
	.byte	0x3
	.byte	0xed
	.4byte	0x773
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	0x694
	.uleb128 0xf
	.asciz	"sd003"
	.byte	0x3
	.byte	0xf8
	.4byte	0x787
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	0x6d7
	.uleb128 0x10
	.asciz	"device_dsc"
	.byte	0x3
	.byte	0xa6
	.4byte	0x7a5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_device_dsc
	.uleb128 0xa
	.4byte	0x5c8
	.uleb128 0x11
	.4byte	.LASF3
	.byte	0x3
	.byte	0xb9
	.4byte	0x7bc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_configDescriptor1
	.uleb128 0xa
	.4byte	0x71a
	.uleb128 0x10
	.asciz	"sd000"
	.byte	0x3
	.byte	0xe0
	.4byte	0x74b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_sd000
	.uleb128 0x10
	.asciz	"sd001"
	.byte	0x3
	.byte	0xe6
	.4byte	0x75f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_sd001
	.uleb128 0x10
	.asciz	"sd002"
	.byte	0x3
	.byte	0xed
	.4byte	0x773
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_sd002
	.uleb128 0x10
	.asciz	"sd003"
	.byte	0x3
	.byte	0xf8
	.4byte	0x787
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_sd003
	.uleb128 0xc
	.4byte	0x5e5
	.4byte	0x821
	.uleb128 0xd
	.4byte	0xd0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.asciz	"USB_CD_Ptr"
	.byte	0x3
	.byte	0xfe
	.4byte	0x83a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_USB_CD_Ptr
	.uleb128 0xa
	.4byte	0x811
	.uleb128 0xc
	.4byte	0x5e5
	.4byte	0x84f
	.uleb128 0xd
	.4byte	0xd0
	.byte	0x3
	.byte	0x0
	.uleb128 0x12
	.asciz	"USB_SD_Ptr"
	.byte	0x3
	.2byte	0x104
	.4byte	0x869
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_USB_SD_Ptr
	.uleb128 0xa
	.4byte	0x83f
	.byte	0x0
	.section	.debug_abbrev,info
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x79
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x86f
	.4byte	0x78c
	.asciz	"device_dsc"
	.4byte	0x7aa
	.asciz	"configDescriptor1"
	.4byte	0x7c1
	.asciz	"sd000"
	.4byte	0x7d5
	.asciz	"sd001"
	.4byte	0x7e9
	.asciz	"sd002"
	.4byte	0x7fd
	.asciz	"sd003"
	.4byte	0x821
	.asciz	"USB_CD_Ptr"
	.4byte	0x84f
	.asciz	"USB_SD_Ptr"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x86f
	.4byte	0x113
	.asciz	"uint8_t"
	.4byte	0x133
	.asciz	"uint16_t"
	.4byte	0x46f
	.asciz	"_USB_DEVICE_DESCRIPTOR"
	.4byte	0x5c8
	.asciz	"USB_DEVICE_DESCRIPTOR"
	.4byte	0x0
	.section	.debug_line,info
	.4byte	.LELT0-.LSLT0
.LSLT0:
	.2byte	0x2
	.4byte	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf5
	.byte	0xa
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1
	.ascii	"../src/usb"
	.byte 0
	.ascii	"c:\\program files\\microchip\\xc16\\v1.21\\bin\\bin\\../..\\include"
	.byte 0
	.byte	0x0
	.asciz	"stdint.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.asciz	"usb_ch9.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.asciz	"usb_descriptors.c"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.asciz	"usb_common.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.byte	0x0
.LELTP0:
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.Letext0
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,info
.LASF1:
	.asciz	"bDscType"
.LASF0:
	.asciz	"bLength"
.LASF3:
	.asciz	"configDescriptor1"
.LASF2:
	.asciz	"string"
	.section	.text,code

	.section __c30_signature, info, data
	.word 0x0001
	.word 0x0000
	.word 0x0000

; MCHP configuration words

	.set ___PA___,0
	.end
