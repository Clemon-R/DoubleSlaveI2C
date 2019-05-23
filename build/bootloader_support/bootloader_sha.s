	.file	"bootloader_sha.c"
	.text
.Ltext0:
	.section	.text.bootloader_sha256_start,"ax",@progbits
	.align	4
	.global	bootloader_sha256_start
	.type	bootloader_sha256_start, @function
bootloader_sha256_start:
.LFB0:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/src/bootloader_sha.c"
	.loc 1 25 0
	entry	sp, 32
.LCFI0:
	.loc 1 26 0
	movi	a10, 0x6c
	call8	malloc
.LVL0:
	mov.n	a2, a10
.LVL1:
	.loc 1 27 0
	beqz.n	a10, .L3
	.loc 1 30 0
	call8	mbedtls_sha256_init
.LVL2:
	.loc 1 31 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	mbedtls_sha256_starts_ret
.LVL3:
	.loc 1 32 0
	beqz.n	a10, .L2
	.loc 1 33 0
	movi.n	a2, 0
.LVL4:
	retw.n
.LVL5:
.L3:
	.loc 1 28 0
	movi.n	a2, 0
.LVL6:
.L2:
	.loc 1 36 0
	retw.n
.LFE0:
	.size	bootloader_sha256_start, .-bootloader_sha256_start
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"handle != NULL"
	.align	4
.LC3:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/src/bootloader_sha.c"
	.align	4
.LC5:
	.string	"ret == 0"
	.section	.text.bootloader_sha256_data,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$3182
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.align	4
	.global	bootloader_sha256_data
	.type	bootloader_sha256_data, @function
bootloader_sha256_data:
.LFB1:
	.loc 1 39 0
.LVL7:
	entry	sp, 32
.LCFI1:
	.loc 1 40 0
	bnez.n	a2, .L6
	.loc 1 40 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi.n	a11, 0x28
	l32r	a10, .LC4
	call8	__assert_func
.LVL8:
.L6:
	.loc 1 42 0 is_stmt 1
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_sha256_update_ret
.LVL9:
	.loc 1 43 0
	beqz.n	a10, .L5
	.loc 1 43 0 is_stmt 0 discriminator 1
	l32r	a13, .LC6
	l32r	a12, .LC2
	movi.n	a11, 0x2b
	l32r	a10, .LC4
.LVL10:
	call8	__assert_func
.LVL11:
.L5:
	retw.n
.LFE1:
	.size	bootloader_sha256_data, .-bootloader_sha256_data
	.section	.text.bootloader_sha256_finish,"ax",@progbits
	.literal_position
	.literal .LC7, .LC0
	.literal .LC8, __func__$3189
	.literal .LC9, .LC3
	.literal .LC10, .LC5
	.align	4
	.global	bootloader_sha256_finish
	.type	bootloader_sha256_finish, @function
bootloader_sha256_finish:
.LFB2:
	.loc 1 47 0 is_stmt 1
.LVL12:
	entry	sp, 32
.LCFI2:
	.loc 1 48 0
	bnez.n	a2, .L9
	.loc 1 48 0 is_stmt 0 discriminator 1
	l32r	a13, .LC7
	l32r	a12, .LC8
	movi.n	a11, 0x30
	l32r	a10, .LC9
	call8	__assert_func
.LVL13:
.L9:
	.loc 1 50 0 is_stmt 1
	beqz.n	a3, .L10
.LBB2:
	.loc 1 51 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_sha256_finish_ret
.LVL14:
	.loc 1 52 0
	beqz.n	a10, .L10
	.loc 1 52 0 is_stmt 0 discriminator 1
	l32r	a13, .LC10
	l32r	a12, .LC8
	movi.n	a11, 0x34
	l32r	a10, .LC9
.LVL15:
	call8	__assert_func
.LVL16:
.L10:
.LBE2:
	.loc 1 54 0 is_stmt 1
	mov.n	a10, a2
	call8	mbedtls_sha256_free
.LVL17:
	.loc 1 55 0
	mov.n	a10, a2
	call8	free
.LVL18:
	retw.n
.LFE2:
	.size	bootloader_sha256_finish, .-bootloader_sha256_finish
	.section	.text.bootloader_sha256_hex_to_str,"ax",@progbits
	.align	4
	.global	bootloader_sha256_hex_to_str
	.type	bootloader_sha256_hex_to_str, @function
bootloader_sha256_hex_to_str:
.LFB3:
	.loc 1 174 0
.LVL19:
	entry	sp, 32
.LCFI3:
	.loc 1 175 0
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a2
	.loc 1 175 0
	movnez	a8, a10, a3
	or	a8, a8, a9
	.loc 1 175 0
	bne	a8, a10, .L19
	.loc 1 175 0 discriminator 1
	beq	a4, a10, .L20
	j	.L13
