	.file	"list.c"
	.text
.Ltext0:
	.section	.text.list_init,"ax",@progbits
	.align	4
	.global	list_init
	.type	list_init, @function
list_init:
.LFB19:
	.file 1 "/home/raphael/rtone/lcd/components/spiffs/list.c"
	.loc 1 39 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 41 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, a2
	call8	mtx_init
.LVL1:
	.loc 1 43 0
	mov.n	a10, a2
	call8	mtx_lock
.LVL2:
	.loc 1 45 0
	movi.n	a8, 0
	s8i	a8, a2, 12
	.loc 1 46 0
	movi.n	a8, 0
	s32i.n	a8, a2, 8
	.loc 1 47 0
	s32i.n	a8, a2, 4
	.loc 1 48 0
	s8i	a3, a2, 13
	.loc 1 50 0
	mov.n	a10, a2
	call8	mtx_unlock
.LVL3:
	retw.n
.LFE19:
	.size	list_init, .-list_init
	.section	.text.list_add,"ax",@progbits
	.align	4
	.global	list_add
	.type	list_add, @function
list_add:
.LFB20:
	.loc 1 53 0
.LVL4:
	entry	sp, 32
.LCFI1:
.LVL5:
	.loc 1 58 0
	mov.n	a10, a2
	call8	mtx_lock
.LVL6:
	.loc 1 61 0
	l32i.n	a10, a2, 8
	beqz.n	a10, .L8
.LVL7:
	.loc 1 64 0
	l32i.n	a5, a10, 8
	s32i.n	a5, a2, 8
	.loc 1 56 0
	movi.n	a5, 0
	j	.L3
.LVL8:
.L8:
	.loc 1 67 0
	movi.n	a5, 1
.LVL9:
.L3:
	.loc 1 70 0
	beqz.n	a5, .L4
	.loc 1 72 0
	l8ui	a6, a2, 12
	addi.n	a6, a6, 1
	extui	a6, a6, 0, 8
	s8i	a6, a2, 12
	.loc 1 75 0
	addx2	a5, a6, a6
.LVL10:
	slli	a10, a5, 2
.LVL11:
	call8	malloc
.LVL12:
	mov.n	a5, a10
.LVL13:
	.loc 1 76 0
	bnez.n	a10, .L5
	.loc 1 77 0
	mov.n	a10, a2
	call8	mtx_unlock
.LVL14:
	.loc 1 78 0
	movi.n	a2, 0xc
.LVL15:
	retw.n
.LVL16:
.L5:
	.loc 1 81 0
	l32i.n	a10, a2, 4
	beqz.n	a10, .L7
	.loc 1 83 0
	addi.n	a6, a6, -1
	addx2	a6, a6, a6
	slli	a12, a6, 2
	mov.n	a11, a5
	call8	bcopy
.LVL17:
	.loc 1 86 0
	l32i.n	a10, a2, 4
	call8	free
.LVL18:
.L7:
	.loc 1 90 0
	s32i.n	a5, a2, 4
	.loc 1 93 0
	l8ui	a6, a2, 12
	addx2	a8, a6, a6
	slli	a10, a8, 2
	addi	a10, a10, -12
	add.n	a10, a5, a10
.LVL19:
	.loc 1 96 0
	addi.n	a6, a6, -1
	s8i	a6, a10, 4
.LVL20:
.L4:
	.loc 1 100 0
	movi.n	a5, 0
	s32i.n	a5, a10, 8
	.loc 1 101 0
	s32i.n	a3, a10, 0
	.loc 1 102 0
	s8i	a5, a10, 5
	.loc 1 105 0
	l8ui	a6, a10, 4
	l8ui	a3, a2, 13
.LVL21:
	add.n	a3, a6, a3
	s32i.n	a3, a4, 0
.LVL22:
	.loc 1 107 0
	mov.n	a10, a2
.LVL23:
	call8	mtx_unlock
