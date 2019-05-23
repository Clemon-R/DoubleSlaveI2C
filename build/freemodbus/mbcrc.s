	.file	"mbcrc.c"
	.text
.Ltext0:
	.section	.text.usMBCRC16,"ax",@progbits
	.literal_position
	.literal .LC0, aucCRCHi
	.literal .LC1, aucCRCLo
	.align	4
	.global	usMBCRC16
	.type	usMBCRC16, @function
usMBCRC16:
.LFB23:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/rtu/mbcrc.c"
	.loc 1 86 0
.LVL0:
	entry	sp, 32
.LCFI0:
	extui	a3, a3, 0, 16
.LVL1:
	.loc 1 88 0
	movi	a9, 0xff
	.loc 1 87 0
	mov.n	a12, a9
	.loc 1 91 0
	j	.L2
.LVL2:
.L3:
	.loc 1 93 0
	l8ui	a8, a2, 0
.LVL3:
	xor	a8, a9, a8
.LVL4:
	.loc 1 94 0
	l32r	a11, .LC0
	add.n	a11, a11, a8
	l8ui	a9, a11, 0
.LVL5:
	xor	a9, a12, a9
.LVL6:
	.loc 1 95 0
	l32r	a3, .LC1
	add.n	a8, a3, a8
.LVL7:
	l8ui	a12, a8, 0
.LVL8:
	.loc 1 91 0
	mov.n	a3, a10
	.loc 1 93 0
	addi.n	a2, a2, 1
.LVL9:
.L2:
	.loc 1 91 0
	addi.n	a8, a3, -1
	extui	a10, a8, 0, 16
.LVL10:
	bnez.n	a3, .L3
	.loc 1 97 0
	slli	a12, a12, 8
.LVL11:
	or	a2, a12, a9
.LVL12:
	.loc 1 98 0
	extui	a2, a2, 0, 16
	retw.n
.LFE23:
	.size	usMBCRC16, .-usMBCRC16
	.section	.rodata.aucCRCLo,"a",@progbits
	.align	4
	.type	aucCRCLo, @object
	.size	aucCRCLo, 256
aucCRCLo:
	.byte	0
	.byte	-64
	.byte	-63
	.byte	1
	.byte	-61
	.byte	3
	.byte	2
	.byte	-62
	.byte	-58
	.byte	6
	.byte	7
	.byte	-57
	.byte	5
	.byte	-59
	.byte	-60
	.byte	4
	.byte	-52
	.byte	12
	.byte	13
	.byte	-51
	.byte	15
	.byte	-49
	.byte	-50
	.byte	14
	.byte	10
	.byte	-54
	.byte	-53
	.byte	11
	.byte	-55
	.byte	9
	.byte	8
	.byte	-56
	.byte	-40
	.byte	24
	.byte	25
	.byte	-39
	.byte	27
	.byte	-37
	.byte	-38
	.byte	26
	.byte	30
	.byte	-34
	.byte	-33
	.byte	31
	.byte	-35
	.byte	29
	.byte	28
	.byte	-36
	.byte	20
	.byte	-44
	.byte	-43
	.byte	21
	.byte	-41
	.byte	23
	.byte	22
	.byte	-42
	.byte	-46
	.byte	18
	.byte	19
	.byte	-45
	.byte	17
	.byte	-47
	.byte	-48
	.byte	16
	.byte	-16
	.byte	48
	.byte	49
	.byte	-15
	.byte	51
	.byte	-13
	.byte	-14
	.byte	50
	.byte	54
	.byte	-10
	.byte	-9
	.byte	55
	.byte	-11
	.byte	53
	.byte	52
	.byte	-12
	.byte	60
	.byte	-4
	.byte	-3
	.byte	61
	.byte	-1
	.byte	63
	.byte	62
	.byte	-2
	.byte	-6
	.byte	58
	.byte	59
	.byte	-5
	.byte	57
	.byte	-7
	.byte	-8
	.byte	56
	.byte	40
	.byte	-24
	.byte	-23
	.byte	41
	.byte	-21
	.byte	43
	.byte	42
	.byte	-22
	.byte	-18
	.byte	46
	.byte	47
	.byte	-17
	.byte	45
	.byte	-19
	.byte	-20
	.byte	44
	.byte	-28
	.byte	36
	.byte	37
	.byte	-27
	.byte	39
	.byte	-25
	.byte	-26
	.byte	38
	.byte	34
	.byte	-30
	.byte	-29
	.byte	35
	.byte	-31
	.byte	33
	.byte	32
	.byte	-32
	.byte	-96
	.byte	96
	.byte	97
	.byte	-95
	.byte	99
	.byte	-93
	.byte	-94
	.byte	98
	.byte	102
	.byte	-90
	.byte	-89
	.byte	103
	.byte	-91
	.byte	101
	.byte	100
	.byte	-92
	.byte	108
	.byte	-84
	.byte	-83
	.byte	109
	.byte	-81
	.byte	111
	.byte	110
	.byte	-82
	.byte	-86
	.byte	106
	.byte	107
	.byte	-85
	.byte	105
	.byte	-87
	.byte	-88
	.byte	104
	.byte	120
	.byte	-72
	.byte	-71
	.byte	121
	.byte	-69
	.byte	123
	.byte	122
	.byte	-70
	.byte	-66
	.byte	126
	.byte	127
	.byte	-65
	.byte	125
	.byte	-67
	.byte	-68
	.byte	124
	.byte	-76
	.byte	116
	.byte	117
	.byte	-75
	.byte	119
	.byte	-73
	.byte	-74
	.byte	118
	.byte	114
	.byte	-78
	.byte	-77
	.byte	115
	.byte	-79
	.byte	113
	.byte	112
	.byte	-80
	.byte	80
	.byte	-112
	.byte	-111
	.byte	81
	.byte	-109
	.byte	83
	.byte	82
	.byte	-110
	.byte	-106
	.byte	86
	.byte	87
	.byte	-105
	.byte	85
	.byte	-107
	.byte	-108
	.byte	84
	.byte	-100
	.byte	92
	.byte	93
	.byte	-99
	.byte	95
	.byte	-97
	.byte	-98
	.byte	94
	.byte	90
	.byte	-102
	.byte	-101
	.byte	91
	.byte	-103
	.byte	89
	.byte	88
	.byte	-104
	.byte	-120
	.byte	72
	.byte	73
	.byte	-119
	.byte	75
	.byte	-117
	.byte	-118
	.byte	74
	.byte	78
	.byte	-114
	.byte	-113
	.byte	79
	.byte	-115
	.byte	77
	.byte	76
	.byte	-116
	.byte	68
	.byte	-124
	.byte	-123
	.byte	69
	.byte	-121
	.byte	71
	.byte	70
	.byte	-122
	.byte	-126
	.byte	66
	.byte	67
	.byte	-125
	.byte	65
	.byte	-127
	.byte	-128
	.byte	64
	.section	.rodata.aucCRCHi,"a",@progbits
	.align	4
	.type	aucCRCHi, @object
	.size	aucCRCHi, 256
