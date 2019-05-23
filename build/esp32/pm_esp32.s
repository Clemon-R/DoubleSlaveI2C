	.file	"pm_esp32.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, s_mode_mask
	.align	4
	.type	get_lowest_allowed_mode, @function
get_lowest_allowed_mode:
.LFB25:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/pm_esp32.c"
	.loc 1 249 0
	entry	sp, 32
.LCFI0:
	.loc 1 251 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
	bgeui	a8, 8, .L3
	.loc 1 253 0
	bltui	a8, 4, .L4
	.loc 1 254 0
	movi.n	a2, 2
	retw.n
.L3:
	.loc 1 252 0
	movi.n	a2, 3
	retw.n
.L4:
	.loc 1 256 0
	movi.n	a2, 1
	.loc 1 260 0
	retw.n
.LFE25:
	.size	get_lowest_allowed_mode, .-get_lowest_allowed_mode
	.literal_position
	.literal .LC1, 2147483646
	.literal .LC2, s_ccount_mul
	.literal .LC3, s_ccount_div
	.literal .LC4, _xt_tick_divisor
	.align	4
	.type	update_ccompare, @function
update_ccompare:
.LFB29:
	.loc 1 421 0
	entry	sp, 32
.LCFI1:
.LBB17:
	.loc 1 422 0
#APP
# 422 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/pm_esp32.c" 1
	rsr.ccount a11
# 0 "" 2
.LVL0:
#NO_APP
.LBE17:
.LBB18:
	.loc 1 423 0
#APP
# 423 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/pm_esp32.c" 1
	rsr.ccompare0 a9
# 0 "" 2
.LVL1:
#NO_APP
.LBE18:
	.loc 1 424 0
	sub	a9, a9, a11
.LVL2:
	movi	a10, -0x3e8
	add.n	a10, a9, a10
	l32r	a8, .LC1
	bltu	a8, a10, .L5
.LVL3:
.LBB19:
	.loc 1 426 0
	l32r	a8, .LC2
	l32i.n	a10, a8, 0
	mull	a9, a9, a10
.LVL4:
	l32r	a8, .LC3
	l32i.n	a8, a8, 0
	add.n	a9, a9, a8
	addi.n	a9, a9, -1
	quou	a8, a9, a8
.LVL5:
	.loc 1 427 0
	l32r	a9, .LC4
	l32i.n	a9, a9, 0
	bgeu	a8, a9, .L5
.LBB20:
	.loc 1 428 0
	add.n	a8, a11, a8
.LVL6:
.LBB21:
	.loc 1 429 0
#APP
# 429 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/pm_esp32.c" 1
	wsr.ccompare0 a8 ; esync
# 0 "" 2
.LVL7:
#NO_APP
.L5:
	retw.n
.LBE21:
.LBE20:
.LBE19:
.LFE29:
	.size	update_ccompare, .-update_ccompare
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC12:
	.string	"false && \"failed to update CCOMPARE, possible deadlock\""
	.align	4
.LC15:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/pm_esp32.c"
	.section	.iram1
	.literal_position
	.literal .LC5, 1000000
	.literal .LC6, 1374389535
	.literal .LC7, _xt_tick_divisor
	.literal .LC8, s_rtos_lock_handle
	.literal .LC9, s_ccount_div
	.literal .LC10, s_ccount_mul
	.literal .LC11, s_need_update_ccompare
	.literal .LC13, .LC12
	.literal .LC14, __func__$5598
	.literal .LC16, .LC15
	.align	4
	.type	on_freq_update, @function
on_freq_update:
.LFB27:
	.loc 1 307 0
.LVL8:
	entry	sp, 32
.LCFI2:
	.loc 1 308 0
	movi.n	a10, 0x50
	minu	a4, a2, a10
.LVL9:
	.loc 1 309 0
	minu	a10, a3, a10
.LVL10:
	.loc 1 311 0
	beq	a4, a10, .L8
	.loc 1 312 0
	call8	esp_timer_impl_update_apb_freq
.LVL11:
.L8:
	.loc 1 316 0
	l32r	a8, .LC5
	mull	a4, a3, a8
.LVL12:
	l32r	a8, .LC6
	muluh	a8, a4, a8
	srli	a8, a8, 5
	l32r	a4, .LC7
	s32i.n	a8, a4, 0
.LBB22:
.LBB23:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a4
 extui a4,a4,13,1
# 0 "" 2
.LVL13:
#NO_APP
.LBE23:
.LBE22:
	.loc 1 319 0
	l32r	a8, .LC8
	addx4	a8, a4, a8
	l32i.n	a8, a8, 0
	beqz.n	a8, .L7
.LBB24:
	.loc 1 324 0
	l32r	a8, .LC9
	s32i.n	a2, a8, 0
	.loc 1 325 0
	l32r	a2, .LC10
.LVL14:
	s32i.n	a3, a2, 0
	.loc 1 328 0
	call8	update_ccompare
.LVL15:
	.loc 1 332 0
	movi.n	a8, 1
	movi.n	a3, 0
.LVL16:
	mov.n	a2, a3
	moveqz	a2, a8, a4
	extui	a2, a2, 0, 8
.LVL17:
	.loc 1 334 0
	l32r	a4, .LC11
.LVL18:
	add.n	a4, a4, a2
	memw
	s8i	a8, a4, 0
	.loc 1 335 0
	mov.n	a10, a2
	call8	esp_crosscore_int_send_freq_switch
.LVL19:
	.loc 1 337 0
	mov.n	a9, a3
	.loc 1 338 0
	j	.L10
.LVL20:
.L11:
	.loc 1 339 0
	addi.n	a9, a9, 1
.LVL21:
	l32r	a3, .LC5
	bne	a9, a3, .L10
	.loc 1 340 0
	l32r	a13, .LC13
	l32r	a12, .LC14
	movi	a11, 0x154
	l32r	a10, .LC16
	call8	__assert_func
.LVL22:
.L10:
	.loc 1 338 0
	l32r	a8, .LC11
	add.n	a8, a8, a2
	l8ui	a8, a8, 0
	extui	a8, a8, 0, 8
	bnez.n	a8, .L11
	.loc 1 345 0
	movi.n	a2, 0
.LVL23:
	l32r	a3, .LC10
	s32i.n	a2, a3, 0
	.loc 1 346 0
	l32r	a3, .LC9
	s32i.n	a2, a3, 0
.LVL24:
.L7:
	retw.n
.LBE24:
.LFE27:
	.size	on_freq_update, .-on_freq_update
	.literal_position
	.literal .LC17, s_switch_lock
	.literal .LC18, s_is_switching
	.literal .LC19, s_new_mode
	.literal .LC20, s_need_update_ccompare
	.literal .LC21, s_config_changed
	.literal .LC22, s_cpu_freq_by_mode
	.literal .LC23, s_mode
	.align	4
	.type	do_switch, @function