.LVL24:
	.loc 1 109 0
	mov.n	a2, a5
.LVL25:
	.loc 1 110 0
	retw.n
.LFE20:
	.size	list_add, .-list_add
	.section	.iram1,"ax",@progbits
	.align	4
	.global	list_get
	.type	list_get, @function
list_get:
.LFB21:
	.loc 1 112 0
.LVL26:
	entry	sp, 32
.LCFI2:
.LVL27:
	.loc 1 116 0
	mov.n	a10, a2
	call8	mtx_lock
.LVL28:
	.loc 1 118 0
	l8ui	a8, a2, 12
	bnez.n	a8, .L10
	.loc 1 119 0
	mov.n	a10, a2
	call8	mtx_unlock
.LVL29:
	.loc 1 120 0
	movi.n	a2, 0x16
.LVL30:
	retw.n
.LVL31:
.L10:
	.loc 1 124 0
	l8ui	a9, a2, 13
	bge	a3, a9, .L12
	.loc 1 125 0
	mov.n	a10, a2
	call8	mtx_unlock
.LVL32:
	.loc 1 126 0
	movi.n	a2, 0x16
.LVL33:
	retw.n
.LVL34:
.L12:
	.loc 1 130 0
	sub	a3, a3, a9
.LVL35:
	.loc 1 133 0
	bge	a8, a3, .L13
	.loc 1 134 0
	mov.n	a10, a2
	call8	mtx_unlock
.LVL36:
	.loc 1 135 0
	movi.n	a2, 0x16
.LVL37:
	retw.n
.LVL38:
.L13:
	.loc 1 138 0
	l32i.n	a9, a2, 4
	addx2	a3, a3, a3
.LVL39:
	slli	a8, a3, 2
	add.n	a8, a9, a8
.LVL40:
	.loc 1 140 0
	l8ui	a3, a8, 5
	beqz.n	a3, .L14
	.loc 1 141 0
	mov.n	a10, a2
	call8	mtx_unlock
.LVL41:
	.loc 1 142 0
	movi.n	a2, 0x16
.LVL42:
	retw.n
.LVL43:
.L14:
	.loc 1 145 0
	l32i.n	a3, a8, 0
	s32i.n	a3, a4, 0
.LVL44:
	.loc 1 147 0
	mov.n	a10, a2
	call8	mtx_unlock
.LVL45:
	.loc 1 149 0
	movi.n	a2, 0
.LVL46:
	.loc 1 150 0
	retw.n
.LFE21:
	.size	list_get, .-list_get
	.section	.text.list_remove,"ax",@progbits
	.align	4
	.global	list_remove
	.type	list_remove, @function
list_remove:
.LFB22:
	.loc 1 152 0
.LVL47:
	entry	sp, 32
.LCFI3:
.LVL48:
	.loc 1 156 0
	mov.n	a10, a2
	call8	mtx_lock
.LVL49:
	.loc 1 159 0
	l8ui	a8, a2, 13
	bge	a3, a8, .L16
	.loc 1 160 0
	mov.n	a10, a2
	call8	mtx_unlock
.LVL50:
	.loc 1 161 0
	movi.n	a2, 0x16
.LVL51:
	retw.n
.LVL52:
.L16:
	.loc 1 165 0
	sub	a3, a3, a8
.LVL53:
	.loc 1 168 0
	bltz	a3, .L18
	.loc 1 168 0 is_stmt 0 discriminator 1
	l8ui	a8, a2, 12
	bge	a8, a3, .L19
.L18:
	.loc 1 169 0 is_stmt 1
	mov.n	a10, a2
	call8	mtx_unlock
.LVL54:
	.loc 1 170 0
	movi.n	a2, 0x16
.LVL55:
	retw.n
.LVL56:
.L19:
	.loc 1 173 0
	l32i.n	a9, a2, 4
	addx2	a3, a3, a3
.LVL57:
	slli	a8, a3, 2
	add.n	a3, a9, a8
