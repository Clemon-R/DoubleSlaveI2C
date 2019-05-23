	.file	"sdmmc_init.c"
	.text
.Ltext0:
	.section	.text.sdmmc_card_init,"ax",@progbits
	.literal_position
	.align	4
	.global	sdmmc_card_init
	.type	sdmmc_card_init, @function
sdmmc_card_init:
.LFB23:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/sdmmc/sdmmc_init.c"
	.loc 1 35 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 36 0
	movi	a12, 0x88
	movi.n	a11, 0
	mov.n	a10, a3
	call8	memset
.LVL1:
	.loc 1 37 0
	movi.n	a12, 0x38
	mov.n	a11, a2
	mov.n	a10, a3
	call8	memcpy
.LVL2:
.LBB25:
.LBB26:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/sdmmc/sdmmc_common.h"
	.loc 2 122 0
	l32i.n	a4, a3, 0
	movi.n	a2, 8
.LVL3:
	and	a4, a4, a2
.LVL4:
.LBE26:
.LBE25:
	.loc 1 43 0
	bnez.n	a4, .L2
.LBB27:
	.loc 1 43 0 is_stmt 0 discriminator 1
	mov.n	a10, a3
	call8	sdmmc_fix_host_flags
.LVL5:
	bnez.n	a10, .L17
.LVL6:
.L2:
.LBE27:
.LBB28:
	.loc 1 46 0 is_stmt 1 discriminator 1
	mov.n	a10, a3
	call8	sdmmc_io_reset
.LVL7:
	bnez.n	a10, .L18
.LBE28:
.LBB29:
	.loc 1 49 0 discriminator 1
	mov.n	a10, a3
.LVL8:
	call8	sdmmc_send_cmd_go_idle_state
.LVL9:
	bnez.n	a10, .L19
.LBE29:
.LBB30:
	.loc 1 52 0 discriminator 1
	mov.n	a10, a3
.LVL10:
	call8	sdmmc_init_sd_if_cond
.LVL11:
	bnez.n	a10, .L20
.LBE30:
.LBB31:
	.loc 1 55 0 discriminator 1
	mov.n	a10, a3
.LVL12:
	call8	sdmmc_init_io
.LVL13:
	bnez.n	a10, .L21
.LBE31:
	.loc 1 57 0
	l32i	a5, a3, 128
	extui	a5, a5, 16, 1
.LVL14:
	.loc 1 58 0
	movi.n	a6, 1
	xor	a6, a5, a6
	extui	a6, a6, 0, 8
.LVL15:
	.loc 1 61 0
	beqz.n	a4, .L4
.LBB32:
	.loc 1 61 0 is_stmt 0 discriminator 1
	mov.n	a10, a3
.LVL16:
	call8	sdmmc_init_spi_crc
.LVL17:
	bnez.n	a10, .L22
.LVL18:
.L4:
.LBE32:
	.loc 1 64 0 is_stmt 1
	beqz.n	a5, .L5
.LBB33:
	.loc 1 64 0 is_stmt 0 discriminator 1
	mov.n	a10, a3
	call8	sdmmc_init_ocr
.LVL19:
	bnez.n	a10, .L23
.LVL20:
.L5:
.LBE33:
	.loc 1 66 0 is_stmt 1
	beqz.n	a5, .L24
	.loc 1 66 0 is_stmt 0 discriminator 1
	l32i	a2, a3, 128
	bbsi	a2, 18, .L25
	.loc 1 66 0
	movi.n	a7, 0
	j	.L6
.L24:
	movi.n	a7, 0
	j	.L6
.L25:
	movi.n	a7, 1
.L6:
.LVL21:
.LBB34:
	.loc 1 73 0 is_stmt 1 discriminator 6
	mov.n	a10, a3
	call8	sdmmc_init_cid
.LVL22:
	bnez.n	a10, .L26
.LBE34:
	.loc 1 76 0
	beqz.n	a5, .L7
.LBB35:
	.loc 1 76 0 is_stmt 0 discriminator 1
	mov.n	a10, a3
.LVL23:
	call8	sdmmc_init_csd
.LVL24:
	bnez.n	a10, .L27