do_switch:
.LFB28:
	.loc 1 358 0
.LVL25:
	entry	sp, 64
.LCFI3:
.LBB25:
.LBB26:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL26:
#NO_APP
.L17:
.LBE26:
.LBE25:
	.loc 1 362 0
	l32r	a10, .LC17
	call8	vTaskEnterCritical
.LVL27:
	.loc 1 363 0
	l32r	a8, .LC18
	l8ui	a8, a8, 0
	extui	a8, a8, 0, 8
	beqz.n	a8, .L13
	.loc 1 366 0
	l32r	a8, .LC19
	l32i.n	a8, a8, 0
	bltu	a2, a8, .L14
	.loc 1 367 0
	l32r	a10, .LC17
	call8	vTaskExitCritical
.LVL28:
	retw.n
.L14:
	.loc 1 370 0
	l32r	a8, .LC20
	add.n	a8, a8, a3
	l8ui	a8, a8, 0
	extui	a8, a8, 0, 8
	beqz.n	a8, .L16
	.loc 1 371 0
	l32r	a8, .LC20
	add.n	a8, a8, a3
	movi.n	a9, 0
	memw
	s8i	a9, a8, 0
.L16:
	.loc 1 373 0
	l32r	a10, .LC17
	call8	vTaskExitCritical
.LVL29:
	.loc 1 374 0
	j	.L17
.L13:
	.loc 1 375 0
	l32r	a3, .LC19
.LVL30:
	s32i.n	a2, a3, 0
	.loc 1 376 0
	movi.n	a4, 1
	l32r	a3, .LC18
	memw
	s8i	a4, a3, 0
	.loc 1 377 0
	l32r	a3, .LC21
	l8ui	a4, a3, 0
.LVL31:
	.loc 1 378 0
	movi.n	a8, 0
	s8i	a8, a3, 0
.LVL32:
	.loc 1 379 0
	l32r	a10, .LC17
	call8	vTaskExitCritical
.LVL33:
	.loc 1 381 0
	slli	a3, a2, 4
	l32r	a8, .LC22
	add.n	a3, a8, a3
	l32i.n	a8, a3, 0
	l32i.n	a9, a3, 4
	s32i.n	a8, sp, 0
	l32i.n	a8, a3, 8
	s32i.n	a9, sp, 4
	l32i.n	a3, a3, 12
	s32i.n	a8, sp, 8
	s32i.n	a3, sp, 12
	.loc 1 384 0
	bnez.n	a4, .L18
	.loc 1 385 0
	l32r	a3, .LC23
	l32i.n	a3, a3, 0
	slli	a3, a3, 4
	l32r	a4, .LC22
.LVL34:
	add.n	a3, a4, a3
	l32i.n	a4, a3, 0
	l32i.n	a8, a3, 4
	s32i.n	a4, sp, 16
	l32i.n	a4, a3, 8
	s32i.n	a8, sp, 20
	l32i.n	a3, a3, 12
	s32i.n	a4, sp, 24
	s32i.n	a3, sp, 28
	j	.L19
.LVL35:
.L18:
	.loc 1 387 0
	addi	a10, sp, 16
	call8	rtc_clk_cpu_freq_get_config
.LVL36:
.L19:
	.loc 1 390 0
	l32i.n	a4, sp, 12
	l32i.n	a3, sp, 28
	beq	a4, a3, .L20
.LVL37:
.LBB27:
	.loc 1 397 0
	bgeu	a4, a3, .L21
	.loc 1 398 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	on_freq_update
.LVL38:
.L21:
	.loc 1 400 0
	mov.n	a10, sp
	call8	rtc_clk_cpu_freq_set_config_fast
.LVL39:
	.loc 1 401 0
	bltu	a4, a3, .L20
	.loc 1 402 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	on_freq_update
.LVL40:
.L20:
.LBE27:
	.loc 1 407 0
	l32r	a3, .LC17
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL41:
	.loc 1 408 0
	l32r	a4, .LC23
	s32i.n	a2, a4, 0
	.loc 1 409 0
	movi.n	a4, 0
	l32r	a2, .LC18
.LVL42:
	memw
	s8i	a4, a2, 0
	.loc 1 410 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL43:
	retw.n
.LFE28:
	.size	do_switch, .-do_switch
	.literal_position
	.literal .LC24, s_core_idle
	.literal .LC25, s_rtos_lock_handle
	.align	4
	.type	leave_idle, @function
leave_idle:
.LFB30:
	.loc 1 435 0
	entry	sp, 32
.LCFI4:
.LBB28:
.LBB29:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL44:
#NO_APP
.LBE29:
.LBE28:
	.loc 1 437 0
	l32r	a8, .LC24
	add.n	a8, a8, a2
	l8ui	a8, a8, 0
	beqz.n	a8, .L22
	.loc 1 439 0
	l32r	a8, .LC25
	addx4	a8, a2, a8
	l32i.n	a10, a8, 0
	call8	esp_pm_lock_acquire
.LVL45:
	.loc 1 440 0
	l32r	a8, .LC24
	add.n	a2, a8, a2
.LVL46:
	movi.n	a8, 0
	s8i	a8, a2, 0
.L22:
	retw.n
.LFE30:
	.size	leave_idle, .-leave_idle
	.section	.text.esp_pm_impl_get_mode,"ax",@progbits
	.align	4
	.global	esp_pm_impl_get_mode
	.type	esp_pm_impl_get_mode, @function
esp_pm_impl_get_mode:
.LFB23:
	.loc 1 154 0
.LVL47:
	entry	sp, 32
.LCFI5:
	.loc 1 156 0
	beqz.n	a2, .L26
	.loc 1 158 0
	beqi	a2, 1, .L27
	.loc 1 160 0
	beqi	a2, 2, .L28
	.loc 1 164 0
	call8	abort
.LVL48:
.L26:
	.loc 1 157 0
	movi.n	a2, 3
.LVL49:
	retw.n
.LVL50:
.L27:
	.loc 1 159 0
	movi.n	a2, 2
.LVL51:
	retw.n
.LVL52:
.L28:
	.loc 1 161 0
	movi.n	a2, 1
.LVL53:
	.loc 1 166 0
	retw.n
.LFE23:
	.size	esp_pm_impl_get_mode, .-esp_pm_impl_get_mode
	.section	.text.esp_pm_configure,"ax",@progbits
	.align	4
	.global	esp_pm_configure
	.type	esp_pm_configure, @function
esp_pm_configure:
.LFB24:
	.loc 1 169 0
.LVL54:
	entry	sp, 32
.LCFI6:
	.loc 1 246 0
	movi	a2, 0x106
.LVL55:
	retw.n
