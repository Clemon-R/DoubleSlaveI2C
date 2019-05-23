	.file	"netbuf.c"
	.text
.Ltext0:
	.section	.text.netbuf_new,"ax",@progbits
	.align	4
	.global	netbuf_new
	.type	netbuf_new, @function
netbuf_new:
.LFB20:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/api/netbuf.c"
	.loc 1 64 0
	entry	sp, 32
.LCFI0:
	.loc 1 67 0
	movi.n	a10, 5
	call8	memp_malloc
.LVL0:
	mov.n	a2, a10
.LVL1:
	.loc 1 68 0
	beqz.n	a10, .L2
	.loc 1 69 0
	movi.n	a12, 0x20
	movi.n	a11, 0
	call8	memset
.LVL2:
.L2:
	.loc 1 72 0
	retw.n
.LFE20:
	.size	netbuf_new, .-netbuf_new
	.section	.text.netbuf_delete,"ax",@progbits
	.align	4
	.global	netbuf_delete
	.type	netbuf_delete, @function
netbuf_delete:
.LFB21:
	.loc 1 82 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 83 0
	beqz.n	a2, .L3
	.loc 1 84 0
	l32i.n	a10, a2, 0
	beqz.n	a10, .L5
	.loc 1 85 0
	call8	pbuf_free
.LVL4:
	.loc 1 86 0
	movi.n	a8, 0
	s32i.n	a8, a2, 4
	s32i.n	a8, a2, 0
.L5:
	.loc 1 88 0
	mov.n	a11, a2
	movi.n	a10, 5
	call8	memp_free
.LVL5:
.L3:
	retw.n
.LFE21:
	.size	netbuf_delete, .-netbuf_delete
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"netbuf_alloc: invalid buf"
	.align	4
.LC2:
	.string	"check that first pbuf can hold size"
	.align	4
.LC5:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/api/netbuf.c"
	.section	.text.netbuf_alloc,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC4, __func__$6133
	.literal .LC6, .LC5
	.align	4
	.global	netbuf_alloc
	.type	netbuf_alloc, @function
netbuf_alloc:
.LFB22:
	.loc 1 107 0
.LVL6:
	entry	sp, 32
.LCFI2:
	extui	a3, a3, 0, 16
	.loc 1 108 0
	bnez.n	a2, .L7
	.loc 1 108 0 discriminator 1
	l32r	a10, .LC1
	call8	puts
.LVL7:
	.loc 1 108 0 discriminator 1
	retw.n
.L7:
	.loc 1 111 0
	l32i.n	a10, a2, 0
	beqz.n	a10, .L9
	.loc 1 112 0
	call8	pbuf_free
.LVL8:
.L9:
	.loc 1 114 0
	movi.n	a12, 0
	mov.n	a11, a3
	mov.n	a10, a12
	call8	pbuf_alloc
.LVL9:
	s32i.n	a10, a2, 0
	.loc 1 115 0
	beqz.n	a10, .L11
	.loc 1 118 0
	l16ui	a8, a10, 10
	bgeu	a8, a3, .L10
	.loc 1 118 0 is_stmt 0 discriminator 1
	l32r	a13, .LC3
	l32r	a12, .LC4
	movi	a11, 0x77
	l32r	a10, .LC6
	call8	__assert_func
.LVL10:
.L10:
	.loc 1 120 0 is_stmt 1
	s32i.n	a10, a2, 4
	.loc 1 121 0
	l32i.n	a2, a10, 4
.LVL11:
	retw.n
.LVL12:
.L11:
	.loc 1 116 0
	movi.n	a2, 0
.LVL13:
	.loc 1 122 0
	retw.n
.LFE22:
	.size	netbuf_alloc, .-netbuf_alloc
	.section	.rodata.str1.4
	.align	4
.LC7:
	.string	"netbuf_free: invalid buf"
	.section	.text.netbuf_free,"ax",@progbits
	.literal_position
	.literal .LC8, .LC7
	.align	4
	.global	netbuf_free
	.type	netbuf_free, @function
