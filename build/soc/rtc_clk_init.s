	.file	"rtc_clk_init.c"
	.text
.Ltext0:
	.global	__udivdi3
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.string	"rtc_clk_init"
	.align	4
.LC5:
	.string	"\033[0;33mW (%d) %s: Potentially bogus XTAL frequency: %d MHz, guessing 26 MHz\033[0m\n"
	.align	4
.LC7:
	.string	"\033[0;33mW (%d) %s: Potentially bogus XTAL frequency: %d MHz, guessing 40 MHz\033[0m\n"
	.align	4
.LC9:
	.string	"\033[0;33mW (%d) %s: Bogus XTAL frequency: %d MHz\033[0m\n"
	.section	.text.rtc_clk_xtal_freq_estimate,"ax",@progbits
	.literal_position
	.literal .LC0, 8500000
	.literal .LC1, 256000000, 0
	.literal .LC2, .L5
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.align	4
	.type	rtc_clk_xtal_freq_estimate, @function
rtc_clk_xtal_freq_estimate:
.LFB11:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_clk_init.c"
	.loc 1 146 0
	entry	sp, 32
.LCFI0:
	.loc 1 148 0
	call8	rtc_clk_8m_enabled
.LVL0:
	.loc 1 149 0
	call8	rtc_clk_8md256_enabled
.LVL1:
	.loc 1 150 0
	bnez.n	a10, .L2
	.loc 1 151 0
	movi.n	a11, 1
	mov.n	a10, a11
.LVL2:
	call8	rtc_clk_8m_enable
.LVL3:
.L2:
	.loc 1 154 0
	movi.n	a11, 0xa
	movi.n	a10, 1
	call8	rtc_clk_cal_ratio
.LVL4:
	.loc 1 159 0
	l32r	a2, .LC0
	muluh	a11, a10, a2
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	mull	a10, a10, a2
.LVL5:
	call8	__udivdi3
.LVL6:
	slli	a2, a11, 13
	extui	a10, a10, 19, 13
	or	a2, a2, a10
.LVL7:
	.loc 1 162 0
	addi	a8, a2, -21
	movi.n	a9, 0x18
	bltu	a9, a8, .L3
	l32r	a9, .LC2
	addx4	a8, a8, a9
	l32i.n	a8, a8, 0
	jx	a8
	.section	.rodata.rtc_clk_xtal_freq_estimate,"a",@progbits
	.align	4
	.align	4
.L5:
	.word	.L4
	.word	.L4
	.word	.L4
	.word	.L4
	.word	.L4
	.word	.L4
	.word	.L4
	.word	.L4
	.word	.L4
	.word	.L4
	.word	.L4
	.word	.L6
	.word	.L6
	.word	.L7
	.word	.L7
	.word	.L9
	.word	.L9
	.word	.L9
	.word	.L9
	.word	.L9
	.word	.L9
	.word	.L9
	.word	.L9
	.word	.L9
	.word	.L9
	.section	.text.rtc_clk_xtal_freq_estimate
.L4:
	.loc 1 164 0
	movi.n	a2, 0x1a
.LVL8:
	retw.n
.LVL9:
.L6:
	.loc 1 166 0 discriminator 1
	call8	esp_log_timestamp
.LVL10:
	mov.n	a13, a2
	l32r	a12, .LC4
	mov.n	a11, a10
	l32r	a10, .LC6
	call8	ets_printf
.LVL11:
	.loc 1 167 0 discriminator 1
	movi.n	a2, 0x1a
.LVL12:
	retw.n
.LVL13:
.L7:
	.loc 1 169 0 discriminator 1
	call8	esp_log_timestamp
.LVL14:
	mov.n	a13, a2
	l32r	a12, .LC4
	mov.n	a11, a10
	l32r	a10, .LC8
	call8	ets_printf
.LVL15:
	.loc 1 170 0 discriminator 1
	movi.n	a2, 0x28