.LVL58:
	.loc 1 175 0
	beqz.n	a4, .L20
	.loc 1 176 0
	l32i.n	a10, a3, 0
	call8	free
.LVL59:
.L20:
	.loc 1 179 0
	l32i.n	a4, a2, 8
.LVL60:
	s32i.n	a4, a3, 8
	.loc 1 180 0
	movi.n	a4, 1
	s8i	a4, a3, 5
	.loc 1 181 0
	s32i.n	a3, a2, 8
	.loc 1 183 0
	mov.n	a10, a2
	call8	mtx_unlock
.LVL61:
	.loc 1 185 0
	movi.n	a2, 0
.LVL62:
	.loc 1 186 0
	retw.n
.LFE22:
	.size	list_remove, .-list_remove
	.section	.iram1
	.align	4
	.global	list_first
	.type	list_first, @function
list_first:
.LFB23:
	.loc 1 188 0
.LVL63:
	entry	sp, 32
.LCFI4:
	mov.n	a3, a2
.LVL64:
	.loc 1 192 0
	mov.n	a10, a2
	call8	mtx_lock
.LVL65:
	.loc 1 194 0
	movi.n	a8, 0
	j	.L22
.LVL66:
.L25:
	.loc 1 195 0
	l32i.n	a11, a3, 4
	addx2	a10, a8, a8
	slli	a9, a10, 2
	add.n	a9, a11, a9
	l8ui	a9, a9, 5
	bnez.n	a9, .L23
	.loc 1 196 0
	l8ui	a2, a3, 13
.LVL67:
	add.n	a2, a8, a2
.LVL68:
	.loc 1 197 0
	j	.L24
.LVL69:
.L23:
	.loc 1 194 0 discriminator 2
	addi.n	a8, a8, 1
.LVL70:
.L22:
	.loc 1 194 0 is_stmt 0 discriminator 1
	l8ui	a9, a3, 12
	blt	a8, a9, .L25
	.loc 1 190 0 is_stmt 1
	movi.n	a2, -1
.LVL71:
.L24:
	.loc 1 201 0
	mov.n	a10, a3
	call8	mtx_unlock
.LVL72:
	.loc 1 204 0
	retw.n
.LFE23:
	.size	list_first, .-list_first
	.align	4
	.global	list_next
	.type	list_next, @function
list_next:
.LFB24:
	.loc 1 206 0
.LVL73:
	entry	sp, 32
.LCFI5:
.LVL74:
	.loc 1 210 0
	mov.n	a10, a2
	call8	mtx_lock
.LVL75:
	.loc 1 213 0
	l8ui	a11, a2, 13
	bge	a3, a11, .L27
	.loc 1 214 0
	mov.n	a10, a2
	call8	mtx_unlock
.LVL76:
	.loc 1 215 0
	movi.n	a2, -1
.LVL77:
	retw.n
.LVL78:
.L27:
	.loc 1 219 0
	sub	a3, a3, a11
.LVL79:
	addi.n	a8, a3, 1
.LVL80:
	.loc 1 222 0
	j	.L29
.L32:
	.loc 1 223 0
	l32i.n	a10, a2, 4
	addx2	a9, a8, a8
	slli	a3, a9, 2
	add.n	a3, a10, a3
	l8ui	a3, a3, 5
	bnez.n	a3, .L30
	.loc 1 224 0
	add.n	a3, a8, a11
.LVL81:
	.loc 1 225 0
	j	.L31
.LVL82:
.L30:
	.loc 1 222 0
	addi.n	a8, a8, 1
.LVL83:
.L29:
	.loc 1 222 0 is_stmt 0 discriminator 1
	l8ui	a3, a2, 12
	blt	a8, a3, .L32
	.loc 1 207 0 is_stmt 1
	movi.n	a3, -1
.LVL84:
.L31:
	.loc 1 229 0
	mov.n	a10, a2
	call8	mtx_unlock
