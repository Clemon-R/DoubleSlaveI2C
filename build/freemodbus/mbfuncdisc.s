	.file	"mbfuncdisc.c"
	.text
.Ltext0:
	.section	.text.eMBFuncReadDiscreteInputs,"ax",@progbits
	.align	4
	.global	eMBFuncReadDiscreteInputs
	.type	eMBFuncReadDiscreteInputs, @function
eMBFuncReadDiscreteInputs:
.LFB23:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/functions/mbfuncdisc.c"
	.loc 1 50 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 59 0
	l16ui	a8, a3, 0
	bnei	a8, 5, .L6
	.loc 1 61 0
	l8ui	a11, a2, 1
	slli	a11, a11, 8
.LVL2:
	.loc 1 62 0
	l8ui	a8, a2, 2
	or	a11, a11, a8
.LVL3:
	.loc 1 63 0
	addi.n	a11, a11, 1
.LVL4:
	extui	a11, a11, 0, 16
.LVL5:
	.loc 1 65 0
	l8ui	a12, a2, 3
	slli	a8, a12, 8
.LVL6:
	.loc 1 66 0
	l8ui	a12, a2, 4
	or	a12, a8, a12
.LVL7:
	.loc 1 71 0
	addi.n	a8, a12, -1
	extui	a8, a8, 0, 16
	movi	a9, 0x7ce
	bltu	a9, a8, .L7
.LVL8:
	.loc 1 76 0
	movi.n	a4, 0
	s16i	a4, a3, 0
.LVL9:
	.loc 1 79 0
	movi.n	a4, 2
	s8i	a4, a2, 0
	.loc 1 80 0
	l16ui	a4, a3, 0
	addi.n	a4, a4, 1
	s16i	a4, a3, 0
	.loc 1 84 0
	extui	a4, a12, 0, 3
	beqz.n	a4, .L3
	.loc 1 86 0
	extui	a4, a12, 3, 8
	addi.n	a4, a4, 1
	extui	a4, a4, 0, 8
.LVL10:
	j	.L4
.LVL11:
.L3:
	.loc 1 90 0
	extui	a4, a12, 3, 8
.LVL12:
.L4:
	.loc 1 92 0
	s8i	a4, a2, 1
	.loc 1 93 0
	l16ui	a8, a3, 0
	addi.n	a8, a8, 1
	s16i	a8, a3, 0
	.loc 1 95 0
	addi.n	a10, a2, 2
.LVL13:
	call8	eMBRegDiscreteCB
.LVL14:
	.loc 1 99 0
	beqz.n	a10, .L5
	.loc 1 101 0
	call8	prveMBError2Exception
.LVL15:
	mov.n	a2, a10
.LVL16:
	retw.n
.LVL17:
.L5:
	.loc 1 108 0
	l16ui	a2, a3, 0
.LVL18:
	add.n	a4, a4, a2
.LVL19:
	s16i	a4, a3, 0
	.loc 1 56 0
	movi.n	a2, 0
	retw.n
.LVL20:
.L6:
	.loc 1 120 0
	movi.n	a2, 3
.LVL21:
	retw.n
.LVL22:
.L7:
	.loc 1 113 0
	movi.n	a2, 3
.LVL23:
	.loc 1 123 0
	retw.n
.LFE23:
	.size	eMBFuncReadDiscreteInputs, .-eMBFuncReadDiscreteInputs
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
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/port/port.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/include/mbproto.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/include/mb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1ff
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xc
	.4byte	.LASF45
	.4byte	.LASF46
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0x47
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x4a
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x3b
	.4byte	0xdf
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0xb
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x3
	.byte	0x46
	.4byte	0x96
	.uleb128 0x7
	.byte	0x4
	.4byte	0x80
	.uleb128 0x7
	.byte	0x4
	.4byte	0x8b
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x71
	.4byte	0x133
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x4
	.byte	0x7a
	.4byte	0xf6
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x1
	.byte	0x31
	.4byte	0xdf
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1eb
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x1
	.byte	0x31
	.4byte	0xea
	.4byte	.LLST0
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x1
	.byte	0x31
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x1
	.byte	0x33
	.4byte	0x8b
	.4byte	.LLST1
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x1
	.byte	0x34
	.4byte	0x8b
	.4byte	.LLST2
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x1
	.byte	0x35
	.4byte	0x80
	.4byte	.LLST3
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x1
	.byte	0x36
	.4byte	0xea
	.4byte	.LLST4
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0x38
	.4byte	0xdf
	.4byte	.LLST5
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x1
	.byte	0x39
	.4byte	0x133
	.4byte	.LLST6
	.uleb128 0xc
	.4byte	.LVL14
	.4byte	0x1eb
	.4byte	0x1e1
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 2
	.byte	0
	.uleb128 0xe
	.4byte	.LVL15
	.4byte	0x1f7
	.byte	0
	.uleb128 0xf
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x19b
	.uleb128 0x10
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x1
	.byte	0x2a
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
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL22
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL22
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-1
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"MB_EINVAL"
.LASF38:
	.string	"ucNBytes"
.LASF14:
	.string	"MB_EX_NONE"
.LASF19:
	.string	"MB_EX_ACKNOWLEDGE"
.LASF40:
	.string	"eStatus"
.LASF45:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/functions/mbfuncdisc.c"
.LASF39:
	.string	"pucFrameCur"
.LASF34:
	.string	"pucFrame"
.LASF44:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF41:
	.string	"eRegStatus"
.LASF35:
	.string	"usLen"
.LASF18:
	.string	"MB_EX_SLAVE_DEVICE_FAILURE"
.LASF22:
	.string	"MB_EX_GATEWAY_PATH_FAILED"
.LASF3:
	.string	"unsigned char"
.LASF42:
	.string	"eMBRegDiscreteCB"
.LASF21:
	.string	"MB_EX_MEMORY_PARITY_ERROR"
.LASF9:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF17:
	.string	"MB_EX_ILLEGAL_DATA_VALUE"
.LASF36:
	.string	"usRegAddress"
.LASF33:
	.string	"eMBErrorCode"
.LASF26:
	.string	"MB_ENOREG"
.LASF16:
	.string	"MB_EX_ILLEGAL_DATA_ADDRESS"
.LASF0:
	.string	"unsigned int"
.LASF24:
	.string	"eMBException"
.LASF10:
	.string	"char"
.LASF15:
	.string	"MB_EX_ILLEGAL_FUNCTION"
.LASF47:
	.string	"eMBFuncReadDiscreteInputs"
.LASF29:
	.string	"MB_ENORES"
.LASF6:
	.string	"long long unsigned int"
.LASF23:
	.string	"MB_EX_GATEWAY_TGT_FAILED"
.LASF8:
	.string	"sizetype"
.LASF32:
	.string	"MB_ETIMEDOUT"
.LASF46:
	.string	"/home/raphael/rtone/lcd/build/freemodbus"
.LASF5:
	.string	"long long int"
.LASF43:
	.string	"prveMBError2Exception"
.LASF12:
	.string	"UCHAR"
.LASF4:
	.string	"short int"
.LASF13:
	.string	"USHORT"
.LASF30:
	.string	"MB_EIO"
.LASF7:
	.string	"long int"
.LASF28:
	.string	"MB_EPORTERR"
.LASF2:
	.string	"signed char"
.LASF20:
	.string	"MB_EX_SLAVE_BUSY"
.LASF11:
	.string	"_Bool"
.LASF37:
	.string	"usDiscreteCnt"
.LASF31:
	.string	"MB_EILLSTATE"
.LASF25:
	.string	"MB_ENOERR"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"