.LVL16:
	retw.n
.LVL17:
.L3:
	.loc 1 174 0 discriminator 1
	call8	esp_log_timestamp
.LVL18:
	mov.n	a13, a2
	l32r	a12, .LC4
	mov.n	a11, a10
	l32r	a10, .LC10
	call8	ets_printf
.LVL19:
	.loc 1 175 0 discriminator 1
	movi.n	a2, 0
.LVL20:
	retw.n
.LVL21:
.L9:
	.loc 1 172 0
	movi.n	a2, 0x28
.LVL22:
	.loc 1 179 0
	retw.n
.LFE11:
	.size	rtc_clk_xtal_freq_estimate, .-rtc_clk_xtal_freq_estimate
	.section	.rodata.str1.4
	.align	4
.LC21:
	.string	"\033[0;33mW (%d) %s: Can't estimate XTAL frequency, assuming 26MHz\033[0m\n"
	.align	4
.LC23:
	.string	"\033[0;33mW (%d) %s: Possibly invalid CONFIG_ESP32_XTAL_FREQ setting (%dMHz). Detected %d MHz.\033[0m\n"
	.align	4
.LC28:
	.string	"\033[0;31mE (%d) %s: invalid CPU frequency value\033[0m\n"
	.section	.text.rtc_clk_init,"ax",@progbits
	.literal_position
	.literal .LC11, 1072988272
	.literal .LC12, 1072988284
	.literal .LC13, -4177921
	.literal .LC14, -33423361
	.literal .LC15, -28673
	.literal .LC16, 1610670148
	.literal .LC17, 261888
	.literal .LC18, -147457
	.literal .LC19, 1072988336
	.literal .LC20, .LC3
	.literal .LC22, .LC21
	.literal .LC24, .LC23
	.literal .LC25, 1072955420
	.literal .LC26, 268369920
	.literal .LC27, 1000000
	.literal .LC29, .LC28
	.literal .LC30, 1073111044
	.literal .LC31, 1073111048
	.literal .LC32, 1572864
	.literal .LC33, 524288
	.literal .LC35, -1048576
	.align	4
	.global	rtc_clk_init
	.type	rtc_clk_init, @function
rtc_clk_init:
.LFB10:
	.loc 1 46 0
	entry	sp, 80
.LCFI1:
	s32i.n	a2, sp, 32
	s32i.n	a3, sp, 36
.LBB34:
.LBB35:
	.loc 1 58 0
	l32r	a2, .LC11
	memw
	l32i.n	a2, a2, 0
.LBE35:
	extui	a2, a2, 27, 2
.LBE34:
	bnei	a2, 1, .L11
	.loc 1 63 0
	movi.n	a11, 1
	movi.n	a10, 0x28
	call8	rtc_clk_cpu_freq_to_xtal
.LVL23:
.L11:
.LBB36:
.LBB37:
	.loc 1 74 0
	l32r	a3, .LC12
	memw
	l32i.n	a8, a3, 0
.LBE37:
	l32r	a2, .LC13
	and	a8, a8, a2
	l8ui	a2, sp, 35
	slli	a2, a2, 14
	or	a2, a2, a8
	memw
	s32i.n	a2, a3, 0
.LBE36:
.LBB38:
.LBB39:
	.loc 1 75 0
	l32r	a9, .LC11
	memw
	l32i.n	a8, a9, 0
.LBE39:
	l32r	a2, .LC14
	and	a8, a8, a2
	l8ui	a2, sp, 36
	slli	a2, a2, 17
	or	a2, a2, a8
	memw
	s32i.n	a2, a9, 0
.LBE38:
.LBB40:
.LBB41:
	.loc 1 78 0
	memw
	l32i.n	a8, a9, 0
.LBE41:
	l32r	a2, .LC15
	and	a8, a8, a2
	l32i.n	a2, sp, 32
	extui	a2, a2, 21, 3
	slli	a2, a2, 12
	or	a2, a2, a8
	memw
	s32i.n	a2, a9, 0
