	.file	"main.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"Main"
	.align	4
.LC2:
	.string	"\033[0;32mI (%d) %s: Init I2C for master...\033[0m\n"
	.section	.text.mpuInitMaster,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC4, 100000
	.align	4
	.global	mpuInitMaster
	.type	mpuInitMaster, @function
mpuInitMaster:
.LFB22:
	.file 1 "/home/raphael/rtone/lcd/main/main.c"
	.loc 1 33 0
	entry	sp, 64
.LCFI0:
	.loc 1 34 0
	call8	esp_log_timestamp
.LVL0:
	l32r	a11, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC3
	movi.n	a10, 3
	call8	esp_log_write
.LVL1:
	.loc 1 37 0
	movi.n	a8, 1
	s32i.n	a8, sp, 0
	.loc 1 38 0
	movi.n	a2, 4
	s32i.n	a2, sp, 4
	.loc 1 39 0
	s32i.n	a8, sp, 8
	.loc 1 40 0
	movi.n	a2, 0
	s32i.n	a2, sp, 12
	.loc 1 41 0
	s32i.n	a8, sp, 16
	.loc 1 42 0
	l32r	a8, .LC4
	s32i.n	a8, sp, 20
	.loc 1 43 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	i2c_param_config
.LVL2:
	.loc 1 44 0
	mov.n	a14, a2
	mov.n	a13, a2
	mov.n	a12, a2
	l32i.n	a11, sp, 0
	mov.n	a10, a2
	call8	i2c_driver_install
.LVL3:
	.loc 1 45 0
	mov.n	a2, a10
	retw.n
.LFE22:
	.size	mpuInitMaster, .-mpuInitMaster
	.section	.rodata.str1.4
	.align	4
.LC5:
	.string	"mpuInitMaster()"
	.align	4
.LC8:
	.string	"/home/raphael/rtone/lcd/main/main.c"
	.align	4
.LC11:
	.string	"\033[0;32mI (%d) %s: Sensor(GY-521): Checking WHOIAM of the sensor...\033[0m\n"
	.align	4
.LC13:
	.string	"ret"
	.align	4
.LC15:
	.string	"\033[0;32mI (%d) %s: Value: %d 0x%02x\033[0m\n"
	.align	4
.LC17:
	.string	"\033[0;32mI (%d) %s: Sensor(9250): Checking WHOIAM of the sensor...\033[0m\n"
	.section	.text.app_main,"ax",@progbits
	.literal_position
	.literal .LC6, .LC5
	.literal .LC7, __func__$7090
	.literal .LC9, .LC8
	.literal .LC10, .LC0
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.literal .LC18, .LC17
	.literal .LC19, TFT_BLACK
	.literal .LC22, _fg
	.literal .LC23, TFT_WHITE
	.align	4
	.global	app_main
	.type	app_main, @function
app_main:
.LFB23:
	.loc 1 48 0
	entry	sp, 64
.LCFI1:
.LBB2:
	.loc 1 52 0
	call8	mpuInitMaster
.LVL4:
	beqz.n	a10, .L3
	.loc 1 52 0 is_stmt 0 discriminator 1
	l32r	a14, .LC6
	l32r	a13, .LC7
	movi.n	a12, 0x34
	l32r	a11, .LC9
	call8	_esp_error_check_failed
.LVL5:
.L3:
.LBE2:
	.loc 1 53 0 is_stmt 1 discriminator 9
	call8	esp_log_timestamp
.LVL6:
	l32r	a11, .LC10
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC12
	movi.n	a10, 3
	call8	esp_log_write
.LVL7:
	.loc 1 54 0 discriminator 9
	movi.n	a13, 0
	movi	a12, 0x75
	movi	a11, 0x68
	mov.n	a10, a13
	call8	writeByte
.LVL8:
.LBB3:
	.loc 1 55 0 discriminator 9
	beqz.n	a10, .L4
	.loc 1 55 0 is_stmt 0 discriminator 1
	l32r	a14, .LC14
	l32r	a13, .LC7
	movi.n	a12, 0x37
	l32r	a11, .LC9
	call8	_esp_error_check_failed
.LVL9:
.L4:
.LBE3:
	.loc 1 56 0 is_stmt 1
	addi	a12, sp, 16
	movi	a11, 0x68
	movi.n	a10, 0
.LVL10:
	call8	readByte
.LVL11:
.LBB4:
	.loc 1 57 0
	beqz.n	a10, .L5
	.loc 1 57 0 is_stmt 0 discriminator 1
	l32r	a14, .LC14
	l32r	a13, .LC7
	movi.n	a12, 0x39
	l32r	a11, .LC9
	call8	_esp_error_check_failed
