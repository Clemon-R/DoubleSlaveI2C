	.file	"slipif.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"netif != NULL"
	.align	4
.LC3:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/netif/slipif.c"
	.align	4
.LC5:
	.string	"netif->state != NULL"
	.section	.text.slipif_rxbyte,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$6214
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.align	4
	.type	slipif_rxbyte, @function
slipif_rxbyte:
.LFB23:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/netif/slipif.c"
	.loc 1 208 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 212 0
	bnez.n	a2, .L2
	.loc 1 212 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi	a11, 0xd4
	l32r	a10, .LC4
	call8	__assert_func
.LVL1:
.L2:
	.loc 1 213 0
	l32i	a4, a2, 148
	bnez.n	a4, .L3
	.loc 1 213 0 discriminator 1
	l32r	a13, .LC6
	l32r	a12, .LC2
	movi	a11, 0xd5
	l32r	a10, .LC4
	call8	__assert_func
.LVL2:
.L3:
	.loc 1 217 0
	l8ui	a2, a4, 12
.LVL3:
	beqz.n	a2, .L5
	beqi	a2, 1, .L6
	j	.L4
.L5:
	.loc 1 219 0
	movi	a2, 0xc0
	beq	a3, a2, .L7
	movi	a2, 0xdb
	beq	a3, a2, .L8
	j	.L4
.L7:
	.loc 1 221 0
	l16ui	a11, a4, 16
	beqz.n	a11, .L16
	.loc 1 224 0
	l32i.n	a10, a4, 8
	call8	pbuf_realloc
.LVL4:
	.loc 1 229 0
	l32i.n	a2, a4, 8
.LVL5:
	.loc 1 230 0
	movi.n	a3, 0
.LVL6:
	s32i.n	a3, a4, 8
	s32i.n	a3, a4, 4
	.loc 1 231 0
	s16i	a3, a4, 16
	s16i	a3, a4, 14
	.loc 1 232 0
	retw.n
.LVL7:
.L8:
	.loc 1 236 0
	movi.n	a2, 1
	s8i	a2, a4, 12
	.loc 1 237 0
	movi.n	a2, 0
	retw.n
.L6:
	.loc 1 245 0
	movi	a2, 0xdc
	beq	a3, a2, .L17
	movi	a2, 0xdd
	bne	a3, a2, .L11
.LVL8:
	.loc 1 250 0
	movi	a3, 0xdb
	.loc 1 251 0
	j	.L11
.LVL9:
.L17:
	.loc 1 247 0
	movi	a3, 0xc0
.LVL10:
.L11:
	.loc 1 255 0
	movi.n	a2, 0
	s8i	a2, a4, 12
.LVL11:
.L4:
	.loc 1 262 0
	l32i.n	a2, a4, 4
	bnez.n	a2, .L13
	.loc 1 265 0
	movi.n	a12, 3
	movi	a11, 0x5c6
	movi.n	a10, 2
	call8	pbuf_alloc
.LVL12:
	mov.n	a2, a10
	s32i.n	a10, a4, 4
	.loc 1 267 0
	beqz.n	a10, .L9
	.loc 1 274 0
	l32i.n	a10, a4, 8
	beqz.n	a10, .L14
	.loc 1 276 0
	mov.n	a11, a2
	call8	pbuf_cat
.LVL13:
	j	.L13
.L14:
	.loc 1 279 0
	s32i.n	a2, a4, 8
.L13:
	.loc 1 284 0
	l32i.n	a2, a4, 4
	beqz.n	a2, .L9
	.loc 1 284 0 discriminator 1
	l16ui	a8, a4, 16
	movi	a9, 0x5dc
	bltu	a9, a8, .L18
	.loc 1 285 0
	l32i.n	a8, a2, 4
	l16ui	a2, a4, 14
	add.n	a2, a8, a2
	s8i	a3, a2, 0
	.loc 1 286 0
	l16ui	a2, a4, 16
	addi.n	a2, a2, 1
	s16i	a2, a4, 16
	.loc 1 287 0
	l16ui	a2, a4, 14
	addi.n	a2, a2, 1
	extui	a2, a2, 0, 16
	s16i	a2, a4, 14
	.loc 1 288 0
	l32i.n	a3, a4, 4
.LVL14:
	l16ui	a8, a3, 10
	bltu	a2, a8, .L19
	.loc 1 290 0
	movi.n	a2, 0
	s16i	a2, a4, 14
	.loc 1 291 0
	l32i.n	a2, a3, 0
	beqz.n	a2, .L15
	.loc 1 291 0 discriminator 1
	l16ui	a3, a2, 10
	beqz.n	a3, .L15
	.loc 1 293 0
	s32i.n	a2, a4, 4
	.loc 1 301 0
	movi.n	a2, 0
	.loc 1 293 0
	retw.n
.L15:
	.loc 1 297 0
	movi.n	a2, 0
	s32i.n	a2, a4, 4
	retw.n
.LVL15:
.L16:
	.loc 1 234 0
	movi.n	a2, 0
	retw.n
.L18:
	.loc 1 301 0
	movi.n	a2, 0
	retw.n
.LVL16:
.L19:
	movi.n	a2, 0
.L9:
	.loc 1 302 0
	retw.n
