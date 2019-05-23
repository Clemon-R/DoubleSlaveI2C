	.file	"time.c"
	.text
.Ltext0:
	.section	.text.get_boot_time,"ax",@progbits
	.literal_position
	.literal .LC0, s_boot_time_lock
	.literal .LC1, 1072988244
	.literal .LC2, 1072988248
	.align	4
	.type	get_boot_time, @function
get_boot_time:
.LFB22:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/time.c"
	.loc 1 110 0
	entry	sp, 32
.LCFI0:
	.loc 1 112 0
	l32r	a10, .LC0
	call8	_lock_acquire
.LVL0:
.LBB2:
	.loc 1 114 0
	l32r	a2, .LC1
	memw
	l32i.n	a2, a2, 0
.LBE2:
.LBB3:
	l32r	a3, .LC2
	memw
	l32i.n	a3, a3, 0
.LVL1:
.LBE3:
	.loc 1 118 0
	l32r	a10, .LC0
	call8	_lock_release
.LVL2:
	.loc 1 120 0
	retw.n
.LFE22:
	.size	get_boot_time, .-get_boot_time
	.section	.text.set_boot_time,"ax",@progbits
	.literal_position
	.literal .LC3, s_boot_time_lock
	.literal .LC4, 1072988244
	.literal .LC5, 1072988248
	.align	4
	.type	set_boot_time, @function
set_boot_time:
.LFB21:
	.loc 1 98 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 99 0
	l32r	a4, .LC3
	mov.n	a10, a4
	call8	_lock_acquire
.LVL4:
.LBB4:
	.loc 1 101 0
	l32r	a8, .LC4
	memw
	s32i.n	a2, a8, 0
.LBE4:
.LBB5:
	.loc 1 102 0
	l32r	a8, .LC5
	memw
	s32i.n	a3, a8, 0
.LBE5:
	.loc 1 106 0
	mov.n	a10, a4
	call8	_lock_release
.LVL5:
	retw.n
.LFE21:
	.size	set_boot_time, .-set_boot_time
	.section	.text.get_time_since_boot,"ax",@progbits
	.literal_position
	.literal .LC6, s_microseconds_offset
	.align	4
	.type	get_time_since_boot, @function
get_time_since_boot:
.LFB32:
	.loc 1 278 0
	entry	sp, 32
.LCFI2:
.LVL6:
	.loc 1 282 0
	call8	esp_timer_get_time
.LVL7:
	l32r	a3, .LC6
	l32i.n	a2, a3, 0
	l32i.n	a8, a3, 4
	add.n	a2, a2, a10
	movi.n	a3, 1
	bltu	a2, a10, .L5
	movi.n	a3, 0
.L5:
	add.n	a11, a8, a11
	add.n	a3, a3, a11
.LVL8:
	.loc 1 290 0
	retw.n
.LFE32:
	.size	get_time_since_boot, .-get_time_since_boot
	.section	.text.adjust_boot_time,"ax",@progbits
	.literal_position
	.literal .LC7, adjtime_start
	.literal .LC8, 0, 0
	.literal .LC9, adjtime_total_correction
	.align	4
	.type	adjust_boot_time, @function
adjust_boot_time:
.LFB23:
	.loc 1 124 0
	entry	sp, 32
.LCFI3:
	.loc 1 125 0
	call8	get_boot_time
.LVL9:
	mov.n	a2, a10
	mov.n	a3, a11
.LVL10:
	.loc 1 126 0
	or	a8, a10, a11
	beqz.n	a8, .L7
	call8	get_time_since_boot
.LVL11:
	l32r	a8, .LC7
	l32i.n	a9, a8, 0
	l32i.n	a8, a8, 4
	bltu	a11, a8, .L7
	.loc 1 126 0 is_stmt 0 discriminator 1
	bne	a8, a11, .L9
	bgeu	a10, a9, .L9
.L7:
	.loc 1 127 0 is_stmt 1
	l32r	a10, .LC8
	l32r	a11, .LC8+4
	l32r	a8, .LC7
	s32i.n	a10, a8, 0
	s32i.n	a11, a8, 4
.L9:
	.loc 1 129 0
	l32r	a8, .LC7
	l32i.n	a9, a8, 0
	l32i.n	a10, a8, 4
	or	a8, a9, a10
	beqz.n	a8, .L11
.LBB6:
	.loc 1 130 0
	call8	get_time_since_boot
.LVL12:
	.loc 1 135 0
	slli	a8, a11, 26
	srli	a14, a10, 6
	or	a14, a8, a14
	srli	a13, a11, 6
	l32r	a8, .LC7
	l32i.n	a12, a8, 4
	slli	a9, a12, 26
	l32i.n	a8, a8, 0
	srli	a8, a8, 6
	or	a8, a9, a8
	srli	a12, a12, 6
	sub	a8, a14, a8
	movi.n	a9, 1
	bltu	a14, a8, .L13
	movi.n	a9, 0
.L13:
	sub	a12, a13, a12
	sub	a9, a12, a9
	mov.n	a13, a8
.LVL13:
	.loc 1 136 0
	bgei	a9, 1, .L28
.LVL14:
	bnez.n	a9, .L11
	beqz.n	a8, .L11
.L28:
	.loc 1 137 0
	l32r	a12, .LC7
	s32i.n	a10, a12, 0
	s32i.n	a11, a12, 4
	.loc 1 138 0
	l32r	a11, .LC9
.LVL15:
	l32i.n	a10, a11, 0
.LVL16:
	l32i.n	a11, a11, 4
	bgez	a11, .L15
	.loc 1 139 0
	add.n	a14, a8, a10
	movi.n	a12, 1
.LVL17:
	bltu	a14, a13, .L17
	movi.n	a12, 0
.L17:
	add.n	a13, a9, a11
	add.n	a12, a12, a13
	bltz	a12, .L18
	.loc 1 140 0
	add.n	a10, a2, a10
	movi.n	a8, 1
.LVL18:
	bltu	a10, a2, .L20
	movi.n	a8, 0
.L20:
	add.n	a11, a3, a11
	add.n	a3, a8, a11
.LVL19:
	mov.n	a2, a10
.LVL20:
	.loc 1 141 0
	l32r	a10, .LC8
	l32r	a11, .LC8+4
	l32r	a8, .LC7
.LVL21:
	s32i.n	a10, a8, 0
.LVL22:
	s32i.n	a11, a8, 4
	j	.L21
.LVL23:
.L18:
	.loc 1 143 0
	l32r	a10, .LC9
	s32i.n	a14, a10, 0
	s32i.n	a12, a10, 4
	.loc 1 144 0
	sub	a8, a2, a8
.LVL24:
	movi.n	a10, 1
	bltu	a2, a8, .L22
	movi.n	a10, 0
.L22:
	sub	a9, a3, a9
	sub	a3, a9, a10
.LVL25:
	mov.n	a2, a8
.LVL26:
	j	.L21
.LVL27:
.L15:
	.loc 1 147 0
	sub	a13, a10, a8
	movi.n	a12, 1
.LVL28:
	bltu	a10, a13, .L23
	movi.n	a12, 0
.L23:
	sub	a14, a11, a9
	sub	a12, a14, a12
	bgei	a12, 1, .L24
	bnez.n	a12, .L29
	bnez.n	a13, .L24
.L29:
	.loc 1 148 0
	add.n	a10, a2, a10
	movi.n	a8, 1
.LVL29:
	bltu	a10, a2, .L26
	movi.n	a8, 0
.L26:
	add.n	a11, a3, a11
	add.n	a3, a8, a11
.LVL30:
	mov.n	a2, a10
.LVL31:
	.loc 1 149 0
	l32r	a10, .LC8
	l32r	a11, .LC8+4
	l32r	a8, .LC7
.LVL32:
	s32i.n	a10, a8, 0
.LVL33:
	s32i.n	a11, a8, 4
	j	.L21
.LVL34:
.L24:
	.loc 1 151 0
	l32r	a10, .LC9
	s32i.n	a13, a10, 0
	s32i.n	a12, a10, 4
	.loc 1 152 0
	add.n	a8, a2, a8
.LVL35:
	movi.n	a10, 1
	bltu	a8, a2, .L27
	movi.n	a10, 0
.L27:
	add.n	a9, a3, a9
	add.n	a3, a10, a9
.LVL36:
	mov.n	a2, a8
.LVL37:
.L21:
	.loc 1 155 0
	mov.n	a10, a2
	mov.n	a11, a3
	call8	set_boot_time
.LVL38:
.L11:
.LBE6:
	.loc 1 159 0
	retw.n
.LFE23:
	.size	adjust_boot_time, .-adjust_boot_time
	.section	.text.get_adjusted_boot_time,"ax",@progbits
	.literal_position
	.literal .LC10, s_adjust_time_lock
	.align	4
	.type	get_adjusted_boot_time, @function
get_adjusted_boot_time:
.LFB24:
	.loc 1 163 0
	entry	sp, 32
.LCFI4:
	.loc 1 164 0
	l32r	a3, .LC10
	mov.n	a10, a3
	call8	_lock_acquire
.LVL39:
	.loc 1 165 0
	call8	adjust_boot_time
.LVL40:
	mov.n	a4, a10
	mov.n	a5, a11
.LVL41:
	.loc 1 166 0
	mov.n	a10, a3
	call8	_lock_release
.LVL42:
	.loc 1 168 0
	mov.n	a2, a4
	mov.n	a3, a5
	retw.n
.LFE24:
	.size	get_adjusted_boot_time, .-get_adjusted_boot_time
	.section	.text.adjtime_corr_stop,"ax",@progbits
	.literal_position
	.literal .LC11, s_adjust_time_lock
	.literal .LC12, adjtime_start
	.literal .LC13, 0, 0
	.align	4
	.type	adjtime_corr_stop, @function