.LVL25:
.L7:
.LBE35:
	.loc 1 82 0 is_stmt 1
	bnez.n	a4, .L8
.LBB36:
	.loc 1 82 0 is_stmt 0 discriminator 1
	mov.n	a10, a3
	call8	sdmmc_init_select_card
.LVL26:
	bnez.n	a10, .L28
.LVL27:
.L8:
.LBE36:
	.loc 1 89 0 is_stmt 1
	bgeu	a7, a5, .L9
.LBB37:
	.loc 1 89 0 is_stmt 0 discriminator 1
	mov.n	a10, a3
	call8	sdmmc_init_sd_blocklen
.LVL28:
	bnez.n	a10, .L29
.LVL29:
.L9:
.LBE37:
	.loc 1 90 0 is_stmt 1
	bgeu	a7, a5, .L10
.LBB38:
	.loc 1 90 0 is_stmt 0 discriminator 1
	mov.n	a10, a3
	call8	sdmmc_init_sd_scr
.LVL30:
	bnez.n	a10, .L30
.LVL31:
.L10:
.LBE38:
	.loc 1 91 0 is_stmt 1
	bgeu	a7, a5, .L11
.LBB39:
	.loc 1 91 0 is_stmt 0 discriminator 1
	mov.n	a10, a3
	call8	sdmmc_init_sd_wait_data_ready
.LVL32:
	bnez.n	a10, .L31
.LVL33:
.L11:
.LBE39:
	.loc 1 94 0 is_stmt 1
	beqz.n	a7, .L12
.LBB40:
	.loc 1 94 0 is_stmt 0 discriminator 1
	mov.n	a10, a3
	call8	sdmmc_init_mmc_read_ext_csd
.LVL34:
	bnez.n	a10, .L32
.LVL35:
.L12:
.LBE40:
.LBB41:
	.loc 1 99 0 is_stmt 1 discriminator 1
	mov.n	a10, a3
	call8	sdmmc_init_card_hs_mode
.LVL36:
	bnez.n	a10, .L33
.LBE41:
	.loc 1 102 0
	bnez.n	a4, .L13
	.loc 1 103 0
	bgeu	a7, a5, .L14
.LBB42:
	.loc 1 103 0 is_stmt 0 discriminator 1
	mov.n	a10, a3
.LVL37:
	call8	sdmmc_init_sd_bus_width
.LVL38:
	bnez.n	a10, .L34
.LVL39:
.L14:
.LBE42:
	.loc 1 104 0 is_stmt 1
	beqz.n	a6, .L15
.LBB43:
	.loc 1 104 0 is_stmt 0 discriminator 1
	mov.n	a10, a3
	call8	sdmmc_init_io_bus_width
.LVL40:
	bnez.n	a10, .L35
.LVL41:
.L15:
.LBE43:
	.loc 1 105 0 is_stmt 1
	beqz.n	a7, .L16
.LBB44:
	.loc 1 105 0 is_stmt 0 discriminator 1
	mov.n	a10, a3
	call8	sdmmc_init_mmc_bus_width
.LVL42:
	bnez.n	a10, .L36
.LVL43:
.L16:
.LBE44:
.LBB45:
	.loc 1 106 0 is_stmt 1 discriminator 1
	mov.n	a10, a3
	call8	sdmmc_init_host_bus_width
.LVL44:
	bnez.n	a10, .L37
.LVL45:
.L13:
.LBE45:
.LBB46:
	.loc 1 110 0 discriminator 1
	mov.n	a10, a3
	call8	sdmmc_init_host_frequency
.LVL46:
	bnez.n	a10, .L38
.LBE46:
	.loc 1 113 0
	bgeu	a7, a5, .L39
.LBB47:
	.loc 1 113 0 is_stmt 0 discriminator 1
	mov.n	a10, a3
.LVL47:
	call8	sdmmc_check_scr
.LVL48:
	beqz.n	a10, .L40
	.loc 1 113 0
	mov.n	a2, a10
	retw.n
.LVL49:
.L17:
.LBE47:
.LBB48:
	.loc 1 43 0 is_stmt 1
	mov.n	a2, a10
	retw.n