.LFE23:
	.size	slipif_rxbyte, .-slipif_rxbyte
	.section	.text.slipif_rxbyte_input,"ax",@progbits
	.align	4
	.type	slipif_rxbyte_input, @function
slipif_rxbyte_input:
.LFB24:
	.loc 1 311 0
.LVL17:
	entry	sp, 32
.LCFI1:
	.loc 1 313 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	slipif_rxbyte
.LVL18:
	mov.n	a3, a10
.LVL19:
	.loc 1 314 0
	beqz.n	a10, .L20
	.loc 1 315 0
	l32i	a8, a2, 132
	mov.n	a11, a2
	callx8	a8
.LVL20:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L20
	.loc 1 316 0
	mov.n	a10, a3
	call8	pbuf_free
.LVL21:
.L20:
	retw.n
.LFE24:
	.size	slipif_rxbyte_input, .-slipif_rxbyte_input
	.section	.text.slipif_loop_thread,"ax",@progbits
	.align	4
	.type	slipif_loop_thread, @function
slipif_loop_thread:
.LFB25:
	.loc 1 331 0
.LVL22:
	entry	sp, 48
.LCFI2:
.LVL23:
	.loc 1 334 0
	l32i	a3, a2, 148
.LVL24:
.L23:
	.loc 1 337 0
	movi.n	a12, 1
	mov.n	a11, sp
	l32i.n	a10, a3, 0
	call8	sio_read
.LVL25:
	beqz.n	a10, .L23
	.loc 1 338 0
	l8ui	a11, sp, 0
	mov.n	a10, a2
	call8	slipif_rxbyte_input
.LVL26:
	j	.L23
.LFE25:
	.size	slipif_loop_thread, .-slipif_loop_thread
	.section	.rodata.str1.4
	.align	4
.LC11:
	.string	"p != NULL"
	.section	.text.slipif_output,"ax",@progbits
	.literal_position
	.literal .LC7, .LC0
	.literal .LC8, __func__$6186
	.literal .LC9, .LC3
	.literal .LC10, .LC5
	.literal .LC12, .LC11
	.align	4
	.type	slipif_output, @function
slipif_output:
.LFB20:
	.loc 1 117 0
.LVL27:
	entry	sp, 32
.LCFI3:
	.loc 1 123 0
	bnez.n	a2, .L26
	.loc 1 123 0 discriminator 1
	l32r	a13, .LC7
	l32r	a12, .LC8
	movi	a11, 0x7b
	l32r	a10, .LC9
	call8	__assert_func
.LVL28:
.L26:
	.loc 1 124 0
	l32i	a4, a2, 148
	bnez.n	a4, .L27
	.loc 1 124 0 discriminator 1
	l32r	a13, .LC10
	l32r	a12, .LC8
	movi	a11, 0x7c
	l32r	a10, .LC9
	call8	__assert_func
.LVL29:
.L27:
	.loc 1 125 0
	bnez.n	a3, .L28
	.loc 1 125 0 discriminator 1
	l32r	a13, .LC12
	l32r	a12, .LC8
	movi	a11, 0x7d
	l32r	a10, .LC9
	call8	__assert_func
.LVL30:
.L28:
	.loc 1 132 0
	l32i.n	a11, a4, 0
	movi	a10, 0xc0
	call8	sio_send
.LVL31:
	.loc 1 134 0
	j	.L29
.LVL32:
.L34:
	.loc 1 136 0
	l32i.n	a8, a3, 4
	add.n	a8, a8, a2
	l8ui	a10, a8, 0
.LVL33:
	.loc 1 137 0
	movi	a8, 0xc0
.LVL34:
	beq	a10, a8, .L31
	movi	a8, 0xdb
	beq	a10, a8, .L32
	j	.L37
.L31:
	.loc 1 140 0
	l32i.n	a11, a4, 0
	movi	a10, 0xdb
	call8	sio_send
.LVL35:
	.loc 1 141 0
	l32i.n	a11, a4, 0
	movi	a10, 0xdc
	call8	sio_send
.LVL36:
	.loc 1 142 0
	j	.L33
.LVL37:
.L32:
	.loc 1 145 0
	l32i.n	a11, a4, 0
	movi	a10, 0xdb
	call8	sio_send
.LVL38:
	.loc 1 146 0
	l32i.n	a11, a4, 0
	movi	a10, 0xdd
	call8	sio_send
.LVL39:
	.loc 1 147 0
	j	.L33
.LVL40:
.L37:
	.loc 1 150 0
	l32i.n	a11, a4, 0
	call8	sio_send
.LVL41:
.L33:
	.loc 1 135 0 discriminator 2
	addi.n	a2, a2, 1
.LVL42:
	extui	a2, a2, 0, 16
.LVL43:
	j	.L35
.LVL44:
.L36:
	movi.n	a2, 0
.L35:
.LVL45:
	.loc 1 135 0 is_stmt 0 discriminator 1
	l16ui	a8, a3, 10
	bltu	a2, a8, .L34
	.loc 1 134 0 is_stmt 1 discriminator 2
	l32i.n	a3, a3, 0
.LVL46:
.L29:
	.loc 1 134 0 discriminator 1
	bnez.n	a3, .L36
	.loc 1 156 0
	l32i.n	a11, a4, 0
	movi	a10, 0xc0
	call8	sio_send
