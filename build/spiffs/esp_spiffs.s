	.file	"esp_spiffs.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, -10050
	.align	4
	.global	esp32_spi_flash_read
	.type	esp32_spi_flash_read, @function
esp32_spi_flash_read:
.LFB19:
	.file 1 "/home/raphael/rtone/lcd/components/spiffs/esp_spiffs.c"
	.loc 1 39 0
.LVL0:
	entry	sp, 48
.LCFI0:
	mov.n	a6, a2
.LVL1:
	.loc 1 48 0
	addi.n	a5, a2, 3
	movi.n	a2, -4
.LVL2:
	and	a5, a5, a2
.LVL3:
	.loc 1 49 0
	beq	a6, a5, .L6
	.loc 1 50 0
	add.n	a5, a5, a2
.LVL4:
	.loc 1 51 0
	sub	a2, a6, a5
	add.n	a2, a3, a2
.LVL5:
	j	.L2
.LVL6:
.L6:
	.loc 1 45 0
	mov.n	a2, a3
.LVL7:
.L2:
	.loc 1 55 0
	addi.n	a2, a2, 3
.LVL8:
	movi.n	a7, -4
	and	a2, a2, a7
.LVL9:
	.loc 1 57 0
	sub	a8, a5, a6
	movi.n	a10, 1
	movi.n	a7, 0
	mov.n	a9, a7
	movnez	a9, a10, a8
	mov.n	a8, a9
	sub	a9, a3, a2
	movnez	a7, a10, a9
	or	a7, a7, a8
	beqz.n	a7, .L3
	.loc 1 59 0
	addi.n	a10, a2, 4
	call8	malloc
.LVL10:
	mov.n	a7, a10
.LVL11:
	.loc 1 60 0
	beqz.n	a10, .L7
	.loc 1 64 0
	addi.n	a9, a10, 3
	movi.n	a8, -4
	and	a8, a9, a8
	s32i.n	a8, sp, 0
.LVL12:
	.loc 1 66 0
	mov.n	a12, a2
	mov.n	a11, a8
	mov.n	a10, a5
	call8	spi_flash_read
.LVL13:
	mov.n	a2, a10
.LVL14:
	beqz.n	a10, .L5
	.loc 1 67 0
	mov.n	a10, a7
	call8	free
.LVL15:
	.loc 1 68 0
	l32r	a2, .LC0
	retw.n
.L5:
	.loc 1 71 0
	sub	a11, a6, a5
	mov.n	a12, a3
	l32i.n	a3, sp, 0
.LVL16:
	add.n	a11, a3, a11
	mov.n	a10, a4
	call8	memcpy
.LVL17:
	.loc 1 73 0
	mov.n	a10, a7
	call8	free
.LVL18:
	retw.n
.LVL19:
.L3:
	.loc 1 75 0
	mov.n	a12, a3
	mov.n	a11, a4
	mov.n	a10, a6
	call8	spi_flash_read
.LVL20:
	mov.n	a2, a10
.LVL21:
	beqz.n	a10, .L4
	.loc 1 76 0
	l32r	a2, .LC0
	retw.n
.LVL22:
.L7:
	.loc 1 61 0
	l32r	a2, .LC0
.LVL23:
.L4:
	.loc 1 81 0
	retw.n
.LFE19:
	.size	esp32_spi_flash_read, .-esp32_spi_flash_read
	.literal_position
	.literal .LC1, -10050
	.align	4
	.global	esp32_spi_flash_write
	.type	esp32_spi_flash_write, @function
esp32_spi_flash_write:
.LFB20:
	.loc 1 83 0
.LVL24:
	entry	sp, 48
.LCFI1:
.LVL25:
	.loc 1 92 0
	addi.n	a6, a2, 3
	movi.n	a5, -4
	and	a5, a6, a5
.LVL26:
	.loc 1 93 0
	beq	a2, a5, .L14
	.loc 1 94 0
	addi	a5, a5, -4
.LVL27:
	.loc 1 95 0
	sub	a6, a2, a5
	add.n	a6, a3, a6
.LVL28:
	j	.L9
.LVL29:
.L14:
	.loc 1 89 0
	mov.n	a6, a3
.LVL30:
.L9:
	.loc 1 99 0
	addi.n	a6, a6, 3
.LVL31:
	movi.n	a7, -4
	and	a6, a6, a7