.LFE24:
	.size	esp_pm_configure, .-esp_pm_configure
	.section	.iram1
	.literal_position
	.literal .LC26, s_switch_lock
	.literal .LC27, s_mode_lock_counts
	.literal .LC28, s_mode_mask
	.literal .LC29, s_mode
	.align	4
	.global	esp_pm_impl_switch_mode
	.type	esp_pm_impl_switch_mode, @function
esp_pm_impl_switch_mode:
.LFB26:
	.loc 1 264 0
.LVL56:
	entry	sp, 32
.LCFI7:
.LVL57:
	.loc 1 266 0
	movi.n	a4, 1
.LVL58:
	ssl	a2
	sll	a4, a4
.LVL59:
	.loc 1 267 0
	l32r	a10, .LC26
	call8	vTaskEnterCritical
.LVL60:
	.loc 1 269 0
	bnez.n	a3, .L31
	.loc 1 270 0
	l32r	a8, .LC27
	addx4	a2, a2, a8
.LVL61:
	l32i.n	a8, a2, 0
	addi.n	a8, a8, 1
	s32i.n	a8, a2, 0
.LVL62:
	j	.L32
.LVL63:
.L31:
	.loc 1 272 0
	l32r	a8, .LC27
	addx4	a2, a2, a8
.LVL64:
	l32i.n	a8, a2, 0
	addi.n	a9, a8, -1
	s32i.n	a9, a2, 0
.LVL65:
.L32:
	.loc 1 274 0
	bnei	a8, 1, .L37
	.loc 1 275 0
	bnez.n	a3, .L34
	.loc 1 276 0
	l32r	a3, .LC28
.LVL66:
	l32i.n	a2, a3, 0
	or	a4, a2, a4
.LVL67:
	s32i.n	a4, a3, 0
	.loc 1 280 0
	movi.n	a2, 1
.LVL68:
	j	.L33
.LVL69:
.L34:
	.loc 1 278 0
	movi.n	a2, -1
	xor	a4, a2, a4
.LVL70:
	l32r	a2, .LC28
	l32i.n	a3, a2, 0
.LVL71:
	and	a4, a3, a4
	s32i.n	a4, a2, 0
	.loc 1 280 0
	movi.n	a2, 1
.LVL72:
	j	.L33
.LVL73:
.L37:
	.loc 1 265 0
	movi.n	a2, 0
.LVL74:
.L33:
	.loc 1 283 0
	l32r	a3, .LC29
	l32i.n	a3, a3, 0
.LVL75:
	.loc 1 284 0
	beqz.n	a2, .L35
	.loc 1 285 0
	call8	get_lowest_allowed_mode
.LVL76:
	mov.n	a3, a10
.LVL77:
.L35:
	.loc 1 294 0
	l32r	a10, .LC26
	call8	vTaskExitCritical
.LVL78:
	.loc 1 295 0
	beqz.n	a2, .L30
	.loc 1 295 0 is_stmt 0 discriminator 1
	l32r	a2, .LC29
.LVL79:
	l32i.n	a2, a2, 0
	beq	a3, a2, .L30
	.loc 1 296 0 is_stmt 1
	mov.n	a10, a3
	call8	do_switch
.LVL80:
.L30:
	retw.n
.LFE26:
	.size	esp_pm_impl_switch_mode, .-esp_pm_impl_switch_mode
	.section	.text.esp_pm_impl_idle_hook,"ax",@progbits
	.literal_position
	.literal .LC30, s_core_idle
	.literal .LC31, s_rtos_lock_handle
	.align	4
	.global	esp_pm_impl_idle_hook
	.type	esp_pm_impl_idle_hook, @function
esp_pm_impl_idle_hook:
.LFB31:
	.loc 1 445 0
	entry	sp, 32
.LCFI8:
.LBB30:
.LBB31:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL81:
#NO_APP
.LBE31:
.LBE30:
.LBB32:
.LBB33:
.LBB34:
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h"
	.loc 3 249 0
#APP
# 249 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h" 1
	rsil	a3, 3

# 0 "" 2
.LVL82:
#NO_APP
.LBE34:
.LBE33:
.LBE32:
	.loc 1 448 0
	l32r	a8, .LC30
	add.n	a8, a8, a2
	l8ui	a8, a8, 0
	bnez.n	a8, .L39
	.loc 1 449 0
	l32r	a8, .LC31
	addx4	a8, a2, a8
	l32i.n	a10, a8, 0
	call8	esp_pm_lock_release
.LVL83:
	.loc 1 450 0
	l32r	a8, .LC30
	add.n	a2, a8, a2
.LVL84:
	movi.n	a8, 1
	s8i	a8, a2, 0
.L39:
	.loc 1 452 0
	mov.n	a10, a3
	call8	_xtos_set_intlevel
.LVL85:
	retw.n
.LFE31:
	.size	esp_pm_impl_idle_hook, .-esp_pm_impl_idle_hook
	.section	.iram1
	.literal_position
	.literal .LC32, s_need_update_ccompare
	.align	4
	.global	esp_pm_impl_isr_hook
	.type	esp_pm_impl_isr_hook, @function
esp_pm_impl_isr_hook:
.LFB32:
	.loc 1 457 0
	entry	sp, 32
.LCFI9:
.LBB35:
.LBB36:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL86:
#NO_APP
.LBE36:
.LBE35:
	.loc 1 461 0
	l32r	a8, .LC32
	add.n	a8, a8, a2
	l8ui	a8, a8, 0
	extui	a8, a8, 0, 8
	beqz.n	a8, .L41
	.loc 1 462 0
	call8	update_ccompare
.LVL87:
	.loc 1 463 0
	l32r	a8, .LC32
	add.n	a2, a8, a2
.LVL88:
	movi.n	a8, 0
	memw
	s8i	a8, a2, 0
	retw.n
.LVL89:
.L41:
	.loc 1 465 0
	call8	leave_idle
.LVL90:
	retw.n
.LFE32:
	.size	esp_pm_impl_isr_hook, .-esp_pm_impl_isr_hook
	.section	.text.esp_pm_impl_waiti,"ax",@progbits
	.align	4
	.global	esp_pm_impl_waiti
	.type	esp_pm_impl_waiti, @function
esp_pm_impl_waiti:
.LFB33:
	.loc 1 474 0
	entry	sp, 32
.LCFI10:
	.loc 1 487 0
#APP
# 487 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/pm_esp32.c" 1
	waiti 0
# 0 "" 2
#NO_APP
	retw.n
.LFE33:
	.size	esp_pm_impl_waiti, .-esp_pm_impl_waiti
	.section	.rodata.str1.4
	.align	4
.LC34:
	.string	"rtos0"
	.align	4
.LC36:
	.string	"esp_pm_lock_create(ESP_PM_CPU_FREQ_MAX, 0, \"rtos0\", &s_rtos_lock_handle[0])"
	.align	4
.LC40:
	.string	"esp_pm_lock_acquire(s_rtos_lock_handle[0])"
	.align	4
