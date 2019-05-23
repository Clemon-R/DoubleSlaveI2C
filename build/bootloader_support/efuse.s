	.file	"efuse.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC8:
	.string	"\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((r)) >= 0x3ff00000) && ((r)) <= 0x3ff13FFC))"
	.align	4
.LC11:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/src/efuse.c"
	.section	.rodata
	.align	4
.LC0:
	.word	1073061916
	.word	1073062040
	.word	1073062072
	.word	1073062104
	.align	4
.LC1:
	.word	1073061940
	.word	1073062068
	.word	1073062100
	.word	1073062132
	.section	.text.esp_efuse_reset,"ax",@progbits
	.literal_position
	.literal .LC2, 1073062140
	.literal .LC3, 23205
	.literal .LC4, .LC0
	.literal .LC5, .LC1
	.literal .LC6, -1072693248
	.literal .LC7, 81916
	.literal .LC9, .LC8
	.literal .LC10, __func__$3308
	.literal .LC12, .LC11
	.align	4
	.global	esp_efuse_reset
	.type	esp_efuse_reset, @function
esp_efuse_reset:
.LFB1:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/src/efuse.c"
	.loc 1 41 0
	entry	sp, 64
.LCFI0:
.LBB2:
	.loc 1 42 0
	l32r	a9, .LC3
	l32r	a8, .LC2
	memw
	s32i.n	a9, a8, 0
.LBE2:
	.loc 1 43 0
	l32r	a8, .LC4
	l32i.n	a9, a8, 0
	l32i.n	a10, a8, 4
	s32i.n	a9, sp, 0
	l32i.n	a9, a8, 8
	s32i.n	a10, sp, 4
	l32i.n	a8, a8, 12
	s32i.n	a9, sp, 8
	s32i.n	a8, sp, 12
	.loc 1 45 0
	l32r	a8, .LC5
	l32i.n	a9, a8, 0
	l32i.n	a10, a8, 4
	s32i.n	a9, sp, 16
	l32i.n	a9, a8, 8
	s32i.n	a10, sp, 20
	l32i.n	a8, a8, 12
	s32i.n	a9, sp, 24
	s32i.n	a8, sp, 28
.LVL0:
.LBB3:
	.loc 1 47 0
	movi.n	a11, 0
	j	.L2
.LVL1:
.L6:
.LBB4:
	.loc 1 48 0
	addx4	a8, a11, sp
	l32i.n	a8, a8, 0
.LVL2:
	j	.L3
.L5:
.LBB5:
	.loc 1 49 0
	l32r	a9, .LC6
	add.n	a9, a8, a9
	l32r	a10, .LC7
	bltu	a10, a9, .L4
	.loc 1 49 0 is_stmt 0 discriminator 1
	l32r	a13, .LC9
	l32r	a12, .LC10
	movi.n	a11, 0x31
.LVL3:
	l32r	a10, .LC12
	call8	__assert_func
.LVL4:
.L4:
	.loc 1 49 0 discriminator 2
	movi.n	a9, 0
	memw
	s32i.n	a9, a8, 0
.LBE5:
	.loc 1 48 0 is_stmt 1 discriminator 2
	addi.n	a8, a8, 4
.LVL5:
.L3:
	addx4	a9, a11, sp
	l32i.n	a9, a9, 16
	bgeu	a9, a8, .L5
.LBE4:
	.loc 1 47 0 discriminator 2
	addi.n	a11, a11, 1
.LVL6:
.L2:
	.loc 1 47 0 is_stmt 0 discriminator 1
	blti	a11, 4, .L6
.LBE3:
	.loc 1 52 0 is_stmt 1
	retw.n
.LFE1:
	.size	esp_efuse_reset, .-esp_efuse_reset
	.section	.text.esp_efuse_burn_new_values,"ax",@progbits
	.literal_position
	.literal .LC13, 1073062140
	.literal .LC14, 23130
	.literal .LC15, 1073062148
	.literal .LC16, 23205
	.align	4
	.global	esp_efuse_burn_new_values
	.type	esp_efuse_burn_new_values, @function
esp_efuse_burn_new_values:
.LFB0:
	.loc 1 28 0
	entry	sp, 32
.LCFI1:
.LBB6:
	.loc 1 29 0
	l32r	a9, .LC14
	l32r	a8, .LC13
	memw
	s32i.n	a9, a8, 0
.LBE6:
.LBB7:
	.loc 1 30 0
	movi.n	a9, 2
	l32r	a8, .LC15
	memw
	s32i.n	a9, a8, 0
