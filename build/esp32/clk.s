	.file	"clk.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"clk"
	.align	4
.LC4:
	.string	"\033[0;33mW (%d) %s: 32 kHz XTAL not found, switching to internal 150 kHz oscillator\033[0m\n"
	.section	.text.select_rtc_slow_clk,"ax",@progbits
	.literal_position
	.literal .LC1, 14999999
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.align	4
	.type	select_rtc_slow_clk, @function
select_rtc_slow_clk:
.LFB12:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/clk.c"
	.loc 1 166 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 167 0
	extui	a3, a2, 0, 2
.LVL1:
.L6:
	.loc 1 170 0
	bnei	a3, 1, .L2
	.loc 1 179 0
	bnei	a2, 1, .L3
	.loc 1 180 0
	movi.n	a10, 1
	call8	rtc_clk_32k_enable
.LVL2:
	j	.L4
.L3:
	.loc 1 181 0
	movi.n	a8, 9
	bne	a2, a8, .L4
	.loc 1 182 0
	call8	rtc_clk_32k_enable_external
.LVL3:
.L4:
	.loc 1 186 0
	movi	a11, 0x400
	movi.n	a10, 2
	call8	rtc_clk_cal
.LVL4:
	.loc 1 187 0
	l32r	a8, .LC1
	bltu	a8, a10, .L5
	.loc 1 188 0 discriminator 1
	call8	esp_log_timestamp
.LVL5:
	l32r	a12, .LC3
	mov.n	a11, a10
	l32r	a10, .LC5
	call8	ets_printf
.LVL6:
	.loc 1 189 0 discriminator 1
	movi.n	a3, 0
	j	.L5
.LVL7:
.L2:
	.loc 1 192 0
	bnei	a3, 2, .L5
	.loc 1 193 0
	movi.n	a11, 1
	mov.n	a10, a11
	call8	rtc_clk_8m_enable
.LVL8:
.L5:
	.loc 1 195 0
	mov.n	a10, a3
	call8	rtc_clk_slow_freq_set
.LVL9:
	.loc 1 201 0
	movi	a11, 0x400
	movi.n	a10, 0
	call8	rtc_clk_cal
.LVL10:
	.loc 1 206 0
	beqz.n	a10, .L6
	.loc 1 208 0
	call8	esp_clk_slowclk_cal_set
.LVL11:
	retw.n
.LFE12:
	.size	select_rtc_slow_clk, .-select_rtc_slow_clk
	.section	.rodata.str1.4
	.align	4
.LC7:
	.string	"rtc_clk_xtal_freq_get() != RTC_XTAL_FREQ_AUTO"
	.align	4
.LC10:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/clk.c"
	.align	4
.LC13:
	.string	"res"
	.section	.rodata
	.align	4
.LC0:
	.byte	20
	.byte	20
	.byte	20
	.byte	7
	.section	.text.esp_clk_init,"ax",@progbits
	.literal_position
	.literal .LC6, .LC0
	.literal .LC8, .LC7
	.literal .LC9, __func__$4236
	.literal .LC11, .LC10
	.literal .LC12, 9000
	.literal .LC14, .LC13
	.literal .LC15, 1072955420
	.literal .LC16, 268369920
	.align	4
	.global	esp_clk_init
	.type	esp_clk_init, @function
esp_clk_init:
.LFB7:
	.loc 1 72 0
	entry	sp, 64
.LCFI1:
	.loc 1 74 0
	l32r	a2, .LC6
	l32i.n	a10, a2, 0
	call8	rtc_init
.LVL12:
	.loc 1 88 0
	call8	rtc_clk_xtal_freq_get
.LVL13:
	bnez.n	a10, .L8
	.loc 1 88 0 is_stmt 0 discriminator 1
	l32r	a13, .LC8
	l32r	a12, .LC9
	movi.n	a11, 0x58
	l32r	a10, .LC11
	call8	__assert_func
.LVL14:
.L8:
	.loc 1 91 0 is_stmt 1
	movi.n	a10, 1
	call8	rtc_clk_fast_freq_set
.LVL15:
	.loc 1 99 0
	call8	rtc_wdt_protect_off
.LVL16:
	.loc 1 100 0
	call8	rtc_wdt_feed
.LVL17:
	.loc 1 101 0
	movi	a11, 0x640
	movi.n	a10, 0
	call8	rtc_wdt_set_time
.LVL18:
	.loc 1 102 0
	call8	rtc_wdt_protect_on
.LVL19:
	.loc 1 112 0
	movi.n	a10, 0
	call8	select_rtc_slow_clk
.LVL20:
	.loc 1 117 0
	call8	rtc_wdt_protect_off
.LVL21:
	.loc 1 118 0
	call8	rtc_wdt_feed
.LVL22:
	.loc 1 119 0
	l32r	a11, .LC12
	movi.n	a10, 0
	call8	rtc_wdt_set_time
.LVL23:
	.loc 1 120 0
	call8	rtc_wdt_protect_on
.LVL24:
	.loc 1 124 0
	mov.n	a10, sp
	call8	rtc_clk_cpu_freq_get_config
.LVL25:
	.loc 1 125 0
	l32i.n	a2, sp, 12
