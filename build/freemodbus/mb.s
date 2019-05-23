	.file	"mb.c"
	.text
.Ltext0:
	.section	.text.eMBInit,"ax",@progbits
	.literal_position
	.literal .LC0, ucMBAddress
	.literal .LC1, pvMBFrameStartCur
	.literal .LC2, eMBRTUStart
	.literal .LC3, pvMBFrameStopCur
	.literal .LC4, eMBRTUStop
	.literal .LC5, peMBFrameSendCur
	.literal .LC6, eMBRTUSend
	.literal .LC7, peMBFrameReceiveCur
	.literal .LC8, eMBRTUReceive
	.literal .LC9, pvMBFrameCloseCur
	.literal .LC10, pxMBFrameCBByteReceived
	.literal .LC11, xMBRTUReceiveFSM
	.literal .LC12, pxMBFrameCBTransmitterEmpty
	.literal .LC13, xMBRTUTransmitFSM
	.literal .LC14, pxMBPortCBTimerExpired
	.literal .LC15, xMBRTUTimerT35Expired
	.literal .LC16, eMBState
	.align	4
	.global	eMBInit
	.type	eMBInit, @function
eMBInit:
.LFB23:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/mb.c"
	.loc 1 131 0
.LVL0:
	entry	sp, 32
.LCFI0:
	extui	a10, a3, 0, 8
	extui	a11, a4, 0, 8
.LVL1:
	.loc 1 136 0
	addi.n	a8, a10, -1
	extui	a8, a8, 0, 8
	.loc 1 135 0
	movi	a9, 0xf6
	bltu	a9, a8, .L5
	.loc 1 142 0
	l32r	a8, .LC0
	s8i	a10, a8, 0
	.loc 1 144 0
	bnez.n	a2, .L8
	.loc 1 148 0
	l32r	a8, .LC2
	l32r	a2, .LC1
.LVL2:
	s32i.n	a8, a2, 0
	.loc 1 149 0
	l32r	a8, .LC4
	l32r	a2, .LC3
	s32i.n	a8, a2, 0
	.loc 1 150 0
	l32r	a8, .LC6
	l32r	a2, .LC5
	s32i.n	a8, a2, 0
	.loc 1 151 0
	l32r	a8, .LC8
	l32r	a2, .LC7
	s32i.n	a8, a2, 0
	.loc 1 152 0
	movi.n	a8, 0
	l32r	a2, .LC9
	s32i.n	a8, a2, 0
	.loc 1 153 0
	l32r	a8, .LC11
	l32r	a2, .LC10
	s32i.n	a8, a2, 0
	.loc 1 154 0
	l32r	a8, .LC13
	l32r	a2, .LC12
	s32i.n	a8, a2, 0
	.loc 1 155 0
	l32r	a8, .LC15
	l32r	a2, .LC14
	s32i.n	a8, a2, 0
	.loc 1 157 0
	mov.n	a13, a6
	mov.n	a12, a5
	call8	eMBRTUInit
.LVL3:
	mov.n	a2, a10
.LVL4:
	.loc 1 158 0
	j	.L3
.LVL5:
.L8:
	.loc 1 175 0
	movi.n	a2, 2
.LVL6:
.L3:
	.loc 1 178 0
	bnez.n	a2, .L2
	.loc 1 180 0
	call8	xMBPortEventInit
.LVL7:
	beqz.n	a10, .L7
	.loc 1 188 0
	movi.n	a6, 1
.LVL8:
	l32r	a5, .LC16
.LVL9:
	s32i.n	a6, a5, 0
	retw.n
.LVL10:
.L5:
	.loc 1 138 0
	movi.n	a2, 2
.LVL11:
	retw.n
.LVL12:
.L7:
	.loc 1 183 0
	movi.n	a2, 3
.LVL13:
.L2:
	.loc 1 193 0
	retw.n
.LFE23:
	.size	eMBInit, .-eMBInit
	.section	.text.eMBRegisterCB,"ax",@progbits
	.literal_position
	.literal .LC17, xFuncHandlers
	.align	4
	.global	eMBRegisterCB
	.type	eMBRegisterCB, @function
eMBRegisterCB:
.LFB24:
	.loc 1 227 0
.LVL14:
	entry	sp, 32
.LCFI1:
	extui	a2, a2, 0, 8
	.loc 1 231 0
	sext	a8, a2, 7
	blti	a8, 1, .L20
	.loc 1 233 0 discriminator 15
	call8	vMBPortEnterCritical