.LC43:
	.string	"rtos1"
	.align	4
.LC45:
	.string	"esp_pm_lock_create(ESP_PM_CPU_FREQ_MAX, 0, \"rtos1\", &s_rtos_lock_handle[1])"
	.align	4
.LC47:
	.string	"esp_pm_lock_acquire(s_rtos_lock_handle[1])"
	.align	4
.LC49:
	.string	"false && \"unsupported frequency\""
	.section	.text.esp_pm_impl_init,"ax",@progbits
	.literal_position
	.literal .LC33, s_rtos_lock_handle
	.literal .LC35, .LC34
	.literal .LC37, .LC36
	.literal .LC38, __func__$5641
	.literal .LC39, .LC15
	.literal .LC41, .LC40
	.literal .LC42, s_rtos_lock_handle+4
	.literal .LC44, .LC43
	.literal .LC46, .LC45
	.literal .LC48, .LC47
	.literal .LC50, .LC49
	.literal .LC51, s_cpu_freq_by_mode
	.align	4
	.global	esp_pm_impl_init
	.type	esp_pm_impl_init, @function
esp_pm_impl_init:
.LFB34:
	.loc 1 593 0
	entry	sp, 48
.LCFI11:
.LBB37:
	.loc 1 597 0
	l32r	a13, .LC33
	l32r	a12, .LC35
	movi.n	a11, 0
	mov.n	a10, a11
	call8	esp_pm_lock_create
.LVL91:
	beqz.n	a10, .L45
	.loc 1 597 0 is_stmt 0 discriminator 1
	l32r	a14, .LC37
	l32r	a13, .LC38
	movi	a12, 0x256
	l32r	a11, .LC39
	call8	_esp_error_check_failed
.LVL92:
.L45:
.LBE37:
.LBB38:
	.loc 1 599 0 is_stmt 1
	l32r	a8, .LC33
	l32i.n	a10, a8, 0
.LVL93:
	call8	esp_pm_lock_acquire
.LVL94:
	beqz.n	a10, .L46
	.loc 1 599 0 is_stmt 0 discriminator 1
	l32r	a14, .LC41
	l32r	a13, .LC38
	movi	a12, 0x257
	l32r	a11, .LC39
	call8	_esp_error_check_failed
.LVL95:
.L46:
.LBE38:
.LBB39:
	.loc 1 601 0 is_stmt 1
	l32r	a13, .LC42
	l32r	a12, .LC44
	movi.n	a11, 0
	mov.n	a10, a11
.LVL96:
	call8	esp_pm_lock_create
.LVL97:
	beqz.n	a10, .L47
	.loc 1 601 0 is_stmt 0 discriminator 1
	l32r	a14, .LC46
	l32r	a13, .LC38
	movi	a12, 0x25a
	l32r	a11, .LC39
	call8	_esp_error_check_failed
.LVL98:
.L47:
.LBE39:
.LBB40:
	.loc 1 603 0 is_stmt 1
	l32r	a8, .LC33
	l32i.n	a10, a8, 4
.LVL99:
	call8	esp_pm_lock_acquire
.LVL100:
	beqz.n	a10, .L48
	.loc 1 603 0 is_stmt 0 discriminator 1
	l32r	a14, .LC48
	l32r	a13, .LC38
	movi	a12, 0x25b
	l32r	a11, .LC39
	call8	_esp_error_check_failed
.LVL101:
.L48:
.LBE40:
	.loc 1 610 0 is_stmt 1
	mov.n	a11, sp
	movi	a10, 0xa0
.LVL102:
	call8	rtc_clk_cpu_freq_mhz_to_config
.LVL103:
	bnez.n	a10, .L51
	.loc 1 611 0
	l32r	a13, .LC50
	l32r	a12, .LC38
	movi	a11, 0x263
	l32r	a10, .LC39
	call8	__assert_func
.LVL104:
.L50:
.LBB41:
	.loc 1 614 0 discriminator 3
	slli	a8, a9, 4
	l32r	a10, .LC51
	add.n	a8, a10, a8
	l32i.n	a10, sp, 0
	s32i.n	a10, a8, 0
	l32i.n	a10, sp, 4
	s32i.n	a10, a8, 4
	l32i.n	a10, sp, 8
	s32i.n	a10, a8, 8
	l32i.n	a10, sp, 12
	s32i.n	a10, a8, 12
	.loc 1 613 0 discriminator 3
	addi.n	a9, a9, 1
.LVL105:
	j	.L49
.LVL106:
.L51:
.LBE41:
	movi.n	a9, 0
.L49:
.LVL107:
.LBB42:
	.loc 1 613 0 is_stmt 0 discriminator 1
	bltui	a9, 4, .L50
.LBE42:
	.loc 1 616 0 is_stmt 1
	retw.n
.LFE34:
	.size	esp_pm_impl_init, .-esp_pm_impl_init
	.section	.rodata.__func__$5641,"a",@progbits
	.align	4
	.type	__func__$5641, @object
	.size	__func__$5641, 17
__func__$5641:
	.string	"esp_pm_impl_init"
	.section	.rodata.__func__$5598,"a",@progbits
	.align	4
	.type	__func__$5598, @object
	.size	__func__$5598, 15
__func__$5598:
	.string	"on_freq_update"
	.section	.bss.s_config_changed,"aw",@nobits
	.type	s_config_changed, @object
	.size	s_config_changed, 1
s_config_changed:
	.zero	1
	.comm	s_cpu_freq_by_mode,64,4
	.section	.bss.s_rtos_lock_handle,"aw",@nobits
	.align	4
	.type	s_rtos_lock_handle, @object
	.size	s_rtos_lock_handle, 8
s_rtos_lock_handle:
	.zero	8
	.section	.bss.s_core_idle,"aw",@nobits
	.align	4
	.type	s_core_idle, @object
	.size	s_core_idle, 2
s_core_idle:
	.zero	2
	.section	.bss.s_need_update_ccompare,"aw",@nobits
	.align	4
	.type	s_need_update_ccompare, @object
	.size	s_need_update_ccompare, 2
s_need_update_ccompare:
	.zero	2
	.section	.bss.s_ccount_mul,"aw",@nobits
	.align	4
	.type	s_ccount_mul, @object
	.size	s_ccount_mul, 4
s_ccount_mul:
	.zero	4
	.section	.bss.s_ccount_div,"aw",@nobits
	.align	4
	.type	s_ccount_div, @object
	.size	s_ccount_div, 4
s_ccount_div:
	.zero	4
	.section	.bss.s_mode_mask,"aw",@nobits
	.align	4
	.type	s_mode_mask, @object
	.size	s_mode_mask, 4
s_mode_mask:
	.zero	4
	.section	.bss.s_mode_lock_counts,"aw",@nobits
	.align	4
	.type	s_mode_lock_counts, @object
	.size	s_mode_lock_counts, 16