.LVL26:
	.loc 1 128 0
	addi	a11, sp, 16
	movi	a10, 0xa0
	call8	rtc_clk_cpu_freq_mhz_to_config
.LVL27:
	.loc 1 129 0
	bnez.n	a10, .L9
	.loc 1 129 0 is_stmt 0 discriminator 1
	l32r	a13, .LC14
	l32r	a12, .LC9
	movi	a11, 0x81
	l32r	a10, .LC11
.LVL28:
	call8	__assert_func
.LVL29:
.L9:
.LBB27:
.LBB28:
.LBB29:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/uart.h"
	.loc 2 272 0 is_stmt 1
	l32r	a8, .LC15
	memw
	l32i.n	a9, a8, 0
.LVL30:
.LBE29:
	.loc 2 274 0
	l32r	a8, .LC16
	bany	a9, a8, .L9
.LBE28:
.LBE27:
	.loc 1 135 0
	addi	a10, sp, 16
.LVL31:
	call8	rtc_clk_cpu_freq_set_config
.LVL32:
.LBB30:
.LBB31:
	.loc 1 138 0
#APP
# 138 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/clk.c" 1
	rsr.ccount a8
# 0 "" 2
.LVL33:
#NO_APP
.LBE31:
	addx4	a8, a8, a8
.LVL34:
	slli	a9, a8, 5
	quou	a2, a9, a2
.LVL35:
#APP
# 138 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/clk.c" 1
	wsr.ccount a2
# 0 "" 2
#NO_APP
	retw.n
.LBE30:
.LFE7:
	.size	esp_clk_init, .-esp_clk_init
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC17, g_ticks_per_us_pro
	.literal .LC18, 1000000
	.align	4
	.global	esp_clk_cpu_freq
	.type	esp_clk_cpu_freq, @function
esp_clk_cpu_freq:
.LFB8:
	.loc 1 142 0
	entry	sp, 32
.LCFI2:
	.loc 1 143 0
	l32r	a2, .LC17
	l32i.n	a2, a2, 0
	.loc 1 144 0
	l32r	a8, .LC18
	mull	a2, a2, a8
	retw.n
.LFE8:
	.size	esp_clk_cpu_freq, .-esp_clk_cpu_freq
	.literal_position
	.literal .LC19, g_ticks_per_us_pro
	.literal .LC20, 1000000
	.align	4
	.global	esp_clk_apb_freq
	.type	esp_clk_apb_freq, @function
esp_clk_apb_freq:
.LFB9:
	.loc 1 147 0
	entry	sp, 32
.LCFI3:
	.loc 1 148 0
	l32r	a2, .LC19
	l32i.n	a8, a2, 0
	movi.n	a2, 0x50
	minu	a8, a2, a8
	.loc 1 149 0
	l32r	a2, .LC20
	mull	a2, a8, a2
	retw.n
.LFE9:
	.size	esp_clk_apb_freq, .-esp_clk_apb_freq
	.literal_position
	.literal .LC21, 1000000
	.align	4
	.global	esp_clk_xtal_freq
	.type	esp_clk_xtal_freq, @function
esp_clk_xtal_freq:
.LFB10:
	.loc 1 152 0
	entry	sp, 32
.LCFI4:
	.loc 1 153 0
	call8	rtc_clk_xtal_freq_get
.LVL36:
	.loc 1 154 0
	l32r	a2, .LC21
	mull	a2, a10, a2
	retw.n
.LFE10:
	.size	esp_clk_xtal_freq, .-esp_clk_xtal_freq
	.literal_position
	.literal .LC22, g_ticks_per_us_pro
	.literal .LC23, g_ticks_per_us_app
	.align	4
	.global	ets_update_cpu_frequency
	.type	ets_update_cpu_frequency, @function
ets_update_cpu_frequency:
.LFB11:
	.loc 1 157 0
.LVL37:
	entry	sp, 32
.LCFI5:
	.loc 1 159 0
	l32r	a8, .LC22
	s32i.n	a2, a8, 0
	.loc 1 161 0
	l32r	a8, .LC23
	s32i.n	a2, a8, 0
	retw.n
.LFE11:
	.size	ets_update_cpu_frequency, .-ets_update_cpu_frequency
	.section	.text.rtc_clk_select_rtc_slow_clk,"ax",@progbits
	.align	4
	.global	rtc_clk_select_rtc_slow_clk
	.type	rtc_clk_select_rtc_slow_clk, @function
rtc_clk_select_rtc_slow_clk:
.LFB13:
	.loc 1 212 0
	entry	sp, 32
.LCFI6:
	.loc 1 213 0
	movi.n	a10, 1
	call8	select_rtc_slow_clk
.LVL38:
	retw.n
.LFE13:
	.size	rtc_clk_select_rtc_slow_clk, .-rtc_clk_select_rtc_slow_clk
	.section	.text.esp_perip_clk_init,"ax",@progbits
	.literal_position
	.literal .LC24, 228406
	.literal .LC25, 102403080
	.literal .LC26, 1072693440
	.literal .LC27, 1072693276
	.literal .LC28, 1072693452
	.literal .LC29, 15012848
	.literal .LC30, 1073017004
	.literal .LC31, 2097152
	.literal .LC32, 1073139884
	.literal .LC33, 1072693444
	.literal .LC34, 1072693280
	.align	4
	.global	esp_perip_clk_init
	.type	esp_perip_clk_init, @function
