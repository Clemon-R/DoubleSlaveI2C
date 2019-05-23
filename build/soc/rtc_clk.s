	.file	"rtc_clk.c"
	.text
.Ltext0:
	.section	.text.rtc_clk_32k_enable_common,"ax",@progbits
	.literal_position
	.literal .LC0, 1072989324
	.literal .LC1, -415238177
	.literal .LC2, 393216
	.literal .LC3, -3145729
	.literal .LC4, 524288
	.align	4
	.type	rtc_clk_32k_enable_common, @function
rtc_clk_32k_enable_common:
.LFB10:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_clk.c"
	.loc 1 115 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LBB24:
.LBB25:
	.loc 1 116 0
	l32r	a8, .LC0
	memw
	l32i.n	a10, a8, 0
.LBE25:
	l32r	a9, .LC1
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE24:
.LBB26:
.LBB27:
	.loc 1 119 0
	memw
	l32i.n	a10, a8, 0
.LBE27:
	l32r	a9, .LC2
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE26:
.LBB28:
.LBB29:
	.loc 1 125 0
	memw
	l32i.n	a10, a8, 0
.LBE29:
	l32r	a9, .LC3
	and	a9, a10, a9
	extui	a2, a2, 0, 2
.LVL1:
	slli	a2, a2, 20
	or	a9, a2, a9
	memw
	s32i.n	a9, a8, 0
.LBE28:
.LBB30:
.LBB31:
	.loc 1 126 0
	memw
	l32i.n	a2, a8, 0
.LBE31:
	movi.n	a9, -0x19
	and	a9, a2, a9
	extui	a3, a3, 0, 2
.LVL2:
	slli	a3, a3, 3
	or	a9, a3, a9
	memw
	s32i.n	a9, a8, 0
.LBE30:
.LBB32:
.LBB33:
	.loc 1 127 0
	memw
	l32i.n	a2, a8, 0
.LBE33:
	movi.n	a9, -7
	and	a9, a2, a9
	extui	a4, a4, 0, 2
.LVL3:
	slli	a4, a4, 1
	or	a9, a4, a9
	memw
	s32i.n	a9, a8, 0
.LBE32:
.LBB34:
.LBB35:
	.loc 1 145 0
	memw
	l32i.n	a2, a8, 0
.LBE35:
	l32r	a9, .LC4
	or	a9, a2, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LBE34:
.LFE10:
	.size	rtc_clk_32k_enable_common, .-rtc_clk_32k_enable_common
	.section	.text.rtc_clk_bbpll_disable,"ax",@progbits
	.literal_position
	.literal .LC5, 1072988160
	.literal .LC6, s_cur_pll_freq
	.literal .LC7, 1072988208
	.literal .LC8, 262144
	.align	4
	.type	rtc_clk_bbpll_disable, @function
rtc_clk_bbpll_disable:
.LFB27:
	.loc 1 448 0
	entry	sp, 32
.LCFI1:
.LBB36:
.LBB37:
	.loc 1 449 0
	l32r	a9, .LC5
	memw
	l32i.n	a10, a9, 0
.LBE37:
	movi	a8, 0x540
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE36:
	.loc 1 452 0
	movi.n	a9, 0
	l32r	a8, .LC6
	s32i.n	a9, a8, 0
.LBB38:
.LBB39:
	.loc 1 455 0
	l32r	a8, .LC7
	memw
	l32i.n	a8, a8, 0
.LVL4:
.LBE39:
.LBE38:
	.loc 1 456 0
	bbci	a8, 23, .L2
.LBB40:
.LBB41:
	.loc 1 458 0
	l32r	a9, .LC5
	memw
	l32i.n	a10, a9, 0
.LBE41:
	l32r	a8, .LC8
.LVL5:
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.L2:
	retw.n
.LBE40:
.LFE27:
	.size	rtc_clk_bbpll_disable, .-rtc_clk_bbpll_disable
	.section	.text.rtc_clk_bbpll_enable,"ax",@progbits
	.literal_position
	.literal .LC9, 1072988160
	.literal .LC10, -263489
	.align	4
	.type	rtc_clk_bbpll_enable, @function
rtc_clk_bbpll_enable:
.LFB28:
	.loc 1 463 0
	entry	sp, 32
.LCFI2:
.LBB42:
.LBB43:
	.loc 1 464 0
	l32r	a9, .LC9
	memw
	l32i.n	a10, a9, 0
.LBE43:
	l32r	a8, .LC10
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE42:
	.loc 1 469 0
	movi.n	a13, 0x18
	movi.n	a12, 0
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL6:
	.loc 1 470 0
	movi.n	a13, 0x20
	movi.n	a12, 1
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL7:
	.loc 1 471 0
	movi	a13, 0x9a
	movi.n	a12, 4
	mov.n	a11, a12
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL8:
	.loc 1 472 0
	movi.n	a13, 0
	movi.n	a12, 0xa
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL9:
	.loc 1 473 0
	movi.n	a13, 0
	movi.n	a12, 0xc
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL10:
	retw.n
.LFE28:
	.size	rtc_clk_bbpll_enable, .-rtc_clk_bbpll_enable
	.section	.text.rtc_clk_32k_enable,"ax",@progbits
	.literal_position
	.literal .LC11, 1072989324
	.literal .LC12, -524289
	.literal .LC13, -393217
	.align	4
	.global	rtc_clk_32k_enable
	.type	rtc_clk_32k_enable, @function
rtc_clk_32k_enable:
.LFB11:
	.loc 1 149 0
.LVL11:
	entry	sp, 32
.LCFI3:
	extui	a2, a2, 0, 8
	.loc 1 150 0
	beqz.n	a2, .L6
	.loc 1 151 0
	movi.n	a12, 0
	movi.n	a11, 3
	mov.n	a10, a11
	call8	rtc_clk_32k_enable_common
.LVL12:
	retw.n
.L6:
.LBB44:
.LBB45:
	.loc 1 154 0
	l32r	a8, .LC11
	memw
	l32i.n	a2, a8, 0
.LVL13:
.LBE45:
	l32r	a9, .LC12
	and	a9, a2, a9
	memw
	s32i.n	a9, a8, 0
.LBE44:
.LBB46:
.LBB47:
	.loc 1 155 0
	memw
	l32i.n	a2, a8, 0
.LBE47:
	l32r	a9, .LC13
	and	a9, a2, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LBE46:
.LFE11:
	.size	rtc_clk_32k_enable, .-rtc_clk_32k_enable
	.section	.text.rtc_clk_32k_enable_external,"ax",@progbits
	.align	4
	.global	rtc_clk_32k_enable_external
	.type	rtc_clk_32k_enable_external, @function
rtc_clk_32k_enable_external:
.LFB12:
	.loc 1 165 0
	entry	sp, 32
.LCFI4:
	.loc 1 166 0
	movi.n	a12, 1
	movi.n	a11, 3
	movi.n	a10, 2
	call8	rtc_clk_32k_enable_common
.LVL14:
	retw.n
.LFE12:
	.size	rtc_clk_32k_enable_external, .-rtc_clk_32k_enable_external
	.section	.text.rtc_clk_32k_bootstrap,"ax",@progbits
	.literal_position
	.literal .LC14, 1072989324
	.literal .LC15, -524289
	.literal .LC16, 272629760
	.align	4
	.global	rtc_clk_32k_bootstrap
	.type	rtc_clk_32k_bootstrap, @function
rtc_clk_32k_bootstrap:
.LFB13:
	.loc 1 174 0
.LVL15:
	entry	sp, 32
.LCFI5:
	.loc 1 175 0
	beqz.n	a2, .L10
.LVL16:
.LBB48:
	.loc 1 181 0
	movi.n	a10, 0x20
	call8	gpio_pad_select_gpio
.LVL17:
	.loc 1 182 0
	movi.n	a10, 0x21
	call8	gpio_pad_select_gpio
.LVL18:
	.loc 1 183 0
	movi.n	a13, 0
	movi.n	a12, 3
	movi.n	a11, 2
	movi.n	a10, 1
	call8	gpio_output_set_high
.LVL19:
	.loc 1 186 0
	j	.L11
.L12:
	.loc 1 187 0
	movi.n	a13, 0
	movi.n	a12, 3
	movi.n	a11, 2
	movi.n	a10, 1
	call8	gpio_output_set_high
.LVL20:
	.loc 1 188 0
	movi.n	a10, 0xf
	call8	ets_delay_us
.LVL21:
	.loc 1 189 0
	movi.n	a13, 0
	movi.n	a12, 3
	movi.n	a11, 1
	movi.n	a10, 2
	call8	gpio_output_set_high
.LVL22:
	.loc 1 190 0
	movi.n	a10, 0xf
	call8	ets_delay_us
.LVL23:
	.loc 1 191 0
	addi.n	a2, a2, -1
.LVL24:
.L11:
	.loc 1 186 0
	bnez.n	a2, .L12
	.loc 1 193 0
	movi.n	a13, 3
	movi.n	a12, 0
	mov.n	a11, a12
	mov.n	a10, a12
	call8	gpio_output_set_high
.LVL25:
.L10:
.LBE48:
.LBB49:
.LBB50:
	.loc 1 196 0
	l32r	a2, .LC14
.LVL26:
	memw
	l32i.n	a9, a2, 0
.LBE50:
	l32r	a8, .LC15
	and	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
.LBE49:
.LBB51:
.LBB52:
	.loc 1 197 0
	memw
	l32i.n	a9, a2, 0
.LBE52:
	l32r	a8, .LC16
	or	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
.LBE51:
	.loc 1 198 0
	movi.n	a10, 7
	call8	ets_delay_us
.LVL27:
	.loc 1 200 0
	movi.n	a12, 0
	movi.n	a11, 3
	mov.n	a10, a11
	call8	rtc_clk_32k_enable_common
.LVL28:
	retw.n
.LFE13:
	.size	rtc_clk_32k_bootstrap, .-rtc_clk_32k_bootstrap
	.section	.text.rtc_clk_32k_enabled,"ax",@progbits
	.literal_position
	.literal .LC17, 1072989324
	.literal .LC18, 524288
	.align	4
	.global	rtc_clk_32k_enabled
	.type	rtc_clk_32k_enabled, @function
rtc_clk_32k_enabled:
.LFB14:
	.loc 1 205 0
	entry	sp, 32
.LCFI6:
.LBB53:
.LBB54:
	.loc 1 206 0
	l32r	a2, .LC17
	memw
	l32i.n	a8, a2, 0
.LBE54:
	l32r	a2, .LC18
	and	a8, a8, a2
.LBE53:
	movi.n	a2, 0
	movi.n	a9, 1
	movnez	a2, a9, a8
	.loc 1 207 0
	retw.n
.LFE14:
	.size	rtc_clk_32k_enabled, .-rtc_clk_32k_enabled
	.section	.text.rtc_clk_8m_enable,"ax",@progbits
	.literal_position
	.literal .LC19, 1072988272
	.literal .LC20, 1072988188
	.literal .LC21, -16321
	.align	4
	.global	rtc_clk_8m_enable
	.type	rtc_clk_8m_enable, @function
rtc_clk_8m_enable:
.LFB15:
	.loc 1 210 0
.LVL29:
	entry	sp, 32
.LCFI7:
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	.loc 1 211 0
	beqz.n	a2, .L15
.LBB55:
.LBB56:
	.loc 1 212 0
	l32r	a2, .LC19
.LVL30:
	memw
	l32i.n	a9, a2, 0
.LBE56:
	movi	a8, -0x41
	and	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
.LBE55:
.LBB57:
.LBB58:
	.loc 1 214 0
	l32r	a2, .LC20
	memw
	l32i.n	a9, a2, 0
.LBE58:
	l32r	a8, .LC21
	and	a9, a9, a8
	movi.n	a8, 0x40
	or	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
.LBE57:
	.loc 1 215 0
	beqz.n	a3, .L16
.LBB59:
.LBB60:
	.loc 1 216 0
	l32r	a3, .LC19
.LVL31:
	memw
	l32i.n	a8, a3, 0
.LBE60:
	movi	a2, -0x81
	and	a2, a8, a2
	memw
	s32i.n	a2, a3, 0
.LBE59:
	j	.L17
.L16:
.LBB61:
.LBB62:
	.loc 1 218 0
	l32r	a3, .LC19
	memw
	l32i.n	a8, a3, 0
.LBE62:
	movi	a2, 0x80
	or	a2, a8, a2
	memw
	s32i.n	a2, a3, 0
.L17:
.LBE61:
	.loc 1 220 0
	movi.n	a10, 0x32
	call8	ets_delay_us
.LVL32:
	retw.n
.L15:
.LBB63:
.LBB64:
	.loc 1 222 0
	l32r	a2, .LC19
	memw
	l32i.n	a3, a2, 0
.LBE64:
	movi.n	a8, 0x40
	or	a8, a3, a8
	memw
	s32i.n	a8, a2, 0
.LBE63:
.LBB65:
.LBB66:
	.loc 1 223 0
	l32r	a2, .LC20
	memw
	l32i.n	a9, a2, 0
.LBE66:
	l32r	a8, .LC21
	and	a9, a9, a8
	movi	a8, 0x500
	or	a8, a9, a8
	memw
	s32i.n	a8, a2, 0
	retw.n
.LBE65:
.LFE15:
	.size	rtc_clk_8m_enable, .-rtc_clk_8m_enable
	.section	.text.rtc_clk_8m_enabled,"ax",@progbits
	.literal_position
	.literal .LC22, 1072988272
	.align	4
	.global	rtc_clk_8m_enabled
	.type	rtc_clk_8m_enabled, @function
