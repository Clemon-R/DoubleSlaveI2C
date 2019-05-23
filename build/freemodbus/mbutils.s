	.file	"mbutils.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"ucNBits <= 8"
	.align	4
.LC3:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/functions/mbutils.c"
	.section	.text.xMBUtilSetBits,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$6605
	.literal .LC4, .LC3
	.align	4
	.global	xMBUtilSetBits
	.type	xMBUtilSetBits, @function
xMBUtilSetBits:
.LFB23:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/functions/mbutils.c"
	.loc 1 49 0
.LVL0:
	entry	sp, 32
.LCFI0:
	extui	a3, a3, 0, 16
	extui	a4, a4, 0, 8
	extui	a5, a5, 0, 8
.LVL1:
	.loc 1 56 0
	movi.n	a9, 8
	bgeu	a9, a4, .L2
	.loc 1 56 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi.n	a11, 0x38
	l32r	a10, .LC4
	call8	__assert_func
.LVL2:
.L2:
	.loc 1 61 0 is_stmt 1
	srli	a11, a3, 3
.LVL3:
	.loc 1 64 0
	slli	a9, a11, 3
	sub	a8, a3, a9
.LVL4:
	.loc 1 67 0
	ssl	a8
	sll	a5, a5
.LVL5:
	.loc 1 70 0
	movi.n	a10, 1
	ssl	a4
	sll	a10, a10
	extui	a10, a10, 0, 16
	addi.n	a10, a10, -1
	extui	a10, a10, 0, 16
.LVL6:
	.loc 1 71 0
	ssl	a8
	sll	a3, a10
.LVL7:
	.loc 1 74 0
	add.n	a12, a2, a11
	l8ui	a9, a12, 0
.LVL8:
	.loc 1 75 0
	addi.n	a11, a11, 1
.LVL9:
	add.n	a2, a2, a11
.LVL10:
	l8ui	a8, a2, 0
.LVL11:
	slli	a8, a8, 8
	or	a8, a8, a9
	sext	a10, a8, 15
.LVL12:
	.loc 1 78 0
	movi.n	a8, -1
.LVL13:
	xor	a9, a8, a3
	and	a8, a10, a9
	or	a8, a8, a5
	sext	a8, a8, 15
.LVL14:
	.loc 1 81 0
	s8i	a8, a12, 0
	.loc 1 82 0
	extui	a8, a8, 8, 8
.LVL15:
	s8i	a8, a2, 0
	retw.n
.LFE23:
	.size	xMBUtilSetBits, .-xMBUtilSetBits
	.section	.text.xMBUtilGetBits,"ax",@progbits
	.align	4
	.global	xMBUtilGetBits
	.type	xMBUtilGetBits, @function
xMBUtilGetBits:
.LFB24:
	.loc 1 87 0
.LVL16:
	entry	sp, 32
.LCFI1:
	extui	a3, a3, 0, 16
	.loc 1 95 0
	srli	a9, a3, 3
.LVL17:
	.loc 1 98 0
	slli	a8, a9, 3
	sub	a3, a3, a8
.LVL18:
	.loc 1 101 0
	movi.n	a8, 1
	ssl	a4
	sll	a4, a8
.LVL19:
	extui	a4, a4, 0, 16
	addi.n	a4, a4, -1
.LVL20:
	.loc 1 104 0
	add.n	a2, a2, a9
.LVL21:
	l8ui	a8, a2, 0
.LVL22:
	.loc 1 105 0
	l8ui	a2, a2, 1
	slli	a2, a2, 8
	or	a2, a2, a8
.LVL23:
	.loc 1 108 0
	ssr	a3
	sra	a2, a2
.LVL24:
	extui	a2, a2, 0, 16
.LVL25:
	.loc 1 111 0
	and	a2, a4, a2
.LVL26:
	.loc 1 114 0
	extui	a2, a2, 0, 8
.LVL27:
	retw.n
.LFE24:
	.size	xMBUtilGetBits, .-xMBUtilGetBits
	.section	.text.prveMBError2Exception,"ax",@progbits
	.align	4
	.global	prveMBError2Exception
	.type	prveMBError2Exception, @function
prveMBError2Exception:
.LFB25:
	.loc 1 118 0
.LVL28:
	entry	sp, 32
.LCFI2:
	.loc 1 121 0
	beqi	a2, 1, .L9
	beqz.n	a2, .L7
	beqi	a2, 7, .L8
	j	.L10
.L7:
	.loc 1 124 0
	movi.n	a2, 0
.LVL29:
	retw.n
.LVL30:
.L8:
	.loc 1 132 0
	movi.n	a2, 6
.LVL31:
	.loc 1 133 0
	retw.n
.LVL32:
.L10:
	.loc 1 136 0
	movi.n	a2, 4
.LVL33:
	.loc 1 137 0
	retw.n
.LVL34:
.L9:
	.loc 1 128 0
	movi.n	a2, 2
.LVL35:
	.loc 1 141 0
	retw.n
.LFE25:
	.size	prveMBError2Exception, .-prveMBError2Exception
	.section	.rodata.__func__$6605,"a",@progbits
	.align	4
	.type	__func__$6605, @object
	.size	__func__$6605, 15