adjtime_corr_stop:
.LFB25:
	.loc 1 172 0
	entry	sp, 32
.LCFI5:
	.loc 1 173 0
	l32r	a10, .LC11
	call8	_lock_acquire
.LVL43:
	.loc 1 174 0
	l32r	a8, .LC12
	l32i.n	a9, a8, 0
	l32i.n	a10, a8, 4
	or	a8, a9, a10
	beqz.n	a8, .L32
	.loc 1 175 0
	call8	adjust_boot_time
.LVL44:
	.loc 1 176 0
	l32r	a10, .LC13
	l32r	a11, .LC13+4
	l32r	a8, .LC12
	s32i.n	a10, a8, 0
	s32i.n	a11, a8, 4
.L32:
	.loc 1 178 0
	l32r	a10, .LC11
	call8	_lock_release
.LVL45:
	retw.n
.LFE25:
	.size	adjtime_corr_stop, .-adjtime_corr_stop
	.global	__divdi3
	.global	__moddi3
	.section	.text.adjtime,"ax",@progbits
	.literal_position
	.literal .LC14, 2146
	.literal .LC15, s_adjust_time_lock
	.literal .LC16, adjtime_start
	.literal .LC17, 1000000
	.literal .LC18, adjtime_total_correction
	.literal .LC19, 1000000, 0
	.align	4
	.global	adjtime
	.type	adjtime, @function
adjtime:
.LFB26:
	.loc 1 183 0
.LVL46:
	entry	sp, 32
.LCFI6:
	.loc 1 185 0
	beqz.n	a2, .L35
.LBB7:
	.loc 1 186 0
	l32i.n	a4, a2, 0
	srai	a6, a4, 31
.LVL47:
	.loc 1 187 0
	l32i.n	a2, a2, 4
.LVL48:
	srai	a5, a2, 31
.LVL49:
	.loc 1 188 0
	mov.n	a9, a6
	xor	a10, a6, a4
	movi.n	a8, 0
	sub	a11, a10, a6
	movi.n	a12, 1
	bltu	a10, a11, .L36
	mov.n	a12, a8
.L36:
	sub	a9, a8, a9
	sub	a8, a9, a12
	bgei	a8, 1, .L43
	bnez.n	a8, .L45
	l32r	a8, .LC14
	bltu	a8, a11, .L43
.L45:
	.loc 1 196 0
	l32r	a10, .LC15
	call8	_lock_acquire
.LVL50:
	.loc 1 198 0
	call8	adjust_boot_time
.LVL51:
	.loc 1 199 0
	call8	get_time_since_boot
.LVL52:
	l32r	a8, .LC16
	s32i.n	a10, a8, 0
	s32i.n	a11, a8, 4
	.loc 1 200 0
	l32r	a8, .LC17
	mull	a6, a6, a8
.LVL53:
	mull	a9, a4, a8
	muluh	a8, a4, a8
	add.n	a8, a6, a8
	add.n	a6, a2, a9
	movi.n	a4, 1
.LVL54:
	bltu	a6, a2, .L39
	movi.n	a4, 0
.L39:
	add.n	a8, a5, a8
	add.n	a2, a4, a8
.LVL55:
	l32r	a4, .LC18
	s32i.n	a6, a4, 0
	s32i.n	a2, a4, 4
	.loc 1 201 0
	l32r	a10, .LC15
	call8	_lock_release
.LVL56:
.L35:
.LBE7:
	.loc 1 203 0
	beqz.n	a3, .L44
	.loc 1 204 0
	l32r	a10, .LC15
	call8	_lock_acquire
.LVL57:
	.loc 1 205 0
	call8	adjust_boot_time
.LVL58:
	.loc 1 206 0
	l32r	a2, .LC16
	l32i.n	a4, a2, 0
	l32i.n	a5, a2, 4
	or	a2, a4, a5
	beqz.n	a2, .L40
	.loc 1 207 0
	l32r	a2, .LC18
	l32i.n	a4, a2, 0
	l32i.n	a5, a2, 4
	l32r	a12, .LC19
	l32r	a13, .LC19+4
	mov.n	a10, a4
	mov.n	a11, a5
	call8	__divdi3
.LVL59:
	s32i.n	a10, a3, 0
	.loc 1 208 0
	l32r	a12, .LC19
	l32r	a13, .LC19+4
	mov.n	a10, a4
	mov.n	a11, a5
	call8	__moddi3
.LVL60:
	s32i.n	a10, a3, 4
	j	.L42
.L40:
	.loc 1 210 0
	movi.n	a2, 0
	s32i.n	a2, a3, 0
	.loc 1 211 0
	s32i.n	a2, a3, 4
.L42:
	.loc 1 213 0
	l32r	a10, .LC15
	call8	_lock_release
.LVL61:
	.loc 1 215 0
	movi.n	a2, 0
	retw.n
.LVL62:
.L43:
.LBB8:
	.loc 1 189 0
	movi.n	a2, -1
.LVL63:
	retw.n
.LVL64:
.L44:
.LBE8:
	.loc 1 215 0
	movi.n	a2, 0
	.loc 1 220 0
	retw.n
.LFE26:
	.size	adjtime, .-adjtime
	.section	.text.esp_clk_slowclk_cal_set,"ax",@progbits
	.literal_position
	.literal .LC20, 1072988240
	.literal .LC22, 524287
	.align	4
	.global	esp_clk_slowclk_cal_set
	.type	esp_clk_slowclk_cal_set, @function
esp_clk_slowclk_cal_set:
.LFB27:
	.loc 1 223 0
.LVL65:
	entry	sp, 32
.LCFI7:
	.loc 1 232 0
	call8	rtc_time_get
.LVL66:
.LBB9:
	.loc 1 233 0
	l32r	a3, .LC20
	memw
	l32i.n	a8, a3, 0
.LVL67:
.LBE9:
	.loc 1 234 0
	sub	a8, a8, a2
.LVL68:
	.loc 1 235 0
	srai	a3, a8, 31
	mull	a3, a3, a10
	mull	a11, a8, a11
.LVL69:
	add.n	a11, a3, a11
	mull	a3, a8, a10
	muluh	a8, a8, a10
.LVL70:
	add.n	a8, a11, a8
	srai	a9, a8, 31
	l32r	a4, .LC22
	and	a4, a9, a4
	add.n	a3, a4, a3
	movi.n	a10, 1
	bltu	a3, a4, .L48
	movi.n	a10, 0
.L48:
	add.n	a8, a10, a8
	slli	a4, a8, 13
	extui	a3, a3, 19, 13
	or	a3, a4, a3
	srai	a4, a8, 19
.LVL71:
	.loc 1 236 0
	call8	get_boot_time
.LVL72:
	add.n	a3, a10, a3
.LVL73:
	movi.n	a9, 1
	bltu	a3, a10, .L49
	movi.n	a9, 0
.L49:
	add.n	a8, a11, a4
	add.n	a11, a9, a8
.LVL74:
	.loc 1 237 0
	mov.n	a10, a3
	call8	set_boot_time
.LVL75:
.LBB10:
	.loc 1 239 0
	l32r	a3, .LC20
	memw
	s32i.n	a2, a3, 0
	retw.n
.LBE10:
.LFE27:
	.size	esp_clk_slowclk_cal_set, .-esp_clk_slowclk_cal_set
	.section	.text.esp_clk_slowclk_cal_get,"ax",@progbits
	.literal_position
	.literal .LC23, 1072988240
	.align	4
	.global	esp_clk_slowclk_cal_get
	.type	esp_clk_slowclk_cal_get, @function
esp_clk_slowclk_cal_get:
.LFB28:
	.loc 1 243 0
	entry	sp, 32
.LCFI8:
.LBB11:
	.loc 1 244 0
	l32r	a2, .LC23
	memw
	l32i.n	a2, a2, 0
.LBE11:
	.loc 1 245 0
	retw.n
.LFE28:
	.size	esp_clk_slowclk_cal_get, .-esp_clk_slowclk_cal_get
	.section	.text.get_rtc_time_us,"ax",@progbits
	.align	4
	.type	get_rtc_time_us, @function
get_rtc_time_us:
.LFB20:
	.loc 1 51 0
	entry	sp, 32
.LCFI9:
	.loc 1 52 0
	call8	rtc_time_get
.LVL76:
	mov.n	a2, a10
	mov.n	a3, a11
.LVL77:
	.loc 1 53 0
	call8	esp_clk_slowclk_cal_get
.LVL78:
	.loc 1 67 0
	mull	a9, a2, a10
	muluh	a2, a2, a10
.LVL79:
	slli	a8, a2, 13
	extui	a9, a9, 19, 13
	or	a9, a8, a9
	extui	a8, a2, 19, 13
	.loc 1 68 0
	mull	a2, a3, a10
	muluh	a11, a3, a10
	extui	a3, a2, 19, 13
.LVL80:
	slli	a10, a11, 13
.LVL81:
	or	a10, a3, a10
	slli	a2, a2, 13
	.loc 1 67 0
	add.n	a2, a9, a2
	movi.n	a3, 1
	bltu	a2, a9, .L52
	movi.n	a3, 0
.L52:
	add.n	a10, a8, a10
	add.n	a3, a3, a10
	.loc 1 69 0
	retw.n
.LFE20:
	.size	get_rtc_time_us, .-get_rtc_time_us
	.section	.text.esp_set_time_from_rtc,"ax",@progbits
	.literal_position
	.literal .LC24, s_microseconds_offset
	.align	4
	.global	esp_set_time_from_rtc
	.type	esp_set_time_from_rtc, @function
