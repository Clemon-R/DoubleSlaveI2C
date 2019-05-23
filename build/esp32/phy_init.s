	.file	"phy_init.c"
	.text
.Ltext0:
	.section	.text.esp_phy_reduce_tx_power,"ax",@progbits
	.align	4
	.type	esp_phy_reduce_tx_power, @function
esp_phy_reduce_tx_power:
.LFB41:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/phy_init.c"
	.loc 1 563 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 566 0
	movi.n	a8, 0
	j	.L2
.LVL2:
.L3:
	.loc 1 568 0 discriminator 3
	addi	a9, a8, 44
	add.n	a9, a2, a9
	movi.n	a10, 0x34
	s8i	a10, a9, 0
	.loc 1 566 0 discriminator 3
	addi.n	a8, a8, 1
.LVL3:
	extui	a8, a8, 0, 8
.LVL4:
.L2:
	.loc 1 566 0 is_stmt 0 discriminator 1
	bltui	a8, 5, .L3
	.loc 1 570 0 is_stmt 1
	retw.n
.LFE41:
	.size	esp_phy_reduce_tx_power, .-esp_phy_reduce_tx_power
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"cal_version"
	.align	4
.LC3:
	.string	"cal_mac"
	.align	4
.LC6:
	.string	"phy_init"
	.align	4
.LC8:
	.string	"\033[0;31mE (%d) %s: %s: calibration data MAC check failed: expected %02x:%02x:%02x:%02x:%02x:%02x, found %02x:%02x:%02x:%02x:%02x:%02x\033[0m\n"
	.align	4
.LC10:
	.string	"cal_data"
	.align	4
.LC12:
	.string	"\033[0;31mE (%d) %s: %s: failed to get cal_data(0x%x)\033[0m\n"
	.section	.text.load_cal_data_from_nvs_handle,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, -65537
	.literal .LC4, .LC3
	.literal .LC5, __func__$8356
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.align	4
	.type	load_cal_data_from_nvs_handle, @function
load_cal_data_from_nvs_handle:
.LFB39:
	.loc 1 479 0
.LVL5:
	entry	sp, 112
.LCFI1:
	mov.n	a4, a2
	.loc 1 482 0
	addi	a12, sp, 48
	l32r	a11, .LC1
	mov.n	a10, a2
	call8	nvs_get_u32
.LVL6:
	.loc 1 483 0
	bnez.n	a10, .L8
	.loc 1 487 0
	call8	phy_get_rf_cal_version
.LVL7:
	l32r	a2, .LC2
.LVL8:
	and	a10, a10, a2
.LVL9:
	.loc 1 489 0
	l32i.n	a2, sp, 48
	bne	a10, a2, .L9
	.loc 1 495 0
	movi.n	a2, 6
	s32i.n	a2, sp, 60
	.loc 1 496 0
	addi	a13, sp, 60
	addi	a12, sp, 52
	l32r	a11, .LC4
	mov.n	a10, a4
.LVL10:
	call8	nvs_get_blob
.LVL11:
	.loc 1 497 0
	bnez.n	a10, .L10
	.loc 1 501 0
	l32i.n	a2, sp, 60
	bnei	a2, 6, .L11
	.loc 1 506 0
	addi	a10, sp, 64
.LVL12:
	call8	esp_efuse_mac_get_default
.LVL13:
	.loc 1 507 0
	movi.n	a12, 6
	addi	a11, sp, 52
	addi	a10, sp, 64
	call8	memcmp
.LVL14:
	mov.n	a2, a10
	beqz.n	a10, .L6
	.loc 1 508 0 discriminator 2
	call8	esp_log_timestamp
.LVL15:
	l8ui	a2, sp, 64
	l8ui	a3, sp, 65
.LVL16:
	l8ui	a4, sp, 66
.LVL17:
	l8ui	a8, sp, 67
	l8ui	a9, sp, 68
	l8ui	a12, sp, 69
	l8ui	a13, sp, 52
	l8ui	a14, sp, 53
	l8ui	a15, sp, 54
	l8ui	a5, sp, 55
	l8ui	a6, sp, 56
	l8ui	a7, sp, 57
	l32r	a11, .LC7
	s32i.n	a7, sp, 44
	s32i.n	a6, sp, 40
	s32i.n	a5, sp, 36
	s32i.n	a15, sp, 32
	s32i.n	a14, sp, 28
	s32i.n	a13, sp, 24
	s32i.n	a12, sp, 20
	s32i.n	a9, sp, 16
	s32i.n	a8, sp, 12
	s32i.n	a4, sp, 8
	s32i.n	a3, sp, 4
	s32i.n	a2, sp, 0
	l32r	a15, .LC5
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC9
	movi.n	a10, 1
	call8	esp_log_write
.LVL18:
	.loc 1 511 0 discriminator 2
	movi.n	a2, -1
	retw.n
.LVL19:
.L6:
	.loc 1 513 0
	movi	a8, 0x770
	s32i.n	a8, sp, 60
	.loc 1 514 0
	addi	a13, sp, 60
	mov.n	a12, a3
	l32r	a11, .LC11
	mov.n	a10, a4
	call8	nvs_get_blob
.LVL20:
	mov.n	a3, a10
.LVL21:
	.loc 1 515 0
	beqz.n	a10, .L7
	.loc 1 516 0 discriminator 2
	call8	esp_log_timestamp
.LVL22:
	l32r	a11, .LC7
	s32i.n	a3, sp, 0
	l32r	a15, .LC5
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC13
	movi.n	a10, 1
	call8	esp_log_write
.LVL23:
	.loc 1 517 0 discriminator 2
	mov.n	a2, a3
	retw.n
.L7:
	.loc 1 519 0
	movi	a3, 0x770
.LVL24:
	l32i.n	a4, sp, 60
.LVL25:
	beq	a4, a3, .L5
	.loc 1 521 0
	movi	a2, 0x104
	retw.n
.LVL26:
.L8:
	.loc 1 485 0
	mov.n	a2, a10
.LVL27:
	retw.n
.LVL28:
.L9:
	.loc 1 492 0
	movi.n	a2, -1
	retw.n
.LVL29:
.L10:
	.loc 1 499 0
	mov.n	a2, a10
	retw.n
.L11:
	.loc 1 503 0
	movi	a2, 0x104
.LVL30:
.L5:
	.loc 1 524 0
	retw.n
.LFE39:
	.size	load_cal_data_from_nvs_handle, .-load_cal_data_from_nvs_handle
	.section	.rodata.str1.4
	.align	4
.LC17:
	.string	"\033[0;31mE (%d) %s: %s: store calibration data failed(0x%x)\n\033[0m\n"
	.align	4
.LC20:
	.string	"\033[0;31mE (%d) %s: %s: store calibration mac failed(0x%x)\n\033[0m\n"
	.align	4
.LC24:
	.string	"\033[0;31mE (%d) %s: %s: store calibration version failed(0x%x)\n\033[0m\n"
	.align	4
.LC26:
	.string	"\033[0;31mE (%d) %s: %s: store calibration nvs commit failed(0x%x)\n\033[0m\n"
	.section	.text.store_cal_data_to_nvs_handle,"ax",@progbits
	.literal_position
	.literal .LC14, .LC10
	.literal .LC15, __func__$8366
	.literal .LC16, .LC6
	.literal .LC18, .LC17
	.literal .LC19, .LC3
	.literal .LC21, .LC20
	.literal .LC22, -65537
	.literal .LC23, .LC0
	.literal .LC25, .LC24
	.literal .LC27, .LC26
	.align	4
	.type	store_cal_data_to_nvs_handle, @function
store_cal_data_to_nvs_handle:
.LFB40:
	.loc 1 528 0
.LVL31:
	entry	sp, 64
.LCFI2:
	.loc 1 531 0
	movi	a13, 0x770
	mov.n	a12, a3
	l32r	a11, .LC14
	mov.n	a10, a2
	call8	nvs_set_blob
.LVL32:
	mov.n	a3, a10
.LVL33:
	.loc 1 532 0
	beqz.n	a10, .L13
	.loc 1 533 0 discriminator 2
	call8	esp_log_timestamp
.LVL34:
	l32r	a11, .LC16
	s32i.n	a3, sp, 0
	l32r	a15, .LC15
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC18
	movi.n	a10, 1
	call8	esp_log_write
.LVL35:
	.loc 1 534 0 discriminator 2
	mov.n	a2, a3
.LVL36:
	retw.n
.LVL37:
.L13:
	.loc 1 538 0
	addi	a10, sp, 16
	call8	esp_efuse_mac_get_default
.LVL38:
	.loc 1 539 0
	movi.n	a13, 6
	addi	a12, sp, 16
	l32r	a11, .LC19
	mov.n	a10, a2
	call8	nvs_set_blob
.LVL39:
	mov.n	a3, a10
.LVL40:
	.loc 1 540 0
	beqz.n	a10, .L15
	.loc 1 541 0 discriminator 2
	call8	esp_log_timestamp
.LVL41:
	l32r	a11, .LC16
	s32i.n	a3, sp, 0
	l32r	a15, .LC15
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC21
	movi.n	a10, 1
	call8	esp_log_write
.LVL42:
	.loc 1 542 0 discriminator 2
	mov.n	a2, a3
.LVL43:
	retw.n
.LVL44:
.L15:
	.loc 1 545 0
	call8	phy_get_rf_cal_version
.LVL45:
	.loc 1 547 0
	l32r	a12, .LC22
	and	a12, a10, a12
.LVL46:
	l32r	a11, .LC23
	mov.n	a10, a2
	call8	nvs_set_u32
.LVL47:
	mov.n	a3, a10
.LVL48:
	.loc 1 548 0
	beqz.n	a10, .L16
	.loc 1 549 0 discriminator 2
	call8	esp_log_timestamp
.LVL49:
	l32r	a11, .LC16
	s32i.n	a3, sp, 0
	l32r	a15, .LC15
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC25
	movi.n	a10, 1
	call8	esp_log_write
.LVL50:
	.loc 1 550 0 discriminator 2
	mov.n	a2, a3
.LVL51:
	retw.n
.LVL52:
.L16:
	.loc 1 553 0
	mov.n	a10, a2
	call8	nvs_commit
.LVL53:
	mov.n	a2, a10
.LVL54:
	.loc 1 554 0
	beqz.n	a10, .L14
	.loc 1 555 0 discriminator 2
	call8	esp_log_timestamp
.LVL55:
	l32r	a11, .LC16
	s32i.n	a2, sp, 0
	l32r	a15, .LC15
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC27
	movi.n	a10, 1
	call8	esp_log_write
.LVL56:
.L14:
	.loc 1 559 0
	retw.n
.LFE40:
	.size	store_cal_data_to_nvs_handle, .-store_cal_data_to_nvs_handle
	.section	.iram1,"ax",@progbits
	.align	4
	.global	phy_enter_critical
	.type	phy_enter_critical, @function
phy_enter_critical:
.LFB25:
	.loc 1 72 0
	entry	sp, 32
.LCFI3:
.LBB11:
.LBB12:
.LBB13:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h"
	.loc 2 249 0
#APP
# 249 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h" 1
	rsil	a2, 3

# 0 "" 2
.LVL57:
#NO_APP
.LBE13:
.LBE12:
.LBE11:
	.loc 1 74 0
	retw.n
.LFE25:
	.size	phy_enter_critical, .-phy_enter_critical
	.align	4
	.global	phy_exit_critical
	.type	phy_exit_critical, @function
phy_exit_critical:
.LFB26:
	.loc 1 77 0
.LVL58:
	entry	sp, 32
.LCFI4:
	.loc 1 78 0
	mov.n	a10, a2
	call8	_xtos_set_intlevel
.LVL59:
	retw.n
.LFE26:
	.size	phy_exit_critical, .-phy_exit_critical
	.section	.text.esp_phy_rf_get_on_ts,"ax",@progbits
	.literal_position
	.literal .LC28, s_phy_rf_en_ts
	.align	4
	.global	esp_phy_rf_get_on_ts
	.type	esp_phy_rf_get_on_ts, @function