esp_perip_clk_init:
.LFB14:
	.loc 1 223 0
	entry	sp, 32
.LCFI7:
.LVL39:
	.loc 1 232 0
	movi.n	a10, 0
	call8	rtc_get_reset_reason
.LVL40:
	mov.n	a2, a10
	.loc 1 235 0
	movi.n	a10, 1
	call8	rtc_get_reset_reason
.LVL41:
	.loc 1 241 0
	addi	a2, a2, -11
	bltui	a2, 3, .L16
	.loc 1 243 0
	addi	a10, a10, -11
	bgeui	a10, 3, .L18
.L16:
.LVL42:
.LBB32:
.LBB33:
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 3 172 0
	l32r	a10, .LC26
	call8	esp_dport_access_reg_read
.LVL43:
.LBE33:
.LBE32:
	.loc 1 246 0
	movi.n	a3, -1
	xor	a2, a3, a10
.LVL44:
.LBB34:
.LBB35:
	.loc 3 172 0
	l32r	a10, .LC27
	call8	esp_dport_access_reg_read
.LVL45:
.LBE35:
.LBE34:
	.loc 1 247 0
	xor	a5, a3, a10
.LVL46:
.LBB36:
.LBB37:
	.loc 3 172 0
	l32r	a10, .LC28
	call8	esp_dport_access_reg_read
.LVL47:
.LBE37:
.LBE36:
	.loc 1 248 0
	xor	a3, a3, a10
.LVL48:
	j	.L17
.LVL49:
.L18:
	.loc 1 264 0
	l32r	a3, .LC24
	.loc 1 260 0
	movi.n	a5, 0xf
	.loc 1 251 0
	l32r	a2, .LC25
.LVL50:
.L17:
	.loc 1 274 0
	l32r	a10, .LC29
	or	a2, a2, a10
.LVL51:
.LBB38:
.LBB39:
	.loc 3 172 0
	l32r	a6, .LC30
	mov.n	a10, a6
	call8	esp_dport_access_reg_read
.LVL52:
.LBE39:
.LBE38:
	.loc 1 305 0
	l32r	a4, .LC31
	or	a10, a10, a4
	memw
	s32i.n	a10, a6, 0
.LVL53:
.LBB40:
.LBB41:
	.loc 3 172 0
	l32r	a6, .LC32
	mov.n	a10, a6
	call8	esp_dport_access_reg_read
.LVL54:
.LBE41:
.LBE40:
	.loc 1 306 0
	or	a10, a10, a4
	memw
	s32i.n	a10, a6, 0
.LVL55:
.LBB42:
.LBB43:
	.loc 3 172 0
	l32r	a6, .LC26
	mov.n	a10, a6
	call8	esp_dport_access_reg_read
.LVL56:
.LBE43:
.LBE42:
	.loc 1 309 0
	movi.n	a4, -1
	xor	a8, a4, a2
	and	a10, a8, a10
	memw
	s32i.n	a10, a6, 0
.LVL57:
.LBB44:
.LBB45:
	.loc 3 172 0
	l32r	a6, .LC33
	mov.n	a10, a6
	call8	esp_dport_access_reg_read
.LVL58:
.LBE45:
.LBE44:
	.loc 1 310 0
	or	a10, a2, a10
	memw
	s32i.n	a10, a6, 0
.LVL59:
.LBB46:
.LBB47:
	.loc 3 172 0
	l32r	a6, .LC27
	mov.n	a10, a6
	call8	esp_dport_access_reg_read
.LVL60:
.LBE47:
.LBE46:
	.loc 1 313 0
	xor	a2, a4, a5
.LVL61:
	and	a10, a2, a10
	memw
	s32i.n	a10, a6, 0
.LVL62:
.LBB48:
.LBB49:
	.loc 3 172 0
	l32r	a2, .LC34
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL63:
.LBE49:
.LBE48:
	.loc 1 314 0
	or	a10, a5, a10
	memw
	s32i.n	a10, a2, 0
.LVL64:
.LBB50:
.LBB51:
	.loc 3 172 0
	l32r	a5, .LC28
.LVL65:
	mov.n	a10, a5
	call8	esp_dport_access_reg_read
.LVL66:
.LBE51:
.LBE50:
	.loc 1 317 0
	xor	a2, a4, a3
	and	a10, a10, a2
	memw
	s32i.n	a10, a5, 0
	.loc 1 320 0
	movi.n	a10, 0x1a
	call8	periph_module_enable
.LVL67:
	retw.n
.LFE14:
	.size	esp_perip_clk_init, .-esp_perip_clk_init
	.section	.rodata.__func__$4236,"a",@progbits
	.align	4
	.type	__func__$4236, @object
	.size	__func__$4236, 13
