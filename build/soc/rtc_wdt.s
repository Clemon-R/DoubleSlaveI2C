	.file	"rtc_wdt.c"
	.text
.Ltext0:
	.section	.text.rtc_wdt_get_protect_status,"ax",@progbits
	.literal_position
	.literal .LC0, 1072988324
	.literal .LC1, -1356348065
	.align	4
	.global	rtc_wdt_get_protect_status
	.type	rtc_wdt_get_protect_status, @function
rtc_wdt_get_protect_status:
.LFB0:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c"
	.loc 1 20 0
	entry	sp, 32
.LCFI0:
.LBB2:
	.loc 1 21 0
	l32r	a2, .LC0
	memw
	l32i.n	a8, a2, 0
.LBE2:
	l32r	a2, .LC1
	add.n	a8, a8, a2
	movi.n	a2, 0
	movi.n	a9, 1
	movnez	a2, a9, a8
	.loc 1 22 0
	retw.n
.LFE0:
	.size	rtc_wdt_get_protect_status, .-rtc_wdt_get_protect_status
	.section	.text.rtc_wdt_protect_off,"ax",@progbits
	.literal_position
	.literal .LC2, 1072988324
	.literal .LC3, 1356348065
	.align	4
	.global	rtc_wdt_protect_off
	.type	rtc_wdt_protect_off, @function
rtc_wdt_protect_off:
.LFB1:
	.loc 1 25 0
	entry	sp, 32
.LCFI1:
.LBB3:
	.loc 1 26 0
	l32r	a9, .LC3
	l32r	a8, .LC2
	memw
	s32i.n	a9, a8, 0
	retw.n
.LBE3:
.LFE1:
	.size	rtc_wdt_protect_off, .-rtc_wdt_protect_off
	.section	.text.rtc_wdt_protect_on,"ax",@progbits
	.literal_position
	.literal .LC4, 1072988324
	.align	4
	.global	rtc_wdt_protect_on
	.type	rtc_wdt_protect_on, @function
rtc_wdt_protect_on:
.LFB2:
	.loc 1 30 0
	entry	sp, 32
.LCFI2:
.LBB4:
	.loc 1 31 0
	movi.n	a9, 0
	l32r	a8, .LC4
	memw
	s32i.n	a9, a8, 0
	retw.n
.LBE4:
.LFE2:
	.size	rtc_wdt_protect_on, .-rtc_wdt_protect_on
	.section	.text.rtc_wdt_enable,"ax",@progbits
	.literal_position
	.literal .LC5, 1072988320
	.literal .LC6, -2147483648
	.literal .LC7, 1072988300
	.literal .LC8, -2147483520
	.align	4
	.global	rtc_wdt_enable
	.type	rtc_wdt_enable, @function
rtc_wdt_enable:
.LFB3:
	.loc 1 36 0
	entry	sp, 32
.LCFI3:
.LBB5:
	.loc 1 37 0
	l32r	a9, .LC5
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC6
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE5:
.LBB6:
.LBB7:
	.loc 1 38 0
	l32r	a9, .LC7
	memw
	l32i.n	a10, a9, 0
.LBE7:
	l32r	a8, .LC8
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LBE6:
.LFE3:
	.size	rtc_wdt_enable, .-rtc_wdt_enable
	.section	.text.rtc_wdt_flashboot_mode_enable,"ax",@progbits
	.literal_position
	.literal .LC9, 1072988300
	.align	4
	.global	rtc_wdt_flashboot_mode_enable
	.type	rtc_wdt_flashboot_mode_enable, @function
rtc_wdt_flashboot_mode_enable:
.LFB4:
	.loc 1 42 0
	entry	sp, 32
.LCFI4:
.LBB8:
	.loc 1 43 0
	l32r	a9, .LC9
	memw
	l32i.n	a10, a9, 0
	movi	a8, 0x400
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LBE8:
.LFE4:
	.size	rtc_wdt_flashboot_mode_enable, .-rtc_wdt_flashboot_mode_enable
	.section	.text.rtc_wdt_feed,"ax",@progbits
	.literal_position
	.literal .LC10, 1072988320
	.literal .LC11, -2147483648
	.align	4
	.global	rtc_wdt_feed
	.type	rtc_wdt_feed, @function