.LVL15:
	.loc 1 234 0 discriminator 15
	bnez.n	a3, .L21
	j	.L12
.LVL16:
.L16:
	.loc 1 238 0
	l32r	a9, .LC17
	addx8	a9, a8, a9
	l32i.n	a9, a9, 4
	beqz.n	a9, .L13
	.loc 1 238 0 discriminator 1
	bne	a3, a9, .L14
.L13:
	.loc 1 241 0
	l32r	a9, .LC17
	addx8	a9, a8, a9
	s8i	a2, a9, 0
	.loc 1 242 0
	s32i.n	a3, a9, 4
	.loc 1 243 0
	j	.L15
.L14:
	.loc 1 236 0 discriminator 2
	addi.n	a8, a8, 1
.LVL17:
	j	.L11
.LVL18:
.L21:
	movi.n	a8, 0
.L11:
.LVL19:
	.loc 1 236 0 is_stmt 0 discriminator 1
	movi.n	a9, 0xf
	bge	a9, a8, .L16
.L15:
	.loc 1 246 0 is_stmt 1
	beqi	a8, 16, .L22
	movi.n	a2, 0
.LVL20:
	j	.L17
.LVL21:
.L19:
	.loc 1 252 0
	l32r	a8, .LC17
	addx8	a8, a3, a8
	l8ui	a8, a8, 0
	bne	a2, a8, .L18
	.loc 1 254 0
	l32r	a2, .LC17
	addx8	a3, a3, a2
.LVL22:
	movi.n	a2, 0
	s8i	a2, a3, 0
	.loc 1 255 0
	movi.n	a2, 0
	s32i.n	a2, a3, 4
	.loc 1 256 0
	j	.L17
.LVL23:
.L18:
	.loc 1 250 0 discriminator 2
	addi.n	a3, a3, 1
.LVL24:
.L12:
	.loc 1 250 0 is_stmt 0 discriminator 1
	movi.n	a8, 0xf
	bge	a8, a3, .L19
	.loc 1 260 0 is_stmt 1
	movi.n	a2, 0
	j	.L17
.LVL25:
.L22:
	.loc 1 246 0
	movi.n	a2, 4
.LVL26:
.L17:
	.loc 1 262 0
	call8	vMBPortExitCritical
.LVL27:
	retw.n
.LVL28:
.L20:
	.loc 1 266 0
	movi.n	a2, 2
.LVL29:
	.loc 1 269 0
	retw.n
.LFE24:
	.size	eMBRegisterCB, .-eMBRegisterCB
	.section	.text.eMBClose,"ax",@progbits
	.literal_position
	.literal .LC18, eMBState
	.literal .LC19, pvMBFrameCloseCur
	.align	4
	.global	eMBClose
	.type	eMBClose, @function
eMBClose:
.LFB25:
	.loc 1 274 0
	entry	sp, 32
.LCFI2:
.LVL30:
	.loc 1 277 0
	l32r	a8, .LC18
	l32i.n	a8, a8, 0
	bnei	a8, 1, .L25
	.loc 1 279 0
	l32r	a2, .LC19
	l32i.n	a2, a2, 0
	beqz.n	a2, .L26
	.loc 1 281 0
	callx8	a2
.LVL31:
	.loc 1 275 0
	movi.n	a2, 0
	retw.n
.L25:
	.loc 1 286 0
	movi.n	a2, 6
	retw.n
.L26:
	.loc 1 275 0
	movi.n	a2, 0
.LVL32:
	.loc 1 289 0
	retw.n
.LFE25:
	.size	eMBClose, .-eMBClose
	.section	.text.eMBEnable,"ax",@progbits
	.literal_position
	.literal .LC20, eMBState
	.literal .LC21, pvMBFrameStartCur
	.align	4
	.global	eMBEnable
	.type	eMBEnable, @function
eMBEnable:
.LFB26:
	.loc 1 293 0
	entry	sp, 32
.LCFI3:
.LVL33:
	.loc 1 296 0
	l32r	a2, .LC20
	l32i.n	a2, a2, 0
	bnei	a2, 1, .L29
	.loc 1 299 0
	l32r	a2, .LC21
	l32i.n	a2, a2, 0
	callx8	a2
.LVL34:
	.loc 1 300 0
	movi.n	a2, 0
	l32r	a8, .LC20
	s32i.n	a2, a8, 0
	retw.n
.L29:
	.loc 1 304 0
	movi.n	a2, 6