esp_phy_rf_get_on_ts:
.LFB27:
	.loc 1 82 0
	entry	sp, 32
.LCFI5:
	.loc 1 84 0
	l32r	a8, .LC28
	l32i.n	a2, a8, 0
	l32i.n	a3, a8, 4
	retw.n
.LFE27:
	.size	esp_phy_rf_get_on_ts, .-esp_phy_rf_get_on_ts
	.section	.rodata.str1.4
	.align	4
.LC31:
	.string	"\033[0;31mE (%d) %s: %s, invalid module parameter(%d), should be smaller than                  module count(%d)\033[0m\n"
	.align	4
.LC36:
	.string	"\033[0;31mE (%d) %s: %s, RF should not be in enabled state if both Wi-Fi and BT are disabled\033[0m\n"
	.section	.text.esp_phy_rf_deinit,"ax",@progbits
	.literal_position
	.literal .LC29, __func__$8299
	.literal .LC30, .LC6
	.literal .LC32, .LC31
	.literal .LC33, s_phy_rf_init_lock
	.literal .LC34, s_module_phy_rf_init
	.literal .LC35, s_is_phy_rf_en
	.literal .LC37, .LC36
	.literal .LC38, s_common_clock_disable_time$8284
	.align	4
	.global	esp_phy_rf_deinit
	.type	esp_phy_rf_deinit, @function
esp_phy_rf_deinit:
.LFB30:
	.loc 1 185 0
.LVL60:
	entry	sp, 48
.LCFI6:
	.loc 1 187 0
	bltui	a2, 3, .L22
	.loc 1 188 0 discriminator 2
	call8	esp_log_timestamp
.LVL61:
	l32r	a11, .LC30
	movi.n	a8, 3
	s32i.n	a8, sp, 4
	s32i.n	a2, sp, 0
	l32r	a15, .LC29
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC32
	movi.n	a10, 1
	call8	esp_log_write
.LVL62:
	.loc 1 190 0 discriminator 2
	movi	a2, 0x102
.LVL63:
	retw.n
.LVL64:
.L22:
	.loc 1 193 0
	l32r	a10, .LC33
	call8	_lock_acquire
.LVL65:
	.loc 1 194 0
	l32r	a14, .LC34
	l32i.n	a15, a14, 0
.LVL66:
	.loc 1 196 0
	extui	a13, a15, 0, 2
.LVL67:
	.loc 1 197 0
	addi	a9, a13, -3
	movi.n	a10, 1
	movi.n	a11, 0
	mov.n	a3, a11
	moveqz	a3, a10, a9
	extui	a12, a3, 0, 8
.LVL68:
	.loc 1 198 0
	ssl	a2
	sll	a9, a10
	movi.n	a8, -1
	xor	a8, a8, a9
	and	a8, a15, a8
	s32i.n	a8, a14, 0
.LVL69:
	.loc 1 209 0
	mov.n	a9, a11
	moveqz	a9, a10, a13
	.loc 1 209 0
	addi	a8, a2, -2
	movnez	a10, a11, a8
	.loc 1 209 0
	bany	a10, a9, .L28
	.loc 1 213 0
	l32r	a8, .LC35
	l8ui	a8, a8, 0
	extui	a8, a8, 0, 8
	beq	a8, a11, .L29
	.loc 1 217 0
	bne	a13, a11, .L25
	.loc 1 218 0
	bgeui	a2, 2, .L26
	.loc 1 219 0
	movi.n	a8, 0
	l32r	a2, .LC35
.LVL70:
	memw
	s8i	a8, a2, 0
	.loc 1 220 0
	call8	esp_log_timestamp
.LVL71:
	l32r	a11, .LC30
	l32r	a15, .LC29
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC37
	movi.n	a10, 1
	call8	esp_log_write
.LVL72:
	j	.L26
.LVL73:
.L25:
	.loc 1 224 0
	bnei	a2, 2, .L27
	.loc 1 225 0
	movi.n	a8, 0
	l32r	a2, .LC35
.LVL74:
	memw
	s8i	a8, a2, 0
	j	.L26
.LVL75:
.L27:
	.loc 1 227 0
	bgeui	a2, 2, .L26
	.loc 1 228 0
	l32r	a2, .LC35
.LVL76:
	memw
	s8i	a12, a2, 0
.LVL77:
.L26:
	.loc 1 232 0
	l32r	a2, .LC35
	l8ui	a2, a2, 0
	extui	a2, a2, 0, 8
	bnez.n	a2, .L30
	.loc 1 234 0
	call8	phy_close_rf
.LVL78:
	.loc 1 236 0
	call8	esp_timer_get_time
.LVL79:
.LBB14:
.LBB15:
	.loc 1 91 0
	l32r	a2, .LC38
	s32i.n	a10, a2, 0
.LBE15:
.LBE14:
	.loc 1 238 0
	movi.n	a10, 0x1d
.LVL80:
	call8	periph_module_disable
.LVL81:
	.loc 1 199 0
	movi.n	a2, 0
	j	.L24
.LVL82:
.L28:
	.loc 1 211 0
	movi.n	a2, -1
.LVL83:
	j	.L24
.LVL84:
.L29:
	.loc 1 199 0
	movi.n	a2, 0
.LVL85:
	j	.L24
.LVL86:
.L30:
	movi.n	a2, 0
.L24:
.LVL87:
	.loc 1 242 0
	l32r	a10, .LC33
	call8	_lock_release
.LVL88:
	.loc 1 244 0
	retw.n
.LFE30:
	.size	esp_phy_rf_deinit, .-esp_phy_rf_deinit
	.section	.rodata.str1.4
	.align	4
.LC43:
	.string	"\033[0;33mW (%d) %s: %s, module (%d) has not been registered\033[0m\n"
	.section	.text.esp_modem_sleep_enter,"ax",@progbits
	.literal_position
	.literal .LC39, __func__$8308
	.literal .LC40, .LC6
	.literal .LC41, .LC31
	.literal .LC42, s_modem_sleep_module_register
	.literal .LC44, .LC43
	.literal .LC45, s_modem_sleep_lock
	.literal .LC46, s_modem_sleep_module_enter
	.literal .LC47, s_is_modem_sleep_en
	.align	4
	.global	esp_modem_sleep_enter
	.type	esp_modem_sleep_enter, @function
esp_modem_sleep_enter:
.LFB31:
	.loc 1 249 0
.LVL89:
	entry	sp, 48
.LCFI7:
	.loc 1 254 0
	bltui	a2, 7, .L32
	.loc 1 255 0 discriminator 2
	call8	esp_log_timestamp
.LVL90:
	l32r	a11, .LC40
	movi.n	a8, 7
	s32i.n	a8, sp, 4
	s32i.n	a2, sp, 0
	l32r	a15, .LC39
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC41
	movi.n	a10, 1
	call8	esp_log_write
.LVL91:
	.loc 1 257 0 discriminator 2
	movi	a2, 0x102
.LVL92:
	retw.n
.LVL93:
.L32:
	.loc 1 259 0
	l32r	a8, .LC42
	l32i.n	a8, a8, 0
	bbs	a8, a2, .L34
	.loc 1 260 0 discriminator 4
	call8	esp_log_timestamp
.LVL94:
	l32r	a11, .LC40
	s32i.n	a2, sp, 0
	l32r	a15, .LC39
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC44
	movi.n	a10, 2
	call8	esp_log_write
.LVL95:
	.loc 1 261 0 discriminator 4
	movi	a2, 0x102
.LVL96:
	retw.n
.LVL97:
.L34:
	.loc 1 264 0
	l32r	a10, .LC45
	call8	_lock_acquire
.LVL98:
	.loc 1 265 0
	movi.n	a8, 1
	ssl	a2
	sll	a2, a8
.LVL99:
	l32r	a9, .LC46
	l32i.n	a8, a9, 0
	or	a2, a2, a8
	s32i.n	a2, a9, 0
	.loc 1 274 0
	l32r	a8, .LC47
	l8ui	a8, a8, 0
	extui	a8, a8, 0, 8
	bnez.n	a8, .L35
	.loc 1 274 0 is_stmt 0 discriminator 1
	l32r	a8, .LC42
	l32i.n	a8, a8, 0
	bne	a2, a8, .L35
.LBB16:
	.loc 1 275 0 is_stmt 1
	movi.n	a10, 2
	call8	esp_phy_rf_deinit
.LVL100:
	.loc 1 276 0
	bnez.n	a10, .L35
	.loc 1 277 0
	movi.n	a8, 1
	l32r	a2, .LC47
	memw
	s8i	a8, a2, 0
.LVL101:
.L35:
.LBE16:
	.loc 1 280 0
	l32r	a10, .LC45
	call8	_lock_release
.LVL102:
	.loc 1 281 0
	movi.n	a2, 0
	.loc 1 283 0
	retw.n
.LFE31:
	.size	esp_modem_sleep_enter, .-esp_modem_sleep_enter
	.section	.rodata.str1.4
	.align	4
.LC52:
	.string	"\033[0;32mI (%d) %s: %s, multiple registration of module (%d)\033[0m\n"
	.section	.text.esp_modem_sleep_register,"ax",@progbits
	.literal_position
	.literal .LC48, __func__$8318
	.literal .LC49, .LC6
	.literal .LC50, .LC31
	.literal .LC51, s_modem_sleep_module_register
	.literal .LC53, .LC52
	.literal .LC54, s_modem_sleep_lock
	.literal .LC55, s_modem_sleep_module_enter
	.align	4
	.global	esp_modem_sleep_register
	.type	esp_modem_sleep_register, @function
esp_modem_sleep_register:
.LFB33:
	.loc 1 324 0
.LVL103:
	entry	sp, 48
.LCFI8:
	.loc 1 325 0
	bltui	a2, 7, .L37
	.loc 1 326 0 discriminator 2
	call8	esp_log_timestamp
.LVL104:
	l32r	a11, .LC49
	movi.n	a3, 7
	s32i.n	a3, sp, 4
	s32i.n	a2, sp, 0
	l32r	a15, .LC48
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC50
	movi.n	a10, 1
	call8	esp_log_write
.LVL105:
	.loc 1 328 0 discriminator 2
	movi	a2, 0x102
.LVL106:
	retw.n
.LVL107:
.L37:
	.loc 1 330 0
	l32r	a3, .LC51
	l32i.n	a3, a3, 0
	bbc	a3, a2, .L39
	.loc 1 331 0 discriminator 9
	call8	esp_log_timestamp
.LVL108:
	l32r	a11, .LC49
	s32i.n	a2, sp, 0
	l32r	a15, .LC48
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC53
	movi.n	a10, 3
	call8	esp_log_write
.LVL109:
	.loc 1 332 0 discriminator 9
	movi.n	a2, 0
.LVL110:
	retw.n
.LVL111:
.L39:
	.loc 1 335 0
	l32r	a3, .LC54
	mov.n	a10, a3
	call8	_lock_acquire
.LVL112:
	.loc 1 336 0
	movi.n	a8, 1
	ssl	a2
	sll	a2, a8
.LVL113:
	l32r	a9, .LC51
	l32i.n	a8, a9, 0
	or	a8, a8, a2
	s32i.n	a8, a9, 0
	.loc 1 340 0
	l32r	a8, .LC55
	l32i.n	a9, a8, 0
	or	a2, a9, a2
	s32i.n	a2, a8, 0
	.loc 1 341 0
	mov.n	a10, a3
	call8	_lock_release
.LVL114:
	.loc 1 342 0
	movi.n	a2, 0
	.loc 1 344 0
	retw.n
.LFE33:
	.size	esp_modem_sleep_register, .-esp_modem_sleep_register
	.section	.text.esp_phy_get_init_data,"ax",@progbits
	.literal_position
	.literal .LC56, phy_init_data
	.align	4
	.global	esp_phy_get_init_data
	.type	esp_phy_get_init_data, @function