rtc_clk_8m_enabled:
.LFB16:
	.loc 1 228 0
	entry	sp, 32
.LCFI8:
.LBB67:
.LBB68:
	.loc 1 229 0
	l32r	a2, .LC22
	memw
	l32i.n	a8, a2, 0
.LBE68:
	movi.n	a2, 0x40
	and	a8, a8, a2
.LBE67:
	movi.n	a2, 0
	movi.n	a9, 1
	moveqz	a2, a9, a8
	.loc 1 230 0
	retw.n
.LFE16:
	.size	rtc_clk_8m_enabled, .-rtc_clk_8m_enabled
	.section	.text.rtc_clk_8md256_enabled,"ax",@progbits
	.literal_position
	.literal .LC23, 1072988272
	.align	4
	.global	rtc_clk_8md256_enabled
	.type	rtc_clk_8md256_enabled, @function
rtc_clk_8md256_enabled:
.LFB17:
	.loc 1 233 0
	entry	sp, 32
.LCFI9:
.LBB69:
.LBB70:
	.loc 1 234 0
	l32r	a2, .LC23
	memw
	l32i.n	a8, a2, 0
.LBE70:
	movi	a2, 0x80
	and	a8, a8, a2
.LBE69:
	movi.n	a2, 0
	movi.n	a9, 1
	moveqz	a2, a9, a8
	.loc 1 235 0
	retw.n
.LFE17:
	.size	rtc_clk_8md256_enabled, .-rtc_clk_8md256_enabled
	.section	.text.rtc_clk_apll_enable,"ax",@progbits
	.literal_position
	.literal .LC24, 8388608
	.literal .LC25, 1072988208
	.literal .LC26, -8388609
	.literal .LC27, -16777217
	.literal .LC28, 1072988272
	.literal .LC29, 1072988160
	.literal .LC30, 262144
	.literal .LC31, -262145
	.literal .LC32, 1073061900
	.align	4
	.global	rtc_clk_apll_enable
	.type	rtc_clk_apll_enable, @function
rtc_clk_apll_enable:
.LFB18:
	.loc 1 238 0
.LVL33:
	entry	sp, 32
.LCFI10:
	extui	a2, a2, 0, 8
.LBB71:
.LBB72:
	.loc 1 239 0
	l32r	a8, .LC25
	memw
	l32i.n	a9, a8, 0
.LBE72:
	l32r	a8, .LC26
	and	a8, a9, a8
	beqz.n	a2, .L29
	movi.n	a9, 0
	j	.L22
.L29:
	l32r	a9, .LC24
.L22:
	.loc 1 239 0 is_stmt 0 discriminator 4
	or	a8, a9, a8
	l32r	a9, .LC25
	memw
	s32i.n	a8, a9, 0
.LBE71:
.LBB73:
.LBB74:
	.loc 1 240 0 is_stmt 1 discriminator 4
	memw
	l32i.n	a10, a9, 0
.LBE74:
	l32r	a8, .LC27
	and	a8, a10, a8
	slli	a10, a2, 24
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE73:
	.loc 1 242 0 discriminator 4
	bnez.n	a2, .L23
.LBB75:
.LBB76:
	.loc 1 243 0 discriminator 1
	l32r	a8, .LC28
	memw
	l32i.n	a8, a8, 0
.LBE76:
	extui	a8, a8, 27, 2
.LBE75:
	.loc 1 242 0 discriminator 1
	beqi	a8, 1, .L23
.LBB77:
	.loc 1 244 0
	l32r	a9, .LC29
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC30
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE77:
	j	.L24
.L23:
.LBB78:
	.loc 1 246 0
	l32r	a9, .LC29
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC31
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.L24:
.LBE78:
	.loc 1 249 0
	beqz.n	a2, .L21
.LVL34:
.LBB79:
.LBB80:
.LBB81:
	.loc 1 251 0
	l32r	a2, .LC32
.LVL35:
	memw
	l32i.n	a2, a2, 0
.LVL36:
.LBE81:
.LBE80:
	.loc 1 252 0
	bbci	a2, 15, .L30
	.loc 1 250 0
	movi.n	a2, 0x49
.LVL37:
	j	.L26
.LVL38:
.L30:
	.loc 1 255 0
	movi	a2, 0x69
.LVL39:
	.loc 1 254 0
	movi.n	a4, 0
.LVL40:
	.loc 1 253 0
	mov.n	a3, a4
.LVL41:
.L26:
	.loc 1 257 0
	extui	a15, a5, 0, 8
	movi.n	a14, 0
	movi.n	a13, 5
	movi.n	a12, 7
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg_Mask
.LVL42:
	.loc 1 258 0
	extui	a15, a3, 0, 8
	movi.n	a14, 0
	movi.n	a13, 7
	movi.n	a12, 9
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg_Mask
.LVL43:
	.loc 1 259 0
	extui	a15, a4, 0, 8
	movi.n	a14, 0
	movi.n	a13, 7
	movi.n	a12, 8
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg_Mask
.LVL44:
	.loc 1 260 0
	movi.n	a13, 9
	movi.n	a12, 5
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg
.LVL45:
	.loc 1 261 0
	mov.n	a13, a2
	movi.n	a12, 5
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg
.LVL46:
	.loc 1 262 0
	extui	a15, a6, 0, 8
	movi.n	a14, 0
	movi.n	a13, 4
	mov.n	a12, a13
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg_Mask
.LVL47:
	.loc 1 265 0
	movi.n	a13, 0xf
	movi.n	a12, 0
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg
.LVL48:
	.loc 1 266 0
	movi.n	a13, 0x3f
	movi.n	a12, 0
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg
.LVL49:
	.loc 1 267 0
	movi.n	a13, 0x1f
	movi.n	a12, 0
	movi.n	a11, 3
	movi	a10, 0x6d
	call8	rom_i2c_writeReg
.LVL50:
	.loc 1 270 0
	j	.L27
.L28:
	.loc 1 272 0
	movi.n	a10, 1
	call8	ets_delay_us
.LVL51:
.L27:
	.loc 1 270 0
	movi.n	a14, 7
	mov.n	a13, a14
	movi.n	a12, 3
	mov.n	a11, a12
	movi	a10, 0x6d
	call8	rom_i2c_readReg_Mask
.LVL52:
	beqz.n	a10, .L28
.LVL53:
.L21:
	retw.n
.LBE79:
.LFE18:
	.size	rtc_clk_apll_enable, .-rtc_clk_apll_enable
	.section	.text.rtc_clk_slow_freq_set,"ax",@progbits
	.literal_position
	.literal .LC33, 1072988272
	.literal .LC34, 1073741823
	.align	4
	.global	rtc_clk_slow_freq_set
	.type	rtc_clk_slow_freq_set, @function
rtc_clk_slow_freq_set:
.LFB19:
	.loc 1 278 0
.LVL54:
	entry	sp, 32
.LCFI11:
.LBB82:
.LBB83:
	.loc 1 279 0
	l32r	a8, .LC33
	memw
	l32i.n	a10, a8, 0
.LBE83:
	l32r	a9, .LC34
	and	a10, a10, a9
	slli	a9, a2, 30
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE82:
.LBB84:
.LBB85:
	.loc 1 281 0
	memw
	l32i.n	a9, a8, 0
.LBE85:
	movi	a8, -0x101
	and	a8, a9, a8
	bnei	a2, 1, .L33
	movi	a2, 0x100
.LVL55:
	j	.L32
.LVL56:
.L33:
	movi.n	a2, 0
.LVL57:
.L32:
	.loc 1 281 0 is_stmt 0 discriminator 4
	or	a8, a2, a8
	l32r	a2, .LC33
	memw
	s32i.n	a8, a2, 0
.LBE84:
	.loc 1 284 0 is_stmt 1 discriminator 4
	movi	a10, 0x12c
	call8	ets_delay_us
.LVL58:
	retw.n
.LFE19:
	.size	rtc_clk_slow_freq_set, .-rtc_clk_slow_freq_set
	.section	.text.rtc_clk_slow_freq_get,"ax",@progbits
	.literal_position
	.literal .LC35, 1072988272
	.align	4
	.global	rtc_clk_slow_freq_get
	.type	rtc_clk_slow_freq_get, @function
rtc_clk_slow_freq_get:
.LFB20:
	.loc 1 288 0
	entry	sp, 32
.LCFI12:
.LBB86:
.LBB87:
	.loc 1 289 0
	l32r	a2, .LC35
	memw
	l32i.n	a2, a2, 0
.LBE87:
.LBE86:
	.loc 1 290 0
	extui	a2, a2, 30, 2
	retw.n
.LFE20:
	.size	rtc_clk_slow_freq_get, .-rtc_clk_slow_freq_get
	.section	.text.rtc_clk_slow_freq_get_hz,"ax",@progbits
	.literal_position
	.literal .LC36, 150000
	.literal .LC37, 32768
	.literal .LC38, 33203
	.align	4
	.global	rtc_clk_slow_freq_get_hz
	.type	rtc_clk_slow_freq_get_hz, @function
rtc_clk_slow_freq_get_hz:
.LFB21:
	.loc 1 293 0
	entry	sp, 32
.LCFI13:
	.loc 1 294 0
	call8	rtc_clk_slow_freq_get
.LVL59:
	beqi	a10, 1, .L40
	beqz.n	a10, .L38
	beqi	a10, 2, .L39
	j	.L41
.L38:
	.loc 1 295 0
	l32r	a2, .LC36
	retw.n
.L39:
	.loc 1 297 0
	l32r	a2, .LC38
	retw.n
.L41:
	.loc 1 299 0
	movi.n	a2, 0
	retw.n
.L40:
	.loc 1 296 0
	l32r	a2, .LC37
	.loc 1 300 0
	retw.n
.LFE21:
	.size	rtc_clk_slow_freq_get_hz, .-rtc_clk_slow_freq_get_hz
	.section	.text.rtc_clk_fast_freq_set,"ax",@progbits
	.literal_position
	.literal .LC39, 1072988272
	.literal .LC40, -536870913
	.align	4
	.global	rtc_clk_fast_freq_set
	.type	rtc_clk_fast_freq_set, @function
rtc_clk_fast_freq_set:
.LFB22:
	.loc 1 303 0
.LVL60:
	entry	sp, 32
.LCFI14:
.LBB88:
.LBB89:
	.loc 1 304 0
	l32r	a9, .LC39
	memw
	l32i.n	a10, a9, 0
.LBE89:
	l32r	a8, .LC40
	and	a8, a10, a8
	extui	a2, a2, 0, 1
.LVL61:
	slli	a2, a2, 29
	or	a2, a8, a2
	memw
	s32i.n	a2, a9, 0
.LBE88:
	.loc 1 305 0
	movi.n	a10, 3
	call8	ets_delay_us
.LVL62:
	retw.n
.LFE22:
	.size	rtc_clk_fast_freq_set, .-rtc_clk_fast_freq_set
	.section	.text.rtc_clk_fast_freq_get,"ax",@progbits
	.literal_position
	.literal .LC41, 1072988272
	.align	4
	.global	rtc_clk_fast_freq_get
	.type	rtc_clk_fast_freq_get, @function
rtc_clk_fast_freq_get:
.LFB23:
	.loc 1 309 0
	entry	sp, 32
.LCFI15:
.LBB90:
.LBB91:
	.loc 1 310 0
	l32r	a2, .LC41
	memw
	l32i.n	a2, a2, 0
.LBE91:
.LBE90:
	.loc 1 311 0
	extui	a2, a2, 29, 1
	retw.n
.LFE23:
	.size	rtc_clk_fast_freq_get, .-rtc_clk_fast_freq_get
	.section	.text.rtc_clk_bbpll_configure,"ax",@progbits
	.literal_position
	.literal .LC42, 1072988284
	.literal .LC43, -14337
	.literal .LC44, 8192
	.literal .LC45, 14336
	.literal .LC46, s_cur_pll_freq
	.align	4
	.global	rtc_clk_bbpll_configure
	.type	rtc_clk_bbpll_configure, @function
rtc_clk_bbpll_configure:
.LFB24:
	.loc 1 314 0
.LVL63:
	entry	sp, 48
.LCFI16:
	.loc 1 322 0
	movi	a4, 0x140
	bne	a3, a4, .L45
.LBB92:
.LBB93:
	.loc 1 324 0
	l32r	a6, .LC42
	memw
	l32i.n	a5, a6, 0
.LBE93:
	l32r	a4, .LC43
	and	a5, a5, a4
	l32r	a4, .LC44
	or	a4, a5, a4
	memw
	s32i.n	a4, a6, 0
.LBE92:
	.loc 1 326 0
	movi.n	a4, 0x1a
	beq	a2, a4, .L56
	movi.n	a4, 0x28
	beq	a2, a4, .L48
	movi.n	a4, 0x18
	bne	a2, a4, .L59
	j	.L49
.L48:
	.loc 1 333 0
	movi.n	a4, 3
	.loc 1 332 0
	movi.n	a2, 6
.LVL64:
	s32i.n	a2, sp, 0
	.loc 1 331 0
	movi.n	a5, 0
	.loc 1 330 0
	mov.n	a2, a5
	.loc 1 329 0
	movi.n	a6, 0x20
	.loc 1 328 0
	mov.n	a7, a5
	j	.L47
.LVL65:
.L49:
	.loc 1 349 0
	movi.n	a4, 1
	.loc 1 348 0
	movi.n	a2, 0
