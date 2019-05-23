	.file	"subscribe.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"s"
	.align	4
.LC3:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/coap/libcoap/src/subscribe.c"
	.section	.text.coap_subscription_init,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$7045
	.literal .LC4, .LC3
	.align	4
	.global	coap_subscription_init
	.type	coap_subscription_init, @function
coap_subscription_init:
.LFB63:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/coap/libcoap/src/subscribe.c"
	.loc 1 20 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 21 0
	bnez.n	a2, .L2
	.loc 1 21 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi.n	a11, 0x15
	l32r	a10, .LC4
	call8	__assert_func
.LVL1:
.L2:
	.loc 1 22 0 is_stmt 1
	movi	a12, 0x60
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL2:
	retw.n
.LFE63:
	.size	coap_subscription_init, .-coap_subscription_init
	.section	.rodata.__func__$7045,"a",@progbits
	.align	4
	.type	__func__$7045, @object
	.size	__func__$7045, 23
__func__$7045:
	.string	"coap_subscription_init"
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0
	.byte	0xc
	.uleb128 0x1
	.uleb128 0
	.align	4
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x4
	.4byte	.LCFI0-.LFB63
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/inet.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/coap/libcoap/include/coap/address.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/coap/libcoap/include/coap/coap_io.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/coap/libcoap/include/coap/subscribe.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4d8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0xc
	.4byte	.LASF70
	.4byte	.LASF71
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0xd8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x16
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.4byte	0xa0
	.4byte	0xb7
	.uleb128 0x7
	.4byte	0x90
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x21
	.4byte	0x65
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF18
	.uleb128 0x6
	.4byte	0xcd
	.4byte	0xef
	.uleb128 0x7
	.4byte	0x90
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	0xb7
	.4byte	0xff
	.uleb128 0x7
	.4byte	0x90
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0xcd
	.4byte	0x10f
	.uleb128 0x7
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x5
	.byte	0x37
	.4byte	0xcd
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x4
	.byte	0x5
	.byte	0x3a
	.4byte	0x133
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0x3b
	.4byte	0x10f
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x10
	.byte	0x5
	.byte	0x3f
	.4byte	0x152
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x5
	.byte	0x40
	.4byte	0xff
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x5
	.byte	0x41
	.4byte	0xef
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x10
	.byte	0x5
	.byte	0x3e
	.4byte	0x16a
	.uleb128 0xc
	.string	"un"
	.byte	0x5
	.byte	0x42
	.4byte	0x133
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x6
	.byte	0x3a
	.4byte	0xb7
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x6
	.byte	0x3f
	.4byte	0xc2
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x10
	.byte	0x6
	.byte	0x44
	.4byte	0x1c9
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x6
	.byte	0x45
	.4byte	0xb7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x6
	.byte	0x46
	.4byte	0x16a
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x6
	.byte	0x47
	.4byte	0x175
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x6
	.byte	0x48
	.4byte	0x11a
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x6
	.byte	0x4a
	.4byte	0xa7
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x1c
	.byte	0x6
	.byte	0x4f
	.4byte	0x21e
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x6
	.byte	0x50
	.4byte	0xb7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x6
	.byte	0x51
	.4byte	0x16a
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x6
	.byte	0x52
	.4byte	0x175
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x6
	.byte	0x53
	.4byte	0xcd
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x6
	.byte	0x54
	.4byte	0x152
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x6
	.byte	0x55
	.4byte	0xcd
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x10
	.byte	0x6
	.byte	0x59
	.4byte	0x24f
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x6
	.byte	0x5a
	.4byte	0xb7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x6
	.byte	0x5b
	.4byte	0x16a
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x6
	.byte	0x5c
	.4byte	0x24f
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	0xa0
	.4byte	0x25f
	.uleb128 0x7
	.4byte	0x90
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x1c
	.byte	0x6
	.byte	0x5f
	.4byte	0x2a8
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x6
	.byte	0x60
	.4byte	0xb7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x6
	.byte	0x61
	.4byte	0x16a
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x6
	.byte	0x62
	.4byte	0x2a8
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x6
	.byte	0x63
	.4byte	0xdf
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x6
	.byte	0x65
	.4byte	0xdf
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	0xa0
	.4byte	0x2b8
	.uleb128 0x7
	.4byte	0x90
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x6
	.byte	0x6c
	.4byte	0xcd
	.uleb128 0xa
	.byte	0x1c
	.byte	0x7
	.byte	0x3d
	.4byte	0x2f6
	.uleb128 0xd
	.string	"sa"
	.byte	0x7
	.byte	0x3e
	.4byte	0x21e
	.uleb128 0xd
	.string	"st"
	.byte	0x7
	.byte	0x3f
	.4byte	0x25f
	.uleb128 0xd
	.string	"sin"
	.byte	0x7
	.byte	0x40
	.4byte	0x180
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x7
	.byte	0x41
	.4byte	0x1c9
	.byte	0
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x20
	.byte	0x7
	.byte	0x3b
	.4byte	0x31b
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x7
	.byte	0x3c
	.4byte	0x2b8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x7
	.byte	0x42
	.4byte	0x2c3
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x7
	.byte	0x43
	.4byte	0x2f6
	.uleb128 0xa
	.byte	0x4
	.byte	0x8
	.byte	0x25
	.4byte	0x344
	.uleb128 0xd
	.string	"fd"
	.byte	0x8
	.byte	0x26
	.4byte	0x3e
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x8
	.byte	0x27
	.4byte	0x97
	.byte	0
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x2c
	.byte	0x8
	.byte	0x23
	.4byte	0x381
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x8
	.byte	0x28
	.4byte	0x326
	.byte	0
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x8
	.byte	0x32
	.4byte	0x31b
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x8
	.byte	0x33
	.4byte	0x3e
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x8
	.byte	0x34
	.4byte	0x3e
	.byte	0x28
	.byte	0
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x8
	.byte	0x35
	.4byte	0x344
	.uleb128 0x8
	.4byte	.LASF60
	.byte	0x60
	.byte	0x9
	.byte	0x36
	.4byte	0x402
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x9
	.byte	0x37
	.4byte	0x402
	.byte	0
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x9
	.byte	0x38
	.4byte	0x381
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x9
	.byte	0x39
	.4byte	0x31b
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x9
	.byte	0x3b
	.4byte	0x30
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x50
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x9
	.byte	0x3c
	.4byte	0x30
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x50
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x9
	.byte	0x3d
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x9
	.byte	0x40
	.4byte	0x25
	.byte	0x54
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x9
	.byte	0x41
	.4byte	0x408
	.byte	0x58
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x38c
	.uleb128 0x6
	.4byte	0x57
	.4byte	0x418
	.uleb128 0x7
	.4byte	0x90
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x9
	.byte	0x42
	.4byte	0x38c
	.uleb128 0xf
	.byte	0x4
	.4byte	0x418
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x1
	.byte	0x14
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a2
	.uleb128 0x11
	.string	"s"
	.byte	0x1
	.byte	0x14
	.4byte	0x423
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0x4b2
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7045
	.uleb128 0x13
	.4byte	.LVL1
	.4byte	0x4c7
	.4byte	0x486
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7045
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL2
	.4byte	0x4d2
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0xa0
	.4byte	0x4b2
	.uleb128 0x7
	.4byte	0x90
	.byte	0x16
	.byte	0
	.uleb128 0x16
	.4byte	0x4a2
	.uleb128 0x17
	.4byte	.LASF74
	.byte	0x5
	.byte	0x56
	.4byte	0x4c2
	.uleb128 0x16
	.4byte	0x152
	.uleb128 0x18
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0xa
	.byte	0x29
	.uleb128 0x19
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF64:
	.string	"non_cnt"