.LVL20:
.L17:
.LBB3:
.LBB4:
.LBB5:
	.loc 1 180 0
	add.n	a8, a3, a12
	l8ui	a8, a8, 0
	beqz.n	a9, .L21
	movi.n	a11, 0
	j	.L14
.L21:
	movi.n	a11, 4
.L14:
	.loc 1 180 0 is_stmt 0 discriminator 4
	ssr	a11
	sra	a8, a8
	extui	a8, a8, 0, 4
.LVL21:
	.loc 1 181 0 is_stmt 1 discriminator 4
	movi.n	a11, 9
	bltu	a11, a8, .L15
	.loc 1 182 0
	addx2	a11, a10, a9
	add.n	a11, a2, a11
	addi	a8, a8, 48
.LVL22:
	s8i	a8, a11, 0
	j	.L16
.LVL23:
.L15:
	.loc 1 184 0
	addx2	a11, a10, a9
	add.n	a11, a2, a11
	addi	a8, a8, 87
.LVL24:
	s8i	a8, a11, 0
.LVL25:
.L16:
.LBE5:
	.loc 1 179 0 discriminator 2
	addi.n	a9, a9, 1
.LVL26:
	j	.L18
.LVL27:
.L22:
.LBE4:
	movi.n	a9, 0
.L18:
.LVL28:
.LBB6:
	.loc 1 179 0 is_stmt 0 discriminator 1
	blti	a9, 2, .L17
.LBE6:
	.loc 1 178 0 is_stmt 1 discriminator 2
	addi.n	a10, a10, 1
.LVL29:
.L13:
	.loc 1 178 0 is_stmt 0 discriminator 1
	mov.n	a12, a10
	bltu	a10, a4, .L22
.LBE3:
	.loc 1 188 0 is_stmt 1
	movi.n	a2, 0
.LVL30:
.LBB7:
	retw.n
.LVL31:
.L19:
.LBE7:
	.loc 1 176 0
	movi	a2, 0x102
.LVL32:
	retw.n
.LVL33:
.L20:
	movi	a2, 0x102
.LVL34:
	.loc 1 189 0
	retw.n
.LFE3:
	.size	bootloader_sha256_hex_to_str, .-bootloader_sha256_hex_to_str
	.section	.rodata.__func__$3189,"a",@progbits
	.align	4
	.type	__func__$3189, @object
	.size	__func__$3189, 25
__func__$3189:
	.string	"bootloader_sha256_finish"
	.section	.rodata.__func__$3182,"a",@progbits
	.align	4
	.type	__func__$3182, @object
	.size	__func__$3182, 23
