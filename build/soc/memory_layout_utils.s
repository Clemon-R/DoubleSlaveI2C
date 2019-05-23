	.file	"memory_layout_utils.c"
	.text
.Ltext0:
	.section	.text.s_get_num_reserved_regions,"ax",@progbits
	.literal_position
	.literal .LC0, soc_reserved_memory_region_end
	.literal .LC1, soc_reserved_memory_region_start
	.align	4
	.type	s_get_num_reserved_regions, @function
s_get_num_reserved_regions:
.LFB10:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/src/memory_layout_utils.c"
	.loc 1 38 0
	entry	sp, 32
.LCFI0:
	.loc 1 40 0
	l32r	a8, .LC1
	l32r	a2, .LC0
	sub	a2, a2, a8
	srai	a2, a2, 3
	.loc 1 42 0
	addi.n	a2, a2, 2
	retw.n
.LFE10:
	.size	s_get_num_reserved_regions, .-s_get_num_reserved_regions
	.section	.text.s_compare_reserved_regions,"ax",@progbits
	.align	4
	.type	s_compare_reserved_regions, @function
s_compare_reserved_regions:
.LFB12:
	.loc 1 53 0
.LVL0:
	entry	sp, 32
.LCFI1:
.LVL1:
	.loc 1 56 0
	l32i.n	a2, a2, 0
.LVL2:
	l32i.n	a8, a3, 0
	.loc 1 57 0
	sub	a2, a2, a8
	retw.n
.LFE12:
	.size	s_compare_reserved_regions, .-s_compare_reserved_regions
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC9:
	.string	"reserved[i].start < reserved[i].end"
	.align	4
.LC12:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/src/memory_layout_utils.c"
	.align	4
.LC14:
	.string	"reserved[i+1].start > reserved[i].start"
	.align	4
.LC16:
	.string	"memory_layout"
	.align	4
.LC18:
	.string	"\033[0;31mE (%d) %s: SOC_RESERVE_MEMORY_REGION region range 0x%08x - 0x%08x overlaps with 0x%08x - 0x%08x\033[0m\n"
	.section	.text.s_prepare_reserved_regions,"ax",@progbits
	.literal_position
	.literal .LC2, 536870910
	.literal .LC3, soc_reserved_memory_region_start
	.literal .LC4, _data_start
	.literal .LC5, _bss_end
	.literal .LC6, _iram_start
	.literal .LC7, _iram_end
	.literal .LC8, s_compare_reserved_regions
	.literal .LC10, .LC9
	.literal .LC11, __func__$2520
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.literal .LC17, .LC16
	.literal .LC19, .LC18
	.align	4
	.type	s_prepare_reserved_regions, @function
s_prepare_reserved_regions:
.LFB13:
	.loc 1 64 0
.LVL3:
	entry	sp, 48
.LCFI2:
	.loc 1 65 0
	l32r	a12, .LC2
	add.n	a12, a3, a12
	slli	a12, a12, 3
	l32r	a11, .LC3
	addi	a10, a2, 16
	call8	memcpy
.LVL4:
	.loc 1 70 0
	l32r	a4, .LC4
	s32i.n	a4, a2, 0
	.loc 1 71 0
	l32r	a4, .LC5
	s32i.n	a4, a2, 4
	.loc 1 72 0
	l32r	a4, .LC6
	s32i.n	a4, a2, 8
	.loc 1 73 0
	l32r	a4, .LC7
	s32i.n	a4, a2, 12
	.loc 1 76 0
	l32r	a13, .LC8
	movi.n	a12, 8
	mov.n	a11, a3
	mov.n	a10, a2
	call8	qsort
.LVL5:
.LBB2:
	.loc 1 83 0
	movi.n	a10, 0
	j	.L4
.LVL6:
.L8:
	.loc 1 87 0
	addx8	a4, a10, a2
	l32i.n	a11, a4, 0
	movi.n	a9, -4
	and	a11, a11, a9
	s32i.n	a11, a4, 0
	.loc 1 88 0
	l32i.n	a8, a4, 4
	addi.n	a8, a8, 3
	and	a8, a8, a9
	s32i.n	a8, a4, 4
	.loc 1 89 0
	blt	a11, a8, .L5
	.loc 1 89 0 is_stmt 0 discriminator 1
	l32r	a13, .LC10
	l32r	a12, .LC11
	movi.n	a11, 0x59
	l32r	a10, .LC13
