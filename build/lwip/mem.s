	.file	"mem.c"
	.text
.Ltext0:
	.section	.text.mem_init,"ax",@progbits
	.align	4
	.global	mem_init
	.type	mem_init, @function
mem_init:
.LFB20:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/core/mem.c"
	.loc 1 76 0
	entry	sp, 32
.LCFI0:
	retw.n
.LFE20:
	.size	mem_init, .-mem_init
	.section	.text.mem_trim,"ax",@progbits
	.align	4
	.global	mem_trim
	.type	mem_trim, @function
mem_trim:
.LFB21:
	.loc 1 85 0
.LVL0:
	.loc 1 85 0
	entry	sp, 32
.LCFI1:
	.loc 1 88 0
	retw.n
.LFE21:
	.size	mem_trim, .-mem_trim
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"malloc() must return aligned memory"
	.align	4
.LC3:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/core/mem.c"
	.section	.text.mem_malloc,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$6013
	.literal .LC4, .LC3
	.align	4
	.global	mem_malloc
	.type	mem_malloc, @function
mem_malloc:
.LFB22:
	.loc 1 123 0
.LVL1:
	entry	sp, 32
.LCFI2:
	.loc 1 124 0
	mov.n	a10, a2
	call8	malloc
.LVL2:
	.loc 1 125 0
	beqz.n	a10, .L4
	.loc 1 128 0
	addi.n	a9, a10, 3
	movi.n	a8, -4
	and	a8, a9, a8
	beq	a10, a8, .L4
	.loc 1 128 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi	a11, 0x80
	l32r	a10, .LC4
.LVL3:
	call8	__assert_func
.LVL4:
.L4:
	.loc 1 136 0 is_stmt 1
	mov.n	a2, a10
.LVL5:
	retw.n
.LFE22:
	.size	mem_malloc, .-mem_malloc
	.section	.rodata.str1.4
	.align	4
.LC5:
	.string	"rmem != NULL"
	.align	4
.LC9:
	.string	"rmem == MEM_ALIGN(rmem)"
	.section	.text.mem_free,"ax",@progbits
	.literal_position
	.literal .LC6, .LC5
	.literal .LC7, __func__$6017
	.literal .LC8, .LC3
	.literal .LC10, .LC9
	.align	4
	.global	mem_free
	.type	mem_free, @function
mem_free:
.LFB23:
	.loc 1 144 0
.LVL6:
	entry	sp, 32
.LCFI3:
	.loc 1 145 0
	bnez.n	a2, .L6
	.loc 1 145 0 discriminator 1
	l32r	a13, .LC6
	l32r	a12, .LC7
	movi	a11, 0x91
	l32r	a10, .LC8
	call8	__assert_func
.LVL7:
.L6:
	.loc 1 146 0
	addi.n	a9, a2, 3
	movi.n	a8, -4
	and	a8, a9, a8
	beq	a2, a8, .L7
	.loc 1 146 0 is_stmt 0 discriminator 1
	l32r	a13, .LC10
	l32r	a12, .LC7
	movi	a11, 0x92
	l32r	a10, .LC8
	call8	__assert_func
.LVL8:
.L7:
	.loc 1 151 0 is_stmt 1
	mov.n	a10, a2
	call8	free
.LVL9:
	retw.n
.LFE23:
	.size	mem_free, .-mem_free
	.section	.text.mem_calloc,"ax",@progbits
	.align	4
	.global	mem_calloc
	.type	mem_calloc, @function
mem_calloc:
.LFB24:
	.loc 1 749 0
.LVL10:
	entry	sp, 32
.LCFI4:
	.loc 1 750 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	calloc
.LVL11:
	.loc 1 751 0
	mov.n	a2, a10
.LVL12:
	retw.n
.LFE24:
	.size	mem_calloc, .-mem_calloc
	.section	.rodata.__func__$6017,"a",@progbits
	.align	4
	.type	__func__$6017, @object
	.size	__func__$6017, 9
