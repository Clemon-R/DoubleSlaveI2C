	.file	"mbfuncholding.c"
	.text
.Ltext0:
	.section	.text.eMBFuncWriteHoldingRegister,"ax",@progbits
	.align	4
	.global	eMBFuncWriteHoldingRegister
	.type	eMBFuncWriteHoldingRegister, @function
eMBFuncWriteHoldingRegister:
.LFB23:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/functions/mbfuncholding.c"
	.loc 1 78 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 83 0
	l16ui	a8, a3, 0
	bnei	a8, 5, .L3
	.loc 1 85 0
	l8ui	a11, a2, 1
	slli	a11, a11, 8
.LVL2:
	.loc 1 86 0
	l8ui	a8, a2, 2
	or	a11, a11, a8
.LVL3:
	.loc 1 87 0
	addi.n	a11, a11, 1
.LVL4:
	.loc 1 90 0
	movi.n	a13, 1
	mov.n	a12, a13
	extui	a11, a11, 0, 16
.LVL5:
	addi.n	a10, a2, 3
	call8	eMBRegHoldingCB
.LVL6:
	.loc 1 94 0
	beqz.n	a10, .L4
	.loc 1 96 0
	call8	prveMBError2Exception
.LVL7:
	mov.n	a2, a10
.LVL8:
	retw.n
.LVL9:
.L3:
	.loc 1 102 0
	movi.n	a2, 3
.LVL10:
	retw.n
.LVL11:
.L4:
	.loc 1 80 0
	movi.n	a2, 0
.LVL12:
	.loc 1 105 0
	retw.n
.LFE23:
	.size	eMBFuncWriteHoldingRegister, .-eMBFuncWriteHoldingRegister
	.section	.text.eMBFuncWriteMultipleHoldingRegister,"ax",@progbits
	.align	4
	.global	eMBFuncWriteMultipleHoldingRegister
	.type	eMBFuncWriteMultipleHoldingRegister, @function
eMBFuncWriteMultipleHoldingRegister:
.LFB24:
	.loc 1 111 0
.LVL13:
	entry	sp, 32
.LCFI1:
.LVL14:
	.loc 1 119 0
	l16ui	a8, a3, 0
	bltui	a8, 6, .L8
	.loc 1 121 0
	l8ui	a11, a2, 1
	slli	a11, a11, 8
.LVL15:
	.loc 1 122 0
	l8ui	a8, a2, 2
	or	a11, a11, a8
.LVL16:
	.loc 1 123 0
	addi.n	a11, a11, 1
.LVL17:
	extui	a11, a11, 0, 16
.LVL18:
	.loc 1 125 0
	l8ui	a12, a2, 3
	slli	a12, a12, 8
.LVL19:
	.loc 1 126 0
	l8ui	a8, a2, 4
	or	a12, a12, a8
.LVL20:
	.loc 1 128 0
	l8ui	a10, a2, 5
.LVL21:
	.loc 1 130 0
	addi.n	a8, a12, -1
	extui	a8, a8, 0, 16
	movi	a9, 0x77
	bltu	a9, a8, .L9
	.loc 1 132 0
	slli	a8, a12, 1
	extui	a8, a8, 0, 8
	.loc 1 131 0
	bne	a10, a8, .L10
	.loc 1 135 0
	movi.n	a13, 1
	addi.n	a10, a2, 6
	call8	eMBRegHoldingCB
.LVL22:
	.loc 1 140 0
	beqz.n	a10, .L7
	.loc 1 142 0
	call8	prveMBError2Exception
.LVL23:
	mov.n	a2, a10
.LVL24:
	retw.n
.LVL25:
.L7:
	.loc 1 150 0
	movi.n	a2, 5
.LVL26:
	s16i	a2, a3, 0
	.loc 1 116 0
	movi.n	a2, 0
	retw.n
.LVL27:
.L8:
	.loc 1 161 0
	movi.n	a2, 3
.LVL28:
	retw.n
.LVL29:
.L9:
	.loc 1 155 0
	movi.n	a2, 3
.LVL30:
	retw.n
.LVL31:
.L10:
	movi.n	a2, 3
.LVL32:
	.loc 1 164 0
	retw.n
.LFE24:
	.size	eMBFuncWriteMultipleHoldingRegister, .-eMBFuncWriteMultipleHoldingRegister
	.section	.text.eMBFuncReadHoldingRegister,"ax",@progbits
	.align	4
	.global	eMBFuncReadHoldingRegister
	.type	eMBFuncReadHoldingRegister, @function
eMBFuncReadHoldingRegister:
.LFB25:
	.loc 1 171 0
.LVL33:
	entry	sp, 32