.LVL66:
	s32i.n	a2, sp, 0
	.loc 1 347 0
	mov.n	a5, a4
	.loc 1 346 0
	movi.n	a2, 4
	.loc 1 345 0
	movi	a6, 0xe0
	.loc 1 344 0
	movi.n	a7, 0xb
	.loc 1 350 0
	j	.L47
.LVL67:
.L59:
	.loc 1 357 0
	movi.n	a4, 0
	.loc 1 356 0
	s32i.n	a4, sp, 0
	.loc 1 355 0
	mov.n	a5, a4
	.loc 1 354 0
	movi.n	a2, 4
.LVL68:
	.loc 1 353 0
	movi	a6, 0xe0
	.loc 1 352 0
	movi.n	a7, 0xc
	.loc 1 358 0
	j	.L47
.LVL69:
.L56:
	.loc 1 341 0
	movi.n	a4, 1
	.loc 1 340 0
	movi.n	a2, 0
.LVL70:
	s32i.n	a2, sp, 0
	.loc 1 339 0
	mov.n	a5, a4
	.loc 1 338 0
	movi.n	a2, 4
	.loc 1 337 0
	movi	a6, 0xe0
	.loc 1 336 0
	movi.n	a7, 0xc
.L47:
.LVL71:
	.loc 1 360 0
	movi.n	a13, 0x43
	movi.n	a12, 0xb
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL72:
	.loc 1 361 0
	movi	a13, 0x84
	movi.n	a12, 9
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL73:
	j	.L50
.LVL74:
.L45:
.LBB94:
.LBB95:
	.loc 1 364 0
	l32r	a5, .LC42
	memw
	l32i.n	a6, a5, 0
.LBE95:
	l32r	a4, .LC45
	or	a4, a6, a4
	memw
	s32i.n	a4, a5, 0
.LBE94:
	.loc 1 365 0
	movi.n	a10, 3
	call8	ets_delay_us
.LVL75:
	.loc 1 367 0
	movi.n	a4, 0x1a
	beq	a2, a4, .L57
	movi.n	a4, 0x28
	beq	a2, a4, .L53
	movi.n	a4, 0x18
	bne	a2, a4, .L60
	j	.L54
.L53:
	.loc 1 374 0
	movi.n	a4, 3
	.loc 1 373 0
	movi.n	a2, 6
.LVL76:
	s32i.n	a2, sp, 0
	.loc 1 372 0
	movi.n	a5, 0
	.loc 1 371 0
	mov.n	a2, a5
	.loc 1 370 0
	movi.n	a6, 0x1c
	.loc 1 369 0
	mov.n	a7, a5
	j	.L52
.LVL77:
.L54:
	.loc 1 390 0
	movi.n	a4, 1
	.loc 1 389 0
	movi.n	a2, 0
.LVL78:
	s32i.n	a2, sp, 0
	.loc 1 388 0
	mov.n	a5, a4
	.loc 1 387 0
	movi.n	a2, 4
	.loc 1 386 0
	movi	a6, 0x90
	.loc 1 385 0
	movi.n	a7, 0xb
	.loc 1 391 0
	j	.L52
.LVL79:
.L60:
	.loc 1 398 0
	movi.n	a4, 0
	.loc 1 397 0
	s32i.n	a4, sp, 0
	.loc 1 396 0
	mov.n	a5, a4
	.loc 1 395 0
	movi.n	a2, 4
.LVL80:
	.loc 1 394 0
	movi	a6, 0xe0
	.loc 1 393 0
	movi.n	a7, 0xc
	.loc 1 399 0
	j	.L52
.LVL81:
.L57:
	.loc 1 382 0
	movi.n	a4, 1
	.loc 1 381 0
	movi.n	a2, 0
.LVL82:
	s32i.n	a2, sp, 0
	.loc 1 380 0
	mov.n	a5, a4
	.loc 1 379 0
	movi.n	a2, 4
	.loc 1 378 0
	movi	a6, 0x90
	.loc 1 377 0
	movi.n	a7, 0xc
.L52:
.LVL83:
	.loc 1 401 0
	movi	a13, 0xc3
	movi.n	a12, 0xb
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL84:
	.loc 1 402 0
	movi	a13, 0x74
	movi.n	a12, 9
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL85:
.L50:
	.loc 1 405 0
	slli	a13, a5, 7
	slli	a2, a2, 4
.LVL86:
	or	a13, a13, a2
.LVL87:
	.loc 1 407 0
	slli	a4, a4, 6
.LVL88:
	l32i.n	a2, sp, 0
	or	a4, a4, a2
.LVL89:
	.loc 1 408 0
	or	a13, a13, a7
.LVL90:
	movi.n	a12, 2
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL91:
	.loc 1 409 0
	mov.n	a13, a6
	movi.n	a12, 3
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL92:
	.loc 1 410 0
	mov.n	a13, a4
	movi.n	a12, 5
	movi.n	a11, 4
	movi	a10, 0x66
	call8	rom_i2c_writeReg
.LVL93:
	.loc 1 411 0
	call8	rtc_clk_slow_freq_get
.LVL94:
	bnez.n	a10, .L58
	movi.n	a10, 0x50
	j	.L55
.L58:
	movi	a10, 0xa0
.L55:
.LVL95:
	.loc 1 413 0 discriminator 4
	call8	ets_delay_us
.LVL96:
	.loc 1 414 0 discriminator 4
	l32r	a2, .LC46
	s32i.n	a3, a2, 0
	retw.n
.LFE24:
	.size	rtc_clk_bbpll_configure, .-rtc_clk_bbpll_configure
	.section	.text.rtc_clk_xtal_freq_get,"ax",@progbits
	.literal_position
	.literal .LC47, 1072988336
	.literal .LC48, 65534
	.align	4
	.global	rtc_clk_xtal_freq_get
	.type	rtc_clk_xtal_freq_get, @function
rtc_clk_xtal_freq_get:
.LFB42:
	.loc 1 770 0
	entry	sp, 32
.LCFI17:
.LBB96:
	.loc 1 772 0
	l32r	a2, .LC47
	memw
	l32i.n	a8, a2, 0
.LVL97:
.LBE96:
.LBB97:
.LBB98:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_clk_common.h"
	.loc 2 26 0
	extui	a2, a8, 0, 16
	extui	a9, a8, 16, 16
	.loc 2 27 0
	bne	a9, a2, .L64
	addi.n	a2, a8, -1
	movi.n	a9, -3
	bgeu	a9, a2, .L65
	movi.n	a2, 0
	j	.L62
.L64:
	movi.n	a2, 0
	j	.L62
.L65:
	movi.n	a2, 1
.L62:
.LBE98:
.LBE97:
	.loc 1 773 0
	beqz.n	a2, .L66
.LVL98:
.LBB99:
.LBB100:
	.loc 2 32 0
	l32r	a2, .LC48
	and	a2, a8, a2
.LBE100:
.LBE99:
	.loc 1 776 0
	retw.n
.LVL99:
.L66:
	.loc 1 774 0
	movi.n	a2, 0
	.loc 1 777 0
	retw.n
.LFE42:
	.size	rtc_clk_xtal_freq_get, .-rtc_clk_xtal_freq_get
	.global	rtc_get_xtal
	.set	rtc_get_xtal,rtc_clk_xtal_freq_get
	.section	.text.rtc_clk_cpu_freq_from_mhz_internal,"ax",@progbits
	.align	4
	.type	rtc_clk_cpu_freq_from_mhz_internal, @function
rtc_clk_cpu_freq_from_mhz_internal:
.LFB35:
	.loc 1 557 0
.LVL100:
	entry	sp, 32
.LCFI18:
	.loc 1 558 0
	movi	a8, 0xf0
	bne	a2, a8, .L68
	.loc 1 559 0
	movi.n	a2, 3
.LVL101:
	s32i.n	a2, a3, 0
	.loc 1 571 0
	movi.n	a2, 1
	retw.n
.LVL102:
.L68:
	.loc 1 560 0
	movi	a8, 0xa0
	bne	a2, a8, .L70
	.loc 1 561 0
	movi.n	a2, 2
.LVL103:
	s32i.n	a2, a3, 0
	.loc 1 571 0
	movi.n	a2, 1
	retw.n
.LVL104:
.L70:
	.loc 1 562 0
	movi.n	a8, 0x50
	bne	a2, a8, .L71
	.loc 1 563 0
	movi.n	a2, 1
.LVL105:
	s32i.n	a2, a3, 0
	retw.n
.LVL106:
.L71:
	.loc 1 564 0
	call8	rtc_clk_xtal_freq_get
.LVL107:
	bne	a2, a10, .L72
	.loc 1 565 0
	movi.n	a2, 0
.LVL108:
	s32i.n	a2, a3, 0
	.loc 1 571 0
	movi.n	a2, 1
	retw.n
.LVL109:
.L72:
	.loc 1 566 0
	bnei	a2, 2, .L73
	.loc 1 567 0
	movi.n	a2, 4
.LVL110:
	s32i.n	a2, a3, 0
	.loc 1 571 0
	movi.n	a2, 1
	retw.n
.LVL111:
.L73:
	.loc 1 569 0
	movi.n	a2, 0
.LVL112:
	.loc 1 572 0
	retw.n
.LFE35:
	.size	rtc_clk_cpu_freq_from_mhz_internal, .-rtc_clk_cpu_freq_from_mhz_internal
	.section	.text.rtc_clk_cpu_freq_from_mhz,"ax",@progbits
	.align	4
	.global	rtc_clk_cpu_freq_from_mhz
	.type	rtc_clk_cpu_freq_from_mhz, @function
rtc_clk_cpu_freq_from_mhz:
.LFB36:
	.loc 1 575 0
.LVL113:
	entry	sp, 32
.LCFI19:
	.loc 1 576 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	rtc_clk_cpu_freq_from_mhz_internal
.LVL114:
	.loc 1 577 0
	mov.n	a2, a10
.LVL115:
	retw.n
.LFE36:
	.size	rtc_clk_cpu_freq_from_mhz, .-rtc_clk_cpu_freq_from_mhz
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC54:
	.string	"rtc_clk"
	.align	4
.LC56:
	.string	"\033[0;31mE (%d) %s: invalid rtc_cpu_freq_t value\033[0m\n"
	.section	.text.rtc_clk_cpu_freq_value,"ax",@progbits
	.literal_position
	.literal .LC49, 2000000
	.literal .LC50, 80000000
	.literal .LC51, 160000000
	.literal .LC52, 240000000
	.literal .LC53, 1000000
	.literal .LC55, .LC54
	.literal .LC57, .LC56
	.align	4
	.global	rtc_clk_cpu_freq_value
	.type	rtc_clk_cpu_freq_value, @function
rtc_clk_cpu_freq_value:
.LFB34:
	.loc 1 538 0
.LVL116:
	entry	sp, 32
.LCFI20:
	.loc 1 539 0
	beqi	a2, 2, .L77
	bgeui	a2, 3, .L78
	beqz.n	a2, .L79
	beqi	a2, 1, .L83
	j	.L76
.L78:
	beqi	a2, 3, .L81
	bnei	a2, 4, .L76
	.loc 1 543 0
	l32r	a2, .LC49
.LVL117:
	retw.n
.LVL118:
.L79:
	.loc 1 541 0
	call8	rtc_clk_xtal_freq_get
.LVL119:
	l32r	a2, .LC53
.LVL120:
	mull	a2, a10, a2
	retw.n
.LVL121:
.L77:
	.loc 1 547 0
	l32r	a2, .LC51
.LVL122:
	retw.n
.LVL123:
.L81:
	.loc 1 549 0
	l32r	a2, .LC52
.LVL124:
	retw.n
.LVL125:
.L76:
	.loc 1 551 0 discriminator 1
	call8	esp_log_timestamp
.LVL126:
	l32r	a12, .LC55
	mov.n	a11, a10
	l32r	a10, .LC57
	call8	ets_printf
.LVL127:
	.loc 1 552 0 discriminator 1
	movi.n	a2, 0
.LVL128:
	retw.n
.LVL129:
.L83:
	.loc 1 545 0
	l32r	a2, .LC50
.LVL130:
	.loc 1 554 0
	retw.n
.LFE34:
	.size	rtc_clk_cpu_freq_value, .-rtc_clk_cpu_freq_value
	.section	.text.rtc_clk_cpu_freq_to_config,"ax",@progbits
	.literal_position
	.literal .LC58, .LC54
	.literal .LC59, .LC56
	.align	4
	.global	rtc_clk_cpu_freq_to_config
	.type	rtc_clk_cpu_freq_to_config, @function
rtc_clk_cpu_freq_to_config:
.LFB37:
	.loc 1 580 0
.LVL131:
	entry	sp, 32
.LCFI21:
	.loc 1 586 0
	beqi	a2, 2, .L91
	bgeui	a2, 3, .L87
	beqz.n	a2, .L88
	beqi	a2, 1, .L89
	j	.L85
.L87:
	beqi	a2, 3, .L90
	bnei	a2, 4, .L85
.L88:
	.loc 1 589 0
	call8	rtc_clk_xtal_freq_get
.LVL132:
	.loc 1 591 0
	bnei	a2, 4, .L92
.LVL133:
	.loc 1 593 0
	l32i.n	a2, a3, 4
.LVL134:
	srli	a2, a2, 1
.LVL135:
	.loc 1 592 0
	movi.n	a8, 2
	.loc 1 590 0
	movi.n	a9, 0
	j	.L86
.LVL136:
.L90:
	.loc 1 614 0
	movi.n	a2, 2
