	.file	"coap_time.c"
	.text
.Ltext0:
	.section	.text.coap_clock_init,"ax",@progbits
	.literal_position
	.literal .LC0, coap_clock_offset
	.align	4
	.global	coap_clock_init
	.type	coap_clock_init, @function
coap_clock_init:
.LFB40:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/coap/libcoap/src/coap_time.c"
	.loc 1 27 0
	entry	sp, 48
.LCFI0:
	.loc 1 30 0
	mov.n	a11, sp
	movi.n	a10, 1
	call8	clock_gettime
.LVL0:
	.loc 1 36 0
	l32r	a8, .LC0
	l32i.n	a9, sp, 0
	s32i.n	a9, a8, 0
	retw.n
.LFE40:
	.size	coap_clock_init, .-coap_clock_init
	.section	.text.coap_ticks,"ax",@progbits
	.literal_position
	.literal .LC1, coap_clock_offset
	.align	4
	.global	coap_ticks
	.type	coap_ticks, @function
coap_ticks:
.LFB41:
	.loc 1 49 0
.LVL1:
	entry	sp, 48
.LCFI1:
	.loc 1 54 0
	mov.n	a11, sp
	movi.n	a10, 1
	call8	clock_gettime
.LVL2:
	.loc 1 78 0
	l32r	a8, .LC1
	l32i.n	a9, a8, 0
	l32i.n	a8, sp, 0
	sub	a9, a8, a9
	slli	a8, a9, 5
	sub	a8, a8, a9
	addx4	a8, a8, a9
	slli	a9, a8, 3
	s32i.n	a9, a2, 0
	retw.n
.LFE41:
	.size	coap_ticks, .-coap_ticks
	.section	.text.coap_ticks_to_rt,"ax",@progbits
	.literal_position
	.literal .LC2, 274877907
	.literal .LC3, coap_clock_offset
	.align	4
	.global	coap_ticks_to_rt
	.type	coap_ticks_to_rt, @function
coap_ticks_to_rt:
.LFB42:
	.loc 1 82 0
.LVL3:
	entry	sp, 32
.LCFI2:
	.loc 1 83 0
	l32r	a8, .LC2
	muluh	a2, a2, a8
.LVL4:
	srli	a2, a2, 6
	l32r	a8, .LC3
	l32i.n	a8, a8, 0
	.loc 1 84 0
	add.n	a2, a2, a8
	retw.n
.LFE42:
	.size	coap_ticks_to_rt, .-coap_ticks_to_rt
	.section	.bss.coap_clock_offset,"aw",@nobits
	.align	4
	.type	coap_clock_offset, @object
	.size	coap_clock_offset, 4
coap_clock_offset:
	.zero	4
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
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI0-.LFB40
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI1-.LFB41
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI2-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/coap/libcoap/include/coap/coap_time.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/platform_include/time.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x19f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0xc
	.4byte	.LASF22
	.4byte	.LASF23
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x7a
	.4byte	0x5d
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x8
	.byte	0x2
	.byte	0x82
	.4byte	0xa9
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x2
	.byte	0x83
	.4byte	0x79
	.byte	0
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x2
	.byte	0x84
	.4byte	0x5d
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x2
	.2byte	0x113
	.4byte	0x6b
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x54
	.4byte	0x6b
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x59
	.4byte	0x79
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1b
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10a
	.uleb128 0x9
	.string	"tv"
	.byte	0x1
	.byte	0x1d
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.4byte	.LVL0
	.4byte	0x197
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x31
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x159
	.uleb128 0xc
	.string	"t"
	.byte	0x1
	.byte	0x31
	.4byte	0x159
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xd
	.string	"tmp"
	.byte	0x1
	.byte	0x32
	.4byte	0x6b
	.byte	0
	.uleb128 0x9
	.string	"tv"
	.byte	0x1
	.byte	0x35
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.4byte	.LVL2
	.4byte	0x197
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xbc
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0x52
	.4byte	0xc7
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x186
	.uleb128 0x10
	.string	"t"
	.byte	0x1
	.byte	0x52
	.4byte	0xbc
	.4byte	.LLST0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF20
	.byte	0x1
	.byte	0x11
	.4byte	0xc7
	.uleb128 0x5
	.byte	0x3
	.4byte	coap_clock_offset
	.uleb128 0x12
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x4
	.byte	0x1d
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
	.uleb128 0x8
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x34
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
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"coap_clock_offset"
.LASF25:
	.string	"coap_ticks_to_rt"
.LASF18:
	.string	"coap_clock_init"
.LASF12:
	.string	"tv_nsec"
.LASF21:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF24:
	.string	"timespec"
.LASF23:
	.string	"/home/raphael/rtone/lcd/build/coap"
.LASF3:
	.string	"unsigned char"
.LASF9:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF19:
	.string	"coap_ticks"
.LASF16:
	.string	"coap_tick_t"
.LASF0:
	.string	"unsigned int"
.LASF10:
	.string	"char"
.LASF17:
	.string	"coap_time_t"
.LASF13:
	.string	"time_t"
.LASF6:
	.string	"long long unsigned int"
.LASF26:
	.string	"clock_gettime"
.LASF8:
	.string	"sizetype"
.LASF11:
	.string	"tv_sec"
.LASF5:
	.string	"long long int"
.LASF4:
	.string	"short int"
.LASF7:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF14:
	.string	"clockid_t"
.LASF15:
	.string	"_Bool"
.LASF22:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/coap/libcoap/src/coap_time.c"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