aucCRCHi:
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	1
	.byte	-64
	.byte	-128
	.byte	65
	.byte	0
	.byte	-63
	.byte	-127
	.byte	64
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
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x13a
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
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
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
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x4a
	.4byte	0x3a
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x1
	.byte	0x55
	.4byte	0x8b
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfb
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x1
	.byte	0x55
	.4byte	0xfb
	.4byte	.LLST0
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0x55
	.4byte	0x8b
	.4byte	.LLST1
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0x57
	.4byte	0x80
	.4byte	.LLST2
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0x58
	.4byte	0x80
	.4byte	.LLST3
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0x59
	.4byte	0x41
	.4byte	.LLST4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x80
	.uleb128 0x9
	.4byte	0x80
	.4byte	0x111
	.uleb128 0xa
	.4byte	0x64
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x22
	.4byte	0x122
	.uleb128 0x5
	.byte	0x3
	.4byte	aucCRCHi
	.uleb128 0xc
	.4byte	0x101
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x3b
	.4byte	0x138
	.uleb128 0x5
	.byte	0x3
	.4byte	aucCRCLo
	.uleb128 0xc
	.4byte	0x101
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
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
.LASF5:
	.string	"long long int"
.LASF13:
	.string	"USHORT"
.LASF4:
	.string	"unsigned int"
.LASF21:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF19:
	.string	"aucCRCHi"
.LASF14:
	.string	"pucFrame"
.LASF15:
	.string	"usLen"
.LASF9:
	.string	"long unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF17:
	.string	"ucCRCLo"
.LASF22:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/rtu/mbcrc.c"
.LASF1:
	.string	"unsigned char"
.LASF10:
	.string	"char"
.LASF24:
	.string	"usMBCRC16"
.LASF7:
	.string	"long int"
.LASF11:
	.string	"_Bool"
.LASF20:
	.string	"aucCRCLo"
.LASF3:
	.string	"short unsigned int"
.LASF0:
	.string	"signed char"
.LASF12:
	.string	"UCHAR"
.LASF16:
	.string	"ucCRCHi"
.LASF18:
	.string	"iIndex"
.LASF23:
	.string	"/home/raphael/rtone/lcd/build/freemodbus"
.LASF2:
	.string	"short int"
.LASF8:
	.string	"sizetype"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