.LVL137:
	.loc 1 615 0
	movi	a8, 0xf0
	.loc 1 612 0
	movi.n	a9, 1
	.loc 1 613 0
	movi	a10, 0x1e0
	.loc 1 616 0
	j	.L86
.LVL138:
.L85:
	.loc 1 618 0 discriminator 1
	call8	esp_log_timestamp
.LVL139:
	l32r	a12, .LC58
	mov.n	a11, a10
	l32r	a10, .LC59
	call8	ets_printf
.LVL140:
	.loc 1 619 0 discriminator 1
	call8	abort
.LVL141:
.L89:
	.loc 1 602 0
	movi.n	a2, 4
.LVL142:
	.loc 1 603 0
	movi.n	a8, 0x50
	.loc 1 600 0
	movi.n	a9, 1
	.loc 1 601 0
	movi	a10, 0x140
	j	.L86
.LVL143:
.L91:
	.loc 1 608 0
	movi.n	a2, 2
.LVL144:
	.loc 1 609 0
	movi	a8, 0xa0
	.loc 1 606 0
	movi.n	a9, 1
	.loc 1 607 0
	movi	a10, 0x140
	j	.L86
.LVL145:
.L92:
	.loc 1 595 0
	mov.n	a8, a10
	.loc 1 596 0
	movi.n	a2, 1
.LVL146:
	.loc 1 590 0
	movi.n	a9, 0
.LVL147:
.L86:
	.loc 1 622 0
	s32i.n	a9, a3, 0
	s32i.n	a10, a3, 4
	s32i.n	a2, a3, 8
	s32i.n	a8, a3, 12
	retw.n
.LFE37:
	.size	rtc_clk_cpu_freq_to_config, .-rtc_clk_cpu_freq_to_config
	.section	.text.rtc_clk_cpu_freq_mhz_to_config,"ax",@progbits
	.align	4
	.global	rtc_clk_cpu_freq_mhz_to_config
	.type	rtc_clk_cpu_freq_mhz_to_config, @function
rtc_clk_cpu_freq_mhz_to_config:
.LFB38:
	.loc 1 631 0
.LVL148:
	entry	sp, 32
.LCFI22:
	.loc 1 637 0
	call8	rtc_clk_xtal_freq_get
.LVL149:
	.loc 1 638 0
	bltu	a10, a2, .L94
	.loc 1 639 0
	quou	a9, a10, a2
.LVL150:
	.loc 1 640 0
	srli	a8, a9, 1
	add.n	a8, a10, a8
	quou	a8, a8, a9
.LVL151:
	.loc 1 641 0
	bne	a2, a8, .L97
	.loc 1 640 0
	mov.n	a2, a8
.LVL152:
	.loc 1 647 0
	movi.n	a8, 0
.LVL153:
	j	.L96
.LVL154:
.L94:
	.loc 1 648 0
	movi.n	a8, 0x50
	beq	a2, a8, .L98
	.loc 1 653 0
	movi	a8, 0xa0
	beq	a2, a8, .L99
	.loc 1 658 0
	movi	a8, 0xf0
	bne	a2, a8, .L100
	.loc 1 662 0
	movi.n	a9, 2
	.loc 1 660 0
	movi.n	a8, 1
	.loc 1 661 0
	movi	a10, 0x1e0
.LVL155:
	j	.L96
.LVL156:
.L98:
	.loc 1 652 0
	movi.n	a9, 4
	.loc 1 650 0
	movi.n	a8, 1
	.loc 1 651 0
	movi	a10, 0x140
.LVL157:
	j	.L96
.LVL158:
.L99:
	.loc 1 657 0
	movi.n	a9, 2
	.loc 1 655 0
	movi.n	a8, 1
	.loc 1 656 0
	movi	a10, 0x140
.LVL159:
.L96:
	.loc 1 667 0
	s32i.n	a8, a3, 0
	s32i.n	a10, a3, 4
	s32i.n	a9, a3, 8
	s32i.n	a2, a3, 12
	.loc 1 673 0
	movi.n	a2, 1
.LVL160:
	retw.n
.LVL161:
.L97:
	.loc 1 643 0
	movi.n	a2, 0
.LVL162:
	retw.n
.LVL163:
.L100:
	.loc 1 665 0
	movi.n	a2, 0
.LVL164:
	.loc 1 674 0
	retw.n
.LFE38:
	.size	rtc_clk_cpu_freq_mhz_to_config, .-rtc_clk_cpu_freq_mhz_to_config
	.section	.rodata.str1.4
	.align	4
.LC64:
	.string	"\033[0;31mE (%d) %s: unsupported frequency configuration\033[0m\n"
	.section	.text.rtc_clk_cpu_freq_get_config,"ax",@progbits
	.literal_position
	.literal .LC60, 1072988272
	.literal .LC61, 1073111040
	.literal .LC62, 1072693308
	.literal .LC63, .LC54
	.literal .LC65, .LC64
	.align	4
	.global	rtc_clk_cpu_freq_get_config
	.type	rtc_clk_cpu_freq_get_config, @function
rtc_clk_cpu_freq_get_config:
.LFB40:
	.loc 1 702 0
.LVL165:
	entry	sp, 32
.LCFI23:
.LBB101:
.LBB102:
	.loc 1 707 0
	l32r	a3, .LC60
	memw
	l32i.n	a8, a3, 0
.LBE102:
	extui	a8, a8, 27, 2
.LVL166:
.LBE101:
	.loc 1 708 0
	beqi	a8, 1, .L103
	beqz.n	a8, .L104
	beqi	a8, 2, .L106
	j	.L110
.L104:
.LVL167:
.LBB103:
.LBB104:
	.loc 1 711 0
	l32r	a3, .LC61
	memw
	l32i.n	a3, a3, 0
.LBE104:
	extui	a3, a3, 0, 10
.LBE103:
	addi.n	a3, a3, 1
.LVL168:
	.loc 1 712 0
	call8	rtc_clk_xtal_freq_get
.LVL169:
	.loc 1 713 0
	quou	a8, a10, a3
.LVL170:
	.loc 1 710 0
	movi.n	a9, 0
	.loc 1 715 0
	j	.L105
.LVL171:
.L103:
.LBB105:
.LBB106:
.LBB107:
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 3 79 0
	l32r	a10, .LC62
	call8	esp_dport_access_reg_read
.LVL172:
.LBE107:
.LBE106:
	.loc 1 718 0
	extui	a10, a10, 0, 2
.LVL173:
	.loc 1 719 0
	beqz.n	a10, .L107
	.loc 1 723 0
	beqi	a10, 1, .L108
	.loc 1 727 0
	beqi	a10, 2, .L109
	.loc 1 732 0 discriminator 1
	call8	esp_log_timestamp
.LVL174:
	l32r	a12, .LC63
	mov.n	a11, a10
	l32r	a10, .LC65
	call8	ets_printf
.LVL175:
	.loc 1 733 0 discriminator 1
	call8	abort
.LVL176:
.L110:
.LBE105:
	.loc 1 745 0 discriminator 1
	call8	esp_log_timestamp
.LVL177:
	l32r	a12, .LC63
	mov.n	a11, a10
	l32r	a10, .LC65
	call8	ets_printf
.LVL178:
	.loc 1 746 0 discriminator 1
	call8	abort
.LVL179:
.L106:
	.loc 1 741 0
	movi.n	a8, 8
.LVL180:
	.loc 1 740 0
	movi.n	a3, 1
	.loc 1 739 0
	mov.n	a10, a8
	.loc 1 738 0
	movi.n	a9, 2
	j	.L105
.LVL181:
.L107:
.LBB108:
	.loc 1 722 0
	movi.n	a8, 0x50
	.loc 1 721 0
	movi.n	a3, 4
	.loc 1 720 0
	movi	a10, 0x140
.LVL182:
	.loc 1 717 0
	movi.n	a9, 1
	j	.L105
.LVL183:
.L108:
	.loc 1 726 0
	movi	a8, 0xa0
	.loc 1 725 0
	movi.n	a3, 2
	.loc 1 724 0
	movi	a10, 0x140
.LVL184:
	.loc 1 717 0
	movi.n	a9, 1
	j	.L105
.LVL185:
.L109:
	.loc 1 730 0
	movi	a8, 0xf0
	.loc 1 729 0
	movi.n	a3, 2
	.loc 1 728 0
	movi	a10, 0x1e0
.LVL186:
	.loc 1 717 0
	movi.n	a9, 1
.LVL187:
.L105:
.LBE108:
	.loc 1 748 0
	s32i.n	a9, a2, 0
	s32i.n	a10, a2, 4
	s32i.n	a3, a2, 8
	s32i.n	a8, a2, 12
	retw.n
.LFE40:
	.size	rtc_clk_cpu_freq_get_config, .-rtc_clk_cpu_freq_get_config
	.section	.text.rtc_clk_cpu_freq_get,"ax",@progbits
	.align	4
	.global	rtc_clk_cpu_freq_get
	.type	rtc_clk_cpu_freq_get, @function
rtc_clk_cpu_freq_get:
.LFB33:
	.loc 1 529 0
	entry	sp, 64
.LCFI24:
	.loc 1 531 0
	mov.n	a10, sp
	call8	rtc_clk_cpu_freq_get_config
.LVL188:
	.loc 1 533 0
	addi	a11, sp, 16
	l32i.n	a10, sp, 12
	call8	rtc_clk_cpu_freq_from_mhz_internal
.LVL189:
	.loc 1 535 0
	l32i.n	a2, sp, 16
	retw.n
.LFE33:
	.size	rtc_clk_cpu_freq_get, .-rtc_clk_cpu_freq_get
	.section	.text.rtc_clk_xtal_freq_update,"ax",@progbits
	.literal_position
	.literal .LC66, 1072988336
	.literal .LC67, 65537
	.align	4
	.global	rtc_clk_xtal_freq_update
	.type	rtc_clk_xtal_freq_update, @function
rtc_clk_xtal_freq_update:
.LFB43:
	.loc 1 780 0
.LVL190:
	entry	sp, 32
.LCFI25:
.LBB109:
	.loc 1 781 0
	l32r	a8, .LC66
	memw
	l32i.n	a8, a8, 0
.LBE109:
	l32r	a9, .LC67
	and	a8, a8, a9
.LVL191:
	.loc 1 782 0
	bne	a8, a9, .L113
	.loc 1 783 0
	movi.n	a8, 1
.LVL192:
	or	a2, a2, a8
.LVL193:
.L113:
.LBB110:
.LBB111:
.LBB112:
	.loc 2 36 0
	extui	a8, a2, 0, 16
	slli	a2, a2, 16
.LVL194:
	or	a2, a8, a2
.LBE112:
.LBE111:
	.loc 1 785 0
	l32r	a8, .LC66
	memw
	s32i.n	a2, a8, 0
	retw.n
.LBE110:
.LFE43:
	.size	rtc_clk_xtal_freq_update, .-rtc_clk_xtal_freq_update
	.section	.text.rtc_clk_apb_freq_update,"ax",@progbits
	.literal_position
	.literal .LC68, 1072988340
	.align	4
	.global	rtc_clk_apb_freq_update
	.type	rtc_clk_apb_freq_update, @function
rtc_clk_apb_freq_update:
.LFB44:
	.loc 1 789 0
.LVL195:
	entry	sp, 32
.LCFI26:
.LBB113:
	.loc 1 790 0
	srli	a2, a2, 12
.LVL196:
.LBB114:
.LBB115:
	.loc 2 36 0
	extui	a8, a2, 0, 16
	slli	a2, a2, 16
.LVL197:
	or	a2, a8, a2
.LBE115:
.LBE114:
	.loc 1 790 0
	l32r	a8, .LC68
	memw
	s32i.n	a2, a8, 0
	retw.n
.LBE113:
.LFE44:
	.size	rtc_clk_apb_freq_update, .-rtc_clk_apb_freq_update
	.section	.text.rtc_clk_cpu_freq_to_xtal,"ax",@progbits
	.literal_position
	.literal .LC69, 1073111040
	.literal .LC70, 1000000
	.literal .LC71, 1125899907
	.literal .LC72, 1073111044
	.literal .LC73, 1072988272
	.literal .LC74, -402653185
	.literal .LC75, 1072988284
	.literal .LC76, -14337
	.literal .LC77, 4096
	.literal .LC78, 8192
	.align	4
	.global	rtc_clk_cpu_freq_to_xtal
	.type	rtc_clk_cpu_freq_to_xtal, @function
rtc_clk_cpu_freq_to_xtal:
.LFB25:
	.loc 1 421 0
.LVL198:
	entry	sp, 32
.LCFI27:
	.loc 1 422 0
	mov.n	a10, a2
	call8	ets_update_cpu_frequency
.LVL199:
.LBB116:
.LBB117:
	.loc 1 424 0
	l32r	a10, .LC69
	memw
	l32i.n	a9, a10, 0
.LBE117:
	movi	a8, -0x400
	and	a9, a9, a8
	addi.n	a8, a3, -1
	extui	a8, a8, 0, 10
	or	a8, a8, a9
	memw
	s32i.n	a8, a10, 0
.LBE116:
.LBB118:
	.loc 1 426 0
	l32r	a10, .LC70
	mull	a10, a2, a10
	l32r	a8, .LC71
	mulsh	a8, a10, a8
	srai	a8, a8, 18
	srai	a3, a10, 31
.LVL200:
	sub	a8, a8, a3
	addi.n	a8, a8, -1
	l32r	a3, .LC72
	memw
	s32i.n	a8, a3, 0