netbuf_free:
.LFB23:
	.loc 1 136 0
.LVL14:
	entry	sp, 32
.LCFI3:
	.loc 1 137 0
	bnez.n	a2, .L13
	.loc 1 137 0 discriminator 1
	l32r	a10, .LC8
	call8	puts
.LVL15:
	retw.n
.L13:
	.loc 1 138 0
	l32i.n	a10, a2, 0
	beqz.n	a10, .L15
	.loc 1 139 0
	call8	pbuf_free
.LVL16:
.L15:
	.loc 1 141 0
	movi.n	a8, 0
	s32i.n	a8, a2, 4
	s32i.n	a8, a2, 0
	retw.n
.LFE23:
	.size	netbuf_free, .-netbuf_free
	.section	.rodata.str1.4
	.align	4
.LC9:
	.string	"netbuf_ref: invalid buf"
	.section	.text.netbuf_ref,"ax",@progbits
	.literal_position
	.literal .LC10, .LC9
	.align	4
	.global	netbuf_ref
	.type	netbuf_ref, @function
netbuf_ref:
.LFB24:
	.loc 1 156 0
.LVL17:
	entry	sp, 32
.LCFI4:
	extui	a4, a4, 0, 16
	.loc 1 157 0
	bnez.n	a2, .L17
	.loc 1 157 0 discriminator 1
	l32r	a10, .LC10
	call8	puts
.LVL18:
	movi	a2, 0xf0
.LVL19:
	retw.n
.LVL20:
.L17:
	.loc 1 158 0
	l32i.n	a10, a2, 0
	beqz.n	a10, .L19
	.loc 1 159 0
	call8	pbuf_free
.LVL21:
.L19:
	.loc 1 161 0
	movi.n	a12, 2
	movi.n	a11, 0
	mov.n	a10, a11
	call8	pbuf_alloc
.LVL22:
	s32i.n	a10, a2, 0
	.loc 1 162 0
	bnez.n	a10, .L20
	.loc 1 163 0
	movi.n	a3, 0
.LVL23:
	s32i.n	a3, a2, 4
	.loc 1 164 0
	movi	a2, 0xff
.LVL24:
	retw.n
.LVL25:
.L20:
	.loc 1 166 0
	s32i.n	a3, a10, 4
	.loc 1 167 0
	l32i.n	a8, a2, 0
	s16i	a4, a8, 8
	s16i	a4, a8, 10
	.loc 1 168 0
	l32i.n	a3, a2, 0
.LVL26:
	s32i.n	a3, a2, 4
	.loc 1 169 0
	movi.n	a2, 0
.LVL27:
	.loc 1 170 0
	retw.n
.LFE24:
	.size	netbuf_ref, .-netbuf_ref
	.section	.rodata.str1.4
	.align	4
.LC11:
	.string	"netbuf_chain: invalid head"
	.align	4
.LC13:
	.string	"netbuf_chain: invalid tail"
	.section	.text.netbuf_chain,"ax",@progbits
	.literal_position
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.align	4
	.global	netbuf_chain
	.type	netbuf_chain, @function
netbuf_chain:
.LFB25:
	.loc 1 181 0
.LVL28:
	entry	sp, 32
.LCFI5:
	.loc 1 182 0
	bnez.n	a2, .L22
	.loc 1 182 0 discriminator 1
	l32r	a10, .LC12
	call8	puts
.LVL29:
	retw.n
.L22:
	.loc 1 183 0
	bnez.n	a3, .L24
	.loc 1 183 0 discriminator 1
	l32r	a10, .LC14
	call8	puts
.LVL30:
	retw.n
.L24:
	.loc 1 184 0
	l32i.n	a11, a3, 0
	l32i.n	a10, a2, 0
	call8	pbuf_cat
.LVL31:
	.loc 1 185 0
	l32i.n	a8, a2, 0
	s32i.n	a8, a2, 4
	.loc 1 186 0
	mov.n	a11, a3
	movi.n	a10, 5
	call8	memp_free