s_mode_lock_counts:
	.zero	16
	.section	.data.s_new_mode,"aw",@progbits
	.align	4
	.type	s_new_mode, @object
	.size	s_new_mode, 4
s_new_mode:
	.word	3
	.section	.bss.s_is_switching,"aw",@nobits
	.type	s_is_switching, @object
	.size	s_is_switching, 1
s_is_switching:
	.zero	1
	.section	.data.s_mode,"aw",@progbits
	.align	4
	.type	s_mode, @object
	.size	s_mode, 4
s_mode:
	.word	3
	.section	.data.s_switch_lock,"aw",@progbits
	.align	4
	.type	s_switch_lock, @object
	.size	s_switch_lock, 8
s_switch_lock:
	.word	-1287651329
	.word	0
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
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI0-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI1-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI2-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI3-.LFB28
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI4-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI5-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI6-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI7-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI8-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI9-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI10-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI11-.LFB34
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE22:
	.text
.Letext0:
	.file 4 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp32/pm.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_pm.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/pm_impl.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/xtensa_timer.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_crosscore_int.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.file 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/esp_timer_impl.h"
	.file 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.file 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/xtensa/xtruntime.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe2a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF140
	.byte	0xc
	.4byte	.LASF141
	.4byte	.LASF142
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x4
	.byte	0xd8
	.4byte	0x37
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x5
	.byte	0x19
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x5
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x5
	.byte	0x1d
	.4byte	0x82
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb6
	.uleb128 0x7
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x6
	.byte	0x2c
	.4byte	0x61
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x2d
	.4byte	0x6c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x38
	.4byte	0x77
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x7
	.byte	0x18
	.4byte	0xb7
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x46
	.4byte	0x10e
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x8
	.byte	0x4c
	.4byte	0xe3
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x51
	.4byte	0x13e
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x8
	.byte	0x56
	.4byte	0x119
	.uleb128 0xa
	.byte	0x10
	.byte	0x8
	.byte	0x5b
	.4byte	0x182
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x8
	.byte	0x5c
	.4byte	0x13e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x8
	.byte	0x5d
	.4byte	0xc2
	.byte	0x4
	.uleb128 0xc
	.string	"div"
	.byte	0x8
	.byte	0x5e
	.4byte	0xc2
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x8
	.byte	0x5f
	.4byte	0xc2
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x8
	.byte	0x60
	.4byte	0x149
	.uleb128 0xa
	.byte	0x14
	.byte	0x9
	.byte	0x21
	.4byte	0x1d2
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x9
	.byte	0x22
	.4byte	0x10e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x9
	.byte	0x23
	.4byte	0x45
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x9
	.byte	0x24
	.4byte	0x10e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x9
	.byte	0x25
	.4byte	0x45
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x9
	.byte	0x26
	.4byte	0x1d2
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF39
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x9
	.byte	0x27
	.4byte	0x18d
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37
	.byte	0xa
	.byte	0x1e
	.4byte	0x203
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0xa
	.byte	0x2e
	.4byte	0x1e4
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0xa
	.byte	0x3f
	.4byte	0x219
	.uleb128 0x5
	.byte	0x4
	.4byte	0x21f
	.uleb128 0xd
	.4byte	.LASF143
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37
	.byte	0xb
	.byte	0x1f
	.4byte	0x255
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x3
	.byte	0x82
	.4byte	0x276
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x3
	.byte	0x8a
	.4byte	0xc2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x3
	.byte	0x8f
	.4byte	0xc2
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x3
	.byte	0x94
	.4byte	0x255
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37
	.byte	0xc
	.byte	0x21
	.4byte	0x2ac
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0xc
	.byte	0x27
	.4byte	0x281
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0xc
	.byte	0x35
	.4byte	0xcd
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37
	.byte	0xc
	.byte	0x3a
	.4byte	0x2db
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0xc
	.byte	0x3d
	.4byte	0x2c2
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x2
	.byte	0xce
	.4byte	0xc2
	.byte	0x3
	.4byte	0x301
	.uleb128 0xf
	.string	"id"
	.byte	0x2
	.byte	0xcf
	.4byte	0x45
	.byte	0
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x3
	.byte	0xf8
	.4byte	0x37
	.byte	0x3
	.4byte	0x32a
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x3
	.byte	0xf9
	.4byte	0x37
	.uleb128 0x11
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x3
	.byte	0xf9
	.4byte	0x37
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF144
	.byte	0x1
	.byte	0xf8
	.4byte	0x2ac
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x1a4
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x40c
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1a6
	.4byte	0xc2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1a7
	.4byte	0xc2
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x38f
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1a6
	.4byte	0x45
	.uleb128 0x1
	.byte	0x5b
	.byte	0
	.uleb128 0x16
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0x3ad
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1a7
	.4byte	0x45
	.4byte	.LLST0
	.byte	0
	.uleb128 0x17
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x1a9
	.4byte	0xc2
	.4byte	.LLST2
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1aa
	.4byte	0xc2
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1ac
	.4byte	0xc2
	.4byte	.LLST4
	.uleb128 0x17
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x45
	.4byte	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x132
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x544
	.uleb128 0x19
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x132
	.4byte	0xc2
	.4byte	.LLST6
	.uleb128 0x19
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x132
	.4byte	0xc2
	.4byte	.LLST7
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x134
	.4byte	0xc2
	.4byte	.LLST8
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x135
	.4byte	0xc2
	.4byte	.LLST9
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x13e
	.4byte	0x45
	.4byte	.LLST10
	.uleb128 0x1a
	.4byte	.LASF81
	.4byte	0x554
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5598
	.uleb128 0x1b
	.4byte	0x2e6
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.2byte	0x13e
	.4byte	0x4a9
	.uleb128 0x17
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x1c
	.4byte	0x2f6
	.4byte	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x520
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x14c
	.4byte	0x45
	.4byte	.LLST12
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x151
	.4byte	0x45
	.4byte	.LLST13
	.uleb128 0x1d
	.4byte	.LVL15
	.4byte	0x33f
	.uleb128 0x1e
	.4byte	.LVL19
	.4byte	0xd83
	.4byte	0x4f3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL22
	.4byte	0xd8e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x154
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5598
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL11
	.4byte	0xd99
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x15
	.byte	0x73
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x50
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	0x9e
	.4byte	0x554
	.uleb128 0x22
	.4byte	0x90
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.4byte	0x544
	.uleb128 0x18
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x165
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6fc
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x165
	.4byte	0x2ac
	.4byte	.LLST14
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x167
	.4byte	0x6fc
	.4byte	.LLST15
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x179
	.4byte	0x1d2
	.4byte	.LLST16
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x17d
	.4byte	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x17e
	.4byte	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.4byte	0x2e6
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.byte	0x1
	.2byte	0x167
	.4byte	0x5e5
	.uleb128 0x17
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.uleb128 0x1c
	.4byte	0x2f6
	.4byte	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0x667
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x187
	.4byte	0xc2
	.4byte	.LLST18
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x188
	.4byte	0xc2
	.4byte	.LLST19
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x18a
	.4byte	0x1d2
	.4byte	.LLST20
	.uleb128 0x1e
	.4byte	.LVL38
	.4byte	0x40c
	.4byte	0x63c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL39
	.4byte	0xda4
	.4byte	0x650
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x20
	.4byte	.LVL40
	.4byte	0x40c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL27
	.4byte	0xdb0
	.4byte	0x67e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_switch_lock
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL28
	.4byte	0xdbb
	.4byte	0x695
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_switch_lock
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL29
	.4byte	0xdbb
	.4byte	0x6ac
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_switch_lock
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL33
	.4byte	0xdbb
	.4byte	0x6c3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_switch_lock
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL36
	.4byte	0xdc6
	.4byte	0x6d7
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL41
	.4byte	0xdb0
	.4byte	0x6eb
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL43
	.4byte	0xdbb
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x45
	.uleb128 0x13
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x1b2
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x759
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x45
	.4byte	.LLST21
	.uleb128 0x1b
	.4byte	0x2e6
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x74f
	.uleb128 0x17
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.uleb128 0x1c
	.4byte	0x2f6
	.4byte	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL45
	.4byte	0xdd2
	.byte	0
	.uleb128 0x23
	.4byte	.LASF95
	.byte	0x1
	.byte	0x99
	.4byte	0x2ac
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x798
	.uleb128 0x24
	.4byte	.LASF94
	.byte	0x1
	.byte	0x99
	.4byte	0x203
	.4byte	.LLST23
	.uleb128 0x25
	.string	"arg"
	.byte	0x1
	.byte	0x99
	.4byte	0x45
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LVL48
	.4byte	0xddd
	.byte	0
	.uleb128 0x23
	.4byte	.LASF96
	.byte	0x1
	.byte	0xa8
	.4byte	0xd8
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x803
	.uleb128 0x24
	.4byte	.LASF97
	.byte	0x1
	.byte	0xa8
	.4byte	0xb0
	.4byte	.LLST24
	.uleb128 0x10
	.4byte	.LASF98
	.byte	0x1
	.byte	0xae
	.4byte	0x803
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x1
	.byte	0xb5
	.4byte	0x45
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0xb6
	.4byte	0x45
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0x1
	.byte	0xc5
	.4byte	0x182
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0x1
	.byte	0xcb
	.4byte	0x45
	.uleb128 0x10
	.4byte	.LASF101
	.byte	0x1
	.byte	0xd6
	.4byte	0x45
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x809
	.uleb128 0x6
	.4byte	0x1d9
	.uleb128 0x26
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x106
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8da
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x106
	.4byte	0x2ac
	.4byte	.LLST25
	.uleb128 0x19
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x107
	.4byte	0x2db
	.4byte	.LLST26
	.uleb128 0x27
	.string	"now"
	.byte	0x1
	.2byte	0x107
	.4byte	0x2b7
	.4byte	.LLST27
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x109
	.4byte	0x1d2
	.4byte	.LLST28
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x10a
	.4byte	0xc2
	.4byte	.LLST29
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x10c
	.4byte	0xc2
	.4byte	.LLST30
	.uleb128 0x14
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x11b
	.4byte	0x2ac
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LVL60
	.4byte	0xdb0
	.4byte	0x8a9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_switch_lock
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL76
	.4byte	0x32a
	.uleb128 0x1e
	.4byte	.LVL78
	.4byte	0xdbb
	.4byte	0x8c9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_switch_lock
	.byte	0
	.uleb128 0x20
	.4byte	.LVL80
	.4byte	0x559
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x1bc
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x985
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x1be
	.4byte	0x45
	.4byte	.LLST31
	.uleb128 0x29
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1bf
	.4byte	0xc2
	.uleb128 0x1b
	.4byte	0x2e6
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.2byte	0x1be
	.4byte	0x934
	.uleb128 0x17
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x1c
	.4byte	0x2f6
	.4byte	.LLST31
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x301
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x96b
	.uleb128 0x17
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0x2a
	.4byte	0x311
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.uleb128 0x2a
	.4byte	0x31d
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL83
	.4byte	0xde8
	.uleb128 0x20
	.4byte	.LVL85
	.4byte	0xdf3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x1c8
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e6
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x45
	.4byte	.LLST33
	.uleb128 0x1b
	.4byte	0x2e6
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x9d3
	.uleb128 0x17
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.uleb128 0x1c
	.4byte	0x2f6
	.4byte	.LLST33
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL87
	.4byte	0x33f
	.uleb128 0x1d
	.4byte	.LVL90
	.4byte	0x701
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x1d9
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x250
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc19
	.uleb128 0x1a
	.4byte	.LASF81
	.4byte	0xc29
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5641
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x261
	.4byte	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.4byte	0xaa0
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x255
	.4byte	0xd8
	.4byte	.LLST35
	.uleb128 0x1e
	.4byte	.LVL91
	.4byte	0xdfe
	.4byte	0xa73
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	s_rtos_lock_handle
	.byte	0
	.uleb128 0x20
	.4byte	.LVL92
	.4byte	0xe09
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x256
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5641
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.4byte	0xaf3
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x257
	.4byte	0xd8
	.4byte	.LLST36
	.uleb128 0x1d
	.4byte	.LVL94
	.4byte	0xdd2
	.uleb128 0x20
	.4byte	.LVL95
	.4byte	0xe09
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x257
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5641
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.4byte	0xb67
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x259
	.4byte	0xd8
	.4byte	.LLST37
	.uleb128 0x1e
	.4byte	.LVL97
	.4byte	0xdfe
	.4byte	0xb3a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	s_rtos_lock_handle+4
	.byte	0
	.uleb128 0x20
	.4byte	.LVL98
	.4byte	0xe09
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x25a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5641
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.4byte	0xbba
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x25b
	.4byte	0xd8
	.4byte	.LLST38
	.uleb128 0x1d
	.4byte	.LVL100
	.4byte	0xdd2
	.uleb128 0x20
	.4byte	.LVL101
	.4byte	0xe09
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x25b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5641
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0
	.4byte	0xbd2
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x265
	.4byte	0x2c
	.4byte	.LLST39
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL103
	.4byte	0xe14
	.4byte	0xbec
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x20
	.4byte	.LVL104
	.4byte	0xd8e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x263
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5641
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	0x9e
	.4byte	0xc29
	.uleb128 0x22
	.4byte	0x90
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	0xc19
	.uleb128 0x2e
	.4byte	.LASF111
	.byte	0x1
	.byte	0x40
	.4byte	0x276
	.uleb128 0x5
	.byte	0x3
	.4byte	s_switch_lock
	.uleb128 0x2e
	.4byte	.LASF112
	.byte	0x1
	.byte	0x43
	.4byte	0x2ac
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mode
	.uleb128 0x2e
	.4byte	.LASF113
	.byte	0x1
	.byte	0x45
	.4byte	0xc61
	.uleb128 0x5
	.byte	0x3
	.4byte	s_is_switching
	.uleb128 0x2f
	.4byte	0x1d2
	.uleb128 0x2e
	.4byte	.LASF114
	.byte	0x1
	.byte	0x47
	.4byte	0x2ac
	.uleb128 0x5
	.byte	0x3
	.4byte	s_new_mode
	.uleb128 0x21
	.4byte	0x2c
	.4byte	0xc87
	.uleb128 0x22
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF115
	.byte	0x1
	.byte	0x49
	.4byte	0xc77
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mode_lock_counts
	.uleb128 0x2e
	.4byte	.LASF116
	.byte	0x1
	.byte	0x4b
	.4byte	0xc2
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mode_mask
	.uleb128 0x2e
	.4byte	.LASF117
	.byte	0x1
	.byte	0x50
	.4byte	0xc2
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ccount_div
	.uleb128 0x2e
	.4byte	.LASF118
	.byte	0x1
	.byte	0x51
	.4byte	0xc2
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ccount_mul
	.uleb128 0x21
	.4byte	0x1d2
	.4byte	0xcdb
	.uleb128 0x22
	.4byte	0x90
	.byte	0x1
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF119
	.byte	0x1
	.byte	0x67
	.4byte	0xcec
	.uleb128 0x5
	.byte	0x3
	.4byte	s_need_update_ccompare
	.uleb128 0x2f
	.4byte	0xccb
	.uleb128 0x2e
	.4byte	.LASF120
	.byte	0x1
	.byte	0x6c
	.4byte	0xccb
	.uleb128 0x5
	.byte	0x3
	.4byte	s_core_idle
	.uleb128 0x21
	.4byte	0x20e
	.4byte	0xd12
	.uleb128 0x22
	.4byte	0x90
	.byte	0x1
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF121
	.byte	0x1
	.byte	0x71
	.4byte	0xd02
	.uleb128 0x5
	.byte	0x3
	.4byte	s_rtos_lock_handle
	.uleb128 0x30
	.4byte	.LASF122
	.byte	0x1
	.byte	0x79
	.4byte	0xd2f
	.byte	0
	.uleb128 0x6
	.4byte	0x1d2
	.uleb128 0x2e
	.4byte	.LASF123
	.byte	0x1
	.byte	0x80
	.4byte	0x1d2
	.uleb128 0x5
	.byte	0x3
	.4byte	s_config_changed
	.uleb128 0x31
	.string	"TAG"
	.byte	0x1
	.byte	0x91
	.4byte	0xa5
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3616
	.sleb128 0
	.uleb128 0x32
	.4byte	.LASF124
	.byte	0xd
	.byte	0x9a
	.4byte	0x37
	.uleb128 0x21
	.4byte	0x182
	.4byte	0xd72
	.uleb128 0x22
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x33
	.4byte	.LASF125
	.byte	0x1
	.byte	0x76
	.4byte	0xd62
	.uleb128 0x5
	.byte	0x3
	.4byte	s_cpu_freq_by_mode
	.uleb128 0x34
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0xe
	.byte	0x34
	.uleb128 0x34
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0xf
	.byte	0x29
	.uleb128 0x34
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0x10
	.byte	0x3d
	.uleb128 0x35
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x8
	.2byte	0x1af
	.uleb128 0x34
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0x3
	.byte	0xda
	.uleb128 0x34
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x3
	.byte	0xd9
	.uleb128 0x35
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0x8
	.2byte	0x1b5
	.uleb128 0x34
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0xa
	.byte	0x72
	.uleb128 0x34
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0x11
	.byte	0x47
	.uleb128 0x34
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0xa
	.byte	0x8a
	.uleb128 0x34
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x12
	.byte	0x99
	.uleb128 0x34
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0xa
	.byte	0x59
	.uleb128 0x34
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0x7
	.byte	0x4f
	.uleb128 0x35
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x8
	.2byte	0x18b
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x9e
	.uleb128 0x9
	.byte	0x70
	.byte	0x6d
	.byte	0x5f
	.byte	0x65
	.byte	0x73
	.byte	0x70
	.byte	0x33
	.byte	0x32
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x5
	.byte	0x3
	.4byte	s_ccount_div
	.4byte	.LVL15-1
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL8
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x16
	.byte	0x72
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x50
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1a
	.byte	0x3
	.4byte	s_ccount_div
	.byte	0x6
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x50
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL15-1
	.4byte	.LFE27
	.2byte	0x17
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x50
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11-1
	.4byte	.LVL16
	.2byte	0x16
	.byte	0x73
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x50
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE27
	.2byte	0x17
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x50
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL17
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL25
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x5
	.byte	0x3
	.4byte	s_mode
	.4byte	.LVL43-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x5
	.byte	0x3
	.4byte	s_config_changed
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0xe
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL56
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL56
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL58
	.4byte	.LFE26
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL57
	.4byte	.LVL74
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL59
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x6
	.byte	0x31
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x6
	.byte	0x31
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL74
	.4byte	.LFE26
	.2byte	0x6
	.byte	0x31
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL65
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL91
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL94
	.4byte	.LVL95-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL97
	.4byte	.LVL98-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL100
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL107
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x59
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
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	0
	.4byte	0
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF133:
	.string	"esp_pm_lock_acquire"