.LVL35:
	.loc 1 307 0
	retw.n
.LFE26:
	.size	eMBEnable, .-eMBEnable
	.section	.text.eMBDisable,"ax",@progbits
	.literal_position
	.literal .LC22, eMBState
	.literal .LC23, pvMBFrameStopCur
	.align	4
	.global	eMBDisable
	.type	eMBDisable, @function
eMBDisable:
.LFB27:
	.loc 1 311 0
	entry	sp, 32
.LCFI4:
	.loc 1 314 0
	l32r	a8, .LC22
	l32i.n	a8, a8, 0
	bnez.n	a8, .L31
	.loc 1 316 0
	l32r	a2, .LC23
	l32i.n	a2, a2, 0
	callx8	a2
.LVL36:
	.loc 1 317 0
	movi.n	a8, 1
	l32r	a2, .LC22
	s32i.n	a8, a2, 0
.LVL37:
	.loc 1 318 0
	movi.n	a2, 0
	retw.n
.LVL38:
.L31:
	.loc 1 320 0
	bnei	a8, 1, .L33
	.loc 1 322 0
	movi.n	a2, 0
	retw.n
.L33:
	.loc 1 326 0
	movi.n	a2, 6
.LVL39:
	.loc 1 329 0
	retw.n
.LFE27:
	.size	eMBDisable, .-eMBDisable
	.section	.text.eMBPoll,"ax",@progbits
	.literal_position
	.literal .LC24, eMBState
	.literal .LC25, peMBFrameReceiveCur
	.literal .LC26, usLength$6728
	.literal .LC27, ucMBFrame$6725
	.literal .LC28, ucRcvAddress$6726
	.literal .LC29, ucMBAddress
	.literal .LC30, ucFunctionCode$6727
	.literal .LC31, eException$6729
	.literal .LC32, xFuncHandlers
	.literal .LC33, peMBFrameSendCur
	.align	4
	.global	eMBPoll
	.type	eMBPoll, @function
eMBPoll:
.LFB28:
	.loc 1 333 0
	entry	sp, 48
.LCFI5:
.LVL40:
	.loc 1 345 0
	l32r	a8, .LC24
	l32i.n	a8, a8, 0
	bnez.n	a8, .L44
	.loc 1 352 0
	mov.n	a10, sp
	call8	xMBPortEventGet
.LVL41:
	bnei	a10, 1, .L45
	.loc 1 354 0
	l32i.n	a2, sp, 0
	beqi	a2, 1, .L36
	beqi	a2, 2, .L37
	j	.L50
.L36:
	.loc 1 360 0
	l32r	a2, .LC25
	l32i.n	a2, a2, 0
	l32r	a12, .LC26
	l32r	a11, .LC27
	l32r	a10, .LC28
	callx8	a2
.LVL42:
	.loc 1 361 0
	bnez.n	a10, .L47
	.loc 1 364 0
	l32r	a2, .LC28
	l8ui	a2, a2, 0
	l32r	a8, .LC29
	l8ui	a8, a8, 0
	beq	a2, a8, .L38
	.loc 1 364 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L48
.L38:
	.loc 1 366 0 is_stmt 1
	movi.n	a10, 2
.LVL43:
	call8	xMBPortEventPost
.LVL44:
	.loc 1 411 0
	movi.n	a2, 0
	retw.n
.LVL45:
.L37:
	.loc 1 372 0
	l32r	a2, .LC27
	l32i.n	a10, a2, 0
	l8ui	a9, a10, 0
	l32r	a2, .LC30
	s8i	a9, a2, 0
	.loc 1 373 0
	movi.n	a8, 1
	l32r	a2, .LC31
	s32i.n	a8, a2, 0
.LVL46:
	.loc 1 374 0
	movi.n	a2, 0
	j	.L39
.LVL47:
.L42:
	.loc 1 377 0
	l32r	a8, .LC32
	addx8	a8, a2, a8
	l8ui	a8, a8, 0
	beqz.n	a8, .L40
	.loc 1 381 0
	bne	a9, a8, .L41
	.loc 1 383 0
	l32r	a8, .LC32
	addx8	a2, a2, a8
.LVL48:
	l32i.n	a2, a2, 4
	l32r	a11, .LC26
	callx8	a2
.LVL49:
	l32r	a2, .LC31
	s32i.n	a10, a2, 0
	.loc 1 384 0
	j	.L40
.LVL50:
.L41:
	.loc 1 374 0 discriminator 2
	addi.n	a2, a2, 1