.LVL7:
	call8	__assert_func
.LVL8:
.L5:
	.loc 1 90 0 is_stmt 1
	addi.n	a5, a3, -1
	bgeu	a10, a5, .L6
	.loc 1 91 0
	addi.n	a5, a10, 1
	addx8	a5, a5, a2
	l32i.n	a9, a5, 0
	blt	a11, a9, .L7
	.loc 1 91 0 is_stmt 0 discriminator 1
	l32r	a13, .LC15
	l32r	a12, .LC11
	movi.n	a11, 0x5b
	l32r	a10, .LC13
.LVL9:
	call8	__assert_func
.LVL10:
.L7:
	.loc 1 92 0 is_stmt 1
	bge	a9, a8, .L6
	.loc 1 93 0 discriminator 1
	call8	esp_log_timestamp
.LVL11:
	l32i.n	a2, a5, 4
.LVL12:
	s32i.n	a2, sp, 0
	l32i.n	a15, a5, 0
	l32i.n	a14, a4, 4
	l32i.n	a13, a4, 0
	l32r	a12, .LC17
	mov.n	a11, a10
	l32r	a10, .LC19
	call8	ets_printf
.LVL13:
	.loc 1 97 0 discriminator 1
	call8	abort
.LVL14:
.L6:
	.loc 1 83 0 discriminator 2
	addi.n	a10, a10, 1
.LVL15:
.L4:
	.loc 1 83 0 is_stmt 0 discriminator 1
	bltu	a10, a3, .L8
.LBE2:
	.loc 1 101 0 is_stmt 1
	retw.n
.LFE13:
	.size	s_prepare_reserved_regions, .-s_prepare_reserved_regions
	.section	.text.soc_get_available_memory_region_max_count,"ax",@progbits
	.literal_position
	.literal .LC20, soc_memory_region_count
	.align	4
	.global	soc_get_available_memory_region_max_count
	.type	soc_get_available_memory_region_max_count, @function
soc_get_available_memory_region_max_count:
.LFB11:
	.loc 1 45 0
	entry	sp, 32
.LCFI3:
	.loc 1 49 0
	call8	s_get_num_reserved_regions
.LVL16:
	l32r	a2, .LC20
	l32i.n	a2, a2, 0
	.loc 1 50 0
	add.n	a2, a10, a2
	retw.n
.LFE11:
	.size	soc_get_available_memory_region_max_count, .-soc_get_available_memory_region_max_count
	.section	.rodata.str1.4
	.align	4
.LC23:
	.string	"in_start < reserved[i].start"
	.align	4
.LC27:
	.string	"in_end > reserved[i].end"
	.section	.text.soc_get_available_memory_regions,"ax",@progbits
	.literal_position
	.literal .LC21, soc_memory_region_count
	.literal .LC22, soc_memory_regions
	.literal .LC24, .LC23
	.literal .LC25, __func__$2540
	.literal .LC26, .LC12
	.literal .LC28, .LC27
	.align	4
	.global	soc_get_available_memory_regions
	.type	soc_get_available_memory_regions, @function
soc_get_available_memory_regions:
.LFB14:
	.loc 1 104 0
.LVL17:
	entry	sp, 48
	mov.n	a7, sp
.LCFI4:
.LVL18:
	.loc 1 107 0
	l32r	a3, .LC21
.LVL19:
	l32i.n	a5, a3, 0
	slli	a5, a5, 4
	addi	a3, a5, 18
.LVL20:
	srli	a3, a3, 4
	slli	a3, a3, 4
	sub	a3, sp, a3
	movsp	sp, a3
	mov.n	a6, sp
.LVL21:
	.loc 1 108 0
	mov.n	a12, a5
	l32r	a11, .LC22
	mov.n	a10, sp
	call8	memcpy
.LVL22:
	.loc 1 111 0
	call8	s_get_num_reserved_regions
.LVL23:
	mov.n	a4, a10
.LVL24:
	.loc 1 112 0
	slli	a3, a10, 3
	addi	a3, a3, 18
	srli	a3, a3, 4
	slli	a3, a3, 4
	sub	a3, sp, a3
	movsp	sp, a3
.LVL25:
	.loc 1 114 0
	mov.n	a11, a10
	mov.n	a10, a3
	call8	s_prepare_reserved_regions