__func__$6017:
	.string	"mem_free"
	.section	.rodata.__func__$6013,"a",@progbits
	.align	4
	.type	__func__$6013, @object
	.size	__func__$6013, 11
__func__$6013:
	.string	"mem_malloc"
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
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/port/esp32/include/arch/cc.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/mem.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2b0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0xc
	.4byte	.LASF27
	.4byte	.LASF28
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF12
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x35
	.4byte	0x78
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0x32
	.4byte	0x25
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x1
	.byte	0x4b
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0x54
	.4byte	0x76
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe8
	.uleb128 0x8
	.string	"mem"
	.byte	0x1
	.byte	0x54
	.4byte	0x76
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x54
	.4byte	0x98
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0x7a
	.4byte	0x76
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16e
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0x7a
	.4byte	0x98
	.4byte	.LLST0
	.uleb128 0xb
	.string	"ret"
	.byte	0x1
	.byte	0x7c
	.4byte	0x76
	.4byte	.LLST1
	.uleb128 0xc
	.4byte	.LASF19
	.4byte	0x17e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6013
	.uleb128 0xd
	.4byte	.LVL2
	.4byte	0x287
	.4byte	0x142
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL4
	.4byte	0x292
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6013
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x7f
	.4byte	0x17e
	.uleb128 0x11
	.4byte	0x6f
	.byte	0xa
	.byte	0
	.uleb128 0x12
	.4byte	0x16e
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0x8f
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x223
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x8f
	.4byte	0x76
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xc
	.4byte	.LASF19
	.4byte	0x233
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6017
	.uleb128 0xd
	.4byte	.LVL7
	.4byte	0x292
	.4byte	0x1e3
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x91
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6017
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0xd
	.4byte	.LVL8
	.4byte	0x292
	.4byte	0x212
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x92
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6017
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0xf
	.4byte	.LVL9
	.4byte	0x29d
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x7f
	.4byte	0x233
	.uleb128 0x11
	.4byte	0x6f
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.4byte	0x223
	.uleb128 0x14
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x2ec
	.4byte	0x76
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x287
	.uleb128 0x15
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x2ec
	.4byte	0x98
	.4byte	.LLST2
	.uleb128 0x16
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x2ec
	.4byte	0x98
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LVL11
	.4byte	0x2a8
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x5
	.byte	0x65
	.uleb128 0x17
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x6
	.byte	0x29
	.uleb128 0x17
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x5
	.byte	0x5a
	.uleb128 0x17
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x5
	.byte	0x57
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
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x18
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
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE22
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
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x3
	.byte	0x79
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/core/mem.c"
.LASF12:
	.string	"size_t"
.LASF17:
	.string	"mem_malloc"
.LASF21:
	.string	"count"
.LASF14:
	.string	"mem_size_t"
.LASF29:
	.string	"mem_init"
.LASF26:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF19:
	.string	"__func__"
.LASF6:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned char"
.LASF24:
	.string	"free"
.LASF9:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF13:
	.string	"mem_ptr_t"
.LASF18:
	.string	"rmem"
.LASF4:
	.string	"short int"
.LASF23:
	.string	"__assert_func"
.LASF0:
	.string	"unsigned int"
.LASF10:
	.string	"char"
.LASF28:
	.string	"/home/raphael/rtone/lcd/build/lwip"
.LASF8:
	.string	"sizetype"
.LASF30:
	.string	"mem_free"
.LASF5:
	.string	"long long int"
.LASF25:
	.string	"calloc"
.LASF16:
	.string	"mem_trim"
.LASF7:
	.string	"long int"
.LASF20:
	.string	"mem_calloc"
.LASF2:
	.string	"signed char"
.LASF15:
	.string	"size"
.LASF11:
	.string	"_Bool"
.LASF22:
	.string	"malloc"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