.LVL85:
	.loc 1 231 0
	mov.n	a2, a3
.LVL86:
	.loc 1 232 0
	retw.n
.LFE24:
	.size	list_next, .-list_next
	.section	.text.list_destroy,"ax",@progbits
	.align	4
	.global	list_destroy
	.type	list_destroy, @function
list_destroy:
.LFB25:
	.loc 1 234 0
.LVL87:
	entry	sp, 32
.LCFI6:
	.loc 1 237 0
	mov.n	a10, a2
	call8	mtx_lock
.LVL88:
	.loc 1 239 0
	bnez.n	a3, .L38
	j	.L35
.LVL89:
.L37:
	.loc 1 241 0
	l32i.n	a10, a2, 4
	addx2	a9, a3, a3
	slli	a8, a9, 2
	add.n	a8, a10, a8
	l8ui	a9, a8, 5
	bnez.n	a9, .L36
	.loc 1 242 0
	l32i.n	a10, a8, 0
	call8	free
.LVL90:
.L36:
	.loc 1 240 0 discriminator 2
	addi.n	a3, a3, 1
.LVL91:
	j	.L34
.LVL92:
.L38:
	movi.n	a3, 0
.LVL93:
.L34:
	.loc 1 240 0 is_stmt 0 discriminator 1
	l8ui	a8, a2, 12
	blt	a3, a8, .L37
.LVL94:
.L35:
	.loc 1 247 0 is_stmt 1
	l32i.n	a10, a2, 4
	call8	free
.LVL95:
	.loc 1 249 0
	mov.n	a10, a2
	call8	mtx_unlock
.LVL96:
	.loc 1 250 0
	mov.n	a10, a2
	call8	mtx_destroy
.LVL97:
	retw.n