.LBE118:
.LBB119:
.LBB120:
	.loc 1 428 0
	l32r	a8, .LC73
	memw
	l32i.n	a9, a8, 0
.LBE120:
	l32r	a3, .LC74
	and	a3, a9, a3
	memw
	s32i.n	a3, a8, 0
.LBE119:
	.loc 1 429 0
	call8	rtc_clk_apb_freq_update
.LVL201:
	.loc 1 431 0
	bgei	a2, 3, .L116
.LBB121:
.LBB122:
	.loc 1 432 0
	l32r	a8, .LC75
	memw
	l32i.n	a3, a8, 0
.LBE122:
	l32r	a2, .LC76
.LVL202:
	and	a3, a3, a2
	l32r	a2, .LC77
	or	a2, a3, a2
	memw
	s32i.n	a2, a8, 0
.LBE121:
	retw.n
.LVL203:
.L116:
.LBB123:
.LBB124:
	.loc 1 434 0
	l32r	a8, .LC75
	memw
	l32i.n	a3, a8, 0
.LBE124:
	l32r	a2, .LC76
.LVL204:
	and	a3, a3, a2
	l32r	a2, .LC78
	or	a2, a3, a2
	memw
	s32i.n	a2, a8, 0
	retw.n
.LBE123:
.LFE25:
	.size	rtc_clk_cpu_freq_to_xtal, .-rtc_clk_cpu_freq_to_xtal
	.section	.text.rtc_clk_cpu_freq_set_xtal,"ax",@progbits
	.align	4
	.global	rtc_clk_cpu_freq_set_xtal
	.type	rtc_clk_cpu_freq_set_xtal, @function
rtc_clk_cpu_freq_set_xtal:
.LFB32:
	.loc 1 520 0
	entry	sp, 32
.LCFI28:
	.loc 1 521 0
	call8	rtc_clk_xtal_freq_get
.LVL205:
	.loc 1 523 0
	movi.n	a11, 1
	call8	rtc_clk_cpu_freq_to_xtal
.LVL206:
	.loc 1 524 0
	call8	rtc_clk_wait_for_slow_cycle
.LVL207:
	.loc 1 525 0
	call8	rtc_clk_bbpll_disable
.LVL208:
	retw.n
.LFE32:
	.size	rtc_clk_cpu_freq_set_xtal, .-rtc_clk_cpu_freq_set_xtal
	.section	.rodata.str1.4
	.align	4
.LC80:
	.string	"\033[0;31mE (%d) %s: invalid frequency\033[0m\n"
	.section	.text.rtc_clk_cpu_freq_to_pll_mhz,"ax",@progbits
	.literal_position
	.literal .LC79, .LC54
	.literal .LC81, .LC80
	.literal .LC82, 1072693308
	.literal .LC83, 1072988284
	.literal .LC84, -14337
	.literal .LC85, 1072988272
	.literal .LC86, -402653185
	.literal .LC87, 134217728
	.literal .LC88, 80000000
	.align	4
	.type	rtc_clk_cpu_freq_to_pll_mhz, @function
rtc_clk_cpu_freq_to_pll_mhz:
.LFB29:
	.loc 1 482 0
.LVL209:
	entry	sp, 32
.LCFI29:
.LVL210:
	.loc 1 485 0
	movi.n	a8, 0x50
	beq	a2, a8, .L121
	.loc 1 487 0
	movi	a8, 0xa0
	beq	a2, a8, .L122
	.loc 1 489 0
	movi	a8, 0xf0
	beq	a2, a8, .L123
	.loc 1 493 0 discriminator 1
	call8	esp_log_timestamp
.LVL211:
	l32r	a12, .LC79
	mov.n	a11, a10
	l32r	a10, .LC81
	call8	ets_printf
.LVL212:
	.loc 1 494 0 discriminator 1
	call8	abort
.LVL213:
.L121:
	.loc 1 484 0
	movi.n	a10, 0
	.loc 1 483 0
	movi.n	a8, 4
	j	.L120
.L122:
	.loc 1 488 0
	movi.n	a10, 1
	.loc 1 483 0
	movi.n	a8, 4
	j	.L120
.L123:
	.loc 1 491 0
	movi.n	a10, 2
	.loc 1 490 0
	movi.n	a8, 7
.L120:
.LVL214:
	.loc 1 496 0
	l32r	a9, .LC82
	memw
	s32i.n	a10, a9, 0
.LBB125:
.LBB126:
	.loc 1 497 0
	l32r	a10, .LC83
.LVL215:
	memw
	l32i.n	a11, a10, 0
.LBE126:
	l32r	a9, .LC84
.LVL216:
	and	a9, a11, a9
	slli	a8, a8, 11
.LVL217:
	or	a8, a8, a9
	memw
	s32i.n	a8, a10, 0
.LVL218:
.LBE125:
.LBB127:
.LBB128:
	.loc 1 498 0
	l32r	a10, .LC85
	memw
	l32i.n	a9, a10, 0
.LBE128:
	l32r	a8, .LC86
	and	a9, a9, a8
	l32r	a8, .LC87
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 0
.LBE127:
	.loc 1 499 0
	l32r	a10, .LC88
	call8	rtc_clk_apb_freq_update
.LVL219:
	.loc 1 500 0
	mov.n	a10, a2
	call8	ets_update_cpu_frequency
.LVL220:
	.loc 1 501 0
	call8	rtc_clk_wait_for_slow_cycle
.LVL221:
	retw.n
.LFE29:
	.size	rtc_clk_cpu_freq_to_pll_mhz, .-rtc_clk_cpu_freq_to_pll_mhz
	.section	.text.rtc_clk_cpu_freq_to_8m,"ax",@progbits
	.literal_position
	.literal .LC89, 1072988284
	.literal .LC90, -14337
	.literal .LC91, 8192
	.literal .LC92, 1073111040
	.literal .LC93, 1072988272
	.literal .LC94, -402653185
	.literal .LC95, 268435456
	.literal .LC96, 8500000
	.align	4
	.type	rtc_clk_cpu_freq_to_8m, @function
rtc_clk_cpu_freq_to_8m:
.LFB26:
	.loc 1 439 0
	entry	sp, 32
.LCFI30:
	.loc 1 440 0
	movi.n	a10, 8
	call8	ets_update_cpu_frequency
.LVL222:
.LBB129:
.LBB130:
	.loc 1 441 0
	l32r	a10, .LC89
	memw
	l32i.n	a9, a10, 0
.LBE130:
	l32r	a8, .LC90
	and	a9, a9, a8
	l32r	a8, .LC91
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 0
.LBE129:
.LBB131:
.LBB132:
	.loc 1 442 0
	l32r	a9, .LC92
	memw
	l32i.n	a10, a9, 0
.LBE132:
	movi	a8, -0x400
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE131:
.LBB133:
.LBB134:
	.loc 1 443 0
	l32r	a10, .LC93
	memw
	l32i.n	a9, a10, 0
.LBE134:
	l32r	a8, .LC94
	and	a9, a9, a8
	l32r	a8, .LC95
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 0
.LBE133:
	.loc 1 444 0
	l32r	a10, .LC96
	call8	rtc_clk_apb_freq_update
.LVL223:
	retw.n
.LFE26:
	.size	rtc_clk_cpu_freq_to_8m, .-rtc_clk_cpu_freq_to_8m
	.section	.text.rtc_clk_cpu_freq_set_config,"ax",@progbits
	.literal_position
	.literal .LC97, 1072988272
	.align	4
	.global	rtc_clk_cpu_freq_set_config
	.type	rtc_clk_cpu_freq_set_config, @function
rtc_clk_cpu_freq_set_config:
.LFB39:
	.loc 1 677 0
.LVL224:
	entry	sp, 32
.LCFI31:
	.loc 1 678 0
	call8	rtc_clk_xtal_freq_get
.LVL225:
.LBB135:
.LBB136:
	.loc 1 679 0
	l32r	a3, .LC97
	memw
	l32i.n	a3, a3, 0
.LBE136:
	extui	a3, a3, 27, 2
.LVL226:
.LBE135:
	.loc 1 680 0
	beqz.n	a3, .L126
	.loc 1 681 0
	movi.n	a11, 1
	call8	rtc_clk_cpu_freq_to_xtal
.LVL227:
	.loc 1 682 0
	call8	rtc_clk_wait_for_slow_cycle
.LVL228:
.L126:
	.loc 1 684 0
	bnei	a3, 1, .L127
	.loc 1 685 0
	call8	rtc_clk_bbpll_disable
.LVL229:
.L127:
	.loc 1 687 0
	l32i.n	a3, a2, 0
.LVL230:
	bnez.n	a3, .L128
	.loc 1 688 0
	l32i.n	a11, a2, 8
	bltui	a11, 2, .L125
	.loc 1 689 0
	l32i.n	a10, a2, 12
	call8	rtc_clk_cpu_freq_to_xtal
.LVL231:
	retw.n
.L128:
	.loc 1 691 0
	bnei	a3, 1, .L130
	.loc 1 692 0
	call8	rtc_clk_bbpll_enable
.LVL232:
	.loc 1 693 0
	call8	rtc_clk_wait_for_slow_cycle
.LVL233:
	.loc 1 694 0
	call8	rtc_clk_xtal_freq_get
.LVL234:
	l32i.n	a11, a2, 4
	call8	rtc_clk_bbpll_configure
.LVL235:
	.loc 1 695 0
	l32i.n	a10, a2, 12
	call8	rtc_clk_cpu_freq_to_pll_mhz
.LVL236:
	retw.n
.L130:
	.loc 1 696 0
	bnei	a3, 2, .L125
	.loc 1 697 0
	call8	rtc_clk_cpu_freq_to_8m
.LVL237:
.L125:
	retw.n
.LFE39:
	.size	rtc_clk_cpu_freq_set_config, .-rtc_clk_cpu_freq_set_config
	.section	.text.rtc_clk_cpu_freq_set,"ax",@progbits
	.align	4
	.global	rtc_clk_cpu_freq_set
	.type	rtc_clk_cpu_freq_set, @function
rtc_clk_cpu_freq_set:
.LFB30:
	.loc 1 506 0
.LVL238:
	entry	sp, 48
.LCFI32:
	.loc 1 508 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	rtc_clk_cpu_freq_to_config
.LVL239:
	.loc 1 509 0
	mov.n	a10, sp
	call8	rtc_clk_cpu_freq_set_config
.LVL240:
	retw.n
.LFE30:
	.size	rtc_clk_cpu_freq_set, .-rtc_clk_cpu_freq_set
	.section	.text.rtc_clk_cpu_freq_set_config_fast,"ax",@progbits
	.literal_position
	.literal .LC98, s_cur_pll_freq
	.align	4
	.global	rtc_clk_cpu_freq_set_config_fast
	.type	rtc_clk_cpu_freq_set_config_fast, @function
rtc_clk_cpu_freq_set_config_fast:
.LFB41:
	.loc 1 757 0
.LVL241:
	entry	sp, 32
.LCFI33:
	.loc 1 758 0
	l32i.n	a8, a2, 0
	bnez.n	a8, .L133
	.loc 1 759 0
	l32i.n	a11, a2, 8
	l32i.n	a10, a2, 12
	call8	rtc_clk_cpu_freq_to_xtal
.LVL242:
	retw.n
.L133:
	.loc 1 760 0
	bnei	a8, 1, .L135
	.loc 1 761 0 discriminator 1
	l32i.n	a9, a2, 4
	l32r	a8, .LC98
	l32i.n	a8, a8, 0
	.loc 1 760 0 discriminator 1
	bne	a9, a8, .L135
	.loc 1 762 0
	l32i.n	a10, a2, 12
	call8	rtc_clk_cpu_freq_to_pll_mhz
.LVL243:
	retw.n
.L135:
	.loc 1 765 0
	mov.n	a10, a2
	call8	rtc_clk_cpu_freq_set_config
.LVL244:
	retw.n
.LFE41:
	.size	rtc_clk_cpu_freq_set_config_fast, .-rtc_clk_cpu_freq_set_config_fast
	.section	.text.rtc_clk_cpu_freq_set_fast,"ax",@progbits
	.align	4
	.global	rtc_clk_cpu_freq_set_fast
	.type	rtc_clk_cpu_freq_set_fast, @function
rtc_clk_cpu_freq_set_fast:
.LFB31:
	.loc 1 513 0
.LVL245:
	entry	sp, 48
.LCFI34:
	.loc 1 515 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	rtc_clk_cpu_freq_to_config
.LVL246:
	.loc 1 516 0
	mov.n	a10, sp
	call8	rtc_clk_cpu_freq_set_config_fast
.LVL247:
	retw.n
.LFE31:
	.size	rtc_clk_cpu_freq_set_fast, .-rtc_clk_cpu_freq_set_fast
	.section	.text.rtc_clk_apb_freq_get,"ax",@progbits
	.literal_position
	.literal .LC99, 1072988340
	.literal .LC100, 500000
	.literal .LC101, 1125899907
	.literal .LC102, 1000000
	.align	4
	.global	rtc_clk_apb_freq_get
	.type	rtc_clk_apb_freq_get, @function
rtc_clk_apb_freq_get:
.LFB45:
	.loc 1 794 0
	entry	sp, 32
.LCFI35:
.LBB137:
	.loc 1 795 0
	l32r	a2, .LC99
	memw
	l32i.n	a8, a2, 0
.LVL248:
.LBE137:
.LBB138:
.LBB139:
	.loc 2 32 0
	extui	a8, a8, 0, 16