.LVL12:
.L5:
.LBE4:
	.loc 1 58 0 is_stmt 1 discriminator 9
	call8	esp_log_timestamp
.LVL13:
	l8ui	a15, sp, 16
	l32r	a2, .LC10
	s32i.n	a15, sp, 0
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC16
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL14:
	.loc 1 60 0 discriminator 9
	call8	esp_log_timestamp
.LVL15:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC18
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL16:
	.loc 1 61 0 discriminator 9
	movi.n	a13, 0
	movi	a12, 0x75
	movi	a11, 0x69
	mov.n	a10, a13
	call8	writeByte
.LVL17:
.LBB5:
	.loc 1 62 0 discriminator 9
	beqz.n	a10, .L6
	.loc 1 62 0 is_stmt 0 discriminator 1
	l32r	a14, .LC14
	l32r	a13, .LC7
	movi.n	a12, 0x3e
	l32r	a11, .LC9
	call8	_esp_error_check_failed
.LVL18:
.L6:
.LBE5:
	.loc 1 63 0 is_stmt 1
	addi	a12, sp, 16
	movi	a11, 0x69
	movi.n	a10, 0
.LVL19:
	call8	readByte
.LVL20:
.LBB6:
	.loc 1 64 0
	beqz.n	a10, .L7
	.loc 1 64 0 is_stmt 0 discriminator 1
	l32r	a14, .LC14
	l32r	a13, .LC7
	movi.n	a12, 0x40
	l32r	a11, .LC9
	call8	_esp_error_check_failed
.LVL21:
.L7:
.LBE6:
	.loc 1 65 0 is_stmt 1 discriminator 9
	call8	esp_log_timestamp
.LVL22:
	l8ui	a15, sp, 16
	l32r	a11, .LC10
	s32i.n	a15, sp, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC16
	movi.n	a10, 3
	call8	esp_log_write
.LVL23:
	.loc 1 67 0 discriminator 9
	call8	initTftLib
.LVL24:
	.loc 1 69 0 discriminator 9
	l32r	a9, .LC19
	l8ui	a8, a9, 0
	l8ui	a2, a9, 1
	slli	a2, a2, 8
	or	a2, a2, a8
	l8ui	a10, a9, 2
	slli	a10, a10, 16
	or	a10, a10, a2
	call8	TFT_fillScreen
.LVL25:
	.loc 1 70 0 discriminator 9
	l32r	a2, .LC22
	l32r	a8, .LC23
	l8ui	a10, a8, 0
	l8ui	a9, a8, 1
	s8i	a10, a2, 0
	l8ui	a8, a8, 2
	s8i	a9, a2, 1
	s8i	a8, a2, 2
	.loc 1 72 0 discriminator 9
	call8	launchDrawGraphic
.LVL26:
	retw.n
.LFE23:
	.size	app_main, .-app_main
	.section	.rodata.__func__$7090,"a",@progbits
	.align	4
	.type	__func__$7090, @object
	.size	__func__$7090, 9