.LVL26:
	.loc 1 109 0
	mov.n	a12, a6
	.loc 1 105 0
	mov.n	a13, a2
	.loc 1 121 0
	j	.L11
.LVL27:
.L23:
.LBB3:
	.loc 1 122 0
	l32i.n	a8, a12, 0
	l32i.n	a14, a12, 4
	s32i.n	a8, a7, 0
	l32i.n	a10, a12, 8
	s32i.n	a14, a7, 4
	l32i.n	a9, a12, 12
	s32i.n	a10, a7, 8
	s32i.n	a9, a7, 12
	.loc 1 124 0
	mov.n	a10, a8
.LVL28:
	.loc 1 125 0
	add.n	a14, a8, a14
.LVL29:
.LBB4:
	.loc 1 129 0
	movi.n	a8, 0
.LVL30:
	j	.L12
.LVL31:
.L20:
	.loc 1 130 0
	addx8	a9, a8, a3
	l32i.n	a9, a9, 4
	bge	a10, a9, .L13
	.loc 1 134 0
	addx8	a11, a8, a3
	l32i.n	a11, a11, 0
	bge	a11, a14, .L24
	.loc 1 138 0
	blt	a10, a11, .L15
	.loc 1 138 0 is_stmt 0 discriminator 1
	bge	a9, a14, .L25
.L15:
	.loc 1 146 0 is_stmt 1
	bge	a10, a11, .L16
	.loc 1 146 0 is_stmt 0 discriminator 1
	bge	a9, a14, .L16
	.loc 1 150 0 is_stmt 1
	blt	a10, a11, .L17
	.loc 1 150 0 is_stmt 0 discriminator 1
	l32r	a13, .LC24
.LVL32:
	l32r	a12, .LC25
.LVL33:
	movi	a11, 0x96
	l32r	a10, .LC26
.LVL34:
	call8	__assert_func
.LVL35:
.L17:
	.loc 1 151 0 is_stmt 1
	blt	a9, a14, .L18
	.loc 1 151 0 is_stmt 0 discriminator 1
	l32r	a13, .LC28
.LVL36:
	l32r	a12, .LC25
.LVL37:
	movi	a11, 0x97
	l32r	a10, .LC26
.LVL38:
	call8	__assert_func
.LVL39:
.L18:
	.loc 1 155 0 is_stmt 1
	sub	a10, a11, a10
.LVL40:
	s32i.n	a10, a7, 4
	.loc 1 159 0
	l32i.n	a10, a12, 0
	sub	a9, a10, a9
	l32i.n	a10, a12, 4
	add.n	a9, a10, a9
	s32i.n	a9, a12, 4
	.loc 1 160 0
	addx8	a8, a8, a3
.LVL41:
	l32i.n	a8, a8, 4
	s32i.n	a8, a12, 0
.LVL42:
	.loc 1 163 0
	movi.n	a8, 0
.LBE4:
	.loc 1 126 0
	movi.n	a9, 1
.LBB5:
	.loc 1 164 0
	j	.L14
.LVL43:
.L16:
	.loc 1 166 0
	blt	a10, a11, .L19
	.loc 1 169 0
	s32i.n	a9, a7, 0
.LVL44:
	.loc 1 171 0
	sub	a10, a14, a9
	s32i.n	a10, a7, 4
	.loc 1 170 0
	mov.n	a10, a9
	j	.L13
.LVL45:
.L19:
	.loc 1 177 0
	sub	a9, a11, a10
	s32i.n	a9, a7, 4
	.loc 1 176 0
	mov.n	a14, a11
.LVL46:
.L13:
	.loc 1 129 0 discriminator 2
	addi.n	a8, a8, 1
.LVL47:
.L12:
	.loc 1 129 0 is_stmt 0 discriminator 1
	bltu	a8, a4, .L20
.LBE5:
	.loc 1 127 0 is_stmt 1
	movi.n	a8, 1
.LVL48:
	.loc 1 126 0
	mov.n	a9, a8
.LBB6:
	j	.L14
.LVL49:
.L24:
.LBE6:
	.loc 1 127 0
	movi.n	a8, 1
.LVL50:
	.loc 1 126 0
	mov.n	a9, a8
	j	.L14
.LVL51:
.L25:
	.loc 1 127 0
	movi.n	a8, 1
.LVL52:
.LBB7:
	.loc 1 143 0
	movi.n	a9, 0
