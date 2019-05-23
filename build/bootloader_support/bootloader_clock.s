	.file	"bootloader_clock.c"
	.text
.Ltext0:
	.section	.rodata
	.align	4
.LC0:
	.byte	0
	.byte	80
	.byte	4
	.byte	-1
	.byte	-84
	.zero	3
	.section	.text.bootloader_clock_configure,"ax",@progbits
	.literal_position
	.literal .LC1, 1072955420
	.literal .LC2, 268369920
	.literal .LC3, 1073061900
	.literal .LC5, 1072693308
	.literal .LC6, .LC0
	.literal .LC7, -261889
	.literal .LC8, -1572865
	.literal .LC9, -262145
	.align	4
	.global	bootloader_clock_configure
	.type	bootloader_clock_configure, @function
bootloader_clock_configure:
.LFB4:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/src/bootloader_clock.c"
	.loc 1 23 0
	entry	sp, 48
.LCFI0:
.L2:
.LBB8:
.LBB9:
.LBB10:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/uart.h"
	.loc 2 272 0
	l32r	a8, .LC1
	memw
	l32i.n	a9, a8, 0
.LVL0:
.LBE10:
	.loc 2 274 0
	l32r	a8, .LC2
	bany	a9, a8, .L2
.LVL1:
.LBE9:
.LBE8:
.LBB11:
	.loc 1 39 0
	l32r	a8, .LC3
	memw
	l32i.n	a8, a8, 0
.LVL2:
.LBE11:
	.loc 1 40 0
	bbsi	a8, 15, .L4
.LVL3:
.LBB12:
.LBB13:
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 3 79 0
	l32r	a10, .LC5
	call8	esp_dport_access_reg_read
.LVL4:
.LBE13:
.LBE12:
	.loc 1 41 0
	extui	a10, a10, 0, 2
	.loc 1 40 0
	beqi	a10, 2, .L5
	.loc 1 32 0
	movi.n	a8, 0x50
	j	.L3
.LVL5:
.L4:
	movi.n	a8, 0x50
.LVL6:
	j	.L3
.LVL7:
.L5:
	.loc 1 42 0
	movi	a8, 0xf0
.LVL8:
.L3:
	.loc 1 45 0
	l32r	a9, .LC6
	l32i.n	a10, a9, 0
	l32i.n	a9, a9, 4
	s32i.n	a10, sp, 0
	s32i.n	a9, sp, 4
	.loc 1 46 0
	movi.n	a9, 0x28
	s8i	a9, sp, 0
	.loc 1 47 0
	slli	a9, a8, 8
	l32r	a8, .LC7
.LVL9:
	l32i.n	a10, sp, 0
	and	a8, a10, a8
	or	a8, a8, a9
	s32i.n	a8, sp, 0
	.loc 1 48 0
	call8	rtc_clk_slow_freq_get
.LVL10:
	extui	a10, a10, 0, 2
	slli	a8, a10, 19
	l32r	a9, .LC8
	l32i.n	a10, sp, 0
	and	a10, a10, a9
	or	a10, a10, a8
	s32i.n	a10, sp, 0
	.loc 1 49 0
	call8	rtc_clk_fast_freq_get
.LVL11:
	extui	a10, a10, 0, 1
	slli	a8, a10, 18
	l32r	a9, .LC9
	l32i.n	a10, sp, 0
	and	a10, a10, a9
	or	a10, a10, a8
	s32i.n	a10, sp, 0
	.loc 1 50 0
	l32i.n	a11, sp, 4
	call8	rtc_clk_init
.LVL12:
	retw.n
