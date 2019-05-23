	.file	"def.c"
	.text
.Ltext0:
	.section	.text.lwip_htons,"ax",@progbits
	.align	4
	.global	lwip_htons
	.type	lwip_htons, @function
lwip_htons:
.LFB20:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/core/def.c"
	.loc 1 77 0
.LVL0:
	entry	sp, 32
.LCFI0:
	extui	a2, a2, 0, 16
	.loc 1 78 0
	slli	a8, a2, 8
	srli	a2, a2, 8
.LVL1:
	or	a2, a8, a2
	.loc 1 79 0
	extui	a2, a2, 0, 16
	retw.n
.LFE20:
	.size	lwip_htons, .-lwip_htons
	.section	.text.lwip_htonl,"ax",@progbits
	.literal_position
	.literal .LC0, 65280
	.literal .LC1, 16711680
	.align	4
	.global	lwip_htonl
	.type	lwip_htonl, @function
lwip_htonl:
.LFB21:
	.loc 1 91 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 92 0
	slli	a9, a2, 24
	l32r	a8, .LC0
	and	a8, a2, a8
	slli	a8, a8, 8
	or	a9, a9, a8
	l32r	a8, .LC1
	and	a8, a2, a8
	srli	a8, a8, 8
	or	a8, a9, a8
	extui	a2, a2, 24, 8
.LVL3:
	.loc 1 93 0
	or	a2, a8, a2
	retw.n
.LFE21:
	.size	lwip_htonl, .-lwip_htonl
	.section	.text.lwip_strnstr,"ax",@progbits
	.align	4
	.global	lwip_strnstr
	.type	lwip_strnstr, @function
lwip_strnstr:
.LFB22:
	.loc 1 106 0
.LVL4:
	entry	sp, 32
.LCFI2:
	.loc 1 108 0
	mov.n	a10, a3
	call8	strlen
.LVL5:
	mov.n	a6, a10
.LVL6:
	.loc 1 109 0
	beqz.n	a10, .L4
	mov.n	a5, a2
	j	.L5
.LVL7:
.L7:
	.loc 1 113 0
	l8ui	a8, a3, 0
	bne	a9, a8, .L6
	.loc 1 113 0 is_stmt 0 discriminator 1
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a5
	call8	strncmp
.LVL8:
	beqz.n	a10, .L9
.L6:
	.loc 1 112 0 is_stmt 1 discriminator 2
	addi.n	a5, a5, 1
.LVL9:
.L5:
	.loc 1 112 0 is_stmt 0 discriminator 1
	l8ui	a9, a5, 0
	beqz.n	a9, .L10
	.loc 1 112 0 discriminator 3
	add.n	a8, a5, a6
	add.n	a10, a2, a4
	bgeu	a10, a8, .L7
	.loc 1 117 0 is_stmt 1
	movi.n	a2, 0
.LVL10:
	retw.n
.LVL11:
.L9:
	.loc 1 114 0
	mov.n	a2, a5
.LVL12:
	retw.n
.LVL13:
.L10:
	.loc 1 117 0
	movi.n	a2, 0
.LVL14:
.L4:
	.loc 1 118 0
	retw.n
.LFE22:
	.size	lwip_strnstr, .-lwip_strnstr
	.section	.text.lwip_stricmp,"ax",@progbits
	.align	4
	.global	lwip_stricmp
	.type	lwip_stricmp, @function
lwip_stricmp:
.LFB23:
	.loc 1 129 0
.LVL15:
	entry	sp, 32
.LCFI3:
.L14:
	.loc 1 133 0
	addi.n	a12, a2, 1
.LVL16:
	l8ui	a10, a2, 0
.LVL17:
	.loc 1 134 0
	addi.n	a11, a3, 1
.LVL18:
	l8ui	a3, a3, 0
.LVL19:
	.loc 1 135 0
	beq	a10, a3, .L12
.LBB2:
	.loc 1 136 0
	movi.n	a8, 0x20
	or	a8, a10, a8
	extui	a8, a8, 0, 8
.LVL20:
	.loc 1 137 0
	addi	a2, a8, -97
.LVL21:
	extui	a2, a2, 0, 8
	movi.n	a9, 0x19
	bltu	a9, a2, .L15