.LVL51:
.L39:
	.loc 1 374 0 is_stmt 0 discriminator 1
	movi.n	a8, 0xf
	bge	a8, a2, .L42
.LVL52:
.L40:
	.loc 1 390 0 is_stmt 1
	l32r	a2, .LC28
	l8ui	a2, a2, 0
	beqz.n	a2, .L49
	.loc 1 392 0
	l32r	a2, .LC31
	l32i.n	a8, a2, 0
	beqz.n	a8, .L43
	.loc 1 395 0
	l32r	a9, .LC26
	.loc 1 396 0
	l32r	a10, .LC27
	l32i.n	a11, a10, 0
	movi.n	a2, 1
	s16i	a2, a9, 0
	l32r	a2, .LC30
	l8ui	a12, a2, 0
	movi	a2, -0x80
	or	a2, a12, a2
	s8i	a2, a11, 0
	.loc 1 397 0
	l32i.n	a10, a10, 0
	l16ui	a2, a9, 0
	addi.n	a11, a2, 1
	s16i	a11, a9, 0
	add.n	a2, a10, a2
	s8i	a8, a2, 0
.L43:
	.loc 1 403 0
	l32r	a2, .LC33
	l32i.n	a2, a2, 0
	l32r	a8, .LC26
	l16ui	a12, a8, 0
	l32r	a8, .LC27
	l32i.n	a11, a8, 0
	l32r	a8, .LC29
	l8ui	a10, a8, 0
	callx8	a2
.LVL53:
	.loc 1 411 0
	movi.n	a2, 0
	retw.n
.LVL54:
.L44:
	.loc 1 347 0
	movi.n	a2, 6
	retw.n
.L45:
	.loc 1 411 0
	movi.n	a2, 0
	retw.n
.L50:
	movi.n	a2, 0
	retw.n
.LVL55:
.L47:
	movi.n	a2, 0
	retw.n
.L48:
	movi.n	a2, 0
	retw.n
.LVL56:
.L49:
	movi.n	a2, 0
	.loc 1 412 0
	retw.n
.LFE28:
	.size	eMBPoll, .-eMBPoll
	.section	.bss.eException$6729,"aw",@nobits
	.align	4
	.type	eException$6729, @object
	.size	eException$6729, 4
eException$6729:
	.zero	4
	.section	.bss.ucFunctionCode$6727,"aw",@nobits
	.type	ucFunctionCode$6727, @object
	.size	ucFunctionCode$6727, 1
ucFunctionCode$6727:
	.zero	1
	.section	.bss.usLength$6728,"aw",@nobits
	.align	2
	.type	usLength$6728, @object
	.size	usLength$6728, 2
usLength$6728:
	.zero	2
	.section	.bss.ucMBFrame$6725,"aw",@nobits
	.align	4
	.type	ucMBFrame$6725, @object
	.size	ucMBFrame$6725, 4
ucMBFrame$6725:
	.zero	4
	.section	.bss.ucRcvAddress$6726,"aw",@nobits
	.type	ucRcvAddress$6726, @object
	.size	ucRcvAddress$6726, 1
ucRcvAddress$6726:
	.zero	1
	.section	.data.xFuncHandlers,"aw",@progbits
	.align	4
	.type	xFuncHandlers, @object
	.size	xFuncHandlers, 128
xFuncHandlers:
	.byte	4
	.zero	3
	.word	eMBFuncReadInputRegister
	.byte	3
	.zero	3
	.word	eMBFuncReadHoldingRegister
	.byte	16
	.zero	3
	.word	eMBFuncWriteMultipleHoldingRegister
	.byte	6
	.zero	3
	.word	eMBFuncWriteHoldingRegister
	.byte	23
	.zero	3
	.word	eMBFuncReadWriteMultipleHoldingRegister
	.byte	1
	.zero	3
	.word	eMBFuncReadCoils
	.byte	5
	.zero	3
	.word	eMBFuncWriteCoil
	.byte	15
	.zero	3
	.word	eMBFuncWriteMultipleCoils
	.byte	2
	.zero	3
	.word	eMBFuncReadDiscreteInputs
	.zero	56
	.comm	pxMBFrameCBTransmitFSMCur,4,4
	.comm	pxMBFrameCBReceiveFSMCur,4,4
	.comm	pxMBPortCBTimerExpired,4,4
	.comm	pxMBFrameCBTransmitterEmpty,4,4
	.comm	pxMBFrameCBByteReceived,4,4
	.section	.bss.pvMBFrameCloseCur,"aw",@nobits
	.align	4
	.type	pvMBFrameCloseCur, @object
	.size	pvMBFrameCloseCur, 4
