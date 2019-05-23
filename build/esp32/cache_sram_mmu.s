	.file	"cache_sram_mmu.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, 1072766976
	.literal .LC1, 1072758784
	.literal .LC2, 65535
	.literal .LC3, 1065353215
	.literal .LC4, 1065353216
	.literal .LC5, 4194303
	.literal .LC6, 1072693316
	.literal .LC7, 1072693340
	.align	4
	.global	cache_sram_mmu_set
	.type	cache_sram_mmu_set, @function
cache_sram_mmu_set:
.LFB3:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/cache_sram_mmu.c"
	.loc 1 62 0
.LVL0:
	entry	sp, 48
.LCFI0:
	s32i.n	a7, sp, 4
	.loc 1 63 0
	call8	spi_flash_guard_get
.LVL1:
	s32i.n	a10, sp, 0
.LVL2:
	.loc 1 64 0
	bnez.n	a10, .L2
	.loc 1 66 0
	mov.n	a15, a7
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL3:
	call8	cache_sram_mmu_set_rom
.LVL4:
	mov.n	a7, a10
.LVL5:
	j	.L3
.LVL6:
.L2:
	.loc 1 73 0
	movi.n	a7, 0x40
.LVL7:
	quos	a7, a7, a6
	addi.n	a7, a7, -1
	l32r	a8, .LC2
	ssr	a7
	sra	a7, a8
	bany	a4, a7, .L12
	.loc 1 73 0 is_stmt 0 discriminator 1
	and	a7, a5, a7
	bnez.n	a7, .L13
	.loc 1 77 0 is_stmt 1
	beqi	a6, 32, .L14
	.loc 1 80 0
	beqi	a6, 16, .L15
	.loc 1 83 0
	beqi	a6, 8, .L16
	.loc 1 86 0
	beqi	a6, 4, .L17
	.loc 1 89 0
	bnei	a6, 2, .L18
	.loc 1 91 0
	movi.n	a8, 4
	s32i.n	a8, sp, 8
	.loc 1 90 0
	movi.n	a9, 0xb
	j	.L4
.L14:
	.loc 1 79 0
	movi.n	a8, 0
	s32i.n	a8, sp, 8
	.loc 1 78 0
	movi.n	a9, 0xf
	j	.L4
.L15:
	.loc 1 82 0
	movi.n	a8, 1
	s32i.n	a8, sp, 8
	.loc 1 81 0
	movi.n	a9, 0xe
	j	.L4
.L16:
	.loc 1 85 0
	movi.n	a8, 2
	s32i.n	a8, sp, 8
	.loc 1 84 0
	movi.n	a9, 0xd
	j	.L4
.L17:
	.loc 1 88 0
	movi.n	a8, 3
	s32i.n	a8, sp, 8
	.loc 1 87 0
	movi.n	a9, 0xc
.L4:
.LVL8:
	.loc 1 96 0
	ssr	a9
	srl	a5, a5
.LVL9:
	.loc 1 98 0
	bgeui	a3, 2, .L5
	.loc 1 99 0
	l32r	a8, .LC3
	bgeu	a8, a4, .L19
	.loc 1 99 0 is_stmt 0 discriminator 1
	slli	a6, a6, 17
.LVL10:
	l32r	a8, .LC4
	add.n	a6, a6, a8
	bgeu	a4, a6, .L20
	.loc 1 100 0 is_stmt 1
	l32r	a6, .LC5
	l32i.n	a3, sp, 8
.LVL11:
	ssr	a3
	sra	a6, a6
	and	a4, a6, a4
.LVL12:
	ssr	a9
	srl	a4, a4
	movi	a6, 0x480
	add.n	a4, a4, a6
.LVL13:
	j	.L6
.LVL14:
.L5:
	.loc 1 105 0
	l32r	a8, .LC3
	bgeu	a8, a4, .L21
	.loc 1 105 0 is_stmt 0 discriminator 1
	slli	a6, a6, 17
.LVL15:
	l32r	a8, .LC4
	add.n	a6, a6, a8
	bgeu	a4, a6, .L22
	.loc 1 106 0 is_stmt 1
	slli	a8, a3, 7
	l32r	a6, .LC5
	l32i.n	a3, sp, 8