esp_set_time_from_rtc:
.LFB29:
	.loc 1 248 0
	entry	sp, 32
.LCFI10:
	.loc 1 251 0
	call8	get_rtc_time_us
.LVL82:
	mov.n	a3, a10
	mov.n	a2, a11
	call8	esp_timer_get_time
.LVL83:
	sub	a10, a3, a10
	movi.n	a8, 1
	bltu	a3, a10, .L54
	movi.n	a8, 0
.L54:
	sub	a11, a2, a11
	sub	a8, a11, a8
	l32r	a2, .LC24
	s32i.n	a10, a2, 0
	s32i.n	a8, a2, 4
	retw.n
.LFE29:
	.size	esp_set_time_from_rtc, .-esp_set_time_from_rtc
	.section	.text.esp_clk_rtc_time,"ax",@progbits
	.align	4
	.global	esp_clk_rtc_time
	.type	esp_clk_rtc_time, @function
esp_clk_rtc_time:
.LFB30:
	.loc 1 256 0
	entry	sp, 32
.LCFI11:
	.loc 1 258 0
	call8	get_rtc_time_us
.LVL84:
	.loc 1 262 0
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
.LFE30:
	.size	esp_clk_rtc_time, .-esp_clk_rtc_time
	.global	__udivdi3
	.global	__umoddi3
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC25, 1000000, 0
	.align	4
	.global	_gettimeofday_r
	.type	_gettimeofday_r, @function
_gettimeofday_r:
.LFB33:
	.loc 1 294 0
.LVL85:
	entry	sp, 32
.LCFI12:
	.loc 1 297 0
	beqz.n	a3, .L57
.LBB12:
	.loc 1 298 0
	call8	get_adjusted_boot_time
.LVL86:
	mov.n	a5, a10
	mov.n	a6, a11
	call8	get_time_since_boot
.LVL87:
	add.n	a4, a5, a10
.LVL88:
	movi.n	a2, 1
.LVL89:
	bltu	a4, a5, .L58
	movi.n	a2, 0
.L58:
	add.n	a11, a6, a11
	add.n	a2, a2, a11
	mov.n	a11, a2
.LVL90:
	.loc 1 299 0
	l32r	a12, .LC25
	l32r	a13, .LC25+4
	mov.n	a10, a4
	call8	__udivdi3
.LVL91:
	s32i.n	a10, a3, 0
	.loc 1 300 0
	l32r	a12, .LC25
	l32r	a13, .LC25+4
	mov.n	a10, a4
	mov.n	a11, a2
	call8	__umoddi3
.LVL92:
	s32i.n	a10, a3, 4
.LVL93:
.L57:
.LBE12:
	.loc 1 307 0
	movi.n	a2, 0
	retw.n
.LFE33:
	.size	_gettimeofday_r, .-_gettimeofday_r
	.align	4
	.global	_times_r
	.type	_times_r, @function
_times_r:
.LFB31:
	.loc 1 265 0
.LVL94:
	entry	sp, 48
.LCFI13:
	.loc 1 266 0
	call8	xTaskGetTickCount
.LVL95:
	addx4	a10, a10, a10
	slli	a8, a10, 1
.LVL96:
	.loc 1 267 0
	movi.n	a12, 0
	s32i.n	a12, a3, 12
	.loc 1 268 0
	s32i.n	a12, a3, 8
	.loc 1 269 0
	s32i.n	a8, a3, 4
	.loc 1 270 0
	s32i.n	a12, a3, 0
	.loc 1 271 0
	s32i.n	a12, sp, 0
	s32i.n	a12, sp, 4
	.loc 1 272 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	_gettimeofday_r
.LVL97:
	.loc 1 274 0
	l32i.n	a2, sp, 0
.LVL98:
	retw.n
.LFE31:
	.size	_times_r, .-_times_r
	.section	.text.settimeofday,"ax",@progbits
	.literal_position
	.literal .LC26, 1000000
	.align	4
	.global	settimeofday
	.type	settimeofday, @function
settimeofday:
.LFB34:
	.loc 1 310 0
.LVL99:
	entry	sp, 32
.LCFI14:
	.loc 1 313 0
	beqz.n	a2, .L61
.LBB13:
	.loc 1 314 0
	call8	adjtime_corr_stop
.LVL100:
	.loc 1 315 0
	l32i.n	a9, a2, 0
	srai	a3, a9, 31
.LVL101:
	l32r	a8, .LC26
	mull	a3, a3, a8
	mull	a10, a9, a8
	muluh	a8, a9, a8
	add.n	a8, a3, a8
	l32i.n	a3, a2, 4
	srai	a9, a3, 31
	add.n	a3, a10, a3
	movi.n	a2, 1
.LVL102:
	bltu	a3, a10, .L62
	movi.n	a2, 0
.L62:
	add.n	a8, a8, a9
	add.n	a2, a2, a8
.LVL103:
	.loc 1 316 0
	call8	get_time_since_boot
.LVL104:
	.loc 1 317 0
	sub	a10, a3, a10
.LVL105:
	movi.n	a8, 1
	bltu	a3, a10, .L63
	movi.n	a8, 0
.L63:
	sub	a2, a2, a11
.LVL106:
	sub	a11, a2, a8
	call8	set_boot_time
.LVL107:
.L61:
.LBE13:
	.loc 1 324 0
	movi.n	a2, 0
	retw.n
.LFE34:
	.size	settimeofday, .-settimeofday
	.section	.text.usleep,"ax",@progbits
	.literal_position
	.literal .LC27, 9999
	.literal .LC28, -776530087
	.align	4
	.global	usleep
	.type	usleep, @function
usleep:
.LFB35:
	.loc 1 327 0
.LVL108:
	entry	sp, 32
.LCFI15:
.LVL109:
	.loc 1 329 0
	l32r	a8, .LC27
	bltu	a8, a2, .L65
	.loc 1 330 0
	mov.n	a10, a2
	call8	ets_delay_us
.LVL110:
	j	.L66
.L65:
	.loc 1 335 0
	l32r	a10, .LC27
	add.n	a2, a2, a10
.LVL111:
	l32r	a8, .LC28
	muluh	a10, a2, a8
	srli	a10, a10, 13
	call8	vTaskDelay
.LVL112:
.L66:
	.loc 1 338 0
	movi.n	a2, 0
	retw.n
.LFE35:
	.size	usleep, .-usleep
	.section	.text.sleep,"ax",@progbits
	.literal_position
	.literal .LC29, 1000000
	.align	4
	.global	sleep
	.type	sleep, @function
sleep:
.LFB36:
	.loc 1 341 0
.LVL113:
	entry	sp, 32
.LCFI16:
	.loc 1 342 0
	l32r	a10, .LC29
	mull	a10, a2, a10
	call8	usleep
.LVL114:
	.loc 1 344 0
	movi.n	a2, 0
.LVL115:
	retw.n
.LFE36:
	.size	sleep, .-sleep
	.section	.text.system_get_time,"ax",@progbits
	.align	4
	.global	system_get_time
	.type	system_get_time, @function
system_get_time:
.LFB37:
	.loc 1 347 0
	entry	sp, 32
.LCFI17:
	.loc 1 349 0
	call8	get_time_since_boot
.LVL116:
	.loc 1 353 0
	mov.n	a2, a10
	retw.n
.LFE37:
	.size	system_get_time, .-system_get_time
	.global	system_get_current_time
	.set	system_get_current_time,system_get_time
	.section	.text.system_relative_time,"ax",@progbits
	.align	4
	.global	system_relative_time
	.type	system_relative_time, @function
system_relative_time:
.LFB38:
	.loc 1 358 0
.LVL117:
	entry	sp, 32
.LCFI18:
	.loc 1 360 0
	call8	get_time_since_boot
.LVL118:
	.loc 1 364 0
	sub	a2, a10, a2
.LVL119:
	retw.n
.LFE38:
	.size	system_relative_time, .-system_relative_time
	.section	.text.system_get_rtc_time,"ax",@progbits
	.align	4
	.global	system_get_rtc_time
	.type	system_get_rtc_time, @function
system_get_rtc_time:
.LFB39:
	.loc 1 367 0
	entry	sp, 32
.LCFI19:
	.loc 1 369 0
	call8	get_rtc_time_us
.LVL120:
	.loc 1 373 0
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
.LFE39:
	.size	system_get_rtc_time, .-system_get_rtc_time
	.section	.text.esp_sync_counters_rtc_and_frc,"ax",@progbits
	.literal_position
	.literal .LC30, s_microseconds_offset
	.align	4
	.global	esp_sync_counters_rtc_and_frc
	.type	esp_sync_counters_rtc_and_frc, @function
esp_sync_counters_rtc_and_frc:
.LFB40:
	.loc 1 376 0
	entry	sp, 32
.LCFI20:
	.loc 1 378 0
	call8	adjtime_corr_stop
.LVL121:
	.loc 1 379 0
	call8	get_rtc_time_us
.LVL122:
	mov.n	a5, a10
	mov.n	a4, a11
	call8	esp_timer_get_time
.LVL123:
	sub	a2, a5, a10
	movi.n	a3, 1
	bltu	a5, a2, .L72
	movi.n	a3, 0
.L72:
	sub	a11, a4, a11
	sub	a3, a11, a3
.LVL124:
	.loc 1 380 0
	call8	get_adjusted_boot_time
.LVL125:
	l32r	a8, .LC30
	l32i.n	a4, a8, 0
	l32i.n	a12, a8, 4
	sub	a8, a4, a2
	movi.n	a9, 1
	bltu	a4, a8, .L73
	movi.n	a9, 0