rtc_wdt_feed:
.LFB6:
	.loc 1 65 0
	entry	sp, 32
.LCFI5:
	.loc 1 66 0
	call8	rtc_wdt_get_protect_status
.LVL0:
	mov.n	a2, a10
.LVL1:
	.loc 1 67 0
	beqz.n	a10, .L7
	.loc 1 68 0
	call8	rtc_wdt_protect_off
.LVL2:
.L7:
.LBB9:
	.loc 1 70 0
	l32r	a9, .LC10
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC11
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE9:
	.loc 1 71 0
	beqz.n	a2, .L6
	.loc 1 72 0
	call8	rtc_wdt_protect_on
.LVL3:
.L6:
	retw.n
.LFE6:
	.size	rtc_wdt_feed, .-rtc_wdt_feed
	.global	__udivdi3
	.section	.text.rtc_wdt_set_time,"ax",@progbits
	.literal_position
	.literal .LC12, 1000, 0
	.literal .LC13, 1072988304
	.literal .LC14, 1072988308
	.literal .LC15, 1072988312
	.literal .LC16, 1072988316
	.align	4
	.global	rtc_wdt_set_time
	.type	rtc_wdt_set_time, @function
rtc_wdt_set_time:
.LFB7:
	.loc 1 77 0
.LVL4:
	entry	sp, 32
.LCFI6:
	.loc 1 78 0
	bgeui	a2, 4, .L14
	.loc 1 81 0
	call8	rtc_clk_slow_freq_get_hz
.LVL5:
	muluh	a11, a3, a10
	l32r	a12, .LC12
	l32r	a13, .LC12+4
	mull	a10, a3, a10
	call8	__udivdi3
.LVL6:
	.loc 1 82 0
	bnez.n	a2, .L11
.LBB10:
	.loc 1 83 0
	l32r	a2, .LC13
.LVL7:
	memw
	s32i.n	a10, a2, 0
.LBE10:
	.loc 1 92 0
	movi.n	a2, 0
	retw.n
.LVL8:
.L11:
	.loc 1 84 0
	bnei	a2, 1, .L12
.LBB11:
	.loc 1 85 0
	l32r	a2, .LC14
.LVL9:
	memw
	s32i.n	a10, a2, 0
.LBE11:
	.loc 1 92 0
	movi.n	a2, 0
	retw.n
.LVL10:
.L12:
	.loc 1 86 0
	bnei	a2, 2, .L13
.LBB12:
	.loc 1 87 0
	l32r	a2, .LC15
.LVL11:
	memw
	s32i.n	a10, a2, 0
.LBE12:
	.loc 1 92 0
	movi.n	a2, 0
	retw.n
.LVL12:
.L13:
.LBB13:
	.loc 1 89 0
	l32r	a2, .LC16
.LVL13:
	memw
	s32i.n	a10, a2, 0
.LBE13:
	.loc 1 92 0
	movi.n	a2, 0
	retw.n
.LVL14:
.L14:
	.loc 1 79 0
	movi	a2, 0x102
.LVL15:
	.loc 1 93 0
	retw.n
.LFE7:
	.size	rtc_wdt_set_time, .-rtc_wdt_set_time
	.section	.text.rtc_wdt_get_timeout,"ax",@progbits
	.literal_position
	.literal .LC17, 1072988304
	.literal .LC18, 1072988308
	.literal .LC19, 1072988312
	.literal .LC20, 1072988316
	.align	4
	.global	rtc_wdt_get_timeout
	.type	rtc_wdt_get_timeout, @function
rtc_wdt_get_timeout:
.LFB8:
	.loc 1 96 0
.LVL16:
	entry	sp, 32
.LCFI7:
	.loc 1 97 0
	bgeui	a2, 4, .L21
	.loc 1 101 0
	bnez.n	a2, .L17
.LBB14:
	.loc 1 102 0
	l32r	a2, .LC17
.LVL17:
	memw
	l32i.n	a4, a2, 0
.LVL18:
.LBE14:
	j	.L18
.LVL19:
.L17:
	.loc 1 103 0
	bnei	a2, 1, .L19