.LFE4:
	.size	bootloader_clock_configure, .-bootloader_clock_configure
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_dport_access.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x33d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0xc
	.4byte	.LASF51
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x4
	.byte	0x1a
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x5
	.byte	0x15
	.4byte	0x28
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x5
	.byte	0x2d
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5a
	.byte	0x6
	.byte	0x3c
	.4byte	0xc6
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x1a
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x41
	.4byte	0xa1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5a
	.byte	0x6
	.byte	0x46
	.4byte	0xfc
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x6
	.byte	0x4c
	.4byte	0xd1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5a
	.byte	0x6
	.byte	0x65
	.4byte	0x126
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x6
	.byte	0x69
	.4byte	0x107
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5a
	.byte	0x6
	.byte	0x6e
	.4byte	0x14a
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x6
	.byte	0x71
	.4byte	0x131
	.uleb128 0x7
	.byte	0x8
	.byte	0x6
	.byte	0x82
	.4byte	0x1c7
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x6
	.byte	0x83
	.4byte	0xc6
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x6
	.byte	0x84
	.4byte	0xfc
	.byte	0x4
	.byte	0xa
	.byte	0xe
	.byte	0
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x6
	.byte	0x85
	.4byte	0x14a
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x6
	.byte	0x86
	.4byte	0x126
	.byte	0x4
	.byte	0x2
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x6
	.byte	0x87
	.4byte	0x7a
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x6
	.byte	0x88
	.4byte	0x7a
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x6
	.byte	0x89
	.4byte	0x7a
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x6
	.byte	0x8a
	.4byte	0x155
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x2
	.2byte	0x10d
	.byte	0x3
	.4byte	0x205
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x2
	.2byte	0x10d
	.4byte	0x6f
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x2
	.2byte	0x10e
	.4byte	0x7a
	.uleb128 0xc
	.4byte	.LASF42
	.4byte	0x215
	.4byte	.LASF52
	.byte	0
	.uleb128 0xd
	.4byte	0x9a
	.4byte	0x215
	.uleb128 0xe
	.4byte	0x8c
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.4byte	0x205
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0x3
	.byte	0x4a
	.4byte	0x7a
	.byte	0x3
	.4byte	0x236
	.uleb128 0x11
	.string	"reg"
	.byte	0x3
	.byte	0x4a
	.4byte	0x7a
	.byte	0
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0x1
	.byte	0x16
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2fd
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0x20
	.4byte	0x48
	.4byte	.LLST0
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.byte	0x27
	.4byte	0x7a
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	.LASF42
	.4byte	0x30d
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x1
	.byte	0x2d
	.4byte	0x1c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.4byte	0x1d2
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x1d
	.4byte	0x2b1
	.uleb128 0x17
	.4byte	0x1df
	.uleb128 0x18
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x19
	.4byte	0x1eb
	.4byte	.LLST2
	.uleb128 0x1a
	.4byte	0x1f7
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x21a
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x29
	.4byte	0x2e1
	.uleb128 0x1b
	.4byte	0x22a
	.4byte	.LLST3
	.uleb128 0x1c
	.4byte	.LVL4
	.4byte	0x312
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff0003c
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL10
	.4byte	0x31d
	.uleb128 0x1e
	.4byte	.LVL11
	.4byte	0x329
	.uleb128 0x1e
	.4byte	.LVL12
	.4byte	0x335
	.byte	0
	.uleb128 0xd
	.4byte	0x9a
	.4byte	0x30d
	.uleb128 0xe
	.4byte	0x8c
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.4byte	0x2fd
	.uleb128 0x1f
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x7
	.byte	0x1e
	.uleb128 0x20
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x116
	.uleb128 0x20
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x130
	.uleb128 0x1f
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x6
	.byte	0xa7
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x34
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
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x8
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0003c
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0003c
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF54:
	.string	"bootloader_clock_configure"
.LASF4:
	.string	"__uint8_t"
.LASF21:
	.string	"RTC_CPU_FREQ_80M"
.LASF20:
	.string	"RTC_CPU_FREQ_XTAL"
.LASF15:
	.string	"RTC_XTAL_FREQ_AUTO"
.LASF34:
	.string	"cpu_freq_mhz"
.LASF42:
	.string	"__func__"
.LASF32:
	.string	"rtc_fast_freq_t"
.LASF38:
	.string	"slow_clk_dcap"
.LASF35:
	.string	"fast_freq"
.LASF41:
	.string	"status"
.LASF37:
	.string	"clk_8m_div"
.LASF31:
	.string	"RTC_FAST_FREQ_8M"
.LASF27:
	.string	"RTC_SLOW_FREQ_32K_XTAL"
.LASF52:
	.string	"uart_tx_wait_idle"
.LASF16:
	.string	"RTC_XTAL_FREQ_40M"
.LASF45:
	.string	"clk_cfg"
.LASF51:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/src/bootloader_clock.c"
.LASF33:
	.string	"xtal_freq"
.LASF1:
	.string	"unsigned char"
.LASF46:
	.string	"esp_dport_access_reg_read"
.LASF13:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF43:
	.string	"uart_no"
.LASF5:
	.string	"__uint32_t"
.LASF22:
	.string	"RTC_CPU_FREQ_160M"
.LASF39:
	.string	"clk_8m_dfreq"
.LASF48:
	.string	"rtc_clk_fast_freq_get"
.LASF40:
	.string	"rtc_clk_config_t"
.LASF19:
	.string	"rtc_xtal_freq_t"
.LASF6:
	.string	"unsigned int"
.LASF29:
	.string	"rtc_slow_freq_t"
.LASF8:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF24:
	.string	"RTC_CPU_FREQ_2M"
.LASF49:
	.string	"rtc_clk_init"
.LASF18:
	.string	"RTC_XTAL_FREQ_24M"
.LASF50:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF44:
	.string	"chip_ver_reg"
.LASF12:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF17:
	.string	"RTC_XTAL_FREQ_26M"
.LASF36:
	.string	"slow_freq"
.LASF14:
	.string	"char"
.LASF2:
	.string	"short int"
.LASF26:
	.string	"RTC_SLOW_FREQ_RTC"
.LASF28:
	.string	"RTC_SLOW_FREQ_8MD256"
.LASF10:
	.string	"uint32_t"
.LASF11:
	.string	"long int"
.LASF53:
	.string	"DPORT_REG_READ"
.LASF30:
	.string	"RTC_FAST_FREQ_XTALD4"
.LASF0:
	.string	"signed char"
.LASF25:
	.string	"rtc_cpu_freq_t"
.LASF23:
	.string	"RTC_CPU_FREQ_240M"
.LASF47:
	.string	"rtc_clk_slow_freq_get"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