.LFE25:
	.size	list_destroy, .-list_destroy
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI0-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI1-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI2-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI3-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI4-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI5-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI6-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/queue.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 6 "/home/raphael/rtone/lcd/components/spiffs/list.h"
	.file 7 "/home/raphael/rtone/lcd/components/spiffs/mutex.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x620
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0xc
	.4byte	.LASF47
	.4byte	.LASF48
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
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
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x58
	.4byte	0x76
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x5
	.byte	0x4f
	.4byte	0x98
	.uleb128 0x6
	.string	"mtx"
	.byte	0x4
	.byte	0x7
	.byte	0x29
	.4byte	0xc7
	.uleb128 0x7
	.string	"sem"
	.byte	0x7
	.byte	0x2a
	.4byte	0xa3
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x10
	.byte	0x6
	.byte	0x24
	.4byte	0x110
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x6
	.byte	0x25
	.4byte	0xae
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x6
	.byte	0x26
	.4byte	0x14d
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x6
	.byte	0x27
	.4byte	0x14d
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x6
	.byte	0x28
	.4byte	0x86
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x6
	.byte	0x29
	.4byte	0x86
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0xc
	.byte	0x6
	.byte	0x2c
	.4byte	0x14d
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x6
	.byte	0x2d
	.4byte	0x76
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x6
	.byte	0x2e
	.4byte	0x86
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x6
	.byte	0x2f
	.4byte	0x86
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x6
	.byte	0x30
	.4byte	0x14d
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x110
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x1
	.byte	0x27
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ca
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x27
	.4byte	0x1ca
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x27
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LVL1
	.4byte	0x5d6
	.4byte	0x1a5
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xd
	.4byte	.LVL2
	.4byte	0x5e1
	.4byte	0x1b9
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL3
	.4byte	0x5ec
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xc7
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0x35
	.4byte	0x25
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b5
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x1
	.byte	0x35
	.4byte	0x1ca
	.4byte	.LLST0
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x1
	.byte	0x35
	.4byte	0x76
	.4byte	.LLST1
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x35
	.4byte	0x2b5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.4byte	.LASF18
	.byte	0x1
	.byte	0x36
	.4byte	0x14d
	.4byte	.LLST2
	.uleb128 0x12
	.4byte	.LASF27
	.byte	0x1
	.byte	0x37
	.4byte	0x14d
	.4byte	.LLST3
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0x1
	.byte	0x38
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0xd
	.4byte	.LVL6
	.4byte	0x5e1
	.4byte	0x255
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL12
	.4byte	0x5f7
	.4byte	0x26b
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x75
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0
	.uleb128 0xd
	.4byte	.LVL14
	.4byte	0x5ec
	.4byte	0x27f
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL17
	.4byte	0x602
	.4byte	0x29b
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0
	.uleb128 0x13
	.4byte	.LVL18
	.4byte	0x60d
	.uleb128 0xf
	.4byte	.LVL24
	.4byte	0x5ec
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x25
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0x70
	.4byte	0x25
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x392
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x1
	.byte	0x70
	.4byte	0x1ca
	.4byte	.LLST5
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x1
	.byte	0x70
	.4byte	0x25
	.4byte	.LLST6
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x70
	.4byte	0x392
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.byte	0x71
	.4byte	0x14d
	.4byte	.LLST7
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.byte	0x72
	.4byte	0x25
	.4byte	.LLST8
	.uleb128 0xd
	.4byte	.LVL28
	.4byte	0x5e1
	.4byte	0x331
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL29
	.4byte	0x5ec
	.4byte	0x345
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL32
	.4byte	0x5ec
	.4byte	0x359
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL36
	.4byte	0x5ec
	.4byte	0x36d
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL41
	.4byte	0x5ec
	.4byte	0x381
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL45
	.4byte	0x5ec
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x76
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x98
	.4byte	0x25
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x452
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x1
	.byte	0x98
	.4byte	0x1ca
	.4byte	.LLST9
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x1
	.byte	0x98
	.4byte	0x25
	.4byte	.LLST10
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0x98
	.4byte	0x25
	.4byte	.LLST11
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.byte	0x99
	.4byte	0x14d
	.4byte	.LLST12
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.byte	0x9a
	.4byte	0x25
	.4byte	.LLST13
	.uleb128 0xd
	.4byte	.LVL49
	.4byte	0x5e1
	.4byte	0x410
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL50
	.4byte	0x5ec
	.4byte	0x424
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL54
	.4byte	0x5ec
	.4byte	0x438
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL59
	.4byte	0x60d
	.uleb128 0xf
	.4byte	.LVL61
	.4byte	0x5ec
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0xbc
	.4byte	0x25
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4bd
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x1
	.byte	0xbc
	.4byte	0x1ca
	.4byte	.LLST14
	.uleb128 0x12
	.4byte	.LASF18
	.byte	0x1
	.byte	0xbd
	.4byte	0x25
	.4byte	.LLST15
	.uleb128 0x14
	.string	"res"
	.byte	0x1
	.byte	0xbe
	.4byte	0x25
	.4byte	.LLST16
	.uleb128 0xd
	.4byte	.LVL65
	.4byte	0x5e1
	.4byte	0x4ac
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL72
	.4byte	0x5ec
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x1
	.byte	0xce
	.4byte	0x25
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54b
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x1
	.byte	0xce
	.4byte	0x1ca
	.4byte	.LLST17
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x1
	.byte	0xce
	.4byte	0x25
	.4byte	.LLST18
	.uleb128 0x14
	.string	"res"
	.byte	0x1
	.byte	0xcf
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.byte	0xd0
	.4byte	0x25
	.4byte	.LLST20
	.uleb128 0xd
	.4byte	.LVL75
	.4byte	0x5e1
	.4byte	0x526
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL76
	.4byte	0x5ec
	.4byte	0x53a
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL85
	.4byte	0x5ec
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x1
	.byte	0xea
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d6
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0xea
	.4byte	0x1ca
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x1
	.byte	0xea
	.4byte	0x25
	.4byte	.LLST21
	.uleb128 0x12
	.4byte	.LASF18
	.byte	0x1
	.byte	0xeb
	.4byte	0x25
	.4byte	.LLST22
	.uleb128 0xd
	.4byte	.LVL88
	.4byte	0x5e1
	.4byte	0x59f
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL90
	.4byte	0x60d
	.uleb128 0x13
	.4byte	.LVL95
	.4byte	0x60d
	.uleb128 0xd
	.4byte	.LVL96
	.4byte	0x5ec
	.4byte	0x5c5
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL97
	.4byte	0x618
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x7
	.byte	0x2e
	.uleb128 0x15
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x7
	.byte	0x2f
	.uleb128 0x15
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x7
	.byte	0x31
	.uleb128 0x15
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x8
	.byte	0x65
	.uleb128 0x15
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x9
	.byte	0x33
	.uleb128 0x15
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x8
	.byte	0x5a
	.uleb128 0x15
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x7
	.byte	0x32
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
	.uleb128 0x8
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x17
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
	.4byte	.LVL4
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	.LVL22
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL26
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
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL26
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL27
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL43
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39
	.4byte	.LVL41-1
	.2byte	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x72
	.sleb128 13
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x72
	.sleb128 13
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL47
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
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL47
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL53
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL47
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL60
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL48
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL53
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57
	.4byte	.LVL59-1
	.2byte	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x72
	.sleb128 13
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL63
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL73
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL73
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL74
	.4byte	.LVL81
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL80
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL89
	.4byte	.LVL92
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL93
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL89
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
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
	.4byte	.LFB19
	.4byte	.LFE19
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
.LASF40:
	.string	"mtx_init"