.LVL249:
.LBE139:
.LBE138:
	.loc 1 795 0
	slli	a8, a8, 12
.LVL250:
	.loc 1 797 0
	l32r	a2, .LC100
	add.n	a8, a8, a2
.LVL251:
	.loc 1 798 0
	l32r	a9, .LC101
	muluh	a8, a8, a9
.LVL252:
	extui	a8, a8, 18, 14
.LVL253:
	.loc 1 800 0
	l32r	a2, .LC102
	mull	a2, a8, a2
	retw.n
.LFE45:
	.size	rtc_clk_apb_freq_get, .-rtc_clk_apb_freq_get
	.section	.bss.s_cur_pll_freq,"aw",@nobits
	.align	4
	.type	s_cur_pll_freq, @object
	.size	s_cur_pll_freq, 4
s_cur_pll_freq:
	.zero	4
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI0-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI1-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI2-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI3-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI4-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI5-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI6-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI7-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI8-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI9-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI10-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI11-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI12-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI13-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI14-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI15-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI16-.LFB24
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI17-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI18-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI19-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI20-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI21-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI22-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI23-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI24-.LFB33
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI25-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI26-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI27-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI28-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI29-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI30-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI31-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI32-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI33-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI34-.LFB31
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI35-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE70:
	.text
.Letext0:
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/rtc.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/i2c_rtc_clk.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/gpio.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_dport_access.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1699
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF165
	.byte	0xc
	.4byte	.LASF166
	.4byte	.LASF167
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x65
	.4byte	0x108
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
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x40
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x80
	.uleb128 0x9
	.4byte	.LASF24
	.2byte	0x100
	.uleb128 0x9
	.4byte	.LASF25
	.2byte	0x200
	.uleb128 0x9
	.4byte	.LASF26
	.2byte	0x400
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x83
	.4byte	0x139
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
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF33
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x7
	.byte	0x3c
	.4byte	0x165
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x7
	.byte	0x41
	.4byte	0x140
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x7
	.byte	0x46
	.4byte	0x19b
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x7
	.byte	0x4c
	.4byte	0x170
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x7
	.byte	0x51
	.4byte	0x1cb
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x7
	.byte	0x56
	.4byte	0x1a6
	.uleb128 0xa
	.byte	0x10
	.byte	0x7
	.byte	0x5b
	.4byte	0x20f
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x7
	.byte	0x5c
	.4byte	0x1cb
	.byte	0
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x7
	.byte	0x5d
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xc
	.string	"div"
	.byte	0x7
	.byte	0x5e
	.4byte	0x7e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x7
	.byte	0x5f
	.4byte	0x7e
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x7
	.byte	0x60
	.4byte	0x1d6
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x7
	.byte	0x65
	.4byte	0x239
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x7
	.byte	0x69
	.4byte	0x21a
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x7
	.byte	0x6e
	.4byte	0x25d
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x7
	.byte	0x71
	.4byte	0x244
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5e
	.byte	0x8
	.byte	0x1f
	.4byte	0x299
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF65
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF66
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x2
	.byte	0x19
	.4byte	0x139
	.byte	0x3
	.4byte	0x2b5
	.uleb128 0xe
	.string	"val"
	.byte	0x2
	.byte	0x19
	.4byte	0x7e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x2
	.byte	0x1f
	.4byte	0x7e
	.byte	0x3
	.4byte	0x2d1
	.uleb128 0xe
	.string	"val"
	.byte	0x2
	.byte	0x1f
	.4byte	0x7e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0x3
	.byte	0x4a
	.4byte	0x7e
	.byte	0x3
	.4byte	0x2ed
	.uleb128 0xe
	.string	"reg"
	.byte	0x3
	.byte	0x4a
	.4byte	0x7e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x2
	.byte	0x23
	.4byte	0x7e
	.byte	0x3
	.4byte	0x309
	.uleb128 0xe
	.string	"val"
	.byte	0x2
	.byte	0x23
	.4byte	0x7e
	.byte	0
	.uleb128 0xf
	.4byte	.LASF141
	.byte	0x1
	.byte	0x72
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x355
	.uleb128 0x10
	.string	"dac"
	.byte	0x1
	.byte	0x72
	.4byte	0x4c
	.4byte	.LLST0
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0x1
	.byte	0x72
	.4byte	0x4c
	.4byte	.LLST1
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0x1
	.byte	0x72
	.4byte	0x4c
	.4byte	.LLST2
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0x365
	.byte	0
	.uleb128 0x13
	.4byte	0x9e
	.4byte	0x365
	.uleb128 0x14
	.4byte	0x90
	.byte	0x19
	.byte	0
	.uleb128 0x6
	.4byte	0x355
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1bf
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x39a
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0x3aa
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x7e
	.4byte	.LLST3
	.byte	0
	.uleb128 0x13
	.4byte	0x9e
	.4byte	0x3aa
	.uleb128 0x14
	.4byte	0x90
	.byte	0x15
	.byte	0
	.uleb128 0x6
	.4byte	0x39a
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1ce
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x47c
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0x48c
	.uleb128 0x17
	.4byte	.LVL6
	.4byte	0x1615
	.4byte	0x3f1
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x17
	.4byte	.LVL7
	.4byte	0x1615
	.4byte	0x415
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x17
	.4byte	.LVL8
	.4byte	0x1615
	.4byte	0x439
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x9a
	.byte	0
	.uleb128 0x17
	.4byte	.LVL9
	.4byte	0x1615
	.4byte	0x45c
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL10
	.4byte	0x1615
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x9e
	.4byte	0x48c
	.uleb128 0x14
	.4byte	0x90
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.4byte	0x47c
	.uleb128 0x1a
	.4byte	.LASF77
	.byte	0x1
	.byte	0x94
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d8
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x1
	.byte	0x94
	.4byte	0x139
	.4byte	.LLST4
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0x4e8
	.uleb128 0x19
	.4byte	.LVL12
	.4byte	0x309
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x9e
	.4byte	0x4e8
	.uleb128 0x14
	.4byte	0x90
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.4byte	0x4d8
	.uleb128 0x1b
	.4byte	.LASF139
	.byte	0x1
	.byte	0xa4
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51c
	.uleb128 0x19
	.4byte	.LVL14
	.4byte	0x309
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF78
	.byte	0x1
	.byte	0xad
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a1
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0x1
	.byte	0xad
	.4byte	0x7e
	.4byte	.LLST5
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0x6a1
	.uleb128 0x1c
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.4byte	0x674
	.uleb128 0x1d
	.4byte	.LASF81
	.byte	0x1
	.byte	0xb0
	.4byte	0x6a6
	.4byte	.LLST6
	.uleb128 0x1d
	.4byte	.LASF82
	.byte	0x1
	.byte	0xb1
	.4byte	0x6a6
	.4byte	.LLST7
	.uleb128 0x1d
	.4byte	.LASF83
	.byte	0x1
	.byte	0xb2
	.4byte	0x6a6
	.4byte	.LLST8
	.uleb128 0x1d
	.4byte	.LASF84
	.byte	0x1
	.byte	0xb3
	.4byte	0x6a6
	.4byte	.LLST9
	.uleb128 0x1d
	.4byte	.LASF85
	.byte	0x1
	.byte	0xb9
	.4byte	0x6a6
	.4byte	.LLST10
	.uleb128 0x17
	.4byte	.LVL17
	.4byte	0x1620
	.4byte	0x5b5
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x17
	.4byte	.LVL18
	.4byte	0x1620
	.4byte	0x5c9
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.byte	0
	.uleb128 0x17
	.4byte	.LVL19
	.4byte	0x162b
	.4byte	0x5eb
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL20
	.4byte	0x162b
	.4byte	0x60d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL21
	.4byte	0x1636
	.4byte	0x620
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x17
	.4byte	.LVL22
	.4byte	0x162b
	.4byte	0x642
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL23
	.4byte	0x1636
	.4byte	0x655
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x19
	.4byte	.LVL25
	.4byte	0x162b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL27
	.4byte	0x1636
	.4byte	0x687
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x19
	.4byte	.LVL28
	.4byte	0x309
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x39a
	.uleb128 0x6
	.4byte	0x7e
	.uleb128 0x1e
	.4byte	.LASF86
	.byte	0x1
	.byte	0xcc
	.4byte	0x139
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ce
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0x6de
	.byte	0
	.uleb128 0x13
	.4byte	0x9e
	.4byte	0x6de
	.uleb128 0x14
	.4byte	0x90
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.4byte	0x6ce
	.uleb128 0x1a
	.4byte	.LASF87
	.byte	0x1
	.byte	0xd1
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x730
	.uleb128 0x11
	.4byte	.LASF88
	.byte	0x1
	.byte	0xd1
	.4byte	0x139
	.4byte	.LLST11
	.uleb128 0x11
	.4byte	.LASF89
	.byte	0x1
	.byte	0xd1
	.4byte	0x139
	.4byte	.LLST12
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0x740
	.uleb128 0x19
	.4byte	.LVL32
	.4byte	0x1636
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x9e
	.4byte	0x740
	.uleb128 0x14
	.4byte	0x90
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.4byte	0x730
	.uleb128 0x1e
	.4byte	.LASF90
	.byte	0x1
	.byte	0xe3
	.4byte	0x139
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x768
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0x768
	.byte	0
	.uleb128 0x6
	.4byte	0x4d8
	.uleb128 0x1e
	.4byte	.LASF91
	.byte	0x1
	.byte	0xe8
	.4byte	0x139
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x790
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0x7a0
	.byte	0
	.uleb128 0x13
	.4byte	0x9e
	.4byte	0x7a0
	.uleb128 0x14
	.4byte	0x90
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.4byte	0x790
	.uleb128 0x1a
	.4byte	.LASF92
	.byte	0x1
	.byte	0xed
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9df
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x1
	.byte	0xed
	.4byte	0x139
	.4byte	.LLST13
	.uleb128 0x11
	.4byte	.LASF93
	.byte	0x1
	.byte	0xed
	.4byte	0x7e
	.4byte	.LLST14
	.uleb128 0x11
	.4byte	.LASF94
	.byte	0x1
	.byte	0xed
	.4byte	0x7e
	.4byte	.LLST15
	.uleb128 0x1f
	.4byte	.LASF95
	.byte	0x1
	.byte	0xed
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1f
	.4byte	.LASF96
	.byte	0x1
	.byte	0xed
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0x9df
	.uleb128 0x20
	.4byte	.LBB79
	.4byte	.LBE79-.LBB79
	.uleb128 0x1d
	.4byte	.LASF97
	.byte	0x1
	.byte	0xfa
	.4byte	0x73
	.4byte	.LLST16
	.uleb128 0x1d
	.4byte	.LASF98
	.byte	0x1
	.byte	0xfb
	.4byte	0x7e
	.4byte	.LLST17
	.uleb128 0x17
	.4byte	.LVL42
	.4byte	0x1642
	.4byte	0x862
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x17
	.4byte	.LVL43
	.4byte	0x1642
	.4byte	0x893
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x17
	.4byte	.LVL44
	.4byte	0x1642
	.4byte	0x8c4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x17
	.4byte	.LVL45
	.4byte	0x1615
	.4byte	0x8e7
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x17
	.4byte	.LVL46
	.4byte	0x1615
	.4byte	0x90b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL47
	.4byte	0x1642
	.4byte	0x93c
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x17
	.4byte	.LVL48
	.4byte	0x1615
	.4byte	0x95f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x17
	.4byte	.LVL49
	.4byte	0x1615
	.4byte	0x983
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x3f
	.byte	0
	.uleb128 0x17
	.4byte	.LVL50
	.4byte	0x1615
	.4byte	0x9a6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x4f
	.byte	0
	.uleb128 0x17
	.4byte	.LVL51
	.4byte	0x1636
	.4byte	0x9b9
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x19
	.4byte	.LVL52
	.4byte	0x164d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x6ce
	.uleb128 0x21
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x115
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa25
	.uleb128 0x22
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x115
	.4byte	0x239
	.4byte	.LLST18
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0xa25
	.uleb128 0x19
	.4byte	.LVL58
	.4byte	0x1636
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x12c
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x39a
	.uleb128 0x23
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x11f
	.4byte	0x239
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa4e
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0xa4e
	.byte	0
	.uleb128 0x6
	.4byte	0x39a
	.uleb128 0x23
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x124
	.4byte	0x7e
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa77
	.uleb128 0x24
	.4byte	.LVL59
	.4byte	0xa2a
	.byte	0
	.uleb128 0x21
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x12e
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab6
	.uleb128 0x22
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x12e
	.4byte	0x25d
	.4byte	.LLST19
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0xab6
	.uleb128 0x19
	.4byte	.LVL62
	.4byte	0x1636
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x39a
	.uleb128 0x23
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x134
	.4byte	0x25d
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xadf
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0xadf
	.byte	0
	.uleb128 0x6
	.4byte	0x39a
	.uleb128 0x21
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x139
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcd8
	.uleb128 0x22
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x139
	.4byte	0x165
	.4byte	.LLST20
	.uleb128 0x25
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x139
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x13b
	.4byte	0x73
	.4byte	.LLST21
	.uleb128 0x16
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x13c
	.4byte	0x73
	.4byte	.LLST22
	.uleb128 0x16
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x13d
	.4byte	0x73
	.4byte	.LLST23
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x13e
	.4byte	0x73
	.4byte	.LLST24
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x13f
	.4byte	0x73
	.4byte	.LLST25
	.uleb128 0x26
	.string	"bw"
	.byte	0x1
	.2byte	0x140
	.4byte	0x73
	.4byte	.LLST26
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0xce8
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x195
	.4byte	0x73
	.4byte	.LLST27
	.uleb128 0x27
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x196
	.4byte	0x73
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x27
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x197
	.4byte	0x73
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x19b
	.4byte	0x7e
	.4byte	.LLST28
	.uleb128 0x17
	.4byte	.LVL72
	.4byte	0x1615
	.4byte	0xbe0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x43
	.byte	0
	.uleb128 0x17
	.4byte	.LVL73
	.4byte	0x1615
	.4byte	0xc04
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x84
	.byte	0
	.uleb128 0x17
	.4byte	.LVL75
	.4byte	0x1636
	.4byte	0xc17
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x17
	.4byte	.LVL84
	.4byte	0x1615
	.4byte	0xc3b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0xc3
	.byte	0
	.uleb128 0x17
	.4byte	.LVL85
	.4byte	0x1615
	.4byte	0xc5f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x74
	.byte	0
	.uleb128 0x17
	.4byte	.LVL91
	.4byte	0x1615
	.4byte	0xc7d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x17
	.4byte	.LVL92
	.4byte	0x1615
	.4byte	0xca1
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL93
	.4byte	0x1615
	.4byte	0xcc5
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL94
	.4byte	0xa2a
	.uleb128 0x24
	.4byte	.LVL96
	.4byte	0x1636
	.byte	0
	.uleb128 0x13
	.4byte	0x9e
	.4byte	0xce8
	.uleb128 0x14
	.4byte	0x90
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.4byte	0xcd8
	.uleb128 0x23
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x301
	.4byte	0x165
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd55
	.uleb128 0x27
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x304
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0xd55
	.uleb128 0x28
	.4byte	0x299
	.4byte	.LBB97
	.4byte	.LBE97-.LBB97
	.byte	0x1
	.2byte	0x305
	.4byte	0xd3a
	.uleb128 0x29
	.4byte	0x2a9
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x2a
	.4byte	0x2b5
	.4byte	.LBB99
	.4byte	.LBE99-.LBB99
	.byte	0x1
	.2byte	0x308
	.uleb128 0x2b
	.4byte	0x2c5
	.4byte	.LLST29
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x39a
	.uleb128 0x2c
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x22c
	.4byte	0x139
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd9c
	.uleb128 0x2d
	.string	"mhz"
	.byte	0x1
	.2byte	0x22c
	.4byte	0x4c
	.4byte	.LLST30
	.uleb128 0x25
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x22c
	.4byte	0xd9c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LVL107
	.4byte	0xced
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x19b
	.uleb128 0x2e
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x23e
	.4byte	0x139
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf1
	.uleb128 0x2d
	.string	"mhz"
	.byte	0x1
	.2byte	0x23e
	.4byte	0x4c
	.4byte	.LLST31
	.uleb128 0x25
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x23e
	.4byte	0xd9c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LVL114
	.4byte	0xd5a
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x219
	.4byte	0x7e
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe4a
	.uleb128 0x22
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x219
	.4byte	0x19b
	.4byte	.LLST32
	.uleb128 0x24
	.4byte	.LVL119
	.4byte	0xced
	.uleb128 0x24
	.4byte	.LVL126
	.4byte	0x1658
	.uleb128 0x19
	.4byte	.LVL127
	.4byte	0x1663
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x243
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xefa
	.uleb128 0x22
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x243
	.4byte	0x19b
	.4byte	.LLST33
	.uleb128 0x25
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x243
	.4byte	0xefa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x245
	.4byte	0x7e
	.4byte	.LLST34
	.uleb128 0x16
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x246
	.4byte	0x1cb
	.4byte	.LLST35
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x247
	.4byte	0x7e
	.4byte	.LLST36
	.uleb128 0x16
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x248
	.4byte	0x7e
	.4byte	.LLST37
	.uleb128 0x24
	.4byte	.LVL132
	.4byte	0xced
	.uleb128 0x24
	.4byte	.LVL139
	.4byte	0x1658
	.uleb128 0x17
	.4byte	.LVL140
	.4byte	0x1663
	.4byte	0xef0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.byte	0
	.uleb128 0x24
	.4byte	.LVL141
	.4byte	0x166e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x20f
	.uleb128 0x2e
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x276
	.4byte	0x139
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf92
	.uleb128 0x22
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x276
	.4byte	0x7e
	.4byte	.LLST38
	.uleb128 0x25
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x276
	.4byte	0xefa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x278
	.4byte	0x7e
	.4byte	.LLST39
	.uleb128 0x16
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x279
	.4byte	0x1cb
	.4byte	.LLST40
	.uleb128 0x16
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x27a
	.4byte	0x7e
	.4byte	.LLST41
	.uleb128 0x16
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x27b
	.4byte	0x7e
	.4byte	.LLST42
	.uleb128 0x16
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x27d
	.4byte	0x7e
	.4byte	.LLST43
	.uleb128 0x24
	.4byte	.LVL149
	.4byte	0xced
	.byte	0
	.uleb128 0x21
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x2bd
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10c8
	.uleb128 0x25
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x2bd
	.4byte	0xefa
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x2bf
	.4byte	0x1cb
	.4byte	.LLST44
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x2c0
	.4byte	0x7e
	.4byte	.LLST45
	.uleb128 0x26
	.string	"div"
	.byte	0x1
	.2byte	0x2c1
	.4byte	0x7e
	.4byte	.LLST46
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x2c2
	.4byte	0x7e
	.4byte	.LLST47
	.uleb128 0x16
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x2c3
	.4byte	0x7e
	.4byte	.LLST48
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0x10d8
	.uleb128 0x2f
	.4byte	.Ldebug_ranges0+0
	.4byte	0x108c
	.uleb128 0x16
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x2ce
	.4byte	0x7e
	.4byte	.LLST49
	.uleb128 0x28
	.4byte	0x2d1
	.4byte	.LBB106
	.4byte	.LBE106-.LBB106
	.byte	0x1
	.2byte	0x2ce
	.4byte	0x1059
	.uleb128 0x2b
	.4byte	0x2e1
	.4byte	.LLST50
	.uleb128 0x19
	.4byte	.LVL172
	.4byte	0x1679
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff0003c
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL174
	.4byte	0x1658
	.uleb128 0x17
	.4byte	.LVL175
	.4byte	0x1663
	.4byte	0x1082
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.byte	0
	.uleb128 0x24
	.4byte	.LVL176
	.4byte	0x166e
	.byte	0
	.uleb128 0x24
	.4byte	.LVL169
	.4byte	0xced
	.uleb128 0x24
	.4byte	.LVL177
	.4byte	0x1658
	.uleb128 0x17
	.4byte	.LVL178
	.4byte	0x1663
	.4byte	0x10be
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.byte	0
	.uleb128 0x24
	.4byte	.LVL179
	.4byte	0x166e
	.byte	0
	.uleb128 0x13
	.4byte	0x9e
	.4byte	0x10d8
	.uleb128 0x14
	.4byte	0x90
	.byte	0x1b
	.byte	0
	.uleb128 0x6
	.4byte	0x10c8
	.uleb128 0x23
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x210
	.4byte	0x19b
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x113a
	.uleb128 0x27
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x212
	.4byte	0x20f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x214
	.4byte	0x19b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.4byte	.LVL188
	.4byte	0xf92
	.4byte	0x1129
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x19
	.4byte	.LVL189
	.4byte	0xd5a
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x30b
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1194
	.uleb128 0x22
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x30b
	.4byte	0x165
	.4byte	.LLST51
	.uleb128 0x26
	.string	"reg"
	.byte	0x1
	.2byte	0x30d
	.4byte	0x7e
	.4byte	.LLST52
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0x11a4
	.uleb128 0x2a
	.4byte	0x2ed
	.4byte	.LBB111
	.4byte	.LBE111-.LBB111
	.byte	0x1
	.2byte	0x311
	.uleb128 0x2b
	.4byte	0x2fd
	.4byte	.LLST53
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x9e
	.4byte	0x11a4
	.uleb128 0x14
	.4byte	0x90
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.4byte	0x1194
	.uleb128 0x21
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x314
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11f3
	.uleb128 0x22
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x314
	.4byte	0x7e
	.4byte	.LLST54
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0x11f3
	.uleb128 0x2a
	.4byte	0x2ed
	.4byte	.LBB114
	.4byte	.LBE114-.LBB114
	.byte	0x1
	.2byte	0x316
	.uleb128 0x2b
	.4byte	0x2fd
	.4byte	.LLST55
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0xcd8
	.uleb128 0x21
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x1a4
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1262
	.uleb128 0x22
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x1a4
	.4byte	0x4c
	.4byte	.LLST56
	.uleb128 0x2d
	.string	"div"
	.byte	0x1
	.2byte	0x1a4
	.4byte	0x4c
	.4byte	.LLST57
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0x1262
	.uleb128 0x17
	.4byte	.LVL199
	.4byte	0x1684
	.4byte	0x124b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL201
	.4byte	0x11a9
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0xc
	.4byte	0xf4240
	.byte	0x1e
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x1194
	.uleb128 0x30
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x207
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12bc
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x209
	.4byte	0x4c
	.4byte	.LLST58
	.uleb128 0x24
	.4byte	.LVL205
	.4byte	0xced
	.uleb128 0x17
	.4byte	.LVL206
	.4byte	0x11f8
	.4byte	0x12a9
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x24
	.4byte	.LVL207
	.4byte	0x1690
	.uleb128 0x24
	.4byte	.LVL208
	.4byte	0x36a
	.byte	0
	.uleb128 0x31
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x1e1
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1370
	.uleb128 0x25
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x1e1
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x4c
	.4byte	.LLST59
	.uleb128 0x16
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x4c
	.4byte	.LLST60
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0x1370
	.uleb128 0x24
	.4byte	.LVL211
	.4byte	0x1658
	.uleb128 0x17
	.4byte	.LVL212
	.4byte	0x1663
	.4byte	0x1332
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC80
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.byte	0
	.uleb128 0x24
	.4byte	.LVL213
	.4byte	0x166e
	.uleb128 0x17
	.4byte	.LVL219
	.4byte	0x11a9
	.4byte	0x1352
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x4c4b400
	.byte	0
	.uleb128 0x17
	.4byte	.LVL220
	.4byte	0x1684
	.4byte	0x1366
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL221
	.4byte	0x1690
	.byte	0
	.uleb128 0x6
	.4byte	0x10c8
	.uleb128 0x15
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x1b6
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13bb
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0x13bb
	.uleb128 0x17
	.4byte	.LVL222
	.4byte	0x1684
	.4byte	0x13a7
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x19
	.4byte	.LVL223
	.4byte	0x11a9
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x81b320
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x790
	.uleb128 0x21
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x2a4
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x147b
	.uleb128 0x25
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x2a4
	.4byte	0x147b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x2a6
	.4byte	0x165
	.4byte	.LLST61
	.uleb128 0x16
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x2a7
	.4byte	0x7e
	.4byte	.LLST62
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0x1486
	.uleb128 0x24
	.4byte	.LVL225
	.4byte	0xced
	.uleb128 0x17
	.4byte	.LVL227
	.4byte	0x11f8
	.4byte	0x1429
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x24
	.4byte	.LVL228
	.4byte	0x1690
	.uleb128 0x24
	.4byte	.LVL229
	.4byte	0x36a
	.uleb128 0x24
	.4byte	.LVL231
	.4byte	0x11f8
	.uleb128 0x24
	.4byte	.LVL232
	.4byte	0x3af
	.uleb128 0x24
	.4byte	.LVL233
	.4byte	0x1690
	.uleb128 0x24
	.4byte	.LVL234
	.4byte	0xced
	.uleb128 0x24
	.4byte	.LVL235
	.4byte	0xae4
	.uleb128 0x24
	.4byte	.LVL236
	.4byte	0x12bc
	.uleb128 0x24
	.4byte	.LVL237
	.4byte	0x1375
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1481
	.uleb128 0x6
	.4byte	0x20f
	.uleb128 0x6
	.4byte	0x10c8
	.uleb128 0x21
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x1f9
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14e9
	.uleb128 0x25
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x19b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x27
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x20f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.4byte	.LVL239
	.4byte	0xe4a
	.4byte	0x14d8
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x19
	.4byte	.LVL240
	.4byte	0x13c0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x2f4
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1530
	.uleb128 0x25
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x2f4
	.4byte	0x147b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x24
	.4byte	.LVL242
	.4byte	0x11f8
	.uleb128 0x24
	.4byte	.LVL243
	.4byte	0x12bc
	.uleb128 0x19
	.4byte	.LVL244
	.4byte	0x13c0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x200
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x158e
	.uleb128 0x25
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x200
	.4byte	0x19b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x27
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x202
	.4byte	0x20f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.4byte	.LVL246
	.4byte	0xe4a
	.4byte	0x157d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x19
	.4byte	.LVL247
	.4byte	0x14e9
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x319
	.4byte	0x7e
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15e8
	.uleb128 0x16
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x31b
	.4byte	0x7e
	.4byte	.LLST63
	.uleb128 0x12
	.4byte	.LASF73
	.4byte	0x15e8
	.uleb128 0x32
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x31e
	.4byte	0x7e
	.uleb128 0x2a
	.4byte	0x2b5
	.4byte	.LBB138
	.4byte	.LBE138-.LBB138
	.byte	0x1
	.2byte	0x31b
	.uleb128 0x2b
	.4byte	0x2c5
	.4byte	.LLST64
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x47c
	.uleb128 0x33
	.4byte	.LASF152
	.byte	0x1
	.byte	0x6e
	.4byte	0x4c
	.uleb128 0x5
	.byte	0x3
	.4byte	s_cur_pll_freq
	.uleb128 0x34
	.string	"TAG"
	.byte	0x1
	.byte	0x70
	.4byte	0x1610
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC54
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xa5
	.uleb128 0x35
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0x9
	.byte	0x20
	.uleb128 0x35
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0xa
	.byte	0xf6
	.uleb128 0x35
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0xa
	.byte	0x70
	.uleb128 0x36
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0xb
	.2byte	0x17f
	.uleb128 0x35
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0x9
	.byte	0x21
	.uleb128 0x35
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0x9
	.byte	0x1f
	.uleb128 0x35
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0x8
	.byte	0x57
	.uleb128 0x35
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0xb
	.byte	0xde
	.uleb128 0x35
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0xc
	.byte	0x47
	.uleb128 0x35
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0xd
	.byte	0x1e
	.uleb128 0x36
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0xb
	.2byte	0x189
	.uleb128 0x36
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0x7
	.2byte	0x215
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x10
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
	.uleb128 0x17
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
	.uleb128 0x5
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x22
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x9
	.byte	0xec
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL16
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x8
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL16
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL19
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL33
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL33
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL34
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x8
	.byte	0x49
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x30
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x30
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL65
	.4byte	.LVL69
	.2byte	0x3
	.byte	0x9
	.byte	0xe0
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x3
	.byte	0x9
	.byte	0x90
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x3
	.byte	0x9
	.byte	0xe0
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL65
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL65
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL77
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LFE24
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL87
	.4byte	.LVL90
	.2byte	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL95
	.4byte	.LVL96-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x11
	.sleb128 -65538
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL131
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL134
	.4byte	.LVL136
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL146
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL132
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x4
	.byte	0xa
	.2byte	0x1e0
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL132
	.4byte	.LVL136
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL147
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL133
	.4byte	.LVL136
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x3
	.byte	0x8
	.byte	0xf0
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL148
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL152
	.4byte	.LVL154
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL159
	.4byte	.LVL161
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL164
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL159
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL159
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL150
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL159
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL151
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x2
	.byte	0x73
	.sleb128 12
	.4byte	.LVL161
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL149
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL161
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL167
	.4byte	.LVL171
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL171
	.4byte	.LVL176
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL181
	.4byte	.LVL187
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL187
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL169
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL187
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL168
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL187
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL170
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL187
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL166
	.4byte	.LVL169-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL171
	.4byte	.LVL172-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL176
	.4byte	.LVL177-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL173
	.4byte	.LVL174-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL171
	.4byte	.LVL176
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0003c
	.byte	0x9f
	.4byte	.LVL181
	.4byte	.LVL187
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0003c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL190
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL196
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL196
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL197
	.4byte	.LFE44
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL198
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL204
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL198
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL200
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL205
	.4byte	.LVL206-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL210
	.4byte	.LVL214
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL214
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL210
	.4byte	.LVL214
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL214
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL215
	.4byte	.LVL216
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LVL216
	.4byte	.LVL218
	.2byte	0x5
	.byte	0xc
	.4byte	0x3ff0003c
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL225
	.4byte	.LVL227-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL226
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL250
	.4byte	.LVL252
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x134
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB105
	.4byte	.LBE105
	.4byte	.LBB108
	.4byte	.LBE108
	.4byte	0
	.4byte	0
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF151:
	.string	"freq_hz"