pvMBFrameCloseCur:
	.zero	4
	.section	.bss.peMBFrameReceiveCur,"aw",@nobits
	.align	4
	.type	peMBFrameReceiveCur, @object
	.size	peMBFrameReceiveCur, 4
peMBFrameReceiveCur:
	.zero	4
	.section	.bss.pvMBFrameStopCur,"aw",@nobits
	.align	4
	.type	pvMBFrameStopCur, @object
	.size	pvMBFrameStopCur, 4
pvMBFrameStopCur:
	.zero	4
	.section	.bss.pvMBFrameStartCur,"aw",@nobits
	.align	4
	.type	pvMBFrameStartCur, @object
	.size	pvMBFrameStartCur, 4
pvMBFrameStartCur:
	.zero	4
	.section	.bss.peMBFrameSendCur,"aw",@nobits
	.align	4
	.type	peMBFrameSendCur, @object
	.size	peMBFrameSendCur, 4
peMBFrameSendCur:
	.zero	4
	.section	.data.eMBState,"aw",@progbits
	.align	4
	.type	eMBState, @object
	.size	eMBState, 4
eMBState:
	.word	2
	.section	.bss.ucMBAddress,"aw",@nobits
	.type	ucMBAddress, @object
	.size	ucMBAddress, 1
ucMBAddress:
	.zero	1
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
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI4-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI5-.LFB28
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/port/port.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/include/mbport.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/include/mbproto.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/include/mb.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/include/mbframe.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/rtu/mbrtu.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x719
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0xc
	.4byte	.LASF104
	.4byte	.LASF105
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
	.uleb128 0x4
	.byte	0x4
	.4byte	0x78
	.uleb128 0x5
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x1f
	.4byte	0xb8
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x2
	.byte	0x45
	.4byte	0x79
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x2
	.byte	0x47
	.4byte	0x41
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x2
	.byte	0x4a
	.4byte	0x2c
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x2
	.byte	0x4d
	.4byte	0x6b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x29
	.4byte	0x109
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x4
	.byte	0x2e
	.4byte	0xe4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x38
	.4byte	0x133
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x4
	.byte	0x3c
	.4byte	0x114
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x3b
	.4byte	0x187
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x5
	.byte	0x46
	.4byte	0x13e
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x5
	.byte	0x48
	.4byte	0x19d
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1a3
	.uleb128 0x9
	.4byte	0x187
	.4byte	0x1b7
	.uleb128 0xa
	.4byte	0x1b7
	.uleb128 0xa
	.4byte	0x1bd
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x4
	.byte	0x4
	.4byte	0xce
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.byte	0x4a
	.4byte	0x1e4
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x5
	.byte	0x4c
	.4byte	0xc3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x5
	.byte	0x4d
	.4byte	0x192
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x5
	.byte	0x4e
	.4byte	0x1c3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x56
	.4byte	0x20e
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x6
	.byte	0x5a
	.4byte	0x1ef
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x71
	.4byte	0x256
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x6
	.byte	0x7a
	.4byte	0x219
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x7
	.byte	0x46
	.4byte	0x72
	.uleb128 0x8
	.4byte	.LASF60
	.byte	0x7
	.byte	0x48
	.4byte	0x72
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x7
	.byte	0x4a
	.4byte	0x282
	.uleb128 0x4
	.byte	0x4
	.4byte	0x288
	.uleb128 0x9
	.4byte	0x256
	.4byte	0x2a1
	.uleb128 0xa
	.4byte	0x1b7
	.uleb128 0xa
	.4byte	0x2a1
	.uleb128 0xa
	.4byte	0x1bd
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1b7
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x7
	.byte	0x4e
	.4byte	0x2b2
	.uleb128 0x4
	.byte	0x4
	.4byte	0x2b8
	.uleb128 0x9
	.4byte	0x256
	.4byte	0x2d1
	.uleb128 0xa
	.4byte	0xc3
	.uleb128 0xa
	.4byte	0x2d1
	.uleb128 0xa
	.4byte	0xce
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x2d7
	.uleb128 0xd
	.4byte	0xc3
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0x7
	.byte	0x52
	.4byte	0x72
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.byte	0x1
	.byte	0x42
	.4byte	0x306
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x1
	.byte	0x82
	.4byte	0x256
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ab
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x1
	.byte	0x82
	.4byte	0x20e
	.4byte	.LLST0
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x1
	.byte	0x82
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x1
	.byte	0x82
	.4byte	0xc3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x1
	.byte	0x82
	.4byte	0xd9
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x1
	.byte	0x82
	.4byte	0x133
	.4byte	.LLST2
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0x1
	.byte	0x84
	.4byte	0x256
	.4byte	.LLST3
	.uleb128 0x12
	.4byte	.LVL3
	.4byte	0x6da
	.4byte	0x3a1
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL7
	.4byte	0x6e5
	.byte	0
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x1
	.byte	0xe2
	.4byte	0x256
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41a
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0xe2
	.4byte	0xc3
	.4byte	.LLST4
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x1
	.byte	0xe2
	.4byte	0x192
	.4byte	.LLST5
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0xe4
	.4byte	0x33
	.4byte	.LLST6
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0x1
	.byte	0xe5
	.4byte	0x256
	.4byte	.LLST7
	.uleb128 0x16
	.4byte	.LASF106
	.4byte	0x42a
	.uleb128 0x14
	.4byte	.LVL15
	.4byte	0x6f0
	.uleb128 0x14
	.4byte	.LVL27
	.4byte	0x6fb
	.byte	0
	.uleb128 0x17
	.4byte	0x79
	.4byte	0x42a
	.uleb128 0x18
	.4byte	0x64
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.4byte	0x41a
	.uleb128 0x19
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x111
	.4byte	0x256
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x462
	.uleb128 0x1a
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x113
	.4byte	0x256
	.4byte	.LLST8
	.uleb128 0x1b
	.4byte	.LVL31
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x124
	.4byte	0x256
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x495
	.uleb128 0x1a
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x126
	.4byte	0x256
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	.LVL34
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x136
	.4byte	0x256
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c8
	.uleb128 0x1a
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x138
	.4byte	0x256
	.4byte	.LLST10
	.uleb128 0x1b
	.4byte	.LVL36
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x14c
	.4byte	0x256
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d7
	.uleb128 0x1c
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x14e
	.4byte	0x1b7
	.uleb128 0x5
	.byte	0x3
	.4byte	ucMBFrame$6725
	.uleb128 0x1c
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x14f
	.4byte	0xc3
	.uleb128 0x5
	.byte	0x3
	.4byte	ucRcvAddress$6726
	.uleb128 0x1c
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x150
	.4byte	0xc3
	.uleb128 0x5
	.byte	0x3
	.4byte	ucFunctionCode$6727
	.uleb128 0x1c
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x151
	.4byte	0xce
	.uleb128 0x5
	.byte	0x3
	.4byte	usLength$6728
	.uleb128 0x1c
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x152
	.4byte	0x187
	.uleb128 0x5
	.byte	0x3
	.4byte	eException$6729
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x154
	.4byte	0x33
	.4byte	.LLST11
	.uleb128 0x1a
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x155
	.4byte	0x256
	.4byte	.LLST12
	.uleb128 0x1c
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x156
	.4byte	0x109
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.4byte	.LVL41
	.4byte	0x706
	.4byte	0x57d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL42
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x5a5
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	ucRcvAddress$6726
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	ucMBFrame$6725
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	usLength$6728
	.byte	0
	.uleb128 0x12
	.4byte	.LVL44
	.4byte	0x711
	.4byte	0x5b8
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL49
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x5ce
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	usLength$6728
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL53
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF84
	.byte	0x1
	.byte	0x3e
	.4byte	0xc3
	.uleb128 0x5
	.byte	0x3
	.4byte	ucMBAddress
	.uleb128 0x20
	.4byte	.LASF107
	.byte	0x1
	.byte	0x3f
	.4byte	0x20e
	.uleb128 0x1f
	.4byte	.LASF85
	.byte	0x1
	.byte	0x46
	.4byte	0x2e7
	.uleb128 0x5
	.byte	0x3
	.4byte	eMBState
	.uleb128 0x1f
	.4byte	.LASF86
	.byte	0x1
	.byte	0x4b
	.4byte	0x2a7
	.uleb128 0x5
	.byte	0x3
	.4byte	peMBFrameSendCur
	.uleb128 0x1f
	.4byte	.LASF87
	.byte	0x1
	.byte	0x4c
	.4byte	0x261
	.uleb128 0x5
	.byte	0x3
	.4byte	pvMBFrameStartCur
	.uleb128 0x1f
	.4byte	.LASF88
	.byte	0x1
	.byte	0x4d
	.4byte	0x26c
	.uleb128 0x5
	.byte	0x3
	.4byte	pvMBFrameStopCur
	.uleb128 0x1f
	.4byte	.LASF89
	.byte	0x1
	.byte	0x4e
	.4byte	0x277
	.uleb128 0x5
	.byte	0x3
	.4byte	peMBFrameReceiveCur
	.uleb128 0x1f
	.4byte	.LASF90
	.byte	0x1
	.byte	0x4f
	.4byte	0x2dc
	.uleb128 0x5
	.byte	0x3
	.4byte	pvMBFrameCloseCur
	.uleb128 0x17
	.4byte	0x1e4
	.4byte	0x669
	.uleb128 0x18
	.4byte	0x64
	.byte	0xf
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF91
	.byte	0x1
	.byte	0x5f
	.4byte	0x659
	.uleb128 0x5
	.byte	0x3
	.4byte	xFuncHandlers
	.uleb128 0x21
	.4byte	0xb8
	.uleb128 0x22
	.4byte	.LASF92
	.byte	0x1
	.byte	0x55
	.4byte	0x690
	.uleb128 0x5
	.byte	0x3
	.4byte	pxMBFrameCBByteReceived
	.uleb128 0x4
	.byte	0x4
	.4byte	0x67a
	.uleb128 0x22
	.4byte	.LASF93
	.byte	0x1
	.byte	0x56
	.4byte	0x690
	.uleb128 0x5
	.byte	0x3
	.4byte	pxMBFrameCBTransmitterEmpty
	.uleb128 0x22
	.4byte	.LASF94
	.byte	0x1
	.byte	0x57
	.4byte	0x690
	.uleb128 0x5
	.byte	0x3
	.4byte	pxMBPortCBTimerExpired
	.uleb128 0x22
	.4byte	.LASF95
	.byte	0x1
	.byte	0x59
	.4byte	0x690
	.uleb128 0x5
	.byte	0x3
	.4byte	pxMBFrameCBReceiveFSMCur
	.uleb128 0x22
	.4byte	.LASF96
	.byte	0x1
	.byte	0x5a
	.4byte	0x690
	.uleb128 0x5
	.byte	0x3
	.4byte	pxMBFrameCBTransmitFSMCur
	.uleb128 0x23
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x8
	.byte	0x25
	.uleb128 0x23
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x4
	.byte	0x3f
	.uleb128 0x23
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x2
	.byte	0x5a
	.uleb128 0x23
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x2
	.byte	0x5c
	.uleb128 0x23
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x4
	.byte	0x43
	.uleb128 0x23
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x4
	.byte	0x41
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1a
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
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
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
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
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LFE28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
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
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"MB_EX_ILLEGAL_FUNCTION"
.LASF12:
	.string	"ESP_LOG_NONE"