.LBB15:
	.loc 1 104 0
	l32r	a2, .LC18
.LVL20:
	memw
	l32i.n	a4, a2, 0
.LVL21:
.LBE15:
	j	.L18
.LVL22:
.L19:
	.loc 1 105 0
	bnei	a2, 2, .L20
.LBB16:
	.loc 1 106 0
	l32r	a2, .LC19
.LVL23:
	memw
	l32i.n	a4, a2, 0
.LVL24:
.LBE16:
	j	.L18
.LVL25:
.L20:
.LBB17:
	.loc 1 108 0
	l32r	a2, .LC20
.LVL26:
	memw
	l32i.n	a4, a2, 0
.LVL27:
.L18:
.LBE17:
	.loc 1 111 0
	slli	a2, a4, 5
	sub	a2, a2, a4
	addx4	a2, a2, a4
	slli	a4, a2, 3
.LVL28:
	call8	rtc_clk_slow_freq_get_hz
.LVL29:
	quou	a10, a4, a10
	s32i.n	a10, a3, 0
	.loc 1 113 0
	movi.n	a2, 0
	retw.n
.LVL30:
.L21:
	.loc 1 98 0
	movi	a2, 0x102
.LVL31:
	.loc 1 114 0
	retw.n
.LFE8:
	.size	rtc_wdt_get_timeout, .-rtc_wdt_get_timeout
	.section	.text.rtc_wdt_set_stage,"ax",@progbits
	.literal_position
	.literal .LC21, 1072988300
	.literal .LC22, -1879048193
	.literal .LC23, -234881025
	.literal .LC24, -29360129
	.literal .LC25, -3670017
	.align	4
	.global	rtc_wdt_set_stage
	.type	rtc_wdt_set_stage, @function
rtc_wdt_set_stage:
.LFB9:
	.loc 1 117 0
.LVL32:
	entry	sp, 32
.LCFI8:
	.loc 1 118 0
	movi.n	a8, 1
	bgeui	a2, 4, .L23
	movi.n	a8, 0
.L23:
	extui	a9, a8, 0, 8
	movi.n	a8, 1
	bgeui	a3, 5, .L24
	movi.n	a8, 0
.L24:
	extui	a8, a8, 0, 8
	or	a8, a9, a8
	bnez.n	a8, .L29
	.loc 1 121 0
	bnez.n	a2, .L26
.LBB18:
.LBB19:
	.loc 1 122 0
	l32r	a8, .LC21
	memw
	l32i.n	a9, a8, 0
.LBE19:
	l32r	a2, .LC22
.LVL33:
	and	a2, a9, a2
	extui	a3, a3, 0, 3
.LVL34:
	slli	a3, a3, 28
	or	a3, a2, a3
	memw
	s32i.n	a3, a8, 0
.LBE18:
	.loc 1 131 0
	movi.n	a2, 0
	retw.n
.LVL35:
.L26:
	.loc 1 123 0
	bnei	a2, 1, .L27
.LBB20:
.LBB21:
	.loc 1 124 0
	l32r	a8, .LC21
	memw
	l32i.n	a9, a8, 0
.LBE21:
	l32r	a2, .LC23
.LVL36:
	and	a2, a9, a2
	extui	a3, a3, 0, 3
.LVL37:
	slli	a3, a3, 25
	or	a2, a2, a3
	memw
	s32i.n	a2, a8, 0
.LBE20:
	.loc 1 131 0
	movi.n	a2, 0
	retw.n
.LVL38:
.L27:
	.loc 1 125 0
	bnei	a2, 2, .L28
.LBB22:
.LBB23:
	.loc 1 126 0
	l32r	a8, .LC21
	memw
	l32i.n	a9, a8, 0
.LBE23:
	l32r	a2, .LC24
.LVL39:
	and	a2, a9, a2
	extui	a3, a3, 0, 3
.LVL40:
	slli	a3, a3, 22
	or	a2, a2, a3
	memw
	s32i.n	a2, a8, 0
.LBE22:
	.loc 1 131 0
	movi.n	a2, 0
	retw.n