esp_phy_get_init_data:
.LFB35:
	.loc 1 422 0
	entry	sp, 32
.LCFI9:
	.loc 1 425 0
	l32r	a2, .LC56
	retw.n
.LFE35:
	.size	esp_phy_get_init_data, .-esp_phy_get_init_data
	.section	.text.esp_phy_release_init_data,"ax",@progbits
	.align	4
	.global	esp_phy_release_init_data
	.type	esp_phy_release_init_data, @function
esp_phy_release_init_data:
.LFB36:
	.loc 1 428 0
.LVL115:
	entry	sp, 32
.LCFI10:
	retw.n
.LFE36:
	.size	esp_phy_release_init_data, .-esp_phy_release_init_data
	.section	.rodata.str1.4
	.align	4
.LC57:
	.string	"phy"
	.align	4
.LC62:
	.string	"\033[0;31mE (%d) %s: %s: NVS has not been initialized. Call nvs_flash_init before starting WiFi/BT.\033[0m\n"
	.section	.text.esp_phy_load_cal_data_from_nvs,"ax",@progbits
	.literal_position
	.literal .LC58, .LC57
	.literal .LC59, 4353
	.literal .LC60, __func__$8343
	.literal .LC61, .LC6
	.literal .LC63, .LC62
	.align	4
	.global	esp_phy_load_cal_data_from_nvs
	.type	esp_phy_load_cal_data_from_nvs, @function
esp_phy_load_cal_data_from_nvs:
.LFB37:
	.loc 1 447 0
.LVL116:
	.loc 1 447 0
	entry	sp, 48
.LCFI11:
	.loc 1 449 0
	mov.n	a12, sp
	movi.n	a11, 0
	l32r	a10, .LC58
	call8	nvs_open
.LVL117:
	.loc 1 450 0
	l32r	a8, .LC59
	bne	a10, a8, .L43
	.loc 1 451 0 discriminator 2
	call8	esp_log_timestamp
.LVL118:
	l32r	a11, .LC61
	l32r	a15, .LC60
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC63
	movi.n	a10, 1
	call8	esp_log_write
.LVL119:
	j	.L44
.LVL120:
.L43:
	.loc 1 453 0
	bnez.n	a10, .L46
.LVL121:
.L44:
	.loc 1 457 0
	mov.n	a11, a2
	l32i.n	a10, sp, 0
	call8	load_cal_data_from_nvs_handle
.LVL122:
	mov.n	a2, a10
.LVL123:
	.loc 1 458 0
	l32i.n	a10, sp, 0
	call8	nvs_close
.LVL124:
	.loc 1 459 0
	retw.n
.LVL125:
.L46:
	.loc 1 455 0
	mov.n	a2, a10
.LVL126:
	.loc 1 460 0
	retw.n
.LFE37:
	.size	esp_phy_load_cal_data_from_nvs, .-esp_phy_load_cal_data_from_nvs
	.section	.text.esp_phy_store_cal_data_to_nvs,"ax",@progbits
	.literal_position
	.literal .LC64, .LC57
	.align	4
	.global	esp_phy_store_cal_data_to_nvs
	.type	esp_phy_store_cal_data_to_nvs, @function
esp_phy_store_cal_data_to_nvs:
.LFB38:
	.loc 1 463 0
.LVL127:
	entry	sp, 48
.LCFI12:
	.loc 1 465 0
	mov.n	a12, sp
	movi.n	a11, 1
	l32r	a10, .LC64
	call8	nvs_open
.LVL128:
	.loc 1 466 0
	bnez.n	a10, .L49
	.loc 1 471 0
	mov.n	a11, a2
	l32i.n	a10, sp, 0
.LVL129:
	call8	store_cal_data_to_nvs_handle
.LVL130:
	mov.n	a2, a10
.LVL131:
	.loc 1 472 0
	l32i.n	a10, sp, 0
	call8	nvs_close
.LVL132:
	.loc 1 473 0
	retw.n
.LVL133:
.L49:
	.loc 1 468 0
	mov.n	a2, a10
.LVL134:
	.loc 1 475 0
	retw.n
.LFE38:
	.size	esp_phy_store_cal_data_to_nvs, .-esp_phy_store_cal_data_to_nvs
	.section	.rodata.str1.4
	.align	4
.LC74:
	.string	"\033[0;33mW (%d) %s: saving new calibration data because of checksum failure, mode(%d)\033[0m\n"
	.section	.text.esp_phy_rf_init,"ax",@progbits
	.literal_position
	.literal .LC65, __func__$8292
	.literal .LC66, .LC6
	.literal .LC67, .LC31
	.literal .LC68, s_phy_rf_init_lock
	.literal .LC69, s_module_phy_rf_init
	.literal .LC70, s_is_phy_rf_en
	.literal .LC71, s_phy_rf_en_ts
	.literal .LC72, s_common_clock_disable_time$8284
	.literal .LC73, s_wifi_mac_time_update_cb
	.literal .LC75, .LC74
	.align	4
	.global	esp_phy_rf_init
	.type	esp_phy_rf_init, @function
esp_phy_rf_init:
.LFB29:
	.loc 1 107 0
.LVL135:
	entry	sp, 48
.LCFI13:
	.loc 1 109 0
	bltui	a5, 3, .L51
	.loc 1 110 0 discriminator 2
	call8	esp_log_timestamp
.LVL136:
	l32r	a11, .LC66
	movi.n	a2, 3
.LVL137:
	s32i.n	a2, sp, 4
	s32i.n	a5, sp, 0
	l32r	a15, .LC65
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC67
	movi.n	a10, 1
	call8	esp_log_write
.LVL138:
	.loc 1 112 0 discriminator 2
	movi	a2, 0x102
	retw.n
.LVL139:
.L51:
	.loc 1 115 0
	l32r	a10, .LC68
	call8	_lock_acquire
.LVL140:
	.loc 1 116 0
	l32r	a10, .LC69
	l32i.n	a11, a10, 0
.LVL141:
	.loc 1 117 0
	extui	a12, a11, 0, 2
.LVL142:
	.loc 1 119 0
	movi.n	a8, 1
	ssl	a5
	sll	a9, a8
	or	a9, a11, a9
	s32i.n	a9, a10, 0
	.loc 1 121 0
	movi.n	a10, 0
	mov.n	a11, a10
.LVL143:
	moveqz	a11, a8, a12
	.loc 1 121 0
	addi	a9, a5, -2
	movnez	a8, a10, a9
	.loc 1 121 0
	bany	a8, a11, .L59
	.loc 1 124 0
	l32r	a8, .LC70
	l8ui	a8, a8, 0
	extui	a8, a8, 0, 8
	bne	a8, a10, .L60
	.loc 1 134 0
	bne	a12, a10, .L54
	.loc 1 135 0
	bgeui	a5, 2, .L55
	.loc 1 136 0
	movi.n	a8, 1
	l32r	a5, .LC70
.LVL144:
	memw
	s8i	a8, a5, 0
	j	.L55
.LVL145:
.L54:
	.loc 1 140 0
	bnei	a5, 2, .L55
	.loc 1 141 0
	movi.n	a8, 1
	l32r	a5, .LC70
.LVL146:
	memw
	s8i	a8, a5, 0
.L55:
	.loc 1 147 0
	l32r	a5, .LC70
	l8ui	a5, a5, 0
	extui	a5, a5, 0, 8
	beqz.n	a5, .L61
	.loc 1 149 0
	call8	esp_timer_get_time
.LVL147:
	l32r	a5, .LC71
	s32i.n	a10, a5, 0
	s32i.n	a11, a5, 4
.LVL148:
.LBB17:
.LBB18:
	.loc 1 93 0
	l32r	a5, .LC72
	l32i.n	a5, a5, 0
	beqz.n	a5, .L56
.LBB19:
	.loc 1 94 0
	sub	a10, a10, a5
.LVL149:
	.loc 1 96 0
	l32r	a5, .LC73
	l32i.n	a5, a5, 0
	beqz.n	a5, .L57
	.loc 1 97 0
	callx8	a5
.LVL150:
.L57:
	.loc 1 99 0
	movi.n	a8, 0
	l32r	a5, .LC72
	s32i.n	a8, a5, 0
.L56:
.LBE19:
.LBE18:
.LBE17:
	.loc 1 153 0
	movi.n	a10, 0x1d
	call8	periph_module_enable
.LVL151:
	.loc 1 154 0
	movi.n	a10, 0
	call8	phy_set_wifi_mode_only
.LVL152:
	.loc 1 156 0
	mov.n	a12, a3
	mov.n	a11, a4
	mov.n	a10, a2
	call8	register_chipv7_phy
.LVL153:
	bnei	a10, 1, .L58
	.loc 1 157 0 discriminator 4
	call8	esp_log_timestamp
.LVL154:
	l32r	a11, .LC66
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC75
	movi.n	a10, 2
	call8	esp_log_write
.LVL155:
	.loc 1 159 0 discriminator 4
	beqi	a3, 2, .L58
	.loc 1 160 0
	mov.n	a10, a4
	call8	esp_phy_store_cal_data_to_nvs
.LVL156:
.L58:
	.loc 1 165 0
	call8	coex_bt_high_prio
.LVL157:
	.loc 1 118 0
	movi.n	a2, 0
.LVL158:
	j	.L53
.LVL159:
.L59:
	.loc 1 122 0
	movi.n	a2, -1
.LVL160:
	j	.L53
.LVL161:
.L60:
	.loc 1 118 0
	movi.n	a2, 0
.LVL162:
	j	.L53
.LVL163:
.L61:
	movi.n	a2, 0
.LVL164:
.L53:
	.loc 1 180 0
	l32r	a10, .LC68
	call8	_lock_release
.LVL165:
	.loc 1 182 0
	retw.n
.LFE29:
	.size	esp_phy_rf_init, .-esp_phy_rf_init
	.section	.text.esp_modem_sleep_exit,"ax",@progbits
	.literal_position
	.literal .LC76, __func__$8313
	.literal .LC77, .LC6
	.literal .LC78, .LC31
	.literal .LC79, s_modem_sleep_module_register
	.literal .LC80, .LC43
	.literal .LC81, s_modem_sleep_lock
	.literal .LC82, s_modem_sleep_module_enter
	.literal .LC83, s_is_modem_sleep_en
	.align	4
	.global	esp_modem_sleep_exit
	.type	esp_modem_sleep_exit, @function
esp_modem_sleep_exit:
.LFB32:
	.loc 1 286 0
.LVL166:
	entry	sp, 48
.LCFI14:
	.loc 1 291 0
	bltui	a2, 7, .L63
	.loc 1 292 0 discriminator 2
	call8	esp_log_timestamp
.LVL167:
	l32r	a11, .LC77
	movi.n	a8, 7
	s32i.n	a8, sp, 4
	s32i.n	a2, sp, 0
	l32r	a15, .LC76
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC78
	movi.n	a10, 1
	call8	esp_log_write
.LVL168:
	.loc 1 294 0 discriminator 2
	movi	a2, 0x102
.LVL169:
	retw.n
.LVL170:
.L63:
	.loc 1 296 0
	l32r	a8, .LC79
	l32i.n	a8, a8, 0
	bbs	a8, a2, .L65
	.loc 1 297 0 discriminator 4
	call8	esp_log_timestamp
.LVL171:
	l32r	a11, .LC77
	s32i.n	a2, sp, 0
	l32r	a15, .LC76
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC80
	movi.n	a10, 2
	call8	esp_log_write
.LVL172:
	.loc 1 298 0 discriminator 4
	movi	a2, 0x102
.LVL173:
	retw.n
.LVL174:
.L65:
	.loc 1 301 0
	l32r	a10, .LC81
	call8	_lock_acquire
.LVL175:
	.loc 1 302 0
	movi.n	a8, 1
	ssl	a2
	sll	a2, a8