.LVL32:
	.loc 1 101 0
	sub	a8, a5, a2
	movi.n	a10, 1
	movi.n	a7, 0
	mov.n	a9, a7
	movnez	a9, a10, a8
	mov.n	a8, a9
	sub	a9, a3, a6
	movnez	a7, a10, a9
	or	a7, a7, a8
	beqz.n	a7, .L10
	.loc 1 103 0
	addi.n	a10, a6, 4
	call8	malloc
.LVL33:
	mov.n	a7, a10
.LVL34:
	.loc 1 104 0
	beqz.n	a10, .L15
	.loc 1 108 0
	addi.n	a9, a10, 3
	movi.n	a8, -4
	and	a8, a9, a8
	s32i.n	a8, sp, 0
.LVL35:
	.loc 1 110 0
	mov.n	a12, a6
	mov.n	a11, a8
	mov.n	a10, a5
	call8	spi_flash_read
.LVL36:
	beqz.n	a10, .L12
	.loc 1 111 0
	mov.n	a10, a7
	call8	free
.LVL37:
	.loc 1 112 0
	l32r	a2, .LC1
.LVL38:
	retw.n
.LVL39:
.L12:
	.loc 1 115 0
	sub	a10, a2, a5
	mov.n	a12, a3
	mov.n	a11, a4
	l32i.n	a2, sp, 0
.LVL40:
	add.n	a10, a2, a10
	call8	memcpy
.LVL41:
	.loc 1 117 0
	mov.n	a12, a6
	l32i.n	a11, sp, 0
	mov.n	a10, a5
	call8	spi_flash_write
.LVL42:
	mov.n	a2, a10
	beqz.n	a10, .L13
	.loc 1 118 0
	mov.n	a10, a7
	call8	free
.LVL43:
	.loc 1 119 0
	l32r	a2, .LC1
	retw.n
.L13:
	.loc 1 122 0
	mov.n	a10, a7
	call8	free
.LVL44:
	retw.n
.LVL45:
.L10:
	.loc 1 124 0
	mov.n	a12, a3
	mov.n	a11, a4
	mov.n	a10, a2
	call8	spi_flash_write
.LVL46:
	mov.n	a2, a10
.LVL47:
	beqz.n	a10, .L11
	.loc 1 125 0
	l32r	a2, .LC1
	retw.n
.LVL48:
.L15:
	.loc 1 105 0
	l32r	a2, .LC1
.LVL49:
.L11:
	.loc 1 130 0
	retw.n
.LFE20:
	.size	esp32_spi_flash_write, .-esp32_spi_flash_write
	.literal_position
	.literal .LC2, -10050
	.align	4
	.global	esp32_spi_flash_erase
	.type	esp32_spi_flash_erase, @function
esp32_spi_flash_erase:
.LFB21:
	.loc 1 132 0
.LVL50:
	entry	sp, 32
.LCFI2:
	.loc 1 133 0
	srli	a10, a2, 12
	call8	spi_flash_erase_sector
.LVL51:
	beqz.n	a10, .L17
	.loc 1 134 0
	l32r	a10, .LC2
.L17:
	.loc 1 138 0
	mov.n	a2, a10
.LVL52:
	retw.n