__func__$4236:
	.string	"esp_clk_init"
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI0-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI1-.LFB7
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI2-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI3-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI4-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI5-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI6-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI7-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/rtc.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/rtc_wdt.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/periph_defs.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_clk.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_dport_access.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/driver/include/driver/periph_ctrl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xba8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF157
	.byte	0xc
	.4byte	.LASF158
	.4byte	.LASF159
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x5
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x5
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0xab
	.uleb128 0x6
	.4byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x1f
	.4byte	0xe1
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x7
	.byte	0x52
	.4byte	0x14e
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0xb
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0xd
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0xf
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x7
	.byte	0x63
	.4byte	0xe1
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x8
	.byte	0x3c
	.4byte	0x17e
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x8
	.byte	0x51
	.4byte	0x1a3
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x8
	.byte	0x56
	.4byte	0x17e
	.uleb128 0x9
	.byte	0x10
	.byte	0x8
	.byte	0x5b
	.4byte	0x1e7
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x8
	.byte	0x5c
	.4byte	0x1a3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x8
	.byte	0x5d
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xb
	.string	"div"
	.byte	0x8
	.byte	0x5e
	.4byte	0x7e
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x8
	.byte	0x5f
	.4byte	0x7e
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x8
	.byte	0x60
	.4byte	0x1ae
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x8
	.byte	0x65
	.4byte	0x211
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x8
	.byte	0x69
	.4byte	0x1f2
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x8
	.byte	0x6e
	.4byte	0x235
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x8
	.byte	0x79
	.4byte	0x254
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.2byte	0x294
	.4byte	0x2be
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x8
	.2byte	0x295
	.4byte	0x7e
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x8
	.2byte	0x296
	.4byte	0x7e
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x8
	.2byte	0x297
	.4byte	0x7e
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x8
	.2byte	0x298
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x8
	.2byte	0x299
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x8
	.2byte	0x29a
	.4byte	0x7e
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x8
	.2byte	0x29b
	.4byte	0x254
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x9
	.byte	0x40
	.4byte	0x2ef
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF69
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF70
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0xa
	.byte	0x16
	.4byte	0x3ce
	.uleb128 0x8
	.4byte	.LASF71
	.byte	0
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF74
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF75
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF76
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF77
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF79
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF80
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF82
	.byte	0xb
	.uleb128 0x8
	.4byte	.LASF83
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF84
	.byte	0xd
	.uleb128 0x8
	.4byte	.LASF85
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF86
	.byte	0xf
	.uleb128 0x8
	.4byte	.LASF87
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF88
	.byte	0x11
	.uleb128 0x8
	.4byte	.LASF89
	.byte	0x12
	.uleb128 0x8
	.4byte	.LASF90
	.byte	0x13
	.uleb128 0x8
	.4byte	.LASF91
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF92
	.byte	0x15
	.uleb128 0x8
	.4byte	.LASF93
	.byte	0x16
	.uleb128 0x8
	.4byte	.LASF94
	.byte	0x17
	.uleb128 0x8
	.4byte	.LASF95
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF96
	.byte	0x19
	.uleb128 0x8
	.4byte	.LASF97
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF98
	.byte	0x1b
	.uleb128 0x8
	.4byte	.LASF99
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF100
	.byte	0x1d
	.uleb128 0x8
	.4byte	.LASF101
	.byte	0x1e
	.uleb128 0x8
	.4byte	.LASF102
	.byte	0x1f
	.uleb128 0x8
	.4byte	.LASF103
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0x21
	.uleb128 0x8
	.4byte	.LASF105
	.byte	0x22
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x1
	.byte	0x35
	.4byte	0x3f3
	.uleb128 0x8
	.4byte	.LASF106
	.byte	0
	.uleb128 0x8
	.4byte	.LASF107
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF108
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF109
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0x1
	.byte	0x3a
	.4byte	0x3ce
	.uleb128 0xf
	.4byte	.LASF160
	.byte	0x2
	.2byte	0x10d
	.byte	0x3
	.4byte	0x431
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0x2
	.2byte	0x10d
	.4byte	0x73
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0x2
	.2byte	0x10e
	.4byte	0x7e
	.uleb128 0x12
	.4byte	.LASF112
	.4byte	0x441
	.4byte	.LASF160
	.byte	0
	.uleb128 0x13
	.4byte	0x9e
	.4byte	0x441
	.uleb128 0x14
	.4byte	0x90
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.4byte	0x431
	.uleb128 0x15
	.4byte	.LASF161
	.byte	0x3
	.byte	0xa7
	.4byte	0x7e
	.byte	0x3
	.4byte	0x462
	.uleb128 0x16
	.string	"reg"
	.byte	0x3
	.byte	0xa7
	.4byte	0x7e
	.byte	0
	.uleb128 0x17
	.4byte	.LASF162
	.byte	0x1
	.byte	0xa5
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x551
	.uleb128 0x18
	.4byte	.LASF126
	.byte	0x1
	.byte	0xa5
	.4byte	0x3f3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.4byte	.LASF114
	.byte	0x1
	.byte	0xa7
	.4byte	0x211
	.4byte	.LLST0
	.uleb128 0x19
	.4byte	.LASF115
	.byte	0x1
	.byte	0xa8
	.4byte	0x7e
	.4byte	.LLST1
	.uleb128 0x1a
	.4byte	.LVL2
	.4byte	0xab2
	.4byte	0x4b5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL3
	.4byte	0xabd
	.uleb128 0x1a
	.4byte	.LVL4
	.4byte	0xac8
	.4byte	0x4d8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL5
	.4byte	0xad4
	.uleb128 0x1a
	.4byte	.LVL6
	.4byte	0xadf
	.4byte	0x501
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL8
	.4byte	0xaea
	.4byte	0x519
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL9
	.4byte	0xaf5
	.4byte	0x52d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL10
	.4byte	0xac8
	.4byte	0x547
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL11
	.4byte	0xb01
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF124
	.byte	0x1
	.byte	0x47
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x76a
	.uleb128 0x1e
	.string	"cfg"
	.byte	0x1
	.byte	0x49
	.4byte	0x2be
	.uleb128 0x1f
	.4byte	.LASF112
	.4byte	0x77a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4236
	.uleb128 0x20
	.4byte	.LASF116
	.byte	0x1
	.byte	0x7b
	.4byte	0x1e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.4byte	.LASF117
	.byte	0x1
	.byte	0x7b
	.4byte	0x1e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	.LASF118
	.byte	0x1
	.byte	0x7d
	.4byte	0x77f
	.4byte	.LLST2
	.uleb128 0x21
	.4byte	.LASF119
	.byte	0x1
	.byte	0x7e
	.4byte	0x77f
	.byte	0xa0
	.uleb128 0x22
	.string	"res"
	.byte	0x1
	.byte	0x80
	.4byte	0x784
	.4byte	.LLST3
	.uleb128 0x23
	.4byte	0x3fe
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.byte	0x1
	.byte	0x85
	.4byte	0x5f7
	.uleb128 0x24
	.4byte	0x40b
	.uleb128 0x25
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x26
	.4byte	0x417
	.4byte	.LLST4
	.uleb128 0x27
	.4byte	0x423
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0x62b
	.uleb128 0x20
	.4byte	.LASF120
	.byte	0x1
	.byte	0x8a
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x19
	.4byte	.LASF120
	.byte	0x1
	.byte	0x8a
	.4byte	0x4c
	.4byte	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL12
	.4byte	0xb0c
	.uleb128 0x1c
	.4byte	.LVL13
	.4byte	0xb18
	.uleb128 0x1a
	.4byte	.LVL14
	.4byte	0xb23
	.4byte	0x66c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4236
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL15
	.4byte	0xb2e
	.4byte	0x67f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL16
	.4byte	0xb3a
	.uleb128 0x1c
	.4byte	.LVL17
	.4byte	0xb45
	.uleb128 0x1a
	.4byte	.LVL18
	.4byte	0xb50
	.4byte	0x6ab
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x640
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL19
	.4byte	0xb5b
	.uleb128 0x1a
	.4byte	.LVL20
	.4byte	0x462
	.4byte	0x6c7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL21
	.4byte	0xb3a
	.uleb128 0x1c
	.4byte	.LVL22
	.4byte	0xb45
	.uleb128 0x1a
	.4byte	.LVL23
	.4byte	0xb50
	.4byte	0x6f3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2328
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL24
	.4byte	0xb5b
	.uleb128 0x1a
	.4byte	.LVL25
	.4byte	0xb66
	.4byte	0x710
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL27
	.4byte	0xb72
	.4byte	0x72a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL29
	.4byte	0xb23
	.4byte	0x759
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x81
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4236
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.uleb128 0x29
	.4byte	.LVL32
	.4byte	0xb7e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x9e
	.4byte	0x77a
	.uleb128 0x14
	.4byte	0x90
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.4byte	0x76a
	.uleb128 0x6
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF121
	.uleb128 0x2a
	.4byte	.LASF122
	.byte	0x1
	.byte	0x8d
	.4byte	0x4c
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF123
	.byte	0x1
	.byte	0x92
	.4byte	0x4c
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.4byte	.LASF163
	.byte	0x1
	.byte	0x97
	.4byte	0x4c
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d8
	.uleb128 0x1c
	.4byte	.LVL36
	.4byte	0xb18
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF125
	.byte	0x1
	.byte	0x9c
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7fb
	.uleb128 0x18
	.4byte	.LASF127
	.byte	0x1
	.byte	0x9c
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF164
	.byte	0x1
	.byte	0xd3
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x820
	.uleb128 0x29
	.4byte	.LVL38
	.4byte	0x462
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF128
	.byte	0x1
	.byte	0xde
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa75
	.uleb128 0x19
	.4byte	.LASF129
	.byte	0x1
	.byte	0xe0
	.4byte	0x7e
	.4byte	.LLST6
	.uleb128 0x19
	.4byte	.LASF130
	.byte	0x1
	.byte	0xe0
	.4byte	0x7e
	.4byte	.LLST7
	.uleb128 0x19
	.4byte	.LASF131
	.byte	0x1
	.byte	0xe0
	.4byte	0x7e
	.4byte	.LLST8
	.uleb128 0x2d
	.4byte	.LASF132
	.byte	0x1
	.byte	0xe5
	.4byte	0xa75
	.uleb128 0x23
	.4byte	0x446
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.byte	0xf6
	.4byte	0x89d
	.uleb128 0x2e
	.4byte	0x456
	.4byte	.LLST9
	.uleb128 0x29
	.4byte	.LVL43
	.4byte	0xb8a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff000c0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	0x446
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.byte	0xf7
	.4byte	0x8cd
	.uleb128 0x2e
	.4byte	0x456
	.4byte	.LLST10
	.uleb128 0x29
	.4byte	.LVL45
	.4byte	0xb8a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff0001c
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	0x446
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x1
	.byte	0xf8
	.4byte	0x8fd
	.uleb128 0x2e
	.4byte	0x456
	.4byte	.LLST11
	.uleb128 0x29
	.4byte	.LVL47
	.4byte	0xb8a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff000cc
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	0x446
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.2byte	0x131
	.4byte	0x92b
	.uleb128 0x30
	.4byte	0x456
	.4byte	0x3ff4f0ac
	.uleb128 0x29
	.4byte	.LVL52
	.4byte	0xb8a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	0x446
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x1
	.2byte	0x132
	.4byte	0x959
	.uleb128 0x30
	.4byte	0x456
	.4byte	0x3ff6d0ac
	.uleb128 0x29
	.4byte	.LVL54
	.4byte	0xb8a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	0x446
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.2byte	0x135
	.4byte	0x987
	.uleb128 0x30
	.4byte	0x456
	.4byte	0x3ff000c0
	.uleb128 0x29
	.4byte	.LVL56
	.4byte	0xb8a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	0x446
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.byte	0x1
	.2byte	0x136
	.4byte	0x9b5
	.uleb128 0x30
	.4byte	0x456
	.4byte	0x3ff000c4
	.uleb128 0x29
	.4byte	.LVL58
	.4byte	0xb8a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	0x446
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.byte	0x1
	.2byte	0x139
	.4byte	0x9e3
	.uleb128 0x30
	.4byte	0x456
	.4byte	0x3ff0001c
	.uleb128 0x29
	.4byte	.LVL60
	.4byte	0xb8a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	0x446
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.byte	0x1
	.2byte	0x13a
	.4byte	0xa11
	.uleb128 0x30
	.4byte	0x456
	.4byte	0x3ff00020
	.uleb128 0x29
	.4byte	.LVL63
	.4byte	0xb8a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	0x446
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.byte	0x1
	.2byte	0x13d
	.4byte	0xa3f
	.uleb128 0x30
	.4byte	0x456
	.4byte	0x3ff000cc
	.uleb128 0x29
	.4byte	.LVL66
	.4byte	0xb8a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL40
	.4byte	0xb95
	.4byte	0xa52
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL41
	.4byte	0xb95
	.4byte	0xa65
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x29
	.4byte	.LVL67
	.4byte	0xba0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4a
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x14e
	.4byte	0xa85
	.uleb128 0x14
	.4byte	0x90
	.byte	0x1
	.byte	0
	.uleb128 0x31
	.string	"TAG"
	.byte	0x1
	.byte	0x44
	.4byte	0xa97
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xa5
	.uleb128 0x32
	.4byte	.LASF133
	.byte	0x1
	.byte	0x3f
	.4byte	0x7e
	.uleb128 0x32
	.4byte	.LASF134
	.byte	0x1
	.byte	0x41
	.4byte	0x7e
	.uleb128 0x33
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x8
	.byte	0xc2
	.uleb128 0x33
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x8
	.byte	0xc7
	.uleb128 0x34
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x8
	.2byte	0x1e4
	.uleb128 0x33
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0x6
	.byte	0x57
	.uleb128 0x33
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0xb
	.byte	0xde
	.uleb128 0x33
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x8
	.byte	0xeb
	.uleb128 0x34
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x8
	.2byte	0x110
	.uleb128 0x33
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0xc
	.byte	0x2a
	.uleb128 0x34
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0x8
	.2byte	0x2b0
	.uleb128 0x33
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x8
	.byte	0xb2
	.uleb128 0x33
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xd
	.byte	0x29
	.uleb128 0x34
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0x8
	.2byte	0x12a
	.uleb128 0x33
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x9
	.byte	0x72
	.uleb128 0x33
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x9
	.byte	0x8c
	.uleb128 0x33
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x9
	.byte	0x98
	.uleb128 0x33
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x9
	.byte	0x6d
	.uleb128 0x34
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0x8
	.2byte	0x1b5
	.uleb128 0x34
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0x8
	.2byte	0x18b
	.uleb128 0x34
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0x8
	.2byte	0x199
	.uleb128 0x33
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0xe
	.byte	0x1e
	.uleb128 0x33
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0x7
	.byte	0x9c
	.uleb128 0x33
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0xf
	.byte	0x25
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL26
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL30
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL44
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL50
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL39
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL42
	.4byte	.LVL49
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000c0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL44
	.4byte	.LVL49
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0001c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000cc
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF98:
	.string	"PERIPH_WIFI_MODULE"
