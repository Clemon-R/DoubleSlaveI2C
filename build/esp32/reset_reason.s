	.file	"reset_reason.c"
	.text
.Ltext0:
	.section	.text.get_reset_reason,"ax",@progbits
	.literal_position
	.literal .LC0, .L4
	.align	4
	.type	get_reset_reason, @function
get_reset_reason:
.LFB6:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/reset_reason.c"
	.loc 1 25 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 26 0
	movi.n	a8, 0x10
	bltu	a8, a2, .L2
	l32r	a8, .LC0
	addx4	a2, a2, a8
.LVL1:
	l32i.n	a2, a2, 0
	jx	a2
	.section	.rodata.get_reset_reason,"a",@progbits
	.align	4
	.align	4
.L4:
	.word	.L2
	.word	.L3
	.word	.L2
	.word	.L5
	.word	.L6
	.word	.L12
	.word	.L8
	.word	.L9
	.word	.L10
	.word	.L6
	.word	.L2
	.word	.L6
	.word	.L5
	.word	.L6
	.word	.L5
	.word	.L11
	.word	.L6
	.section	.text.get_reset_reason
.L3:
	.loc 1 28 0
	movi.n	a2, 1
	retw.n
.L5:
	.loc 1 36 0
	addi	a8, a3, -4
	movi.n	a10, 1
	movi.n	a2, 0
	mov.n	a4, a2
	moveqz	a4, a10, a8
	.loc 1 37 0
	addi	a9, a3, -9
	moveqz	a2, a10, a9
	.loc 1 36 0
	or	a2, a2, a4
	bnez.n	a2, .L13
	.loc 1 38 0
	addi	a2, a3, -5
	bltui	a2, 2, .L14
	.loc 1 42 0
	movi.n	a2, 3
	retw.n
.L9:
	.loc 1 48 0
	movi.n	a2, 6
	retw.n
.L10:
	.loc 1 51 0
	movi.n	a2, 5
	retw.n
.L6:
	.loc 1 58 0
	movi.n	a2, 7
	retw.n
.L11:
	.loc 1 61 0
	movi.n	a2, 9
	retw.n
.L8:
	.loc 1 64 0
	movi.n	a2, 0xa
	retw.n
.L2:
	.loc 1 68 0
	movi.n	a2, 0
	retw.n
.L12:
	.loc 1 45 0
	movi.n	a2, 8
	retw.n
.L13:
	.loc 1 40 0
	mov.n	a2, a3
	retw.n
.L14:
	mov.n	a2, a3
	.loc 1 70 0
	retw.n
.LFE6:
	.size	get_reset_reason, .-get_reset_reason
	.section	.text.esp_reset_reason_clear_hint,"ax",@progbits
	.literal_position
	.literal .LC1, 1072988344
	.align	4
	.type	esp_reset_reason_clear_hint, @function
esp_reset_reason_clear_hint:
.LFB11:
	.loc 1 123 0
	entry	sp, 32
.LCFI1:
.LBB2:
	.loc 1 124 0
	movi.n	a9, 0
	l32r	a8, .LC1
	memw
	s32i.n	a9, a8, 0
	retw.n
.LBE2:
.LFE11:
	.size	esp_reset_reason_clear_hint, .-esp_reset_reason_clear_hint
	.section	.text.esp_reset_reason,"ax",@progbits
	.literal_position
	.literal .LC2, s_reset_reason
	.align	4
	.global	esp_reset_reason
	.type	esp_reset_reason, @function
esp_reset_reason:
.LFB8:
	.loc 1 83 0
	entry	sp, 32
.LCFI2:
	.loc 1 85 0
	l32r	a8, .LC2
	l32i.n	a2, a8, 0
	retw.n
.LFE8:
	.size	esp_reset_reason, .-esp_reset_reason
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC4:
	.string	"(hint & (~RST_REASON_MASK)) == 0"
	.align	4