.LFE21:
	.size	esp32_spi_flash_erase, .-esp32_spi_flash_erase
	.comm	spiffs_mutex,4,4
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
	.uleb128 0x30
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
	.uleb128 0x30
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
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/queue.h"
	.file 6 "/home/raphael/rtone/lcd/components/spiffs/spiffs_config.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/include/esp_spi_flash.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3e7
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
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x95
	.4byte	0x3e
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x58
	.4byte	0x81
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x1b
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x1c
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x20
	.4byte	0x4c
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc4
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x1
	.byte	0x27
	.4byte	0xae
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f4
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x27
	.4byte	0xb9
	.4byte	.LLST0
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x27
	.4byte	0xb9
	.4byte	.LLST1
	.uleb128 0x9
	.string	"dst"
	.byte	0x1
	.byte	0x27
	.4byte	0xcf
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x28
	.4byte	0xb9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0x29
	.4byte	0xcf
	.4byte	.LLST2
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0x2a
	.4byte	0xcf
	.4byte	.LLST3
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x2b
	.4byte	0xb9
	.4byte	.LLST4
	.uleb128 0xc
	.4byte	.LVL10
	.4byte	0x3aa
	.4byte	0x167
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.uleb128 0xc
	.4byte	.LVL13
	.4byte	0x3b5
	.4byte	0x188
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL15
	.4byte	0x3c0
	.4byte	0x19c
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL17
	.4byte	0x3cb
	.4byte	0x1c3
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0xc
	.4byte	.LVL18
	.4byte	0x3c0
	.4byte	0x1d7
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL20
	.4byte	0x3b5
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x1
	.byte	0x53
	.4byte	0xae
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x346
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x53
	.4byte	0xb9
	.4byte	.LLST5
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0x53
	.4byte	0xb9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x9
	.string	"src"
	.byte	0x1
	.byte	0x53
	.4byte	0x346
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x54
	.4byte	0xb9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0x55
	.4byte	0xcf
	.4byte	.LLST6
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0x56
	.4byte	0xcf
	.4byte	.LLST7
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x57
	.4byte	0xb9
	.4byte	.LLST8
	.uleb128 0xc
	.4byte	.LVL33
	.4byte	0x3aa
	.4byte	0x284
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 4
	.byte	0
	.uleb128 0xc
	.4byte	.LVL36
	.4byte	0x3b5
	.4byte	0x2a5
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL37
	.4byte	0x3c0
	.4byte	0x2b9
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL41
	.4byte	0x3cb
	.4byte	0x2e0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL42
	.4byte	0x3d4
	.4byte	0x301
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL43
	.4byte	0x3c0
	.4byte	0x315
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL44
	.4byte	0x3c0
	.4byte	0x329
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL46
	.4byte	0x3d4
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x34c
	.uleb128 0x10
	.4byte	0xc4
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x1
	.byte	0x84
	.4byte	0xae
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x399
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x84
	.4byte	0xb9
	.4byte	.LLST9
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0x84
	.4byte	0xb9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LVL51
	.4byte	0x3df
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x72
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x6
	.byte	0x22
	.4byte	0xa3
	.uleb128 0x5
	.byte	0x3
	.4byte	spiffs_mutex
	.uleb128 0x12
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x7
	.byte	0x65
	.uleb128 0x12
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x8
	.byte	0x8b
	.uleb128 0x12
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x7
	.byte	0x5a
	.uleb128 0x13
	.4byte	.LASF37
	.4byte	.LASF37
	.uleb128 0x12
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x8
	.byte	0x5d
	.uleb128 0x12
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x8
	.byte	0x3f
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL17-1
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13-1
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL19
	.4byte	.LFE19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x72
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL24
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
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL25
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL25
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL36-1
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL45
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x76
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF16:
	.string	"s32_t"
.LASF24:
	.string	"asize"
.LASF1:
	.string	"short unsigned int"
.LASF15:
	.string	"QueueHandle_t"
.LASF33:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF8:
	.string	"long long unsigned int"
.LASF36:
	.string	"spiffs_mutex"
.LASF3:
	.string	"unsigned char"
.LASF26:
	.string	"esp32_spi_flash_write"
.LASF11:
	.string	"long unsigned int"
.LASF19:
	.string	"addr"
.LASF22:
	.string	"buff"
.LASF21:
	.string	"aaddr"
.LASF6:
	.string	"__uint32_t"
.LASF17:
	.string	"u32_t"
.LASF5:
	.string	"ptrdiff_t"
.LASF29:
	.string	"spi_flash_read"
.LASF23:
	.string	"abuff"
.LASF0:
	.string	"unsigned int"
.LASF12:
	.string	"char"
.LASF34:
	.string	"/home/raphael/rtone/lcd/components/spiffs/esp_spiffs.c"
.LASF18:
	.string	"u8_t"
.LASF31:
	.string	"spi_flash_write"
.LASF27:
	.string	"esp32_spi_flash_erase"
.LASF10:
	.string	"sizetype"
.LASF30:
	.string	"free"
.LASF7:
	.string	"long long int"
.LASF25:
	.string	"esp32_spi_flash_read"
.LASF35:
	.string	"/home/raphael/rtone/lcd/build/spiffs"
.LASF37:
	.string	"memcpy"
.LASF4:
	.string	"short int"
.LASF13:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF20:
	.string	"size"
.LASF14:
	.string	"_Bool"
.LASF28:
	.string	"malloc"
.LASF32:
	.string	"spi_flash_erase_sector"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