.LASF11:
	.string	"__uint8_t"
.LASF25:
	.string	"next"
.LASF42:
	.string	"mtx_unlock"
.LASF30:
	.string	"list_get"
.LASF23:
	.string	"item"
.LASF1:
	.string	"short unsigned int"
.LASF14:
	.string	"QueueHandle_t"
.LASF38:
	.string	"list_destroy"
.LASF32:
	.string	"iindex"
.LASF26:
	.string	"item_index"
.LASF46:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF36:
	.string	"list_next"
.LASF6:
	.string	"long long unsigned int"
.LASF31:
	.string	"cindex"
.LASF3:
	.string	"unsigned char"
.LASF22:
	.string	"list_index"
.LASF29:
	.string	"list_add"
.LASF9:
	.string	"long unsigned int"
.LASF16:
	.string	"list"
.LASF37:
	.string	"list_init"
.LASF39:
	.string	"items"
.LASF44:
	.string	"bcopy"
.LASF27:
	.string	"indexa"
.LASF15:
	.string	"SemaphoreHandle_t"
.LASF28:
	.string	"grow"
.LASF0:
	.string	"unsigned int"
.LASF45:
	.string	"mtx_destroy"
.LASF10:
	.string	"char"
.LASF12:
	.string	"uint8_t"
.LASF47:
	.string	"/home/raphael/rtone/lcd/components/spiffs/list.c"
.LASF34:
	.string	"destroy"
.LASF8:
	.string	"sizetype"
.LASF19:
	.string	"free"
.LASF5:
	.string	"long long int"
.LASF48:
	.string	"/home/raphael/rtone/lcd/build/spiffs"
.LASF33:
	.string	"list_remove"
.LASF41:
	.string	"mtx_lock"
.LASF18:
	.string	"index"
.LASF17:
	.string	"mutex"
.LASF4:
	.string	"short int"
.LASF20:
	.string	"indexes"
.LASF21:
	.string	"first_index"
.LASF7:
	.string	"long int"
.LASF35:
	.string	"list_first"
.LASF2:
	.string	"signed char"
.LASF13:
	.string	"_Bool"
.LASF43:
	.string	"malloc"
.LASF24:
	.string	"deleted"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