.LASF78:
	.string	"PERIPH_I2S1_MODULE"
.LASF150:
	.string	"rtc_wdt_protect_on"
.LASF157:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF53:
	.string	"RTC_SLOW_FREQ_8MD256"
.LASF33:
	.string	"RTCWDT_CPU_RESET"
.LASF151:
	.string	"rtc_clk_cpu_freq_get_config"
.LASF75:
	.string	"PERIPH_I2C0_MODULE"
.LASF22:
	.string	"POWERON_RESET"
.LASF51:
	.string	"RTC_SLOW_FREQ_RTC"
.LASF88:
	.string	"PERIPH_PCNT_MODULE"
.LASF145:
	.string	"__assert_func"
.LASF69:
	.string	"RTC_WDT_STAGE2"
.LASF6:
	.string	"unsigned int"
.LASF46:
	.string	"rtc_cpu_freq_src_t"
.LASF131:
	.string	"wifi_bt_sdio_clk"
.LASF45:
	.string	"RTC_CPU_FREQ_SRC_APLL"
.LASF61:
	.string	"xtal_wait"
.LASF95:
	.string	"PERIPH_CAN_MODULE"
.LASF102:
	.string	"PERIPH_BT_LC_MODULE"
.LASF138:
	.string	"esp_log_timestamp"