.LVL176:
	movi.n	a8, -1
	xor	a2, a8, a2
	l32r	a8, .LC82
	l32i.n	a9, a8, 0
	and	a2, a9, a2
	s32i.n	a2, a8, 0
	.loc 1 303 0
	l32r	a2, .LC83
	l8ui	a2, a2, 0
	extui	a2, a2, 0, 8
	beqz.n	a2, .L66
.LBB20:
	.loc 1 304 0
	movi.n	a13, 2
	movi.n	a12, 0
	movi.n	a11, 1
	mov.n	a10, a12
	call8	esp_phy_rf_init
.LVL177:
	.loc 1 305 0
	bnez.n	a10, .L66
	.loc 1 306 0
	movi.n	a8, 0
	l32r	a2, .LC83
	memw
	s8i	a8, a2, 0
.LVL178:
.L66:
.LBE20:
	.loc 1 317 0
	l32r	a10, .LC81
	call8	_lock_release
.LVL179:
	.loc 1 318 0
	movi.n	a2, 0
	.loc 1 321 0
	retw.n
.LFE32:
	.size	esp_modem_sleep_exit, .-esp_modem_sleep_exit
	.section	.rodata.str1.4
	.align	4
.LC88:
	.string	"\033[0;32mI (%d) %s: %s, module (%d) has not been registered\033[0m\n"
	.section	.text.esp_modem_sleep_deregister,"ax",@progbits
	.literal_position
	.literal .LC84, __func__$8322
	.literal .LC85, .LC6
	.literal .LC86, .LC31
	.literal .LC87, s_modem_sleep_module_register
	.literal .LC89, .LC88
	.literal .LC90, s_modem_sleep_lock
	.literal .LC91, s_modem_sleep_module_enter
	.literal .LC92, s_is_modem_sleep_en
	.align	4
	.global	esp_modem_sleep_deregister
	.type	esp_modem_sleep_deregister, @function
esp_modem_sleep_deregister:
.LFB34:
	.loc 1 347 0
.LVL180:
	entry	sp, 48
.LCFI15:
	.loc 1 348 0
	bltui	a2, 7, .L68
	.loc 1 349 0 discriminator 2
	call8	esp_log_timestamp
.LVL181:
	l32r	a11, .LC85
	movi.n	a8, 7
	s32i.n	a8, sp, 4
	s32i.n	a2, sp, 0
	l32r	a15, .LC84
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC86
	movi.n	a10, 1
	call8	esp_log_write
.LVL182:
	.loc 1 351 0 discriminator 2
	movi	a2, 0x102
.LVL183:
	retw.n
.LVL184:
.L68:
	.loc 1 353 0
	l32r	a8, .LC87
	l32i.n	a8, a8, 0
	bbs	a8, a2, .L70
	.loc 1 354 0 discriminator 9
	call8	esp_log_timestamp
.LVL185:
	l32r	a11, .LC85
	s32i.n	a2, sp, 0
	l32r	a15, .LC84
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC89
	movi.n	a10, 3
	call8	esp_log_write
.LVL186:
	.loc 1 355 0 discriminator 9
	movi.n	a2, 0
.LVL187:
	retw.n
.LVL188:
.L70:
	.loc 1 358 0
	l32r	a10, .LC90
	call8	_lock_acquire
.LVL189:
	.loc 1 359 0
	movi.n	a8, 1
	ssl	a2
	sll	a2, a8
.LVL190:
	movi.n	a8, -1
	xor	a2, a8, a2
	l32r	a9, .LC91
	l32i.n	a8, a9, 0
	and	a8, a8, a2
	s32i.n	a8, a9, 0
	.loc 1 360 0
	l32r	a9, .LC87
	l32i.n	a8, a9, 0
	and	a2, a2, a8
	s32i.n	a2, a9, 0
	.loc 1 361 0
	bnez.n	a2, .L71
	.loc 1 362 0
	movi.n	a8, 0
	l32r	a2, .LC91
	s32i.n	a8, a2, 0
	.loc 1 366 0
	l32r	a2, .LC92
	l8ui	a2, a2, 0
	extui	a2, a2, 0, 8
	beq	a2, a8, .L71
	.loc 1 367 0
	l32r	a2, .LC92
	memw
	s8i	a8, a2, 0
	.loc 1 368 0
	movi.n	a13, 2
	movi.n	a12, 0
	movi.n	a11, 1
	mov.n	a10, a12
	call8	esp_phy_rf_init
.LVL191:
.L71:
	.loc 1 371 0
	l32r	a10, .LC90
	call8	_lock_release
.LVL192:
	.loc 1 372 0
	movi.n	a2, 0
	.loc 1 374 0
	retw.n
.LFE34:
	.size	esp_modem_sleep_deregister, .-esp_modem_sleep_deregister
	.section	.rodata.str1.4
	.align	4
.LC94:
	.string	"\033[0;31mE (%d) %s: failed to allocate memory for RF calibration data\033[0m\n"
	.align	4
.LC96:
	.string	"\033[0;31mE (%d) %s: failed to obtain PHY init data\033[0m\n"
	.align	4
.LC98:
	.string	"\033[0;31mE (%d) %s: failed to allocate memory for phy init data\033[0m\n"
	.align	4
.LC100:
	.string	"\033[0;33mW (%d) %s: failed to load RF calibration data (0x%x), falling back to full calibration\033[0m\n"
	.section	.text.esp_phy_load_cal_and_init,"ax",@progbits
	.literal_position
	.literal .LC93, .LC6
	.literal .LC95, .LC94
	.literal .LC97, .LC96
	.literal .LC99, .LC98
	.literal .LC101, .LC100
	.align	4
	.global	esp_phy_load_cal_and_init
	.type	esp_phy_load_cal_and_init, @function
esp_phy_load_cal_and_init:
.LFB42:
	.loc 1 574 0
.LVL193:
	entry	sp, 48
.LCFI16:
	.loc 1 575 0
	movi.n	a11, 1
	movi	a10, 0x770
	call8	calloc
.LVL194:
	mov.n	a4, a10
.LVL195:
	.loc 1 577 0
	bnez.n	a10, .L73
	.loc 1 578 0 discriminator 2
	call8	esp_log_timestamp
.LVL196:
	l32r	a11, .LC93
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC95
	movi.n	a10, 1
	call8	esp_log_write
.LVL197:
	.loc 1 579 0 discriminator 2
	call8	abort
.LVL198:
.L73:
	.loc 1 583 0
	call8	esp_phy_get_init_data
.LVL199:
	mov.n	a3, a10
.LVL200:
	.loc 1 584 0
	bnez.n	a10, .L74
	.loc 1 585 0 discriminator 2
	call8	esp_log_timestamp
.LVL201:
	l32r	a11, .LC93
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC97
	movi.n	a10, 1
	call8	esp_log_write
.LVL202:
	.loc 1 586 0 discriminator 2
	call8	abort
.LVL203:
.L74:
	.loc 1 589 0
	movi	a10, 0x80
	call8	malloc
.LVL204:
	mov.n	a6, a10
.LVL205:
	.loc 1 590 0
	bnez.n	a10, .L75
	.loc 1 591 0 discriminator 2
	call8	esp_log_timestamp
.LVL206:
	l32r	a11, .LC93
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC99
	movi.n	a10, 1
	call8	esp_log_write
.LVL207:
	.loc 1 592 0 discriminator 2
	call8	abort
.LVL208:
.L75:
	.loc 1 595 0
	movi	a12, 0x80
	mov.n	a11, a3
	call8	memcpy
.LVL209:
	.loc 1 596 0
	call8	esp_reset_reason
.LVL210:
	movi.n	a3, 9
.LVL211:
	bne	a10, a3, .L76
	.loc 1 597 0
	mov.n	a10, a6
	call8	esp_phy_reduce_tx_power
.LVL212:
.L76:
	.loc 1 610 0
	movi.n	a10, 0
	call8	rtc_get_reset_reason
.LVL213:
	beqi	a10, 5, .L80
	.loc 1 608 0
	movi.n	a3, 0
	j	.L77
.L80:
	.loc 1 611 0
	movi.n	a3, 1
.L77:
.LVL214:
	.loc 1 613 0
	mov.n	a10, a4
	call8	esp_phy_load_cal_data_from_nvs
.LVL215:
	mov.n	a5, a10
.LVL216:
	.loc 1 614 0
	beqz.n	a10, .L78
	.loc 1 615 0 discriminator 4
	call8	esp_log_timestamp
.LVL217:
	l32r	a11, .LC93
	mov.n	a15, a5
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC101
	movi.n	a10, 2
	call8	esp_log_write
.LVL218:
	.loc 1 616 0 discriminator 4
	movi.n	a3, 2
.LVL219:
.L78:
	.loc 1 619 0
	mov.n	a10, sp
	call8	esp_efuse_mac_get_default
.LVL220:
	.loc 1 620 0
	movi.n	a12, 6
	mov.n	a11, sp
	addi.n	a10, a4, 4
	call8	memcpy
.LVL221:
	.loc 1 621 0
	mov.n	a13, a2
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a6
	call8	esp_phy_rf_init
.LVL222:
	.loc 1 623 0
	addi.n	a3, a3, -1
.LVL223:
	movi.n	a9, 1
	movi.n	a8, 0
	mov.n	a2, a8
.LVL224:
	movnez	a2, a9, a3
	mov.n	a3, a2
.LVL225:
	movnez	a8, a9, a5
	mov.n	a5, a8
.LVL226:
	bnone	a8, a2, .L79
	.loc 1 624 0
	mov.n	a10, a4
	call8	esp_phy_store_cal_data_to_nvs
.LVL227:
.L79:
	.loc 1 634 0
	mov.n	a10, a6
	call8	free
.LVL228:
	.loc 1 639 0
	mov.n	a10, a4
	call8	free
.LVL229:
	retw.n
.LFE42:
	.size	esp_phy_load_cal_and_init, .-esp_phy_load_cal_and_init
	.section	.rodata.__func__$8366,"a",@progbits
	.align	4
	.type	__func__$8366, @object
	.size	__func__$8366, 29
__func__$8366:
	.string	"store_cal_data_to_nvs_handle"
	.section	.rodata.__func__$8356,"a",@progbits
	.align	4
	.type	__func__$8356, @object
	.size	__func__$8356, 30
__func__$8356:
	.string	"load_cal_data_from_nvs_handle"
	.section	.rodata.__func__$8343,"a",@progbits
	.align	4
	.type	__func__$8343, @object
	.size	__func__$8343, 31
__func__$8343:
	.string	"esp_phy_load_cal_data_from_nvs"
	.section	.rodata.__func__$8322,"a",@progbits
	.align	4
	.type	__func__$8322, @object
	.size	__func__$8322, 27
__func__$8322:
	.string	"esp_modem_sleep_deregister"
	.section	.rodata.__func__$8318,"a",@progbits
	.align	4
	.type	__func__$8318, @object
	.size	__func__$8318, 25
__func__$8318:
	.string	"esp_modem_sleep_register"
	.section	.rodata.__func__$8313,"a",@progbits
	.align	4
	.type	__func__$8313, @object
	.size	__func__$8313, 21
__func__$8313:
	.string	"esp_modem_sleep_exit"
	.section	.rodata.__func__$8308,"a",@progbits
	.align	4
	.type	__func__$8308, @object
	.size	__func__$8308, 22
__func__$8308:
	.string	"esp_modem_sleep_enter"
	.section	.rodata.__func__$8299,"a",@progbits
	.align	4
	.type	__func__$8299, @object
	.size	__func__$8299, 18
__func__$8299:
	.string	"esp_phy_rf_deinit"
	.section	.bss.s_common_clock_disable_time$8284,"aw",@nobits
	.align	4
	.type	s_common_clock_disable_time$8284, @object
	.size	s_common_clock_disable_time$8284, 4
s_common_clock_disable_time$8284:
	.zero	4
	.section	.rodata.__func__$8292,"a",@progbits
	.align	4
	.type	__func__$8292, @object
	.size	__func__$8292, 16
__func__$8292:
	.string	"esp_phy_rf_init"
	.section	.bss.s_phy_rf_en_ts,"aw",@nobits
	.align	8
	.type	s_phy_rf_en_ts, @object
	.size	s_phy_rf_en_ts, 8