.LASF18:
	.string	"BOOL"
.LASF93:
	.string	"pxMBFrameCBTransmitterEmpty"
.LASF79:
	.string	"ucMBFrame"
.LASF48:
	.string	"MB_TCP"
.LASF78:
	.string	"eMBPoll"
.LASF43:
	.string	"ucFunctionCode"
.LASF20:
	.string	"USHORT"
.LASF4:
	.string	"short int"
.LASF90:
	.string	"pvMBFrameCloseCur"
.LASF31:
	.string	"MB_EX_NONE"
.LASF8:
	.string	"sizetype"
.LASF47:
	.string	"MB_ASCII"
.LASF101:
	.string	"xMBPortEventGet"
.LASF49:
	.string	"eMBMode"
.LASF76:
	.string	"eMBEnable"
.LASF36:
	.string	"MB_EX_ACKNOWLEDGE"
.LASF92:
	.string	"pxMBFrameCBByteReceived"
.LASF22:
	.string	"EV_READY"
.LASF40:
	.string	"MB_EX_GATEWAY_TGT_FAILED"
.LASF68:
	.string	"ucSlaveAddress"
.LASF84:
	.string	"ucMBAddress"
.LASF54:
	.string	"MB_ENORES"
.LASF34:
	.string	"MB_EX_ILLEGAL_DATA_VALUE"