.LVL47:
	.loc 1 158 0
	movi.n	a2, 0
	retw.n
.LFE20:
	.size	slipif_output, .-slipif_output
	.section	.text.slipif_output_v6,"ax",@progbits
	.align	4
	.type	slipif_output_v6, @function
slipif_output_v6:
.LFB22:
	.loc 1 192 0
.LVL48:
	entry	sp, 32
.LCFI4:
	.loc 1 194 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	slipif_output
.LVL49:
	.loc 1 195 0
	extui	a2, a10, 0, 8
.LVL50:
	retw.n
.LFE22:
	.size	slipif_output_v6, .-slipif_output_v6
	.section	.text.slipif_output_v4,"ax",@progbits
	.align	4
	.type	slipif_output_v4, @function
slipif_output_v4:
.LFB21:
	.loc 1 173 0
.LVL51:
	entry	sp, 32
.LCFI5:
	.loc 1 175 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	slipif_output
.LVL52:
	.loc 1 176 0
	extui	a2, a10, 0, 8
.LVL53:
	retw.n
.LFE21:
	.size	slipif_output_v4, .-slipif_output_v4
	.section	.rodata.str1.4
	.align	4
.LC16:
	.string	"slipif_loop"
	.section	.text.slipif_init,"ax",@progbits
	.literal_position
	.literal .LC13, slipif_output_v4
	.literal .LC14, slipif_output_v6
	.literal .LC15, slipif_loop_thread
	.literal .LC17, .LC16
	.align	4
	.global	slipif_init
	.type	slipif_init, @function
slipif_init:
.LFB26:
	.loc 1 362 0
.LVL54:
	entry	sp, 32
.LCFI6:
	.loc 1 369 0
	movi.n	a10, 0x14
	call8	mem_malloc
.LVL55:
	mov.n	a4, a10
.LVL56:
	.loc 1 370 0
	beqz.n	a10, .L45
	.loc 1 374 0
	movi	a3, 0x73
	s8i	a3, a2, 190
	.loc 1 375 0
	movi	a3, 0x6c
	s8i	a3, a2, 191
	.loc 1 377 0
	l32r	a3, .LC13
	s32i	a3, a2, 136
	.loc 1 380 0
	l32r	a3, .LC14
	s32i	a3, a2, 144
	.loc 1 382 0
	movi	a3, 0x5dc
	s16i	a3, a2, 180
	.loc 1 385 0
	l32i	a3, a2, 148
	beqz.n	a3, .L42
	.loc 1 386 0
	l8ui	a10, a3, 0
.LVL57:
	j	.L43
.LVL58:
.L42:
	.loc 1 388 0
	l8ui	a10, a2, 192
.LVL59:
.L43:
	.loc 1 391 0
	call8	sio_open
.LVL60:
	s32i.n	a10, a4, 0
	.loc 1 392 0
	bnez.n	a10, .L44
	.loc 1 394 0
	mov.n	a10, a4
	call8	mem_free
.LVL61:
	.loc 1 395 0
	movi	a2, 0xf4
.LVL62:
	retw.n
.LVL63:
.L44:
	.loc 1 399 0
	movi.n	a3, 0
	s32i.n	a3, a4, 4
	.loc 1 400 0
	s32i.n	a3, a4, 8
	.loc 1 401 0
	s8i	a3, a4, 12
	.loc 1 402 0
	s16i	a3, a4, 14
	.loc 1 403 0
	s16i	a3, a4, 16
	.loc 1 408 0
	s32i	a4, a2, 148
	.loc 1 415 0
	movi.n	a14, 1
	mov.n	a13, a3
	mov.n	a12, a2
	l32r	a11, .LC15
	l32r	a10, .LC17
	call8	sys_thread_new
.LVL64:
	.loc 1 418 0
	mov.n	a2, a3
.LVL65:
	retw.n
.LVL66:
.L45:
	.loc 1 371 0
	movi	a2, 0xff
.LVL67:
	.loc 1 419 0
	retw.n
.LFE26:
	.size	slipif_init, .-slipif_init
	.section	.text.slipif_poll,"ax",@progbits
	.literal_position
	.literal .LC18, .LC0
	.literal .LC19, __func__$6253
	.literal .LC20, .LC3
	.literal .LC21, .LC5
	.align	4
	.global	slipif_poll
	.type	slipif_poll, @function
slipif_poll:
.LFB27:
	.loc 1 428 0
.LVL68:
	entry	sp, 48
.LCFI7:
	.loc 1 432 0
	bnez.n	a2, .L47
	.loc 1 432 0 discriminator 1
	l32r	a13, .LC18
	l32r	a12, .LC19
	movi	a11, 0x1b0
	l32r	a10, .LC20
	call8	__assert_func
.LVL69:
.L47:
	.loc 1 433 0
	l32i	a3, a2, 148
	bnez.n	a3, .L48
	.loc 1 433 0 discriminator 1
	l32r	a13, .LC21
	l32r	a12, .LC19
	movi	a11, 0x1b1
	l32r	a10, .LC20
	call8	__assert_func
.LVL70:
.L49:
	.loc 1 438 0
	l8ui	a11, sp, 0
	mov.n	a10, a2
	call8	slipif_rxbyte_input
.LVL71:
.L48:
	.loc 1 437 0
	movi.n	a12, 1
	mov.n	a11, sp
	l32i.n	a10, a3, 0
	call8	sio_tryread