.LASF53:
	.string	"count"
.LASF42:
	.string	"ESP_PM_APB_FREQ_MAX"
.LASF72:
	.string	"__ccompare"
.LASF120:
	.string	"s_core_idle"
.LASF6:
	.string	"size_t"
.LASF25:
	.string	"RTC_CPU_FREQ_SRC_XTAL"
.LASF59:
	.string	"PM_MODE_COUNT"
.LASF116:
	.string	"s_mode_mask"
.LASF37:
	.string	"min_freq_mhz"
.LASF30:
	.string	"source"
.LASF94:
	.string	"type"
.LASF61:
	.string	"pm_time_t"
.LASF89:
	.string	"old_config"
.LASF107:
	.string	"esp_pm_impl_isr_hook"
.LASF69:
	.string	"ccount"
.LASF0:
	.string	"long long unsigned int"
.LASF103:
	.string	"lock_or_unlock"
.LASF32:
	.string	"freq_mhz"
.LASF73:
	.string	"diff"
.LASF118:
	.string	"s_ccount_mul"
.LASF29:
	.string	"rtc_cpu_freq_src_t"
.LASF106:
	.string	"esp_pm_impl_idle_hook"
.LASF60:
	.string	"pm_mode_t"
.LASF75:
	.string	"new_ccompare"