__func__$7090:
	.string	"app_main"
	.comm	spiffs_is_mounted,4,4
	.comm	spiffs_is_registered,4,4
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI0-.LFB22
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI1-.LFB23
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/driver/include/driver/gpio.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/driver/include/driver/i2c.h"
	.file 8 "/home/raphael/rtone/lcd/components/tft/tftspi.h"
	.file 9 "/home/raphael/rtone/lcd/components/tft/tft.h"
	.file 10 "/home/raphael/rtone/lcd/components/spiffs/spiffs_vfs.h"
	.file 11 "/home/raphael/rtone/lcd/main/I2CByteManager.h"
	.file 12 "/home/raphael/rtone/lcd/main/Lcd.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xafd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0xc
	.4byte	.LASF113
	.4byte	.LASF114
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x16
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x62
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0xab
	.uleb128 0x6
	.4byte	0x9e
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x7
	.byte	0x4
	.4byte	0x74
	.byte	0x5
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
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0x18
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF26
	.uleb128 0x7
	.byte	0x4
	.4byte	0x74
	.byte	0x6
	.byte	0x82
	.4byte	0x1fe
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0xb
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0xd
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0xf
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x11
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x12
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x13
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x15
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x16
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x17
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x19
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x1b
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x21
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x22
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x23
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x24
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x25
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x26
	.uleb128 0x8
	.4byte	.LASF60
	.byte	0x27
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x6
	.byte	0xaf
	.4byte	0x11f
	.uleb128 0x7
	.byte	0x4
	.4byte	0x74
	.byte	0x6
	.byte	0xc4
	.4byte	0x222
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x6
	.byte	0xc7
	.4byte	0x209
	.uleb128 0x6
	.4byte	0xa5
	.uleb128 0x7
	.byte	0x4
	.4byte	0x74
	.byte	0x7
	.byte	0x23
	.4byte	0x251
	.uleb128 0x8
	.4byte	.LASF66
	.byte	0
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x7
	.byte	0x27
	.4byte	0x232
	.uleb128 0x7
	.byte	0x4
	.4byte	0x74
	.byte	0x7
	.byte	0x3c
	.4byte	0x27b
	.uleb128 0x8
	.4byte	.LASF70
	.byte	0
	.uleb128 0x8
	.4byte	.LASF71
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x7
	.byte	0x40
	.4byte	0x25c
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.byte	0x5a
	.4byte	0x29b
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0x7
	.byte	0x5b
	.4byte	0xd1
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.byte	0x5d
	.4byte	0x2bc
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0x7
	.byte	0x5e
	.4byte	0xb0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x7
	.byte	0x5f
	.4byte	0xbb
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.byte	0x59
	.4byte	0x2db
	.uleb128 0xc
	.4byte	.LASF77
	.byte	0x7
	.byte	0x5c
	.4byte	0x286
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0x7
	.byte	0x60
	.4byte	0x29b
	.byte	0
	.uleb128 0x9
	.byte	0x18
	.byte	0x7
	.byte	0x52
	.4byte	0x326
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x7
	.byte	0x53
	.4byte	0x251
	.byte	0
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x7
	.byte	0x54
	.4byte	0x1fe
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x7
	.byte	0x55
	.4byte	0x222
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x7
	.byte	0x56
	.4byte	0x1fe
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x7
	.byte	0x57
	.4byte	0x222
	.byte	0x10
	.uleb128 0xd
	.4byte	0x2bc
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0x7
	.byte	0x63
	.4byte	0x2db
	.uleb128 0x9
	.byte	0x3
	.byte	0x8
	.byte	0xd8
	.4byte	0x358
	.uleb128 0xe
	.string	"r"
	.byte	0x8
	.byte	0xda
	.4byte	0xb0
	.byte	0
	.uleb128 0xe
	.string	"g"
	.byte	0x8
	.byte	0xdb
	.4byte	0xb0
	.byte	0x1
	.uleb128 0xe
	.string	"b"
	.byte	0x8
	.byte	0xdc
	.4byte	0xb0
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x8
	.byte	0xdd
	.4byte	0x331
	.uleb128 0xf
	.4byte	.LASF115
	.byte	0x1
	.byte	0x20
	.4byte	0x10d
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x40a
	.uleb128 0x10
	.4byte	.LASF86
	.byte	0x1
	.byte	0x23
	.4byte	0x27b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF87
	.byte	0x1
	.byte	0x24
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.4byte	.LVL0
	.4byte	0xa91
	.uleb128 0x13
	.4byte	.LVL1
	.4byte	0xa9c
	.4byte	0x3cd
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL2
	.4byte	0xaa7
	.4byte	0x3e7
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
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x15
	.4byte	.LVL3
	.4byte	0xab2
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x1
	.byte	0x2f
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x728
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.byte	0x31
	.4byte	0x62
	.4byte	.LLST0
	.uleb128 0x11
	.4byte	.LASF88
	.byte	0x1
	.byte	0x32
	.4byte	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.4byte	.LASF117
	.4byte	0x738
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7090
	.uleb128 0x19
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x49c
	.uleb128 0x1a
	.4byte	.LASF89
	.byte	0x1
	.byte	0x34
	.4byte	0x10d
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LVL4
	.4byte	0x363
	.uleb128 0x15
	.4byte	.LVL5
	.4byte	0xabd
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x34
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7090
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x4e4
	.uleb128 0x1a
	.4byte	.LASF89
	.byte	0x1
	.byte	0x37
	.4byte	0x10d
	.4byte	.LLST2
	.uleb128 0x15
	.4byte	.LVL9
	.4byte	0xabd
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x37
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7090
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x52c
	.uleb128 0x1a
	.4byte	.LASF89
	.byte	0x1
	.byte	0x39
	.4byte	0x10d
	.4byte	.LLST3
	.uleb128 0x15
	.4byte	.LVL12
	.4byte	0xabd
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x39
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7090
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x574
	.uleb128 0x1a
	.4byte	.LASF89
	.byte	0x1
	.byte	0x3e
	.4byte	0x10d
	.4byte	.LLST4
	.uleb128 0x15
	.4byte	.LVL18
	.4byte	0xabd
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x3e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7090
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x5bc
	.uleb128 0x1a
	.4byte	.LASF89
	.byte	0x1
	.byte	0x40
	.4byte	0x10d
	.4byte	.LLST5
	.uleb128 0x15
	.4byte	.LVL21
	.4byte	0xabd
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7090
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL6
	.4byte	0xa91
	.uleb128 0x13
	.4byte	.LVL7
	.4byte	0xa9c
	.4byte	0x5f3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL8
	.4byte	0xac8
	.4byte	0x617
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x68
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x75
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL11
	.4byte	0xad3
	.4byte	0x636
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x68
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x12
	.4byte	.LVL13
	.4byte	0xa91
	.uleb128 0x13
	.4byte	.LVL14
	.4byte	0xa9c
	.4byte	0x667
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL15
	.4byte	0xa91
	.uleb128 0x13
	.4byte	.LVL16
	.4byte	0xa9c
	.4byte	0x698
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL17
	.4byte	0xac8
	.4byte	0x6bc
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x75
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL20
	.4byte	0xad3
	.4byte	0x6db
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x12
	.4byte	.LVL22
	.4byte	0xa91
	.uleb128 0x13
	.4byte	.LVL23
	.4byte	0xa9c
	.4byte	0x70c
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL24
	.4byte	0xade
	.uleb128 0x12
	.4byte	.LVL25
	.4byte	0xae9
	.uleb128 0x12
	.4byte	.LVL26
	.4byte	0xaf5
	.byte	0
	.uleb128 0x1b
	.4byte	0x9e
	.4byte	0x738
	.uleb128 0x1c
	.4byte	0x90
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	0x728
	.uleb128 0x1b
	.4byte	0xb0
	.4byte	0x74d
	.uleb128 0x1c
	.4byte	0x90
	.byte	0x4d
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF90
	.byte	0x8
	.2byte	0x14b
	.4byte	0x7a8
	.byte	0x4e
	.byte	0xf
	.byte	0xb2
	.byte	0x5
	.byte	0xc
	.byte	0xc
	.byte	0
	.byte	0x33
	.byte	0x33
	.byte	0xb7
	.byte	0x1
	.byte	0x45
	.byte	0xbb
	.byte	0x1
	.byte	0x2b
	.byte	0xc0
	.byte	0x1
	.byte	0x2c
	.byte	0xc2
	.byte	0x2
	.byte	0x1
	.byte	0xff
	.byte	0xc3
	.byte	0x1
	.byte	0x11
	.byte	0xc4
	.byte	0x1
	.byte	0x20
	.byte	0xc6
	.byte	0x1
	.byte	0xf
	.byte	0xd0
	.byte	0x2
	.byte	0xa4
	.byte	0xa1
	.byte	0xe0
	.byte	0xe
	.byte	0xd0
	.byte	0
	.byte	0x5
	.byte	0xe
	.byte	0x15
	.byte	0xd
	.byte	0x37
	.byte	0x43
	.byte	0x47
	.byte	0x9
	.byte	0x15
	.byte	0x12
	.byte	0x16
	.byte	0x19
	.byte	0xe1
	.byte	0xe
	.byte	0xd0
	.byte	0
	.byte	0x5
	.byte	0xd
	.byte	0xc
	.byte	0x6
	.byte	0x2d
	.byte	0x44
	.byte	0x40
	.byte	0xe
	.byte	0x1c
	.byte	0x18
	.byte	0x16
	.byte	0x19
	.byte	0x36
	.byte	0x1
	.byte	0x40
	.byte	0x3a
	.byte	0x1
	.byte	0x66
	.byte	0x11
	.byte	0x80
	.byte	0x78
	.byte	0x29
	.byte	0x80
	.byte	0x78
	.uleb128 0x6
	.4byte	0x73d
	.uleb128 0x1b
	.4byte	0xb0
	.4byte	0x7bd
	.uleb128 0x1c
	.4byte	0x90
	.byte	0x76
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF91
	.byte	0x8
	.2byte	0x166
	.4byte	0x841
	.byte	0x77
	.byte	0x17
	.byte	0xcb
	.byte	0x5
	.byte	0x39
	.byte	0x2c
	.byte	0
	.byte	0x34
	.byte	0x2
	.byte	0xcf
	.byte	0x3
	.byte	0
	.byte	0xc1
	.byte	0x30
	.byte	0xef
	.byte	0x3
	.byte	0x3
	.byte	0x80
	.byte	0x2
	.byte	0xe8
	.byte	0x3
	.byte	0x85
	.byte	0
	.byte	0x78
	.byte	0xea
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0xed
	.byte	0x4
	.byte	0x64
	.byte	0x3
	.byte	0x12
	.byte	0x81
	.byte	0xf7
	.byte	0x1
	.byte	0x20
	.byte	0xc0
	.byte	0x1
	.byte	0x23
	.byte	0xc1
	.byte	0x1
	.byte	0x10
	.byte	0xc5
	.byte	0x2
	.byte	0x3e
	.byte	0x28
	.byte	0xc7
	.byte	0x1
	.byte	0x86
	.byte	0x36
	.byte	0x1
	.byte	0x40
	.byte	0x3a
	.byte	0x1
	.byte	0x66
	.byte	0x20
	.byte	0
	.byte	0xb1
	.byte	0x2
	.byte	0
	.byte	0x18
	.byte	0xb6
	.byte	0x4
	.byte	0x8
	.byte	0x82
	.byte	0x27
	.byte	0
	.byte	0x30
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x3f
	.byte	0xf2
	.byte	0x1
	.byte	0
	.byte	0x26
	.byte	0x1
	.byte	0x1
	.byte	0xe0
	.byte	0xf
	.byte	0xf
	.byte	0x31
	.byte	0x2b
	.byte	0xc
	.byte	0xe
	.byte	0x8
	.byte	0x4e
	.byte	0xf1
	.byte	0x37
	.byte	0x7
	.byte	0x10
	.byte	0x3
	.byte	0xe
	.byte	0x9
	.byte	0
	.byte	0xe1
	.byte	0xf
	.byte	0
	.byte	0xe
	.byte	0x14
	.byte	0x3
	.byte	0x11
	.byte	0x7
	.byte	0x31
	.byte	0xc1
	.byte	0x48
	.byte	0x8
	.byte	0xf
	.byte	0xc
	.byte	0x31
	.byte	0x36
	.byte	0xf
	.byte	0x11
	.byte	0x80
	.byte	0xc8
	.byte	0x29
	.byte	0x80
	.byte	0xc8
	.uleb128 0x6
	.4byte	0x7ad
	.uleb128 0x1b
	.4byte	0xb0
	.4byte	0x856
	.uleb128 0x1c
	.4byte	0x90
	.byte	0x55
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF92
	.byte	0x8
	.2byte	0x18e
	.4byte	0x8b9
	.byte	0x56
	.byte	0x11
	.byte	0xe0
	.byte	0xf
	.byte	0
	.byte	0x3
	.byte	0x9
	.byte	0x8
	.byte	0x16
	.byte	0xa
	.byte	0x3f
	.byte	0x78
	.byte	0x4c
	.byte	0x9
	.byte	0xa
	.byte	0x8
	.byte	0x16
	.byte	0x1a
	.byte	0xf
	.byte	0xe1
	.byte	0xf
	.byte	0
	.byte	0x16
	.byte	0x19
	.byte	0x3
	.byte	0xf
	.byte	0x5
	.byte	0x32
	.byte	0x45
	.byte	0x46
	.byte	0x4
	.byte	0xe
	.byte	0xd
	.byte	0x35
	.byte	0x37
	.byte	0xf
	.byte	0xc0
	.byte	0x2
	.byte	0x17
	.byte	0x15
	.byte	0xc1
	.byte	0x1
	.byte	0x41
	.byte	0xc5
	.byte	0x3
	.byte	0
	.byte	0x12
	.byte	0x80
	.byte	0x36
	.byte	0x1
	.byte	0x40
	.byte	0x3a
	.byte	0x1
	.byte	0x66
	.byte	0xb0
	.byte	0x1
	.byte	0
	.byte	0xb1
	.byte	0x1
	.byte	0xa0
	.byte	0xb4
	.byte	0x1
	.byte	0x2
	.byte	0xb6
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0xe9
	.byte	0x1
	.byte	0
	.byte	0x53
	.byte	0x1
	.byte	0x28
	.byte	0x51
	.byte	0x1
	.byte	0x7f
	.byte	0xf7
	.byte	0x4
	.byte	0xa9
	.byte	0x51
	.byte	0x2c
	.byte	0x2
	.byte	0x11
	.byte	0x80
	.byte	0x78
	.byte	0x29
	.byte	0
	.uleb128 0x6
	.4byte	0x846
	.uleb128 0x1b
	.4byte	0xb0
	.4byte	0x8ce
	.uleb128 0x1c
	.4byte	0x90
	.byte	0x60
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF93
	.byte	0x8
	.2byte	0x1d3
	.4byte	0x93c
	.byte	0x61
	.byte	0x10
	.byte	0x3a
	.byte	0x81
	.byte	0x6
	.byte	0xa
	.byte	0xb1
	.byte	0x83
	.byte	0
	.byte	0x6
	.byte	0x3
	.byte	0xa
	.byte	0x36
	.byte	0x1
	.byte	0x8
	.byte	0xb6
	.byte	0x2
	.byte	0x15
	.byte	0x2
	.byte	0xb4
	.byte	0x1
	.byte	0
	.byte	0xc0
	.byte	0x82
	.byte	0x2
	.byte	0x70
	.byte	0xa
	.byte	0xc1
	.byte	0x1
	.byte	0x5
	.byte	0xc2
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0xc5
	.byte	0x82
	.byte	0x3c
	.byte	0x38
	.byte	0xa
	.byte	0xfc
	.byte	0x2
	.byte	0x11
	.byte	0x15
	.byte	0xe0
	.byte	0x10
	.byte	0x9
	.byte	0x16
	.byte	0x9
	.byte	0x20
	.byte	0x21
	.byte	0x1b
	.byte	0x13
	.byte	0x19
	.byte	0x17
	.byte	0x15
	.byte	0x1e
	.byte	0x2b
	.byte	0x4
	.byte	0x5
	.byte	0x2
	.byte	0xe
	.byte	0xe1
	.byte	0x90
	.byte	0xb
	.byte	0x14
	.byte	0x8
	.byte	0x1e
	.byte	0x22
	.byte	0x1d
	.byte	0x18
	.byte	0x1e
	.byte	0x1b
	.byte	0x1a
	.byte	0x24
	.byte	0x2b
	.byte	0x6
	.byte	0x6
	.byte	0x2
	.byte	0xf
	.byte	0xa
	.byte	0x2a
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0
	.byte	0x81
	.byte	0x2b
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0
	.byte	0x81
	.byte	0x13
	.byte	0x80
	.byte	0xa
	.byte	0x29
	.byte	0x80
	.byte	0xff
	.uleb128 0x6
	.4byte	0x8be
	.uleb128 0x1b
	.4byte	0xb0
	.4byte	0x951
	.uleb128 0x1c
	.4byte	0x90
	.byte	0x38
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF94
	.byte	0x8
	.2byte	0x213
	.4byte	0x997
	.byte	0x39
	.byte	0xe
	.byte	0x11
	.byte	0x80
	.byte	0xff
	.byte	0xb1
	.byte	0x3
	.byte	0x1
	.byte	0x2c
	.byte	0x2d
	.byte	0xb2
	.byte	0x3
	.byte	0x1
	.byte	0x2c
	.byte	0x2d
	.byte	0xb3
	.byte	0x6
	.byte	0x1
	.byte	0x2c
	.byte	0x2d
	.byte	0x1
	.byte	0x2c
	.byte	0x2d
	.byte	0xb4
	.byte	0x1
	.byte	0x7
	.byte	0xc0
	.byte	0x3
	.byte	0xa2
	.byte	0x2
	.byte	0x84
	.byte	0xc1
	.byte	0x1
	.byte	0xc5
	.byte	0xc2
	.byte	0x2
	.byte	0xa
	.byte	0
	.byte	0xc3
	.byte	0x2
	.byte	0x8a
	.byte	0x2a
	.byte	0xc4
	.byte	0x2
	.byte	0x8a
	.byte	0xee
	.byte	0xc5
	.byte	0x1
	.byte	0xe
	.byte	0x20
	.byte	0
	.byte	0x36
	.byte	0x1
	.byte	0xc0
	.byte	0x3a
	.byte	0x81
	.byte	0x6
	.byte	0xa
	.uleb128 0x6
	.4byte	0x941
	.uleb128 0x1b
	.4byte	0xb0
	.4byte	0x9ac
	.uleb128 0x1c
	.4byte	0x90
	.byte	0xc
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF95
	.byte	0x8
	.2byte	0x240
	.4byte	0x9c6
	.byte	0xd
	.byte	0x2
	.byte	0x2a
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0
	.byte	0x81
	.byte	0x2b
	.byte	0x4
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0xa0
	.uleb128 0x6
	.4byte	0x99c
	.uleb128 0x1d
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x24c
	.4byte	0x9e5
	.byte	0xd
	.byte	0x2
	.byte	0x2a
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7f
	.byte	0x2b
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.byte	0x9f
	.uleb128 0x6
	.4byte	0x99c
	.uleb128 0x1b
	.4byte	0xb0
	.4byte	0x9fa
	.uleb128 0x1c
	.4byte	0x90
	.byte	0x2a
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x258
	.4byte	0xa32
	.byte	0x2b
	.byte	0x4
	.byte	0xe0
	.byte	0x10
	.byte	0x2
	.byte	0x1c
	.byte	0x7
	.byte	0x12
	.byte	0x37
	.byte	0x32
	.byte	0x29
	.byte	0x2d
	.byte	0x29
	.byte	0x25
	.byte	0x2b
	.byte	0x39
	.byte	0
	.byte	0x1
	.byte	0x3
	.byte	0x10
	.byte	0xe1
	.byte	0x10
	.byte	0x3
	.byte	0x1d
	.byte	0x7
	.byte	0x6
	.byte	0x2e
	.byte	0x2c
	.byte	0x29
	.byte	0x2d
	.byte	0x2e
	.byte	0x2e
	.byte	0x37
	.byte	0x3f
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x10
	.byte	0x13
	.byte	0x80
	.byte	0xa
	.byte	0x29
	.byte	0x80
	.byte	0x64
	.uleb128 0x6
	.4byte	0x9ea
	.uleb128 0x1e
	.string	"TAG"
	.byte	0x1
	.byte	0x16
	.4byte	0x22d
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x1f
	.string	"_fg"
	.byte	0x9
	.byte	0x2b
	.4byte	0x358
	.uleb128 0x20
	.4byte	.LASF98
	.byte	0x9
	.byte	0x54
	.4byte	0xa5f
	.uleb128 0x6
	.4byte	0x358
	.uleb128 0x20
	.4byte	.LASF99
	.byte	0x9
	.byte	0x63
	.4byte	0xa5f
	.uleb128 0x21
	.4byte	.LASF100
	.byte	0xa
	.byte	0x11
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	spiffs_is_registered
	.uleb128 0x21
	.4byte	.LASF101
	.byte	0xa
	.byte	0x12
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	spiffs_is_mounted
	.uleb128 0x22
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x5
	.byte	0x57
	.uleb128 0x22
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x5
	.byte	0x6b
	.uleb128 0x22
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x7
	.byte	0x95
	.uleb128 0x22
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x7
	.byte	0x7e
	.uleb128 0x22
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0x4
	.byte	0x4f
	.uleb128 0x22
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0xb
	.byte	0x1a
	.uleb128 0x22
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0xb
	.byte	0x16
	.uleb128 0x22
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0xc
	.byte	0x1b
	.uleb128 0x23
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x9
	.2byte	0x115
	.uleb128 0x22
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0xc
	.byte	0x1a
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF113:
	.string	"/home/raphael/rtone/lcd/main/main.c"