.LVL41:
.L28:
.LBB24:
.LBB25:
	.loc 1 128 0
	l32r	a8, .LC21
	memw
	l32i.n	a9, a8, 0
.LBE25:
	l32r	a2, .LC25
.LVL42:
	and	a2, a9, a2
	extui	a3, a3, 0, 3
.LVL43:
	slli	a3, a3, 19
	or	a3, a2, a3
	memw
	s32i.n	a3, a8, 0
.LBE24:
	.loc 1 131 0
	movi.n	a2, 0
	retw.n
.LVL44:
.L29:
	.loc 1 119 0
	movi	a2, 0x102
.LVL45:
	.loc 1 132 0
	retw.n
.LFE9:
	.size	rtc_wdt_set_stage, .-rtc_wdt_set_stage
	.section	.text.rtc_wdt_disable,"ax",@progbits
	.literal_position
	.literal .LC26, 1072988320
	.literal .LC27, -2147483648
	.literal .LC28, 1072988300
	.literal .LC29, 2147483647
	.align	4
	.global	rtc_wdt_disable
	.type	rtc_wdt_disable, @function
rtc_wdt_disable:
.LFB5:
	.loc 1 47 0
	entry	sp, 32
.LCFI9:
	.loc 1 48 0
	call8	rtc_wdt_get_protect_status
.LVL46:
	mov.n	a2, a10
.LVL47:
	.loc 1 49 0
	beqz.n	a10, .L31
	.loc 1 50 0
	call8	rtc_wdt_protect_off
.LVL48:
.L31:
.LBB26:
	.loc 1 52 0
	l32r	a9, .LC26
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC27
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE26:
	.loc 1 53 0
	movi.n	a11, 0
	mov.n	a10, a11
	call8	rtc_wdt_set_stage
.LVL49:
	.loc 1 54 0
	movi.n	a11, 0
	movi.n	a10, 1
	call8	rtc_wdt_set_stage
.LVL50:
	.loc 1 55 0
	movi.n	a11, 0
	movi.n	a10, 2
	call8	rtc_wdt_set_stage
.LVL51:
	.loc 1 56 0
	movi.n	a11, 0
	movi.n	a10, 3
	call8	rtc_wdt_set_stage
.LVL52:
.LBB27:
	.loc 1 57 0
	l32r	a8, .LC28
	memw
	l32i.n	a10, a8, 0
	movi	a9, -0x401
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE27:
.LBB28:
	.loc 1 58 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC29
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE28:
	.loc 1 59 0
	beqz.n	a2, .L30
	.loc 1 60 0
	call8	rtc_wdt_protect_on
.LVL53:
.L30:
	retw.n
.LFE5:
	.size	rtc_wdt_disable, .-rtc_wdt_disable
	.section	.text.rtc_wdt_set_length_of_reset_signal,"ax",@progbits
	.literal_position
	.literal .LC30, 1072988300
	.literal .LC31, -14337
	.literal .LC32, -114689
	.align	4
	.global	rtc_wdt_set_length_of_reset_signal
	.type	rtc_wdt_set_length_of_reset_signal, @function
rtc_wdt_set_length_of_reset_signal:
.LFB10:
	.loc 1 135 0
.LVL54:
	entry	sp, 32
.LCFI10:
	.loc 1 136 0
	movi.n	a8, 1
	bgeui	a2, 2, .L34
	movi.n	a8, 0
.L34:
	extui	a9, a8, 0, 8
	movi.n	a8, 1
	bgeui	a3, 8, .L35
	movi.n	a8, 0
.L35:
	extui	a8, a8, 0, 8
	or	a8, a9, a8
	bnez.n	a8, .L38
	.loc 1 139 0
	bnez.n	a2, .L37
.LBB29:
.LBB30:
	.loc 1 140 0
	l32r	a8, .LC30
	memw
	l32i.n	a9, a8, 0
.LBE30:
	l32r	a2, .LC31
.LVL55:
	and	a2, a9, a2
	extui	a3, a3, 0, 3
.LVL56:
	slli	a3, a3, 11
	or	a3, a2, a3
	memw
	s32i.n	a3, a8, 0
.LBE29:
	.loc 1 145 0
	movi.n	a2, 0
	retw.n