.L73:
	sub	a3, a12, a3
.LVL126:
	sub	a9, a3, a9
	mov.n	a3, a9
	add.n	a10, a8, a10
	movi.n	a2, 1
	bltu	a10, a8, .L74
	movi.n	a2, 0
.L74:
	add.n	a9, a9, a11
	add.n	a11, a2, a9
	call8	set_boot_time
.LVL127:
	retw.n
.LFE40:
	.size	esp_sync_counters_rtc_and_frc, .-esp_sync_counters_rtc_and_frc
	.section	.text.clock_settime,"ax",@progbits
	.literal_position
	.literal .LC31, 274877907
	.align	4
	.global	clock_settime
	.type	clock_settime, @function
clock_settime:
.LFB41:
	.loc 1 386 0
.LVL128:
	entry	sp, 48
.LCFI21:
	.loc 1 388 0
	bnez.n	a3, .L76
	.loc 1 389 0
	call8	__errno
.LVL129:
	movi.n	a2, 0x16
.LVL130:
	s32i.n	a2, a10, 0
	.loc 1 390 0
	movi.n	a2, -1
	retw.n
.LVL131:
.L76:
	.loc 1 393 0
	bnei	a2, 1, .L80
	.loc 1 395 0
	l32i.n	a2, a3, 0
.LVL132:
	s32i.n	a2, sp, 0
	.loc 1 396 0
	l32i.n	a8, a3, 4
	l32r	a9, .LC31
	mulsh	a9, a8, a9
	srai	a9, a9, 6
	srai	a8, a8, 31
	sub	a8, a9, a8
	s32i.n	a8, sp, 4
	.loc 1 397 0
	movi.n	a11, 0
	mov.n	a10, sp
	call8	settimeofday
.LVL133:
	.loc 1 403 0
	movi.n	a2, 0
	retw.n
.LVL134:
.L80:
	.loc 1 400 0
	call8	__errno
.LVL135:
	movi.n	a2, 0x16
.LVL136:
	s32i.n	a2, a10, 0
	.loc 1 401 0
	movi.n	a2, -1
	.loc 1 408 0
	retw.n
.LFE41:
	.size	clock_settime, .-clock_settime
	.section	.text.clock_gettime,"ax",@progbits
	.literal_position
	.literal .LC32, 1000000, 0
	.align	4
	.global	clock_gettime
	.type	clock_gettime, @function
clock_gettime:
.LFB42:
	.loc 1 411 0
.LVL137:
	entry	sp, 48
.LCFI22:
	.loc 1 413 0
	bnez.n	a3, .L82
	.loc 1 414 0
	call8	__errno
.LVL138:
	movi.n	a2, 0x16
.LVL139:
	s32i.n	a2, a10, 0
	.loc 1 415 0
	movi.n	a2, -1
	retw.n
.LVL140:
.L82:
	.loc 1 418 0
	movi.n	a12, 0
	mov.n	a11, sp
	mov.n	a10, a12
	call8	_gettimeofday_r
.LVL141:
	.loc 1 420 0
	beqi	a2, 1, .L85
	beqi	a2, 4, .L86
	j	.L87
.L85:
	.loc 1 422 0
	l32i.n	a2, sp, 0
.LVL142:
	s32i.n	a2, a3, 0
	.loc 1 423 0
	l32i.n	a8, sp, 4
	slli	a2, a8, 5
	sub	a2, a2, a8
	addx4	a2, a2, a8
	slli	a4, a2, 3
	s32i.n	a4, a3, 4
	.loc 1 438 0
	movi.n	a2, 0
	.loc 1 424 0
	retw.n
.LVL143:
.L86:
	.loc 1 427 0
	call8	esp_timer_get_time
.LVL144:
	mov.n	a4, a10
	mov.n	a5, a11
.LVL145:
	.loc 1 431 0
	l32r	a12, .LC32
	l32r	a13, .LC32+4
	call8	__udivdi3
.LVL146:
	s32i.n	a10, a3, 0
	.loc 1 432 0
	l32r	a12, .LC32
	l32r	a13, .LC32+4
	mov.n	a10, a4
	mov.n	a11, a5
	call8	__umoddi3
.LVL147:
	slli	a2, a10, 5
.LVL148:
	sub	a2, a2, a10
	addx4	a10, a2, a10
	slli	a2, a10, 3
	s32i.n	a2, a3, 4
	.loc 1 438 0
	movi.n	a2, 0
	.loc 1 433 0
	retw.n
.LVL149:
.L87:
	.loc 1 435 0
	call8	__errno
.LVL150:
	movi.n	a2, 0x16
.LVL151:
	s32i.n	a2, a10, 0
	.loc 1 436 0
	movi.n	a2, -1
	.loc 1 443 0
	retw.n
.LFE42:
	.size	clock_gettime, .-clock_gettime
	.section	.text.clock_getres,"ax",@progbits
	.align	4
	.global	clock_getres
	.type	clock_getres, @function
clock_getres:
.LFB43:
	.loc 1 446 0
.LVL152:
	entry	sp, 32
.LCFI23:
	.loc 1 448 0
	bnez.n	a3, .L89
	.loc 1 449 0
	call8	__errno
.LVL153:
	movi.n	a2, 0x16
.LVL154:
	s32i.n	a2, a10, 0
	.loc 1 450 0
	movi.n	a2, -1
	retw.n
.LVL155:
.L89:
	.loc 1 453 0
	movi.n	a2, 0
.LVL156:
	s32i.n	a2, a3, 0
	.loc 1 454 0
	movi	a8, 0x3e8
	s32i.n	a8, a3, 4
	.loc 1 466 0
	retw.n
.LFE43:
	.size	clock_getres, .-clock_getres
	.comm	s_microseconds_offset,8,8
	.section	.bss.adjtime_total_correction,"aw",@nobits
	.align	8
	.type	adjtime_total_correction, @object
	.size	adjtime_total_correction, 8
adjtime_total_correction:
	.zero	8
	.section	.bss.adjtime_start,"aw",@nobits
	.align	8
	.type	adjtime_start, @object
	.size	adjtime_start, 8
adjtime_start:
	.zero	8
	.section	.bss.s_adjust_time_lock,"aw",@nobits
	.align	4
	.type	s_adjust_time_lock, @object
	.size	s_adjust_time_lock, 4
s_adjust_time_lock:
	.zero	4
	.section	.bss.s_boot_time_lock,"aw",@nobits
	.align	4
	.type	s_boot_time_lock, @object
	.size	s_boot_time_lock, 4