s_phy_rf_en_ts:
	.zero	8
	.section	.bss.s_modem_sleep_lock,"aw",@nobits
	.align	4
	.type	s_modem_sleep_lock, @object
	.size	s_modem_sleep_lock, 4
s_modem_sleep_lock:
	.zero	4
	.section	.bss.s_is_modem_sleep_en,"aw",@nobits
	.type	s_is_modem_sleep_en, @object
	.size	s_is_modem_sleep_en, 1
s_is_modem_sleep_en:
	.zero	1
	.section	.bss.s_modem_sleep_module_register,"aw",@nobits
	.align	4
	.type	s_modem_sleep_module_register, @object
	.size	s_modem_sleep_module_register, 4
s_modem_sleep_module_register:
	.zero	4
	.section	.bss.s_modem_sleep_module_enter,"aw",@nobits
	.align	4
	.type	s_modem_sleep_module_enter, @object
	.size	s_modem_sleep_module_enter, 4
s_modem_sleep_module_enter:
	.zero	4
	.section	.bss.s_is_phy_rf_en,"aw",@nobits
	.type	s_is_phy_rf_en, @object
	.size	s_is_phy_rf_en, 1
s_is_phy_rf_en:
	.zero	1
	.section	.bss.s_module_phy_rf_init,"aw",@nobits
	.align	4
	.type	s_module_phy_rf_init, @object
	.size	s_module_phy_rf_init, 4
s_module_phy_rf_init:
	.zero	4
	.section	.bss.s_phy_rf_init_lock,"aw",@nobits
	.align	4
	.type	s_phy_rf_init_lock, @object
	.size	s_phy_rf_init_lock, 4
s_phy_rf_init_lock:
	.zero	4
	.section	.rodata.phy_init_data,"a",@progbits
	.align	4
	.type	phy_init_data, @object
	.size	phy_init_data, 128
phy_init_data:
	.byte	3
	.byte	3
	.byte	5
	.byte	9
	.byte	6
	.byte	5
	.byte	3
	.byte	6
	.byte	5
	.byte	4
	.byte	6
	.byte	4
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.byte	9
	.byte	6
	.byte	5
	.byte	3
	.byte	6
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-4
	.byte	-4
	.byte	-2
	.byte	-16
	.byte	-16
	.byte	-16
	.byte	-32
	.byte	-32
	.byte	-32
	.byte	24
	.byte	24
	.byte	24
	.byte	78
	.byte	72
	.byte	66
	.byte	60
	.byte	56
	.byte	52
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	21
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
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI0-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI1-.LFB39
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI2-.LFB40
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI3-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI4-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI5-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI6-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI7-.LFB31
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI8-.LFB33
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI9-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI10-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI11-.LFB37
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI12-.LFB38
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI13-.LFB29
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI14-.LFB32
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI15-.LFB34
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI16-.LFB42
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE32:
	.text