.LVL16:
	ssr	a3
	sra	a6, a6
	and	a6, a6, a4
	ssr	a9
	srl	a4, a6
.LVL17:
	add.n	a4, a8, a4
	addmi	a4, a4, 0x400
.LVL18:
.L6:
	.loc 1 114 0
	l32i.n	a3, sp, 0
	l32i.n	a6, a3, 0
	callx8	a6
.LVL19:
	.loc 1 117 0
	movi.n	a6, 0
	j	.L7
.LVL20:
.L9:
	.loc 1 118 0
	beqz.n	a2, .L23
	l32r	a8, .LC0
	j	.L8
.L23:
	l32r	a8, .LC1
.L8:
	.loc 1 118 0 is_stmt 0 discriminator 4
	addx4	a8, a4, a8
	add.n	a9, a6, a5
	memw
	s32i.n	a9, a8, 0
	.loc 1 119 0 is_stmt 1 discriminator 4
	addi.n	a4, a4, 1
.LVL21:
	.loc 1 117 0 discriminator 4
	addi.n	a6, a6, 1
.LVL22:
.L7:
	.loc 1 117 0 is_stmt 0 discriminator 2
	l32i.n	a3, sp, 4
	bltu	a6, a3, .L9
	.loc 1 122 0 is_stmt 1
	bnez.n	a2, .L10
.LVL23:
.LBB6:
.LBB7:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 79 0
	l32r	a4, .LC6
.LVL24:
	mov.n	a10, a4
	call8	esp_dport_access_reg_read
.LVL25:
.LBE7:
.LBE6:
	.loc 1 123 0
	movi	a2, -0x1c1
.LVL26:
	and	a10, a10, a2
	l32i.n	a3, sp, 8
	slli	a2, a3, 6
	or	a2, a10, a2
	memw
	s32i.n	a2, a4, 0
.LVL27:
	j	.L11
.LVL28:
.L10:
.LBB8:
.LBB9:
	.loc 2 79 0
	l32r	a4, .LC7
.LVL29:
	mov.n	a10, a4
	call8	esp_dport_access_reg_read
.LVL30:
.LBE9:
.LBE8:
	.loc 1 125 0
	movi	a2, -0x1c1
.LVL31:
	and	a10, a10, a2
	l32i.n	a3, sp, 8
	slli	a2, a3, 6
	or	a2, a10, a2
	memw
	s32i.n	a2, a4, 0
.LVL32:
.L11:
	.loc 1 128 0
	l32i.n	a3, sp, 0
	l32i.n	a2, a3, 4
	callx8	a2
.LVL33:
	.loc 1 130 0
	j	.L3
.LVL34:
.L12:
	.loc 1 74 0
	movi.n	a7, 1
	j	.L3
.L13:
	movi.n	a7, 1
	j	.L3
.L18:
	.loc 1 93 0
	movi.n	a7, 3
	j	.L3
.LVL35:
.L19:
	.loc 1 102 0
	movi.n	a7, 5
	j	.L3
.LVL36:
.L20:
	movi.n	a7, 5
	j	.L3
.LVL37:
.L21:
	.loc 1 108 0
	movi.n	a7, 5
	j	.L3
.LVL38:
.L22:
	movi.n	a7, 5
.LVL39:
.L3:
	.loc 1 131 0
	mov.n	a2, a7
	retw.n