.LASF33:
	.string	"MB_EX_ILLEGAL_DATA_ADDRESS"
.LASF23:
	.string	"EV_FRAME_RECEIVED"
.LASF63:
	.string	"pvMBFrameClose"
.LASF61:
	.string	"peMBFrameReceive"
.LASF64:
	.string	"STATE_ENABLED"
.LASF77:
	.string	"eMBDisable"
.LASF100:
	.string	"vMBPortExitCritical"
.LASF60:
	.string	"pvMBFrameStop"
.LASF51:
	.string	"MB_ENOREG"
.LASF27:
	.string	"MB_PAR_NONE"
.LASF5:
	.string	"long long int"
.LASF71:
	.string	"eParity"
.LASF59:
	.string	"pvMBFrameStart"
.LASF91:
	.string	"xFuncHandlers"
.LASF7:
	.string	"long int"
.LASF74:
	.string	"eStatus"
.LASF99:
	.string	"vMBPortEnterCritical"
.LASF15:
	.string	"ESP_LOG_INFO"
.LASF104:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freemodbus/modbus/mb.c"
.LASF41:
	.string	"eMBException"
.LASF95:
	.string	"pxMBFrameCBReceiveFSMCur"
.LASF80:
	.string	"ucRcvAddress"
.LASF73:
	.string	"eMBRegisterCB"