.LVL50:
.L18:
.LBE48:
.LBB49:
	.loc 1 46 0
	mov.n	a2, a10
	retw.n
.LVL51:
.L19:
.LBE49:
.LBB50:
	.loc 1 49 0
	mov.n	a2, a10
	retw.n
.LVL52:
.L20:
.LBE50:
.LBB51:
	.loc 1 52 0
	mov.n	a2, a10
	retw.n
.LVL53:
.L21:
.LBE51:
.LBB52:
	.loc 1 55 0
	mov.n	a2, a10
	retw.n
.LVL54:
.L22:
.LBE52:
.LBB53:
	.loc 1 61 0
	mov.n	a2, a10
	retw.n
.LVL55:
.L23:
.LBE53:
.LBB54:
	.loc 1 64 0
	mov.n	a2, a10
	retw.n
.LVL56:
.L26:
.LBE54:
.LBB55:
	.loc 1 73 0
	mov.n	a2, a10
	retw.n
.LVL57:
.L27:
.LBE55:
.LBB56:
	.loc 1 76 0
	mov.n	a2, a10
	retw.n
.LVL58:
.L28:
.LBE56:
.LBB57:
	.loc 1 82 0
	mov.n	a2, a10
	retw.n
.LVL59:
.L29:
.LBE57:
.LBB58:
	.loc 1 89 0
	mov.n	a2, a10
	retw.n
.LVL60:
.L30:
.LBE58:
.LBB59:
	.loc 1 90 0
	mov.n	a2, a10
	retw.n
.LVL61:
.L31:
.LBE59:
.LBB60:
	.loc 1 91 0
	mov.n	a2, a10
	retw.n
.LVL62:
.L32:
.LBE60:
.LBB61:
	.loc 1 94 0
	mov.n	a2, a10
	retw.n
.LVL63:
.L33:
.LBE61:
.LBB62:
	.loc 1 99 0
	mov.n	a2, a10
	retw.n
.LVL64:
.L34:
.LBE62:
.LBB63:
	.loc 1 103 0
	mov.n	a2, a10
	retw.n
.LVL65:
.L35:
.LBE63:
.LBB64:
	.loc 1 104 0
	mov.n	a2, a10
	retw.n
.LVL66:
.L36:
.LBE64:
.LBB65:
	.loc 1 105 0
	mov.n	a2, a10
	retw.n
.LVL67:
.L37:
.LBE65:
.LBB66:
	.loc 1 106 0
	mov.n	a2, a10
	retw.n
.LVL68:
.L38:
.LBE66:
.LBB67:
	.loc 1 110 0
	mov.n	a2, a10
	retw.n
.L39:
.LBE67:
	.loc 1 116 0
	movi.n	a2, 0
	retw.n
.LVL69:
.L40:
	movi.n	a2, 0
	.loc 1 117 0
	retw.n