.LASF68:
	.string	"token"
.LASF46:
	.string	"ss_family"
.LASF48:
	.string	"s2_data2"
.LASF49:
	.string	"s2_data3"
.LASF41:
	.string	"sa_len"
.LASF61:
	.string	"next"
.LASF25:
	.string	"sa_family_t"
.LASF6:
	.string	"short int"
.LASF3:
	.string	"size_t"
.LASF23:
	.string	"in6_addr"
.LASF12:
	.string	"sizetype"
.LASF67:
	.string	"token_length"
.LASF8:
	.string	"__uint32_t"
.LASF37:
	.string	"sin6_flowinfo"
.LASF38:
	.string	"sin6_addr"
.LASF7:
	.string	"__uint16_t"
.LASF15:
	.string	"uint8_t"
.LASF20:
	.string	"u32_addr"
.LASF39:
	.string	"sin6_scope_id"
.LASF29:
	.string	"sin_family"
.LASF63:
	.string	"subscriber"
.LASF62:
	.string	"local_if"
.LASF55:
	.string	"conn"
.LASF36:
	.string	"sin6_port"
.LASF9:
	.string	"long long int"
.LASF76:
	.string	"memset"
.LASF11:
	.string	"long int"
.LASF54:
	.string	"addr"
.LASF4:
	.string	"__uint8_t"
.LASF51:
	.string	"sin6"
.LASF31:
	.string	"sin_addr"
.LASF5:
	.string	"unsigned char"
.LASF35:
	.string	"sin6_family"
.LASF73:
	.string	"__func__"
.LASF65:
	.string	"fail_cnt"
.LASF52:
	.string	"coap_address_t"
.LASF50:
	.string	"socklen_t"
.LASF2:
	.string	"signed char"
.LASF59:
	.string	"flags"
.LASF10:
	.string	"long long unsigned int"
.LASF33:
	.string	"sockaddr_in6"
.LASF17:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF16:
	.string	"uint16_t"
.LASF24:
	.string	"s_addr"
.LASF60:
	.string	"coap_subscription_t"
.LASF47:
	.string	"s2_data1"
.LASF66:
	.string	"dirty"
.LASF45:
	.string	"s2_len"
.LASF43:
	.string	"sa_data"
.LASF56:
	.string	"coap_endpoint_t"
.LASF1:
	.string	"short unsigned int"
.LASF28:
	.string	"sin_len"
.LASF14:
	.string	"char"
.LASF21:
	.string	"u8_addr"
.LASF18:
	.string	"_Bool"
.LASF19:
	.string	"in_addr_t"
.LASF44:
	.string	"sockaddr_storage"
.LASF72:
	.string	"coap_subscription_init"
.LASF13:
	.string	"long unsigned int"
.LASF74:
	.string	"in6addr_any"
.LASF70:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/coap/libcoap/src/subscribe.c"
.LASF32:
	.string	"sin_zero"
.LASF57:
	.string	"handle"
.LASF53:
	.string	"size"
.LASF30:
	.string	"sin_port"
.LASF26:
	.string	"in_port_t"
.LASF42:
	.string	"sa_family"
.LASF34:
	.string	"sin6_len"
.LASF22:
	.string	"in_addr"
.LASF71:
	.string	"/home/raphael/rtone/lcd/build/coap"
.LASF40:
	.string	"sockaddr"
.LASF75:
	.string	"__assert_func"
.LASF69:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF27:
	.string	"sockaddr_in"
.LASF58:
	.string	"ifindex"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