.LVL32:
	retw.n
.LFE25:
	.size	netbuf_chain, .-netbuf_chain
	.section	.rodata.str1.4
	.align	4
.LC15:
	.string	"netbuf_data: invalid buf"
	.align	4
.LC17:
	.string	"netbuf_data: invalid dataptr"
	.align	4
.LC19:
	.string	"netbuf_data: invalid len"
	.section	.text.netbuf_data,"ax",@progbits
	.literal_position
	.literal .LC16, .LC15
	.literal .LC18, .LC17
	.literal .LC20, .LC19
	.align	4
	.global	netbuf_data
	.type	netbuf_data, @function
netbuf_data:
.LFB26:
	.loc 1 201 0
.LVL33:
	entry	sp, 32
.LCFI6:
	.loc 1 202 0
	bnez.n	a2, .L26
	.loc 1 202 0 discriminator 1
	l32r	a10, .LC16
	call8	puts
.LVL34:
	movi	a2, 0xf0
.LVL35:
	retw.n
.LVL36:
.L26:
	.loc 1 203 0
	bnez.n	a3, .L28
	.loc 1 203 0 discriminator 1
	l32r	a10, .LC18
	call8	puts
.LVL37:
	movi	a2, 0xf0
.LVL38:
	retw.n
.LVL39:
.L28:
	.loc 1 204 0
	bnez.n	a4, .L29
	.loc 1 204 0 discriminator 1
	l32r	a10, .LC20
	call8	puts
.LVL40:
	movi	a2, 0xf0
.LVL41:
	retw.n
.LVL42:
.L29:
	.loc 1 206 0
	l32i.n	a8, a2, 4
	beqz.n	a8, .L30
	.loc 1 209 0
	l32i.n	a8, a8, 4
	s32i.n	a8, a3, 0
	.loc 1 210 0
	l32i.n	a2, a2, 4
.LVL43:
	l16ui	a2, a2, 10
	s16i	a2, a4, 0
	.loc 1 211 0
	movi.n	a2, 0
	retw.n
.LVL44:
.L30:
	.loc 1 207 0
	movi	a2, 0xfe
.LVL45:
	.loc 1 212 0
	retw.n
.LFE26:
	.size	netbuf_data, .-netbuf_data
	.section	.rodata.str1.4
	.align	4
.LC21:
	.string	"netbuf_next: invalid buf"
	.section	.text.netbuf_next,"ax",@progbits
	.literal_position
	.literal .LC22, .LC21
	.align	4
	.global	netbuf_next
	.type	netbuf_next, @function
netbuf_next:
.LFB27:
	.loc 1 227 0
.LVL46:
	entry	sp, 32
.LCFI7:
	.loc 1 228 0
	bnez.n	a2, .L32
	.loc 1 228 0 discriminator 1
	l32r	a10, .LC22
	call8	puts
.LVL47:
	movi	a2, 0xff
.LVL48:
	retw.n
.LVL49:
.L32:
	.loc 1 229 0
	l32i.n	a8, a2, 4
	l32i.n	a8, a8, 0
	beqz.n	a8, .L34
	.loc 1 232 0
	s32i.n	a8, a2, 4
	.loc 1 233 0
	l32i.n	a2, a8, 0
.LVL50:
	bnez.n	a2, .L35
	.loc 1 234 0
	movi.n	a2, 1
	retw.n
.LVL51:
.L34:
	.loc 1 230 0
	movi	a2, 0xff
.LVL52:
	retw.n
.L35:
	.loc 1 236 0
	movi.n	a2, 0
	.loc 1 237 0
	retw.n
.LFE27:
	.size	netbuf_next, .-netbuf_next
	.section	.rodata.str1.4
	.align	4
.LC23:
	.string	"netbuf_first: invalid buf"
	.section	.text.netbuf_first,"ax",@progbits
	.literal_position
	.literal .LC24, .LC23
	.align	4
	.global	netbuf_first
	.type	netbuf_first, @function