.LBB3:
	.loc 1 140 0
	movi.n	a9, 0x20
	or	a9, a3, a9
	extui	a9, a9, 0, 8
.LVL22:
	.loc 1 141 0
	bne	a8, a9, .L16
.LVL23:
.L12:
.LBE3:
.LBE2:
	.loc 1 133 0
	mov.n	a2, a12
	.loc 1 134 0
	mov.n	a3, a11
	.loc 1 151 0
	bnez.n	a10, .L14
.LVL24:
	.loc 1 152 0
	movi.n	a2, 0
.LVL25:
	retw.n
.LVL26:
.L15:
.LBB5:
	.loc 1 148 0
	movi.n	a2, 1
	retw.n
.LVL27:
.L16:
.LBB4:
	.loc 1 144 0
	movi.n	a2, 1
.LBE4:
.LBE5:
	.loc 1 153 0
	retw.n
.LFE23:
	.size	lwip_stricmp, .-lwip_stricmp
	.section	.text.lwip_strnicmp,"ax",@progbits
	.align	4
	.global	lwip_strnicmp
	.type	lwip_strnicmp, @function
lwip_strnicmp:
.LFB24:
	.loc 1 164 0
.LVL28:
	entry	sp, 32
.LCFI4:
	j	.L20
.LVL29:
.L24:
	.loc 1 186 0
	mov.n	a4, a8
.LVL30:
.L20:
	.loc 1 168 0
	addi.n	a12, a2, 1
.LVL31:
	l8ui	a10, a2, 0
.LVL32:
	.loc 1 169 0
	addi.n	a11, a3, 1
.LVL33:
	l8ui	a3, a3, 0
.LVL34:
	.loc 1 170 0
	beq	a10, a3, .L18
.LBB6:
	.loc 1 171 0
	movi.n	a8, 0x20
	or	a8, a10, a8
	extui	a8, a8, 0, 8
.LVL35:
	.loc 1 172 0
	addi	a2, a8, -97
.LVL36:
	extui	a2, a2, 0, 8
	movi.n	a9, 0x19
	bltu	a9, a2, .L21
.LBB7:
	.loc 1 175 0
	movi.n	a9, 0x20
	or	a9, a3, a9
	extui	a9, a9, 0, 8
.LVL37:
	.loc 1 176 0
	bne	a8, a9, .L22
.LVL38:
.L18:
.LBE7:
.LBE6:
	.loc 1 186 0
	addi.n	a8, a4, -1
.LVL39:
	beqz.n	a4, .L23
	.loc 1 168 0 discriminator 1
	mov.n	a2, a12
	.loc 1 169 0 discriminator 1
	mov.n	a3, a11
	.loc 1 186 0 discriminator 1
	bnez.n	a10, .L24
.LVL40:
	.loc 1 187 0
	movi.n	a2, 0
.LVL41:
	retw.n
.LVL42:
.L21:
.LBB9:
	.loc 1 183 0
	movi.n	a2, 1
	retw.n
.LVL43:
.L22:
.LBB8:
	.loc 1 179 0
	movi.n	a2, 1
	retw.n
.LVL44:
.L23:
.LBE8:
.LBE9:
	.loc 1 187 0
	movi.n	a2, 0
	.loc 1 188 0
	retw.n
.LFE24:
	.size	lwip_strnicmp, .-lwip_strnicmp
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.string	"zyxwvutsrqponmlkjihgfedcba9876543210123456789abcdefghijklmnopqrstuvwxyz"
	.section	.text.lwip_itoa,"ax",@progbits
	.literal_position
	.literal .LC2, 1717986919
	.literal .LC4, .LC3
	.align	4
	.global	lwip_itoa
	.type	lwip_itoa, @function
lwip_itoa:
.LFB25:
	.loc 1 199 0
.LVL45:
	entry	sp, 32
.LCFI5:
.LVL46:
	.loc 1 201 0
	mov.n	a11, a2
	j	.L26
.LVL47:
.L30:
	.loc 1 208 0
	mov.n	a11, a12
	.loc 1 207 0
	mov.n	a4, a8
.LVL48:
.L26:
	.loc 1 207 0 is_stmt 0 discriminator 1
	l32r	a8, .LC2
	mulsh	a8, a4, a8
	srai	a8, a8, 2
	srai	a9, a4, 31
	sub	a8, a8, a9