.LC7:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/reset_reason.c"
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC3, -32768
	.literal .LC5, .LC4
	.literal .LC6, __func__$4497
	.literal .LC8, .LC7
	.literal .LC9, -2147483648
	.literal .LC10, 1072988344
	.align	4
	.global	esp_reset_reason_set_hint
	.type	esp_reset_reason_set_hint, @function
esp_reset_reason_set_hint:
.LFB9:
	.loc 1 105 0
.LVL2:
	entry	sp, 32
.LCFI3:
	.loc 1 106 0
	l32r	a8, .LC3
	bnone	a2, a8, .L18
	.loc 1 106 0 is_stmt 0 discriminator 1
	l32r	a13, .LC5
	l32r	a12, .LC6
	movi	a11, 0x6a
	l32r	a10, .LC8
	call8	__assert_func
.LVL3:
.L18:
	.loc 1 107 0 is_stmt 1
	slli	a8, a2, 16
	or	a2, a2, a8
.LVL4:
	l32r	a8, .LC9
	or	a2, a2, a8
.LVL5:
.LBB3:
	.loc 1 108 0
	l32r	a8, .LC10
	memw
	s32i.n	a2, a8, 0
	retw.n
.LBE3:
.LFE9:
	.size	esp_reset_reason_set_hint, .-esp_reset_reason_set_hint
	.literal_position
	.literal .LC11, 1072988344
	.align	4
	.global	esp_reset_reason_get_hint
	.type	esp_reset_reason_get_hint, @function
esp_reset_reason_get_hint:
.LFB10:
	.loc 1 113 0
	entry	sp, 32
.LCFI4:
.LBB4:
	.loc 1 114 0
	l32r	a2, .LC11
	memw
	l32i.n	a8, a2, 0
.LVL6:
.LBE4:
	.loc 1 115 0
	extui	a10, a8, 16, 15
.LVL7:
	.loc 1 116 0
	extui	a2, a8, 0, 15
.LVL8:
	.loc 1 117 0
	movi.n	a9, -1
	xor	a8, a9, a8
.LVL9:
	extui	a9, a8, 31, 1
	sub	a10, a10, a2
.LVL10:
	movi.n	a8, 0
	movi.n	a11, 1
	movnez	a8, a11, a10
	or	a8, a8, a9
	beqz.n	a8, .L20
	.loc 1 118 0
	movi.n	a2, 0
.LVL11:
.L20:
	.loc 1 121 0
	retw.n
.LFE10:
	.size	esp_reset_reason_get_hint, .-esp_reset_reason_get_hint
	.section	.text.esp_reset_reason_init,"ax",@progbits
	.literal_position
	.literal .LC12, s_reset_reason
	.align	4
	.type	esp_reset_reason_init, @function
esp_reset_reason_init:
.LFB7:
	.loc 1 73 0
	entry	sp, 32
.LCFI5:
	.loc 1 74 0
	call8	esp_reset_reason_get_hint
.LVL12:
	mov.n	a2, a10
.LVL13:
	.loc 1 75 0
	movi.n	a10, 0
	call8	rtc_get_reset_reason
.LVL14:
	mov.n	a11, a2
	call8	get_reset_reason
.LVL15:
	l32r	a8, .LC12
	s32i.n	a10, a8, 0
	.loc 1 77 0
	beqz.n	a2, .L22
	.loc 1 78 0
	call8	esp_reset_reason_clear_hint
.LVL16:
.L22:
	retw.n
.LFE7:
	.size	esp_reset_reason_init, .-esp_reset_reason_init
	.section	.ctors,"aw",@progbits
	.align	4
	.word	esp_reset_reason_init
	.section	.rodata.__func__$4497,"a",@progbits
	.align	4
	.type	__func__$4497, @object
	.size	__func__$4497, 26
__func__$4497:
	.string	"esp_reset_reason_set_hint"
	.section	.bss.s_reset_reason,"aw",@nobits
	.align	4
	.type	s_reset_reason, @object
	.size	s_reset_reason, 4