netbuf_first:
.LFB28:
	.loc 1 249 0
.LVL53:
	entry	sp, 32
.LCFI8:
	.loc 1 250 0
	bnez.n	a2, .L37
	.loc 1 250 0 discriminator 1
	l32r	a10, .LC24
	call8	puts
.LVL54:
	retw.n
.L37:
	.loc 1 251 0
	l32i.n	a8, a2, 0
	s32i.n	a8, a2, 4
	retw.n
.LFE28:
	.size	netbuf_first, .-netbuf_first
	.section	.rodata.__func__$6133,"a",@progbits
	.align	4
	.type	__func__$6133, @object
	.size	__func__$6133, 13
__func__$6133:
	.string	"netbuf_alloc"
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
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI8-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/err.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/pbuf.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/netbuf.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/memp.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdio.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7b0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0xc
	.4byte	.LASF106
	.4byte	.LASF107
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0x7
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x14
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x21
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc4
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x39
	.4byte	0xae
	.uleb128 0x8
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.byte	0x3d
	.4byte	0x165
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0
	.uleb128 0xa
	.4byte	.LASF22
	.sleb128 -1
	.uleb128 0xa
	.4byte	.LASF23
	.sleb128 -2
	.uleb128 0xa
	.4byte	.LASF24
	.sleb128 -3
	.uleb128 0xa
	.4byte	.LASF25
	.sleb128 -4
	.uleb128 0xa
	.4byte	.LASF26
	.sleb128 -5
	.uleb128 0xa
	.4byte	.LASF27
	.sleb128 -6
	.uleb128 0xa
	.4byte	.LASF28
	.sleb128 -7
	.uleb128 0xa
	.4byte	.LASF29
	.sleb128 -8
	.uleb128 0xa
	.4byte	.LASF30
	.sleb128 -9
	.uleb128 0xa
	.4byte	.LASF31
	.sleb128 -10
	.uleb128 0xa
	.4byte	.LASF32
	.sleb128 -11
	.uleb128 0xa
	.4byte	.LASF33
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF34
	.sleb128 -13
	.uleb128 0xa
	.4byte	.LASF35
	.sleb128 -14
	.uleb128 0xa
	.4byte	.LASF36
	.sleb128 -15
	.uleb128 0xa
	.4byte	.LASF37
	.sleb128 -16
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x48
	.4byte	0x190
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x65
	.4byte	0x1b5
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x18
	.byte	0x5
	.byte	0x8e
	.4byte	0x22e
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x5
	.byte	0x90
	.4byte	0x22e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x5
	.byte	0x93
	.4byte	0x97
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x5
	.byte	0x9c
	.4byte	0xc4
	.byte	0x8
	.uleb128 0xd
	.string	"len"
	.byte	0x5
	.byte	0x9f
	.4byte	0xc4
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x5
	.byte	0xa2
	.4byte	0xb9
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x5
	.byte	0xa5
	.4byte	0xb9
	.byte	0xd
	.uleb128 0xd
	.string	"ref"
	.byte	0x5
	.byte	0xac
	.4byte	0xc4
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x5
	.byte	0xaf
	.4byte	0x239
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x5
	.byte	0xb0
	.4byte	0x97
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1b5
	.uleb128 0xe
	.4byte	.LASF108
	.uleb128 0x6
	.byte	0x4
	.4byte	0x234
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x8
	.byte	0x5
	.byte	0xb9
	.4byte	0x264
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x5
	.byte	0xbb
	.4byte	0x22e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x5
	.byte	0xbe
	.4byte	0xa7
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x4
	.byte	0x6
	.byte	0x33
	.4byte	0x27d
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x6
	.byte	0x34
	.4byte	0xcf
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0x6
	.byte	0x39
	.4byte	0x264
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x10
	.byte	0x7
	.byte	0x3a
	.4byte	0x2a1
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0x3b
	.4byte	0x2a1
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0xcf
	.4byte	0x2b1
	.uleb128 0x10
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x7
	.byte	0x3f
	.4byte	0x288
	.uleb128 0x11
	.byte	0x10
	.byte	0x8
	.byte	0x46
	.4byte	0x2db
	.uleb128 0x12
	.string	"ip6"
	.byte	0x8
	.byte	0x47
	.4byte	0x2b1
	.uleb128 0x12
	.string	"ip4"
	.byte	0x8
	.byte	0x48
	.4byte	0x27d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x14
	.byte	0x8
	.byte	0x45
	.4byte	0x300
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x8
	.byte	0x49
	.4byte	0x2bc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x8
	.byte	0x4b
	.4byte	0xb9
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x8
	.byte	0x4c
	.4byte	0x2db
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x20
	.byte	0x9
	.byte	0x3c
	.4byte	0x346
	.uleb128 0xd
	.string	"p"
	.byte	0x9
	.byte	0x3d
	.4byte	0x22e
	.byte	0
	.uleb128 0xd
	.string	"ptr"
	.byte	0x9
	.byte	0x3d
	.4byte	0x22e
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x9
	.byte	0x3e
	.4byte	0x300
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x9
	.byte	0x3f
	.4byte	0xc4
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0xa
	.byte	0x34
	.4byte	0x3c5
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x12
	.byte	0
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0x1
	.byte	0x3f
	.4byte	0x41a
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41a
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.byte	0x41
	.4byte	0x41a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LVL0
	.4byte	0x75d
	.4byte	0x3fe
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x17
	.4byte	.LVL2
	.4byte	0x768
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x30b
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x1
	.byte	0x51
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x461
	.uleb128 0x19
	.string	"buf"
	.byte	0x1
	.byte	0x51
	.4byte	0x41a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	.LVL4
	.4byte	0x771
	.uleb128 0x17
	.4byte	.LVL5
	.4byte	0x77c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF86
	.byte	0x1
	.byte	0x6a
	.4byte	0x97
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50f
	.uleb128 0x1b
	.string	"buf"
	.byte	0x1
	.byte	0x6a
	.4byte	0x41a
	.4byte	.LLST0
	.uleb128 0x1c
	.4byte	.LASF87
	.byte	0x1
	.byte	0x6a
	.4byte	0xc4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF109
	.4byte	0x51f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6133
	.uleb128 0x15
	.4byte	.LVL7
	.4byte	0x787
	.4byte	0x4bc
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL8
	.4byte	0x771
	.uleb128 0x15
	.4byte	.LVL9
	.4byte	0x792
	.4byte	0x4e3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL10
	.4byte	0x79d
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x77
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6133
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0xa0
	.4byte	0x51f
	.uleb128 0x10
	.4byte	0x90
	.byte	0xc
	.byte	0
	.uleb128 0x1e
	.4byte	0x50f
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0x1
	.byte	0x87
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x567
	.uleb128 0x19
	.string	"buf"
	.byte	0x1
	.byte	0x87
	.4byte	0x41a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LVL15
	.4byte	0x787
	.4byte	0x55d
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL16
	.4byte	0x771
	.byte	0
	.uleb128 0x13
	.4byte	.LASF90
	.byte	0x1
	.byte	0x9b
	.4byte	0xe7
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e5
	.uleb128 0x1b
	.string	"buf"
	.byte	0x1
	.byte	0x9b
	.4byte	0x41a
	.4byte	.LLST1
	.uleb128 0x1f
	.4byte	.LASF91
	.byte	0x1
	.byte	0x9b
	.4byte	0xa7
	.4byte	.LLST2
	.uleb128 0x1c
	.4byte	.LASF87
	.byte	0x1
	.byte	0x9b
	.4byte	0xc4
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.4byte	.LVL18
	.4byte	0x787
	.4byte	0x5c2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL21
	.4byte	0x771
	.uleb128 0x17
	.4byte	.LVL22
	.4byte	0x792
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF92
	.byte	0x1
	.byte	0xb4
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x661
	.uleb128 0x1c
	.4byte	.LASF93
	.byte	0x1
	.byte	0xb4
	.4byte	0x41a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LASF94
	.byte	0x1
	.byte	0xb4
	.4byte	0x41a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LVL29
	.4byte	0x787
	.4byte	0x62b
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x15
	.4byte	.LVL30
	.4byte	0x787
	.4byte	0x642
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL31
	.4byte	0x7a8
	.uleb128 0x17
	.4byte	.LVL32
	.4byte	0x77c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF95
	.byte	0x1
	.byte	0xc8
	.4byte	0xe7
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e5
	.uleb128 0x1b
	.string	"buf"
	.byte	0x1
	.byte	0xc8
	.4byte	0x41a
	.4byte	.LLST3
	.uleb128 0x1c
	.4byte	.LASF91
	.byte	0x1
	.byte	0xc8
	.4byte	0x6e5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.byte	0xc8
	.4byte	0xe1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.4byte	.LVL34
	.4byte	0x787
	.4byte	0x6ba
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x15
	.4byte	.LVL37
	.4byte	0x787
	.4byte	0x6d1
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.uleb128 0x17
	.4byte	.LVL40
	.4byte	0x787
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x97
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0x1
	.byte	0xe2
	.4byte	0xae
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x727
	.uleb128 0x1b
	.string	"buf"
	.byte	0x1
	.byte	0xe2
	.4byte	0x41a
	.4byte	.LLST4
	.uleb128 0x17
	.4byte	.LVL47
	.4byte	0x787
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x1
	.byte	0xf8
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x75d
	.uleb128 0x19
	.string	"buf"
	.byte	0x1
	.byte	0xf8
	.4byte	0x41a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.4byte	.LVL54
	.4byte	0x787
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0xa
	.byte	0x93
	.uleb128 0x21
	.4byte	.LASF110
	.4byte	.LASF110
	.uleb128 0x20
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x5
	.byte	0xee
	.uleb128 0x20
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0xa
	.byte	0x95
	.uleb128 0x20
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0xb
	.byte	0xc7
	.uleb128 0x20
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x5
	.byte	0xe4
	.uleb128 0x20
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0xc
	.byte	0x29
	.uleb128 0x20
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x5
	.byte	0xf0
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x12
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL6
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL20
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
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL17
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23
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
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL33
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
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
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
.LASF82:
	.string	"MEMP_PBUF"