s_boot_time_lock:
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI0-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI1-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI2-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI3-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI4-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI5-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI6-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI7-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI8-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI9-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI10-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI11-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI12-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI13-.LFB31
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI14-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI15-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI16-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI17-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI18-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI19-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI20-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI21-.LFB41
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI22-.LFB42
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI23-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/lock.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/_types.h"
	.file 5 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/reent.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/time.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/times.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/rtc.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_timer.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/task.h"
	.file 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1342
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF222
	.byte	0xc
	.4byte	.LASF223
	.4byte	.LASF224
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1d
	.4byte	0x77
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0xb
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0xc
	.4byte	0x89
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x10
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x27
	.4byte	0xaa
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x5
	.2byte	0x165
	.4byte	0x2c
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.byte	0x4a
	.4byte	0xe7
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0x4c
	.4byte	0xbc
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x4d
	.4byte	0xe7
	.byte	0
	.uleb128 0x8
	.4byte	0x48
	.4byte	0xf7
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.byte	0x47
	.4byte	0x11f
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x4
	.byte	0x49
	.4byte	0x33
	.byte	0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x4
	.byte	0x4e
	.4byte	0xc8
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0x4f
	.4byte	0xfe
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0x53
	.4byte	0x94
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x6
	.byte	0x16
	.4byte	0x142
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF25
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x18
	.byte	0x6
	.byte	0x2d
	.4byte	0x19c
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x2f
	.4byte	0x19c
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x6
	.byte	0x30
	.4byte	0x33
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0x30
	.4byte	0x33
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x30
	.4byte	0x33
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x30
	.4byte	0x33
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x6
	.byte	0x31
	.4byte	0x1a2
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x149
	.uleb128 0x8
	.4byte	0x137
	.4byte	0x1b2
	.uleb128 0x9
	.4byte	0xf7
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x24
	.byte	0x6
	.byte	0x35
	.4byte	0x22b
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x37
	.4byte	0x33
	.byte	0
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0x38
	.4byte	0x33
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x39
	.4byte	0x33
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3a
	.4byte	0x33
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3b
	.4byte	0x33
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3c
	.4byte	0x33
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0x3d
	.4byte	0x33
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x3e
	.4byte	0x33
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0x3f
	.4byte	0x33
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF41
	.2byte	0x108
	.byte	0x6
	.byte	0x48
	.4byte	0x26b
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.byte	0x49
	.4byte	0x26b
	.byte	0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x6
	.byte	0x4a
	.4byte	0x26b
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x6
	.byte	0x4c
	.4byte	0x137
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x6
	.byte	0x4f
	.4byte	0x137
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x135
	.4byte	0x27b
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x8c
	.byte	0x6
	.byte	0x53
	.4byte	0x2b8
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x54
	.4byte	0x2b8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x6
	.byte	0x55
	.4byte	0x33
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x6
	.byte	0x56
	.4byte	0x2be
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6
	.byte	0x57
	.4byte	0x2d5
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x27b
	.uleb128 0x8
	.4byte	0x2ce
	.4byte	0x2ce
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2d4
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x22b
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x8
	.byte	0x6
	.byte	0x73
	.4byte	0x300
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.byte	0x74
	.4byte	0x300
	.byte	0
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x6
	.byte	0x75
	.4byte	0x33
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x48
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0xf0
	.byte	0x6
	.2byte	0x172
	.4byte	0x44c
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x176
	.4byte	0x33
	.byte	0
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x17b
	.4byte	0x681
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x17b
	.4byte	0x681
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x17b
	.4byte	0x681
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x17d
	.4byte	0x33
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x17f
	.4byte	0x59a
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x181
	.4byte	0x33
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x183
	.4byte	0x33
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x184
	.4byte	0x5cb
	.byte	0x20
	.uleb128 0x15
	.string	"_mp"
	.byte	0x6
	.2byte	0x186
	.4byte	0x7ce
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x188
	.4byte	0x7df
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x18a
	.4byte	0x33
	.byte	0x2c
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x18d
	.4byte	0x33
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x18e
	.4byte	0x59a
	.byte	0x34
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x190
	.4byte	0x7e5
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x191
	.4byte	0x7eb
	.byte	0x3c
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x192
	.4byte	0x59a
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x195
	.4byte	0x7fc
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x199
	.4byte	0x2b8
	.byte	0x48
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x19a
	.4byte	0x27b
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x19d
	.4byte	0x646
	.byte	0xd8
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x19e
	.4byte	0x681
	.byte	0xe4
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x19f
	.4byte	0x808
	.byte	0xe8
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x1a0
	.4byte	0x59a
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x306
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x68
	.byte	0x6
	.byte	0xb3
	.4byte	0x57c
	.uleb128 0xe
	.string	"_p"
	.byte	0x6
	.byte	0xb4
	.4byte	0x300
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x6
	.byte	0xb5
	.4byte	0x33
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x6
	.byte	0xb6
	.4byte	0x33
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x6
	.byte	0xb7
	.4byte	0x4f
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x6
	.byte	0xb8
	.4byte	0x4f
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x6
	.byte	0xb9
	.4byte	0x2db
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x6
	.byte	0xba
	.4byte	0x33
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x6
	.byte	0xbd
	.4byte	0x44c
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x6
	.byte	0xc1
	.4byte	0x135
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x6
	.byte	0xc3
	.4byte	0x5a7
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x6
	.byte	0xc5
	.4byte	0x5d6
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x6
	.byte	0xc8
	.4byte	0x5fa
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x6
	.byte	0xc9
	.4byte	0x614
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x6
	.byte	0xcc
	.4byte	0x2db
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x6
	.byte	0xcd
	.4byte	0x300
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x6
	.byte	0xce
	.4byte	0x33
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x6
	.byte	0xd1
	.4byte	0x61a
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x6
	.byte	0xd2
	.4byte	0x62a
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x6
	.byte	0xd5
	.4byte	0x2db
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x6
	.byte	0xd8
	.4byte	0x33
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x6
	.byte	0xd9
	.4byte	0x9f
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x6
	.byte	0xe0
	.4byte	0x12a
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x6
	.byte	0xe2
	.4byte	0x11f
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x6
	.byte	0xe3
	.4byte	0x33
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.4byte	0x33
	.4byte	0x59a
	.uleb128 0x17
	.4byte	0x44c
	.uleb128 0x17
	.4byte	0x135
	.uleb128 0x17
	.4byte	0x59a
	.uleb128 0x17
	.4byte	0x33
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5a0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF93
	.uleb128 0xf
	.byte	0x4
	.4byte	0x57c
	.uleb128 0x16
	.4byte	0x33
	.4byte	0x5cb
	.uleb128 0x17
	.4byte	0x44c
	.uleb128 0x17
	.4byte	0x135
	.uleb128 0x17
	.4byte	0x5cb
	.uleb128 0x17
	.4byte	0x33
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5d1
	.uleb128 0x18
	.4byte	0x5a0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5ad
	.uleb128 0x16
	.4byte	0xb1
	.4byte	0x5fa
	.uleb128 0x17
	.4byte	0x44c
	.uleb128 0x17
	.4byte	0x135
	.uleb128 0x17
	.4byte	0xb1
	.uleb128 0x17
	.4byte	0x33
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5dc
	.uleb128 0x16
	.4byte	0x33
	.4byte	0x614
	.uleb128 0x17
	.4byte	0x44c
	.uleb128 0x17
	.4byte	0x135
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x600
	.uleb128 0x8
	.4byte	0x48
	.4byte	0x62a
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x48
	.4byte	0x63a
	.uleb128 0x9
	.4byte	0xf7
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x11d
	.4byte	0x452
	.uleb128 0x13
	.4byte	.LASF95
	.byte	0xc
	.byte	0x6
	.2byte	0x121
	.4byte	0x67b
	.uleb128 0x14
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x123
	.4byte	0x67b
	.byte	0
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x124
	.4byte	0x33
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x125
	.4byte	0x681
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x646
	.uleb128 0xf
	.byte	0x4
	.4byte	0x63a
	.uleb128 0x13
	.4byte	.LASF98
	.byte	0x18
	.byte	0x6
	.2byte	0x13d
	.4byte	0x6c9
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x13e
	.4byte	0x6c9
	.byte	0
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x13f
	.4byte	0x6c9
	.byte	0x6
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x140
	.4byte	0x3a
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x143
	.4byte	0x25
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x3a
	.4byte	0x6d9
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF103
	.byte	0x10
	.byte	0x6
	.2byte	0x156
	.4byte	0x71b
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x159
	.4byte	0x19c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x15a
	.4byte	0x33
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x15b
	.4byte	0x19c
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x15c
	.4byte	0x71b
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x19c
	.uleb128 0x13
	.4byte	.LASF108
	.byte	0x50
	.byte	0x6
	.2byte	0x160
	.4byte	0x7be
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x163
	.4byte	0x59a
	.byte	0
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x164
	.4byte	0x11f
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x165
	.4byte	0x11f
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x166
	.4byte	0x11f
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x167
	.4byte	0x7be
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x168
	.4byte	0x33
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x169
	.4byte	0x11f
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x16a
	.4byte	0x11f
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x16b
	.4byte	0x11f
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x16c
	.4byte	0x11f
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x16d
	.4byte	0x11f
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	0x5a0
	.4byte	0x7ce
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6d9
	.uleb128 0x19
	.4byte	0x7df
	.uleb128 0x17
	.4byte	0x44c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7d4
	.uleb128 0xf
	.byte	0x4
	.4byte	0x687
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1b2
	.uleb128 0x19
	.4byte	0x7fc
	.uleb128 0x17
	.4byte	0x33
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x802
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7f1
	.uleb128 0xf
	.byte	0x4
	.4byte	0x721
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0x7
	.byte	0x75
	.4byte	0x142
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0x7
	.byte	0x7a
	.4byte	0xaa
	.uleb128 0xd
	.4byte	.LASF122
	.byte	0x8
	.byte	0x7
	.byte	0x82
	.4byte	0x849
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x7
	.byte	0x83
	.4byte	0x819
	.byte	0
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0x7
	.byte	0x84
	.4byte	0xaa
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF125
	.byte	0x7
	.2byte	0x113
	.4byte	0x142
	.uleb128 0x5
	.4byte	.LASF126
	.byte	0x7
	.2byte	0x11c
	.4byte	0x142
	.uleb128 0x5
	.4byte	.LASF127
	.byte	0x7
	.2byte	0x11d
	.4byte	0xaa
	.uleb128 0xd
	.4byte	.LASF128
	.byte	0x8
	.byte	0x8
	.byte	0x11
	.4byte	0x892
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x8
	.byte	0x12
	.4byte	0x819
	.byte	0
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0x8
	.byte	0x13
	.4byte	0x861
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF130
	.byte	0x8
	.byte	0x8
	.byte	0x37
	.4byte	0x8b7
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x8
	.byte	0x38
	.4byte	0x33
	.byte	0
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x8
	.byte	0x39
	.4byte	0x33
	.byte	0x4
	.byte	0
	.uleb128 0x1a
	.string	"tms"
	.byte	0x10
	.byte	0x9
	.byte	0x10
	.4byte	0x8f4
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x9
	.byte	0x11
	.4byte	0x80e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x9
	.byte	0x12
	.4byte	0x80e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x9
	.byte	0x13
	.4byte	0x80e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x9
	.byte	0x14
	.4byte	0x80e
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF137
	.byte	0xa
	.byte	0x2c
	.4byte	0x56
	.uleb128 0x4
	.4byte	.LASF138
	.byte	0xa
	.byte	0x2d
	.4byte	0x61
	.uleb128 0x4
	.4byte	.LASF139
	.byte	0xa
	.byte	0x38
	.4byte	0x6c
	.uleb128 0x4
	.4byte	.LASF140
	.byte	0xa
	.byte	0x39
	.4byte	0x7e
	.uleb128 0x1b
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x65
	.4byte	0x978
	.uleb128 0x1c
	.4byte	.LASF141
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF143
	.byte	0x2
	.uleb128 0x1c
	.4byte	.LASF144
	.byte	0x4
	.uleb128 0x1c
	.4byte	.LASF145
	.byte	0x8
	.uleb128 0x1c
	.4byte	.LASF146
	.byte	0x10
	.uleb128 0x1c
	.4byte	.LASF147
	.byte	0x20
	.uleb128 0x1c
	.4byte	.LASF148
	.byte	0x40
	.uleb128 0x1c
	.4byte	.LASF149
	.byte	0x80
	.uleb128 0x1d
	.4byte	.LASF150
	.2byte	0x100
	.uleb128 0x1d
	.4byte	.LASF151
	.2byte	0x200
	.uleb128 0x1d
	.4byte	.LASF152
	.2byte	0x400
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x83
	.4byte	0x9a9
	.uleb128 0x1c
	.4byte	.LASF153
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF154
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF155
	.byte	0x2
	.uleb128 0x1c
	.4byte	.LASF156
	.byte	0x4
	.uleb128 0x1c
	.4byte	.LASF157
	.byte	0x8
	.uleb128 0x1c
	.4byte	.LASF158
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF159
	.uleb128 0x4
	.4byte	.LASF160
	.byte	0xc
	.byte	0x76
	.4byte	0x8ff
	.uleb128 0x1e
	.4byte	.LASF161
	.byte	0x1
	.byte	0x6d
	.4byte	0x915
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa1a
	.uleb128 0x1f
	.4byte	.LASF165
	.byte	0x1
	.byte	0x6f
	.4byte	0x915
	.uleb128 0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x20
	.4byte	.LASF163
	.4byte	0xa2a
	.uleb128 0x21
	.4byte	.LVL0
	.4byte	0x12e9
	.4byte	0xa06
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_boot_time_lock
	.byte	0
	.uleb128 0x23
	.4byte	.LVL2
	.4byte	0x12f4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_boot_time_lock
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x5a0
	.4byte	0xa2a
	.uleb128 0x9
	.4byte	0xf7
	.byte	0xd
	.byte	0
	.uleb128 0x18
	.4byte	0xa1a
	.uleb128 0x24
	.4byte	.LASF162
	.byte	0x1
	.byte	0x61
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa84
	.uleb128 0x25
	.4byte	.LASF173
	.byte	0x1
	.byte	0x61
	.4byte	0x915
	.uleb128 0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x20
	.4byte	.LASF163
	.4byte	0xa84
	.uleb128 0x21
	.4byte	.LVL4
	.4byte	0x12e9
	.4byte	0xa73
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL5
	.4byte	0x12f4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0xa1a
	.uleb128 0x26
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x115
	.4byte	0x915
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xabd
	.uleb128 0x27
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x117
	.4byte	0x915
	.4byte	.LLST0
	.uleb128 0x28
	.4byte	.LVL7
	.4byte	0x12ff
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF167
	.byte	0x1
	.byte	0x7b
	.4byte	0x915
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb36
	.uleb128 0x29
	.4byte	.LASF168
	.byte	0x1
	.byte	0x7d
	.4byte	0x915
	.4byte	.LLST1
	.uleb128 0x2a
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0xb23
	.uleb128 0x29
	.4byte	.LASF169
	.byte	0x1
	.byte	0x82
	.4byte	0x915
	.4byte	.LLST2
	.uleb128 0x29
	.4byte	.LASF170
	.byte	0x1
	.byte	0x87
	.4byte	0x90a
	.4byte	.LLST3
	.uleb128 0x28
	.4byte	.LVL12
	.4byte	0xa89
	.uleb128 0x28
	.4byte	.LVL38
	.4byte	0xa2f
	.byte	0
	.uleb128 0x28
	.4byte	.LVL9
	.4byte	0x9bb
	.uleb128 0x28
	.4byte	.LVL11
	.4byte	0xa89
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF225
	.byte	0x1
	.byte	0xa2
	.4byte	0x915
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb8f
	.uleb128 0x1f
	.4byte	.LASF171
	.byte	0x1
	.byte	0xa5
	.4byte	0x915
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x21
	.4byte	.LVL39
	.4byte	0x12e9
	.4byte	0xb75
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL40
	.4byte	0xabd
	.uleb128 0x23
	.4byte	.LVL42
	.4byte	0x12f4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF172
	.byte	0x1
	.byte	0xab
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbd8
	.uleb128 0x21
	.4byte	.LVL43
	.4byte	0x12e9
	.4byte	0xbbb
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_adjust_time_lock
	.byte	0
	.uleb128 0x28
	.4byte	.LVL44
	.4byte	0xabd
	.uleb128 0x23
	.4byte	.LVL45
	.4byte	0x12f4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_adjust_time_lock
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF188
	.byte	0x1
	.byte	0xb6
	.4byte	0x33
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xca5
	.uleb128 0x2d
	.4byte	.LASF174
	.byte	0x1
	.byte	0xb6
	.4byte	0xca5
	.4byte	.LLST4
	.uleb128 0x25
	.4byte	.LASF175
	.byte	0x1
	.byte	0xb6
	.4byte	0xcb0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.4byte	.Ldebug_ranges0+0
	.4byte	0xc71
	.uleb128 0x2f
	.string	"sec"
	.byte	0x1
	.byte	0xba
	.4byte	0x90a
	.4byte	.LLST5
	.uleb128 0x29
	.4byte	.LASF176
	.byte	0x1
	.byte	0xbb
	.4byte	0x90a
	.4byte	.LLST6
	.uleb128 0x21
	.4byte	.LVL50
	.4byte	0x12e9
	.4byte	0xc4b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_adjust_time_lock
	.byte	0
	.uleb128 0x28
	.4byte	.LVL51
	.4byte	0xabd
	.uleb128 0x28
	.4byte	.LVL52
	.4byte	0xa89
	.uleb128 0x23
	.4byte	.LVL56
	.4byte	0x12f4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_adjust_time_lock
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL57
	.4byte	0x12e9
	.4byte	0xc88
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_adjust_time_lock
	.byte	0
	.uleb128 0x28
	.4byte	.LVL58
	.4byte	0xabd
	.uleb128 0x23
	.4byte	.LVL61
	.4byte	0x12f4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_adjust_time_lock
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xcab
	.uleb128 0x18
	.4byte	0x86d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x86d
	.uleb128 0x30
	.4byte	.LASF183
	.byte	0x1
	.byte	0xde
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd48
	.uleb128 0x25
	.4byte	.LASF177
	.byte	0x1
	.byte	0xde
	.4byte	0x8ff
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.4byte	.LASF178
	.byte	0x1
	.byte	0xe8
	.4byte	0xd48
	.4byte	.LLST7
	.uleb128 0x29
	.4byte	.LASF179
	.byte	0x1
	.byte	0xe9
	.4byte	0xd4d
	.4byte	.LLST8
	.uleb128 0x20
	.4byte	.LASF163
	.4byte	0xd62
	.uleb128 0x29
	.4byte	.LASF180
	.byte	0x1
	.byte	0xea
	.4byte	0x8f4
	.4byte	.LLST9
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0x1
	.byte	0xeb
	.4byte	0x90a
	.4byte	.LLST10
	.uleb128 0x29
	.4byte	.LASF182
	.byte	0x1
	.byte	0xec
	.4byte	0x915
	.4byte	.LLST11
	.uleb128 0x28
	.4byte	.LVL66
	.4byte	0x130a
	.uleb128 0x28
	.4byte	.LVL72
	.4byte	0x9bb
	.uleb128 0x28
	.4byte	.LVL75
	.4byte	0xa2f
	.byte	0
	.uleb128 0x18
	.4byte	0x90a
	.uleb128 0x18
	.4byte	0x8ff
	.uleb128 0x8
	.4byte	0x5a0
	.4byte	0xd62
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x17
	.byte	0
	.uleb128 0x18
	.4byte	0xd52
	.uleb128 0x31
	.4byte	.LASF184
	.byte	0x1
	.byte	0xf2
	.4byte	0x8ff
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd8a
	.uleb128 0x20
	.4byte	.LASF163
	.4byte	0xd8a
	.byte	0
	.uleb128 0x18
	.4byte	0xd52
	.uleb128 0x1e
	.4byte	.LASF185
	.byte	0x1
	.byte	0x32
	.4byte	0x915
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdef
	.uleb128 0x29
	.4byte	.LASF178
	.byte	0x1
	.byte	0x34
	.4byte	0xdef
	.4byte	.LLST12
	.uleb128 0x2f
	.string	"cal"
	.byte	0x1
	.byte	0x35
	.4byte	0xd4d
	.4byte	.LLST13
	.uleb128 0x32
	.4byte	.LASF186
	.byte	0x1
	.byte	0x41
	.4byte	0xdef
	.uleb128 0x32
	.4byte	.LASF187
	.byte	0x1
	.byte	0x42
	.4byte	0xdef
	.uleb128 0x28
	.4byte	.LVL76
	.4byte	0x130a
	.uleb128 0x28
	.4byte	.LVL78
	.4byte	0xd67
	.byte	0
	.uleb128 0x18
	.4byte	0x915
	.uleb128 0x33
	.4byte	.LASF202
	.byte	0x1
	.byte	0xf7
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe1c
	.uleb128 0x28
	.4byte	.LVL82
	.4byte	0xd8f
	.uleb128 0x28
	.4byte	.LVL83
	.4byte	0x12ff
	.byte	0
	.uleb128 0x34
	.4byte	.LASF189
	.byte	0x1
	.byte	0xff
	.4byte	0x915
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe3f
	.uleb128 0x28
	.4byte	.LVL84
	.4byte	0xd8f
	.byte	0
	.uleb128 0x35
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x125
	.4byte	0x33
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb0
	.uleb128 0x36
	.string	"r"
	.byte	0x1
	.2byte	0x125
	.4byte	0x44c
	.4byte	.LLST14
	.uleb128 0x37
	.string	"tv"
	.byte	0x1
	.2byte	0x125
	.4byte	0xcb0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x36
	.string	"tz"
	.byte	0x1
	.2byte	0x125
	.4byte	0x135
	.4byte	.LLST15
	.uleb128 0x38
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x27
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x12a
	.4byte	0x915
	.4byte	.LLST16
	.uleb128 0x28
	.4byte	.LVL86
	.4byte	0xb36
	.uleb128 0x28
	.4byte	.LVL87
	.4byte	0xa89
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x108
	.4byte	0x80e
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf27
	.uleb128 0x36
	.string	"r"
	.byte	0x1
	.2byte	0x108
	.4byte	0x44c
	.4byte	.LLST17
	.uleb128 0x3a
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x108
	.4byte	0xf27
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3b
	.string	"t"
	.byte	0x1
	.2byte	0x10a
	.4byte	0x80e
	.4byte	.LLST18
	.uleb128 0x3c
	.string	"tv"
	.byte	0x1
	.2byte	0x10f
	.4byte	0x86d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.4byte	.LVL95
	.4byte	0x1316
	.uleb128 0x23
	.4byte	.LVL97
	.4byte	0xe3f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8b7
	.uleb128 0x39
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x135
	.4byte	0x33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfab
	.uleb128 0x36
	.string	"tv"
	.byte	0x1
	.2byte	0x135
	.4byte	0xca5
	.4byte	.LLST19
	.uleb128 0x36
	.string	"tz"
	.byte	0x1
	.2byte	0x135
	.4byte	0xfab
	.4byte	.LLST20
	.uleb128 0x38
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x3b
	.string	"now"
	.byte	0x1
	.2byte	0x13b
	.4byte	0x915
	.4byte	.LLST21
	.uleb128 0x27
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x13c
	.4byte	0x915
	.4byte	.LLST22
	.uleb128 0x28
	.4byte	.LVL100
	.4byte	0xb8f
	.uleb128 0x28
	.4byte	.LVL104
	.4byte	0xa89
	.uleb128 0x28
	.4byte	.LVL107
	.4byte	0xa2f
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xfb1
	.uleb128 0x18
	.4byte	0x892
	.uleb128 0x39
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x146
	.4byte	0x33
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x102b
	.uleb128 0x36
	.string	"us"
	.byte	0x1
	.2byte	0x146
	.4byte	0x855
	.4byte	.LLST23
	.uleb128 0x3d
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x148
	.4byte	0x102b
	.2byte	0x2710
	.uleb128 0x21
	.4byte	.LVL110
	.4byte	0x1322
	.4byte	0x1001
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL112
	.4byte	0x132e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1b
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xd1b71759
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x3d
	.byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x33
	.uleb128 0x39
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x154
	.4byte	0x2c
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1071
	.uleb128 0x3e
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x154
	.4byte	0x2c
	.4byte	.LLST24
	.uleb128 0x23
	.4byte	.LVL114
	.4byte	0xfb6
	.uleb128 0x22
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
	.uleb128 0x39
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x15a
	.4byte	0x8ff
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1095
	.uleb128 0x28
	.4byte	.LVL116
	.4byte	0xa89
	.byte	0
	.uleb128 0x39
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x165
	.4byte	0x8ff
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10c9
	.uleb128 0x3e
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x165
	.4byte	0x8ff
	.4byte	.LLST25
	.uleb128 0x28
	.4byte	.LVL118
	.4byte	0xa89
	.byte	0
	.uleb128 0x39
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x16e
	.4byte	0x915
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10ed
	.uleb128 0x28
	.4byte	.LVL120
	.4byte	0xd8f
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x177
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1141
	.uleb128 0x27
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x17b
	.4byte	0x90a
	.4byte	.LLST26
	.uleb128 0x28
	.4byte	.LVL121
	.4byte	0xb8f
	.uleb128 0x28
	.4byte	.LVL122
	.4byte	0xd8f
	.uleb128 0x28
	.4byte	.LVL123
	.4byte	0x12ff
	.uleb128 0x28
	.4byte	.LVL125
	.4byte	0xb36
	.uleb128 0x28
	.4byte	.LVL127
	.4byte	0xa2f
	.byte	0
	.uleb128 0x39
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x181
	.4byte	0x33
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11b2
	.uleb128 0x3e
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x181
	.4byte	0x849
	.4byte	.LLST27
	.uleb128 0x37
	.string	"tp"
	.byte	0x1
	.2byte	0x181
	.4byte	0x11b2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3c
	.string	"tv"
	.byte	0x1
	.2byte	0x188
	.4byte	0x86d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.4byte	.LVL129
	.4byte	0x133a
	.uleb128 0x21
	.4byte	.LVL133
	.4byte	0xf2d
	.4byte	0x11a8
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL135
	.4byte	0x133a
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x11b8
	.uleb128 0x18
	.4byte	0x824
	.uleb128 0x35
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x19a
	.4byte	0x33
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x124c
	.uleb128 0x3e
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x19a
	.4byte	0x849
	.4byte	.LLST28
	.uleb128 0x37
	.string	"tp"
	.byte	0x1
	.2byte	0x19a
	.4byte	0x124c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3c
	.string	"tv"
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x86d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x915
	.4byte	.LLST29
	.uleb128 0x28
	.4byte	.LVL138
	.4byte	0x133a
	.uleb128 0x21
	.4byte	.LVL141
	.4byte	0xe3f
	.4byte	0x1239
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL144
	.4byte	0x12ff
	.uleb128 0x28
	.4byte	.LVL150
	.4byte	0x133a
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x824
	.uleb128 0x39
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x33
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1294
	.uleb128 0x3e
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x849
	.4byte	.LLST30
	.uleb128 0x37
	.string	"res"
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x124c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	.LVL153
	.4byte	0x133a
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF210
	.byte	0x1
	.byte	0x51
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	s_boot_time_lock
	.uleb128 0x1f
	.4byte	.LASF211
	.byte	0x1
	.byte	0x52
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	s_adjust_time_lock
	.uleb128 0x1f
	.4byte	.LASF212
	.byte	0x1
	.byte	0x54
	.4byte	0x915
	.uleb128 0x5
	.byte	0x3
	.4byte	adjtime_start
	.uleb128 0x1f
	.4byte	.LASF213
	.byte	0x1
	.byte	0x56
	.4byte	0x90a
	.uleb128 0x5
	.byte	0x3
	.4byte	adjtime_total_correction
	.uleb128 0x40
	.4byte	.LASF226
	.byte	0x1
	.byte	0x5d
	.4byte	0x915
	.uleb128 0x5
	.byte	0x3
	.4byte	s_microseconds_offset
	.uleb128 0x41
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0x3
	.byte	0x20
	.uleb128 0x41
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0x3
	.byte	0x24
	.uleb128 0x41
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0xd
	.byte	0xbe
	.uleb128 0x42
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0xe
	.2byte	0x20c
	.uleb128 0x42
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0xf
	.2byte	0x50a
	.uleb128 0x42
	.4byte	.LASF219
	.4byte	.LASF219
	.byte	0x10
	.2byte	0x17f
	.uleb128 0x42
	.4byte	.LASF220
	.4byte	.LASF220
	.byte	0xf
	.2byte	0x32b
	.uleb128 0x41
	.4byte	.LASF221
	.4byte	.LASF221
	.byte	0x11
	.byte	0xf
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x14
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL8
	.4byte	.LFE32
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL10
	.4byte	.LVL19
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL37
	.4byte	.LFE23
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x7
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x7c
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x8
	.byte	0x7c
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x7c
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0xe
	.byte	0x3
	.4byte	adjtime_start
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	adjtime_start+4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x78
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0xe
	.byte	0x3
	.4byte	adjtime_start
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	adjtime_start+4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x8
	.byte	0x7c
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x7c
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0xe
	.byte	0x3
	.4byte	adjtime_start
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	adjtime_start+4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x78
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0xe
	.byte	0x3
	.4byte	adjtime_start
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.4byte	adjtime_start+4
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x6
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL47
	.4byte	.LVL53
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL49
	.4byte	.LVL55
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL66
	.4byte	.LVL69
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL74
	.4byte	.LVL75-1
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL78
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL85
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL88
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL94
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL96
	.4byte	.LVL97-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL99
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL101
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL103
	.4byte	.LVL106
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL108
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x5
	.byte	0x72
	.sleb128 -9999
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
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
.LLST25:
	.4byte	.LVL117
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
	.4byte	.LVL134
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL136
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL137
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL140
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
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL151
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL141
	.4byte	.LVL145
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL145
	.4byte	.LVL149
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL149
	.4byte	.LFE42
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL152
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL156
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xd4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF199:
	.string	"system_relative_time"