.LVL57:
.L37:
.LBB31:
.LBB32:
	.loc 1 142 0
	l32r	a8, .LC30
	memw
	l32i.n	a9, a8, 0
.LBE32:
	l32r	a2, .LC32
.LVL58:
	and	a2, a9, a2
	extui	a3, a3, 0, 3
.LVL59:
	slli	a3, a3, 14
	or	a3, a2, a3
	memw
	s32i.n	a3, a8, 0
.LBE31:
	.loc 1 145 0
	movi.n	a2, 0
	retw.n
.LVL60:
.L38:
	.loc 1 137 0
	movi	a2, 0x102
.LVL61:
	.loc 1 146 0
	retw.n
.LFE10:
	.size	rtc_wdt_set_length_of_reset_signal, .-rtc_wdt_set_length_of_reset_signal
	.section	.text.rtc_wdt_is_on,"ax",@progbits
	.literal_position
	.literal .LC33, 1072988300
	.align	4
	.global	rtc_wdt_is_on
	.type	rtc_wdt_is_on, @function
rtc_wdt_is_on:
.LFB11:
	.loc 1 149 0
	entry	sp, 32
.LCFI11:
.LBB33:
	.loc 1 150 0
	l32r	a8, .LC33
	memw
	l32i.n	a8, a8, 0
.LBE33:
	bltz	a8, .L41
.LBB34:
	.loc 1 150 0 is_stmt 0 discriminator 2
	l32r	a2, .LC33
	memw
	l32i.n	a2, a2, 0
.LBE34:
	bbci	a2, 10, .L42
	.loc 1 150 0
	movi.n	a2, 1
	retw.n
.L41:
	movi.n	a2, 1
	retw.n
.L42:
	movi.n	a2, 0
	.loc 1 151 0 is_stmt 1
	retw.n