.LASF91:
	.string	"ILI9341_init"
.LASF47:
	.string	"GPIO_NUM_21"
.LASF89:
	.string	"__err_rc"
.LASF49:
	.string	"GPIO_NUM_23"
.LASF94:
	.string	"STP7735R_init"
.LASF50:
	.string	"GPIO_NUM_25"
.LASF51:
	.string	"GPIO_NUM_26"
.LASF108:
	.string	"readByte"
.LASF83:
	.string	"scl_pullup_en"
.LASF24:
	.string	"ESP_LOG_VERBOSE"
.LASF2:
	.string	"short int"
.LASF12:
	.string	"sizetype"
.LASF98:
	.string	"TFT_BLACK"
.LASF93:
	.string	"STP7735_init"
.LASF70:
	.string	"I2C_NUM_0"
.LASF107:
	.string	"writeByte"
.LASF7:
	.string	"__uint32_t"
.LASF79:
	.string	"mode"
.LASF4:
	.string	"__uint16_t"
.LASF22:
	.string	"ESP_LOG_INFO"
.LASF101:
	.string	"spiffs_is_mounted"
.LASF100:
	.string	"spiffs_is_registered"
.LASF85:
	.string	"color_t"
.LASF114:
	.string	"/home/raphael/rtone/lcd/build/main"