__func__$3182:
	.string	"bootloader_sha256_data"
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
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
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include_bootloader/bootloader_sha.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4d5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xc
	.4byte	.LASF46
	.4byte	.LASF47
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
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd4
	.uleb128 0x7
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x18
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x1b
	.4byte	0xb8
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x6c
	.byte	0x7
	.byte	0x38
	.4byte	0x128
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x7
	.byte	0x3a
	.4byte	0x128
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x7
	.byte	0x3b
	.4byte	0x138
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x7
	.byte	0x3c
	.4byte	0x148
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x7
	.byte	0x3d
	.4byte	0x57
	.byte	0x68
	.byte	0
	.uleb128 0xa
	.4byte	0x94
	.4byte	0x138
	.uleb128 0xb
	.4byte	0xb1
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x94
	.4byte	0x148
	.uleb128 0xb
	.4byte	0xb1
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	0x37
	.4byte	0x158
	.uleb128 0xb
	.4byte	0xb1
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x7
	.byte	0x40
	.4byte	0xeb
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x18
	.4byte	0xe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d8
	.uleb128 0xd
	.string	"ctx"
	.byte	0x1
	.byte	0x1a
	.4byte	0x1d8
	.4byte	.LLST0
	.uleb128 0xd
	.string	"ret"
	.byte	0x1
	.byte	0x1f
	.4byte	0x57
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LVL0
	.4byte	0x480
	.4byte	0x1ae
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6c
	.byte	0
	.uleb128 0xe
	.4byte	.LVL2
	.4byte	0x48b
	.4byte	0x1c2
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL3
	.4byte	0x496
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x158
	.uleb128 0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0x26
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c0
	.uleb128 0x12
	.4byte	.LASF27
	.byte	0x1
	.byte	0x26
	.4byte	0xe0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0x1
	.byte	0x26
	.4byte	0xce
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LASF29
	.byte	0x1
	.byte	0x26
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF32
	.4byte	0x2d0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3182
	.uleb128 0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x29
	.4byte	0x1d8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xd
	.string	"ret"
	.byte	0x1
	.byte	0x2a
	.4byte	0x57
	.4byte	.LLST2
	.uleb128 0xe
	.4byte	.LVL8
	.4byte	0x4a1
	.4byte	0x274
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3182
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL9
	.4byte	0x4ac
	.4byte	0x294
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
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
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL11
	.4byte	0x4a1
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2b
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3182
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xc7
	.4byte	0x2d0
	.uleb128 0xb
	.4byte	0xb1
	.byte	0x16
	.byte	0
	.uleb128 0x15
	.4byte	0x2c0
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x1
	.byte	0x2e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d6
	.uleb128 0x12
	.4byte	.LASF27
	.byte	0x1
	.byte	0x2e
	.4byte	0xe0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2e
	.4byte	0x3d6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF32
	.4byte	0x3ec
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3189
	.uleb128 0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x31
	.4byte	0x1d8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x382
	.uleb128 0xd
	.string	"ret"
	.byte	0x1
	.byte	0x33
	.4byte	0x57
	.4byte	.LLST3
	.uleb128 0xe
	.4byte	.LVL14
	.4byte	0x4b7
	.4byte	0x356
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL16
	.4byte	0x4a1
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x34
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3189
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL13
	.4byte	0x4a1
	.4byte	0x3b1
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3189
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL17
	.4byte	0x4c2
	.4byte	0x3c5
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL18
	.4byte	0x4cd
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7e
	.uleb128 0xa
	.4byte	0xc7
	.4byte	0x3ec
	.uleb128 0xb
	.4byte	0xb1
	.byte	0x18
	.byte	0
	.uleb128 0x15
	.4byte	0x3dc
	.uleb128 0x17
	.4byte	.LASF48
	.byte	0x1
	.byte	0xad
	.4byte	0xd5
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x475
	.uleb128 0x18
	.4byte	.LASF33
	.byte	0x1
	.byte	0xad
	.4byte	0xc1
	.4byte	.LLST4
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x1
	.byte	0xad
	.4byte	0x475
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.byte	0xad
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1a
	.4byte	.Ldebug_ranges0+0
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0xb2
	.4byte	0x57
	.4byte	.LLST5
	.uleb128 0x1a
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x1b
	.4byte	.LASF35
	.byte	0x1
	.byte	0xb3
	.4byte	0x57
	.4byte	.LLST6
	.uleb128 0x1c
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1b
	.4byte	.LASF36
	.byte	0x1
	.byte	0xb4
	.4byte	0x7e
	.4byte	.LLST7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x47b
	.uleb128 0x15
	.4byte	0x7e
	.uleb128 0x1d
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x8
	.byte	0x65
	.uleb128 0x1d
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x7
	.byte	0x4b
	.uleb128 0x1d
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x7
	.byte	0x67
	.uleb128 0x1d
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x9
	.byte	0x29
	.uleb128 0x1d
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x7
	.byte	0x73
	.uleb128 0x1d
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x7
	.byte	0x80
	.uleb128 0x1d
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x7
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x8
	.byte	0x5a
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL19
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
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL20
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x78
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0x78
	.sleb128 -87
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF35:
	.string	"shift"
.LASF4:
	.string	"__uint8_t"
.LASF23:
	.string	"is224"
.LASF21:
	.string	"state"
.LASF5:
	.string	"__int32_t"
.LASF30:
	.string	"bootloader_sha256_finish"
.LASF2:
	.string	"short int"
.LASF41:
	.string	"mbedtls_sha256_update_ret"
.LASF45:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"data_len"
.LASF38:
	.string	"mbedtls_sha256_init"
.LASF32:
	.string	"__func__"
.LASF28:
	.string	"data"
.LASF33:
	.string	"out_str"
.LASF19:
	.string	"bootloader_sha256_handle_t"
.LASF1:
	.string	"unsigned char"
.LASF34:
	.string	"in_array_hex"
.LASF16:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF13:
	.string	"size_t"
.LASF48:
	.string	"bootloader_sha256_hex_to_str"
.LASF12:
	.string	"uint32_t"
.LASF27:
	.string	"handle"
.LASF39:
	.string	"mbedtls_sha256_starts_ret"
.LASF18:
	.string	"esp_err_t"
.LASF6:
	.string	"__uint32_t"
.LASF26:
	.string	"bootloader_sha256_data"
.LASF40:
	.string	"__assert_func"
.LASF7:
	.string	"unsigned int"
.LASF47:
	.string	"/home/raphael/rtone/lcd/build/bootloader_support"
.LASF46:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/src/bootloader_sha.c"
.LASF9:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF20:
	.string	"total"
.LASF11:
	.string	"int32_t"
.LASF15:
	.string	"sizetype"
.LASF44:
	.string	"free"
.LASF8:
	.string	"long long int"
.LASF17:
	.string	"char"
.LASF42:
	.string	"mbedtls_sha256_finish_ret"
.LASF43:
	.string	"mbedtls_sha256_free"
.LASF24:
	.string	"mbedtls_sha256_context"
.LASF25:
	.string	"bootloader_sha256_start"
.LASF22:
	.string	"buffer"
.LASF31:
	.string	"digest"
.LASF14:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF37:
	.string	"malloc"
.LASF36:
	.string	"nibble"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