.LASF17:
	.string	"EXT_EVENT1_TRIG"
.LASF56:
	.string	"RTC_SLOW_FREQ_8MD256"
.LASF129:
	.string	"rtc_clk_cpu_freq_get_config"
.LASF117:
	.string	"delay_pll_en"
.LASF136:
	.string	"rtc_clk_apb_freq_update"
.LASF54:
	.string	"RTC_SLOW_FREQ_RTC"
.LASF142:
	.string	"rtc_clk_cpu_freq_to_pll_mhz"
.LASF30:
	.string	"SDIO_IDLE_INT"
.LASF6:
	.string	"unsigned int"
.LASF49:
	.string	"rtc_cpu_freq_src_t"
.LASF48:
	.string	"RTC_CPU_FREQ_SRC_APLL"
.LASF159:
	.string	"esp_log_timestamp"
.LASF98:
	.string	"is_rev0"
.LASF23:
	.string	"UART1_TRIG"
.LASF137:
	.string	"apb_freq"
.LASF39:
	.string	"RTC_CPU_FREQ_XTAL"
.LASF157:
	.string	"rom_i2c_writeReg_Mask"
.LASF29:
	.string	"REJECT_INT"
.LASF168:
	.string	"rtc_clk_cpu_freq_from_mhz_internal"