.LASF15:
	.string	"uint8_t"
.LASF109:
	.string	"initTftLib"
.LASF87:
	.string	"conf"
.LASF82:
	.string	"scl_io_num"
.LASF39:
	.string	"GPIO_NUM_12"
.LASF18:
	.string	"uint32_t"
.LASF103:
	.string	"esp_log_write"
.LASF53:
	.string	"GPIO_NUM_32"
.LASF54:
	.string	"GPIO_NUM_33"
.LASF43:
	.string	"GPIO_NUM_16"
.LASF56:
	.string	"GPIO_NUM_35"
.LASF44:
	.string	"GPIO_NUM_17"
.LASF58:
	.string	"GPIO_NUM_37"
.LASF116:
	.string	"app_main"
.LASF60:
	.string	"GPIO_NUM_39"
.LASF115:
	.string	"mpuInitMaster"
.LASF9:
	.string	"long long int"
.LASF10:
	.string	"long long unsigned int"
.LASF55:
	.string	"GPIO_NUM_34"
.LASF104:
	.string	"i2c_param_config"
.LASF11:
	.string	"long int"
.LASF57:
	.string	"GPIO_NUM_36"
.LASF66:
	.string	"I2C_MODE_SLAVE"
.LASF77:
	.string	"master"
.LASF72:
	.string	"I2C_NUM_MAX"