.LASF99:
	.string	"PERIPH_BT_MODULE"
.LASF120:
	.string	"__ccount"
.LASF105:
	.string	"PERIPH_RSA_MODULE"
.LASF101:
	.string	"PERIPH_BT_BASEBAND_MODULE"
.LASF80:
	.string	"PERIPH_TIMG1_MODULE"
.LASF63:
	.string	"clkctl_init"
.LASF74:
	.string	"PERIPH_UART2_MODULE"
.LASF83:
	.string	"PERIPH_PWM2_MODULE"
.LASF104:
	.string	"PERIPH_SHA_MODULE"
.LASF10:
	.string	"uint32_t"
.LASF160:
	.string	"uart_tx_wait_idle"
.LASF136:
	.string	"rtc_clk_32k_enable_external"
.LASF42:
	.string	"RTC_CPU_FREQ_SRC_XTAL"
.LASF71:
	.string	"PERIPH_LEDC_MODULE"
.LASF8:
	.string	"long long unsigned int"
.LASF25:
	.string	"DEEPSLEEP_RESET"
.LASF125:
	.string	"ets_update_cpu_frequency"
.LASF38:
	.string	"RTC_XTAL_FREQ_AUTO"
.LASF147:
	.string	"rtc_wdt_protect_off"
.LASF155:
	.string	"rtc_get_reset_reason"