.LVL53:
.L14:
.LBE7:
	.loc 1 181 0
	beqz.n	a9, .L21
.LVL54:
	.loc 1 183 0
	l32i.n	a9, a7, 0
.LVL55:
	s32i.n	a9, a13, 0
	l32i.n	a9, a7, 4
	s32i.n	a9, a13, 4
	l32i.n	a9, a7, 8
	s32i.n	a9, a13, 8
	l32i.n	a9, a7, 12
	s32i.n	a9, a13, 12
	addi	a13, a13, 16
.LVL56:
.L21:
	.loc 1 185 0
	beqz.n	a8, .L11
	.loc 1 186 0
	addi	a12, a12, 16
.LVL57:
.L11:
.LBE3:
	.loc 1 121 0
	add.n	a8, a6, a5
	bne	a12, a8, .L23
	.loc 1 190 0
	sub	a2, a13, a2
.LVL58:
	.loc 1 191 0
	srai	a2, a2, 4
	retw.n
.LFE14:
	.size	soc_get_available_memory_regions, .-soc_get_available_memory_regions
	.section	.rodata.__func__$2520,"a",@progbits
	.align	4
	.type	__func__$2520, @object
	.size	__func__$2520, 27
__func__$2520:
	.string	"s_prepare_reserved_regions"
	.section	.rodata.__func__$2540,"a",@progbits
	.align	4
	.type	__func__$2540, @object
	.size	__func__$2540, 33