.LASF3:
	.string	"__uint8_t"
.LASF63:
	.string	"GPIO_PULLUP_DISABLE"
.LASF1:
	.string	"unsigned char"
.LASF27:
	.string	"GPIO_NUM_0"
.LASF28:
	.string	"GPIO_NUM_1"
.LASF29:
	.string	"GPIO_NUM_2"
.LASF30:
	.string	"GPIO_NUM_3"
.LASF31:
	.string	"GPIO_NUM_4"
.LASF32:
	.string	"GPIO_NUM_5"
.LASF33:
	.string	"GPIO_NUM_6"
.LASF34:
	.string	"GPIO_NUM_7"
.LASF35:
	.string	"GPIO_NUM_8"
.LASF36:
	.string	"GPIO_NUM_9"
.LASF92:
	.string	"ILI9488_init"
.LASF117:
	.string	"__func__"
.LASF76:
	.string	"slave_addr"
.LASF69:
	.string	"i2c_mode_t"
.LASF61:
	.string	"GPIO_NUM_MAX"
.LASF0:
	.string	"signed char"
.LASF96:
	.string	"Rcmd2red"
.LASF106:
	.string	"_esp_error_check_failed"
.LASF78:
	.string	"slave"
.LASF8:
	.string	"unsigned int"
.LASF16:
	.string	"uint16_t"