.LASF42:
	.string	"_fnargs"
.LASF98:
	.string	"_rand48"
.LASF209:
	.string	"clock_getres"
.LASF59:
	.string	"_emergency"
.LASF169:
	.string	"since_boot"
.LASF91:
	.string	"_mbstate"
.LASF193:
	.string	"settimeofday"
.LASF147:
	.string	"MAC_TRIG"
.LASF71:
	.string	"_atexit0"
.LASF185:
	.string	"get_rtc_time_us"
.LASF206:
	.string	"clock_id"
.LASF118:
	.string	"_wcrtomb_state"
.LASF119:
	.string	"_wcsrtombs_state"
.LASF0:
	.string	"long long unsigned int"
.LASF79:
	.string	"_lbfsize"
.LASF8:
	.string	"__int64_t"
.LASF164:
	.string	"get_time_since_boot"
.LASF180:
	.string	"cal_diff"
.LASF155:
	.string	"REJECT_INT"
.LASF116:
	.string	"_mbrtowc_state"
.LASF217:
	.string	"rtc_time_get"
.LASF148:
	.string	"UART0_TRIG"
.LASF111:
	.string	"_wctomb_state"
.LASF32:
	.string	"__tm_sec"
.LASF13:
	.string	"_off_t"
.LASF85:
	.string	"_close"