.LBE40:
.LBB42:
.LBB43:
	.loc 1 81 0
	l32r	a2, .LC16
	memw
	l32i.n	a8, a2, 0
.LBE43:
	l32r	a3, .LC17
	or	a3, a8, a3
	memw
	s32i.n	a3, a2, 0
.LBE42:
.LBB44:
.LBB45:
	.loc 1 82 0
	memw
	l32i.n	a8, a2, 0
.LBE45:
	l32r	a3, .LC18
	and	a3, a8, a3
	memw
	s32i.n	a3, a2, 0
.LBE44:
	.loc 1 85 0
	l8ui	a2, sp, 32
.LVL24:
	.loc 1 86 0
	bnez.n	a2, .L12
.LBB46:
	.loc 1 87 0
	l32r	a2, .LC19
.LVL25:
	memw
	l32i.n	a2, a2, 0
.LVL26:
.LBE46:
.LBB47:
.LBB48:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_clk_common.h"
	.loc 2 26 0
	extui	a3, a2, 0, 16
	extui	a8, a2, 16, 16
	.loc 2 27 0
	bne	a8, a3, .L21
	addi.n	a2, a2, -1
.LVL27:
	movi.n	a3, -3
	bgeu	a3, a2, .L22
	movi.n	a2, 0
.LVL28:
	j	.L13
.LVL29:
.L21:
	movi.n	a2, 0
.LVL30:
	j	.L13
.LVL31:
.L22:
	movi.n	a2, 1
.LVL32:
.L13:
.LBE48:
.LBE47:
	.loc 1 87 0
	beqz.n	a2, .L14
	.loc 1 89 0
	call8	rtc_clk_xtal_freq_get
.LVL33:
	mov.n	a2, a10
.LVL34:
	j	.L17
.LVL35:
.L14:
	.loc 1 92 0
	call8	rtc_clk_xtal_freq_estimate
.LVL36:
	mov.n	a2, a10
.LVL37:
	.loc 1 93 0
	bnez.n	a10, .L17
	.loc 1 94 0 discriminator 1
	call8	esp_log_timestamp
.LVL38:
	l32r	a12, .LC20
	mov.n	a11, a10
	l32r	a10, .LC22
	call8	ets_printf
.LVL39:
	.loc 1 95 0 discriminator 1
	movi.n	a2, 0x1a
	j	.L17
.LVL40:
.L12:
.LBB49:
	.loc 1 98 0
	l32r	a3, .LC19
	memw
	l32i.n	a3, a3, 0
.LVL41:
.LBE49:
.LBB50:
.LBB51:
	.loc 2 26 0
	extui	a9, a3, 0, 16
	extui	a8, a3, 16, 16
	.loc 2 27 0
	bne	a9, a8, .L23
	addi.n	a3, a3, -1
.LVL42:
	movi.n	a8, -3
	bgeu	a8, a3, .L24
	movi.n	a3, 0
.LVL43:
	j	.L16
.LVL44:
.L23:
	movi.n	a3, 0
.LVL45:
	j	.L16
.LVL46:
.L24:
	movi.n	a3, 1
.LVL47:
.L16:
.LBE51:
.LBE50:
	.loc 1 98 0
	bnez.n	a3, .L17
.LBB52:
	.loc 1 104 0
	call8	rtc_clk_xtal_freq_estimate
.LVL48:
	mov.n	a3, a10
.LVL49:
	.loc 1 105 0
	beq	a2, a10, .L17
	.loc 1 106 0 discriminator 1
	call8	esp_log_timestamp
.LVL50:
	mov.n	a14, a3
	mov.n	a13, a2
	l32r	a12, .LC20
	mov.n	a11, a10
	l32r	a10, .LC24
	call8	ets_printf
