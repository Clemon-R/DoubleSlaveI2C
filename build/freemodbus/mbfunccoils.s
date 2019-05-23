	.file	"mbfunccoils.c"
	.text
.Ltext0:
	.section	.text.eMBFuncReadCoils,"ax",@progbits
	.align	4
	.global	eMBFuncReadCoils
	.type	eMBFuncReadCoils, @function
eMBFuncReadCoils:
.LFB23:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/functions/mbfunccoils.c"
	.loc 1 70 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 79 0
	l16ui	a8, a3, 0
	bnei	a8, 5, .L6
	.loc 1 81 0
	l8ui	a11, a2, 1
	slli	a11, a11, 8
.LVL2:
	.loc 1 82 0
	l8ui	a8, a2, 2
	or	a11, a11, a8
.LVL3:
	.loc 1 83 0
	addi.n	a11, a11, 1
.LVL4:
	extui	a11, a11, 0, 16
.LVL5:
	.loc 1 85 0
	l8ui	a12, a2, 3
	slli	a8, a12, 8
.LVL6:
	.loc 1 86 0
	l8ui	a12, a2, 4
	or	a12, a8, a12
.LVL7:
	.loc 1 91 0
	addi.n	a8, a12, -1
	extui	a8, a8, 0, 16
	movi	a9, 0x7ce
	bltu	a9, a8, .L7
.LVL8:
	.loc 1 96 0
	movi.n	a4, 0
	s16i	a4, a3, 0
.LVL9:
	.loc 1 99 0
	movi.n	a4, 1
	s8i	a4, a2, 0
	.loc 1 100 0
	l16ui	a4, a3, 0
	addi.n	a4, a4, 1
	s16i	a4, a3, 0
	.loc 1 104 0
	extui	a4, a12, 0, 3
	beqz.n	a4, .L3
	.loc 1 106 0
	extui	a4, a12, 3, 8
	addi.n	a4, a4, 1
	extui	a4, a4, 0, 8
.LVL10:
	j	.L4
.LVL11:
.L3:
	.loc 1 110 0
	extui	a4, a12, 3, 8
.LVL12:
.L4:
	.loc 1 112 0
	s8i	a4, a2, 1
	.loc 1 113 0
	l16ui	a8, a3, 0
	addi.n	a8, a8, 1
	s16i	a8, a3, 0
	.loc 1 115 0
	movi.n	a13, 0
	addi.n	a10, a2, 2
.LVL13:
	call8	eMBRegCoilsCB
.LVL14:
	.loc 1 120 0
	beqz.n	a10, .L5
	.loc 1 122 0
	call8	prveMBError2Exception
.LVL15:
	mov.n	a2, a10
.LVL16:
	retw.n
.LVL17:
.L5:
	.loc 1 129 0
	l16ui	a2, a3, 0
.LVL18:
	add.n	a4, a4, a2
.LVL19:
	s16i	a4, a3, 0
	.loc 1 76 0
	movi.n	a2, 0
	retw.n
.LVL20:
.L6:
	.loc 1 141 0
	movi.n	a2, 3
.LVL21:
	retw.n
.LVL22:
.L7:
	.loc 1 134 0
	movi.n	a2, 3
.LVL23:
	.loc 1 144 0
	retw.n
.LFE23:
	.size	eMBFuncReadCoils, .-eMBFuncReadCoils
	.section	.text.eMBFuncWriteCoil,"ax",@progbits
	.align	4
	.global	eMBFuncWriteCoil
	.type	eMBFuncWriteCoil, @function
eMBFuncWriteCoil:
.LFB24:
	.loc 1 149 0
.LVL24:
	entry	sp, 48
.LCFI1:
.LVL25:
	.loc 1 156 0
	l16ui	a8, a3, 0
	bnei	a8, 5, .L12
	.loc 1 158 0
	l8ui	a11, a2, 1
	slli	a11, a11, 8
.LVL26:
	.loc 1 159 0
	l8ui	a8, a2, 2
	or	a11, a11, a8
.LVL27:
	.loc 1 160 0
	addi.n	a11, a11, 1
.LVL28:
	extui	a11, a11, 0, 16
.LVL29:
	.loc 1 162 0
	l8ui	a8, a2, 4
	bnez.n	a8, .L13
	.loc 1 163 0 discriminator 1
	l8ui	a8, a2, 3
	addi.n	a2, a8, -1
.LVL30:
	extui	a2, a2, 0, 8
	.loc 1 162 0 discriminator 1
	movi	a9, 0xfd
	bgeu	a9, a2, .L14
	.loc 1 166 0
	movi.n	a2, 0
	s8i	a2, sp, 1
	.loc 1 167 0
	movi	a2, 0xff
	bne	a8, a2, .L10
	.loc 1 169 0
	movi.n	a2, 1
	s8i	a2, sp, 0
	j	.L11
.L10:
	.loc 1 173 0
	movi.n	a2, 0
	s8i	a2, sp, 0
.L11:
	.loc 1 175 0
	movi.n	a13, 1
	mov.n	a12, a13
	mov.n	a10, sp
	call8	eMBRegCoilsCB