.LFE23:
	.size	sdmmc_card_init, .-sdmmc_card_init
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI0-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 3 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/driver/include/driver/sdmmc_types.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb09
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0xc
	.4byte	.LASF114
	.4byte	.LASF115
	.4byte	.Ldebug_ranges0+0x1e0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0xd8
	.4byte	0x37
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
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
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x7
	.4byte	0xab
	.uleb128 0x8
	.4byte	0xab
	.4byte	0xcd
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0xa
	.byte	0x4
	.4byte	0x37
	.byte	0x9
	.byte	0x1f
	.4byte	0x12a
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x6
	.byte	0x18
	.4byte	0xe3
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF27
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0x76
	.4byte	0xee
	.uleb128 0xc
	.byte	0x1c
	.byte	0x8
	.byte	0x1d
	.4byte	0x1a4
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x8
	.byte	0x1e
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x8
	.byte	0x1f
	.4byte	0x25
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x8
	.byte	0x20
	.4byte	0x25
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x8
	.byte	0x21
	.4byte	0x25
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x8
	.byte	0x22
	.4byte	0x25
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x8
	.byte	0x23
	.4byte	0x25
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x8
	.byte	0x24
	.4byte	0x25
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x8
	.byte	0x25
	.4byte	0x147
	.uleb128 0xc
	.byte	0x1c
	.byte	0x8
	.byte	0x2a
	.4byte	0x200
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x8
	.byte	0x2b
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x8
	.byte	0x2c
	.4byte	0x25
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x8
	.byte	0x2d
	.4byte	0xbd
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x8
	.byte	0x2e
	.4byte	0x25
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x8
	.byte	0x2f
	.4byte	0x25
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x8
	.byte	0x30
	.4byte	0x25
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x8
	.byte	0x31
	.4byte	0x1af
	.uleb128 0xc
	.byte	0x8
	.byte	0x8
	.byte	0x36
	.4byte	0x22c
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x8
	.byte	0x37
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x8
	.byte	0x38
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x8
	.byte	0x39
	.4byte	0x20b
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.byte	0x3e
	.4byte	0x24c
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x8
	.byte	0x3f
	.4byte	0xcd
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x8
	.byte	0x40
	.4byte	0x237
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x8
	.byte	0x45
	.4byte	0x262
	.uleb128 0x8
	.4byte	0xee
	.4byte	0x272
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.byte	0x30
	.byte	0x8
	.byte	0x51
	.4byte	0x2e7
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x8
	.byte	0x52
	.4byte	0xee
	.byte	0
	.uleb128 0xe
	.string	"arg"
	.byte	0x8
	.byte	0x53
	.4byte	0xee
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x8
	.byte	0x54
	.4byte	0x257
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x8
	.byte	0x55
	.4byte	0xa2
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x8
	.byte	0x56
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x8
	.byte	0x57
	.4byte	0x2c
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x8
	.byte	0x58
	.4byte	0x25
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x8
	.byte	0x74
	.4byte	0x12a
	.byte	0x28
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x8
	.byte	0x75
	.4byte	0x25
	.byte	0x2c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x8
	.byte	0x76
	.4byte	0x272
	.uleb128 0xc
	.byte	0x38
	.byte	0x8
	.byte	0x7e
	.4byte	0x3a3
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x8
	.byte	0x7f
	.4byte	0xee
	.byte	0
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x8
	.byte	0x85
	.4byte	0x25
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x8
	.byte	0x86
	.4byte	0x25
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x8
	.byte	0x8c
	.4byte	0x3a3
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x8
	.byte	0x8d
	.4byte	0x3af
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x8
	.byte	0x8e
	.4byte	0x3c9
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x8
	.byte	0x8f
	.4byte	0x3de
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x8
	.byte	0x90
	.4byte	0x3f8
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x8
	.byte	0x91
	.4byte	0x412
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x8
	.byte	0x92
	.4byte	0x432
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x8
	.byte	0x93
	.4byte	0x3af
	.byte	0x28
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0x8
	.byte	0x94
	.4byte	0x447
	.byte	0x2c
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x8
	.byte	0x95
	.4byte	0x461
	.byte	0x30
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x8
	.byte	0x96
	.4byte	0x25
	.byte	0x34
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF72
	.uleb128 0xf
	.4byte	0x12a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3aa
	.uleb128 0x10
	.4byte	0x12a
	.4byte	0x3c9
	.uleb128 0x11
	.4byte	0x25
	.uleb128 0x11
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3b5
	.uleb128 0x10
	.4byte	0x2c
	.4byte	0x3de
	.uleb128 0x11
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3cf
	.uleb128 0x10
	.4byte	0x12a
	.4byte	0x3f8
	.uleb128 0x11
	.4byte	0x25
	.uleb128 0x11
	.4byte	0x135
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e4
	.uleb128 0x10
	.4byte	0x12a
	.4byte	0x412
	.uleb128 0x11
	.4byte	0x25
	.uleb128 0x11
	.4byte	0xee
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3fe
	.uleb128 0x10
	.4byte	0x12a
	.4byte	0x42c
	.uleb128 0x11
	.4byte	0x25
	.uleb128 0x11
	.4byte	0x42c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2e7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x418
	.uleb128 0x10
	.4byte	0x12a
	.4byte	0x447
	.uleb128 0x11
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x438
	.uleb128 0x10
	.4byte	0x12a
	.4byte	0x461
	.uleb128 0x11
	.4byte	0x25
	.uleb128 0x11
	.4byte	0x13c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x44d
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x8
	.byte	0x97
	.4byte	0x2f2
	.uleb128 0xc
	.byte	0x88
	.byte	0x8
	.byte	0x9c
	.4byte	0x544
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x8
	.byte	0x9d
	.4byte	0x467
	.byte	0
	.uleb128 0xe
	.string	"ocr"
	.byte	0x8
	.byte	0x9e
	.4byte	0xee
	.byte	0x38
	.uleb128 0xe
	.string	"cid"
	.byte	0x8
	.byte	0x9f
	.4byte	0x200
	.byte	0x3c
	.uleb128 0xe
	.string	"csd"
	.byte	0x8
	.byte	0xa0
	.4byte	0x1a4
	.byte	0x58
	.uleb128 0xe
	.string	"scr"
	.byte	0x8
	.byte	0xa1
	.4byte	0x22c
	.byte	0x74
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x8
	.byte	0xa2
	.4byte	0x24c
	.byte	0x7c
	.uleb128 0xe
	.string	"rca"
	.byte	0x8
	.byte	0xa3
	.4byte	0xd8
	.byte	0x7e
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x8
	.byte	0xa4
	.4byte	0xd8
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x8
	.byte	0xa5
	.4byte	0xee
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x8
	.byte	0xa6
	.4byte	0xee
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x8
	.byte	0xa7
	.4byte	0xee
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF79
	.byte	0x8
	.byte	0xa8
	.4byte	0xee
	.byte	0x4
	.byte	0x3
	.byte	0xa
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF80
	.byte	0x8
	.byte	0xa9
	.4byte	0xee
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0x8
	.byte	0xaa
	.4byte	0xee
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF82
	.byte	0x8
	.byte	0xab
	.4byte	0xee
	.byte	0x4
	.byte	0x17
	.byte	0x9
	.byte	0x84
	.byte	0
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0x8
	.byte	0xac
	.4byte	0x472
	.uleb128 0x13
	.4byte	.LASF116
	.byte	0x2
	.byte	0x78
	.4byte	0x135
	.byte	0x3
	.4byte	0x56b
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x2
	.byte	0x78
	.4byte	0x56b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x571
	.uleb128 0x7
	.4byte	0x544
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x1
	.byte	0x22
	.4byte	0x12a
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9c7
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0x1
	.byte	0x22
	.4byte	0x9c7
	.4byte	.LLST0
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0x1
	.byte	0x22
	.4byte	0x9d2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x1
	.byte	0x26
	.4byte	0x9d8
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0x1
	.byte	0x27
	.4byte	0x9d8
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0x1
	.byte	0x28
	.4byte	0x9d8
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF118
	.4byte	0x9ed
	.uleb128 0x1b
	.4byte	.LASF76
	.byte	0x1
	.byte	0x39
	.4byte	0x9d8
	.4byte	.LLST1
	.uleb128 0x1b
	.4byte	.LASF77
	.byte	0x1
	.byte	0x3a
	.4byte	0x9d8
	.4byte	.LLST2
	.uleb128 0x1b
	.4byte	.LASF78
	.byte	0x1
	.byte	0x42
	.4byte	0x9d8
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0x1
	.byte	0x43
	.4byte	0x9d8
	.uleb128 0x1c
	.4byte	0x54f
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.byte	0x1
	.byte	0x26
	.4byte	0x62a
	.uleb128 0x1d
	.4byte	0x55f
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0
	.4byte	0x653
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x2b
	.4byte	0x12a
	.4byte	.LLST4
	.uleb128 0x20
	.4byte	.LVL5
	.4byte	0xa04
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x67c
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x2e
	.4byte	0x12a
	.4byte	.LLST5
	.uleb128 0x20
	.4byte	.LVL7
	.4byte	0xa0f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x6a5
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x31
	.4byte	0x12a
	.4byte	.LLST6
	.uleb128 0x20
	.4byte	.LVL9
	.4byte	0xa1a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0x6ce
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x34
	.4byte	0x12a
	.4byte	.LLST7
	.uleb128 0x20
	.4byte	.LVL11
	.4byte	0xa25
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0x6f7
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x37
	.4byte	0x12a
	.4byte	.LLST8
	.uleb128 0x20
	.4byte	.LVL13
	.4byte	0xa30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0x720
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x3d
	.4byte	0x12a
	.4byte	.LLST9
	.uleb128 0x20
	.4byte	.LVL17
	.4byte	0xa3b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x90
	.4byte	0x749
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x40
	.4byte	0x12a
	.4byte	.LLST10
	.uleb128 0x20
	.4byte	.LVL19
	.4byte	0xa46
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0xa8
	.4byte	0x772
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x49
	.4byte	0x12a
	.4byte	.LLST11
	.uleb128 0x20
	.4byte	.LVL22
	.4byte	0xa51
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0xc0
	.4byte	0x79b
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x4c
	.4byte	0x12a
	.4byte	.LLST12
	.uleb128 0x20
	.4byte	.LVL24
	.4byte	0xa5c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0xd8
	.4byte	0x7c4
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x52
	.4byte	0x12a
	.4byte	.LLST13
	.uleb128 0x20
	.4byte	.LVL26
	.4byte	0xa67
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0xf0
	.4byte	0x7ed
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x59
	.4byte	0x12a
	.4byte	.LLST14
	.uleb128 0x20
	.4byte	.LVL28
	.4byte	0xa72
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x108
	.4byte	0x816
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x5a
	.4byte	0x12a
	.4byte	.LLST15
	.uleb128 0x20
	.4byte	.LVL30
	.4byte	0xa7d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x120
	.4byte	0x83f
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x5b
	.4byte	0x12a
	.4byte	.LLST16
	.uleb128 0x20
	.4byte	.LVL32
	.4byte	0xa88
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x138
	.4byte	0x868
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x5e
	.4byte	0x12a
	.4byte	.LLST17
	.uleb128 0x20
	.4byte	.LVL34
	.4byte	0xa93
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x150
	.4byte	0x891
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x63
	.4byte	0x12a
	.4byte	.LLST18
	.uleb128 0x20
	.4byte	.LVL36
	.4byte	0xa9e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x168
	.4byte	0x8ba
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x67
	.4byte	0x12a
	.4byte	.LLST19
	.uleb128 0x20
	.4byte	.LVL38
	.4byte	0xaa9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x180
	.4byte	0x8e3
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x68
	.4byte	0x12a
	.4byte	.LLST20
	.uleb128 0x20
	.4byte	.LVL40
	.4byte	0xab4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x198
	.4byte	0x90c
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x69
	.4byte	0x12a
	.4byte	.LLST21
	.uleb128 0x20
	.4byte	.LVL42
	.4byte	0xabf
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x1b0
	.4byte	0x935
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x6a
	.4byte	0x12a
	.4byte	.LLST22
	.uleb128 0x20
	.4byte	.LVL44
	.4byte	0xaca
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x1c8
	.4byte	0x95e
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x6e
	.4byte	0x12a
	.4byte	.LLST23
	.uleb128 0x20
	.4byte	.LVL46
	.4byte	0xad5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.4byte	0x98b
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x71
	.4byte	0x12a
	.4byte	.LLST24
	.uleb128 0x20
	.4byte	.LVL48
	.4byte	0xae0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL1
	.4byte	0xaeb
	.4byte	0x9aa
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x88
	.byte	0
	.uleb128 0x20
	.4byte	.LVL2
	.4byte	0xaf4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9cd
	.uleb128 0x7
	.4byte	0x467
	.uleb128 0x6
	.byte	0x4
	.4byte	0x544
	.uleb128 0x7
	.4byte	0x135
	.uleb128 0x8
	.4byte	0xab
	.4byte	0x9ed
	.uleb128 0x9
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x9dd
	.uleb128 0x24
	.string	"TAG"
	.byte	0x1
	.byte	0x14
	.4byte	0xb2
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2813
	.sleb128 0
	.uleb128 0x25
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x2
	.byte	0x87
	.uleb128 0x25
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x2
	.byte	0x53
	.uleb128 0x25
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x2
	.byte	0x32
	.uleb128 0x25
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x2
	.byte	0x64
	.uleb128 0x25
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x2
	.byte	0x6a
	.uleb128 0x25
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x2
	.byte	0x69
	.uleb128 0x25
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x2
	.byte	0x68
	.uleb128 0x25
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x2
	.byte	0x67
	.uleb128 0x25
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x2
	.byte	0x66
	.uleb128 0x25
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x2
	.byte	0x65
	.uleb128 0x25
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x2
	.byte	0x6b
	.uleb128 0x25
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x2
	.byte	0x6c
	.uleb128 0x25
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x2
	.byte	0x6d
	.uleb128 0x25
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x2
	.byte	0x6e
	.uleb128 0x25
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x2
	.byte	0x74
	.uleb128 0x25
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x2
	.byte	0x71
	.uleb128 0x25
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0x2
	.byte	0x72
	.uleb128 0x25
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0x2
	.byte	0x73
	.uleb128 0x25
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x2
	.byte	0x70
	.uleb128 0x25
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0x2
	.byte	0x75
	.uleb128 0x25
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x2
	.byte	0x4d
	.uleb128 0x26
	.4byte	.LASF111
	.4byte	.LASF111
	.uleb128 0x26
	.4byte	.LASF112
	.4byte	.LASF112
	.uleb128 0x27
	.uleb128 0xd
	.byte	0x9e
	.uleb128 0xb
	.byte	0x73
	.byte	0x64
	.byte	0x6d
	.byte	0x6d
	.byte	0x63
	.byte	0x5f
	.byte	0x69
	.byte	0x6e
	.byte	0x69
	.byte	0x74
	.byte	0
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
	.uleb128 0xe
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x2117
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
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL14
	.4byte	.LVL17-1
	.2byte	0xa
	.byte	0x73
	.sleb128 128
	.byte	0x6
	.byte	0x9
	.byte	0xf3
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL15
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL54
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL21
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL56
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	0
	.4byte	0
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	0
	.4byte	0
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	0
	.4byte	0
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	0
	.4byte	0
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	0
	.4byte	0
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	0
	.4byte	0
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	0
	.4byte	0
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	0
	.4byte	0
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	0
	.4byte	0
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	0
	.4byte	0
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	0
	.4byte	0
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB59
	.4byte	.LBE59
	.4byte	0
	.4byte	0
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	0
	.4byte	0
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	0
	.4byte	0
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	0
	.4byte	0
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	0
	.4byte	0
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	0
	.4byte	0
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	0
	.4byte	0
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	0
	.4byte	0
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	0
	.4byte	0
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"capacity"
.LASF34:
	.string	"card_command_class"