.Letext0:
	.file 3 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/lock.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_phy_init.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/rtc.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_system.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/nvs_flash/include/nvs.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/periph_defs.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_wifi_internal.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/phy_init_data.h"
	.file 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/phy.h"
	.file 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/string.h"
	.file 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/xtensa/xtruntime.h"
	.file 19 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_timer.h"
	.file 20 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/driver/include/driver/periph_ctrl.h"
	.file 21 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x196b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF204
	.byte	0xc
	.4byte	.LASF205
	.4byte	.LASF206
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x1d
	.4byte	0x86
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x1e
	.4byte	0x98
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0xb
	.4byte	0x25
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x5
	.byte	0x4
	.4byte	0xcc
	.uleb128 0x6
	.4byte	0xbf
	.uleb128 0x7
	.4byte	0xbf
	.4byte	0xe1
	.uleb128 0x8
	.4byte	0xb1
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x38
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x39
	.4byte	0x8d
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x9
	.byte	0x52
	.4byte	0x185
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x7
	.byte	0x18
	.4byte	0xec
	.uleb128 0xb
	.byte	0x80
	.byte	0x8
	.byte	0x20
	.4byte	0x1a5
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x8
	.byte	0x21
	.4byte	0x1a5
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xe1
	.4byte	0x1b5
	.uleb128 0x8
	.4byte	0xb1
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x8
	.byte	0x22
	.4byte	0x190
	.uleb128 0xd
	.2byte	0x770
	.byte	0x8
	.byte	0x27
	.4byte	0x1ee
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x8
	.byte	0x28
	.4byte	0x1ee
	.byte	0
	.uleb128 0xe
	.string	"mac"
	.byte	0x8
	.byte	0x29
	.4byte	0x1fe
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x8
	.byte	0x2a
	.4byte	0x20e
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.4byte	0xe1
	.4byte	0x1fe
	.uleb128 0x8
	.4byte	0xb1
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	0xe1
	.4byte	0x20e
	.uleb128 0x8
	.4byte	0xb1
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.4byte	0xe1
	.4byte	0x21f
	.uleb128 0xf
	.4byte	0xb1
	.2byte	0x765
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x8
	.byte	0x2b
	.4byte	0x1c0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x2d
	.4byte	0x249
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x8
	.byte	0x31
	.4byte	0x22a
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x37
	.4byte	0x291
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x8
	.byte	0x40
	.4byte	0x254
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x53
	.4byte	0x2c1
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x8
	.byte	0x58
	.4byte	0x29c
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF63
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0xa
	.byte	0x2b
	.4byte	0x322
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0xb
	.byte	0x1f
	.4byte	0x353
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0xc
	.byte	0x1d
	.4byte	0xf7
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0xc
	.byte	0x3f
	.4byte	0x377
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0xd
	.byte	0x16
	.4byte	0x456
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF95
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF96
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF97
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF98
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF99
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF100
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF101
	.byte	0x11
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0x12
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0x13
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0x15
	.uleb128 0xa
	.4byte	.LASF106
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF107
	.byte	0x17
	.uleb128 0xa
	.4byte	.LASF108
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF109
	.byte	0x19
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0x1a
	.uleb128 0xa
	.4byte	.LASF111
	.byte	0x1b
	.uleb128 0xa
	.4byte	.LASF112
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF113
	.byte	0x1d
	.uleb128 0xa
	.4byte	.LASF114
	.byte	0x1e
	.uleb128 0xa
	.4byte	.LASF115
	.byte	0x1f
	.uleb128 0xa
	.4byte	.LASF116
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF117
	.byte	0x21
	.uleb128 0xa
	.4byte	.LASF118
	.byte	0x22
	.byte	0
	.uleb128 0x6
	.4byte	0xc6
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0xe
	.byte	0xe1
	.4byte	0x466
	.uleb128 0x5
	.byte	0x4
	.4byte	0x46c
	.uleb128 0x10
	.4byte	0x185
	.4byte	0x47b
	.uleb128 0x11
	.4byte	0xf7
	.byte	0
	.uleb128 0x12
	.4byte	.LASF122
	.byte	0x2
	.byte	0xf8
	.4byte	0x37
	.byte	0x3
	.4byte	0x4a4
	.uleb128 0x13
	.4byte	.LASF120
	.byte	0x2
	.byte	0xf9
	.4byte	0x37
	.uleb128 0x14
	.uleb128 0x13
	.4byte	.LASF121
	.byte	0x2
	.byte	0xf9
	.4byte	0x37
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF123
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.4byte	0x4df
	.uleb128 0x16
	.4byte	.LASF124
	.byte	0x1
	.byte	0x56
	.4byte	0x2cc
	.uleb128 0x17
	.string	"now"
	.byte	0x1
	.byte	0x56
	.4byte	0x102
	.uleb128 0x13
	.4byte	.LASF125
	.byte	0x1
	.byte	0x58
	.4byte	0xf7
	.uleb128 0x14
	.uleb128 0x13
	.4byte	.LASF126
	.byte	0x1
	.byte	0x5e
	.4byte	0xf7
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x232
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x512
	.uleb128 0x19
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x232
	.4byte	0x512
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.2byte	0x234
	.4byte	0xe1
	.4byte	.LLST0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1b5
	.uleb128 0x1b
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x1dd
	.4byte	0x185
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x71c
	.uleb128 0x1c
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x1dd
	.4byte	0x353
	.4byte	.LLST1
	.uleb128 0x1c
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x1de
	.4byte	0x71c
	.4byte	.LLST2
	.uleb128 0x1a
	.string	"err"
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x185
	.4byte	.LLST3
	.uleb128 0x1d
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x1e1
	.4byte	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.4byte	.LASF131
	.4byte	0x732
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8356
	.uleb128 0x1f
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x1e7
	.4byte	0xf7
	.4byte	.LLST4
	.uleb128 0x1d
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x1fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1d
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1d
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x1fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.4byte	.LVL6
	.4byte	0x182e
	.4byte	0x5e0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x22
	.4byte	.LVL7
	.4byte	0x1839
	.uleb128 0x20
	.4byte	.LVL11
	.4byte	0x1844
	.4byte	0x612
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x20
	.4byte	.LVL13
	.4byte	0x1850
	.4byte	0x626
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x20
	.4byte	.LVL14
	.4byte	0x185b
	.4byte	0x645
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x22
	.4byte	.LVL15
	.4byte	0x1866
	.uleb128 0x20
	.4byte	.LVL18
	.4byte	0x1871
	.4byte	0x6af
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8356
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 36
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 40
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 44
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL20
	.4byte	0x1844
	.4byte	0x6d8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x22
	.4byte	.LVL22
	.4byte	0x1866
	.uleb128 0x23
	.4byte	.LVL23
	.4byte	0x1871
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8356
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x21f
	.uleb128 0x7
	.4byte	0xbf
	.4byte	0x732
	.uleb128 0x8
	.4byte	0xb1
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.4byte	0x722
	.uleb128 0x1b
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x20e
	.4byte	0x185
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x968
	.uleb128 0x1c
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x20e
	.4byte	0x353
	.4byte	.LLST5
	.uleb128 0x1c
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x20f
	.4byte	0x968
	.4byte	.LLST6
	.uleb128 0x1a
	.string	"err"
	.byte	0x1
	.2byte	0x211
	.4byte	0x185
	.4byte	.LLST7
	.uleb128 0x1e
	.4byte	.LASF131
	.4byte	0x983
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8366
	.uleb128 0x1d
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x219
	.4byte	0x1fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x221
	.4byte	0xf7
	.4byte	.LLST8
	.uleb128 0x20
	.4byte	.LVL32
	.4byte	0x187c
	.4byte	0x7d9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0xa
	.2byte	0x770
	.byte	0
	.uleb128 0x22
	.4byte	.LVL34
	.4byte	0x1866
	.uleb128 0x20
	.4byte	.LVL35
	.4byte	0x1871
	.4byte	0x820
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8366
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL38
	.4byte	0x1850
	.4byte	0x834
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x20
	.4byte	.LVL39
	.4byte	0x187c
	.4byte	0x85c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x22
	.4byte	.LVL41
	.4byte	0x1866
	.uleb128 0x20
	.4byte	.LVL42
	.4byte	0x1871
	.4byte	0x8a3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8366
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL45
	.4byte	0x1839
	.uleb128 0x20
	.4byte	.LVL47
	.4byte	0x1887
	.4byte	0x8c9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL49
	.4byte	0x1866
	.uleb128 0x20
	.4byte	.LVL50
	.4byte	0x1871
	.4byte	0x910
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8366
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL53
	.4byte	0x1892
	.4byte	0x924
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL55
	.4byte	0x1866
	.uleb128 0x23
	.4byte	.LVL56
	.4byte	0x1871
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8366
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x96e
	.uleb128 0x6
	.4byte	0x21f
	.uleb128 0x7
	.4byte	0xbf
	.4byte	0x983
	.uleb128 0x8
	.4byte	0xb1
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.4byte	0x973
	.uleb128 0x24
	.4byte	.LASF140
	.byte	0x1
	.byte	0x47
	.4byte	0xf7
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d4
	.uleb128 0x25
	.4byte	0x47b
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.byte	0x1
	.byte	0x49
	.uleb128 0x26
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x27
	.4byte	0x48b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x27
	.4byte	0x497
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF150
	.byte	0x1
	.byte	0x4c
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa07
	.uleb128 0x29
	.4byte	.LASF139
	.byte	0x1
	.byte	0x4c
	.4byte	0xf7
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	.LVL59
	.4byte	0x189e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF208
	.byte	0x1
	.byte	0x51
	.4byte	0x102
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.4byte	.LASF141
	.byte	0x1
	.byte	0xb8
	.4byte	0x185
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbb1
	.uleb128 0x2b
	.4byte	.LASF142
	.byte	0x1
	.byte	0xb8
	.4byte	0x2c1
	.4byte	.LLST9
	.uleb128 0x1e
	.4byte	.LASF131
	.4byte	0xbc1
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8299
	.uleb128 0x2c
	.4byte	.LASF143
	.byte	0x1
	.byte	0xc2
	.4byte	0xf7
	.4byte	.LLST10
	.uleb128 0x2d
	.4byte	.LASF144
	.byte	0x1
	.byte	0xc3
	.4byte	0xf7
	.byte	0x3
	.uleb128 0x2c
	.4byte	.LASF145
	.byte	0x1
	.byte	0xc4
	.4byte	0x2cc
	.4byte	.LLST11
	.uleb128 0x2e
	.4byte	.LASF146
	.byte	0x1
	.byte	0xc5
	.4byte	0x2cc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF147
	.byte	0x1
	.byte	0xc7
	.4byte	0x185
	.4byte	.LLST12
	.uleb128 0x2f
	.4byte	0x4a4
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.byte	0xec
	.4byte	0xad4
	.uleb128 0x30
	.4byte	0x4bb
	.4byte	.LLST13
	.uleb128 0x30
	.4byte	0x4b0
	.4byte	.LLST14
	.uleb128 0x26
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x27
	.4byte	0x4c6
	.uleb128 0x5
	.byte	0x3
	.4byte	s_common_clock_disable_time$8284
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL61
	.4byte	0x1866
	.uleb128 0x20
	.4byte	.LVL62
	.4byte	0x1871
	.4byte	0xb21
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8299
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x20
	.4byte	.LVL65
	.4byte	0x18a9
	.4byte	0xb38
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_phy_rf_init_lock
	.byte	0
	.uleb128 0x22
	.4byte	.LVL71
	.4byte	0x1866
	.uleb128 0x20
	.4byte	.LVL72
	.4byte	0x1871
	.4byte	0xb78
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8299
	.byte	0
	.uleb128 0x22
	.4byte	.LVL78
	.4byte	0x18b4
	.uleb128 0x22
	.4byte	.LVL79
	.4byte	0x18bf
	.uleb128 0x20
	.4byte	.LVL81
	.4byte	0x18ca
	.4byte	0xb9d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4d
	.byte	0
	.uleb128 0x23
	.4byte	.LVL88
	.4byte	0x18d5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_phy_rf_init_lock
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xbf
	.4byte	0xbc1
	.uleb128 0x8
	.4byte	0xb1
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.4byte	0xbb1
	.uleb128 0x24
	.4byte	.LASF148
	.byte	0x1
	.byte	0xf8
	.4byte	0x185
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce9
	.uleb128 0x2b
	.4byte	.LASF142
	.byte	0x1
	.byte	0xf8
	.4byte	0x291
	.4byte	.LLST15
	.uleb128 0x1e
	.4byte	.LASF131
	.4byte	0xcf9
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8308
	.uleb128 0x31
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0xc2a
	.uleb128 0x1f
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x113
	.4byte	0x185
	.4byte	.LLST16
	.uleb128 0x23
	.4byte	.LVL100
	.4byte	0xa1c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL90
	.4byte	0x1866
	.uleb128 0x20
	.4byte	.LVL91
	.4byte	0x1871
	.4byte	0xc77
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8308
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x22
	.4byte	.LVL94
	.4byte	0x1866
	.uleb128 0x20
	.4byte	.LVL95
	.4byte	0x1871
	.4byte	0xcbe
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8308
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL98
	.4byte	0x18a9
	.4byte	0xcd5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_modem_sleep_lock
	.byte	0
	.uleb128 0x23
	.4byte	.LVL102
	.4byte	0x18d5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_modem_sleep_lock
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xbf
	.4byte	0xcf9
	.uleb128 0x8
	.4byte	0xb1
	.byte	0x15
	.byte	0
	.uleb128 0x6
	.4byte	0xce9
	.uleb128 0x32
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x143
	.4byte	0x185
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf1
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x143
	.4byte	0x291
	.4byte	.LLST17
	.uleb128 0x1e
	.4byte	.LASF131
	.4byte	0xe01
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8318
	.uleb128 0x22
	.4byte	.LVL104
	.4byte	0x1866
	.uleb128 0x20
	.4byte	.LVL105
	.4byte	0x1871
	.4byte	0xd85
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8318
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL108
	.4byte	0x1866
	.uleb128 0x20
	.4byte	.LVL109
	.4byte	0x1871
	.4byte	0xdcc
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8318
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL112
	.4byte	0x18a9
	.4byte	0xde0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL114
	.4byte	0x18d5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xbf
	.4byte	0xe01
	.uleb128 0x8
	.4byte	0xb1
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.4byte	0xdf1
	.uleb128 0x33
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x1a5
	.4byte	0xe1c
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe22
	.uleb128 0x6
	.4byte	0x1b5
	.uleb128 0x34
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x1ab
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe4c
	.uleb128 0x19
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x1ab
	.4byte	0xe1c
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x32
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x1be
	.4byte	0x185
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf24
	.uleb128 0x1c
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x1be
	.4byte	0x71c
	.4byte	.LLST18
	.uleb128 0x1d
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.string	"err"
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x185
	.4byte	.LLST19
	.uleb128 0x1e
	.4byte	.LASF131
	.4byte	0xf34
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8343
	.uleb128 0x20
	.4byte	.LVL117
	.4byte	0x18e0
	.4byte	0xec6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC57
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x22
	.4byte	.LVL118
	.4byte	0x1866
	.uleb128 0x20
	.4byte	.LVL119
	.4byte	0x1871
	.4byte	0xf06
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8343
	.byte	0
	.uleb128 0x20
	.4byte	.LVL122
	.4byte	0x518
	.4byte	0xf1a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL124
	.4byte	0x18eb
	.byte	0
	.uleb128 0x7
	.4byte	0xbf
	.4byte	0xf34
	.uleb128 0x8
	.4byte	0xb1
	.byte	0x1e
	.byte	0
	.uleb128 0x6
	.4byte	0xf24
	.uleb128 0x32
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x185
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfcb
	.uleb128 0x1c
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x968
	.4byte	.LLST20
	.uleb128 0x1d
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.string	"err"
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x185
	.4byte	.LLST21
	.uleb128 0x35
	.4byte	.LASF131
	.4byte	0xfcb
	.uleb128 0x20
	.4byte	.LVL128
	.4byte	0x18e0
	.4byte	0xfad
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC57
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x20
	.4byte	.LVL130
	.4byte	0x737
	.4byte	0xfc1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL132
	.4byte	0x18eb
	.byte	0
	.uleb128 0x6
	.4byte	0x722
	.uleb128 0x24
	.4byte	.LASF154
	.byte	0x1
	.byte	0x69
	.4byte	0x185
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11d5
	.uleb128 0x2b
	.4byte	.LASF127
	.byte	0x1
	.byte	0x69
	.4byte	0xe1c
	.4byte	.LLST22
	.uleb128 0x29
	.4byte	.LASF155
	.byte	0x1
	.byte	0x69
	.4byte	0x249
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	.LASF156
	.byte	0x1
	.byte	0x6a
	.4byte	0x71c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2b
	.4byte	.LASF142
	.byte	0x1
	.byte	0x6a
	.4byte	0x2c1
	.4byte	.LLST23
	.uleb128 0x1e
	.4byte	.LASF131
	.4byte	0x11e5
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8292
	.uleb128 0x2c
	.4byte	.LASF143
	.byte	0x1
	.byte	0x74
	.4byte	0xf7
	.4byte	.LLST24
	.uleb128 0x2c
	.4byte	.LASF145
	.byte	0x1
	.byte	0x75
	.4byte	0x2cc
	.4byte	.LLST25
	.uleb128 0x2c
	.4byte	.LASF147
	.byte	0x1
	.byte	0x76
	.4byte	0x185
	.4byte	.LLST26
	.uleb128 0x2f
	.4byte	0x4a4
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.byte	0x1
	.byte	0x97
	.4byte	0x10b3
	.uleb128 0x30
	.4byte	0x4bb
	.4byte	.LLST27
	.uleb128 0x30
	.4byte	0x4b0
	.4byte	.LLST28
	.uleb128 0x26
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x27
	.4byte	0x4c6
	.uleb128 0x5
	.byte	0x3
	.4byte	s_common_clock_disable_time$8284
	.uleb128 0x26
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x36
	.4byte	0x4d2
	.4byte	.LLST29
	.uleb128 0x37
	.4byte	.LVL150
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL136
	.4byte	0x1866
	.uleb128 0x20
	.4byte	.LVL138
	.4byte	0x1871
	.4byte	0x1101
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8292
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL140
	.4byte	0x18a9
	.4byte	0x1118
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_phy_rf_init_lock
	.byte	0
	.uleb128 0x22
	.4byte	.LVL147
	.4byte	0x18bf
	.uleb128 0x20
	.4byte	.LVL151
	.4byte	0x18f7
	.4byte	0x1134
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4d
	.byte	0
	.uleb128 0x20
	.4byte	.LVL152
	.4byte	0x1902
	.4byte	0x1147
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.4byte	.LVL153
	.4byte	0x190d
	.4byte	0x1167
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL154
	.4byte	0x1866
	.uleb128 0x20
	.4byte	.LVL155
	.4byte	0x1871
	.4byte	0x11a4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC74
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL156
	.4byte	0xf39
	.4byte	0x11b8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL157
	.4byte	0x1918
	.uleb128 0x23
	.4byte	.LVL165
	.4byte	0x18d5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_phy_rf_init_lock
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xbf
	.4byte	0x11e5
	.uleb128 0x8
	.4byte	0xb1
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0x11d5
	.uleb128 0x32
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x11d
	.4byte	0x185
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x131e
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x11d
	.4byte	0x291
	.4byte	.LLST30
	.uleb128 0x1e
	.4byte	.LASF131
	.4byte	0x132e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8313
	.uleb128 0x31
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x125f
	.uleb128 0x1f
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x130
	.4byte	0x185
	.4byte	.LLST31
	.uleb128 0x23
	.4byte	.LVL177
	.4byte	0xfd0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL167
	.4byte	0x1866
	.uleb128 0x20
	.4byte	.LVL168
	.4byte	0x1871
	.4byte	0x12ac
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8313
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x22
	.4byte	.LVL171
	.4byte	0x1866
	.uleb128 0x20
	.4byte	.LVL172
	.4byte	0x1871
	.4byte	0x12f3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8313
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL175
	.4byte	0x18a9
	.4byte	0x130a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_modem_sleep_lock
	.byte	0
	.uleb128 0x23
	.4byte	.LVL179
	.4byte	0x18d5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_modem_sleep_lock
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xbf
	.4byte	0x132e
	.uleb128 0x8
	.4byte	0xb1
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.4byte	0x131e
	.uleb128 0x32
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x15a
	.4byte	0x185
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x144d
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x15a
	.4byte	0x291
	.4byte	.LLST32
	.uleb128 0x1e
	.4byte	.LASF131
	.4byte	0x145d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8322
	.uleb128 0x22
	.4byte	.LVL181
	.4byte	0x1866
	.uleb128 0x20
	.4byte	.LVL182
	.4byte	0x1871
	.4byte	0x13b9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8322
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x22
	.4byte	.LVL185
	.4byte	0x1866
	.uleb128 0x20
	.4byte	.LVL186
	.4byte	0x1871
	.4byte	0x1400
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC88
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8322
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL189
	.4byte	0x18a9
	.4byte	0x1417
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_modem_sleep_lock
	.byte	0
	.uleb128 0x20
	.4byte	.LVL191
	.4byte	0xfd0
	.4byte	0x1439
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x23
	.4byte	.LVL192
	.4byte	0x18d5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_modem_sleep_lock
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xbf
	.4byte	0x145d
	.uleb128 0x8
	.4byte	0xb1
	.byte	0x1a
	.byte	0
	.uleb128 0x6
	.4byte	0x144d
	.uleb128 0x34
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x23d
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1707
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x23d
	.4byte	0x2c1
	.4byte	.LLST33
	.uleb128 0x1d
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x23f
	.4byte	0x71c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x247
	.4byte	0xe1c
	.4byte	.LLST34
	.uleb128 0x1d
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x24d
	.4byte	0x512
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1f
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x260
	.4byte	0x249
	.4byte	.LLST35
	.uleb128 0x1d
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x261
	.4byte	0x1fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.string	"err"
	.byte	0x1
	.2byte	0x265
	.4byte	0x185
	.4byte	.LLST36
	.uleb128 0x20
	.4byte	.LVL194
	.4byte	0x1923
	.4byte	0x14fd
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x770
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x22
	.4byte	.LVL196
	.4byte	0x1866
	.uleb128 0x20
	.4byte	.LVL197
	.4byte	0x1871
	.4byte	0x1534
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC94
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x22
	.4byte	.LVL198
	.4byte	0x192e
	.uleb128 0x22
	.4byte	.LVL199
	.4byte	0xe06
	.uleb128 0x22
	.4byte	.LVL201
	.4byte	0x1866
	.uleb128 0x20
	.4byte	.LVL202
	.4byte	0x1871
	.4byte	0x157d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC96
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x22
	.4byte	.LVL203
	.4byte	0x192e
	.uleb128 0x20
	.4byte	.LVL204
	.4byte	0x1939
	.4byte	0x159a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x22
	.4byte	.LVL206
	.4byte	0x1866
	.uleb128 0x20
	.4byte	.LVL207
	.4byte	0x1871
	.4byte	0x15d1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC98
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x22
	.4byte	.LVL208
	.4byte	0x192e
	.uleb128 0x20
	.4byte	.LVL209
	.4byte	0x1944
	.4byte	0x15f4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x22
	.4byte	.LVL210
	.4byte	0x194d
	.uleb128 0x20
	.4byte	.LVL212
	.4byte	0x4df
	.4byte	0x1611
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL213
	.4byte	0x1958
	.4byte	0x1624
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.4byte	.LVL215
	.4byte	0xe4c
	.4byte	0x1638
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL217
	.4byte	0x1866
	.uleb128 0x20
	.4byte	.LVL218
	.4byte	0x1871
	.4byte	0x1675
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC100
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL220
	.4byte	0x1850
	.4byte	0x1689
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x20
	.4byte	.LVL221
	.4byte	0x1944
	.4byte	0x16a8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x20
	.4byte	.LVL222
	.4byte	0xfd0
	.4byte	0x16ce
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL227
	.4byte	0xf39
	.4byte	0x16e2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL228
	.4byte	0x1963
	.4byte	0x16f6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL229
	.4byte	0x1963
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF162
	.byte	0xf
	.byte	0x1e
	.4byte	0x1712
	.uleb128 0x6
	.4byte	0xd1
	.uleb128 0x2e
	.4byte	.LASF160
	.byte	0xf
	.byte	0x23
	.4byte	0xe22
	.uleb128 0x5
	.byte	0x3
	.4byte	phy_init_data
	.uleb128 0x13
	.4byte	.LASF163
	.byte	0xf
	.byte	0x91
	.4byte	0x1733
	.uleb128 0x6
	.4byte	0xd1
	.uleb128 0x38
	.string	"TAG"
	.byte	0x1
	.byte	0x2d
	.4byte	0x456
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC6
	.byte	0x9f
	.uleb128 0x2e
	.4byte	.LASF164
	.byte	0x1
	.byte	0x2f
	.4byte	0x9f
	.uleb128 0x5
	.byte	0x3
	.4byte	s_phy_rf_init_lock
	.uleb128 0x2e
	.4byte	.LASF165
	.byte	0x1
	.byte	0x32
	.4byte	0xf7
	.uleb128 0x5
	.byte	0x3
	.4byte	s_module_phy_rf_init
	.uleb128 0x2e
	.4byte	.LASF166
	.byte	0x1
	.byte	0x35
	.4byte	0x177d
	.uleb128 0x5
	.byte	0x3
	.4byte	s_is_phy_rf_en
	.uleb128 0x39
	.4byte	0x2cc
	.uleb128 0x2e
	.4byte	.LASF167
	.byte	0x1
	.byte	0x38
	.4byte	0xf7
	.uleb128 0x5
	.byte	0x3
	.4byte	s_modem_sleep_module_enter
	.uleb128 0x2e
	.4byte	.LASF168
	.byte	0x1
	.byte	0x3d
	.4byte	0xf7
	.uleb128 0x5
	.byte	0x3
	.4byte	s_modem_sleep_module_register
	.uleb128 0x2e
	.4byte	.LASF169
	.byte	0x1
	.byte	0x40
	.4byte	0x177d
	.uleb128 0x5
	.byte	0x3
	.4byte	s_is_modem_sleep_en
	.uleb128 0x2e
	.4byte	.LASF170
	.byte	0x1
	.byte	0x42
	.4byte	0x9f
	.uleb128 0x5
	.byte	0x3
	.4byte	s_modem_sleep_lock
	.uleb128 0x2e
	.4byte	.LASF171
	.byte	0x1
	.byte	0x45
	.4byte	0x102
	.uleb128 0x5
	.byte	0x3
	.4byte	s_phy_rf_en_ts
	.uleb128 0x1d
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x1b3
	.4byte	0x456
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC57
	.byte	0x9f
	.uleb128 0x1d
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x456
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x1d
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x456
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC3
	.byte	0x9f
	.uleb128 0x1d
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x456
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC10
	.byte	0x9f
	.uleb128 0x3a
	.4byte	.LASF210
	.byte	0x1
	.byte	0x2b
	.4byte	0x45b
	.uleb128 0x3b
	.4byte	.LASF176
	.4byte	.LASF176
	.byte	0xc
	.byte	0xed
	.uleb128 0x3b
	.4byte	.LASF177
	.4byte	.LASF177
	.byte	0x10
	.byte	0x2f
	.uleb128 0x3c
	.4byte	.LASF178
	.4byte	.LASF178
	.byte	0xc
	.2byte	0x12c
	.uleb128 0x3b
	.4byte	.LASF179
	.4byte	.LASF179
	.byte	0xa
	.byte	0xe3
	.uleb128 0x3b
	.4byte	.LASF180
	.4byte	.LASF180
	.byte	0x11
	.byte	0x16
	.uleb128 0x3b
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0xb
	.byte	0x57
	.uleb128 0x3b
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0xb
	.byte	0x6b
	.uleb128 0x3b
	.4byte	.LASF183
	.4byte	.LASF183
	.byte	0xc
	.byte	0xc0
	.uleb128 0x3b
	.4byte	.LASF184
	.4byte	.LASF184
	.byte	0xc
	.byte	0x9f
	.uleb128 0x3c
	.4byte	.LASF185
	.4byte	.LASF185
	.byte	0xc
	.2byte	0x163
	.uleb128 0x3b
	.4byte	.LASF186
	.4byte	.LASF186
	.byte	0x12
	.byte	0x99
	.uleb128 0x3b
	.4byte	.LASF187
	.4byte	.LASF187
	.byte	0x5
	.byte	0x20
	.uleb128 0x3b
	.4byte	.LASF188
	.4byte	.LASF188
	.byte	0x10
	.byte	0x41
	.uleb128 0x3b
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0x13
	.byte	0xbe
	.uleb128 0x3b
	.4byte	.LASF190
	.4byte	.LASF190
	.byte	0x14
	.byte	0x31
	.uleb128 0x3b
	.4byte	.LASF191
	.4byte	.LASF191
	.byte	0x5
	.byte	0x24
	.uleb128 0x3b
	.4byte	.LASF192
	.4byte	.LASF192
	.byte	0xc
	.byte	0x5f
	.uleb128 0x3c
	.4byte	.LASF193
	.4byte	.LASF193
	.byte	0xc
	.2byte	0x170
	.uleb128 0x3b
	.4byte	.LASF194
	.4byte	.LASF194
	.byte	0x14
	.byte	0x25
	.uleb128 0x3b
	.4byte	.LASF195
	.4byte	.LASF195
	.byte	0x10
	.byte	0x36
	.uleb128 0x3b
	.4byte	.LASF196
	.4byte	.LASF196
	.byte	0x10
	.byte	0x29
	.uleb128 0x3b
	.4byte	.LASF197
	.4byte	.LASF197
	.byte	0x10
	.byte	0x3c
	.uleb128 0x3b
	.4byte	.LASF198
	.4byte	.LASF198
	.byte	0x15
	.byte	0x57
	.uleb128 0x3b
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0x15
	.byte	0x47
	.uleb128 0x3b
	.4byte	.LASF200
	.4byte	.LASF200
	.byte	0x15
	.byte	0x65
	.uleb128 0x3d
	.4byte	.LASF211
	.4byte	.LASF211
	.uleb128 0x3b
	.4byte	.LASF201
	.4byte	.LASF201
	.byte	0xa
	.byte	0x6e
	.uleb128 0x3b
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0x9
	.byte	0x9c
	.uleb128 0x3b
	.4byte	.LASF203
	.4byte	.LASF203
	.byte	0x15
	.byte	0x5a
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x29
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
	.uleb128 0x2c
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL30
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL44
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
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL33
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x11
	.sleb128 -65537
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x3
	.byte	0x78
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL66
	.4byte	.LVL71-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL73
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL82
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL67
	.4byte	.LVL71-1
	.2byte	0x5
	.byte	0x7d
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL77
	.2byte	0x5
	.byte	0x7d
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL86
	.2byte	0x5
	.byte	0x7d
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL69
	.4byte	.LVL87
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL80
	.4byte	.LVL81-1
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL79
	.4byte	.LVL82
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL89
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL103
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL107
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
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL116
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123
	.4byte	.LVL125
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL126
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL117
	.4byte	.LVL118-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL123
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL125
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL127
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL134
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL133
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL135
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL137
	.4byte	.LVL139
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL160
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
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL135
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL146
	.4byte	.LVL147-1
	.2byte	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL147-1
	.4byte	.LVL159
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL141
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL142
	.4byte	.LVL147-1
	.2byte	0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL164
	.2byte	0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL142
	.4byte	.LVL164
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL149
	.4byte	.LVL150-1
	.2byte	0xa
	.byte	0x3
	.4byte	s_phy_rf_en_ts
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL148
	.4byte	.LVL159
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL149
	.4byte	.LVL150-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL166
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL170
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL174
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL176
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL180
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL184
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL187
	.4byte	.LVL188
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL188
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL190
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL193
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL224
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL200
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL212
	.4byte	.LVL214
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL214
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL218
	.4byte	.LVL219
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL219
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL223
	.4byte	.LVL225
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL216
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x9c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF206:
	.string	"/home/raphael/rtone/lcd/build/esp32"