.LCFI2:
.LVL34:
	.loc 1 179 0
	l16ui	a8, a3, 0
	bnei	a8, 5, .L14
	.loc 1 181 0
	l8ui	a11, a2, 1
	slli	a11, a11, 8
.LVL35:
	.loc 1 182 0
	l8ui	a8, a2, 2
	or	a11, a11, a8
.LVL36:
	.loc 1 183 0
	addi.n	a11, a11, 1
.LVL37:
	extui	a11, a11, 0, 16
.LVL38:
	.loc 1 186 0
	l8ui	a12, a2, 4
	extui	a4, a12, 0, 16
.LVL39:
	.loc 1 191 0
	addi.n	a8, a4, -1
	extui	a8, a8, 0, 16
	movi	a9, 0x7c
	bltu	a9, a8, .L15
.LVL40:
	.loc 1 195 0
	movi.n	a8, 0
	s16i	a8, a3, 0
.LVL41:
	.loc 1 198 0
	movi.n	a8, 3
	s8i	a8, a2, 0
	.loc 1 199 0
	l16ui	a8, a3, 0
	addi.n	a8, a8, 1
	s16i	a8, a3, 0
.LVL42:
	.loc 1 202 0
	slli	a8, a12, 1
	s8i	a8, a2, 1
	.loc 1 203 0
	l16ui	a8, a3, 0
	addi.n	a8, a8, 1
	s16i	a8, a3, 0
	.loc 1 206 0
	movi.n	a13, 0
	addi.n	a10, a2, 2
.LVL43:
	call8	eMBRegHoldingCB
.LVL44:
	.loc 1 208 0
	beqz.n	a10, .L13
	.loc 1 210 0
	call8	prveMBError2Exception
.LVL45:
	mov.n	a2, a10
.LVL46:
	retw.n
.LVL47:
.L13:
	.loc 1 214 0
	l16ui	a2, a3, 0
.LVL48:
	addx2	a4, a4, a2
.LVL49:
	s16i	a4, a3, 0
	.loc 1 176 0
	movi.n	a2, 0
	retw.n
.LVL50:
.L14:
	.loc 1 225 0
	movi.n	a2, 3
.LVL51:
	retw.n
.LVL52:
.L15:
	.loc 1 219 0
	movi.n	a2, 3
.LVL53:
	.loc 1 228 0
	retw.n
.LFE25:
	.size	eMBFuncReadHoldingRegister, .-eMBFuncReadHoldingRegister
	.section	.text.eMBFuncReadWriteMultipleHoldingRegister,"ax",@progbits
	.align	4
	.global	eMBFuncReadWriteMultipleHoldingRegister
	.type	eMBFuncReadWriteMultipleHoldingRegister, @function
eMBFuncReadWriteMultipleHoldingRegister:
.LFB26:
	.loc 1 236 0
.LVL54:
	entry	sp, 32
.LCFI3:
.LVL55:
	.loc 1 247 0
	l16ui	a4, a3, 0
	movi.n	a5, 9
	bgeu	a5, a4, .L19
	.loc 1 249 0
	l8ui	a4, a2, 1
	slli	a4, a4, 8
.LVL56:
	.loc 1 250 0
	l8ui	a5, a2, 2
	or	a4, a4, a5
.LVL57:
	.loc 1 251 0
	addi.n	a4, a4, 1
.LVL58:
	extui	a4, a4, 0, 16
.LVL59:
	.loc 1 253 0
	l8ui	a5, a2, 3
	slli	a5, a5, 8
.LVL60:
	.loc 1 254 0
	l8ui	a8, a2, 4
	or	a5, a5, a8
.LVL61:
	.loc 1 256 0
	l8ui	a11, a2, 5
	slli	a11, a11, 8
.LVL62:
	.loc 1 257 0
	l8ui	a8, a2, 6
	or	a11, a11, a8
.LVL63:
	.loc 1 258 0
	addi.n	a11, a11, 1
.LVL64:
	extui	a11, a11, 0, 16
.LVL65:
	.loc 1 260 0
	l8ui	a8, a2, 7
	slli	a8, a8, 8
.LVL66:
	.loc 1 261 0
	l8ui	a12, a2, 8
	or	a12, a8, a12
.LVL67:
	.loc 1 263 0
	l8ui	a10, a2, 9
.LVL68:
	.loc 1 265 0
	addi.n	a8, a5, -1
	extui	a8, a8, 0, 16
	movi	a9, 0x7c
	bltu	a9, a8, .L20
	.loc 1 266 0
	addi.n	a8, a12, -1
	extui	a8, a8, 0, 16
	movi	a9, 0x78
	bltu	a9, a8, .L21
	.loc 1 267 0 discriminator 1
	slli	a8, a12, 1
	.loc 1 266 0 discriminator 1
	bne	a8, a10, .L22
	.loc 1 270 0
	movi.n	a13, 1
	addi.n	a10, a2, 10
	call8	eMBRegHoldingCB