.L8:
.LBE7:
.LBB8:
	.loc 1 31 0 discriminator 1
	l32r	a8, .LC15
	memw
	l32i.n	a8, a8, 0
.LBE8:
	bnez.n	a8, .L8
.LBB9:
	.loc 1 33 0
	l32r	a9, .LC16
	l32r	a8, .LC13
	memw
	s32i.n	a9, a8, 0
.LBE9:
.LBB10:
	.loc 1 34 0
	movi.n	a9, 1
	l32r	a8, .LC15
	memw
	s32i.n	a9, a8, 0
.L9:
.LBE10:
.LBB11:
	.loc 1 35 0 discriminator 1
	l32r	a8, .LC15
	memw
	l32i.n	a8, a8, 0
.LBE11:
	bnez.n	a8, .L9
	.loc 1 37 0
	call8	esp_efuse_reset
.LVL7:
	retw.n
.LFE0:
	.size	esp_efuse_burn_new_values, .-esp_efuse_burn_new_values
	.section	.rodata.str1.4
	.align	4
.LC18:
	.string	"efuse"
	.align	4
.LC20:
	.string	"\033[0;32mI (%d) %s: Disable BASIC ROM Console fallback via efuse...\033[0m\n"
	.section	.text.esp_efuse_disable_basic_rom_console,"ax",@progbits
	.literal_position
	.literal .LC17, 1073061912
	.literal .LC19, .LC18
	.literal .LC21, .LC20
	.literal .LC22, 1073061940
	.align	4
	.global	esp_efuse_disable_basic_rom_console
	.type	esp_efuse_disable_basic_rom_console, @function
esp_efuse_disable_basic_rom_console:
.LFB2:
	.loc 1 55 0
	entry	sp, 32
.LCFI2:
.LBB12:
	.loc 1 56 0
	l32r	a8, .LC17
	memw
	l32i.n	a8, a8, 0
.LBE12:
	bbsi	a8, 2, .L10
	.loc 1 57 0 discriminator 1
	call8	esp_log_timestamp
.LVL8:
	l32r	a12, .LC19
	mov.n	a11, a10
	l32r	a10, .LC21
	call8	ets_printf
.LVL9:
	.loc 1 58 0 discriminator 1
	call8	esp_efuse_reset
.LVL10:
.LBB13:
	.loc 1 59 0 discriminator 1
	movi.n	a9, 4
	l32r	a8, .LC22
	memw
	s32i.n	a9, a8, 0
.LBE13:
	.loc 1 60 0 discriminator 1
	call8	esp_efuse_burn_new_values
.LVL11:
.L10:
	retw.n
.LFE2:
	.size	esp_efuse_disable_basic_rom_console, .-esp_efuse_disable_basic_rom_console
	.global	__popcountsi2
	.section	.text.esp_efuse_apply_34_encoding,"ax",@progbits
	.literal_position
	.literal .LC23, -1431655765
	.align	4
	.global	esp_efuse_apply_34_encoding
	.type	esp_efuse_apply_34_encoding, @function
esp_efuse_apply_34_encoding:
.LFB3:
	.loc 1 65 0
.LVL12:
	entry	sp, 48
.LCFI3:
	.loc 1 66 0
	movi.n	a5, 1
	movi.n	a7, 0
	mov.n	a6, a7
	moveqz	a6, a5, a2
	.loc 1 66 0
	movnez	a5, a7, a3
	or	a5, a5, a6
	.loc 1 66 0
	bne	a5, a7, .L17
	.loc 1 66 0 discriminator 1
	l32r	a5, .LC23
	muluh	a5, a4, a5
	srli	a5, a5, 2
	addx2	a5, a5, a5
	slli	a6, a5, 1
	mov.n	a5, a6
	bne	a4, a6, .L18
	j	.L14
.LVL13:
.L15:
.LBB14:
.LBB15:
	.loc 1 75 0 discriminator 3
	add.n	a8, a2, a5
	l8ui	a10, a8, 0
	xor	a6, a6, a10
.LVL14:
	.loc 1 76 0 discriminator 3
	addi.n	a5, a5, 1
.LVL15:
	call8	__popcountsi2
.LVL16:
	mul16u	a10, a5, a10
	add.n	a10, a7, a10
	extui	a7, a10, 0, 8
.LVL17:
	j	.L16
.LVL18:
.L19:
.LBE15:
.LBE14:
	movi.n	a5, 0
	mov.n	a7, a5
	mov.n	a6, a5