s_reset_reason:
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI0-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI1-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI2-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI3-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI4-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI5-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_system.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/rtc.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3c6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0xc
	.4byte	.LASF70
	.4byte	.LASF71
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
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x53
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
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x2d
	.4byte	0x48
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53
	.byte	0x4
	.byte	0x2b
	.4byte	0xe5
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
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x4
	.byte	0x37
	.4byte	0x96
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53
	.byte	0x5
	.byte	0x52
	.4byte	0x15d
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x1
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
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0xf
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x5
	.byte	0x63
	.4byte	0xf0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53
	.byte	0x5
	.byte	0x65
	.4byte	0x1c0
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x40
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x80
	.uleb128 0x7
	.4byte	.LASF52
	.2byte	0x100
	.uleb128 0x7
	.4byte	.LASF53
	.2byte	0x200
	.uleb128 0x7
	.4byte	.LASF54
	.2byte	0x400
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53
	.byte	0x5
	.byte	0x83
	.4byte	0x1f1
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x1
	.byte	0x18
	.4byte	0xe5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x227
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x1
	.byte	0x18
	.4byte	0x15d
	.4byte	.LLST0
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x1
	.byte	0x18
	.4byte	0xe5
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x1
	.byte	0x7a
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x246
	.uleb128 0xc
	.4byte	.LASF64
	.4byte	0x256
	.byte	0
	.uleb128 0xd
	.4byte	0x88
	.4byte	0x256
	.uleb128 0xe
	.4byte	0x7a
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.4byte	0x246
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x1
	.byte	0x52
	.4byte	0xe5
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0x1
	.byte	0x68
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2dc
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x1
	.byte	0x68
	.4byte	0xe5
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LASF64
	.4byte	0x2ec
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4497
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.byte	0x6b
	.4byte	0x68
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LVL3
	.4byte	0x3b3
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6a
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4497
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x88
	.4byte	0x2ec
	.uleb128 0xe
	.4byte	0x7a
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.4byte	0x2dc
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x1
	.byte	0x70
	.4byte	0xe5
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x341
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x1
	.byte	0x72
	.4byte	0x68
	.4byte	.LLST2
	.uleb128 0xc
	.4byte	.LASF64
	.4byte	0x341
	.uleb128 0x17
	.4byte	.LASF65
	.byte	0x1
	.byte	0x73
	.4byte	0x68
	.4byte	.LLST3
	.uleb128 0x18
	.string	"low"
	.byte	0x1
	.byte	0x74
	.4byte	0x68
	.4byte	.LLST4
	.byte	0
	.uleb128 0xf
	.4byte	0x2dc
	.uleb128 0x19
	.4byte	.LASF77
	.byte	0x1
	.byte	0x48
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a2
	.uleb128 0x1a
	.4byte	.LASF63
	.byte	0x1
	.byte	0x4a
	.4byte	0xe5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LVL12
	.4byte	0x2f1
	.uleb128 0x1c
	.4byte	.LVL14
	.4byte	0x3be
	.4byte	0x384
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL15
	.4byte	0x1f1
	.4byte	0x398
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL16
	.4byte	0x227
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF66
	.byte	0x1
	.byte	0x16
	.4byte	0xe5
	.uleb128 0x5
	.byte	0x3
	.4byte	s_reset_reason
	.uleb128 0x1d
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x6
	.byte	0x29
	.uleb128 0x1d
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x5
	.byte	0x9c
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0xc
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
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE6
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
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF76:
	.string	"esp_reset_reason_get_hint"
.LASF56:
	.string	"WAKEUP_INT"
.LASF77:
	.string	"esp_reset_reason_init"
.LASF0:
	.string	"signed char"
.LASF22:
	.string	"ESP_RST_DEEPSLEEP"
.LASF47:
	.string	"TIMER_EXPIRE"
.LASF2:
	.string	"short int"
.LASF31:
	.string	"SDIO_RESET"