.LVL69:
	.loc 1 273 0
	bnez.n	a10, .L18
.LVL70:
	.loc 1 277 0
	movi.n	a8, 0
	s16i	a8, a3, 0
.LVL71:
	.loc 1 280 0
	movi.n	a8, 0x17
	s8i	a8, a2, 0
	.loc 1 281 0
	l16ui	a8, a3, 0
	addi.n	a8, a8, 1
	s16i	a8, a3, 0
.LVL72:
	.loc 1 284 0
	slli	a8, a5, 1
	s8i	a8, a2, 1
	.loc 1 285 0
	l16ui	a8, a3, 0
	addi.n	a8, a8, 1
	s16i	a8, a3, 0
	.loc 1 288 0
	movi.n	a13, 0
	mov.n	a12, a5
	mov.n	a11, a4
	addi.n	a10, a2, 2
.LVL73:
	call8	eMBRegHoldingCB
.LVL74:
	.loc 1 290 0
	bnez.n	a10, .L18
	.loc 1 292 0
	l16ui	a2, a3, 0
.LVL75:
	addx2	a5, a5, a2
.LVL76:
	s16i	a5, a3, 0
.LVL77:
.L18:
	.loc 1 295 0
	beqz.n	a10, .L23
	.loc 1 297 0
	call8	prveMBError2Exception
.LVL78:
	mov.n	a2, a10
.LVL79:
	retw.n
.LVL80:
.L19:
	.loc 1 244 0
	movi.n	a2, 0
.LVL81:
	retw.n
.LVL82:
.L20:
	.loc 1 302 0
	movi.n	a2, 3
.LVL83:
	retw.n
.LVL84:
.L21:
	movi.n	a2, 3
.LVL85:
	retw.n
.LVL86:
.L22:
	movi.n	a2, 3
.LVL87:
	retw.n
.LVL88:
.L23:
	.loc 1 244 0
	movi.n	a2, 0
.LVL89:
	.loc 1 306 0
	retw.n
.LFE26:
	.size	eMBFuncReadWriteMultipleHoldingRegister, .-eMBFuncReadWriteMultipleHoldingRegister
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
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI3-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/port/port.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/include/mbproto.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/include/mb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x430
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xc
	.4byte	.LASF56
	.4byte	.LASF57
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
	.4byte	.LASF41
	.byte	0x1
	.byte	0x4d
	.4byte	0xdf
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e1
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0x4d
	.4byte	0xea
	.4byte	.LLST0
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x1
	.byte	0x4d
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x1
	.byte	0x4f
	.4byte	0x8b
	.4byte	.LLST1
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x1
	.byte	0x50
	.4byte	0xdf
	.4byte	.LLST2
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0x51
	.4byte	0x14c
	.4byte	.LLST3
	.uleb128 0xc
	.4byte	.LVL6
	.4byte	0x41c
	.4byte	0x1d7
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 3
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
	.4byte	.LVL7
	.4byte	0x428
	.byte	0
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x1
	.byte	0x6e
	.4byte	0xdf
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x284
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0x6e
	.4byte	0xea
	.4byte	.LLST4
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x1
	.byte	0x6e
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x1
	.byte	0x70
	.4byte	0x8b
	.4byte	.LLST5
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x1
	.byte	0x71
	.4byte	0x8b
	.4byte	.LLST6
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x1
	.byte	0x72
	.4byte	0x80
	.4byte	.LLST7
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x1
	.byte	0x74
	.4byte	0xdf
	.4byte	.LLST8
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0x75
	.4byte	0x14c
	.4byte	.LLST9
	.uleb128 0xc
	.4byte	.LVL22
	.4byte	0x41c
	.4byte	0x27a
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
	.4byte	.LVL23
	.4byte	0x428
	.byte	0
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x1
	.byte	0xaa
	.4byte	0xdf
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x327
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0xaa
	.4byte	0xea
	.4byte	.LLST10
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x1
	.byte	0xaa
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x1
	.byte	0xac
	.4byte	0x8b
	.4byte	.LLST11
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x1
	.byte	0xad
	.4byte	0x8b
	.4byte	.LLST12
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x1
	.byte	0xae
	.4byte	0xea
	.4byte	.LLST13
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x1
	.byte	0xb0
	.4byte	0xdf
	.4byte	.LLST14
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0xb1
	.4byte	0x14c
	.4byte	.LLST15
	.uleb128 0xc
	.4byte	.LVL44
	.4byte	0x41c
	.4byte	0x31d
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
	.4byte	.LVL45
	.4byte	0x428
	.byte	0
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x1
	.byte	0xeb
	.4byte	0xdf
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41c
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0xeb
	.4byte	0xea
	.4byte	.LLST16
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x1
	.byte	0xeb
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x1
	.byte	0xed
	.4byte	0x8b
	.4byte	.LLST17
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x1
	.byte	0xee
	.4byte	0x8b
	.4byte	.LLST18
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x1
	.byte	0xef
	.4byte	0x8b
	.4byte	.LLST19
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x1
	.byte	0xf0
	.4byte	0x8b
	.4byte	.LLST20
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x1
	.byte	0xf1
	.4byte	0x80
	.4byte	.LLST21
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x1
	.byte	0xf2
	.4byte	0xea
	.4byte	.LLST22
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x1
	.byte	0xf4
	.4byte	0xdf
	.4byte	.LLST23
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0xf5
	.4byte	0x14c
	.4byte	.LLST24
	.uleb128 0xc
	.4byte	.LVL69
	.4byte	0x41c
	.4byte	0x3ed
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 10
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xc
	.4byte	.LVL74
	.4byte	0x41c
	.4byte	0x412
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 2
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.4byte	.LVL78
	.4byte	0x428
	.byte	0
	.uleb128 0xf
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x15b
	.uleb128 0x10
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x1
	.byte	0x46
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
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
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
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0xf
	.byte	0x72
	.sleb128 1
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
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL29
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL29
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x2
	.byte	0x72
	.sleb128 5
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x72
	.sleb128 5
	.4byte	.LVL30
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL33
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL52
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0xa
	.byte	0x72
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL44-1
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL52
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44-1
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL34
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL44
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL54
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL82
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL60
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL82
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL82
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL67
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL82
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL68
	.4byte	.LVL69-1
	.2byte	0x2
	.byte	0x72
	.sleb128 9
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x72
	.sleb128 9
	.4byte	.LVL83
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74-1
	.4byte	.LVL75
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL55
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LVL89
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL69
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
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
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF41:
	.string	"eMBFuncWriteHoldingRegister"