.L16:
.LVL19:
.LBB17:
.LBB16:
	.loc 1 74 0 discriminator 1
	blti	a5, 6, .L15
.LBE16:
	.loc 1 79 0
	movi.n	a12, 6
	mov.n	a11, a2
	mov.n	a10, sp
	call8	memcpy
.LVL20:
	.loc 1 80 0
	s8i	a6, sp, 6
	.loc 1 81 0
	s8i	a7, sp, 7
	.loc 1 83 0
	movi.n	a12, 8
	mov.n	a11, sp
	mov.n	a10, a3
	call8	memcpy
.LVL21:
	.loc 1 85 0
	addi	a4, a4, -6
.LVL22:
	.loc 1 86 0
	addi.n	a2, a2, 6
.LVL23:
	.loc 1 87 0
	addi.n	a3, a3, 8
.LVL24:
.L14:
.LBE17:
	.loc 1 70 0
	bnez.n	a4, .L19
	.loc 1 90 0
	movi.n	a2, 0
.LVL25:
	retw.n
.LVL26:
.L17:
	.loc 1 67 0
	movi	a2, 0x102
.LVL27:
	retw.n
.LVL28:
.L18:
	movi	a2, 0x102
.LVL29:
	.loc 1 91 0
	retw.n
.LFE3:
	.size	esp_efuse_apply_34_encoding, .-esp_efuse_apply_34_encoding
	.section	.rodata.str1.4
	.align	4
.LC25:
	.string	"r == ESP_OK"
	.align	4
.LC31:
	.string	"\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((blk_wdata0_reg + 4*i)) >= 0x3ff00000) && ((blk_wdata0_reg + 4*i)) <= 0x3ff13FFC))"
	.section	.text.esp_efuse_write_random_key,"ax",@progbits
	.literal_position
	.literal .LC24, 1073061912
	.literal .LC26, .LC25
	.literal .LC27, __func__$3348
	.literal .LC28, .LC11
	.literal .LC29, -1072693248
	.literal .LC30, 81916
	.literal .LC32, .LC31
	.align	4
	.global	esp_efuse_write_random_key
	.type	esp_efuse_write_random_key, @function
esp_efuse_write_random_key:
.LFB4:
	.loc 1 94 0
.LVL30:
	entry	sp, 96
.LCFI4:
.LBB18:
	.loc 1 97 0
	l32r	a8, .LC24
	memw
	l32i.n	a8, a8, 0
.LBE18:
	extui	a8, a8, 0, 2
.LVL31:
	.loc 1 99 0
	bnez.n	a8, .L21
	.loc 1 100 0
	movi.n	a11, 0x20
	mov.n	a10, sp
	call8	bootloader_fill_random
.LVL32:
.L23:
	.loc 1 94 0 discriminator 2
	movi.n	a8, 0
	j	.L22
.LVL33:
.L21:
.LBB19:
	.loc 1 102 0
	movi.n	a11, 0x18
	addi	a10, sp, 32
	call8	bootloader_fill_random
.LVL34:
	.loc 1 103 0
	movi.n	a12, 0x18
	mov.n	a11, sp
	addi	a10, sp, 32
	call8	esp_efuse_apply_34_encoding
.LVL35:
	.loc 1 104 0
	beqz.n	a10, .L23
	.loc 1 104 0 is_stmt 0 discriminator 1
	l32r	a13, .LC26
	l32r	a12, .LC27
	movi	a11, 0x68
	l32r	a10, .LC28
.LVL36:
	call8	__assert_func
.LVL37:
.L25:
.LBE19:
.LBB20:
.LBB21:
	.loc 1 110 0 is_stmt 1
	addx4	a10, a8, a2
	l32r	a9, .LC29
	add.n	a9, a10, a9
	l32r	a11, .LC30
	bltu	a11, a9, .L24
	.loc 1 110 0 is_stmt 0 discriminator 1
	l32r	a13, .LC32
	l32r	a12, .LC27
	movi	a11, 0x6e
	l32r	a10, .LC28
	call8	__assert_func
.LVL38:
.L24:
	.loc 1 110 0 discriminator 2
	addx4	a9, a8, sp
	l32i.n	a9, a9, 0
	memw
	s32i.n	a9, a10, 0
.LBE21:
	.loc 1 108 0 is_stmt 1 discriminator 2
	addi.n	a8, a8, 1
.LVL39:
.L22:
	blti	a8, 8, .L25
.LBE20:
	.loc 1 114 0
	retw.n