__func__$6605:
	.string	"xMBUtilSetBits"
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI0-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI1-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI2-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/port/port.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/include/mbproto.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/include/mb.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2ea
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0xc
	.4byte	.LASF49
	.4byte	.LASF50
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF12
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x47
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x4a
	.4byte	0x37
	.uleb128 0x5
	.byte	0x4
	.4byte	0x30
	.byte	0x4
	.byte	0x3b
	.4byte	0xea
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0xb
	.byte	0
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x4
	.byte	0x46
	.4byte	0xa1
	.uleb128 0x7
	.byte	0x4
	.4byte	0x8b
	.uleb128 0x5
	.byte	0x4
	.4byte	0x30
	.byte	0x5
	.byte	0x71
	.4byte	0x138
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x5
	.byte	0x7a
	.4byte	0xfb
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x1
	.byte	0x2f
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x218
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x1
	.byte	0x2f
	.4byte	0xf5
	.4byte	.LLST0
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0x2f
	.4byte	0x96
	.4byte	.LLST1
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x1
	.byte	0x2f
	.4byte	0x8b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x1
	.byte	0x30
	.4byte	0x8b
	.4byte	.LLST2
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x1
	.byte	0x32
	.4byte	0x96
	.4byte	.LLST3
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0x33
	.4byte	0x96
	.4byte	.LLST4
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x1
	.byte	0x34
	.4byte	0x96
	.4byte	.LLST5
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x1
	.byte	0x35
	.4byte	0x96
	.4byte	.LLST6
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x1
	.byte	0x36
	.4byte	0x96
	.4byte	.LLST7
	.uleb128 0xc
	.4byte	.LASF52
	.4byte	0x228
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6605
	.uleb128 0xd
	.4byte	.LVL2
	.4byte	0x2e2
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6605
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x7d
	.4byte	0x228
	.uleb128 0x10
	.4byte	0x6f
	.byte	0xe
	.byte	0
	.uleb128 0x11
	.4byte	0x218
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x1
	.byte	0x56
	.4byte	0x8b
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2aa
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x1
	.byte	0x56
	.4byte	0xf5
	.4byte	.LLST8
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0x56
	.4byte	0x96
	.4byte	.LLST9
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x1
	.byte	0x56
	.4byte	0x8b
	.4byte	.LLST10
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x1
	.byte	0x58
	.4byte	0x96
	.4byte	.LLST11
	.uleb128 0x13
	.4byte	.LASF40
	.byte	0x1
	.byte	0x59
	.4byte	0x96
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x1
	.byte	0x5a
	.4byte	0x96
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0x5b
	.4byte	0x96
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x1
	.byte	0x75
	.4byte	0xea
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e2
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x1
	.byte	0x75
	.4byte	0x138
	.4byte	.LLST12
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x1
	.byte	0x77
	.4byte	0xea
	.4byte	.LLST13
	.byte	0
	.uleb128 0x14
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x6
	.byte	0x29
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0xa
	.uleb128 0x5
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL5
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LFE23
	.2byte	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9
	.4byte	.LFE23
	.2byte	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL4
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LFE23
	.2byte	0xd
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x7b
	.sleb128 -1
	.byte	0x33
	.byte	0x24
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL16
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x13
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE24
	.2byte	0x1d
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x21
	.byte	0x73
	.sleb128 0
	.byte	0x26
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"long long int"
.LASF28:
	.string	"MB_EINVAL"
.LASF12:
	.string	"size_t"
.LASF20:
	.string	"MB_EX_ACKNOWLEDGE"
.LASF47:
	.string	"eStatus"
.LASF15:
	.string	"MB_EX_NONE"
.LASF48:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF31:
	.string	"MB_EIO"
.LASF19:
	.string	"MB_EX_SLAVE_DEVICE_FAILURE"
.LASF52:
	.string	"__func__"
.LASF42:
	.string	"usNPreBits"
.LASF23:
	.string	"MB_EX_GATEWAY_PATH_FAILED"
.LASF3:
	.string	"unsigned char"
.LASF37:
	.string	"ucNBits"
.LASF22:
	.string	"MB_EX_MEMORY_PARITY_ERROR"
.LASF9:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF43:
	.string	"usValue"
.LASF38:
	.string	"ucValue"
.LASF50:
	.string	"/home/raphael/rtone/lcd/build/freemodbus"
.LASF18:
	.string	"MB_EX_ILLEGAL_DATA_VALUE"
.LASF34:
	.string	"eMBErrorCode"
.LASF39:
	.string	"usWordBuf"
.LASF53:
	.string	"__assert_func"
.LASF27:
	.string	"MB_ENOREG"
.LASF17:
	.string	"MB_EX_ILLEGAL_DATA_ADDRESS"
.LASF0:
	.string	"unsigned int"
.LASF25:
	.string	"eMBException"
.LASF40:
	.string	"usMask"
.LASF10:
	.string	"char"
.LASF16:
	.string	"MB_EX_ILLEGAL_FUNCTION"
.LASF30:
	.string	"MB_ENORES"
.LASF35:
	.string	"ucByteBuf"
.LASF24:
	.string	"MB_EX_GATEWAY_TGT_FAILED"
.LASF8:
	.string	"sizetype"
.LASF33:
	.string	"MB_ETIMEDOUT"
.LASF44:
	.string	"xMBUtilGetBits"
.LASF51:
	.string	"xMBUtilSetBits"
.LASF45:
	.string	"prveMBError2Exception"
.LASF13:
	.string	"UCHAR"
.LASF4:
	.string	"short int"
.LASF14:
	.string	"USHORT"
.LASF49:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/functions/mbutils.c"
.LASF46:
	.string	"eErrorCode"
.LASF36:
	.string	"usBitOffset"
.LASF7:
	.string	"long int"
.LASF29:
	.string	"MB_EPORTERR"
.LASF2:
	.string	"signed char"
.LASF41:
	.string	"usByteOffset"
.LASF21:
	.string	"MB_EX_SLAVE_BUSY"
.LASF11:
	.string	"_Bool"
.LASF6:
	.string	"long long unsigned int"
.LASF32:
	.string	"MB_EILLSTATE"
.LASF26:
	.string	"MB_ENOERR"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