.LASF3:
	.string	"signed char"
.LASF158:
	.string	"RTC_TIME_VALID_INT"
.LASF162:
	.string	"set_boot_time"
.LASF204:
	.string	"s_microseconds_offset_cur"
.LASF86:
	.string	"_ubuf"
.LASF220:
	.string	"vTaskDelay"
.LASF157:
	.string	"RTC_WDT_INT"
.LASF51:
	.string	"_base"
.LASF34:
	.string	"__tm_hour"
.LASF73:
	.string	"__sf"
.LASF41:
	.string	"_on_exit_args"
.LASF139:
	.string	"int64_t"
.LASF194:
	.string	"usleep"
.LASF72:
	.string	"__sglue"
.LASF226:
	.string	"s_microseconds_offset"
.LASF14:
	.string	"long int"
.LASF134:
	.string	"tms_stime"
.LASF77:
	.string	"_flags"
.LASF45:
	.string	"_is_cxa"
.LASF55:
	.string	"_stdin"
.LASF105:
	.string	"_result_k"
.LASF11:
	.string	"_lock_t"
.LASF9:
	.string	"long long int"
.LASF127:
	.string	"suseconds_t"
.LASF177:
	.string	"new_cal"
.LASF66:
	.string	"_cvtbuf"
.LASF89:
	.string	"_offset"