.LASF175:
	.string	"PHY_CAL_DATA_KEY"
.LASF200:
	.string	"malloc"
.LASF104:
	.string	"PERIPH_VSPI_MODULE"
.LASF64:
	.string	"ESP_RST_UNKNOWN"
.LASF40:
	.string	"esp_phy_init_data_t"
.LASF57:
	.string	"modem_sleep_module_t"
.LASF3:
	.string	"size_t"
.LASF207:
	.string	"esp_phy_reduce_tx_power"
.LASF97:
	.string	"PERIPH_PWM3_MODULE"
.LASF22:
	.string	"uint64_t"
.LASF156:
	.string	"calibration_data"
.LASF68:
	.string	"ESP_RST_PANIC"
.LASF39:
	.string	"esp_err_t"
.LASF4:
	.string	"__uint8_t"
.LASF146:
	.string	"is_both_wifi_bt_enabled"
.LASF172:
	.string	"PHY_NAMESPACE"
.LASF99:
	.string	"PERIPH_UHCI1_MODULE"
.LASF163:
	.string	"phy_init_magic_post"
.LASF125:
	.string	"s_common_clock_disable_time"
.LASF123:
	.string	"phy_update_wifi_mac_time"
.LASF14:
	.string	"long int"
.LASF26:
	.string	"OWDT_RESET"