.LVL72:
	bnez.n	a10, .L49
	.loc 1 440 0
	retw.n
.LFE27:
	.size	slipif_poll, .-slipif_poll
	.section	.rodata.__func__$6253,"a",@progbits
	.align	4
	.type	__func__$6253, @object
	.size	__func__$6253, 12
__func__$6253:
	.string	"slipif_poll"
	.section	.rodata.__func__$6186,"a",@progbits
	.align	4
	.type	__func__$6186, @object
	.size	__func__$6186, 14
__func__$6186:
	.string	"slipif_output"
	.section	.rodata.__func__$6214,"a",@progbits
	.align	4
	.type	__func__$6214, @object
	.size	__func__$6214, 14
__func__$6214:
	.string	"slipif_rxbyte"
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
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI3-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI4-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI5-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI6-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI7-.LFB27
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/err.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/pbuf.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/sio.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/mem.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd08
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0xc
	.4byte	.LASF128
	.4byte	.LASF129
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
	.4byte	.LASF3
	.byte	0x2
	.byte	0x11
	.4byte	0x45
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x12
	.4byte	0x57
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x15
	.4byte	0x69
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbf
	.uleb128 0x8
	.4byte	0xb2
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x14
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x20
	.4byte	0x5e
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x21
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x101
	.uleb128 0x9
	.4byte	0x10c
	.uleb128 0xa
	.4byte	0xa2
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0xb
	.4byte	0xa2
	.4byte	0x123
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0x39
	.4byte	0xc4
	.uleb128 0xd
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.byte	0x3d
	.4byte	0x1a1
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0
	.uleb128 0xf
	.4byte	.LASF24
	.sleb128 -1
	.uleb128 0xf
	.4byte	.LASF25
	.sleb128 -2
	.uleb128 0xf
	.4byte	.LASF26
	.sleb128 -3
	.uleb128 0xf
	.4byte	.LASF27
	.sleb128 -4
	.uleb128 0xf
	.4byte	.LASF28
	.sleb128 -5
	.uleb128 0xf
	.4byte	.LASF29
	.sleb128 -6
	.uleb128 0xf
	.4byte	.LASF30
	.sleb128 -7
	.uleb128 0xf
	.4byte	.LASF31
	.sleb128 -8
	.uleb128 0xf
	.4byte	.LASF32
	.sleb128 -9
	.uleb128 0xf
	.4byte	.LASF33
	.sleb128 -10
	.uleb128 0xf
	.4byte	.LASF34
	.sleb128 -11
	.uleb128 0xf
	.4byte	.LASF35
	.sleb128 -12
	.uleb128 0xf
	.4byte	.LASF36
	.sleb128 -13
	.uleb128 0xf
	.4byte	.LASF37
	.sleb128 -14
	.uleb128 0xf
	.4byte	.LASF38
	.sleb128 -15
	.uleb128 0xf
	.4byte	.LASF39
	.sleb128 -16
	.byte	0
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x4
	.byte	0x5
	.byte	0x33
	.4byte	0x1ba
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x5
	.byte	0x34
	.4byte	0xf0
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x5
	.byte	0x39
	.4byte	0x1a1
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x10
	.byte	0x6
	.byte	0x3a
	.4byte	0x1de
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x6
	.byte	0x3b
	.4byte	0x1de
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xf0
	.4byte	0x1ee
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x6
	.byte	0x3f
	.4byte	0x1c5
	.uleb128 0x12
	.byte	0x10
	.byte	0x7
	.byte	0x46
	.4byte	0x218
	.uleb128 0x13
	.string	"ip6"
	.byte	0x7
	.byte	0x47
	.4byte	0x1ee
	.uleb128 0x13
	.string	"ip4"
	.byte	0x7
	.byte	0x48
	.4byte	0x1ba
	.byte	0
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x14
	.byte	0x7
	.byte	0x45
	.4byte	0x23d
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x7
	.byte	0x49
	.4byte	0x1f9
	.byte	0
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x7
	.byte	0x4b
	.4byte	0xcf
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x7
	.byte	0x4c
	.4byte	0x218
	.uleb128 0xd
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0x48
	.4byte	0x273
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0x65
	.4byte	0x298
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x18
	.byte	0x8
	.byte	0x8e
	.4byte	0x311
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x8
	.byte	0x90
	.4byte	0x311
	.byte	0
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x8
	.byte	0x93
	.4byte	0xa2
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x8
	.byte	0x9c
	.4byte	0xe5
	.byte	0x8
	.uleb128 0x14
	.string	"len"
	.byte	0x8
	.byte	0x9f
	.4byte	0xe5
	.byte	0xa
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x8
	.byte	0xa2
	.4byte	0xcf
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x8
	.byte	0xa5
	.4byte	0xcf
	.byte	0xd
	.uleb128 0x14
	.string	"ref"
	.byte	0x8
	.byte	0xac
	.4byte	0xe5
	.byte	0xe
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x8
	.byte	0xaf
	.4byte	0x4af
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x8
	.byte	0xb0
	.4byte	0xa2
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x298
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0xf0
	.byte	0x9
	.byte	0xeb
	.4byte	0x4af
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x9
	.byte	0xed
	.4byte	0x4af
	.byte	0
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x9
	.byte	0xf1
	.4byte	0x23d
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x9
	.byte	0xf2
	.4byte	0x23d
	.byte	0x18
	.uleb128 0x14
	.string	"gw"
	.byte	0x9
	.byte	0xf3
	.4byte	0x23d
	.byte	0x2c
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x9
	.byte	0xf7
	.4byte	0x5e5
	.byte	0x40
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x9
	.byte	0xfa
	.4byte	0x5f5
	.byte	0x7c
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x9
	.byte	0xfc
	.4byte	0x615
	.byte	0x80
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x9
	.2byte	0x102
	.4byte	0x4d2
	.byte	0x84
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x9
	.2byte	0x108
	.4byte	0x4f7
	.byte	0x88
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x9
	.2byte	0x10d
	.4byte	0x561
	.byte	0x8c
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x9
	.2byte	0x113
	.4byte	0x52c
	.byte	0x90
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x9
	.2byte	0x125
	.4byte	0xa2
	.byte	0x94
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x9
	.2byte	0x127
	.4byte	0x113
	.byte	0x98
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x9
	.2byte	0x12b
	.4byte	0x620
	.byte	0xa4
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x9
	.2byte	0x12c
	.4byte	0x5da
	.byte	0xa8
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x9
	.2byte	0x131
	.4byte	0xcf
	.byte	0xac
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x9
	.2byte	0x135
	.4byte	0xcf
	.byte	0xad
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x9
	.2byte	0x139
	.4byte	0xb9
	.byte	0xb0
	.uleb128 0x16
	.string	"mtu"
	.byte	0x9
	.2byte	0x13f
	.4byte	0xe5
	.byte	0xb4
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x9
	.2byte	0x141
	.4byte	0xcf
	.byte	0xb6
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x9
	.2byte	0x143
	.4byte	0x626
	.byte	0xb7
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x9
	.2byte	0x145
	.4byte	0xcf
	.byte	0xbd
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x9
	.2byte	0x147
	.4byte	0x636
	.byte	0xbe
	.uleb128 0x16
	.string	"num"
	.byte	0x9
	.2byte	0x149
	.4byte	0xcf
	.byte	0xc0
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x9
	.2byte	0x157
	.4byte	0x586
	.byte	0xc4
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x9
	.2byte	0x15c
	.4byte	0x5b0
	.byte	0xc8
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x9
	.2byte	0x163
	.4byte	0x311
	.byte	0xcc
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x9
	.2byte	0x164
	.4byte	0x311
	.byte	0xd0
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x9
	.2byte	0x166
	.4byte	0xe5
	.byte	0xd4
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x9
	.2byte	0x16b
	.4byte	0xfb
	.byte	0xd8
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0x9
	.2byte	0x16c
	.4byte	0x23d
	.byte	0xdc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x317
	.uleb128 0x17
	.4byte	.LASF100
	.byte	0x4
	.4byte	0x25
	.byte	0x9
	.byte	0x94
	.4byte	0x4d2
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF92
	.byte	0x9
	.byte	0xa7
	.4byte	0x4dd
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4e3
	.uleb128 0x18
	.4byte	0x123
	.4byte	0x4f7
	.uleb128 0xa
	.4byte	0x311
	.uleb128 0xa
	.4byte	0x4af
	.byte	0
	.uleb128 0x4
	.4byte	.LASF93
	.byte	0x9
	.byte	0xb2
	.4byte	0x502
	.uleb128 0x6
	.byte	0x4
	.4byte	0x508
	.uleb128 0x18
	.4byte	0x123
	.4byte	0x521
	.uleb128 0xa
	.4byte	0x4af
	.uleb128 0xa
	.4byte	0x311
	.uleb128 0xa
	.4byte	0x521
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x527
	.uleb128 0x8
	.4byte	0x1ba
	.uleb128 0x4
	.4byte	.LASF94
	.byte	0x9
	.byte	0xbf
	.4byte	0x537
	.uleb128 0x6
	.byte	0x4
	.4byte	0x53d
	.uleb128 0x18
	.4byte	0x123
	.4byte	0x556
	.uleb128 0xa
	.4byte	0x4af
	.uleb128 0xa
	.4byte	0x311
	.uleb128 0xa
	.4byte	0x556
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x55c
	.uleb128 0x8
	.4byte	0x1ee
	.uleb128 0x4
	.4byte	.LASF95
	.byte	0x9
	.byte	0xc9
	.4byte	0x56c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x572
	.uleb128 0x18
	.4byte	0x123
	.4byte	0x586
	.uleb128 0xa
	.4byte	0x4af
	.uleb128 0xa
	.4byte	0x311
	.byte	0
	.uleb128 0x4
	.4byte	.LASF96
	.byte	0x9
	.byte	0xce
	.4byte	0x591
	.uleb128 0x6
	.byte	0x4
	.4byte	0x597
	.uleb128 0x18
	.4byte	0x123
	.4byte	0x5b0
	.uleb128 0xa
	.4byte	0x4af
	.uleb128 0xa
	.4byte	0x521
	.uleb128 0xa
	.4byte	0x4b5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF97
	.byte	0x9
	.byte	0xd3
	.4byte	0x5bb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5c1
	.uleb128 0x18
	.4byte	0x123
	.4byte	0x5da
	.uleb128 0xa
	.4byte	0x4af
	.uleb128 0xa
	.4byte	0x556
	.uleb128 0xa
	.4byte	0x4b5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF98
	.byte	0x9
	.byte	0xe5
	.4byte	0xab
	.uleb128 0xb
	.4byte	0x23d
	.4byte	0x5f5
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0xcf
	.4byte	0x605
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x615
	.uleb128 0xa
	.4byte	0x4af
	.uleb128 0xa
	.4byte	0xcf
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x605
	.uleb128 0x19
	.4byte	.LASF130
	.uleb128 0x6
	.byte	0x4
	.4byte	0x61b
	.uleb128 0xb
	.4byte	0xcf
	.4byte	0x636
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0x646
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF99
	.byte	0xa
	.byte	0x30
	.4byte	0xa2
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x4
	.4byte	0x25
	.byte	0x1
	.byte	0x5a
	.4byte	0x66e
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.4byte	.LASF104
	.byte	0x14
	.byte	0x1
	.byte	0x5f
	.4byte	0x6bc
	.uleb128 0x14
	.string	"sd"
	.byte	0x1
	.byte	0x60
	.4byte	0x646
	.byte	0
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.byte	0x62
	.4byte	0x311
	.byte	0x4
	.uleb128 0x14
	.string	"q"
	.byte	0x1
	.byte	0x62
	.4byte	0x311
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x1
	.byte	0x63
	.4byte	0xcf
	.byte	0xc
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x64
	.4byte	0xe5
	.byte	0xe
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0x1
	.byte	0x64
	.4byte	0xe5
	.byte	0x10
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF107
	.byte	0x1
	.byte	0xcf
	.4byte	0x311
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7b1
	.uleb128 0x1b
	.4byte	.LASF65
	.byte	0x1
	.byte	0xcf
	.4byte	0x4af
	.4byte	.LLST0
	.uleb128 0x1c
	.string	"c"
	.byte	0x1
	.byte	0xcf
	.4byte	0xcf
	.4byte	.LLST1
	.uleb128 0x1d
	.4byte	.LASF106
	.byte	0x1
	.byte	0xd1
	.4byte	0x7b1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.string	"t"
	.byte	0x1
	.byte	0xd2
	.4byte	0x311
	.4byte	.LLST2
	.uleb128 0x1f
	.4byte	.LASF110
	.4byte	0x7c7
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6214
	.uleb128 0x20
	.4byte	.LVL1
	.4byte	0xc86
	.4byte	0x749
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xd4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6214
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL2
	.4byte	0xc86
	.4byte	0x778
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xd5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6214
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x22
	.4byte	.LVL4
	.4byte	0xc91
	.uleb128 0x20
	.4byte	.LVL12
	.4byte	0xc9c
	.4byte	0x7a0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x5c6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x23
	.4byte	.LVL13
	.4byte	0xca7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x66e
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0x7c7
	.uleb128 0xc
	.4byte	0x9b
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.4byte	0x7b7
	.uleb128 0x24
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x136
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x84b
	.uleb128 0x25
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x136
	.4byte	0x4af
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.2byte	0x136
	.4byte	0xcf
	.4byte	.LLST3
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.2byte	0x138
	.4byte	0x311
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LVL18
	.4byte	0x6bc
	.4byte	0x824
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL20
	.4byte	0x83a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL21
	.4byte	0xcb2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x14a
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8c1
	.uleb128 0x2a
	.string	"nf"
	.byte	0x1
	.2byte	0x14a
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.2byte	0x14c
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x14d
	.4byte	0x4af
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2b
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x14e
	.4byte	0x7b1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LVL25
	.4byte	0xcbd
	.4byte	0x8b0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL26
	.4byte	0x7cc
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF109
	.byte	0x1
	.byte	0x74
	.4byte	0x123
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa42
	.uleb128 0x1b
	.4byte	.LASF65
	.byte	0x1
	.byte	0x74
	.4byte	0x4af
	.4byte	.LLST4
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.byte	0x74
	.4byte	0x311
	.4byte	.LLST5
	.uleb128 0x1d
	.4byte	.LASF106
	.byte	0x1
	.byte	0x76
	.4byte	0x7b1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2c
	.string	"q"
	.byte	0x1
	.byte	0x77
	.4byte	0x311
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.byte	0x78
	.4byte	0xe5
	.4byte	.LLST6
	.uleb128 0x1e
	.string	"c"
	.byte	0x1
	.byte	0x79
	.4byte	0xcf
	.4byte	.LLST7
	.uleb128 0x1f
	.4byte	.LASF110
	.4byte	0xa42
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6186
	.uleb128 0x20
	.4byte	.LVL28
	.4byte	0xc86
	.4byte	0x966
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6186
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL29
	.4byte	0xc86
	.4byte	0x995
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6186
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x20
	.4byte	.LVL30
	.4byte	0xc86
	.4byte	0x9c4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6186
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x20
	.4byte	.LVL31
	.4byte	0xcc8
	.4byte	0x9d8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xc0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL35
	.4byte	0xcc8
	.4byte	0x9ec
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xdb
	.byte	0
	.uleb128 0x20
	.4byte	.LVL36
	.4byte	0xcc8
	.4byte	0xa00
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xdc
	.byte	0
	.uleb128 0x20
	.4byte	.LVL38
	.4byte	0xcc8
	.4byte	0xa14
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xdb
	.byte	0
	.uleb128 0x20
	.4byte	.LVL39
	.4byte	0xcc8
	.4byte	0xa28
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xdd
	.byte	0
	.uleb128 0x22
	.4byte	.LVL41
	.4byte	0xcc8
	.uleb128 0x23
	.4byte	.LVL47
	.4byte	0xcc8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xc0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x7b7
	.uleb128 0x1a
	.4byte	.LASF111
	.byte	0x1
	.byte	0xbf
	.4byte	0x123
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa9e
	.uleb128 0x1b
	.4byte	.LASF65
	.byte	0x1
	.byte	0xbf
	.4byte	0x4af
	.4byte	.LLST8
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.byte	0xbf
	.4byte	0x311
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.4byte	.LASF112
	.byte	0x1
	.byte	0xbf
	.4byte	0x556
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LVL49
	.4byte	0x8c1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF113
	.byte	0x1
	.byte	0xac
	.4byte	0x123
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf5
	.uleb128 0x1b
	.4byte	.LASF65
	.byte	0x1
	.byte	0xac
	.4byte	0x4af
	.4byte	.LLST9
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.byte	0xac
	.4byte	0x311
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.4byte	.LASF112
	.byte	0x1
	.byte	0xac
	.4byte	0x521
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LVL52
	.4byte	0x8c1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x169
	.4byte	0x123
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb9b
	.uleb128 0x30
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x169
	.4byte	0x4af
	.4byte	.LLST10
	.uleb128 0x2b
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x16b
	.4byte	0x7b1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x31
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x16c
	.4byte	0xcf
	.4byte	.LLST11
	.uleb128 0x20
	.4byte	.LVL55
	.4byte	0xcd3
	.4byte	0xb50
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x22
	.4byte	.LVL60
	.4byte	0xcde
	.uleb128 0x20
	.4byte	.LVL61
	.4byte	0xce9
	.4byte	0xb6d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL64
	.4byte	0xcf4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	slipif_loop_thread
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x1ab
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc71
	.uleb128 0x25
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x4af
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.2byte	0x1ad
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x7b1
	.uleb128 0x1f
	.4byte	.LASF110
	.4byte	0xc81
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6253
	.uleb128 0x20
	.4byte	.LVL69
	.4byte	0xc86
	.4byte	0xc17
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1b0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6253
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL70
	.4byte	0xc86
	.4byte	0xc47
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1b1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6253
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x20
	.4byte	.LVL71
	.4byte	0x7cc
	.4byte	0xc5b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL72
	.4byte	0xd00
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0xc81
	.uleb128 0xc
	.4byte	0x9b
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.4byte	0xc71
	.uleb128 0x34
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0xb
	.byte	0x29
	.uleb128 0x34
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0x8
	.byte	0xea
	.uleb128 0x34
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0x8
	.byte	0xe4
	.uleb128 0x34
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0x8
	.byte	0xf0
	.uleb128 0x34
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0x8
	.byte	0xee
	.uleb128 0x34
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0xa
	.byte	0x63
	.uleb128 0x34
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0xa
	.byte	0x49
	.uleb128 0x34
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0xc
	.byte	0x5a
	.uleb128 0x34
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0xa
	.byte	0x3d
	.uleb128 0x34
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0xc
	.byte	0x5c
	.uleb128 0x35
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0xd
	.2byte	0x15e
	.uleb128 0x34
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0xa
	.byte	0x70
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
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x17
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
	.uleb128 0x13
	.uleb128 0xd
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
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
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
	.uleb128 0x27
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x87
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
	.uleb128 0x2a
	.uleb128 0x5
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x9
	.byte	0xdb
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL27
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL27
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL32
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x6
	.byte	0x73
	.sleb128 4
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x6
	.byte	0x73
	.sleb128 4
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x6
	.byte	0x73
	.sleb128 4
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL54
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL59
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
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
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF128:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/netif/slipif.c"
.LASF96:
	.string	"netif_igmp_mac_filter_fn"