.LVL31:
	.loc 1 179 0
	beqz.n	a10, .L15
	.loc 1 181 0
	call8	prveMBError2Exception
.LVL32:
	mov.n	a2, a10
.LVL33:
	retw.n
.LVL34:
.L12:
	.loc 1 193 0
	movi.n	a2, 3
.LVL35:
	retw.n
.LVL36:
.L13:
	.loc 1 186 0
	movi.n	a2, 3
.LVL37:
	retw.n
.L14:
	movi.n	a2, 3
	retw.n
.LVL38:
.L15:
	.loc 1 153 0
	movi.n	a2, 0
.LVL39:
	.loc 1 196 0
	retw.n
.LFE24:
	.size	eMBFuncWriteCoil, .-eMBFuncWriteCoil
	.section	.text.eMBFuncWriteMultipleCoils,"ax",@progbits
	.align	4
	.global	eMBFuncWriteMultipleCoils
	.type	eMBFuncWriteMultipleCoils, @function
eMBFuncWriteMultipleCoils:
.LFB25:
	.loc 1 203 0
.LVL40:
	entry	sp, 32
.LCFI2:
.LVL41:
	.loc 1 212 0
	l16ui	a8, a3, 0
	bltui	a8, 6, .L21
	.loc 1 214 0
	l8ui	a11, a2, 1
	slli	a11, a11, 8
.LVL42:
	.loc 1 215 0
	l8ui	a8, a2, 2
	or	a11, a11, a8
.LVL43:
	.loc 1 216 0
	addi.n	a11, a11, 1
.LVL44:
	extui	a11, a11, 0, 16
.LVL45:
	.loc 1 218 0
	l8ui	a12, a2, 3
	slli	a12, a12, 8
.LVL46:
	.loc 1 219 0
	l8ui	a8, a2, 4
	or	a12, a12, a8
.LVL47:
	.loc 1 221 0
	l8ui	a13, a2, 5
.LVL48:
	.loc 1 224 0
	extui	a8, a12, 0, 3
	beqz.n	a8, .L18
	.loc 1 226 0
	extui	a9, a12, 3, 8
	addi.n	a9, a9, 1
	extui	a9, a9, 0, 8
.LVL49:
	j	.L19
.LVL50:
.L18:
	.loc 1 230 0
	extui	a9, a12, 3, 8
.LVL51:
.L19:
	.loc 1 233 0
	addi.n	a8, a12, -1
	extui	a8, a8, 0, 16
	movi	a10, 0x7af
	bltu	a10, a8, .L22
	.loc 1 234 0
	bne	a9, a13, .L23
	.loc 1 237 0
	movi.n	a13, 1
	addi.n	a10, a2, 6
	call8	eMBRegCoilsCB
.LVL52:
	.loc 1 242 0
	beqz.n	a10, .L20
	.loc 1 244 0
	call8	prveMBError2Exception
.LVL53:
	mov.n	a2, a10
.LVL54:
	retw.n
.LVL55:
.L20:
	.loc 1 251 0
	movi.n	a2, 5
.LVL56:
	s16i	a2, a3, 0
	.loc 1 209 0
	movi.n	a2, 0
	retw.n
.LVL57:
.L21:
	.loc 1 263 0
	movi.n	a2, 3
.LVL58:
	retw.n
.LVL59:
.L22:
	.loc 1 256 0
	movi.n	a2, 3
.LVL60:
	retw.n
.LVL61:
.L23:
	movi.n	a2, 3
.LVL62:
	.loc 1 266 0
	retw.n