.LVL51:
.L17:
.LBE52:
.LBB53:
.LBB54:
.LBB55:
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/uart.h"
	.loc 3 272 0
	l32r	a8, .LC25
	memw
	l32i.n	a9, a8, 0
.LVL52:
.LBE55:
	.loc 3 274 0
	l32r	a8, .LC26
	bany	a9, a8, .L17
.LBE54:
.LBE53:
	.loc 1 111 0
	mov.n	a10, a2
	call8	rtc_clk_xtal_freq_update
.LVL53:
	.loc 1 112 0
	l32r	a10, .LC27
	mull	a10, a2, a10
	call8	rtc_clk_apb_freq_update
.LVL54:
	.loc 1 116 0
	mov.n	a10, sp
	call8	rtc_clk_cpu_freq_get_config
.LVL55:
	.loc 1 117 0
	l32i.n	a3, sp, 12
.LVL56:
	.loc 1 119 0
	addi	a11, sp, 16
	l32i.n	a10, sp, 32
	extui	a10, a10, 8, 10
	call8	rtc_clk_cpu_freq_mhz_to_config
.LVL57:
	.loc 1 120 0
	bnez.n	a10, .L18
	.loc 1 121 0 discriminator 1
	call8	esp_log_timestamp
.LVL58:
	l32r	a12, .LC20
	mov.n	a11, a10
	l32r	a10, .LC29
	call8	ets_printf
.LVL59:
	.loc 1 122 0 discriminator 1
	call8	abort
.LVL60:
.L18:
	.loc 1 124 0
	addi	a10, sp, 16
.LVL61:
	call8	rtc_clk_cpu_freq_set_config
.LVL62:
.LBB56:
	.loc 1 127 0
	addi.n	a2, a2, -1
	l32r	a8, .LC30
	memw
	s32i.n	a2, a8, 0
.LBE56:
.LBB57:
	.loc 1 128 0
	movi.n	a8, 0x4f
	l32r	a2, .LC31
	memw
	s32i.n	a8, a2, 0
.LBE57:
.LBB58:
.LBB59:
	.loc 1 131 0
#APP
# 131 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_clk_init.c" 1
	rsr.ccount a2
# 0 "" 2
#NO_APP
.LBE59:
	l32i.n	a9, sp, 32
	extui	a9, a9, 8, 10
	mull	a2, a9, a2
	quou	a2, a2, a3
.LVL63:
#APP
# 131 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_clk_init.c" 1
	wsr.ccount a2
# 0 "" 2
#NO_APP
.LBE58:
	.loc 1 134 0
	l32i.n	a3, sp, 32
.LVL64:
	l32r	a2, .LC32
.LVL65:
	and	a2, a3, a2
	l32r	a8, .LC33
	bne	a2, a8, .L19
	.loc 1 135 0
	movi.n	a10, 1
	call8	rtc_clk_32k_enable
.LVL66:
.L19:
	.loc 1 137 0
	bbci	a3, 18, .L20
.LBB60:
	.loc 1 138 0
	l32r	a11, .LC35
	add.n	a2, a2, a11
	movi.n	a10, 1
	movi.n	a11, 0
	moveqz	a11, a10, a2
.LVL67:
	.loc 1 139 0
	call8	rtc_clk_8m_enable
.LVL68:
.L20:
.LBE60:
	.loc 1 141 0
	l32i.n	a10, sp, 32
	extui	a10, a10, 18, 1
	call8	rtc_clk_fast_freq_set
.LVL69:
	.loc 1 142 0
	l32i.n	a10, sp, 32
	extui	a10, a10, 19, 2
	call8	rtc_clk_slow_freq_set
.LVL70:
	retw.n
