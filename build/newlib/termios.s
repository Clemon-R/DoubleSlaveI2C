	.file	"termios.c"
	.text
.Ltext0:
	.section	.text.cfgetispeed,"ax",@progbits
	.align	4
	.global	cfgetispeed
	.type	cfgetispeed, @function
cfgetispeed:
.LFB0:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/termios.c"
	.loc 1 23 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 24 0
	beqz.n	a2, .L3
	.loc 1 24 0 is_stmt 0 discriminator 1
	l32i.n	a2, a2, 20
.LVL1:
	retw.n
.LVL2:
.L3:
	.loc 1 24 0
	movi.n	a2, 0
.LVL3:
	.loc 1 25 0 is_stmt 1
	retw.n
.LFE0:
	.size	cfgetispeed, .-cfgetispeed
	.section	.text.cfgetospeed,"ax",@progbits
	.align	4
	.global	cfgetospeed
	.type	cfgetospeed, @function
cfgetospeed:
.LFB1:
	.loc 1 28 0
.LVL4:
	entry	sp, 32
.LCFI1:
	.loc 1 29 0
	beqz.n	a2, .L6
	.loc 1 29 0 is_stmt 0 discriminator 1
	l32i.n	a2, a2, 24
.LVL5:
	retw.n
.LVL6:
.L6:
	.loc 1 29 0
	movi.n	a2, 0
.LVL7:
	.loc 1 30 0 is_stmt 1
	retw.n
.LFE1:
	.size	cfgetospeed, .-cfgetospeed
	.section	.text.cfsetispeed,"ax",@progbits
	.align	4
	.global	cfsetispeed
	.type	cfsetispeed, @function
cfsetispeed:
.LFB2:
	.loc 1 33 0
.LVL8:
	entry	sp, 32
.LCFI2:
	.loc 1 34 0
	beqz.n	a2, .L8
	.loc 1 35 0
	s32i.n	a3, a2, 20
	.loc 1 36 0
	movi.n	a2, 0
.LVL9:
	retw.n
.LVL10:
.L8:
	.loc 1 38 0
	call8	__errno
.LVL11:
	movi.n	a2, 0x16
.LVL12:
	s32i.n	a2, a10, 0
	.loc 1 39 0
	movi.n	a2, -1
	.loc 1 41 0
	retw.n
.LFE2:
	.size	cfsetispeed, .-cfsetispeed
	.section	.text.cfsetospeed,"ax",@progbits
	.align	4
	.global	cfsetospeed
	.type	cfsetospeed, @function
cfsetospeed:
.LFB3:
	.loc 1 44 0
.LVL13:
	entry	sp, 32
.LCFI3:
	.loc 1 45 0
	beqz.n	a2, .L11
	.loc 1 46 0
	s32i.n	a3, a2, 24
	.loc 1 47 0
	movi.n	a2, 0
.LVL14:
	retw.n
.LVL15:
.L11:
	.loc 1 49 0
	call8	__errno
.LVL16:
	movi.n	a2, 0x16
.LVL17:
	s32i.n	a2, a10, 0
	.loc 1 50 0
	movi.n	a2, -1
	.loc 1 52 0
	retw.n
.LFE3:
	.size	cfsetospeed, .-cfsetospeed
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/platform_include/sys/termios.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x228
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0xc
	.4byte	.LASF32
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x12
	.4byte	0x33
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x16
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x65
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x15
	.4byte	0x28
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x21
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0xab
	.4byte	0x7a
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0xac
	.4byte	0x90
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0xad
	.4byte	0x85
	.uleb128 0x5
	.4byte	.LASF33
	.byte	0x1c
	.byte	0x4
	.byte	0xaf
	.4byte	0x139
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x4
	.byte	0xb1
	.4byte	0xcd
	.byte	0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x4
	.byte	0xb2
	.4byte	0xcd
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x4
	.byte	0xb3
	.4byte	0xcd
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x4
	.byte	0xb4
	.4byte	0xcd
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x4
	.byte	0xb5
	.4byte	0x139
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x4
	.byte	0xb6
	.4byte	0xc2
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x4
	.byte	0xb7
	.4byte	0xc2
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	0xb7
	.4byte	0x149
	.uleb128 0x8
	.4byte	0xa2
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x1
	.byte	0x16
	.4byte	0xc2
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x170
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x16
	.4byte	0x170
	.4byte	.LLST0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x176
	.uleb128 0xc
	.4byte	0xd8
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x1
	.byte	0x1b
	.4byte	0xc2
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a2
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x1b
	.4byte	0x170
	.4byte	.LLST1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x1
	.byte	0x20
	.4byte	0x53
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1de
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x20
	.4byte	0x1de
	.4byte	.LLST2
	.uleb128 0xd
	.string	"sp"
	.byte	0x1
	.byte	0x20
	.4byte	0xc2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LVL11
	.4byte	0x220
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xd8
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x1
	.byte	0x2b
	.4byte	0x53
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x220
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x2b
	.4byte	0x1de
	.4byte	.LLST3
	.uleb128 0xd
	.string	"sp"
	.byte	0x1
	.byte	0x2b
	.4byte	0xc2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LVL16
	.4byte	0x220
	.byte	0
	.uleb128 0xf
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x5
	.byte	0xf
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"__uint8_t"
.LASF21:
	.string	"c_oflag"
.LASF33:
	.string	"termios"
.LASF5:
	.string	"short unsigned int"
.LASF22:
	.string	"c_cflag"
.LASF19:
	.string	"tcflag_t"
.LASF31:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF30:
	.string	"cfsetospeed"
.LASF1:
	.string	"unsigned char"
.LASF25:
	.string	"c_ispeed"
.LASF17:
	.string	"cc_t"
.LASF15:
	.string	"long unsigned int"
.LASF23:
	.string	"c_lflag"
.LASF29:
	.string	"cfsetispeed"
.LASF24:
	.string	"c_cc"
.LASF4:
	.string	"__uint16_t"
.LASF6:
	.string	"__uint32_t"
.LASF18:
	.string	"speed_t"
.LASF7:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF28:
	.string	"cfgetospeed"
.LASF20:
	.string	"c_iflag"
.LASF14:
	.string	"sizetype"
.LASF8:
	.string	"long long int"
.LASF16:
	.string	"char"
.LASF26:
	.string	"c_ospeed"
.LASF27:
	.string	"cfgetispeed"
.LASF2:
	.string	"short int"
.LASF11:
	.string	"uint16_t"
.LASF34:
	.string	"__errno"
.LASF32:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/termios.c"
.LASF12:
	.string	"uint32_t"
.LASF13:
	.string	"long int"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