.LASF106:
	.string	"sdmmc_init_io_bus_width"
.LASF116:
	.string	"host_is_spi"
.LASF3:
	.string	"size_t"
.LASF94:
	.string	"sdmmc_init_io"
.LASF4:
	.string	"__uint8_t"
.LASF40:
	.string	"revision"
.LASF29:
	.string	"csd_ver"
.LASF62:
	.string	"init"
.LASF100:
	.string	"sdmmc_init_sd_blocklen"
.LASF65:
	.string	"set_bus_ddr_mode"
.LASF48:
	.string	"sdmmc_ext_csd_t"
.LASF11:
	.string	"long long unsigned int"
.LASF108:
	.string	"sdmmc_init_host_bus_width"
.LASF117:
	.string	"sdmmc_card_init"
.LASF104:
	.string	"sdmmc_init_card_hs_mode"
.LASF51:
	.string	"response"
.LASF102:
	.string	"sdmmc_init_sd_wait_data_ready"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF63:
	.string	"set_bus_width"
.LASF107:
	.string	"sdmmc_init_mmc_bus_width"
.LASF12:
	.string	"long int"
.LASF36:
	.string	"sdmmc_csd_t"
.LASF67:
	.string	"do_transaction"
.LASF17:
	.string	"uint16_t"