.LASF80:
	.string	"sda_io_num"
.LASF90:
	.string	"ST7789V_init"
.LASF65:
	.string	"gpio_pullup_t"
.LASF84:
	.string	"i2c_config_t"
.LASF110:
	.string	"TFT_fillScreen"
.LASF5:
	.string	"short unsigned int"
.LASF59:
	.string	"GPIO_NUM_38"
.LASF52:
	.string	"GPIO_NUM_27"
.LASF14:
	.string	"char"
.LASF23:
	.string	"ESP_LOG_DEBUG"
.LASF17:
	.string	"int32_t"
.LASF19:
	.string	"ESP_LOG_NONE"
.LASF81:
	.string	"sda_pullup_en"
.LASF111:
	.string	"launchDrawGraphic"
.LASF26:
	.string	"_Bool"
.LASF73:
	.string	"i2c_port_t"
.LASF88:
	.string	"data"
.LASF21:
	.string	"ESP_LOG_WARN"
.LASF74:
	.string	"clk_speed"
.LASF97:
	.string	"Rcmd3"
.LASF37:
	.string	"GPIO_NUM_10"
.LASF38:
	.string	"GPIO_NUM_11"
.LASF13:
	.string	"long unsigned int"
.LASF40:
	.string	"GPIO_NUM_13"
.LASF41:
	.string	"GPIO_NUM_14"
.LASF42:
	.string	"GPIO_NUM_15"
.LASF86:
	.string	"i2c_master_port"
.LASF68:
	.string	"I2C_MODE_MAX"
.LASF45:
	.string	"GPIO_NUM_18"
.LASF46:
	.string	"GPIO_NUM_19"
.LASF48:
	.string	"GPIO_NUM_22"
.LASF71:
	.string	"I2C_NUM_1"
.LASF6:
	.string	"__int32_t"
.LASF99:
	.string	"TFT_WHITE"
.LASF64:
	.string	"GPIO_PULLUP_ENABLE"
.LASF105:
	.string	"i2c_driver_install"
.LASF102:
	.string	"esp_log_timestamp"
.LASF62:
	.string	"gpio_num_t"
.LASF75:
	.string	"addr_10bit_en"
.LASF67:
	.string	"I2C_MODE_MASTER"
.LASF112:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF20:
	.string	"ESP_LOG_ERROR"
.LASF95:
	.string	"Rcmd2green"
.LASF25:
	.string	"esp_err_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