__func__$2540:
	.string	"soc_get_available_memory_regions"
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI0-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI1-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI2-.LFB13
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI3-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI4-.LFB14
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x30
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/soc_memory_layout.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5cf
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0xc
	.4byte	.LASF54
	.4byte	.LASF55
	.4byte	.Ldebug_ranges0+0x28
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
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x31
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0xa9
	.4byte	0x5d
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0xd8
	.4byte	0x48
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x6
	.4byte	0x93
	.uleb128 0x5
	.byte	0x4
	.4byte	0xab
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x4
	.4byte	0x48
	.byte	0x7
	.byte	0x1f
	.4byte	0xdd
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0xa
	.byte	0x10
	.byte	0x5
	.byte	0x48
	.4byte	0x11d
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x5
	.byte	0x4a
	.4byte	0x68
	.byte	0
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x5
	.byte	0x4b
	.4byte	0x73
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0x4c
	.4byte	0x73
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x4d
	.4byte	0x68
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x5
	.byte	0x4e
	.4byte	0xe4
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.byte	0x56
	.4byte	0x149
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x5
	.byte	0x58
	.4byte	0x68
	.byte	0
	.uleb128 0xc
	.string	"end"
	.byte	0x5
	.byte	0x59
	.4byte	0x68
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x5
	.byte	0x5a
	.4byte	0x128
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x1
	.byte	0x25
	.4byte	0x73
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x1
	.byte	0x34
	.4byte	0x41
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b7
	.uleb128 0xf
	.string	"a"
	.byte	0x1
	.byte	0x34
	.4byte	0xa5
	.4byte	.LLST0
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x34
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.string	"r_a"
	.byte	0x1
	.byte	0x36
	.4byte	0x1b7
	.4byte	.LLST1
	.uleb128 0x12
	.string	"r_b"
	.byte	0x1
	.byte	0x37
	.4byte	0x1b7
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1bd
	.uleb128 0x6
	.4byte	0x149
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0x1
	.byte	0x3f
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f9
	.uleb128 0x14
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3f
	.4byte	0x2f9
	.4byte	.LLST2
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3f
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF34
	.4byte	0x30f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2520
	.uleb128 0x17
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x2b4
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x53
	.4byte	0x73
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LVL8
	.4byte	0x592
	.4byte	0x24b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x59
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2520
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x18
	.4byte	.LVL10
	.4byte	0x592
	.4byte	0x27a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2520
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL11
	.4byte	0x59d
	.uleb128 0x18
	.4byte	.LVL13
	.4byte	0x5a8
	.4byte	0x2aa
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL14
	.4byte	0x5b3
	.byte	0
	.uleb128 0x18
	.4byte	.LVL4
	.4byte	0x5be
	.4byte	0x2d4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x8
	.byte	0x73
	.sleb128 536870910
	.byte	0x33
	.byte	0x24
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL5
	.4byte	0x5c7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	s_compare_reserved_regions
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x149
	.uleb128 0x1c
	.4byte	0x93
	.4byte	0x30f
	.uleb128 0x1d
	.4byte	0x85
	.byte	0x1a
	.byte	0
	.uleb128 0x6
	.4byte	0x2ff
	.uleb128 0x1e
	.4byte	.LASF59
	.byte	0x1
	.byte	0x2c
	.4byte	0x73
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x337
	.uleb128 0x1a
	.4byte	.LVL16
	.4byte	0x154
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF60
	.byte	0x1
	.byte	0x67
	.4byte	0x73
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4bd
	.uleb128 0x14
	.4byte	.LASF29
	.byte	0x1
	.byte	0x67
	.4byte	0x4bd
	.4byte	.LLST4
	.uleb128 0x20
	.4byte	.LASF30
	.byte	0x1
	.byte	0x69
	.4byte	0x4bd
	.4byte	.LLST5
	.uleb128 0x21
	.4byte	0x4d6
	.4byte	.LLST6
	.uleb128 0x20
	.4byte	.LASF31
	.byte	0x1
	.byte	0x6b
	.4byte	0x4c3
	.4byte	.LLST7
	.uleb128 0x20
	.4byte	.LASF32
	.byte	0x1
	.byte	0x6d
	.4byte	0x4bd
	.4byte	.LLST8
	.uleb128 0x22
	.4byte	.LASF33
	.byte	0x1
	.byte	0x6f
	.4byte	0x73
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	.LASF27
	.byte	0x1
	.byte	0x70
	.4byte	0x4db
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x16
	.4byte	.LASF34
	.4byte	0x4fd
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2540
	.uleb128 0x17
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x483
	.uleb128 0x12
	.string	"in"
	.byte	0x1
	.byte	0x7a
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.4byte	.LASF35
	.byte	0x1
	.byte	0x7c
	.4byte	0x68
	.4byte	.LLST9
	.uleb128 0x20
	.4byte	.LASF36
	.byte	0x1
	.byte	0x7d
	.4byte	0x68
	.4byte	.LLST10
	.uleb128 0x20
	.4byte	.LASF37
	.byte	0x1
	.byte	0x7e
	.4byte	0xdd
	.4byte	.LLST11
	.uleb128 0x20
	.4byte	.LASF38
	.byte	0x1
	.byte	0x7f
	.4byte	0xdd
	.4byte	.LLST12
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x81
	.4byte	0x73
	.4byte	.LLST13
	.uleb128 0x18
	.4byte	.LVL35
	.4byte	0x592
	.4byte	0x456
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x96
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2540
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL39
	.4byte	0x592
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x97
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2540
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL22
	.4byte	0x5be
	.4byte	0x49d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL23
	.4byte	0x154
	.uleb128 0x1b
	.4byte	.LVL26
	.4byte	0x1c2
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x11d
	.uleb128 0x1c
	.4byte	0x11d
	.4byte	0x4d6
	.uleb128 0x24
	.4byte	0x85
	.4byte	0x36e
	.byte	0
	.uleb128 0x6
	.4byte	0x85
	.uleb128 0x1c
	.4byte	0x149
	.4byte	0x4ed
	.uleb128 0x25
	.4byte	0x85
	.uleb128 0x2
	.byte	0x74
	.sleb128 -1
	.byte	0
	.uleb128 0x1c
	.4byte	0x93
	.4byte	0x4fd
	.uleb128 0x1d
	.4byte	0x85
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.4byte	0x4ed
	.uleb128 0x12
	.string	"TAG"
	.byte	0x1
	.byte	0x13
	.4byte	0x514
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC16
	.byte	0x9f
	.uleb128 0x6
	.4byte	0x9a
	.uleb128 0x26
	.4byte	.LASF39
	.byte	0x1
	.byte	0x23
	.4byte	0x525
	.byte	0x2
	.uleb128 0x6
	.4byte	0x73
	.uleb128 0x1c
	.4byte	0x11d
	.4byte	0x535
	.uleb128 0x27
	.byte	0
	.uleb128 0x28
	.4byte	.LASF40
	.byte	0x5
	.byte	0x50
	.4byte	0x540
	.uleb128 0x6
	.4byte	0x52a
	.uleb128 0x28
	.4byte	.LASF41
	.byte	0x5
	.byte	0x51
	.4byte	0x525
	.uleb128 0x28
	.4byte	.LASF42
	.byte	0x1
	.byte	0x19
	.4byte	0x149
	.uleb128 0x28
	.4byte	.LASF43
	.byte	0x1
	.byte	0x1a
	.4byte	0x149
	.uleb128 0x28
	.4byte	.LASF44
	.byte	0x1
	.byte	0x20
	.4byte	0x41
	.uleb128 0x28
	.4byte	.LASF45
	.byte	0x1
	.byte	0x20
	.4byte	0x41
	.uleb128 0x28
	.4byte	.LASF46
	.byte	0x1
	.byte	0x20
	.4byte	0x41
	.uleb128 0x28
	.4byte	.LASF47
	.byte	0x1
	.byte	0x20
	.4byte	0x41
	.uleb128 0x29
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x6
	.byte	0x29
	.uleb128 0x29
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x7
	.byte	0x57
	.uleb128 0x29
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x8
	.byte	0xde
	.uleb128 0x29
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x9
	.byte	0x47
	.uleb128 0x2a
	.4byte	.LASF61
	.4byte	.LASF61
	.uleb128 0x29
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x9
	.byte	0x88
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL17
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL18
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL39
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x3
	.byte	0x7d
	.sleb128 16
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LVL25
	.4byte	.LFE14
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL27
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL39
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL45
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL29
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL35
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL39
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL46
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL29
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL29
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL35
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL43
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"count"
.LASF9:
	.string	"size_t"