.LASF33:
	.string	"ERR_ISCONN"
.LASF72:
	.string	"output_ip6"
.LASF58:
	.string	"pbuf"
.LASF78:
	.string	"rs_count"
.LASF23:
	.string	"ERR_OK"
.LASF4:
	.string	"__uint8_t"
.LASF47:
	.string	"type"
.LASF11:
	.string	"long long unsigned int"
.LASF75:
	.string	"dhcps_pcb"
.LASF43:
	.string	"addr"
.LASF67:
	.string	"ip6_addr_state"
.LASF3:
	.string	"__int8_t"
.LASF59:
	.string	"next"
.LASF90:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF107:
	.string	"slipif_rxbyte"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF31:
	.string	"ERR_USE"
.LASF84:
	.string	"mld_mac_filter"
.LASF81:
	.string	"hwaddr"
.LASF61:
	.string	"tot_len"
.LASF26:
	.string	"ERR_TIMEOUT"
.LASF73:
	.string	"state"
.LASF79:
	.string	"hostname"
.LASF12:
	.string	"long int"
.LASF50:
	.string	"PBUF_IP"
.LASF57:
	.string	"PBUF_POOL"
.LASF41:
	.string	"ip4_addr"
.LASF56:
	.string	"PBUF_REF"
.LASF98:
	.string	"dhcp_event_fn"