.LASF101:
	.string	"apb_max_freq"
.LASF9:
	.string	"__int64_t"
.LASF50:
	.string	"ESP_LOG_DEBUG"
.LASF10:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF83:
	.string	"timeout"
.LASF70:
	.string	"ccompare"
.LASF110:
	.string	"__err_rc"
.LASF117:
	.string	"s_ccount_div"
.LASF44:
	.string	"esp_pm_lock_type_t"
.LASF109:
	.string	"default_config"
.LASF67:
	.string	"state"
.LASF131:
	.string	"vTaskExitCritical"
.LASF11:
	.string	"long int"
.LASF41:
	.string	"ESP_PM_CPU_FREQ_MAX"
.LASF86:
	.string	"new_mode"
.LASF36:
	.string	"min_cpu_freq"
.LASF136:
	.string	"_xtos_set_intlevel"
.LASF34:
	.string	"max_cpu_freq"
.LASF143:
	.string	"esp_pm_lock"
.LASF74:
	.string	"diff_scaled"
.LASF84:
	.string	"on_freq_update"
.LASF99:
	.string	"freq_config"
.LASF8:
	.string	"__uint32_t"
.LASF55:
	.string	"PM_MODE_LIGHT_SLEEP"
.LASF68:
	.string	"__tmp"
