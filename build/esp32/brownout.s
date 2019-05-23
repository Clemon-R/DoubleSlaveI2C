	.file	"brownout.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"\r\nBrownout detector was triggered\r\n\r\n"
	.section	.text.rtc_brownout_isr_handler,"ax",@progbits
	.literal_position
	.literal .LC0, 1072988232
	.literal .LC2, .LC1
	.align	4
	.type	rtc_brownout_isr_handler, @function
rtc_brownout_isr_handler:
.LFB24:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/brownout.c"
	.loc 1 35 0
	entry	sp, 32
.LCFI0:
.LBB5:
	.loc 1 40 0
	movi	a9, 0x80
	l32r	a8, .LC0
	memw
	s32i.n	a9, a8, 0
.LBE5:
.LBB6:
.LBB7:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL0:
#NO_APP
.LBE7:
.LBE6:
	.loc 1 44 0
	movi.n	a9, 0
	movi.n	a10, 1
	movnez	a10, a9, a8
	call8	esp_cpu_stall
.LVL1:
	.loc 1 45 0
	movi.n	a10, 9
	call8	esp_reset_reason_set_hint
.LVL2:
	.loc 1 46 0
	l32r	a10, .LC2
	call8	ets_printf
.LVL3:
	.loc 1 47 0
	call8	esp_restart_noos
.LVL4:
.LFE24:
	.size	rtc_brownout_isr_handler, .-rtc_brownout_isr_handler
	.section	.rodata.str1.4
	.align	4
.LC6:
	.string	"rtc_isr_register(rtc_brownout_isr_handler, NULL, RTC_CNTL_BROWN_OUT_INT_ENA_M)"
	.align	4
.LC9:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/brownout.c"
	.section	.text.esp_brownout_init,"ax",@progbits
	.literal_position
	.literal .LC3, 1072988372
	.literal .LC4, 1073905664
	.literal .LC5, rtc_brownout_isr_handler
	.literal .LC7, .LC6
	.literal .LC8, __func__$4855
	.literal .LC10, .LC9
	.literal .LC11, 1072988220
	.align	4
	.global	esp_brownout_init
	.type	esp_brownout_init, @function
esp_brownout_init:
.LFB25:
	.loc 1 51 0
	entry	sp, 32
.LCFI1:
.LBB8:
	.loc 1 52 0
	l32r	a9, .LC4
	l32r	a8, .LC3
	memw
	s32i.n	a9, a8, 0
.LBE8:
.LBB9:
	.loc 1 59 0
	movi	a12, 0x80
	movi.n	a11, 0
	l32r	a10, .LC5
	call8	rtc_isr_register
.LVL5:
	.loc 1 59 0
	beqz.n	a10, .L3
	.loc 1 59 0 is_stmt 0 discriminator 1
	l32r	a14, .LC7
	l32r	a13, .LC8
	movi.n	a12, 0x3b
	l32r	a11, .LC10
	call8	_esp_error_check_failed
.LVL6:
.L3:
.LBE9:
.LBB10:
	.loc 1 61 0 is_stmt 1
	l32r	a9, .LC11
	memw
	l32i.n	a10, a9, 0
.LVL7:
	movi	a8, 0x80
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LBE10:
.LFE25:
	.size	esp_brownout_init, .-esp_brownout_init
	.section	.rodata.__func__$4855,"a",@progbits
	.align	4
	.type	__func__$4855, @object
	.size	__func__$4855, 18