.LASF105:
	.string	"sdmmc_init_sd_bus_width"
.LASF93:
	.string	"sdmmc_init_sd_if_cond"
.LASF37:
	.string	"mfg_id"
.LASF92:
	.string	"sdmmc_send_cmd_go_idle_state"
.LASF9:
	.string	"__uint32_t"
.LASF109:
	.string	"sdmmc_init_host_frequency"
.LASF90:
	.string	"sdmmc_fix_host_flags"
.LASF82:
	.string	"reserved"
.LASF43:
	.string	"sdmmc_cid_t"
.LASF74:
	.string	"host"
.LASF0:
	.string	"unsigned int"
.LASF96:
	.string	"sdmmc_init_ocr"
.LASF66:
	.string	"set_card_clk"
.LASF49:
	.string	"sdmmc_response_t"
.LASF79:
	.string	"num_io_functions"
.LASF91:
	.string	"sdmmc_io_reset"
.LASF39:
	.string	"name"
.LASF86:
	.string	"always"
.LASF52:
	.string	"data"
.LASF69:
	.string	"io_int_enable"
.LASF1:
	.string	"short unsigned int"
.LASF42:
	.string	"date"
.LASF59:
	.string	"slot"
.LASF71:
	.string	"command_timeout_ms"
.LASF103:
	.string	"sdmmc_init_mmc_read_ext_csd"