.LASF45:
	.string	"_bss_end"
.LASF54:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/src/memory_layout_utils.c"
.LASF23:
	.string	"type"
.LASF6:
	.string	"long long unsigned int"
.LASF59:
	.string	"soc_get_available_memory_region_max_count"
.LASF18:
	.string	"ESP_LOG_DEBUG"
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"long int"
.LASF57:
	.string	"s_compare_reserved_regions"
.LASF33:
	.string	"num_reserved"
.LASF47:
	.string	"_iram_end"
.LASF61:
	.string	"memcpy"
.LASF56:
	.string	"s_get_num_reserved_regions"
.LASF52:
	.string	"qsort"
.LASF7:
	.string	"__intptr_t"
.LASF27:
	.string	"reserved"
.LASF4:
	.string	"unsigned int"
.LASF12:
	.string	"long unsigned int"
.LASF55:
	.string	"/home/raphael/rtone/lcd/build/soc"
.LASF22:
	.string	"size"
.LASF3:
	.string	"short unsigned int"
.LASF29:
	.string	"regions"
.LASF24:
	.string	"iram_address"
.LASF8:
	.string	"intptr_t"
.LASF43:
	.string	"soc_reserved_memory_region_end"
.LASF39:
	.string	"EXTRA_RESERVED_REGIONS"
.LASF17:
	.string	"ESP_LOG_INFO"
.LASF11:
	.string	"sizetype"
.LASF50:
	.string	"ets_printf"
.LASF42:
	.string	"soc_reserved_memory_region_start"
.LASF20:
	.string	"_Bool"
.LASF48:
	.string	"__assert_func"
.LASF1:
	.string	"unsigned char"
.LASF58:
	.string	"s_prepare_reserved_regions"
.LASF53:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF2:
	.string	"short int"
.LASF49:
	.string	"esp_log_timestamp"
.LASF15:
	.string	"ESP_LOG_ERROR"
.LASF34:
	.string	"__func__"
.LASF32:
	.string	"in_region"
.LASF40:
	.string	"soc_memory_regions"
.LASF37:
	.string	"copy_in_to_out"
.LASF13:
	.string	"char"
.LASF19:
	.string	"ESP_LOG_VERBOSE"
.LASF31:
	.string	"in_regions"
.LASF14:
	.string	"ESP_LOG_NONE"
.LASF51:
	.string	"abort"
.LASF44:
	.string	"_data_start"
.LASF26:
	.string	"soc_reserved_region_t"
.LASF38:
	.string	"move_to_next"
.LASF60:
	.string	"soc_get_available_memory_regions"
.LASF41:
	.string	"soc_memory_region_count"
.LASF46:
	.string	"_iram_start"
.LASF16:
	.string	"ESP_LOG_WARN"
.LASF21:
	.string	"start"
.LASF36:
	.string	"in_end"
.LASF35:
	.string	"in_start"
.LASF30:
	.string	"out_region"
.LASF25:
	.string	"soc_memory_region_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