__func__$4855:
	.string	"esp_brownout_init"
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI0-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI1-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/cpu.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/esp_system_internal.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/driver/include/driver/rtc_cntl.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x297
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0xc
	.4byte	.LASF36
	.4byte	.LASF37
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
	.4byte	.LASF4
	.byte	0x3
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x1a
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x2d
	.4byte	0x53
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
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x18
	.4byte	0x73
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5e
	.byte	0xa
	.byte	0x2b
	.4byte	0x106
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x2
	.byte	0xce
	.4byte	0x7e
	.byte	0x3
	.4byte	0x121
	.uleb128 0x8
	.string	"id"
	.byte	0x2
	.byte	0xcf
	.4byte	0x4c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x1
	.byte	0x22
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a3
	.uleb128 0xa
	.4byte	.LASF28
	.4byte	0x1b3
	.uleb128 0xb
	.4byte	0x106
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x2c
	.4byte	0x166
	.uleb128 0xc
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0xd
	.4byte	0x116
	.4byte	.LLST0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL1
	.4byte	0x258
	.uleb128 0xf
	.4byte	.LVL2
	.4byte	0x263
	.4byte	0x182
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0xf
	.4byte	.LVL3
	.4byte	0x26e
	.4byte	0x199
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0xe
	.4byte	.LVL4
	.4byte	0x279
	.byte	0
	.uleb128 0x11
	.4byte	0x9e
	.4byte	0x1b3
	.uleb128 0x12
	.4byte	0x90
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.4byte	0x1a3
	.uleb128 0x14
	.4byte	.LASF40
	.byte	0x1
	.byte	0x32
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x243
	.uleb128 0x15
	.4byte	.LASF28
	.4byte	0x253
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4855
	.uleb128 0xc
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x16
	.4byte	.LASF41
	.byte	0x1
	.byte	0x3b
	.4byte	0xa5
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LVL5
	.4byte	0x284
	.4byte	0x216
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	rtc_brownout_isr_handler
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x17
	.4byte	.LVL6
	.4byte	0x28f
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x3b
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4855
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x9e
	.4byte	0x253
	.uleb128 0x12
	.4byte	0x90
	.byte	0x11
	.byte	0
	.uleb128 0x13
	.4byte	0x243
	.uleb128 0x18
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x6
	.byte	0x59
	.uleb128 0x18
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x7
	.byte	0x2c
	.uleb128 0x18
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x8
	.byte	0xde
	.uleb128 0x18
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x7
	.byte	0x20
	.uleb128 0x18
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x9
	.byte	0x25
	.uleb128 0x18
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x5
	.byte	0x4f
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x87
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
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL7
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"__func__"
.LASF21:
	.string	"ESP_RST_PANIC"
.LASF22:
	.string	"ESP_RST_INT_WDT"
.LASF23:
	.string	"ESP_RST_TASK_WDT"
.LASF20:
	.string	"ESP_RST_SW"
.LASF4:
	.string	"__int32_t"
.LASF18:
	.string	"ESP_RST_POWERON"
.LASF33:
	.string	"rtc_isr_register"
.LASF40:
	.string	"esp_brownout_init"
.LASF34:
	.string	"_esp_error_check_failed"
.LASF0:
	.string	"signed char"
.LASF37:
	.string	"/home/raphael/rtone/lcd/build/esp32"
.LASF1:
	.string	"unsigned char"
.LASF13:
	.string	"long unsigned int"
.LASF24:
	.string	"ESP_RST_WDT"
.LASF3:
	.string	"short unsigned int"
.LASF17:
	.string	"ESP_RST_UNKNOWN"
.LASF5:
	.string	"__uint32_t"
.LASF19:
	.string	"ESP_RST_EXT"
.LASF15:
	.string	"esp_err_t"
.LASF30:
	.string	"esp_reset_reason_set_hint"
.LASF2:
	.string	"short int"
.LASF6:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF39:
	.string	"rtc_brownout_isr_handler"
.LASF36:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/brownout.c"
.LASF31:
	.string	"ets_printf"
.LASF9:
	.string	"int32_t"
.LASF35:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF12:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF32:
	.string	"esp_restart_noos"
.LASF14:
	.string	"char"
.LASF38:
	.string	"xPortGetCoreID"
.LASF41:
	.string	"__err_rc"
.LASF27:
	.string	"ESP_RST_SDIO"
.LASF26:
	.string	"ESP_RST_BROWNOUT"
.LASF10:
	.string	"uint32_t"
.LASF11:
	.string	"long int"
.LASF29:
	.string	"esp_cpu_stall"
.LASF16:
	.string	"_Bool"
.LASF25:
	.string	"ESP_RST_DEEPSLEEP"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