.LASF144:
	.string	"rtc_clk_xtal_freq_get"
.LASF135:
	.string	"rtc_clk_32k_enable"
.LASF17:
	.string	"ESP_LOG_WARN"
.LASF163:
	.string	"esp_clk_xtal_freq"
.LASF28:
	.string	"TG1WDT_SYS_RESET"
.LASF137:
	.string	"rtc_clk_cal"
.LASF146:
	.string	"rtc_clk_fast_freq_set"
.LASF87:
	.string	"PERIPH_RMT_MODULE"
.LASF27:
	.string	"TG0WDT_SYS_RESET"
.LASF37:
	.string	"RESET_REASON"
.LASF41:
	.string	"RTC_XTAL_FREQ_24M"
.LASF121:
	.string	"_Bool"
.LASF23:
	.string	"SW_RESET"
.LASF132:
	.string	"rst_reas"
.LASF67:
	.string	"RTC_WDT_STAGE0"
.LASF68:
	.string	"RTC_WDT_STAGE1"
.LASF26:
	.string	"SDIO_RESET"
.LASF70:
	.string	"RTC_WDT_STAGE3"
.LASF108:
	.string	"SLOW_CLK_8MD256"
.LASF15:
	.string	"ESP_LOG_NONE"
.LASF34:
	.string	"EXT_CPU_RESET"
.LASF134:
	.string	"g_ticks_per_us_app"
.LASF89:
	.string	"PERIPH_SPI_MODULE"
.LASF91:
	.string	"PERIPH_VSPI_MODULE"
.LASF126:
	.string	"slow_clk"
.LASF96:
	.string	"PERIPH_EMAC_MODULE"
.LASF154:
	.string	"esp_dport_access_reg_read"
.LASF14:
	.string	"char"
.LASF55:
	.string	"RTC_FAST_FREQ_XTALD4"
.LASF76:
	.string	"PERIPH_I2C1_MODULE"
.LASF72:
	.string	"PERIPH_UART0_MODULE"
.LASF81:
	.string	"PERIPH_PWM0_MODULE"
.LASF48:
	.string	"source_freq_mhz"
.LASF44:
	.string	"RTC_CPU_FREQ_SRC_8M"
.LASF66:
	.string	"rtc_config_t"
.LASF85:
	.string	"PERIPH_UHCI0_MODULE"
.LASF9:
	.string	"uint8_t"
.LASF111:
	.string	"status"
.LASF133:
	.string	"g_ticks_per_us_pro"
.LASF40:
	.string	"RTC_XTAL_FREQ_26M"
.LASF127:
	.string	"ticks_per_us"
.LASF7:
	.string	"long long int"