.LASF66:
	.string	"s_reset_reason"
.LASF10:
	.string	"sizetype"
.LASF19:
	.string	"ESP_RST_INT_WDT"
.LASF71:
	.string	"/home/raphael/rtone/lcd/build/esp32"
.LASF15:
	.string	"ESP_RST_POWERON"
.LASF40:
	.string	"RTCWDT_BROWN_OUT_RESET"
.LASF7:
	.string	"__uint32_t"
.LASF29:
	.string	"OWDT_RESET"
.LASF68:
	.string	"rtc_get_reset_reason"
.LASF16:
	.string	"ESP_RST_EXT"
.LASF58:
	.string	"SDIO_IDLE_INT"
.LASF43:
	.string	"NO_SLEEP"
.LASF26:
	.string	"NO_MEAN"
.LASF39:
	.string	"EXT_CPU_RESET"
.LASF61:
	.string	"rtc_reset_reason"
.LASF63:
	.string	"hint"
.LASF55:
	.string	"NO_INT"
.LASF5:
	.string	"long long int"
.LASF57:
	.string	"REJECT_INT"
.LASF73:
	.string	"esp_reset_reason_clear_hint"
.LASF60:
	.string	"RTC_TIME_VALID_INT"
.LASF9:
	.string	"long int"
.LASF65:
	.string	"high"
.LASF38:
	.string	"RTCWDT_CPU_RESET"
.LASF48:
	.string	"SDIO_TRIG"
.LASF62:
	.string	"reset_reason_hint"
.LASF23:
	.string	"ESP_RST_BROWNOUT"
.LASF33:
	.string	"TG1WDT_SYS_RESET"
.LASF34:
	.string	"RTCWDT_SYS_RESET"
.LASF45:
	.string	"EXT_EVENT1_TRIG"
.LASF1:
	.string	"unsigned char"
.LASF50:
	.string	"UART0_TRIG"
.LASF75:
	.string	"esp_reset_reason_set_hint"
.LASF20:
	.string	"ESP_RST_TASK_WDT"
.LASF6:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint32_t"
.LASF28:
	.string	"SW_RESET"
.LASF4:
	.string	"unsigned int"
.LASF27:
	.string	"POWERON_RESET"
.LASF72:
	.string	"get_reset_reason"
.LASF32:
	.string	"TG0WDT_SYS_RESET"
.LASF36:
	.string	"TGWDT_CPU_RESET"
.LASF3:
	.string	"short unsigned int"
.LASF54:
	.string	"BT_TRIG"
.LASF25:
	.string	"esp_reset_reason_t"
.LASF12:
	.string	"char"
.LASF18:
	.string	"ESP_RST_PANIC"
.LASF13:
	.string	"_Bool"
.LASF44:
	.string	"EXT_EVENT0_TRIG"
.LASF24:
	.string	"ESP_RST_SDIO"
.LASF59:
	.string	"RTC_WDT_INT"
.LASF52:
	.string	"TOUCH_TRIG"
.LASF11:
	.string	"long unsigned int"
.LASF21:
	.string	"ESP_RST_WDT"
.LASF53:
	.string	"SAR_TRIG"
.LASF17:
	.string	"ESP_RST_SW"
.LASF37:
	.string	"SW_CPU_RESET"
.LASF46:
	.string	"GPIO_TRIG"
.LASF49:
	.string	"MAC_TRIG"
.LASF64:
	.string	"__func__"
.LASF35:
	.string	"INTRUSION_RESET"
.LASF70:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/reset_reason.c"
.LASF41:
	.string	"RTCWDT_RTC_RESET"
.LASF67:
	.string	"__assert_func"
.LASF42:
	.string	"RESET_REASON"
.LASF69:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF14:
	.string	"ESP_RST_UNKNOWN"
.LASF74:
	.string	"esp_reset_reason"
.LASF30:
	.string	"DEEPSLEEP_RESET"
.LASF51:
	.string	"UART1_TRIG"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