.LASF99:
	.string	"pbuf_free"
.LASF100:
	.string	"memp_free"
.LASF75:
	.string	"MEMP_ARP_QUEUE"
.LASF62:
	.string	"u_addr"
.LASF95:
	.string	"netbuf_data"
.LASF15:
	.string	"int8_t"
.LASF86:
	.string	"netbuf_alloc"
.LASF22:
	.string	"ERR_MEM"
.LASF31:
	.string	"ERR_ISCONN"
.LASF50:
	.string	"type"
.LASF79:
	.string	"MEMP_ND6_QUEUE"
.LASF70:
	.string	"MEMP_TCP_SEG"
.LASF12:
	.string	"sizetype"
.LASF36:
	.string	"ERR_CLSD"
.LASF108:
	.string	"netif"
.LASF9:
	.string	"long long int"
.LASF8:
	.string	"__uint32_t"
.LASF74:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF7:
	.string	"__uint16_t"
.LASF59:
	.string	"ip6_addr"
.LASF102:
	.string	"pbuf_alloc"
.LASF6:
	.string	"short int"
.LASF77:
	.string	"MEMP_SYS_TIMEOUT"
.LASF93:
	.string	"head"
.LASF16:
	.string	"uint8_t"
.LASF69:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF61:
	.string	"ip_addr"