.LASF123:
	.string	"sio_open"
.LASF19:
	.string	"uint16_t"
.LASF80:
	.string	"hwaddr_len"
.LASF66:
	.string	"netmask"
.LASF95:
	.string	"netif_linkoutput_fn"
.LASF9:
	.string	"__uint32_t"
.LASF6:
	.string	"__int16_t"
.LASF0:
	.string	"unsigned int"
.LASF52:
	.string	"PBUF_RAW_TX"
.LASF89:
	.string	"last_ip_addr"
.LASF125:
	.string	"sys_thread_new"
.LASF126:
	.string	"sio_tryread"
.LASF94:
	.string	"netif_output_ip6_fn"
.LASF70:
	.string	"output"
.LASF109:
	.string	"slipif_output"
.LASF32:
	.string	"ERR_ALREADY"
.LASF82:
	.string	"name"
.LASF64:
	.string	"l2_buf"
.LASF1:
	.string	"short unsigned int"
.LASF40:
	.string	"ip4_addr_t"
.LASF119:
	.string	"pbuf_free"
.LASF113:
	.string	"slipif_output_v4"
.LASF111:
	.string	"slipif_output_v6"
.LASF49:
	.string	"PBUF_TRANSPORT"
.LASF103:
	.string	"SLIP_RECV_ESCAPE"