.LASF14:
	.string	"MB_EX_NONE"
.LASF19:
	.string	"MB_EX_ACKNOWLEDGE"
.LASF46:
	.string	"pucFrameCur"
.LASF44:
	.string	"ucRegByteCount"
.LASF39:
	.string	"eStatus"
.LASF49:
	.string	"usRegReadCount"
.LASF56:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/functions/mbfuncholding.c"
.LASF43:
	.string	"usRegCount"
.LASF29:
	.string	"MB_EINVAL"
.LASF36:
	.string	"pucFrame"
.LASF50:
	.string	"usRegWriteAddress"
.LASF40:
	.string	"eRegStatus"
.LASF37:
	.string	"usLen"
.LASF18:
	.string	"MB_EX_SLAVE_DEVICE_FAILURE"
.LASF22:
	.string	"MB_EX_GATEWAY_PATH_FAILED"
.LASF45:
	.string	"eMBFuncReadHoldingRegister"
.LASF3:
	.string	"unsigned char"
.LASF48:
	.string	"usRegReadAddress"
.LASF21:
	.string	"MB_EX_MEMORY_PARITY_ERROR"
.LASF9:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF53:
	.string	"eMBRegHoldingCB"
.LASF17:
	.string	"MB_EX_ILLEGAL_DATA_VALUE"
.LASF38:
	.string	"usRegAddress"
.LASF35:
	.string	"eMBErrorCode"
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
.LASF42:
	.string	"eMBFuncWriteMultipleHoldingRegister"
.LASF10:
	.string	"char"
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
.LASF57:
	.string	"/home/raphael/rtone/lcd/build/freemodbus"
.LASF5:
	.string	"long long int"
.LASF54:
	.string	"prveMBError2Exception"
.LASF55:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF12:
	.string	"UCHAR"
.LASF47:
	.string	"eMBFuncReadWriteMultipleHoldingRegister"
.LASF4:
	.string	"short int"
.LASF13:
	.string	"USHORT"
.LASF31:
	.string	"MB_ENORES"
.LASF32:
	.string	"MB_EIO"
.LASF7:
	.string	"long int"
.LASF30:
	.string	"MB_EPORTERR"
.LASF52:
	.string	"ucRegWriteByteCount"
.LASF2:
	.string	"signed char"
.LASF20:
	.string	"MB_EX_SLAVE_BUSY"
.LASF11:
	.string	"_Bool"
.LASF51:
	.string	"usRegWriteCount"
.LASF6:
	.string	"long long unsigned int"
.LASF33:
	.string	"MB_EILLSTATE"
.LASF27:
	.string	"MB_ENOERR"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