.LASF97:
	.string	"sdmmc_init_cid"
.LASF85:
	.string	"card"
.LASF33:
	.string	"read_block_len"
.LASF23:
	.string	"ESP_LOG_INFO"
.LASF76:
	.string	"is_mem"
.LASF54:
	.string	"blklen"
.LASF46:
	.string	"sdmmc_scr_t"
.LASF13:
	.string	"sizetype"
.LASF53:
	.string	"datalen"
.LASF38:
	.string	"oem_id"
.LASF28:
	.string	"TickType_t"
.LASF35:
	.string	"tr_speed"
.LASF30:
	.string	"mmc_ver"
.LASF77:
	.string	"is_sdio"
.LASF73:
	.string	"sdmmc_host_t"
.LASF72:
	.string	"float"
.LASF98:
	.string	"sdmmc_init_csd"
.LASF56:
	.string	"error"
.LASF75:
	.string	"ext_csd"
.LASF57:
	.string	"timeout_ms"
.LASF32:
	.string	"sector_size"
.LASF78:
	.string	"is_mmc"
.LASF27:
	.string	"_Bool"
.LASF18:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF101:
	.string	"sdmmc_init_sd_scr"
.LASF87:
	.string	"io_supported"
.LASF113:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF6:
	.string	"short int"