.LFE10:
	.size	rtc_clk_init, .-rtc_clk_init
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI0-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI1-.LFB10
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x815
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0xc
	.4byte	.LASF92
	.4byte	.LASF93
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x4
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
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
	.byte	0x1e
	.4byte	0x77
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x5
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x39
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc1
	.uleb128 0x6
	.4byte	0xb4
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x3c
	.4byte	0xf2
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x41
	.4byte	0xcd
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x46
	.4byte	0x128
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x4c
	.4byte	0xfd
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x51
	.4byte	0x158
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x6
	.byte	0x56
	.4byte	0x133
	.uleb128 0x9
	.byte	0x10
	.byte	0x6
	.byte	0x5b
	.4byte	0x19c
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x6
	.byte	0x5c
	.4byte	0x158
	.byte	0
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x6
	.byte	0x5d
	.4byte	0x89
	.byte	0x4
	.uleb128 0xb
	.string	"div"
	.byte	0x6
	.byte	0x5e
	.4byte	0x89
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x6
	.byte	0x5f
	.4byte	0x89
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x6
	.byte	0x60
	.4byte	0x163
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x65
	.4byte	0x1c6
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x6
	.byte	0x69
	.4byte	0x1a7
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x6e
	.4byte	0x1ea
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x6
	.byte	0x71
	.4byte	0x1d1
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x79
	.4byte	0x214
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x6
	.byte	0x82
	.4byte	0x286
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x6
	.byte	0x83
	.4byte	0xf2
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x6
	.byte	0x84
	.4byte	0x128
	.byte	0x4
	.byte	0xa
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x6
	.byte	0x85
	.4byte	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0x86
	.4byte	0x1c6
	.byte	0x4
	.byte	0x2
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0x87
	.4byte	0x89
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0x88
	.4byte	0x89
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0x89
	.4byte	0x89
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x6
	.byte	0x8a
	.4byte	0x214
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x7
	.byte	0x1f
	.4byte	0x2c2
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF60
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF94
	.byte	0x2
	.byte	0x19
	.4byte	0xc6
	.byte	0x3
	.4byte	0x2de
	.uleb128 0xe
	.string	"val"
	.byte	0x2
	.byte	0x19
	.4byte	0x89
	.byte	0
	.uleb128 0xf
	.4byte	.LASF95
	.byte	0x3
	.2byte	0x10d
	.byte	0x3
	.4byte	0x311
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x3
	.2byte	0x10d
	.4byte	0x7e
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x3
	.2byte	0x10e
	.4byte	0x89
	.uleb128 0x12
	.4byte	.LASF64
	.4byte	0x321
	.4byte	.LASF95
	.byte	0
	.uleb128 0x13
	.4byte	0xb4
	.4byte	0x321
	.uleb128 0x14
	.4byte	0xa6
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.4byte	0x311
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x1
	.byte	0x91
	.4byte	0xf2
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43f
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x1
	.byte	0x94
	.4byte	0x43f
	.uleb128 0x17
	.4byte	.LASF67
	.byte	0x1
	.byte	0x95
	.4byte	0x43f
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x1
	.byte	0x9a
	.4byte	0x94
	.uleb128 0x17
	.4byte	.LASF36
	.byte	0x1
	.byte	0x9f
	.4byte	0x89
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	.LVL0
	.4byte	0x756
	.uleb128 0x18
	.4byte	.LVL1
	.4byte	0x761
	.uleb128 0x19
	.4byte	.LVL3
	.4byte	0x76c
	.4byte	0x39d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x19
	.4byte	.LVL4
	.4byte	0x777
	.4byte	0x3b5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x18
	.4byte	.LVL10
	.4byte	0x783
	.uleb128 0x19
	.4byte	.LVL11
	.4byte	0x78e
	.4byte	0x3e4
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL14
	.4byte	0x783
	.uleb128 0x19
	.4byte	.LVL15
	.4byte	0x78e
	.4byte	0x413
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL18
	.4byte	0x783
	.uleb128 0x1b
	.4byte	.LVL19
	.4byte	0x78e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0xc6
	.uleb128 0x1c
	.4byte	.LASF97
	.byte	0x1
	.byte	0x2d
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x72a
	.uleb128 0x1d
	.string	"cfg"
	.byte	0x1
	.byte	0x2d
	.4byte	0x286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.4byte	.LASF68
	.byte	0x1
	.byte	0x2f
	.4byte	0x19c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.4byte	.LASF69
	.byte	0x1
	.byte	0x2f
	.4byte	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.4byte	.LASF64
	.4byte	0x73a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x17
	.4byte	.LASF48
	.byte	0x1
	.byte	0x55
	.4byte	0xf2
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.LASF70
	.byte	0x1
	.byte	0x75
	.4byte	0x89
	.4byte	.LLST3
	.uleb128 0x20
	.string	"res"
	.byte	0x1
	.byte	0x77
	.4byte	0xc6
	.4byte	.LLST4
	.uleb128 0x21
	.4byte	0x2c2
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.byte	0x1
	.byte	0x57
	.4byte	0x4dd
	.uleb128 0x22
	.4byte	0x2d2
	.4byte	.LLST5
	.byte	0
	.uleb128 0x21
	.4byte	0x2c2
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.byte	0x1
	.byte	0x62
	.4byte	0x4fa
	.uleb128 0x22
	.4byte	0x2d2
	.4byte	.LLST6
	.byte	0
	.uleb128 0x23
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.4byte	0x551
	.uleb128 0x17
	.4byte	.LASF71
	.byte	0x1
	.byte	0x68
	.4byte	0xf2
	.4byte	.LLST7
	.uleb128 0x18
	.4byte	.LVL48
	.4byte	0x326
	.uleb128 0x18
	.4byte	.LVL50
	.4byte	0x783
	.uleb128 0x1b
	.4byte	.LVL51
	.4byte	0x78e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	0x2de
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.byte	0x1
	.byte	0x6e
	.4byte	0x582
	.uleb128 0x24
	.4byte	0x2eb
	.uleb128 0x25
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.uleb128 0x26
	.4byte	0x2f7
	.4byte	.LLST8
	.uleb128 0x27
	.4byte	0x303
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.4byte	0x5b4
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x1
	.byte	0x83
	.4byte	0x4c
	.4byte	.LLST9
	.uleb128 0x25
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0x1
	.byte	0x83
	.4byte	0x4c
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.4byte	0x5e8
	.uleb128 0x17
	.4byte	.LASF73
	.byte	0x1
	.byte	0x8a
	.4byte	0xc6
	.4byte	.LLST10
	.uleb128 0x1b
	.4byte	.LVL68
	.4byte	0x76c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL23
	.4byte	0x799
	.4byte	0x601
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x18
	.4byte	.LVL33
	.4byte	0x7a4
	.uleb128 0x18
	.4byte	.LVL36
	.4byte	0x326
	.uleb128 0x18
	.4byte	.LVL38
	.4byte	0x783
	.uleb128 0x19
	.4byte	.LVL39
	.4byte	0x78e
	.4byte	0x63c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x19
	.4byte	.LVL53
	.4byte	0x7af
	.4byte	0x650
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL54
	.4byte	0x7ba
	.4byte	0x66a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0xc
	.4byte	0xf4240
	.byte	0x1e
	.byte	0
	.uleb128 0x19
	.4byte	.LVL55
	.4byte	0x7c6
	.4byte	0x67f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x19
	.4byte	.LVL57
	.4byte	0x7d2
	.4byte	0x6a0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x9
	.byte	0xf2
	.byte	0x24
	.byte	0x9
	.byte	0xfa
	.byte	0x25
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x18
	.4byte	.LVL58
	.4byte	0x783
	.uleb128 0x19
	.4byte	.LVL59
	.4byte	0x78e
	.4byte	0x6c9
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x18
	.4byte	.LVL60
	.4byte	0x7de
	.uleb128 0x19
	.4byte	.LVL62
	.4byte	0x7e9
	.4byte	0x6e6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x19
	.4byte	.LVL66
	.4byte	0x7f5
	.4byte	0x6f9
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x19
	.4byte	.LVL69
	.4byte	0x800
	.4byte	0x713
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x9
	.byte	0xf1
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL70
	.4byte	0x80c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x9
	.byte	0xef
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0xb4
	.4byte	0x73a
	.uleb128 0x14
	.4byte	0xa6
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.4byte	0x72a
	.uleb128 0x28
	.string	"TAG"
	.byte	0x1
	.byte	0x2b
	.4byte	0x751
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC3
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xbb
	.uleb128 0x29
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x6
	.byte	0xf1
	.uleb128 0x29
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x6
	.byte	0xf7
	.uleb128 0x29
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x6
	.byte	0xeb
	.uleb128 0x2a
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x1ed
	.uleb128 0x29
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x7
	.byte	0x57
	.uleb128 0x29
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x8
	.byte	0xde
	.uleb128 0x29
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x2
	.byte	0x13
	.uleb128 0x29
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x6
	.byte	0xb2
	.uleb128 0x29
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x6
	.byte	0xbc
	.uleb128 0x2a
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x1cd
	.uleb128 0x2a
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x1b5
	.uleb128 0x2a
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x18b
	.uleb128 0x29
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x9
	.byte	0x47
	.uleb128 0x2a
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x199
	.uleb128 0x29
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x6
	.byte	0xc2
	.uleb128 0x2a
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x12a
	.uleb128 0x2a
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x110
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x8
	.byte	0x7b
	.sleb128 0
	.byte	0x3d
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE11
	.2byte	0x8
	.byte	0x7b
	.sleb128 0
	.byte	0x3d
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL34
	.2byte	0x8
	.byte	0x91
	.sleb128 -48
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x8
	.byte	0x91
	.sleb128 -48
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x4a
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL56
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL57
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL52
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL67
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL68-1
	.4byte	.LVL68
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x29
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF41:
	.string	"rtc_slow_freq_t"