.LVL49:
	.loc 1 208 0 is_stmt 1 discriminator 1
	addi.n	a12, a11, 1
.LVL50:
	slli	a10, a8, 29
	sub	a10, a10, a8
	subx4	a10, a10, a8
	slli	a9, a10, 1
	add.n	a9, a4, a9
	addi	a9, a9, 35
	l32r	a10, .LC4
	add.n	a9, a10, a9
	l8ui	a9, a9, 0
	s8i	a9, a11, 0
	.loc 1 209 0 discriminator 1
	bnez.n	a8, .L30
	.loc 1 212 0
	bgez	a4, .L27
	.loc 1 213 0
	addi.n	a12, a11, 2
.LVL51:
	movi.n	a4, 0x2d
.LVL52:
	s8i	a4, a11, 1
.L27:
	.loc 1 215 0
	addi.n	a8, a12, -1
.LVL53:
	movi.n	a4, 0
	s8i	a4, a12, 0
	.loc 1 216 0
	j	.L28
.LVL54:
.L29:
	.loc 1 217 0
	l8ui	a4, a8, 0
.LVL55:
	.loc 1 218 0
	l8ui	a9, a2, 0
	s8i	a9, a8, 0
.LVL56:
	.loc 1 219 0
	s8i	a4, a2, 0
	addi.n	a2, a2, 1
.LVL57:
	.loc 1 218 0
	addi.n	a8, a8, -1
.LVL58:
.L28:
	.loc 1 216 0
	bltu	a2, a8, .L29
	.loc 1 221 0
	retw.n
.LFE25:
	.size	lwip_itoa, .-lwip_itoa
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI0-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI1-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI2-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI3-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI4-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI5-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x358
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0xc
	.4byte	.LASF40
	.4byte	.LASF41
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF2
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
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0x95
	.4byte	0x49
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x16
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa4
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x6
	.4byte	0xa4
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x21
	.4byte	0x65
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0x4c
	.4byte	0xb6
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa
	.uleb128 0x8
	.string	"n"
	.byte	0x1
	.byte	0x4c
	.4byte	0xb6
	.4byte	.LLST0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x1
	.byte	0x5a
	.4byte	0xc1
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x121
	.uleb128 0x8
	.string	"n"
	.byte	0x1
	.byte	0x5a
	.4byte	0xc1
	.4byte	.LLST1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x1
	.byte	0x69
	.4byte	0x9e
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ac
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x69
	.4byte	0xab
	.4byte	.LLST2
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x69
	.4byte	0xab
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.string	"n"
	.byte	0x1
	.byte	0x69
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xc
	.string	"p"
	.byte	0x1
	.byte	0x6b
	.4byte	0xab
	.4byte	.LLST3
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0x6c
	.4byte	0x25
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xe
	.4byte	.LVL5
	.4byte	0x345
	.4byte	0x18f
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL8
	.4byte	0x350
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x1
	.byte	0x80
	.4byte	0x49
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22a
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0x80
	.4byte	0xab
	.4byte	.LLST4
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x1
	.byte	0x80
	.4byte	0xab
	.4byte	.LLST5
	.uleb128 0xc
	.string	"c1"
	.byte	0x1
	.byte	0x82
	.4byte	0xa4
	.4byte	.LLST6
	.uleb128 0xc
	.string	"c2"
	.byte	0x1
	.byte	0x82
	.4byte	0xa4
	.4byte	.LLST7
	.uleb128 0x11
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x12
	.4byte	.LASF27
	.byte	0x1
	.byte	0x88
	.4byte	0xa4
	.4byte	.LLST8
	.uleb128 0x11
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0x1
	.byte	0x8c
	.4byte	0xa4
	.4byte	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x1
	.byte	0xa3
	.4byte	0x49
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b7
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0xa3
	.4byte	0xab
	.4byte	.LLST10
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x1
	.byte	0xa3
	.4byte	0xab
	.4byte	.LLST11
	.uleb128 0x8
	.string	"len"
	.byte	0x1
	.byte	0xa3
	.4byte	0x25
	.4byte	.LLST12
	.uleb128 0xc
	.string	"c1"
	.byte	0x1
	.byte	0xa5
	.4byte	0xa4
	.4byte	.LLST13
	.uleb128 0xc
	.string	"c2"
	.byte	0x1
	.byte	0xa5
	.4byte	0xa4
	.4byte	.LLST14
	.uleb128 0x11
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x12
	.4byte	.LASF27
	.byte	0x1
	.byte	0xab
	.4byte	0xa4
	.4byte	.LLST15
	.uleb128 0x11
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0x1
	.byte	0xaf
	.4byte	0xa4
	.4byte	.LLST16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0xc6
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x340
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x1
	.byte	0xc6
	.4byte	0x9e
	.4byte	.LLST17
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x1
	.byte	0xc6
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x1
	.byte	0xc6
	.4byte	0x49
	.4byte	.LLST18
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x1
	.byte	0xc8
	.4byte	0x340
	.byte	0xa
	.uleb128 0xc
	.string	"ptr"
	.byte	0x1
	.byte	0xc9
	.4byte	0x9e
	.4byte	.LLST19
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x1
	.byte	0xc9
	.4byte	0x9e
	.4byte	.LLST20
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x1
	.byte	0xc9
	.4byte	0xa4
	.4byte	.LLST21
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x1
	.byte	0xca
	.4byte	0x49
	.4byte	.LLST22
	.byte	0
	.uleb128 0x6
	.4byte	0x49
	.uleb128 0x15
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x5
	.byte	0x21
	.uleb128 0x15
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x5
	.byte	0x23
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
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
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x7c
	.sleb128 -1
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x72
	.sleb128 -1
	.4byte	.LVL25
	.4byte	.LFE23
	.2byte	0x2
	.byte	0x7c
	.sleb128 -1
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x7b
	.sleb128 -1
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x73
	.sleb128 -1
	.4byte	.LVL26
	.4byte	.LFE23
	.2byte	0x2
	.byte	0x7b
	.sleb128 -1
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL26
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL27
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL28
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL30
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL44
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x72
	.sleb128 -1
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL36
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x7c
	.sleb128 -1
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x72
	.sleb128 -1
	.4byte	.LVL41
	.4byte	.LFE24
	.2byte	0x2
	.byte	0x7c
	.sleb128 -1
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x73
	.sleb128 -1
	.4byte	.LVL34
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x7b
	.sleb128 -1
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x73
	.sleb128 -1
	.4byte	.LVL42
	.4byte	.LFE24
	.2byte	0x2
	.byte	0x7b
	.sleb128 -1
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL45
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL46
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL47
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x54
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
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
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
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
.LASF2:
	.string	"size_t"