.LFE3:
	.size	cache_sram_mmu_set, .-cache_sram_mmu_set
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/include/esp_spi_flash.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_dport_access.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2c7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0xc
	.4byte	.LASF34
	.4byte	.LASF35
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
	.byte	0x3
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
	.byte	0x4
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8e
	.uleb128 0x6
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x5
	.2byte	0x12f
	.4byte	0x88
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x5
	.2byte	0x133
	.4byte	0x88
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x5
	.2byte	0x137
	.4byte	0x88
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x5
	.2byte	0x13b
	.4byte	0x88
	.uleb128 0x8
	.byte	0x10
	.byte	0x5
	.2byte	0x159
	.4byte	0x104
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x5
	.2byte	0x15a
	.4byte	0x96
	.byte	0
	.uleb128 0xa
	.string	"end"
	.byte	0x5
	.2byte	0x15b
	.4byte	0xa2
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x15c
	.4byte	0xae
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x15d
	.4byte	0xba
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x15e
	.4byte	0xc6
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x2
	.byte	0x4a
	.4byte	0x68
	.byte	0x3
	.4byte	0x12c
	.uleb128 0xc
	.string	"reg"
	.byte	0x2
	.byte	0x4a
	.4byte	0x68
	.byte	0
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x1
	.byte	0x3d
	.4byte	0x53
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29d
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0x3d
	.4byte	0x41
	.4byte	.LLST0
	.uleb128 0xf
	.string	"pid"
	.byte	0x1
	.byte	0x3d
	.4byte	0x41
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x3d
	.4byte	0x53
	.4byte	.LLST2
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0x3d
	.4byte	0x53
	.4byte	.LLST3
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0x3d
	.4byte	0x41
	.4byte	.LLST4
	.uleb128 0xf
	.string	"num"
	.byte	0x1
	.byte	0x3d
	.4byte	0x41
	.4byte	.LLST5
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x1
	.byte	0x3f
	.4byte	0x29d
	.4byte	.LLST6
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x45
	.4byte	0x53
	.4byte	.LLST7
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x45
	.4byte	0x53
	.4byte	.LLST8
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0x45
	.4byte	0x53
	.4byte	.LLST9
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0x46
	.4byte	0x53
	.4byte	.LLST10
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0x47
	.4byte	0x53
	.4byte	.LLST11
	.uleb128 0x12
	.4byte	0x110
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x7b
	.4byte	0x224
	.uleb128 0x13
	.4byte	0x120
	.4byte	.LLST12
	.uleb128 0x14
	.4byte	.LVL25
	.4byte	0x2a8
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x110
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x7d
	.4byte	0x251
	.uleb128 0x13
	.4byte	0x120
	.4byte	.LLST13
	.uleb128 0x14
	.4byte	.LVL30
	.4byte	0x2a8
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL1
	.4byte	0x2b3
	.uleb128 0x17
	.4byte	.LVL4
	.4byte	0x2bf
	.4byte	0x28c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL19
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x18
	.4byte	.LVL33
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2a3
	.uleb128 0x19
	.4byte	0x104
	.uleb128 0x1a
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x6
	.byte	0x1e
	.uleb128 0x1b
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x171
	.uleb128 0x1a
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x1
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
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
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL9
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL35
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL15
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL38
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL7
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL39
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL6
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19-1
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL34
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL8
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL8
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL9
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00044
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0005c
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"op_lock"
.LASF37:
	.string	"cache_sram_mmu_set"
.LASF26:
	.string	"shift"
.LASF14:
	.string	"spi_flash_guard_end_func_t"
.LASF23:
	.string	"paddr"
.LASF17:
	.string	"start"
.LASF34:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/cache_sram_mmu.c"
.LASF20:
	.string	"spi_flash_guard_funcs_t"
.LASF24:
	.string	"psize"
.LASF19:
	.string	"op_unlock"
.LASF33:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF25:
	.string	"guard"
.LASF35:
	.string	"/home/raphael/rtone/lcd/build/esp32"
.LASF1:
	.string	"unsigned char"
.LASF30:
	.string	"esp_dport_access_reg_read"
.LASF11:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF31:
	.string	"spi_flash_guard_get"
.LASF21:
	.string	"cpu_no"
.LASF22:
	.string	"vaddr"
.LASF7:
	.string	"__uint32_t"
.LASF4:
	.string	"unsigned int"
.LASF28:
	.string	"mmu_addr"
.LASF6:
	.string	"long long unsigned int"
.LASF29:
	.string	"mmu_table_val"
.LASF16:
	.string	"spi_flash_op_unlock_func_t"
.LASF10:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF15:
	.string	"spi_flash_op_lock_func_t"
.LASF12:
	.string	"char"
.LASF32:
	.string	"cache_sram_mmu_set_rom"
.LASF27:
	.string	"mask_s"
.LASF2:
	.string	"short int"
.LASF8:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF36:
	.string	"DPORT_REG_READ"
.LASF13:
	.string	"spi_flash_guard_start_func_t"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