.LFE4:
	.size	esp_efuse_write_random_key, .-esp_efuse_write_random_key
	.section	.rodata.__func__$3348,"a",@progbits
	.align	4
	.type	__func__$3348, @object
	.size	__func__$3348, 27
__func__$3348:
	.string	"esp_efuse_write_random_key"
	.section	.rodata.__func__$3308,"a",@progbits
	.align	4
	.type	__func__$3308, @object
	.size	__func__$3308, 16
__func__$3308:
	.string	"esp_efuse_reset"
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI1-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include/bootloader_random.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x525
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xc
	.4byte	.LASF42
	.4byte	.LASF43
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x12
	.4byte	0x37
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
	.4byte	.LASF5
	.byte	0x2
	.byte	0x19
	.4byte	0x57
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0xd8
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x5
	.byte	0x4
	.4byte	0xcc
	.uleb128 0x6
	.4byte	0xbf
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x18
	.4byte	0x89
	.uleb128 0x7
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x1f
	.4byte	0x10d
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x1
	.byte	0x28
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a7
	.uleb128 0xa
	.4byte	.LASF30
	.4byte	0x1b7
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3308
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0x2b
	.4byte	0x1cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0x2d
	.4byte	0x1d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0x2f
	.4byte	0x57
	.4byte	.LLST0
	.uleb128 0xc
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0xd
	.string	"r"
	.byte	0x1
	.byte	0x30
	.4byte	0x94
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LVL4
	.4byte	0x4f3
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x31
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3308
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0xbf
	.4byte	0x1b7
	.uleb128 0x11
	.4byte	0xb1
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0x1a7
	.uleb128 0x10
	.4byte	0x94
	.4byte	0x1cc
	.uleb128 0x11
	.4byte	0xb1
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	0x1bc
	.uleb128 0x6
	.4byte	0x1bc
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x1
	.byte	0x1b
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fe
	.uleb128 0x12
	.4byte	.LASF30
	.4byte	0x20e
	.uleb128 0x13
	.4byte	.LVL7
	.4byte	0x10d
	.byte	0
	.uleb128 0x10
	.4byte	0xbf
	.4byte	0x20e
	.uleb128 0x11
	.4byte	0xb1
	.byte	0x19
	.byte	0
	.uleb128 0x6
	.4byte	0x1fe
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x1
	.byte	0x36
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26d
	.uleb128 0x12
	.4byte	.LASF30
	.4byte	0x27d
	.uleb128 0x13
	.4byte	.LVL8
	.4byte	0x4fe
	.uleb128 0x14
	.4byte	.LVL9
	.4byte	0x509
	.4byte	0x25a
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.uleb128 0x13
	.4byte	.LVL10
	.4byte	0x10d
	.uleb128 0x13
	.4byte	.LVL11
	.4byte	0x1d6
	.byte	0
	.uleb128 0x10
	.4byte	0xbf
	.4byte	0x27d
	.uleb128 0x11
	.4byte	0xb1
	.byte	0x23
	.byte	0
	.uleb128 0x6
	.4byte	0x26d
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x1
	.byte	0x40
	.4byte	0xd1
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x34c
	.uleb128 0x16
	.4byte	.LASF31
	.byte	0x1
	.byte	0x40
	.4byte	0x34c
	.4byte	.LLST2
	.uleb128 0x16
	.4byte	.LASF32
	.byte	0x1
	.byte	0x40
	.4byte	0x357
	.4byte	.LLST3
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0x40
	.4byte	0x9f
	.4byte	.LLST4
	.uleb128 0x17
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x18
	.string	"out"
	.byte	0x1
	.byte	0x47
	.4byte	0x35d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.string	"xor"
	.byte	0x1
	.byte	0x48
	.4byte	0x7e
	.4byte	.LLST5
	.uleb128 0xd
	.string	"mul"
	.byte	0x1
	.byte	0x49
	.4byte	0x7e
	.4byte	.LLST6
	.uleb128 0x19
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x310
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0x4a
	.4byte	0x57
	.4byte	.LLST7
	.byte	0
	.uleb128 0x14
	.4byte	.LVL20
	.4byte	0x514
	.4byte	0x32f
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0xe
	.4byte	.LVL21
	.4byte	0x514
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x352
	.uleb128 0x6
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x94
	.uleb128 0x10
	.4byte	0x7e
	.4byte	0x36d
	.uleb128 0x11
	.4byte	0xb1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x1
	.byte	0x5d
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a7
	.uleb128 0x1a
	.4byte	.LASF35
	.byte	0x1
	.byte	0x5d
	.4byte	0x94
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.string	"buf"
	.byte	0x1
	.byte	0x5f
	.4byte	0x4a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x18
	.string	"raw"
	.byte	0x1
	.byte	0x60
	.4byte	0x4b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.4byte	.LASF36
	.byte	0x1
	.byte	0x61
	.4byte	0x94
	.4byte	.LLST8
	.uleb128 0xa
	.4byte	.LASF30
	.4byte	0x4d7
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3348
	.uleb128 0x1c
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x449
	.uleb128 0xd
	.string	"r"
	.byte	0x1
	.byte	0x67
	.4byte	0xd1
	.4byte	.LLST9
	.uleb128 0x14
	.4byte	.LVL34
	.4byte	0x51d
	.4byte	0x3fd
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x14
	.4byte	.LVL35
	.4byte	0x282
	.4byte	0x41d
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0xe
	.4byte	.LVL37
	.4byte	0x4f3
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x68
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3348
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x48f
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0x6c
	.4byte	0x57
	.4byte	.LLST10
	.uleb128 0xe
	.4byte	.LVL38
	.4byte	0x4f3
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6e
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3348
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL32
	.4byte	0x51d
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x94
	.4byte	0x4b7
	.uleb128 0x11
	.4byte	0xb1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.4byte	0x7e
	.4byte	0x4c7
	.uleb128 0x11
	.4byte	0xb1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.4byte	0xbf
	.4byte	0x4d7
	.uleb128 0x11
	.4byte	0xb1
	.byte	0x1a
	.byte	0
	.uleb128 0x6
	.4byte	0x4c7
	.uleb128 0x18
	.string	"TAG"
	.byte	0x1
	.byte	0x19
	.4byte	0x4ee
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC18
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xc6
	.uleb128 0x1d
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x6
	.byte	0x29
	.uleb128 0x1d
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x7
	.byte	0x57
	.uleb128 0x1d
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x8
	.byte	0xde
	.uleb128 0x1e
	.4byte	.LASF45
	.4byte	.LASF45
	.uleb128 0x1d
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x9
	.byte	0x31
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x15
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1e
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
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL22
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL38
	.4byte	.LFE4
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	0
	.4byte	0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"__uint8_t"