.LASF111:
	.string	"memset"
.LASF21:
	.string	"ESP_LOG_ERROR"
.LASF118:
	.string	"__func__"
.LASF95:
	.string	"sdmmc_init_spi_crc"
.LASF115:
	.string	"/home/raphael/rtone/lcd/build/sdmmc"
.LASF68:
	.string	"deinit"
.LASF83:
	.string	"sdmmc_card_t"
.LASF99:
	.string	"sdmmc_init_select_card"
.LASF14:
	.string	"long unsigned int"
.LASF15:
	.string	"char"
.LASF25:
	.string	"ESP_LOG_VERBOSE"
.LASF84:
	.string	"config"
.LASF7:
	.string	"__uint16_t"
.LASF20:
	.string	"ESP_LOG_NONE"
.LASF8:
	.string	"__int32_t"
.LASF58:
	.string	"sdmmc_command_t"
.LASF112:
	.string	"memcpy"
.LASF80:
	.string	"log_bus_width"
.LASF110:
	.string	"sdmmc_check_scr"
.LASF88:
	.string	"is_spi"
.LASF19:
	.string	"uint32_t"
.LASF22:
	.string	"ESP_LOG_WARN"
.LASF61:
	.string	"io_voltage"
.LASF47:
	.string	"power_class"
.LASF26:
	.string	"esp_err_t"
.LASF16:
	.string	"uint8_t"
.LASF55:
	.string	"flags"
.LASF41:
	.string	"serial"
.LASF70:
	.string	"io_int_wait"
.LASF45:
	.string	"bus_width"
.LASF24:
	.string	"ESP_LOG_DEBUG"
.LASF89:
	.string	"is_sdmem"
.LASF60:
	.string	"max_freq_khz"
.LASF64:
	.string	"get_bus_width"
.LASF44:
	.string	"sd_spec"
.LASF114:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/sdmmc/sdmmc_init.c"
.LASF50:
	.string	"opcode"
.LASF81:
	.string	"is_ddr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