.LASF68:
	.string	"ipv6_addr_cb"
.LASF102:
	.string	"SLIP_RECV_NORMAL"
.LASF100:
	.string	"netif_mac_filter_action"
.LASF48:
	.string	"ip_addr_t"
.LASF22:
	.string	"err_t"
.LASF13:
	.string	"sizetype"
.LASF87:
	.string	"loop_cnt_current"
.LASF65:
	.string	"netif"
.LASF120:
	.string	"sio_read"
.LASF83:
	.string	"igmp_mac_filter"
.LASF60:
	.string	"payload"
.LASF45:
	.string	"ip_addr"
.LASF55:
	.string	"PBUF_ROM"
.LASF129:
	.string	"/home/raphael/rtone/lcd/build/lwip"
.LASF116:
	.string	"pbuf_realloc"
.LASF132:
	.string	"slipif_init"
.LASF106:
	.string	"priv"
.LASF92:
	.string	"netif_input_fn"
.LASF51:
	.string	"PBUF_LINK"
.LASF28:
	.string	"ERR_INPROGRESS"
.LASF105:
	.string	"recved"
.LASF99:
	.string	"sio_fd_t"
.LASF29:
	.string	"ERR_VAL"
.LASF21:
	.string	"_Bool"
.LASF108:
	.string	"slipif_loop_thread"