.LASF13:
	.string	"size_t"
.LASF20:
	.string	"ESP_LOG_ERROR"
.LASF5:
	.string	"__int32_t"
.LASF25:
	.string	"block_start"
.LASF27:
	.string	"esp_efuse_reset"
.LASF3:
	.string	"short unsigned int"
.LASF42:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/src/efuse.c"
.LASF41:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF38:
	.string	"esp_log_timestamp"
.LASF30:
	.string	"__func__"
.LASF22:
	.string	"ESP_LOG_INFO"
.LASF33:
	.string	"in_bytes_len"
.LASF21:
	.string	"ESP_LOG_WARN"
.LASF1:
	.string	"unsigned char"
.LASF44:
	.string	"esp_efuse_apply_34_encoding"
.LASF16:
	.string	"long unsigned int"
.LASF40:
	.string	"bootloader_fill_random"
.LASF31:
	.string	"in_bytes"
.LASF29:
	.string	"esp_efuse_disable_basic_rom_console"
.LASF18:
	.string	"esp_err_t"
.LASF6:
	.string	"__uint32_t"
.LASF37:
	.string	"__assert_func"
.LASF43:
	.string	"/home/raphael/rtone/lcd/build/bootloader_support"
.LASF26:
	.string	"block_end"
.LASF7:
	.string	"unsigned int"
.LASF23:
	.string	"ESP_LOG_DEBUG"
.LASF9:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF32:
	.string	"out_words"
.LASF39:
	.string	"ets_printf"
.LASF11:
	.string	"int32_t"
.LASF15:
	.string	"sizetype"
.LASF34:
	.string	"esp_efuse_write_random_key"
.LASF8:
	.string	"long long int"
.LASF45:
	.string	"memcpy"
.LASF2:
	.string	"short int"
.LASF19:
	.string	"ESP_LOG_NONE"
.LASF36:
	.string	"coding_scheme"
.LASF12:
	.string	"uint32_t"
.LASF14:
	.string	"long int"
.LASF17:
	.string	"char"
.LASF35:
	.string	"blk_wdata0_reg"
.LASF0:
	.string	"signed char"
.LASF28:
	.string	"esp_efuse_burn_new_values"
.LASF24:
	.string	"ESP_LOG_VERBOSE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
