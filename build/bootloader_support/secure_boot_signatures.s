	.file	"secure_boot_signatures.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.string	"secure_boot"
	.align	4
.LC5:
	.string	"\033[0;31mE (%d) %s: Embedded public verification key has wrong length %d\033[0m\n"
	.align	4
.LC7:
	.string	"\033[0;31mE (%d) %s: image has invalid signature version field 0x%08x\033[0m\n"
	.section	.text.esp_secure_boot_verify_signature_block,"ax",@progbits
	.literal_position
	.literal .LC0, 8194
	.literal .LC1, _binary_signature_verification_key_bin_end
	.literal .LC2, _binary_signature_verification_key_bin_start
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.align	4
	.global	esp_secure_boot_verify_signature_block
	.type	esp_secure_boot_verify_signature_block, @function
esp_secure_boot_verify_signature_block:
.LFB4:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/src/secure_boot_signatures.c"
	.loc 1 72 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 76 0
	l32r	a8, .LC2
	l32r	a4, .LC1
	sub	a4, a4, a8
.LVL1:
	.loc 1 77 0
	beqi	a4, 64, .L2
	.loc 1 78 0 discriminator 2
	call8	esp_log_timestamp
.LVL2:
	l32r	a11, .LC4
	mov.n	a15, a4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC6
	movi.n	a10, 1
	call8	esp_log_write
.LVL3:
	.loc 1 79 0 discriminator 2
	movi.n	a2, -1
.LVL4:
	retw.n
.LVL5:
.L2:
	.loc 1 82 0
	l32i.n	a4, a2, 0
.LVL6:
	beqz.n	a4, .L4
	.loc 1 83 0 discriminator 2
	call8	esp_log_timestamp
.LVL7:
	l32r	a11, .LC4
	l32i.n	a15, a2, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC8
	movi.n	a10, 1
	call8	esp_log_write
.LVL8:
	.loc 1 84 0 discriminator 2
	movi.n	a2, -1
.LVL9:
	retw.n
.LVL10:
.L4:
	.loc 1 92 0
	addi.n	a2, a2, 4
.LVL11:
	.loc 1 89 0
	call8	uECC_secp256r1
.LVL12:
	mov.n	a14, a10
	mov.n	a13, a2
	movi.n	a12, 0x20
	mov.n	a11, a3
	l32r	a10, .LC2
.LVL13:
	call8	uECC_verify
.LVL14:
	.loc 1 95 0
	beqz.n	a10, .L5
	movi.n	a2, 0
.LVL15:
	retw.n
.L5:
	l32r	a2, .LC0
	.loc 1 96 0
	retw.n
.LFE4:
	.size	esp_secure_boot_verify_signature_block, .-esp_secure_boot_verify_signature_block
	.section	.rodata.str1.4
	.align	4
.LC10:
	.string	"\033[0;31mE (%d) %s: bootloader_mmap(0x%x, 0x%x) failed\033[0m\n"
	.section	.text.esp_secure_boot_verify_signature,"ax",@progbits
	.literal_position
	.literal .LC9, .LC3
	.literal .LC11, .LC10
	.align	4
	.global	esp_secure_boot_verify_signature
	.type	esp_secure_boot_verify_signature, @function
esp_secure_boot_verify_signature:
.LFB3:
	.loc 1 41 0
.LVL16:
	entry	sp, 80
.LCFI1:
	.loc 1 48 0
	addi	a5, a3, 68
	mov.n	a11, a5
	mov.n	a10, a2
	call8	bootloader_mmap
.LVL17:
	mov.n	a4, a10
.LVL18:
	.loc 1 49 0
	bnez.n	a10, .L7
	.loc 1 50 0 discriminator 2
	call8	esp_log_timestamp
.LVL19:
	l32r	a11, .LC9
	s32i.n	a5, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC11
	movi.n	a10, 1
	call8	esp_log_write
.LVL20:
	.loc 1 51 0 discriminator 2
	movi.n	a2, -1
.LVL21:
	retw.n
.LVL22:
.L7:
	.loc 1 61 0
	movi.n	a13, 0
	addi	a12, sp, 16
	mov.n	a11, a3
	call8	mbedtls_sha256_ret
.LVL23:
	.loc 1 66 0
	addi	a11, sp, 16
	add.n	a10, a4, a3
.LVL24:
	call8	esp_secure_boot_verify_signature_block
.LVL25:
	mov.n	a2, a10
.LVL26:
	.loc 1 67 0
	mov.n	a10, a4
	call8	bootloader_munmap
.LVL27:
	.loc 1 69 0
	retw.n