.LASF94:
	.string	"clk_val_is_valid"
.LASF21:
	.string	"RTC_XTAL_FREQ_24M"
.LASF35:
	.string	"source_freq_mhz"
.LASF96:
	.string	"rtc_clk_xtal_freq_estimate"
.LASF39:
	.string	"RTC_SLOW_FREQ_32K_XTAL"
.LASF52:
	.string	"clk_8m_div"
.LASF54:
	.string	"clk_8m_dfreq"
.LASF25:
	.string	"RTC_CPU_FREQ_160M"
.LASF2:
	.string	"short int"
.LASF55:
	.string	"rtc_clk_config_t"
.LASF81:
	.string	"rtc_clk_xtal_freq_get"
.LASF19:
	.string	"RTC_XTAL_FREQ_40M"
.LASF92:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_clk_init.c"
.LASF48:
	.string	"xtal_freq"
.LASF5:
	.string	"__uint32_t"
.LASF62:
	.string	"uart_no"
.LASF37:
	.string	"rtc_cpu_freq_config_t"
.LASF82:
	.string	"rtc_clk_xtal_freq_update"
.LASF27:
	.string	"RTC_CPU_FREQ_2M"
.LASF66:
	.string	"cal_val"
.LASF10:
	.string	"uint8_t"
.LASF51:
	.string	"slow_freq"