.LASF30:
	.string	"result"
.LASF17:
	.string	"_Bool"
.LASF20:
	.string	"lwip_strnstr"
.LASF38:
	.string	"strncmp"
.LASF1:
	.string	"short unsigned int"
.LASF41:
	.string	"/home/raphael/rtone/lcd/build/lwip"
.LASF18:
	.string	"lwip_htons"
.LASF28:
	.string	"c2_upc"
.LASF37:
	.string	"strlen"
.LASF10:
	.string	"long long unsigned int"
.LASF5:
	.string	"unsigned char"
.LASF13:
	.string	"long unsigned int"
.LASF36:
	.string	"tmp_value"
.LASF40:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/core/def.c"
.LASF25:
	.string	"str1"
.LASF7:
	.string	"__uint16_t"
.LASF8:
	.string	"__uint32_t"
.LASF26:
	.string	"str2"
.LASF3:
	.string	"ptrdiff_t"
.LASF33:
	.string	"base"
.LASF0:
	.string	"unsigned int"
.LASF14:
	.string	"char"
.LASF31:
	.string	"bufsize"
.LASF22:
	.string	"token"
.LASF32:
	.string	"number"
.LASF12:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF39:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"lwip_strnicmp"
.LASF23:
	.string	"tokenlen"
.LASF6:
	.string	"short int"
.LASF42:
	.string	"lwip_itoa"
.LASF21:
	.string	"buffer"
.LASF15:
	.string	"uint16_t"
.LASF24:
	.string	"lwip_stricmp"
.LASF16:
	.string	"uint32_t"
.LASF11:
	.string	"long int"
.LASF4:
	.string	"signed char"
.LASF35:
	.string	"tmp_char"
.LASF27:
	.string	"c1_upc"
.LASF34:
	.string	"ptr1"
.LASF19:
	.string	"lwip_htonl"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