.LFE3:
	.size	esp_secure_boot_verify_signature, .-esp_secure_boot_verify_signature
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI1-.LFB3
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include/esp_secure_boot.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/micro-ecc/micro-ecc/uECC.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x411
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0xc
	.4byte	.LASF52
	.4byte	.LASF53
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0x95
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x19
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x5
	.byte	0x4
	.4byte	0xcc
	.uleb128 0x6
	.4byte	0xbf
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x5
	.byte	0x18
	.4byte	0x94
	.uleb128 0x7
	.byte	0x4
	.4byte	0x37
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
	.4byte	0x89
	.4byte	0x11d
	.uleb128 0xa
	.4byte	0xb1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.byte	0x44
	.byte	0x6
	.byte	0x61
	.4byte	0x13e
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0x62
	.4byte	0x9f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x63
	.4byte	0x13e
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	0x89
	.4byte	0x14e
	.uleb128 0xa
	.4byte	0xb1
	.byte	0x3f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x6
	.byte	0x64
	.4byte	0x11d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x15f
	.uleb128 0x6
	.4byte	0x89
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0x47
	.4byte	0xd1
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x253
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x1
	.byte	0x47
	.4byte	0x253
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x47
	.4byte	0x159
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0x49
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x1
	.byte	0x4a
	.4byte	0x25e
	.uleb128 0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uleb128 0x12
	.4byte	.LVL2
	.4byte	0x3c6
	.uleb128 0x13
	.4byte	.LVL3
	.4byte	0x3d1
	.4byte	0x1f6
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL7
	.4byte	0x3c6
	.uleb128 0x13
	.4byte	.LVL8
	.4byte	0x3d1
	.4byte	0x22d
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x12
	.4byte	.LVL12
	.4byte	0x3dc
	.uleb128 0x15
	.4byte	.LVL14
	.4byte	0x3e7
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x259
	.uleb128 0x6
	.4byte	0x14e
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF32
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x1
	.byte	0x28
	.4byte	0xd1
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x37c
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x1
	.byte	0x28
	.4byte	0x9f
	.4byte	.LLST2
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x1
	.byte	0x28
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x1
	.byte	0x2a
	.4byte	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x1
	.byte	0x2b
	.4byte	0x159
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0x1
	.byte	0x2c
	.4byte	0x253
	.4byte	.LLST3
	.uleb128 0x16
	.string	"err"
	.byte	0x1
	.byte	0x42
	.4byte	0xd1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LVL17
	.4byte	0x3f3
	.4byte	0x2eb
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL19
	.4byte	0x3c6
	.uleb128 0x13
	.4byte	.LVL20
	.4byte	0x3d1
	.4byte	0x32f
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL23
	.4byte	0x3fe
	.4byte	0x34e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL25
	.4byte	0x164
	.4byte	0x36b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x15
	.4byte	.LVL27
	.4byte	0x409
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"TAG"
	.byte	0x1
	.byte	0x1f
	.4byte	0x38e
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC3
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xc6
	.uleb128 0x9
	.4byte	0x89
	.4byte	0x39e
	.uleb128 0x17
	.byte	0
	.uleb128 0x18
	.4byte	.LASF40
	.byte	0x1
	.byte	0x21
	.4byte	.LASF42
	.4byte	0x3ad
	.uleb128 0x6
	.4byte	0x393
	.uleb128 0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0x22
	.4byte	.LASF43
	.4byte	0x3c1
	.uleb128 0x6
	.4byte	0x393
	.uleb128 0x19
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x7
	.byte	0x57
	.uleb128 0x19
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x7
	.byte	0x6b
	.uleb128 0x19
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x8
	.byte	0x60
	.uleb128 0x1a
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x8
	.2byte	0x163
	.uleb128 0x19
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x9
	.byte	0x32
	.uleb128 0x19
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0xa
	.byte	0xde
	.uleb128 0x19
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x9
	.byte	0x3a
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
	.uleb128 0x8
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
	.uleb128 0xe
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x72
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL16
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25-1
	.4byte	.LFE3
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF39:
	.string	"sigblock"
.LASF4:
	.string	"__uint8_t"
.LASF37:
	.string	"digest"
.LASF20:
	.string	"ESP_LOG_ERROR"
.LASF21:
	.string	"ESP_LOG_WARN"
.LASF26:
	.string	"signature"
.LASF7:
	.string	"__int32_t"
.LASF1:
	.string	"short unsigned int"
.LASF48:
	.string	"bootloader_mmap"
.LASF32:
	.string	"_Bool"
.LASF3:
	.string	"ptrdiff_t"
.LASF44:
	.string	"esp_log_timestamp"
.LASF22:
	.string	"ESP_LOG_INFO"
.LASF38:
	.string	"data"
.LASF27:
	.string	"esp_secure_boot_sig_block_t"
.LASF52:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/src/secure_boot_signatures.c"
.LASF42:
	.string	"_binary_signature_verification_key_bin_start"
.LASF16:
	.string	"long unsigned int"
.LASF43:
	.string	"_binary_signature_verification_key_bin_end"
.LASF8:
	.string	"__uint32_t"
.LASF33:
	.string	"esp_secure_boot_verify_signature_block"
.LASF18:
	.string	"esp_err_t"
.LASF6:
	.string	"short int"
.LASF29:
	.string	"image_digest"
.LASF35:
	.string	"src_addr"
.LASF46:
	.string	"uECC_secp256r1"
.LASF25:
	.string	"version"
.LASF5:
	.string	"unsigned char"
.LASF0:
	.string	"unsigned int"
.LASF53:
	.string	"/home/raphael/rtone/lcd/build/bootloader_support"
.LASF23:
	.string	"ESP_LOG_DEBUG"
.LASF10:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint8_t"
.LASF50:
	.string	"bootloader_munmap"
.LASF12:
	.string	"int32_t"
.LASF51:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF47:
	.string	"uECC_verify"
.LASF15:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF17:
	.string	"char"
.LASF34:
	.string	"esp_secure_boot_verify_signature"
.LASF30:
	.string	"keylen"
.LASF19:
	.string	"ESP_LOG_NONE"
.LASF31:
	.string	"is_valid"
.LASF45:
	.string	"esp_log_write"
.LASF13:
	.string	"uint32_t"
.LASF14:
	.string	"long int"
.LASF40:
	.string	"signature_verification_key_start"
.LASF49:
	.string	"mbedtls_sha256_ret"
.LASF2:
	.string	"signed char"
.LASF41:
	.string	"signature_verification_key_end"
.LASF36:
	.string	"length"
.LASF24:
	.string	"ESP_LOG_VERBOSE"
.LASF28:
	.string	"sig_block"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