.LASF106:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/api/netbuf.c"
.LASF35:
	.string	"ERR_RST"
.LASF18:
	.string	"uint32_t"
.LASF45:
	.string	"PBUF_REF"
.LASF26:
	.string	"ERR_INPROGRESS"
.LASF78:
	.string	"MEMP_NETDB"
.LASF55:
	.string	"pbuf_rom"
.LASF104:
	.string	"pbuf_cat"
.LASF10:
	.string	"long long unsigned int"
.LASF90:
	.string	"netbuf_ref"
.LASF64:
	.string	"netbuf"
.LASF110:
	.string	"memset"
.LASF54:
	.string	"pbuf"
.LASF11:
	.string	"long int"
.LASF63:
	.string	"ip_addr_t"
.LASF57:
	.string	"addr"
.LASF30:
	.string	"ERR_ALREADY"
.LASF80:
	.string	"MEMP_IP6_REASSDATA"
.LASF4:
	.string	"__uint8_t"
.LASF107:
	.string	"/home/raphael/rtone/lcd/build/lwip"
.LASF96:
	.string	"netbuf_next"
.LASF5:
	.string	"unsigned char"
.LASF94:
	.string	"tail"
.LASF25:
	.string	"ERR_RTE"
.LASF109:
	.string	"__func__"
