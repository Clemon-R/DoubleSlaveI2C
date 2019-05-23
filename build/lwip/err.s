	.file	"err.c"
	.text
.Ltext0:
	.section	.text.err_to_errno,"ax",@progbits
	.literal_position
	.literal .LC0, err_to_errno_table
	.align	4
	.global	err_to_errno
	.type	err_to_errno, @function
err_to_errno:
.LFB20:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/api/err.c"
	.loc 1 70 0
.LVL0:
	entry	sp, 32
.LCFI0:
	extui	a2, a2, 0, 8
	.loc 1 71 0
	sext	a8, a2, 7
	bgei	a8, 1, .L3
	.loc 1 71 0 is_stmt 0 discriminator 1
	neg	a2, a8
.LVL1:
	movi.n	a8, 0x10
	blt	a8, a2, .L4
	.loc 1 74 0 is_stmt 1
	l32r	a8, .LC0
	addx4	a2, a2, a8
	l32i.n	a2, a2, 0
	retw.n
.L3:
	.loc 1 72 0
	movi.n	a2, 5
	retw.n
.L4:
	movi.n	a2, 5
	.loc 1 75 0
	retw.n
.LFE20:
	.size	err_to_errno, .-err_to_errno
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"Unknown error."
	.section	.text.lwip_strerr,"ax",@progbits
	.literal_position
	.literal .LC2, .LC1
	.literal .LC3, err_strerr
	.align	4
	.global	lwip_strerr
	.type	lwip_strerr, @function
lwip_strerr:
.LFB21:
	.loc 1 108 0
.LVL2:
	entry	sp, 32
.LCFI1:
	extui	a2, a2, 0, 8
	.loc 1 109 0
	sext	a8, a2, 7
	bgei	a8, 1, .L7
	.loc 1 109 0 is_stmt 0 discriminator 1
	neg	a2, a8
.LVL3:
	movi.n	a8, 0x10
	blt	a8, a2, .L8
	.loc 1 112 0 is_stmt 1
	l32r	a8, .LC3
	addx4	a2, a2, a8
	l32i.n	a2, a2, 0
	retw.n
.L7:
	.loc 1 110 0
	l32r	a2, .LC2
	retw.n
.L8:
	l32r	a2, .LC2
	.loc 1 113 0
	retw.n
.LFE21:
	.size	lwip_strerr, .-lwip_strerr
	.section	.rodata.str1.4
	.align	4
.LC4:
	.string	"Ok."
	.align	4
.LC5:
	.string	"Out of memory error."
	.align	4
.LC6:
	.string	"Buffer error."
	.align	4
.LC7:
	.string	"Timeout."
	.align	4
.LC8:
	.string	"Routing problem."
	.align	4
.LC9:
	.string	"Operation in progress."
	.align	4
.LC10:
	.string	"Illegal value."
	.align	4
.LC11:
	.string	"Operation would block."
	.align	4
.LC12:
	.string	"Address in use."
	.align	4
.LC13:
	.string	"Already connecting."
	.align	4
.LC14:
	.string	"Already connected."
	.align	4
.LC15:
	.string	"Not connected."
	.align	4
.LC16:
	.string	"Low-level netif error."
	.align	4
.LC17:
	.string	"Connection aborted."
	.align	4
.LC18:
	.string	"Connection reset."
	.align	4
.LC19:
	.string	"Connection closed."
	.align	4
.LC20:
	.string	"Illegal argument."
	.section	.rodata.err_strerr,"a",@progbits
	.align	4
	.type	err_strerr, @object
	.size	err_strerr, 68
err_strerr:
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.section	.rodata.err_to_errno_table,"a",@progbits
	.align	4
	.type	err_to_errno_table, @object
	.size	err_to_errno_table, 68
err_to_errno_table:
	.word	0
	.word	12
	.word	105
	.word	11
	.word	118
	.word	119
	.word	22
	.word	11
	.word	112
	.word	120
	.word	127
	.word	128
	.word	-1
	.word	113
	.word	104
	.word	128
	.word	5
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI0-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI1-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/err.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x147
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0xc
	.4byte	.LASF20
	.4byte	.LASF21
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x11
	.4byte	0x45
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8a
	.uleb128 0x6
	.4byte	0x7d
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x14
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x39
	.4byte	0x8f
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0x45
	.4byte	0x33
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd5
	.uleb128 0x8
	.string	"err"
	.byte	0x1
	.byte	0x45
	.4byte	0xa1
	.4byte	.LLST0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0x6b
	.4byte	0x84
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfe
	.uleb128 0x8
	.string	"err"
	.byte	0x1
	.byte	0x6b
	.4byte	0xa1
	.4byte	.LLST1
	.byte	0
	.uleb128 0x9
	.4byte	0x33
	.4byte	0x10e
	.uleb128 0xa
	.4byte	0x6f
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x30
	.4byte	0x11f
	.uleb128 0x5
	.byte	0x3
	.4byte	err_to_errno_table
	.uleb128 0x6
	.4byte	0xfe
	.uleb128 0x9
	.4byte	0x84
	.4byte	0x134
	.uleb128 0xa
	.4byte	0x6f
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x50
	.4byte	0x145
	.uleb128 0x5
	.byte	0x3
	.4byte	err_strerr
	.uleb128 0x6
	.4byte	0x124
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x18
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
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"unsigned int"
.LASF16:
	.string	"lwip_strerr"
.LASF18:
	.string	"err_strerr"
.LASF9:
	.string	"long unsigned int"
.LASF17:
	.string	"err_to_errno_table"
.LASF14:
	.string	"err_t"
.LASF6:
	.string	"long long unsigned int"
.LASF20:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/api/err.c"
.LASF3:
	.string	"unsigned char"
.LASF21:
	.string	"/home/raphael/rtone/lcd/build/lwip"
.LASF10:
	.string	"char"
.LASF12:
	.string	"int8_t"
.LASF7:
	.string	"long int"
.LASF13:
	.string	"_Bool"
.LASF11:
	.string	"__int8_t"
.LASF1:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF19:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF15:
	.string	"err_to_errno"
.LASF4:
	.string	"short int"
.LASF8:
	.string	"sizetype"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