.LASF29:
	.string	"MB_PAR_EVEN"
.LASF53:
	.string	"MB_EPORTERR"
.LASF3:
	.string	"unsigned char"
.LASF37:
	.string	"MB_EX_SLAVE_BUSY"
.LASF106:
	.string	"__func__"
.LASF105:
	.string	"/home/raphael/rtone/lcd/build/freemodbus"
.LASF50:
	.string	"MB_ENOERR"
.LASF21:
	.string	"ULONG"
.LASF2:
	.string	"signed char"
.LASF69:
	.string	"ucPort"
.LASF6:
	.string	"long long unsigned int"
.LASF25:
	.string	"EV_FRAME_SENT"
.LASF56:
	.string	"MB_EILLSTATE"
.LASF83:
	.string	"eEvent"
.LASF0:
	.string	"unsigned int"
.LASF19:
	.string	"UCHAR"
.LASF87:
	.string	"pvMBFrameStartCur"
.LASF70:
	.string	"ulBaudRate"
.LASF94:
	.string	"pxMBPortCBTimerExpired"
.LASF86:
	.string	"peMBFrameSendCur"
.LASF98:
	.string	"xMBPortEventInit"
.LASF42:
	.string	"pxMBFunctionHandler"
.LASF1:
	.string	"short unsigned int"
.LASF72:
	.string	"eMBInit"
.LASF62:
	.string	"peMBFrameSend"
.LASF10:
	.string	"char"
.LASF89:
	.string	"peMBFrameReceiveCur"
.LASF26:
	.string	"eMBEventType"
.LASF52:
	.string	"MB_EINVAL"
.LASF97:
	.string	"eMBRTUInit"
.LASF58:
	.string	"eMBErrorCode"
.LASF67:
	.string	"eMode"
.LASF39:
	.string	"MB_EX_GATEWAY_PATH_FAILED"
.LASF11:
	.string	"_Bool"
.LASF44:
	.string	"pxHandler"
.LASF45:
	.string	"xMBFunctionHandler"
.LASF16:
	.string	"ESP_LOG_DEBUG"
.LASF88:
	.string	"pvMBFrameStopCur"
.LASF14:
	.string	"ESP_LOG_WARN"
.LASF9:
	.string	"long unsigned int"
.LASF81:
	.string	"usLength"
.LASF85:
	.string	"eMBState"
.LASF28:
	.string	"MB_PAR_ODD"
.LASF82:
	.string	"eException"
.LASF17:
	.string	"ESP_LOG_VERBOSE"
.LASF30:
	.string	"eMBParity"
.LASF46:
	.string	"MB_RTU"
.LASF65:
	.string	"STATE_DISABLED"
.LASF66:
	.string	"STATE_NOT_INITIALIZED"
.LASF38:
	.string	"MB_EX_MEMORY_PARITY_ERROR"
.LASF55:
	.string	"MB_EIO"
.LASF35:
	.string	"MB_EX_SLAVE_DEVICE_FAILURE"
.LASF107:
	.string	"eMBCurrentMode"
.LASF103:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF24:
	.string	"EV_EXECUTE"
.LASF75:
	.string	"eMBClose"
.LASF102:
	.string	"xMBPortEventPost"
.LASF13:
	.string	"ESP_LOG_ERROR"
.LASF57:
	.string	"MB_ETIMEDOUT"
.LASF96:
	.string	"pxMBFrameCBTransmitFSMCur"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