.LASF38:
	.string	"RTCWDT_RTC_RESET"
.LASF55:
	.string	"MODEM_USER_MODULE"
.LASF174:
	.string	"PHY_CAL_MAC_KEY"
.LASF43:
	.string	"opaque"
.LASF12:
	.string	"long long unsigned int"
.LASF122:
	.string	"portENTER_CRITICAL_NESTED"
.LASF25:
	.string	"SW_RESET"
.LASF33:
	.string	"TGWDT_CPU_RESET"
.LASF126:
	.string	"diff"
.LASF141:
	.string	"esp_phy_rf_deinit"
.LASF136:
	.string	"load_cal_data_from_nvs_handle"
.LASF52:
	.string	"MODEM_WIFI_SOFTAP_MODULE"
.LASF23:
	.string	"NO_MEAN"
.LASF203:
	.string	"free"
.LASF34:
	.string	"SW_CPU_RESET"
.LASF56:
	.string	"MODEM_MODULE_COUNT"
.LASF9:
	.string	"__int64_t"
.LASF177:
	.string	"phy_get_rf_cal_version"
.LASF79:
	.string	"ESP_LOG_DEBUG"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF189:
	.string	"esp_timer_get_time"
.LASF153:
	.string	"esp_phy_store_cal_data_to_nvs"
.LASF28:
	.string	"SDIO_RESET"
.LASF164:
	.string	"s_phy_rf_init_lock"
.LASF89:
	.string	"PERIPH_I2C1_MODULE"
.LASF73:
	.string	"ESP_RST_BROWNOUT"
.LASF120:
	.string	"state"
.LASF61:
	.string	"PHY_MODULE_COUNT"
.LASF185:
	.string	"nvs_commit"
.LASF182:
	.string	"esp_log_write"
.LASF211:
	.string	"memcpy"
.LASF13:
	.string	"_lock_t"
.LASF192:
	.string	"nvs_open"
.LASF105:
	.string	"PERIPH_SPI_DMA_MODULE"
.LASF186:
	.string	"_xtos_set_intlevel"
.LASF111:
	.string	"PERIPH_WIFI_MODULE"
.LASF129:
	.string	"out_cal_data"
.LASF67:
	.string	"ESP_RST_SW"
.LASF138:
	.string	"cal_data"
.LASF176:
	.string	"nvs_get_u32"
.LASF107:
	.string	"PERIPH_SDIO_SLAVE_MODULE"
.LASF36:
	.string	"EXT_CPU_RESET"
.LASF8:
	.string	"__uint32_t"
.LASF59:
	.string	"PHY_WIFI_MODULE"
.LASF121:
	.string	"__tmp"
.LASF184:
	.string	"nvs_set_u32"
.LASF24:
	.string	"POWERON_RESET"
.LASF165:
	.string	"s_module_phy_rf_init"
.LASF124:
	.string	"en_clock_stopped"
.LASF171:
	.string	"s_phy_rf_en_ts"
.LASF137:
	.string	"store_cal_data_to_nvs_handle"
.LASF45:
	.string	"PHY_RF_CAL_PARTIAL"
.LASF127:
	.string	"init_data"
.LASF158:
	.string	"esp_modem_sleep_deregister"
.LASF110:
	.string	"PERIPH_RNG_MODULE"
.LASF96:
	.string	"PERIPH_PWM2_MODULE"
.LASF83:
	.string	"NVS_READWRITE"
.LASF16:
	.string	"long unsigned int"
.LASF149:
	.string	"esp_modem_sleep_register"
.LASF37:
	.string	"RTCWDT_BROWN_OUT_RESET"
.LASF205:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/phy_init.c"
.LASF98:
	.string	"PERIPH_UHCI0_MODULE"
.LASF49:
	.string	"MODEM_BLE_MODULE"
.LASF133:
	.string	"cal_data_mac"
.LASF139:
	.string	"level"
.LASF1:
	.string	"short unsigned int"
.LASF132:
	.string	"cal_format_version"
.LASF113:
	.string	"PERIPH_WIFI_BT_COMMON_MODULE"
.LASF190:
	.string	"periph_module_disable"
.LASF193:
	.string	"nvs_close"
.LASF72:
	.string	"ESP_RST_DEEPSLEEP"
.LASF86:
	.string	"PERIPH_UART1_MODULE"
.LASF179:
	.string	"esp_efuse_mac_get_default"
.LASF161:
	.string	"calibration_mode"
.LASF130:
	.string	"cal_data_version"
.LASF109:
	.string	"PERIPH_EMAC_MODULE"
.LASF152:
	.string	"esp_phy_load_cal_data_from_nvs"
.LASF76:
	.string	"ESP_LOG_ERROR"
.LASF143:
	.string	"s_module_phy_rf_init_old"
.LASF201:
	.string	"esp_reset_reason"
.LASF88:
	.string	"PERIPH_I2C0_MODULE"
.LASF78:
	.string	"ESP_LOG_INFO"
.LASF51:
	.string	"MODEM_WIFI_STATION_MODULE"
.LASF118:
	.string	"PERIPH_RSA_MODULE"
.LASF188:
	.string	"phy_close_rf"
.LASF81:
	.string	"nvs_handle"
.LASF15:
	.string	"sizetype"
.LASF48:
	.string	"esp_phy_calibration_mode_t"
.LASF65:
	.string	"ESP_RST_POWERON"
.LASF54:
	.string	"MODEM_WIFI_NULL_MODULE"
.LASF53:
	.string	"MODEM_WIFI_SNIFFER_MODULE"
.LASF168:
	.string	"s_modem_sleep_module_register"
.LASF103:
	.string	"PERIPH_HSPI_MODULE"
.LASF119:
	.string	"wifi_mac_time_update_cb_t"
.LASF187:
	.string	"_lock_acquire"
.LASF87:
	.string	"PERIPH_UART2_MODULE"
.LASF31:
	.string	"RTCWDT_SYS_RESET"
.LASF91:
	.string	"PERIPH_I2S1_MODULE"
.LASF93:
	.string	"PERIPH_TIMG1_MODULE"
.LASF11:
	.string	"__uint64_t"
.LASF170:
	.string	"s_modem_sleep_lock"
.LASF183:
	.string	"nvs_set_blob"
.LASF84:
	.string	"PERIPH_LEDC_MODULE"
.LASF140:
	.string	"phy_enter_critical"
.LASF151:
	.string	"esp_phy_release_init_data"
.LASF35:
	.string	"RTCWDT_CPU_RESET"
.LASF178:
	.string	"nvs_get_blob"
.LASF157:
	.string	"esp_modem_sleep_exit"
.LASF195:
	.string	"phy_set_wifi_mode_only"
.LASF63:
	.string	"_Bool"
.LASF19:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF95:
	.string	"PERIPH_PWM1_MODULE"
.LASF29:
	.string	"TG0WDT_SYS_RESET"
.LASF42:
	.string	"version"
.LASF47:
	.string	"PHY_RF_CAL_FULL"
.LASF44:
	.string	"esp_phy_calibration_data_t"
.LASF32:
	.string	"INTRUSION_RESET"
.LASF6:
	.string	"short int"
.LASF167:
	.string	"s_modem_sleep_module_enter"
.LASF142:
	.string	"module"
.LASF181:
	.string	"esp_log_timestamp"
.LASF62:
	.string	"phy_rf_module_t"
.LASF131:
	.string	"__func__"
.LASF69:
	.string	"ESP_RST_INT_WDT"
.LASF82:
	.string	"NVS_READONLY"
.LASF75:
	.string	"ESP_LOG_NONE"
.LASF166:
	.string	"s_is_phy_rf_en"
.LASF108:
	.string	"PERIPH_CAN_MODULE"
.LASF85:
	.string	"PERIPH_UART0_MODULE"
.LASF115:
	.string	"PERIPH_BT_LC_MODULE"
.LASF106:
	.string	"PERIPH_SDMMC_MODULE"
.LASF20:
	.string	"uint32_t"
.LASF197:
	.string	"coex_bt_high_prio"
.LASF169:
	.string	"s_is_modem_sleep_en"
.LASF162:
	.string	"phy_init_magic_pre"
.LASF134:
	.string	"length"
.LASF17:
	.string	"char"
.LASF80:
	.string	"ESP_LOG_VERBOSE"
.LASF155:
	.string	"mode"
.LASF0:
	.string	"unsigned int"
.LASF70:
	.string	"ESP_RST_TASK_WDT"
.LASF145:
	.string	"is_wifi_or_bt_enabled"
.LASF41:
	.string	"params"
.LASF173:
	.string	"PHY_CAL_VERSION_KEY"
.LASF150:
	.string	"phy_exit_critical"
.LASF144:
	.string	"phy_bt_wifi_mask"
.LASF100:
	.string	"PERIPH_RMT_MODULE"
.LASF199:
	.string	"abort"
.LASF116:
	.string	"PERIPH_AES_MODULE"
.LASF7:
	.string	"__int32_t"
.LASF180:
	.string	"memcmp"
.LASF30:
	.string	"TG1WDT_SYS_RESET"
.LASF160:
	.string	"phy_init_data"
.LASF112:
	.string	"PERIPH_BT_MODULE"
.LASF27:
	.string	"DEEPSLEEP_RESET"
.LASF196:
	.string	"register_chipv7_phy"
.LASF191:
	.string	"_lock_release"
.LASF117:
	.string	"PERIPH_SHA_MODULE"
.LASF90:
	.string	"PERIPH_I2S0_MODULE"
.LASF77:
	.string	"ESP_LOG_WARN"
.LASF66:
	.string	"ESP_RST_EXT"
.LASF154:
	.string	"esp_phy_rf_init"
.LASF50:
	.string	"MODEM_CLASSIC_BT_MODULE"
.LASF147:
	.string	"status"
.LASF202:
	.string	"rtc_get_reset_reason"
.LASF92:
	.string	"PERIPH_TIMG0_MODULE"
.LASF198:
	.string	"calloc"
.LASF18:
	.string	"uint8_t"
.LASF135:
	.string	"sta_mac"
.LASF209:
	.string	"esp_phy_get_init_data"
.LASF46:
	.string	"PHY_RF_CAL_NONE"
.LASF74:
	.string	"ESP_RST_SDIO"
.LASF102:
	.string	"PERIPH_SPI_MODULE"
.LASF204:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF128:
	.string	"handle"
.LASF210:
	.string	"s_wifi_mac_time_update_cb"
.LASF101:
	.string	"PERIPH_PCNT_MODULE"
.LASF60:
	.string	"PHY_MODEM_MODULE"
.LASF58:
	.string	"PHY_BT_MODULE"
.LASF94:
	.string	"PERIPH_PWM0_MODULE"
.LASF21:
	.string	"int64_t"
.LASF159:
	.string	"esp_phy_load_cal_and_init"
.LASF208:
	.string	"esp_phy_rf_get_on_ts"
.LASF194:
	.string	"periph_module_enable"
.LASF114:
	.string	"PERIPH_BT_BASEBAND_MODULE"
.LASF148:
	.string	"esp_modem_sleep_enter"
.LASF71:
	.string	"ESP_RST_WDT"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