.LASF32:
	.string	"ERR_CONN"
.LASF84:
	.string	"MEMP_MAX"
.LASF2:
	.string	"signed char"
.LASF51:
	.string	"flags"
.LASF103:
	.string	"__assert_func"
.LASF53:
	.string	"l2_buf"
.LASF0:
	.string	"unsigned int"
.LASF17:
	.string	"uint16_t"
.LASF34:
	.string	"ERR_ABRT"
.LASF76:
	.string	"MEMP_IGMP_GROUP"
.LASF42:
	.string	"PBUF_RAW"
.LASF101:
	.string	"puts"
.LASF60:
	.string	"ip6_addr_t"
.LASF23:
	.string	"ERR_BUF"
.LASF46:
	.string	"PBUF_POOL"
.LASF3:
	.string	"__int8_t"
.LASF87:
	.string	"size"
.LASF89:
	.string	"netbuf_free"
.LASF33:
	.string	"ERR_IF"
.LASF14:
	.string	"char"
.LASF41:
	.string	"PBUF_RAW_TX"
.LASF73:
	.string	"MEMP_TCPIP_MSG_API"
.LASF81:
	.string	"MEMP_MLD6_GROUP"
.LASF24:
	.string	"ERR_TIMEOUT"
.LASF19:
	.string	"_Bool"
.LASF56:
	.string	"ip4_addr"
.LASF28:
	.string	"ERR_WOULDBLOCK"
.LASF92:
	.string	"netbuf_chain"
.LASF52:
	.string	"l2_owner"
.LASF38:
	.string	"PBUF_TRANSPORT"
.LASF1:
	.string	"short unsigned int"
.LASF39:
	.string	"PBUF_IP"
.LASF65:
	.string	"port"
.LASF97:
	.string	"netbuf_first"
.LASF13:
	.string	"long unsigned int"
.LASF66:
	.string	"MEMP_RAW_PCB"
.LASF58:
	.string	"ip4_addr_t"
.LASF37:
	.string	"ERR_ARG"
.LASF88:
	.string	"netbuf_delete"
.LASF21:
	.string	"ERR_OK"
.LASF43:
	.string	"PBUF_RAM"
.LASF83:
	.string	"MEMP_PBUF_POOL"
.LASF29:
	.string	"ERR_USE"
.LASF40:
	.string	"PBUF_LINK"
.LASF85:
	.string	"netbuf_new"
.LASF72:
	.string	"MEMP_NETCONN"
.LASF91:
	.string	"dataptr"
.LASF49:
	.string	"tot_len"
.LASF68:
	.string	"MEMP_TCP_PCB"
.LASF98:
	.string	"memp_malloc"
.LASF67:
	.string	"MEMP_UDP_PCB"
.LASF105:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF27:
	.string	"ERR_VAL"
.LASF44:
	.string	"PBUF_ROM"
.LASF48:
	.string	"payload"
.LASF47:
	.string	"next"
.LASF71:
	.string	"MEMP_NETBUF"
.LASF20:
	.string	"err_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