.LFE11:
	.size	rtc_wdt_is_on, .-rtc_wdt_is_on
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
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI5-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI6-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI7-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI8-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI9-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI10-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI11-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/rtc_wdt.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x57a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0xc
	.4byte	.LASF64
	.4byte	.LASF65
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
	.byte	0x2
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
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
	.byte	0x2
	.byte	0x1e
	.4byte	0x77
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
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
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x18
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x40
	.4byte	0xeb
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x45
	.4byte	0xc6
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x48
	.4byte	0x121
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x5
	.byte	0x4e
	.4byte	0xf6
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x51
	.4byte	0x145
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x5
	.byte	0x54
	.4byte	0x12c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x57
	.4byte	0x18d
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x5
	.byte	0x60
	.4byte	0x150
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x1
	.byte	0x13
	.4byte	0x1bb
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bb
	.uleb128 0x8
	.4byte	.LASF42
	.4byte	0x1d2
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF41
	.uleb128 0x9
	.4byte	0xb4
	.4byte	0x1d2
	.uleb128 0xa
	.4byte	0xa6
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.4byte	0x1c2
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x1
	.byte	0x18
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f6
	.uleb128 0x8
	.4byte	.LASF42
	.4byte	0x206
	.byte	0
	.uleb128 0x9
	.4byte	0xb4
	.4byte	0x206
	.uleb128 0xa
	.4byte	0xa6
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.4byte	0x1f6
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x1
	.byte	0x1d
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22a
	.uleb128 0x8
	.4byte	.LASF42
	.4byte	0x23a
	.byte	0
	.uleb128 0x9
	.4byte	0xb4
	.4byte	0x23a
	.uleb128 0xa
	.4byte	0xa6
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.4byte	0x22a
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x1
	.byte	0x23
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25e
	.uleb128 0x8
	.4byte	.LASF42
	.4byte	0x26e
	.byte	0
	.uleb128 0x9
	.4byte	0xb4
	.4byte	0x26e
	.uleb128 0xa
	.4byte	0xa6
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.4byte	0x25e
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x1
	.byte	0x29
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x292
	.uleb128 0x8
	.4byte	.LASF42
	.4byte	0x2a2
	.byte	0
	.uleb128 0x9
	.4byte	0xb4
	.4byte	0x2a2
	.uleb128 0xa
	.4byte	0xa6
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.4byte	0x292
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x1
	.byte	0x40
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ee
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x1
	.byte	0x42
	.4byte	0x1bb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x8
	.4byte	.LASF42
	.4byte	0x2fe
	.uleb128 0xe
	.4byte	.LVL0
	.4byte	0x198
	.uleb128 0xe
	.4byte	.LVL2
	.4byte	0x1d7
	.uleb128 0xe
	.4byte	.LVL3
	.4byte	0x20b
	.byte	0
	.uleb128 0x9
	.4byte	0xb4
	.4byte	0x2fe
	.uleb128 0xa
	.4byte	0xa6
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	0x2ee
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x1
	.byte	0x4c
	.4byte	0xbb
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x35a
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x1
	.byte	0x4c
	.4byte	0xeb
	.4byte	.LLST0
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x1
	.byte	0x4c
	.4byte	0x5e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x1
	.byte	0x51
	.4byte	0x89
	.4byte	.LLST1
	.uleb128 0x8
	.4byte	.LASF42
	.4byte	0x36a
	.uleb128 0xe
	.4byte	.LVL5
	.4byte	0x571
	.byte	0
	.uleb128 0x9
	.4byte	0xb4
	.4byte	0x36a
	.uleb128 0xa
	.4byte	0xa6
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	0x35a
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x1
	.byte	0x5f
	.4byte	0xbb
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c6
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x1
	.byte	0x5f
	.4byte	0xeb
	.4byte	.LLST2
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x1
	.byte	0x5f
	.4byte	0x3c6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0x1
	.byte	0x64
	.4byte	0x89
	.4byte	.LLST3
	.uleb128 0x8
	.4byte	.LASF42
	.4byte	0x3cc
	.uleb128 0xe
	.4byte	.LVL29
	.4byte	0x571
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x5e
	.uleb128 0xb
	.4byte	0x1f6
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0x1
	.byte	0x74
	.4byte	0xbb
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x412
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x1
	.byte	0x74
	.4byte	0xeb
	.4byte	.LLST4
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x1
	.byte	0x74
	.4byte	0x121
	.4byte	.LLST5
	.uleb128 0x8
	.4byte	.LASF42
	.4byte	0x422
	.byte	0
	.uleb128 0x9
	.4byte	0xb4
	.4byte	0x422
	.uleb128 0xa
	.4byte	0xa6
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.4byte	0x412
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x1
	.byte	0x2e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ce
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x1
	.byte	0x30
	.4byte	0x1bb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x8
	.4byte	.LASF42
	.4byte	0x4de
	.uleb128 0xe
	.4byte	.LVL46
	.4byte	0x198
	.uleb128 0xe
	.4byte	.LVL48
	.4byte	0x1d7
	.uleb128 0x15
	.4byte	.LVL49
	.4byte	0x3d1
	.4byte	0x47c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL50
	.4byte	0x3d1
	.4byte	0x494
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL51
	.4byte	0x3d1
	.4byte	0x4ac
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL52
	.4byte	0x3d1
	.4byte	0x4c4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.4byte	.LVL53
	.4byte	0x20b
	.byte	0
	.uleb128 0x9
	.4byte	0xb4
	.4byte	0x4de
	.uleb128 0xa
	.4byte	0xa6
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.4byte	0x4ce
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0x1
	.byte	0x86
	.4byte	0xbb
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x524
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x1
	.byte	0x86
	.4byte	0x145
	.4byte	.LLST6
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x1
	.byte	0x86
	.4byte	0x18d
	.4byte	.LLST7
	.uleb128 0x8
	.4byte	.LASF42
	.4byte	0x534
	.byte	0
	.uleb128 0x9
	.4byte	0xb4
	.4byte	0x534
	.uleb128 0xa
	.4byte	0xa6
	.byte	0x22
	.byte	0
	.uleb128 0xb
	.4byte	0x524
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x1
	.byte	0x94
	.4byte	0x1bb
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55c
	.uleb128 0x8
	.4byte	.LASF42
	.4byte	0x56c
	.byte	0
	.uleb128 0x9
	.4byte	0xb4
	.4byte	0x56c
	.uleb128 0xa
	.4byte	0xa6
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.4byte	0x55c
	.uleb128 0x17
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x124
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
	.uleb128 0x8
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL8
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
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"RTC_WDT_CPU_RESET_SIG"
.LASF39:
	.string	"RTC_WDT_LENGTH_3_2us"