.LASF23:
	.string	"RTC_CPU_FREQ_XTAL"
.LASF36:
	.string	"freq_mhz"
.LASF83:
	.string	"rtc_clk_apb_freq_update"
.LASF42:
	.string	"RTC_FAST_FREQ_XTALD4"
.LASF70:
	.string	"freq_before"
.LASF97:
	.string	"rtc_clk_init"
.LASF7:
	.string	"long long int"
.LASF29:
	.string	"RTC_CPU_FREQ_SRC_XTAL"
.LASF24:
	.string	"RTC_CPU_FREQ_80M"
.LASF65:
	.string	"clk_8m_enabled"
.LASF49:
	.string	"cpu_freq_mhz"
.LASF13:
	.string	"long int"
.LASF14:
	.string	"sizetype"
.LASF59:
	.string	"ESP_LOG_INFO"
.LASF28:
	.string	"rtc_cpu_freq_t"
.LASF4:
	.string	"__uint8_t"
.LASF34:
	.string	"source"
.LASF77:
	.string	"rtc_clk_cal_ratio"
.LASF73:
	.string	"need_8md256"
.LASF72:
	.string	"__ccount"
.LASF22:
	.string	"rtc_xtal_freq_t"
.LASF44:
	.string	"rtc_fast_freq_t"