.LASF35:
	.string	"RTCWDT_BROWN_OUT_RESET"
.LASF50:
	.string	"rtc_cpu_freq_config_t"
.LASF142:
	.string	"esp_clk_slowclk_cal_set"
.LASF31:
	.string	"TGWDT_CPU_RESET"
.LASF60:
	.string	"ck8m_wait"
.LASF124:
	.string	"esp_clk_init"
.LASF94:
	.string	"PERIPH_SDIO_SLAVE_MODULE"
.LASF57:
	.string	"RTC_CAL_RTC_MUX"
.LASF162:
	.string	"select_rtc_slow_clk"
.LASF148:
	.string	"rtc_wdt_feed"
.LASF130:
	.string	"hwcrypto_perip_clk"
.LASF114:
	.string	"rtc_slow_freq"
.LASF84:
	.string	"PERIPH_PWM3_MODULE"
.LASF129:
	.string	"common_perip_clk"
.LASF18:
	.string	"ESP_LOG_INFO"
.LASF128:
	.string	"esp_perip_clk_init"
.LASF143:
	.string	"rtc_init"
.LASF56:
	.string	"RTC_FAST_FREQ_8M"
.LASF113:
	.string	"uart_no"
.LASF158:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/clk.c"
.LASF117:
	.string	"new_config"
.LASF77:
	.string	"PERIPH_I2S0_MODULE"
.LASF140:
	.string	"rtc_clk_8m_enable"
.LASF123:
	.string	"esp_clk_apb_freq"
.LASF110:
	.string	"slow_clk_sel_t"
.LASF58:
	.string	"RTC_CAL_8MD256"
.LASF2:
	.string	"short int"
.LASF103:
	.string	"PERIPH_AES_MODULE"
.LASF11:
	.string	"long int"
.LASF54:
	.string	"rtc_slow_freq_t"
.LASF139:
	.string	"ets_printf"
.LASF159:
	.string	"/home/raphael/rtone/lcd/build/esp32"
.LASF107:
	.string	"SLOW_CLK_32K_XTAL"
.LASF90:
	.string	"PERIPH_HSPI_MODULE"
.LASF32:
	.string	"SW_CPU_RESET"
.LASF156:
	.string	"periph_module_enable"
.LASF92:
	.string	"PERIPH_SPI_DMA_MODULE"
.LASF4:
	.string	"__uint8_t"
.LASF47:
	.string	"source"
.LASF119:
	.string	"new_freq_mhz"
.LASF109:
	.string	"SLOW_CLK_32K_EXT_OSC"
.LASF29:
	.string	"RTCWDT_SYS_RESET"
.LASF79:
	.string	"PERIPH_TIMG0_MODULE"
.LASF36:
	.string	"RTCWDT_RTC_RESET"
.LASF12:
	.string	"sizetype"
.LASF118:
	.string	"old_freq_mhz"
.LASF13:
	.string	"long unsigned int"
.LASF21:
	.string	"NO_MEAN"
.LASF20:
	.string	"ESP_LOG_VERBOSE"
.LASF73:
	.string	"PERIPH_UART1_MODULE"
.LASF62:
	.string	"pll_wait"
.LASF115:
	.string	"cal_val"
.LASF82:
	.string	"PERIPH_PWM1_MODULE"
.LASF86:
	.string	"PERIPH_UHCI1_MODULE"
.LASF1:
	.string	"unsigned char"
.LASF100:
	.string	"PERIPH_WIFI_BT_COMMON_MODULE"
.LASF5:
	.string	"__uint32_t"
.LASF64:
	.string	"pwrctl_init"
.LASF24:
	.string	"OWDT_RESET"
.LASF49:
	.string	"freq_mhz"
.LASF65:
	.string	"rtc_dboost_fpd"
.LASF39:
	.string	"RTC_XTAL_FREQ_40M"
.LASF153:
	.string	"rtc_clk_cpu_freq_set_config"
.LASF59:
	.string	"RTC_CAL_32K_XTAL"
.LASF161:
	.string	"DPORT_READ_PERI_REG"
.LASF152:
	.string	"rtc_clk_cpu_freq_mhz_to_config"
.LASF19:
	.string	"ESP_LOG_DEBUG"
.LASF122:
	.string	"esp_clk_cpu_freq"
.LASF106:
	.string	"SLOW_CLK_150K"
.LASF43:
	.string	"RTC_CPU_FREQ_SRC_PLL"
.LASF30:
	.string	"INTRUSION_RESET"
.LASF93:
	.string	"PERIPH_SDMMC_MODULE"
.LASF0:
	.string	"signed char"
.LASF3:
	.string	"short unsigned int"
.LASF112:
	.string	"__func__"
.LASF52:
	.string	"RTC_SLOW_FREQ_32K_XTAL"
.LASF97:
	.string	"PERIPH_RNG_MODULE"
.LASF116:
	.string	"old_config"
.LASF141:
	.string	"rtc_clk_slow_freq_set"
.LASF164:
	.string	"rtc_clk_select_rtc_slow_clk"
.LASF16:
	.string	"ESP_LOG_ERROR"
.LASF149:
	.string	"rtc_wdt_set_time"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