.LASF149:
	.string	"UART1_TRIG"
.LASF173:
	.string	"time_us"
.LASF117:
	.string	"_mbsrtowcs_state"
.LASF109:
	.string	"_strtok_last"
.LASF115:
	.string	"_mbrlen_state"
.LASF171:
	.string	"adjust_time"
.LASF143:
	.string	"EXT_EVENT1_TRIG"
.LASF141:
	.string	"NO_SLEEP"
.LASF190:
	.string	"_gettimeofday_r"
.LASF48:
	.string	"_fns"
.LASF153:
	.string	"NO_INT"
.LASF7:
	.string	"__uint32_t"
.LASF120:
	.string	"clock_t"
.LASF28:
	.string	"_sign"
.LASF225:
	.string	"get_adjusted_boot_time"
.LASF130:
	.string	"timezone"
.LASF23:
	.string	"_flock_t"
.LASF57:
	.string	"_stderr"
.LASF30:
	.string	"_Bigint"
.LASF205:
	.string	"clock_settime"
.LASF200:
	.string	"current_time"
.LASF179:
	.string	"cur_cal"
.LASF82:
	.string	"_read"
.LASF210:
	.string	"s_boot_time_lock"
.LASF31:
	.string	"__tm"
.LASF49:
	.string	"_on_exit_args_ptr"
.LASF156:
	.string	"SDIO_IDLE_INT"
.LASF18:
	.string	"__wchb"
.LASF56:
	.string	"_stdout"
.LASF65:
	.string	"_cvtlen"
.LASF122:
	.string	"timespec"
.LASF25:
	.string	"long unsigned int"
.LASF78:
	.string	"_file"
.LASF128:
	.string	"timeval"
.LASF80:
	.string	"_data"
.LASF96:
	.string	"_niobs"
.LASF187:
	.string	"ticks_high"
.LASF216:
	.string	"esp_timer_get_time"
.LASF203:
	.string	"esp_sync_counters_rtc_and_frc"
.LASF196:
	.string	"sleep"
.LASF75:
	.string	"_signal_buf"
.LASF69:
	.string	"_asctime_buf"
.LASF104:
	.string	"_result"
.LASF17:
	.string	"__wch"
.LASF16:
	.string	"wint_t"
.LASF131:
	.string	"tz_minuteswest"
.LASF90:
	.string	"_lock"
.LASF218:
	.string	"xTaskGetTickCount"
.LASF175:
	.string	"outdelta"
.LASF100:
	.string	"_mult"
.LASF126:
	.string	"useconds_t"
.LASF161:
	.string	"get_boot_time"
.LASF83:
	.string	"_write"
.LASF37:
	.string	"__tm_year"
.LASF20:
	.string	"__count"
.LASF211:
	.string	"s_adjust_time_lock"
.LASF142:
	.string	"EXT_EVENT0_TRIG"
.LASF74:
	.string	"_misc"
.LASF12:
	.string	"_LOCK_RECURSIVE_T"
.LASF124:
	.string	"tv_nsec"
.LASF19:
	.string	"sizetype"
.LASF178:
	.string	"ticks"
.LASF189:
	.string	"esp_clk_rtc_time"
.LASF123:
	.string	"tv_sec"
.LASF197:
	.string	"seconds"
.LASF160:
	.string	"TickType_t"
.LASF188:
	.string	"adjtime"
.LASF170:
	.string	"correction"
.LASF140:
	.string	"uint64_t"
.LASF176:
	.string	"usec"
.LASF145:
	.string	"TIMER_EXPIRE"
.LASF213:
	.string	"adjtime_total_correction"
.LASF214:
	.string	"_lock_acquire"
.LASF36:
	.string	"__tm_mon"
.LASF46:
	.string	"_atexit"
.LASF152:
	.string	"BT_TRIG"
.LASF60:
	.string	"__sdidinit"
.LASF64:
	.string	"_gamma_signgam"
.LASF151:
	.string	"SAR_TRIG"
.LASF121:
	.string	"time_t"
.LASF10:
	.string	"__uint64_t"
.LASF167:
	.string	"adjust_boot_time"
.LASF150:
	.string	"TOUCH_TRIG"
.LASF107:
	.string	"_freelist"
.LASF186:
	.string	"ticks_low"
.LASF224:
	.string	"/home/raphael/rtone/lcd/build/newlib"
.LASF221:
	.string	"__errno"
.LASF223:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/time.c"
.LASF35:
	.string	"__tm_mday"
.LASF159:
	.string	"_Bool"
.LASF137:
	.string	"int32_t"
.LASF4:
	.string	"unsigned char"
.LASF97:
	.string	"_iobs"
.LASF182:
	.string	"boot_time_adj"
.LASF222:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF144:
	.string	"GPIO_TRIG"
.LASF39:
	.string	"__tm_yday"
.LASF50:
	.string	"__sbuf"
.LASF92:
	.string	"_flags2"
.LASF133:
	.string	"tms_utime"
.LASF94:
	.string	"__FILE"
.LASF22:
	.string	"_mbstate_t"
.LASF76:
	.string	"__sFILE"
.LASF195:
	.string	"us_per_tick"
.LASF102:
	.string	"_rand_next"
.LASF163:
	.string	"__func__"
.LASF110:
	.string	"_mblen_state"
.LASF58:
	.string	"_inc"
.LASF47:
	.string	"_ind"
.LASF62:
	.string	"_current_locale"
.LASF43:
	.string	"_dso_handle"
.LASF63:
	.string	"__cleanup"
.LASF27:
	.string	"_maxwds"
.LASF53:
	.string	"_reent"
.LASF99:
	.string	"_seed"
.LASF129:
	.string	"tv_usec"
.LASF154:
	.string	"WAKEUP_INT"
.LASF21:
	.string	"__value"
.LASF84:
	.string	"_seek"
.LASF192:
	.string	"ptms"
.LASF38:
	.string	"__tm_wday"
.LASF15:
	.string	"_fpos_t"
.LASF54:
	.string	"_errno"
.LASF93:
	.string	"char"
.LASF88:
	.string	"_blksize"
.LASF52:
	.string	"_size"
.LASF1:
	.string	"unsigned int"
.LASF191:
	.string	"_times_r"
.LASF181:
	.string	"boot_time_diff"
.LASF146:
	.string	"SDIO_TRIG"
.LASF183:
	.string	"esp_clk_slowclk_cal_set"
.LASF6:
	.string	"__int32_t"
.LASF103:
	.string	"_mprec"
.LASF26:
	.string	"_next"
.LASF44:
	.string	"_fntypes"
.LASF108:
	.string	"_misc_reent"
.LASF2:
	.string	"short unsigned int"
.LASF101:
	.string	"_add"
.LASF212:
	.string	"adjtime_start"
.LASF24:
	.string	"__ULong"
.LASF114:
	.string	"_getdate_err"
.LASF215:
	.string	"_lock_release"
.LASF136:
	.string	"tms_cstime"
.LASF172:
	.string	"adjtime_corr_stop"
.LASF207:
	.string	"clock_gettime"
.LASF61:
	.string	"_current_category"
.LASF138:
	.string	"uint32_t"
.LASF174:
	.string	"delta"
.LASF81:
	.string	"_cookie"
.LASF29:
	.string	"_wds"
.LASF95:
	.string	"_glue"
.LASF184:
	.string	"esp_clk_slowclk_cal_get"
.LASF132:
	.string	"tz_dsttime"
.LASF113:
	.string	"_l64a_buf"
.LASF5:
	.string	"short int"
.LASF70:
	.string	"_sig_func"
.LASF202:
	.string	"esp_set_time_from_rtc"
.LASF87:
	.string	"_nbuf"
.LASF198:
	.string	"system_get_time"
.LASF208:
	.string	"monotonic_time_us"
.LASF40:
	.string	"__tm_isdst"
.LASF68:
	.string	"_localtime_buf"
.LASF33:
	.string	"__tm_min"
.LASF67:
	.string	"_r48"
.LASF168:
	.string	"boot_time"
.LASF112:
	.string	"_mbtowc_state"
.LASF166:
	.string	"microseconds"
.LASF106:
	.string	"_p5s"
.LASF125:
	.string	"clockid_t"
.LASF219:
	.string	"ets_delay_us"
.LASF201:
	.string	"system_get_rtc_time"
.LASF165:
	.string	"result"
.LASF135:
	.string	"tms_cutime"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