.LASF67:
	.string	"clk_val_is_valid"
.LASF106:
	.string	"rtc_clk_bbpll_configure"
.LASF169:
	.string	"remainder"
.LASF158:
	.string	"rom_i2c_readReg_Mask"
.LASF153:
	.string	"rom_i2c_writeReg"
.LASF122:
	.string	"rtc_clk_cpu_freq_value"
.LASF10:
	.string	"uint32_t"
.LASF27:
	.string	"NO_INT"
.LASF101:
	.string	"rtc_clk_slow_freq_get"
.LASF40:
	.string	"RTC_CPU_FREQ_80M"
.LASF139:
	.string	"rtc_clk_32k_enable_external"
.LASF68:
	.string	"reg_val_to_clk_val"
.LASF71:
	.string	"dres"
.LASF160:
	.string	"ets_printf"
.LASF45:
	.string	"RTC_CPU_FREQ_SRC_XTAL"
.LASF8:
	.string	"long long unsigned int"
.LASF163:
	.string	"ets_update_cpu_frequency"
.LASF34:
	.string	"RTC_XTAL_FREQ_AUTO"
.LASF25:
	.string	"SAR_TRIG"
.LASF81:
	.string	"pin_32"
.LASF82:
	.string	"pin_33"
.LASF74:
	.string	"rtc_clk_bbpll_disable"
.LASF97:
	.string	"sdm_stop_val_2"
.LASF127:
	.string	"rtc_clk_cpu_freq_mhz_to_config"
.LASF118:
	.string	"rtc_clk_xtal_freq_get"
.LASF77:
	.string	"rtc_clk_32k_enable"
.LASF63:
	.string	"ESP_LOG_WARN"
.LASF131:
	.string	"cpuperiod_sel"
.LASF76:
	.string	"enable"
.LASF102:
	.string	"rtc_clk_slow_freq_get_hz"
.LASF111:
	.string	"div10_8"
.LASF161:
	.string	"abort"
.LASF15:
	.string	"NO_SLEEP"
.LASF113:
	.string	"dcur"
.LASF125:
	.string	"out_config"
.LASF37:
	.string	"RTC_XTAL_FREQ_24M"
.LASF33:
	.string	"_Bool"
.LASF147:
	.string	"rtc_clk_cpu_freq_set"
.LASF86:
	.string	"rtc_clk_32k_enabled"
.LASF167:
	.string	"/home/raphael/rtone/lcd/build/soc"
.LASF16:
	.string	"EXT_EVENT0_TRIG"
.LASF60:
	.string	"rtc_fast_freq_t"
.LASF61:
	.string	"ESP_LOG_NONE"
.LASF134:
	.string	"freq"
.LASF138:
	.string	"rtc_clk_cpu_freq_to_xtal"
.LASF124:
	.string	"rtc_clk_cpu_freq_to_config"
.LASF165:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion"
.LASF123:
	.string	"cpu_freq"
.LASF95:
	.string	"sdm2"
.LASF121:
	.string	"rtc_clk_cpu_freq_from_mhz"
.LASF150:
	.string	"rtc_clk_apb_freq_get"
.LASF24:
	.string	"TOUCH_TRIG"
.LASF32:
	.string	"RTC_TIME_VALID_INT"
.LASF162:
	.string	"esp_dport_access_reg_read"
.LASF14:
	.string	"char"
.LASF58:
	.string	"RTC_FAST_FREQ_XTALD4"
.LASF70:
	.string	"clk_val_to_reg_val"
.LASF42:
	.string	"RTC_CPU_FREQ_240M"
.LASF44:
	.string	"rtc_cpu_freq_t"
.LASF51:
	.string	"source_freq_mhz"
.LASF47:
	.string	"RTC_CPU_FREQ_SRC_8M"
.LASF75:
	.string	"rtc_clk_bbpll_enable"
.LASF155:
	.string	"gpio_output_set_high"
.LASF109:
	.string	"div_ref"
.LASF9:
	.string	"uint8_t"
.LASF36:
	.string	"RTC_XTAL_FREQ_26M"
.LASF108:
	.string	"pll_freq"
.LASF78:
	.string	"rtc_clk_32k_bootstrap"
.LASF91:
	.string	"rtc_clk_8md256_enabled"
.LASF90:
	.string	"rtc_clk_8m_enabled"
.LASF22:
	.string	"UART0_TRIG"
.LASF146:
	.string	"rtc_clk_cpu_freq_set_config"
.LASF7:
	.string	"long long int"
.LASF141:
	.string	"rtc_clk_32k_enable_common"
.LASF164:
	.string	"rtc_clk_wait_for_slow_cycle"
.LASF128:
	.string	"real_freq_mhz"
.LASF156:
	.string	"ets_delay_us"
.LASF53:
	.string	"rtc_cpu_freq_config_t"
.LASF92:
	.string	"rtc_clk_apll_enable"
.LASF69:
	.string	"DPORT_REG_READ"
.LASF104:
	.string	"fast_freq"
.LASF130:
	.string	"soc_clk_sel"
.LASF105:
	.string	"rtc_clk_fast_freq_get"
.LASF154:
	.string	"gpio_pad_select_gpio"
.LASF64:
	.string	"ESP_LOG_INFO"
.LASF19:
	.string	"TIMER_EXPIRE"
.LASF80:
	.string	"apll_fpd"
.LASF132:
	.string	"rtc_clk_cpu_freq_get"
.LASF88:
	.string	"clk_8m_en"
.LASF59:
	.string	"RTC_FAST_FREQ_8M"
.LASF89:
	.string	"d256_en"
.LASF41:
	.string	"RTC_CPU_FREQ_160M"
.LASF87:
	.string	"rtc_clk_8m_enable"
.LASF110:
	.string	"div7_0"
.LASF133:
	.string	"config"
.LASF38:
	.string	"rtc_xtal_freq_t"
.LASF119:
	.string	"xtal_freq_reg"
.LASF93:
	.string	"sdm0"
.LASF94:
	.string	"sdm1"
.LASF2:
	.string	"short int"
.LASF126:
	.string	"divider"
.LASF11:
	.string	"long int"
.LASF57:
	.string	"rtc_slow_freq_t"
.LASF79:
	.string	"cycle"
.LASF31:
	.string	"RTC_WDT_INT"
.LASF114:
	.string	"i2c_bbpll_lref"
.LASF140:
	.string	"rtc_clk_cpu_freq_set_xtal"
.LASF83:
	.string	"mask_32"
.LASF84:
	.string	"mask_33"
.LASF96:
	.string	"o_div"
.LASF4:
	.string	"__uint8_t"
.LASF50:
	.string	"source"
.LASF115:
	.string	"i2c_bbpll_div_7_0"
.LASF43:
	.string	"RTC_CPU_FREQ_2M"
.LASF72:
	.string	"dbias"
.LASF28:
	.string	"WAKEUP_INT"
.LASF107:
	.string	"xtal_freq"
.LASF18:
	.string	"GPIO_TRIG"
.LASF12:
	.string	"sizetype"
.LASF13:
	.string	"long unsigned int"
.LASF149:
	.string	"rtc_clk_cpu_freq_set_fast"
.LASF66:
	.string	"ESP_LOG_VERBOSE"
.LASF144:
	.string	"per_conf"
.LASF145:
	.string	"rtc_clk_cpu_freq_to_8m"
.LASF143:
	.string	"cpu_freq_mhz"
.LASF120:
	.string	"out_val"
.LASF112:
	.string	"lref"
.LASF20:
	.string	"SDIO_TRIG"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"__uint32_t"
.LASF100:
	.string	"slow_freq"
.LASF52:
	.string	"freq_mhz"
.LASF148:
	.string	"rtc_clk_cpu_freq_set_config_fast"
.LASF35:
	.string	"RTC_XTAL_FREQ_40M"
.LASF135:
	.string	"rtc_clk_xtal_freq_update"
.LASF116:
	.string	"i2c_bbpll_dcur"
.LASF65:
	.string	"ESP_LOG_DEBUG"
.LASF46:
	.string	"RTC_CPU_FREQ_SRC_PLL"
.LASF166:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/rtc_clk.c"
.LASF85:
	.string	"delay_us"
.LASF0:
	.string	"signed char"
.LASF3:
	.string	"short unsigned int"
.LASF26:
	.string	"BT_TRIG"
.LASF73:
	.string	"__func__"
.LASF103:
	.string	"rtc_clk_fast_freq_set"
.LASF55:
	.string	"RTC_SLOW_FREQ_32K_XTAL"
.LASF21:
	.string	"MAC_TRIG"
.LASF152:
	.string	"s_cur_pll_freq"
.LASF99:
	.string	"rtc_clk_slow_freq_set"
.LASF62:
	.string	"ESP_LOG_ERROR"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