.LASF1:
	.string	"unsigned char"
.LASF43:
	.string	"RTC_FAST_FREQ_8M"
.LASF53:
	.string	"slow_clk_dcap"
.LASF86:
	.string	"abort"
.LASF0:
	.string	"signed char"
.LASF12:
	.string	"uint64_t"
.LASF9:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint32_t"
.LASF95:
	.string	"uart_tx_wait_idle"
.LASF6:
	.string	"unsigned int"
.LASF26:
	.string	"RTC_CPU_FREQ_240M"
.LASF20:
	.string	"RTC_XTAL_FREQ_26M"
.LASF79:
	.string	"ets_printf"
.LASF64:
	.string	"__func__"
.LASF85:
	.string	"rtc_clk_cpu_freq_mhz_to_config"
.LASF63:
	.string	"status"
.LASF16:
	.string	"char"
.LASF47:
	.string	"RTC_CAL_32K_XTAL"
.LASF67:
	.string	"clk_8md256_enabled"
.LASF84:
	.string	"rtc_clk_cpu_freq_get_config"
.LASF56:
	.string	"ESP_LOG_NONE"
.LASF3:
	.string	"short unsigned int"
.LASF17:
	.string	"_Bool"
.LASF75:
	.string	"rtc_clk_8md256_enabled"
.LASF8:
	.string	"__uint64_t"
.LASF58:
	.string	"ESP_LOG_WARN"
.LASF60:
	.string	"ESP_LOG_DEBUG"
.LASF88:
	.string	"rtc_clk_32k_enable"
.LASF15:
	.string	"long unsigned int"
.LASF89:
	.string	"rtc_clk_fast_freq_set"
.LASF45:
	.string	"RTC_CAL_RTC_MUX"
.LASF33:
	.string	"rtc_cpu_freq_src_t"
.LASF32:
	.string	"RTC_CPU_FREQ_SRC_APLL"
.LASF74:
	.string	"rtc_clk_8m_enabled"
.LASF61:
	.string	"ESP_LOG_VERBOSE"
.LASF38:
	.string	"RTC_SLOW_FREQ_RTC"
.LASF30:
	.string	"RTC_CPU_FREQ_SRC_PLL"
.LASF76:
	.string	"rtc_clk_8m_enable"
.LASF78:
	.string	"esp_log_timestamp"
.LASF31:
	.string	"RTC_CPU_FREQ_SRC_8M"
.LASF69:
	.string	"new_config"
.LASF90:
	.string	"rtc_clk_slow_freq_set"
.LASF93:
	.string	"/home/raphael/rtone/lcd/build/soc"
.LASF40:
	.string	"RTC_SLOW_FREQ_8MD256"
.LASF46:
	.string	"RTC_CAL_8MD256"
.LASF80:
	.string	"rtc_clk_cpu_freq_to_xtal"
.LASF18:
	.string	"RTC_XTAL_FREQ_AUTO"
.LASF91:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF57:
	.string	"ESP_LOG_ERROR"
.LASF71:
	.string	"est_xtal_freq"
.LASF87:
	.string	"rtc_clk_cpu_freq_set_config"
.LASF50:
	.string	"fast_freq"
.LASF68:
	.string	"old_config"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