.LASF5:
	.string	"unsigned char"
.LASF39:
	.string	"ERR_ARG"
.LASF34:
	.string	"ERR_CONN"
.LASF127:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF101:
	.string	"slipif_recv_state"
.LASF93:
	.string	"netif_output_fn"
.LASF63:
	.string	"l2_owner"
.LASF110:
	.string	"__func__"
.LASF76:
	.string	"dhcp_event"
.LASF69:
	.string	"input"
.LASF54:
	.string	"PBUF_RAM"
.LASF97:
	.string	"netif_mld_mac_filter_fn"
.LASF53:
	.string	"PBUF_RAW"
.LASF91:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF37:
	.string	"ERR_RST"
.LASF20:
	.string	"uint32_t"
.LASF36:
	.string	"ERR_ABRT"
.LASF124:
	.string	"mem_free"
.LASF42:
	.string	"ip6_addr"
.LASF14:
	.string	"long unsigned int"
.LASF15:
	.string	"char"
.LASF131:
	.string	"slipif_rxbyte_input"
.LASF8:
	.string	"__uint16_t"
.LASF24:
	.string	"ERR_MEM"
.LASF7:
	.string	"short int"
.LASF86:
	.string	"loop_last"
.LASF133:
	.string	"slipif_poll"
.LASF85:
	.string	"loop_first"
.LASF38:
	.string	"ERR_CLSD"
.LASF27:
	.string	"ERR_RTE"
.LASF16:
	.string	"int8_t"
.LASF122:
	.string	"mem_malloc"
.LASF35:
	.string	"ERR_IF"
.LASF25:
	.string	"ERR_BUF"
.LASF44:
	.string	"ip6_addr_t"
.LASF118:
	.string	"pbuf_cat"
.LASF46:
	.string	"u_addr"
.LASF114:
	.string	"sio_num"
.LASF104:
	.string	"slipif_priv"
.LASF112:
	.string	"ipaddr"
.LASF17:
	.string	"uint8_t"
.LASF62:
	.string	"flags"
.LASF130:
	.string	"udp_pcb"
.LASF115:
	.string	"__assert_func"
.LASF30:
	.string	"ERR_WOULDBLOCK"
.LASF88:
	.string	"l2_buffer_free_notify"
.LASF77:
	.string	"ip6_autoconfig_enabled"
.LASF74:
	.string	"client_data"
.LASF121:
	.string	"sio_send"
.LASF71:
	.string	"linkoutput"
.LASF18:
	.string	"int16_t"
.LASF117:
	.string	"pbuf_alloc"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