.LFE25:
	.size	eMBFuncWriteMultipleCoils, .-eMBFuncWriteMultipleCoils
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
	.uleb128 0x30
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
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/port/port.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/include/mbproto.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/include/mb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x377
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0xc
	.4byte	.LASF54
	.4byte	.LASF55
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
	.byte	0x68
	.4byte	0x10f
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x71
	.4byte	0x14c
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x4
	.byte	0x7a
	.4byte	0x10f
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x1
	.byte	0x45
	.4byte	0xdf
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x209
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0x45
	.4byte	0xea
	.4byte	.LLST0
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x1
	.byte	0x45
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x1
	.byte	0x47
	.4byte	0x8b
	.4byte	.LLST1
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x1
	.byte	0x48
	.4byte	0x8b
	.4byte	.LLST2
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0x49
	.4byte	0x80
	.4byte	.LLST3
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x1
	.byte	0x4a
	.4byte	0xea
	.4byte	.LLST4
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x1
	.byte	0x4c
	.4byte	0xdf
	.4byte	.LLST5
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x1
	.byte	0x4d
	.4byte	0x14c
	.4byte	.LLST6
	.uleb128 0xc
	.4byte	.LVL14
	.4byte	0x363
	.4byte	0x1ff
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 2
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.4byte	.LVL15
	.4byte	0x36f
	.byte	0
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x1
	.byte	0x94
	.4byte	0xdf
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a1
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0x94
	.4byte	0xea
	.4byte	.LLST7
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x1
	.byte	0x94
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x1
	.byte	0x96
	.4byte	0x8b
	.4byte	.LLST8
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x1
	.byte	0x97
	.4byte	0x2a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x1
	.byte	0x99
	.4byte	0xdf
	.4byte	.LLST9
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x1
	.byte	0x9a
	.4byte	0x14c
	.4byte	.LLST10
	.uleb128 0xc
	.4byte	.LVL31
	.4byte	0x363
	.4byte	0x297
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xe
	.4byte	.LVL32
	.4byte	0x36f
	.byte	0
	.uleb128 0x10
	.4byte	0x80
	.4byte	0x2b1
	.uleb128 0x11
	.4byte	0x64
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x1
	.byte	0xca
	.4byte	0xdf
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x363
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0xca
	.4byte	0xea
	.4byte	.LLST11
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x1
	.byte	0xca
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x1
	.byte	0xcc
	.4byte	0x8b
	.4byte	.LLST12
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x1
	.byte	0xcd
	.4byte	0x8b
	.4byte	.LLST13
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x1
	.byte	0xce
	.4byte	0x80
	.4byte	.LLST14
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x1
	.byte	0xcf
	.4byte	0x80
	.4byte	.LLST15
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x1
	.byte	0xd1
	.4byte	0xdf
	.4byte	.LLST16
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x1
	.byte	0xd2
	.4byte	0x14c
	.4byte	.LLST17
	.uleb128 0xc
	.4byte	.LVL52
	.4byte	0x363
	.4byte	0x359
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xe
	.4byte	.LVL53
	.4byte	0x36f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x17e
	.uleb128 0x13
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x1
	.byte	0x3e
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
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
.LLST7:
	.4byte	.LVL24
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
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
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL25
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL40
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL59
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL46
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL59
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL48
	.4byte	.LVL52-1
	.2byte	0x2
	.byte	0x72
	.sleb128 5
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x72
	.sleb128 5
	.4byte	.LVL60
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL59
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL41
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL52
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5a
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
.LASF29:
	.string	"MB_EINVAL"
.LASF40:
	.string	"ucNBytes"
.LASF14:
	.string	"MB_EX_NONE"
.LASF19:
	.string	"MB_EX_ACKNOWLEDGE"
.LASF44:
	.string	"eMBFuncReadCoils"
.LASF39:
	.string	"usCoilCount"
.LASF48:
	.string	"usCoilCnt"
.LASF42:
	.string	"eStatus"
.LASF47:
	.string	"eMBFuncWriteMultipleCoils"
.LASF41:
	.string	"pucFrameCur"
.LASF36:
	.string	"pucFrame"
.LASF53:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF43:
	.string	"eRegStatus"
.LASF37:
	.string	"usLen"
.LASF18:
	.string	"MB_EX_SLAVE_DEVICE_FAILURE"
.LASF22:
	.string	"MB_EX_GATEWAY_PATH_FAILED"
.LASF3:
	.string	"unsigned char"
.LASF21:
	.string	"MB_EX_MEMORY_PARITY_ERROR"
.LASF9:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF50:
	.string	"ucByteCountVerify"
.LASF17:
	.string	"MB_EX_ILLEGAL_DATA_VALUE"
.LASF38:
	.string	"usRegAddress"
.LASF35:
	.string	"eMBErrorCode"
.LASF51:
	.string	"eMBRegCoilsCB"
.LASF54:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/functions/mbfunccoils.c"
.LASF28:
	.string	"MB_ENOREG"
.LASF25:
	.string	"MB_REG_READ"
.LASF16:
	.string	"MB_EX_ILLEGAL_DATA_ADDRESS"
.LASF0:
	.string	"unsigned int"
.LASF24:
	.string	"eMBException"
.LASF45:
	.string	"eMBFuncWriteCoil"
.LASF15:
	.string	"MB_EX_ILLEGAL_FUNCTION"
.LASF26:
	.string	"MB_REG_WRITE"
.LASF23:
	.string	"MB_EX_GATEWAY_TGT_FAILED"
.LASF8:
	.string	"sizetype"
.LASF34:
	.string	"MB_ETIMEDOUT"
.LASF55:
	.string	"/home/raphael/rtone/lcd/build/freemodbus"
.LASF5:
	.string	"long long int"
.LASF52:
	.string	"prveMBError2Exception"
.LASF31:
	.string	"MB_ENORES"
.LASF10:
	.string	"char"
.LASF46:
	.string	"ucBuf"
.LASF4:
	.string	"short int"
.LASF13:
	.string	"USHORT"
.LASF49:
	.string	"ucByteCount"
.LASF32:
	.string	"MB_EIO"
.LASF12:
	.string	"UCHAR"
.LASF7:
	.string	"long int"
.LASF30:
	.string	"MB_EPORTERR"
.LASF2:
	.string	"signed char"
.LASF20:
	.string	"MB_EX_SLAVE_BUSY"
.LASF11:
	.string	"_Bool"
.LASF6:
	.string	"long long unsigned int"
.LASF33:
	.string	"MB_EILLSTATE"
.LASF27:
	.string	"MB_ENOERR"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