.LASF12:
	.string	"uint64_t"
.LASF31:
	.string	"rtc_wdt_reset_sig_t"
.LASF14:
	.string	"sizetype"
.LASF66:
	.string	"rtc_clk_slow_freq_get_hz"
.LASF18:
	.string	"RTC_WDT_STAGE0"
.LASF19:
	.string	"RTC_WDT_STAGE1"
.LASF20:
	.string	"RTC_WDT_STAGE2"
.LASF21:
	.string	"RTC_WDT_STAGE3"
.LASF61:
	.string	"rtc_wdt_get_protect_status"
.LASF50:
	.string	"protect"
.LASF5:
	.string	"__uint32_t"
.LASF56:
	.string	"stage_sel"
.LASF64:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_wdt.c"
.LASF2:
	.string	"short int"
.LASF27:
	.string	"RTC_WDT_STAGE_ACTION_RESET_RTC"
.LASF34:
	.string	"RTC_WDT_LENGTH_300ns"
.LASF26:
	.string	"RTC_WDT_STAGE_ACTION_RESET_SYSTEM"
.LASF44:
	.string	"rtc_wdt_protect_on"
.LASF29:
	.string	"RTC_WDT_SYS_RESET_SIG"
.LASF55:
	.string	"rtc_wdt_set_stage"
.LASF7:
	.string	"long long int"
.LASF40:
	.string	"rtc_wdt_length_sig_t"
.LASF13:
	.string	"long int"
.LASF53:
	.string	"rtc_wdt_get_timeout"
.LASF59:
	.string	"reset_src"
.LASF46:
	.string	"rtc_wdt_flashboot_mode_enable"
.LASF1:
	.string	"unsigned char"
.LASF57:
	.string	"rtc_wdt_disable"
.LASF43:
	.string	"rtc_wdt_protect_off"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF32:
	.string	"RTC_WDT_LENGTH_100ns"
.LASF11:
	.string	"uint32_t"
.LASF6:
	.string	"unsigned int"
.LASF22:
	.string	"rtc_wdt_stage_t"
.LASF17:
	.string	"esp_err_t"
.LASF52:
	.string	"rtc_wdt_set_time"
.LASF35:
	.string	"RTC_WDT_LENGTH_400ns"
.LASF42:
	.string	"__func__"
.LASF48:
	.string	"stage"
.LASF24:
	.string	"RTC_WDT_STAGE_ACTION_INTERRUPT"
.LASF16:
	.string	"char"
.LASF10:
	.string	"int32_t"
.LASF58:
	.string	"rtc_wdt_set_length_of_reset_signal"
.LASF3:
	.string	"short unsigned int"
.LASF41:
	.string	"_Bool"
.LASF8:
	.string	"__uint64_t"
.LASF62:
	.string	"rtc_wdt_is_on"
.LASF49:
	.string	"timeout_ms"
.LASF15:
	.string	"long unsigned int"
.LASF65:
	.string	"/home/raphael/rtone/lcd/build/soc"
.LASF4:
	.string	"__int32_t"
.LASF45:
	.string	"rtc_wdt_enable"
.LASF38:
	.string	"RTC_WDT_LENGTH_1_6us"
.LASF33:
	.string	"RTC_WDT_LENGTH_200ns"
.LASF54:
	.string	"time_tick"
.LASF60:
	.string	"reset_signal_length"
.LASF28:
	.string	"rtc_wdt_stage_action_t"
.LASF47:
	.string	"rtc_wdt_feed"
.LASF36:
	.string	"RTC_WDT_LENGTH_500ns"
.LASF63:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF25:
	.string	"RTC_WDT_STAGE_ACTION_RESET_CPU"
.LASF51:
	.string	"timeout"
.LASF37:
	.string	"RTC_WDT_LENGTH_800ns"
.LASF23:
	.string	"RTC_WDT_STAGE_ACTION_OFF"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