.LASF125:
	.string	"s_cpu_freq_by_mode"
.LASF130:
	.string	"vTaskEnterCritical"
.LASF58:
	.string	"PM_MODE_CPU_MAX"
.LASF138:
	.string	"_esp_error_check_failed"
.LASF1:
	.string	"unsigned int"
.LASF21:
	.string	"RTC_CPU_FREQ_160M"
.LASF97:
	.string	"vconfig"
.LASF57:
	.string	"PM_MODE_APB_MAX"
.LASF13:
	.string	"long unsigned int"
.LASF96:
	.string	"esp_pm_configure"
.LASF71:
	.string	"__ccount"
.LASF104:
	.string	"need_switch"
.LASF56:
	.string	"PM_MODE_APB_MIN"
.LASF80:
	.string	"core_id"
.LASF142:
	.string	"/home/raphael/rtone/lcd/build/esp32"
.LASF2:
	.string	"short unsigned int"
.LASF20:
	.string	"RTC_CPU_FREQ_80M"
.LASF141:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/pm_esp32.c"
.LASF54:
	.string	"portMUX_TYPE"
.LASF144:
	.string	"get_lowest_allowed_mode"
.LASF100:
	.string	"xtal_freq_mhz"
.LASF65:
	.string	"xPortGetCoreID"
.LASF24:
	.string	"rtc_cpu_freq_t"
.LASF119:
	.string	"s_need_update_ccompare"
.LASF63:
	.string	"MODE_UNLOCK"
.LASF49:
	.string	"ESP_LOG_INFO"
.LASF113:
	.string	"s_is_switching"
.LASF77:
	.string	"ticks_per_us"
.LASF135:
	.string	"esp_pm_lock_release"
.LASF90:
	.string	"new_ticks_per_us"
.LASF12:
	.string	"sizetype"
.LASF121:
	.string	"s_rtos_lock_handle"
.LASF23:
	.string	"RTC_CPU_FREQ_2M"
.LASF114:
	.string	"s_new_mode"
.LASF132:
	.string	"rtc_clk_cpu_freq_get_config"
.LASF43:
	.string	"ESP_PM_NO_LIGHT_SLEEP"
.LASF93:
	.string	"leave_idle"
.LASF91:
	.string	"switch_down"
.LASF85:
	.string	"do_switch"
.LASF35:
	.string	"max_freq_mhz"
.LASF105:
	.string	"mode_mask"
.LASF27:
	.string	"RTC_CPU_FREQ_SRC_8M"
.LASF38:
	.string	"light_sleep_enable"
.LASF39:
	.string	"_Bool"
.LASF15:
	.string	"int32_t"
.LASF19:
	.string	"RTC_CPU_FREQ_XTAL"
.LASF140:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF5:
	.string	"short int"
.LASF82:
	.string	"other_core_id"
.LASF47:
	.string	"ESP_LOG_ERROR"
.LASF81:
	.string	"__func__"
.LASF64:
	.string	"pm_mode_switch_t"
.LASF95:
	.string	"esp_pm_impl_get_mode"
.LASF28:
	.string	"RTC_CPU_FREQ_SRC_APLL"
.LASF16:
	.string	"uint32_t"
.LASF52:
	.string	"owner"
.LASF31:
	.string	"source_freq_mhz"
.LASF14:
	.string	"char"
.LASF51:
	.string	"ESP_LOG_VERBOSE"
.LASF92:
	.string	"update_ccompare"
.LASF124:
	.string	"_xt_tick_divisor"
.LASF98:
	.string	"config"
.LASF122:
	.string	"s_light_sleep_en"
.LASF123:
	.string	"s_config_changed"
.LASF46:
	.string	"ESP_LOG_NONE"
.LASF134:
	.string	"abort"
.LASF76:
	.string	"old_ticks_per_us"
.LASF7:
	.string	"__int32_t"
.LASF78:
	.string	"old_apb_ticks_per_us"
.LASF62:
	.string	"MODE_LOCK"
.LASF111:
	.string	"s_switch_lock"
.LASF22:
	.string	"RTC_CPU_FREQ_240M"
.LASF108:
	.string	"esp_pm_impl_init"
.LASF4:
	.string	"unsigned char"
.LASF126:
	.string	"esp_crosscore_int_send_freq_switch"
.LASF33:
	.string	"rtc_cpu_freq_config_t"
.LASF40:
	.string	"esp_pm_config_esp32_t"
.LASF139:
	.string	"rtc_clk_cpu_freq_mhz_to_config"
.LASF115:
	.string	"s_mode_lock_counts"
.LASF137:
	.string	"esp_pm_lock_create"
.LASF48:
	.string	"ESP_LOG_WARN"
.LASF102:
	.string	"mode"
.LASF18:
	.string	"esp_err_t"
.LASF145:
	.string	"esp_pm_impl_switch_mode"
.LASF45:
	.string	"esp_pm_lock_handle_t"
.LASF87:
	.string	"config_changed"
.LASF127:
	.string	"__assert_func"
.LASF26:
	.string	"RTC_CPU_FREQ_SRC_PLL"
.LASF146:
	.string	"esp_pm_impl_waiti"
.LASF17:
	.string	"int64_t"
.LASF129:
	.string	"rtc_clk_cpu_freq_set_config_fast"
.LASF79:
	.string	"apb_ticks_per_us"
.LASF66:
	.string	"portENTER_CRITICAL_NESTED"
.LASF128:
	.string	"esp_timer_impl_update_apb_freq"
.LASF88:
	.string	"new_config"
.LASF112:
	.string	"s_mode"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
