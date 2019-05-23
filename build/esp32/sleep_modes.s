	.file	"sleep_modes.c"
	.text
.Ltext0:
	.section	.text.get_power_down_flags,"ax",@progbits
	.literal_position
	.literal .LC4, s_config
	.align	4
	.type	get_power_down_flags, @function
get_power_down_flags:
.LFB61:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/sleep_modes.c"
	.loc 1 640 0
	entry	sp, 32
.LCFI0:
	.loc 1 651 0
	l32r	a2, .LC4
	l32i.n	a2, a2, 4
	bnei	a2, 2, .L2
	.loc 1 654 0
	movi.n	a8, 1
	l32r	a2, .LC4
	s32i.n	a8, a2, 4
.L2:
	.loc 1 662 0
	l32r	a2, .LC4
	l32i.n	a2, a2, 8
	bnei	a2, 2, .L3
	.loc 1 663 0
	movi.n	a8, 1
	l32r	a2, .LC4
	s32i.n	a8, a2, 8
.L3:
	.loc 1 668 0
	l32r	a2, .LC4
	l32i.n	a2, a2, 0
	bnei	a2, 2, .L4
	.loc 1 669 0
	l32r	a2, .LC4
	l32i.n	a2, a2, 24
	extui	a2, a2, 0, 11
	movi.n	a8, 5
	bnone	a2, a8, .L5
	.loc 1 670 0
	movi.n	a8, 1
	l32r	a2, .LC4
	s32i.n	a8, a2, 0
	j	.L4
.L5:
	.loc 1 671 0
	movi	a8, 0x300
	bnone	a2, a8, .L4
	.loc 1 674 0
	movi.n	a8, 0
	l32r	a2, .LC4
	s32i.n	a8, a2, 0
.L4:
	.loc 1 678 0
	l32r	a2, .LC4
	l32i.n	a2, a2, 12
	bnei	a2, 2, .L6
	.loc 1 679 0
	movi.n	a8, 0
	l32r	a2, .LC4
	s32i.n	a8, a2, 12
.L6:
.LVL0:
	.loc 1 690 0
	l32r	a2, .LC4
	l32i.n	a2, a2, 8
	bnei	a2, 1, .L11
	.loc 1 689 0
	movi.n	a2, 0
	j	.L7
.L11:
	.loc 1 691 0
	movi.n	a2, 8
.L7:
.LVL1:
	.loc 1 693 0
	l32r	a8, .LC4
	l32i.n	a8, a8, 4
	beqi	a8, 1, .L8
	.loc 1 694 0
	movi.n	a8, 4
	or	a2, a2, a8
.LVL2:
.L8:
	.loc 1 696 0
	l32r	a8, .LC4
	l32i.n	a8, a8, 0
	beqi	a8, 1, .L9
	.loc 1 697 0
	movi.n	a8, 2
	or	a2, a2, a8
.LVL3:
.L9:
	.loc 1 699 0
	l32r	a8, .LC4
	l32i.n	a8, a8, 12
	beqi	a8, 1, .L10
	.loc 1 700 0
	movi.n	a8, 0x40
	or	a2, a2, a8
.LVL4:
.L10:
	.loc 1 710 0
	retw.n
.LFE61:
	.size	get_power_down_flags, .-get_power_down_flags
	.section	.rtc.text,"ax",@progbits
	.literal_position
	.literal .LC5, 1072693316
	.literal .LC6, 8192
	.literal .LC7, -8193
	.literal .LC8, 1125899907
	.align	4
	.global	esp_default_wake_deep_sleep
	.type	esp_default_wake_deep_sleep, @function
esp_default_wake_deep_sleep:
.LFB37:
	.loc 1 127 0
	entry	sp, 32
.LCFI1:
	.loc 1 129 0
	l32r	a8, .LC5
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC6
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 131 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC7
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	.loc 1 136 0
	call8	ets_get_detected_xtal_freq
.LVL5:
	l32r	a8, .LC8
	muluh	a10, a10, a8
	extui	a10, a10, 18, 14
	call8	ets_update_cpu_frequency_rom
.LVL6:
	.loc 1 139 0
	movi	a10, 0x7d0
	call8	ets_delay_us
.LVL7:
	retw.n
.LFE37:
	.size	esp_default_wake_deep_sleep, .-esp_default_wake_deep_sleep
	.weak	esp_wake_deep_sleep
	.set	esp_wake_deep_sleep,esp_default_wake_deep_sleep
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC13:
	.ascii	"\"(Cannot use READ_PER"
	.string	"I_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))"
	.align	4
.LC16:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/uart.h"
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC9, 57344
	.literal .LC10, 16372
	.literal .LC11, -1072693220
	.literal .LC12, 81916
	.literal .LC14, .LC13
	.literal .LC15, __func__$4812
	.literal .LC17, .LC16
	.literal .LC18, 268369920
	.align	4
	.type	flush_uarts, @function
flush_uarts:
.LFB39:
	.loc 1 152 0
	entry	sp, 32
.LCFI2:
.LVL8:
.LBB23:
	.loc 1 153 0
	movi.n	a12, 0
	j	.L14
.LVL9:
.L19:
	extui	a11, a12, 0, 8
.LVL10:
.L18:
.LBB24:
.LBB25:
.LBB26:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/uart.h"
	.loc 2 272 0
	l32r	a8, .LC10
	add.n	a8, a11, a8
	slli	a8, a8, 16
	bltui	a11, 2, .L20
	l32r	a9, .LC9
	j	.L15
.L20:
	movi.n	a9, 0
.L15:
	add.n	a10, a8, a9
	l32r	a9, .LC11
	add.n	a9, a10, a9
	l32r	a10, .LC12
	bltu	a10, a9, .L16
	l32r	a13, .LC14
	l32r	a12, .LC15
.LVL11:
	movi	a11, 0x110
.LVL12:
	l32r	a10, .LC17
	call8	__assert_func
.LVL13:
.L16:
	bltui	a11, 2, .L21
	l32r	a9, .LC9
	j	.L17
.L21:
	movi.n	a9, 0
.L17:
	add.n	a8, a8, a9
	memw
	l32i.n	a9, a8, 28
.LVL14:
.LBE26:
	.loc 2 274 0
	l32r	a8, .LC18
	bany	a9, a8, .L18
.LBE25:
.LBE24:
	.loc 1 153 0 discriminator 3
	addi.n	a12, a12, 1
.LVL15:
.L14:
	.loc 1 153 0 is_stmt 0 discriminator 1
	blti	a12, 3, .L19
.LBE23:
	.loc 1 156 0 is_stmt 1
	retw.n
.LFE39:
	.size	flush_uarts, .-flush_uarts
	.section	.rodata.str1.4
	.align	4
.LC23:
	.string	"\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) <= 0x3ff13FFC))"
	.align	4
.LC26:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/sleep_modes.c"
	.align	4
.LC29:
	.string	"\"(Cannot use REG_GET_FIELD for DPORT registers use DPORT_REG_GET_FIELD)\" && (!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))"
	.align	4
.LC31:
	.string	"\"(Cannot use REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))"
	.section	.iram1
	.literal_position
	.literal .LC19, 57344
	.literal .LC20, 16372
	.literal .LC21, -1072693196
	.literal .LC22, 81916
	.literal .LC24, .LC23
	.literal .LC25, __func__$6717
	.literal .LC27, .LC26
	.literal .LC28, -1072693220
	.literal .LC30, .LC29
	.literal .LC32, .LC31
	.align	4
	.type	suspend_uarts, @function
suspend_uarts:
.LFB40:
	.loc 1 159 0
	entry	sp, 32
.LCFI3:
.LVL16:
.LBB27:
	.loc 1 160 0
	movi.n	a11, 0
	j	.L23
.LVL17:
.L34:
.LBB28:
	.loc 1 161 0
	l32r	a10, .LC20
	add.n	a10, a11, a10
	slli	a10, a10, 16
	blti	a11, 2, .L35
	l32r	a8, .LC19
	j	.L24
.L35:
	movi.n	a8, 0
.L24:
	.loc 1 161 0 is_stmt 0 discriminator 4
	add.n	a9, a8, a10
	l32r	a8, .LC21
	add.n	a8, a9, a8
	l32r	a9, .LC22
	bltu	a9, a8, .L25
	.loc 1 161 0 discriminator 5
	l32r	a13, .LC24
	l32r	a12, .LC25
	movi	a11, 0xa1
.LVL18:
	l32r	a10, .LC27
	call8	__assert_func
.LVL19:
.L25:
	.loc 1 161 0 discriminator 6
	blti	a11, 2, .L36
	.loc 1 161 0
	l32r	a8, .LC19
	j	.L26
.L36:
	movi.n	a8, 0
.L26:
	.loc 1 161 0 discriminator 10
	add.n	a8, a8, a10
	blti	a11, 2, .L37
	.loc 1 161 0
	l32r	a9, .LC19
	j	.L27
.L37:
	movi.n	a9, 0
.L27:
	.loc 1 161 0 discriminator 14
	add.n	a9, a9, a10
	memw
	l32i.n	a12, a9, 52
	movi.n	a9, 8
	or	a9, a12, a9
	memw
	s32i.n	a9, a8, 52
.L33:
.LBE28:
.LBB29:
	.loc 1 162 0 is_stmt 1 discriminator 17
	blti	a11, 2, .L38
	.loc 1 162 0 is_stmt 0
	l32r	a8, .LC19
	j	.L28
.L38:
	movi.n	a8, 0
.L28:
	.loc 1 162 0 discriminator 4
	add.n	a9, a8, a10
	l32r	a8, .LC28
	add.n	a8, a9, a8
	l32r	a9, .LC22
	bltu	a9, a8, .L29
	.loc 1 162 0 discriminator 5
	l32r	a13, .LC30
	l32r	a12, .LC25
	movi	a11, 0xa2
.LVL20:
	l32r	a10, .LC27
	call8	__assert_func
.LVL21:
.L29:
.LBB30:
	.loc 1 162 0 discriminator 6
	blti	a11, 2, .L39
	.loc 1 162 0
	l32r	a8, .LC19
	j	.L30
.L39:
	movi.n	a8, 0
.L30:
	.loc 1 162 0 discriminator 10
	add.n	a9, a8, a10
	l32r	a8, .LC28
	add.n	a8, a9, a8
	l32r	a9, .LC22
	bltu	a9, a8, .L31
	.loc 1 162 0 discriminator 11
	l32r	a13, .LC32
	l32r	a12, .LC25
	movi	a11, 0xa2
.LVL22:
	l32r	a10, .LC27
	call8	__assert_func
.LVL23:
.L31:
	.loc 1 162 0 discriminator 12
	blti	a11, 2, .L40
	.loc 1 162 0
	l32r	a8, .LC19
	j	.L32
.L40:
	movi.n	a8, 0
.L32:
	.loc 1 162 0 discriminator 16
	add.n	a8, a8, a10
	memw
	l32i.n	a8, a8, 28
.LBE30:
	extui	a8, a8, 24, 4
.LBE29:
	bnez.n	a8, .L33
	.loc 1 160 0 is_stmt 1 discriminator 2
	addi.n	a11, a11, 1
.LVL24:
.L23:
	.loc 1 160 0 is_stmt 0 discriminator 1
	blti	a11, 3, .L34
.LBE27:
	.loc 1 166 0 is_stmt 1
	retw.n
.LFE40:
	.size	suspend_uarts, .-suspend_uarts
	.section	.rodata.str1.4
	.align	4
.LC41:
	.string	"\"(Cannot use REG_SET_BIT for DPORT registers use DPORT_REG_SET_BIT)\" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))"
	.align	4
.LC45:
	.string	"\"(Cannot use SET_PERI_REG_BITS for DPORT registers use DPORT_SET_PERI_REG_BITS)\" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))"
	.align	4
.LC47:
	.string	"\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((desc->reg))) >= 0x3ff00000) && (((desc->reg))) <= 0x3ff13FFC))"
	.align	4
.LC49:
	.string	"\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))"
	.section	.text.ext0_wakeup_prepare,"ax",@progbits
	.literal_position
	.literal .LC33, s_config
	.literal .LC34, 1072989372
	.literal .LC35, 134217727
	.literal .LC36, 1072988256
	.literal .LC37, -1073741825
	.literal .LC38, rtc_gpio_desc
	.literal .LC39, -1072693248
	.literal .LC40, 81916
	.literal .LC42, .LC41
	.literal .LC43, __func__$6805
	.literal .LC44, .LC26
	.literal .LC46, .LC45
	.literal .LC48, .LC47
	.literal .LC50, .LC49
	.align	4
	.type	ext0_wakeup_prepare, @function
ext0_wakeup_prepare:
.LFB53:
	.loc 1 481 0
	entry	sp, 32
.LCFI4:
	.loc 1 482 0
	l32r	a12, .LC33
	l32i.n	a11, a12, 28
	extui	a11, a11, 0, 5
.LVL25:
.LBB31:
.LBB32:
	.loc 1 484 0
	l32r	a9, .LC34
	memw
	l32i.n	a10, a9, 0
.LBE32:
	l32r	a8, .LC35
	and	a8, a10, a8
	slli	a10, a11, 27
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE31:
.LBB33:
.LBB34:
	.loc 1 486 0
	l32r	a10, .LC36
	memw
	l32i.n	a9, a10, 0
.LBE34:
	l32r	a8, .LC37
	and	a9, a9, a8
	l32i.n	a8, a12, 24
	extui	a8, a8, 30, 1
	slli	a8, a8, 30
	or	a8, a8, a9
	memw
	s32i.n	a8, a10, 0
.LVL26:
.LBE33:
.LBB35:
	.loc 1 489 0
	movi.n	a8, 0
	j	.L42
.LVL27:
.L50:
.LBB36:
	.loc 1 491 0
	addx2	a10, a8, a8
	addx4	a10, a10, a8
	slli	a9, a10, 2
	l32r	a10, .LC38
	add.n	a9, a10, a9
	l32i.n	a9, a9, 48
	bne	a11, a9, .L43
.LBB37:
	.loc 1 492 0
	addx2	a10, a8, a8
	addx4	a10, a10, a8
	slli	a9, a10, 2
	l32r	a10, .LC38
	add.n	a9, a10, a9
	l32i.n	a9, a9, 0
	l32r	a10, .LC39
	add.n	a10, a9, a10
	l32r	a11, .LC40
.LVL28:
	bltu	a11, a10, .L44
	.loc 1 492 0 is_stmt 0 discriminator 1
	l32r	a13, .LC42
	l32r	a12, .LC43
	movi	a11, 0x1ec
	l32r	a10, .LC44
	call8	__assert_func
.LVL29:
.L44:
	.loc 1 492 0 discriminator 2
	memw
	l32i.n	a13, a9, 0
	addx2	a12, a8, a8
	addx4	a12, a12, a8
	slli	a11, a12, 2
	l32r	a12, .LC38
	add.n	a11, a12, a11
	l32i.n	a11, a11, 4
	or	a11, a13, a11
	memw
	s32i.n	a11, a9, 0
.LBE37:
.LBB38:
	.loc 1 493 0 is_stmt 1 discriminator 2
	l32r	a11, .LC40
	bltu	a11, a10, .L45
	.loc 1 493 0 is_stmt 0 discriminator 1
	l32r	a13, .LC46
	l32r	a12, .LC43
	movi	a11, 0x1ed
	l32r	a10, .LC44
	call8	__assert_func
.LVL30:
.L45:
.LBB39:
	.loc 1 493 0 discriminator 2
	l32r	a11, .LC40
	bltu	a11, a10, .L46
	.loc 1 493 0 discriminator 3
	l32r	a13, .LC48
	l32r	a12, .LC43
	movi	a11, 0x1ed
	l32r	a10, .LC44
	call8	__assert_func
.LVL31:
.L46:
.LBB40:
	.loc 1 493 0 discriminator 4
	l32r	a11, .LC40
	bltu	a11, a10, .L47
	.loc 1 493 0 discriminator 5
	l32r	a13, .LC50
	l32r	a12, .LC43
	movi	a11, 0x1ed
	l32r	a10, .LC44
	call8	__assert_func
.LVL32:
.L47:
	.loc 1 493 0 discriminator 6
	memw
	l32i.n	a14, a9, 0
.LBE40:
	addx2	a13, a8, a8
	addx4	a13, a13, a8
	slli	a12, a13, 2
	l32r	a11, .LC38
	add.n	a12, a11, a12
	l32i.n	a11, a12, 8
	movi.n	a12, 3
	ssl	a11
	sll	a12, a12
	movi.n	a11, -1
	xor	a11, a11, a12
	and	a11, a11, a14
	memw
	s32i.n	a11, a9, 0
.LBE39:
.LBE38:
.LBB41:
	.loc 1 494 0 is_stmt 1 discriminator 6
	l32r	a11, .LC40
	bltu	a11, a10, .L48
	.loc 1 494 0 is_stmt 0 discriminator 1
	l32r	a13, .LC42
	l32r	a12, .LC43
	movi	a11, 0x1ee
	l32r	a10, .LC44
	call8	__assert_func
.LVL33:
.L48:
	.loc 1 494 0 discriminator 2
	memw
	l32i.n	a11, a9, 0
	addx2	a10, a8, a8
	addx4	a8, a10, a8
.LVL34:
	slli	a10, a8, 2
	l32r	a8, .LC38
	add.n	a10, a8, a10
	l32i.n	a8, a10, 12
	or	a8, a11, a8
	memw
	s32i.n	a8, a9, 0
.LBE41:
	.loc 1 495 0 is_stmt 1 discriminator 2
	retw.n
.LVL35:
.L43:
.LBE36:
	.loc 1 489 0 discriminator 2
	addi.n	a8, a8, 1
.LVL36:
.L42:
	.loc 1 489 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x27
	bgeu	a9, a8, .L50
	retw.n
.LBE35:
.LFE53:
	.size	ext0_wakeup_prepare, .-ext0_wakeup_prepare
	.section	.rodata.str1.4
	.align	4
.LC62:
	.string	"\"(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)\" && (!((((desc->reg)) >= 0x3ff00000) && ((desc->reg)) <= 0x3ff13FFC))"
	.section	.text.ext1_wakeup_prepare,"ax",@progbits
	.literal_position
	.literal .LC51, s_config
	.literal .LC52, 262143
	.literal .LC53, rtc_gpio_desc
	.literal .LC54, -1072693248
	.literal .LC55, 81916
	.literal .LC56, .LC41
	.literal .LC57, __func__$6839
	.literal .LC58, .LC26
	.literal .LC59, .LC45
	.literal .LC60, .LC47
	.literal .LC61, .LC49
	.literal .LC63, .LC62
	.literal .LC64, 1072988360
	.literal .LC65, 1072988364
	.literal .LC66, 262144
	.literal .LC67, -262144
	.literal .LC68, 1072988256
	.literal .LC69, 2147483647
	.align	4
	.type	ext1_wakeup_prepare, @function
ext1_wakeup_prepare:
.LFB55:
	.loc 1 524 0 is_stmt 1
	entry	sp, 32
.LCFI5:
	.loc 1 526 0
	l32r	a2, .LC51
	l32i.n	a2, a2, 24
	srli	a2, a2, 12
	l32r	a11, .LC52
	and	a11, a2, a11
.LVL37:
.LBB42:
	.loc 1 527 0
	movi.n	a8, 0
	j	.L52
.LVL38:
.L63:
.LBB43:
	.loc 1 528 0
	addx2	a10, a8, a8
	addx4	a10, a10, a8
	slli	a9, a10, 2
	l32r	a10, .LC53
	add.n	a9, a10, a9
	l32i.n	a14, a9, 48
.LVL39:
	.loc 1 529 0
	bbc	a11, a14, .L53
.LVL40:
.LBB44:
	.loc 1 534 0
	addx2	a9, a8, a8
	addx4	a9, a9, a8
	slli	a10, a9, 2
	l32r	a2, .LC53
	add.n	a10, a2, a10
	l32i.n	a9, a10, 0
	l32r	a10, .LC54
	add.n	a10, a9, a10
	l32r	a2, .LC55
	bltu	a2, a10, .L54
	.loc 1 534 0 is_stmt 0 discriminator 1
	l32r	a13, .LC56
	l32r	a12, .LC57
	movi	a11, 0x216
.LVL41:
	l32r	a10, .LC58
	call8	__assert_func
.LVL42:
.L54:
	.loc 1 534 0 discriminator 2
	memw
	l32i.n	a15, a9, 0
	addx2	a13, a8, a8
	addx4	a13, a13, a8
	slli	a12, a13, 2
	l32r	a2, .LC53
	add.n	a12, a2, a12
	l32i.n	a2, a12, 4
	or	a2, a15, a2
	memw
	s32i.n	a2, a9, 0
.LBE44:
.LBB45:
	.loc 1 535 0 is_stmt 1 discriminator 2
	l32r	a2, .LC55
	bltu	a2, a10, .L55
	.loc 1 535 0 is_stmt 0 discriminator 1
	l32r	a13, .LC59
	l32r	a12, .LC57
	movi	a11, 0x217
.LVL43:
	l32r	a10, .LC58
	call8	__assert_func
.LVL44:
.L55:
.LBB46:
	.loc 1 535 0 discriminator 2
	l32r	a2, .LC55
	bltu	a2, a10, .L56
	.loc 1 535 0 discriminator 3
	l32r	a13, .LC60
	l32r	a12, .LC57
	movi	a11, 0x217
.LVL45:
	l32r	a10, .LC58
	call8	__assert_func
.LVL46:
.L56:
.LBB47:
	.loc 1 535 0 discriminator 4
	l32r	a2, .LC55
	bltu	a2, a10, .L57
	.loc 1 535 0 discriminator 5
	l32r	a13, .LC61
	l32r	a12, .LC57
	movi	a11, 0x217
.LVL47:
	l32r	a10, .LC58
	call8	__assert_func
.LVL48:
.L57:
	.loc 1 535 0 discriminator 6
	memw
	l32i.n	a2, a9, 0
.LBE47:
	addx2	a15, a8, a8
	addx4	a15, a15, a8
	slli	a13, a15, 2
	l32r	a12, .LC53
	add.n	a13, a12, a13
	l32i.n	a12, a13, 8
	movi.n	a13, 3
	ssl	a12
	sll	a13, a13
	movi.n	a12, -1
	xor	a12, a12, a13
	and	a12, a12, a2
	memw
	s32i.n	a12, a9, 0
.LBE46:
.LBE45:
.LBB48:
	.loc 1 537 0 is_stmt 1 discriminator 6
	l32r	a2, .LC55
	bltu	a2, a10, .L58
	.loc 1 537 0 is_stmt 0 discriminator 1
	l32r	a13, .LC56
	l32r	a12, .LC57
	movi	a11, 0x219
.LVL49:
	l32r	a10, .LC58
	call8	__assert_func
.LVL50:
.L58:
	.loc 1 537 0 discriminator 2
	memw
	l32i.n	a2, a9, 0
	addx2	a13, a8, a8
	addx4	a13, a13, a8
	slli	a12, a13, 2
	l32r	a13, .LC53
	add.n	a12, a13, a12
	l32i.n	a12, a12, 12
	or	a12, a2, a12
	memw
	s32i.n	a12, a9, 0
.LBE48:
	.loc 1 539 0 is_stmt 1 discriminator 2
	l32r	a2, .LC51
	l32i.n	a2, a2, 0
	beqi	a2, 1, .L59
.LBB49:
	.loc 1 543 0
	l32r	a2, .LC55
	bltu	a2, a10, .L60
	.loc 1 543 0 is_stmt 0 discriminator 1
	l32r	a13, .LC63
	l32r	a12, .LC57
	movi	a11, 0x21f
.LVL51:
	l32r	a10, .LC58
	call8	__assert_func
.LVL52:
.L60:
	.loc 1 543 0 discriminator 2
	memw
	l32i.n	a15, a9, 0
	addx2	a13, a8, a8
	addx4	a13, a13, a8
	slli	a2, a13, 2
	l32r	a12, .LC53
	add.n	a2, a12, a2
	l32i.n	a13, a2, 20
	movi.n	a12, -1
	xor	a12, a12, a13
	and	a12, a15, a12
	memw
	s32i.n	a12, a9, 0
.LBE49:
.LBB50:
	.loc 1 544 0 is_stmt 1 discriminator 2
	l32r	a2, .LC55
	bltu	a2, a10, .L61
	.loc 1 544 0 is_stmt 0 discriminator 1
	l32r	a13, .LC63
	l32r	a12, .LC57
	movi	a11, 0x220
.LVL53:
	l32r	a10, .LC58
	call8	__assert_func
.LVL54:
.L61:
	.loc 1 544 0 discriminator 2
	memw
	l32i.n	a2, a9, 0
	addx2	a10, a8, a8
	slli	a10, a10, 2
	add.n	a10, a10, a8
	slli	a12, a10, 2
	l32r	a10, .LC53
	add.n	a10, a10, a12
	l32i.n	a13, a10, 16
	movi.n	a12, -1
	xor	a12, a12, a13
	and	a12, a2, a12
	memw
	s32i.n	a12, a9, 0
.LBE50:
.LBB51:
	.loc 1 545 0 is_stmt 1 discriminator 2
	l32r	a9, .LC64
	memw
	l32i.n	a12, a9, 0
	l32i.n	a2, a10, 36
	or	a2, a12, a2
	memw
	s32i.n	a2, a9, 0
.L59:
.LBE51:
	.loc 1 548 0
	movi.n	a9, 1
	ssl	a14
	sll	a9, a9
	movi.n	a2, -1
	xor	a9, a2, a9
	and	a11, a11, a9
.LVL55:
.L53:
.LBE43:
	.loc 1 527 0 discriminator 2
	addi.n	a8, a8, 1
.LVL56:
.L52:
	.loc 1 527 0 is_stmt 0 discriminator 1
	movi.n	a10, 1
	movi.n	a9, 0x27
	bge	a9, a8, .L62
	movi.n	a10, 0
.L62:
	movi.n	a12, 0
	movi.n	a9, 1
	moveqz	a9, a12, a11
	bany	a9, a10, .L63
.LBE42:
.LBB52:
	.loc 1 551 0 is_stmt 1
	l32r	a9, .LC65
	memw
	l32i.n	a8, a9, 0
.LVL57:
	l32r	a2, .LC66
	or	a2, a8, a2
	memw
	s32i.n	a2, a9, 0
.LBE52:
.LBB53:
.LBB54:
	.loc 1 553 0
	memw
	l32i.n	a8, a9, 0
.LBE54:
	l32r	a2, .LC67
	and	a8, a8, a2
	l32r	a2, .LC51
	l32i.n	a2, a2, 24
	srli	a10, a2, 12
	l32r	a11, .LC52
.LVL58:
	and	a10, a10, a11
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE53:
.LBB55:
.LBB56:
	.loc 1 555 0
	l32r	a9, .LC68
	memw
	l32i.n	a10, a9, 0
.LBE56:
	l32r	a8, .LC69
	and	a8, a10, a8
	extui	a2, a2, 11, 1
	slli	a2, a2, 31
	or	a2, a2, a8
	memw
	s32i.n	a2, a9, 0
	retw.n
.LBE55:
.LFE55:
	.size	ext1_wakeup_prepare, .-ext1_wakeup_prepare
	.section	.rodata.str1.4
	.align	4
.LC74:
	.string	"\"(Cannot use REG_CLR_BIT for DPORT registers use DPORT_REG_CLR_BIT)\" && (!((((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) >= 0x3ff00000) && ((((0x3ff40000 + (i) * 0x10000 + ( (i) > 1 ? 0xe000 : 0 ) ) + 0x34))) <= 0x3ff13FFC))"
	.section	.iram1
	.literal_position
	.literal .LC70, 57344
	.literal .LC71, 16372
	.literal .LC72, -1072693196
	.literal .LC73, 81916
	.literal .LC75, .LC74
	.literal .LC76, __func__$6730
	.literal .LC77, .LC26
	.literal .LC78, .LC23
	.align	4
	.type	resume_uarts, @function
resume_uarts:
.LFB41:
	.loc 1 169 0
	entry	sp, 32
.LCFI6:
.LVL59:
.LBB57:
	.loc 1 170 0
	movi.n	a10, 0
	j	.L65
.LVL60:
.L78:
.LBB58:
	.loc 1 171 0
	l32r	a8, .LC71
	add.n	a8, a10, a8
	slli	a8, a8, 16
	blti	a10, 2, .L79
	l32r	a9, .LC70
	j	.L66
.L79:
	movi.n	a9, 0
.L66:
	.loc 1 171 0 is_stmt 0 discriminator 4
	add.n	a11, a9, a8
	l32r	a9, .LC72
	add.n	a9, a11, a9
	l32r	a11, .LC73
	bltu	a11, a9, .L67
	.loc 1 171 0 discriminator 5
	l32r	a13, .LC75
	l32r	a12, .LC76
	movi	a11, 0xab
	l32r	a10, .LC77
.LVL61:
	call8	__assert_func
.LVL62:
.L67:
	.loc 1 171 0 discriminator 6
	blti	a10, 2, .L80
	.loc 1 171 0
	l32r	a11, .LC70
	j	.L68
.L80:
	movi.n	a11, 0
.L68:
	.loc 1 171 0 discriminator 10
	add.n	a11, a11, a8
	blti	a10, 2, .L81
	.loc 1 171 0
	l32r	a9, .LC70
	j	.L69
.L81:
	movi.n	a9, 0
.L69:
	.loc 1 171 0 discriminator 14
	add.n	a9, a9, a8
	memw
	l32i.n	a12, a9, 52
	movi.n	a9, -9
	and	a9, a12, a9
	memw
	s32i.n	a9, a11, 52
.LBE58:
.LBB59:
	.loc 1 172 0 is_stmt 1 discriminator 14
	blti	a10, 2, .L82
	.loc 1 172 0 is_stmt 0
	l32r	a9, .LC70
	j	.L70
.L82:
	movi.n	a9, 0
.L70:
	.loc 1 172 0 discriminator 4
	add.n	a11, a9, a8
	l32r	a9, .LC72
	add.n	a9, a11, a9
	l32r	a11, .LC73
	bltu	a11, a9, .L71
	.loc 1 172 0 discriminator 5
	l32r	a13, .LC78
	l32r	a12, .LC76
	movi	a11, 0xac
	l32r	a10, .LC77
.LVL63:
	call8	__assert_func
.LVL64:
.L71:
	.loc 1 172 0 discriminator 6
	blti	a10, 2, .L83
	.loc 1 172 0
	l32r	a11, .LC70
	j	.L72
.L83:
	movi.n	a11, 0
.L72:
	.loc 1 172 0 discriminator 10
	add.n	a11, a11, a8
	blti	a10, 2, .L84
	.loc 1 172 0
	l32r	a9, .LC70
	j	.L73
.L84:
	movi.n	a9, 0
.L73:
	.loc 1 172 0 discriminator 14
	add.n	a9, a9, a8
	memw
	l32i.n	a12, a9, 52
	movi.n	a9, 4
	or	a9, a12, a9
	memw
	s32i.n	a9, a11, 52
.LBE59:
.LBB60:
	.loc 1 173 0 is_stmt 1 discriminator 14
	blti	a10, 2, .L85
	.loc 1 173 0 is_stmt 0
	l32r	a9, .LC70
	j	.L74
.L85:
	movi.n	a9, 0
.L74:
	.loc 1 173 0 discriminator 4
	add.n	a11, a9, a8
	l32r	a9, .LC72
	add.n	a9, a11, a9
	l32r	a11, .LC73
	bltu	a11, a9, .L75
	.loc 1 173 0 discriminator 5
	l32r	a13, .LC75
	l32r	a12, .LC76
	movi	a11, 0xad
	l32r	a10, .LC77
.LVL65:
	call8	__assert_func
.LVL66:
.L75:
	.loc 1 173 0 discriminator 6
	blti	a10, 2, .L86
	.loc 1 173 0
	l32r	a9, .LC70
	j	.L76
.L86:
	movi.n	a9, 0
.L76:
	.loc 1 173 0 discriminator 10
	add.n	a9, a9, a8
	blti	a10, 2, .L87
	.loc 1 173 0
	l32r	a11, .LC70
	j	.L77
.L87:
	movi.n	a11, 0
.L77:
	.loc 1 173 0 discriminator 14
	add.n	a8, a11, a8
	memw
	l32i.n	a11, a8, 52
	movi.n	a8, -5
	and	a8, a11, a8
	memw
	s32i.n	a8, a9, 52
.LBE60:
	.loc 1 170 0 is_stmt 1 discriminator 14
	addi.n	a10, a10, 1
.LVL67:
.L65:
	.loc 1 170 0 is_stmt 0 discriminator 2
	blti	a10, 3, .L78
.LBE57:
	.loc 1 175 0 is_stmt 1
	retw.n
.LFE41:
	.size	resume_uarts, .-resume_uarts
	.section	.text.timer_wakeup_prepare,"ax",@progbits
	.literal_position
	.literal .LC80, s_config
	.align	4
	.type	timer_wakeup_prepare, @function
timer_wakeup_prepare:
.LFB49:
	.loc 1 427 0
	entry	sp, 32
.LCFI7:
	.loc 1 428 0
	call8	esp_clk_slowclk_cal_get
.LVL68:
	.loc 1 429 0
	l32r	a9, .LC80
	l32i.n	a8, a9, 16
	l32i.n	a12, a9, 20
	mov.n	a11, a8
	l32i.n	a9, a9, 32
	sub	a8, a8, a9
	movi.n	a13, 1
	bltu	a11, a8, .L89
	movi.n	a13, 0
.L89:
	mov.n	a9, a8
	sub	a11, a12, a13
.LVL69:
	.loc 1 430 0
	bgez	a11, .L90
.LVL70:
	.loc 1 431 0
	movi.n	a9, 0
	mov.n	a11, a9
.LVL71:
.L90:
	.loc 1 433 0
	mov.n	a12, a10
	mov.n	a10, a9
.LVL72:
	call8	rtc_time_us_to_slowclk
.LVL73:
	.loc 1 435 0
	l32r	a8, .LC80
	l32i.n	a9, a8, 40
	l32i.n	a12, a8, 44
	add.n	a9, a10, a9
	movi.n	a8, 1
	bltu	a9, a10, .L92
	movi.n	a8, 0
.L92:
	add.n	a10, a11, a12
.LVL74:
	add.n	a11, a8, a10
	mov.n	a10, a9
	call8	rtc_sleep_set_wakeup_time
.LVL75:
	retw.n
.LFE49:
	.size	timer_wakeup_prepare, .-timer_wakeup_prepare
	.section	.iram1
	.literal_position
	.literal .LC81, s_config
	.literal .LC82, 1072988184
	.literal .LC83, 2097152
	.literal .LC85, 4096
	.literal .LC86, -57345
	.literal .LC87, -458753
	.literal .LC88, 262144
	.literal .LC89, -3670017
	.literal .LC90, 4194304
	.literal .LC91, -8388609
	.literal .LC92, -16777217
	.align	4
	.type	esp_sleep_start, @function
esp_sleep_start:
.LFB42:
	.loc 1 178 0
.LVL76:
	entry	sp, 48
.LCFI8:
	.loc 1 182 0
	extui	a4, a2, 0, 1
	beqz.n	a4, .L95
	.loc 1 183 0
	call8	flush_uarts
.LVL77:
	j	.L96
.L95:
	.loc 1 185 0
	call8	suspend_uarts
.LVL78:
.L96:
	.loc 1 190 0
	mov.n	a10, sp
	call8	rtc_clk_cpu_freq_get_config
.LVL79:
	.loc 1 191 0
	call8	rtc_clk_cpu_freq_set_xtal
.LVL80:
	.loc 1 194 0
	l32r	a3, .LC81
	l32i.n	a3, a3, 24
	bbci	a3, 0, .L97
	.loc 1 195 0
	call8	ext0_wakeup_prepare
.LVL81:
.L97:
	.loc 1 197 0
	l32r	a3, .LC81
	l32i.n	a3, a3, 24
	bbci	a3, 1, .L98
	.loc 1 198 0
	call8	ext1_wakeup_prepare
.LVL82:
.L98:
	.loc 1 201 0
	l32r	a3, .LC81
	l32i.n	a3, a3, 24
	bbci	a3, 9, .L99
.LBB61:
.LBB62:
	.loc 1 202 0
	l32r	a8, .LC82
	memw
	l32i.n	a9, a8, 0
.LBE62:
	l32r	a3, .LC83
	or	a3, a9, a3
	memw
	s32i.n	a3, a8, 0
.L99:
.LBE61:
	.loc 1 206 0
	movi.n	a8, 0x10
	and	a8, a2, a8
	movi.n	a13, 1
	movi.n	a12, 0
	mov.n	a3, a12
	movnez	a3, a13, a8
	mov.n	a8, a3
	movi.n	a3, 8
	and	a9, a2, a3
	slli	a8, a8, 2
	movi.n	a11, 4
	and	a11, a2, a11
	mov.n	a5, a12
	movnez	a5, a13, a11
	slli	a11, a5, 4
	or	a8, a8, a9
	movi.n	a9, 2
	and	a9, a2, a9
	mov.n	a5, a12
	movnez	a5, a13, a9
	slli	a9, a5, 5
	or	a8, a8, a11
	ssl	a3
	sll	a4, a4
	or	a8, a8, a9
	or	a8, a8, a4
	l32r	a10, .LC85
	or	a8, a8, a10
.LVL83:
	l32r	a4, .LC86
.LVL84:
	and	a8, a8, a4
.LVL85:
	l32r	a10, .LC87
.LVL86:
	and	a8, a8, a10
.LVL87:
	l32r	a10, .LC88
	or	a8, a8, a10
	l32r	a4, .LC89
.LVL88:
	and	a8, a8, a4
.LVL89:
	l32r	a4, .LC90
.LVL90:
	or	a8, a8, a4
.LVL91:
	movi.n	a4, 0x20
	and	a4, a2, a4
	mov.n	a5, a12
	movnez	a5, a13, a4
	slli	a4, a5, 23
	l32r	a10, .LC91
.LVL92:
	and	a8, a8, a10
.LVL93:
	or	a8, a8, a4
	movi.n	a10, 0x40
	and	a2, a2, a10
.LVL94:
	moveqz	a12, a13, a2
	slli	a12, a12, 24
	l32r	a10, .LC92
.LVL95:
	and	a10, a8, a10
	.loc 1 207 0
	or	a10, a10, a12
	call8	rtc_sleep_init
.LVL96:
	.loc 1 210 0
	l32r	a2, .LC81
	l32i.n	a2, a2, 24
	bnone	a2, a3, .L100
	.loc 1 211 0 discriminator 1
	l32r	a3, .LC81
	l32i.n	a4, a3, 16
	l32i.n	a2, a3, 20
	.loc 1 210 0 discriminator 1
	or	a2, a4, a2
	beqz.n	a2, .L100
	.loc 1 212 0 discriminator 1
	call8	timer_wakeup_prepare
.LVL97:
.L100:
	.loc 1 214 0
	l32r	a2, .LC81
	l32i.n	a10, a2, 24
	movi.n	a11, 0
	extui	a10, a10, 0, 11
	call8	rtc_sleep_start
.LVL98:
	mov.n	a2, a10
.LVL99:
	.loc 1 217 0
	mov.n	a10, sp
	call8	rtc_clk_cpu_freq_set_config
.LVL100:
	.loc 1 220 0
	call8	resume_uarts
.LVL101:
	.loc 1 223 0
	retw.n
.LFE42:
	.size	esp_sleep_start, .-esp_sleep_start
	.align	4
	.type	esp_light_sleep_inner, @function
esp_light_sleep_inner:
.LFB44:
	.loc 1 262 0
.LVL102:
	entry	sp, 32
.LCFI9:
	.loc 1 264 0
	mov.n	a10, a2
	call8	esp_sleep_start
.LVL103:
	mov.n	a5, a10
.LVL104:
	.loc 1 268 0
	bbci	a4, 0, .L103
	.loc 1 269 0
	mov.n	a10, a4
	call8	rtc_vddsdio_set_config
.LVL105:
.L103:
	.loc 1 273 0
	bbci	a2, 5, .L104
	.loc 1 275 0
	mov.n	a10, a3
	call8	ets_delay_us
.LVL106:
.L104:
	.loc 1 278 0
	mov.n	a2, a5
.LVL107:
	retw.n
.LFE44:
	.size	esp_light_sleep_inner, .-esp_light_sleep_inner
	.section	.text.esp_get_deep_sleep_wake_stub,"ax",@progbits
	.literal_position
	.literal .LC93, lock_rtc_memory_crc
	.literal .LC94, 1072988348
	.literal .LC95, 1072988344
	.literal .LC96, -1074593792
	.literal .LC97, 3342335
	.literal .LC98, -1074266112
	.literal .LC99, 131071
	.literal .LC100, -1074528256
	.literal .LC101, 8191
	.align	4
	.global	esp_get_deep_sleep_wake_stub
	.type	esp_get_deep_sleep_wake_stub, @function
esp_get_deep_sleep_wake_stub:
.LFB35:
	.loc 1 101 0
	entry	sp, 32
.LCFI10:
	.loc 1 102 0
	l32r	a4, .LC93
	mov.n	a10, a4
	call8	_lock_acquire
.LVL108:
.LBB63:
	.loc 1 103 0
	l32r	a2, .LC94
	memw
	l32i.n	a3, a2, 0
.LVL109:
.LBE63:
	.loc 1 104 0
	call8	set_rtc_memory_crc
.LVL110:
.LBB64:
	.loc 1 105 0
	memw
	l32i.n	a5, a2, 0
.LVL111:
.LBE64:
.LBB65:
	.loc 1 106 0
	memw
	s32i.n	a3, a2, 0
.LBE65:
	.loc 1 107 0
	mov.n	a10, a4
	call8	_lock_release
.LVL112:
	.loc 1 109 0
	bne	a3, a5, .L110
.LBB66:
	.loc 1 112 0
	l32r	a2, .LC95
	memw
	l32i.n	a2, a2, 0
.LVL113:
.LBE66:
.LBB67:
.LBB68:
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/soc_memory_layout.h"
	.loc 3 150 0
	l32r	a9, .LC96
	add.n	a9, a2, a9
	movi.n	a8, 1
	l32r	a3, .LC97
.LVL114:
	bgeu	a3, a9, .L107
	movi.n	a8, 0
.L107:
	extui	a9, a8, 0, 8
	.loc 3 151 0
	l32r	a10, .LC98
	add.n	a10, a2, a10
	movi.n	a8, 1
	l32r	a3, .LC99
	bgeu	a3, a10, .L108
	movi.n	a8, 0
.L108:
	extui	a8, a8, 0, 8
	or	a8, a9, a8
	.loc 3 152 0
	bnez.n	a8, .L111
	l32r	a3, .LC100
	add.n	a3, a2, a3
	l32r	a4, .LC101
	bltu	a4, a3, .L112
	movi.n	a3, 1
	j	.L109
.L111:
	movi.n	a3, 1
	j	.L109
.L112:
	movi.n	a3, 0
.L109:
.LBE68:
.LBE67:
	.loc 1 113 0
	bnez.n	a3, .L106
	.loc 1 114 0
	movi.n	a2, 0
.LVL115:
	retw.n
.LVL116:
.L110:
	.loc 1 110 0
	movi.n	a2, 0
.LVL117:
.L106:
	.loc 1 117 0
	retw.n
.LFE35:
	.size	esp_get_deep_sleep_wake_stub, .-esp_get_deep_sleep_wake_stub
	.section	.text.esp_set_deep_sleep_wake_stub,"ax",@progbits
	.literal_position
	.literal .LC102, lock_rtc_memory_crc
	.literal .LC103, 1072988344
	.align	4
	.global	esp_set_deep_sleep_wake_stub
	.type	esp_set_deep_sleep_wake_stub, @function
esp_set_deep_sleep_wake_stub:
.LFB36:
	.loc 1 120 0
.LVL118:
	entry	sp, 32
.LCFI11:
	.loc 1 121 0
	l32r	a3, .LC102
	mov.n	a10, a3
	call8	_lock_acquire
.LVL119:
.LBB69:
	.loc 1 122 0
	l32r	a8, .LC103
	memw
	s32i.n	a2, a8, 0
.LBE69:
	.loc 1 123 0
	call8	set_rtc_memory_crc
.LVL120:
	.loc 1 124 0
	mov.n	a10, a3
	call8	_lock_release
.LVL121:
	retw.n
.LFE36:
	.size	esp_set_deep_sleep_wake_stub, .-esp_set_deep_sleep_wake_stub
	.section	.iram1
	.literal_position
	.literal .LC104, s_config
	.literal .LC105, esp_wake_deep_sleep
	.align	4
	.global	esp_deep_sleep_start
	.type	esp_deep_sleep_start, @function
esp_deep_sleep_start:
.LFB43:
	.loc 1 226 0
	entry	sp, 32
.LCFI12:
	.loc 1 228 0
	call8	rtc_time_get
.LVL122:
	l32r	a8, .LC104
	s32i.n	a10, a8, 40
	s32i.n	a11, a8, 44
	.loc 1 229 0
	call8	esp_sync_counters_rtc_and_frc
.LVL123:
	.loc 1 231 0
	call8	esp_get_deep_sleep_wake_stub
.LVL124:
	bnez.n	a10, .L116
	.loc 1 232 0
	l32r	a10, .LC105
	call8	esp_set_deep_sleep_wake_stub
.LVL125:
.L116:
	.loc 1 236 0
	call8	get_power_down_flags
.LVL126:
	.loc 1 239 0
	movi	a9, 0x190
	l32r	a8, .LC104
	s32i.n	a9, a8, 32
	.loc 1 242 0
	movi	a8, 0x61
	or	a10, a10, a8
.LVL127:
	call8	esp_sleep_start
.LVL128:
.L117:
	j	.L117
.LFE43:
	.size	esp_deep_sleep_start, .-esp_deep_sleep_start
	.section	.text.esp_light_sleep_start,"ax",@progbits
	.literal_position
	.literal .LC106, light_sleep_lock$6763
	.literal .LC107, s_config
	.literal .LC108, 3195
	.literal .LC109, 2995
	.literal .LC110, 2700
	.literal .LC111, s_light_sleep_wakeup
	.align	4
	.global	esp_light_sleep_start
	.type	esp_light_sleep_start, @function
esp_light_sleep_start:
.LFB45:
	.loc 1 281 0
	entry	sp, 48
.LCFI13:
	.loc 1 283 0
	l32r	a10, .LC106
	call8	vTaskEnterCritical
.LVL129:
	.loc 1 288 0
	call8	esp_timer_impl_lock
.LVL130:
	.loc 1 289 0
	call8	rtc_time_get
.LVL131:
	l32r	a2, .LC107
	s32i.n	a10, a2, 40
	s32i.n	a11, a2, 44
	.loc 1 290 0
	call8	esp_timer_get_time
.LVL132:
	mov.n	a7, a10
	s32i.n	a11, sp, 8
.LVL133:
	.loc 1 291 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL134:
	.loc 1 294 0
	call8	get_power_down_flags
.LVL135:
	mov.n	a3, a10
.LVL136:
	.loc 1 298 0
	movi	a4, 0x127
	s32i.n	a4, a2, 32
.LVL137:
	.loc 1 309 0
	l32i.n	a4, a2, 16
	l32i.n	a2, a2, 20
	bnez.n	a2, .L128
	bnez.n	a2, .L119
	l32r	a2, .LC108
	bgeu	a2, a4, .L119
.L128:
	.loc 1 310 0
	movi.n	a2, 0x20
	or	a3, a3, a2
.LVL138:
	.loc 1 311 0
	l32r	a4, .LC109
	l32r	a2, .LC107
	s32i.n	a4, a2, 32
.L119:
	.loc 1 315 0
	call8	rtc_vddsdio_get_config
.LVL139:
	mov.n	a2, a10
.LVL140:
	.loc 1 318 0
	call8	rtc_wdt_is_on
.LVL141:
	mov.n	a5, a10
.LVL142:
	.loc 1 319 0
	bnez.n	a10, .L121
	.loc 1 320 0
	call8	rtc_wdt_protect_off
.LVL143:
	.loc 1 321 0
	call8	rtc_wdt_disable
.LVL144:
	.loc 1 322 0
	movi.n	a11, 7
	movi.n	a10, 0
	call8	rtc_wdt_set_length_of_reset_signal
.LVL145:
	.loc 1 323 0
	movi.n	a11, 7
	movi.n	a10, 1
	call8	rtc_wdt_set_length_of_reset_signal
.LVL146:
	.loc 1 324 0
	movi.n	a11, 4
	movi.n	a10, 0
	call8	rtc_wdt_set_stage
.LVL147:
	.loc 1 325 0
	movi	a11, 0x3e8
	movi.n	a10, 0
	call8	rtc_wdt_set_time
.LVL148:
	.loc 1 326 0
	call8	rtc_wdt_enable
.LVL149:
	.loc 1 327 0
	call8	rtc_wdt_protect_on
.LVL150:
.L121:
	.loc 1 331 0
	mov.n	a12, a2
	l32r	a11, .LC110
	mov.n	a10, a3
	call8	esp_light_sleep_inner
.LVL151:
	s32i.n	a10, sp, 0
.LVL152:
	.loc 1 334 0
	movi.n	a3, 1
.LVL153:
	l32r	a2, .LC111
.LVL154:
	s8i	a3, a2, 0
	.loc 1 337 0
	call8	rtc_time_get
.LVL155:
	mov.n	a6, a10
	mov.n	a4, a11
.LVL156:
	.loc 1 338 0
	call8	esp_timer_get_time
.LVL157:
	mov.n	a2, a10
	s32i.n	a11, sp, 12
	s32i.n	a10, sp, 4
.LVL158:
	.loc 1 340 0
	l32r	a8, .LC107
	l32i.n	a3, a8, 40
	l32i.n	a9, a8, 44
	sub	a3, a6, a3
	movi.n	a8, 1
	bltu	a6, a3, .L122
	movi.n	a8, 0
.L122:
	sub	a4, a4, a9
.LVL159:
	sub	a6, a4, a8
	call8	esp_clk_slowclk_cal_get
.LVL160:
	mov.n	a12, a10
	mov.n	a10, a3
	mov.n	a11, a6
	call8	rtc_time_slowclk_to_us
.LVL161:
	.loc 1 342 0
	sub	a2, a2, a7
.LVL162:
	movi.n	a4, 1
	l32i.n	a3, sp, 4
	bltu	a3, a2, .L123
	movi.n	a4, 0
.L123:
	l32i.n	a6, sp, 12
	l32i.n	a8, sp, 8
	sub	a3, a6, a8
	sub	a4, a3, a4
.LVL163:
	.loc 1 344 0
	sub	a2, a10, a2
.LVL164:
	movi.n	a3, 1
	bltu	a10, a2, .L124
	movi.n	a3, 0
.L124:
	sub	a4, a11, a4
.LVL165:
	sub	a11, a4, a3
.LVL166:
	mov.n	a4, a2
	mov.n	a3, a11
.LVL167:
	.loc 1 349 0
	bgei	a11, 1, .L129
.LVL168:
	bnez.n	a11, .L125
	beqz.n	a2, .L125
.L129:
	.loc 1 350 0
	mov.n	a10, a2
	call8	esp_timer_impl_advance
.LVL169:
.L125:
	.loc 1 352 0
	call8	esp_set_time_from_rtc
.LVL170:
	.loc 1 354 0
	call8	esp_timer_impl_unlock
.LVL171:
	.loc 1 355 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL172:
	.loc 1 356 0
	bnez.n	a5, .L127
	.loc 1 357 0
	call8	rtc_wdt_disable
.LVL173:
.L127:
	.loc 1 359 0
	l32r	a10, .LC106
	call8	vTaskExitCritical
.LVL174:
	.loc 1 361 0
	l32i.n	a2, sp, 0
.LVL175:
	retw.n
.LFE45:
	.size	esp_light_sleep_start, .-esp_light_sleep_start
	.section	.rodata.str1.4
	.align	4
.LC117:
	.string	"sleep"
	.align	4
.LC119:
	.string	"\033[0;31mE (%d) %s: Incorrect wakeup source (%d) to disable.\033[0m\n"
	.section	.text.esp_sleep_disable_wakeup_source,"ax",@progbits
	.literal_position
	.literal .LC112, s_config
	.literal .LC113, 0, 0
	.literal .LC114, -1073741825
	.literal .LC115, -1073737729
	.literal .LC116, -2049
	.literal .LC118, .LC117
	.literal .LC120, .LC119
	.align	4
	.global	esp_sleep_disable_wakeup_source
	.type	esp_sleep_disable_wakeup_source, @function
esp_sleep_disable_wakeup_source:
.LFB46:
	.loc 1 366 0
.LVL176:
	entry	sp, 32
.LCFI14:
	.loc 1 370 0
	bnei	a2, 1, .L131
	.loc 1 371 0
	l32r	a8, .LC112
	l32i.n	a9, a8, 24
	movi	a2, -0x800
.LVL177:
	and	a2, a9, a2
	s32i.n	a2, a8, 24
	.loc 1 399 0
	movi.n	a2, 0
	retw.n
.LVL178:
.L131:
	.loc 1 372 0
	l32r	a8, .LC112
	l32i.n	a8, a8, 24
	extui	a8, a8, 0, 11
	bbci	a8, 3, .L133
	.loc 1 372 0 is_stmt 0 discriminator 1
	bnei	a2, 4, .L133
	.loc 1 373 0 is_stmt 1
	l32r	a9, .LC112
	movi	a2, 0x7f7
.LVL179:
	and	a8, a8, a2
	l32i.n	a10, a9, 24
	movi	a2, -0x800
	and	a2, a10, a2
	or	a8, a2, a8
	s32i.n	a8, a9, 24
	.loc 1 374 0
	l32r	a10, .LC113
	l32r	a11, .LC113+4
	s32i.n	a10, a9, 16
	s32i.n	a11, a9, 20
	.loc 1 399 0
	movi.n	a2, 0
	.loc 1 374 0
	retw.n
.LVL180:
.L133:
	.loc 1 375 0
	bbci	a8, 0, .L134
	.loc 1 375 0 is_stmt 0 discriminator 1
	bnei	a2, 2, .L134
	.loc 1 376 0 is_stmt 1
	l32r	a9, .LC112
	l32i.n	a10, a9, 28
	movi.n	a2, -0x20
.LVL181:
	and	a2, a10, a2
	s32i.n	a2, a9, 28
	.loc 1 377 0
	l32i.n	a10, a9, 24
	l32r	a2, .LC114
	and	a10, a10, a2
	.loc 1 378 0
	movi	a2, 0x7fe
	and	a8, a8, a2
	movi	a2, -0x800
	and	a2, a10, a2
	or	a8, a2, a8
	s32i.n	a8, a9, 24
	.loc 1 399 0
	movi.n	a2, 0
	.loc 1 378 0
	retw.n
.LVL182:
.L134:
	.loc 1 379 0
	bbci	a8, 1, .L135
	.loc 1 379 0 is_stmt 0 discriminator 1
	bnei	a2, 3, .L135
	.loc 1 380 0 is_stmt 1
	l32r	a10, .LC112
	l32i.n	a9, a10, 24
	l32r	a2, .LC115
.LVL183:
	and	a9, a9, a2
	.loc 1 381 0
	l32r	a2, .LC116
	and	a9, a9, a2
	.loc 1 382 0
	movi	a2, 0x7fd
	and	a8, a8, a2
	movi	a2, -0x800
	and	a2, a9, a2
	or	a8, a2, a8
	s32i.n	a8, a10, 24
	.loc 1 399 0
	movi.n	a2, 0
	.loc 1 382 0
	retw.n
.LVL184:
.L135:
	.loc 1 383 0
	bbci	a8, 8, .L136
	.loc 1 383 0 is_stmt 0 discriminator 1
	bnei	a2, 5, .L136
	.loc 1 384 0 is_stmt 1
	l32r	a9, .LC112
	movi	a2, 0x6ff
.LVL185:
	and	a8, a8, a2
	l32i.n	a10, a9, 24
	movi	a2, -0x800
	and	a2, a10, a2
	or	a8, a2, a8
	s32i.n	a8, a9, 24
	.loc 1 399 0
	movi.n	a2, 0
	.loc 1 384 0
	retw.n
.LVL186:
.L136:
	.loc 1 385 0
	bbci	a8, 2, .L137
	.loc 1 385 0 is_stmt 0 discriminator 1
	bnei	a2, 7, .L137
	.loc 1 386 0 is_stmt 1
	l32r	a9, .LC112
	movi	a2, 0x7fb
.LVL187:
	and	a8, a8, a2
	l32i.n	a10, a9, 24
	movi	a2, -0x800
	and	a2, a10, a2
	or	a8, a2, a8
	s32i.n	a8, a9, 24
	.loc 1 399 0
	movi.n	a2, 0
	.loc 1 386 0
	retw.n
.LVL188:
.L137:
	.loc 1 387 0
	movi	a9, 0xc0
	bnone	a8, a9, .L138
	.loc 1 387 0 is_stmt 0 discriminator 1
	bnei	a2, 8, .L138
	.loc 1 388 0 is_stmt 1
	l32r	a9, .LC112
	movi	a2, 0x73f
.LVL189:
	and	a8, a8, a2
	l32i.n	a10, a9, 24
	movi	a2, -0x800
	and	a2, a10, a2
	or	a8, a2, a8
	s32i.n	a8, a9, 24
	.loc 1 399 0
	movi.n	a2, 0
	.loc 1 388 0
	retw.n
.LVL190:
.L138:
	.loc 1 396 0 discriminator 2
	call8	esp_log_timestamp
.LVL191:
	l32r	a11, .LC118
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC120
	movi.n	a10, 1
	call8	esp_log_write
.LVL192:
	.loc 1 397 0 discriminator 2
	movi	a2, 0x103
.LVL193:
	.loc 1 400 0 discriminator 2
	retw.n
.LFE46:
	.size	esp_sleep_disable_wakeup_source, .-esp_sleep_disable_wakeup_source
	.section	.text.esp_sleep_enable_ulp_wakeup,"ax",@progbits
	.align	4
	.global	esp_sleep_enable_ulp_wakeup
	.type	esp_sleep_enable_ulp_wakeup, @function
esp_sleep_enable_ulp_wakeup:
.LFB47:
	.loc 1 403 0
	entry	sp, 32
.LCFI15:
	.loc 1 417 0
	movi	a2, 0x103
	retw.n
.LFE47:
	.size	esp_sleep_enable_ulp_wakeup, .-esp_sleep_enable_ulp_wakeup
	.section	.text.esp_sleep_enable_timer_wakeup,"ax",@progbits
	.literal_position
	.literal .LC121, s_config
	.align	4
	.global	esp_sleep_enable_timer_wakeup
	.type	esp_sleep_enable_timer_wakeup, @function
esp_sleep_enable_timer_wakeup:
.LFB48:
	.loc 1 420 0
.LVL194:
	entry	sp, 32
.LCFI16:
	.loc 1 421 0
	l32r	a8, .LC121
	l32i.n	a10, a8, 24
	movi.n	a9, 8
	or	a9, a10, a9
	s32i.n	a9, a8, 24
	.loc 1 422 0
	s32i.n	a2, a8, 16
	s32i.n	a3, a8, 20
	.loc 1 424 0
	movi.n	a2, 0
.LVL195:
	retw.n
.LFE48:
	.size	esp_sleep_enable_timer_wakeup, .-esp_sleep_enable_timer_wakeup
	.section	.text.esp_deep_sleep,"ax",@progbits
	.align	4
	.global	esp_deep_sleep
	.type	esp_deep_sleep, @function
esp_deep_sleep:
.LFB38:
	.loc 1 146 0
.LVL196:
	entry	sp, 32
.LCFI17:
	.loc 1 147 0
	mov.n	a10, a2
	mov.n	a11, a3
	call8	esp_sleep_enable_timer_wakeup
.LVL197:
	.loc 1 148 0
	call8	esp_deep_sleep_start
.LVL198:
.LFE38:
	.size	esp_deep_sleep, .-esp_deep_sleep
	.global	system_deep_sleep
	.set	system_deep_sleep,esp_deep_sleep
	.section	.rodata.str1.4
	.align	4
.LC124:
	.string	"\033[0;31mE (%d) %s: Conflicting wake-up trigger: ext0\033[0m\n"
	.section	.text.esp_sleep_enable_touchpad_wakeup,"ax",@progbits
	.literal_position
	.literal .LC122, s_config
	.literal .LC123, .LC117
	.literal .LC125, .LC124
	.align	4
	.global	esp_sleep_enable_touchpad_wakeup
	.type	esp_sleep_enable_touchpad_wakeup, @function
esp_sleep_enable_touchpad_wakeup:
.LFB50:
	.loc 1 439 0
	entry	sp, 32
.LCFI18:
	.loc 1 443 0
	l32r	a8, .LC122
	l32i.n	a8, a8, 24
	extui	a8, a8, 0, 11
	bbci	a8, 0, .L143
	.loc 1 444 0 discriminator 2
	call8	esp_log_timestamp
.LVL199:
	l32r	a11, .LC123
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC125
	movi.n	a10, 1
	call8	esp_log_write
.LVL200:
	.loc 1 445 0 discriminator 2
	movi	a2, 0x103
	retw.n
.L143:
	.loc 1 447 0
	l32r	a2, .LC122
	movi	a9, 0x100
	or	a8, a8, a9
	extui	a9, a8, 0, 11
	l32i.n	a10, a2, 24
	movi	a8, -0x800
	and	a8, a10, a8
	or	a8, a8, a9
	s32i.n	a8, a2, 24
	.loc 1 448 0
	movi.n	a2, 0
	.loc 1 449 0
	retw.n
.LFE50:
	.size	esp_sleep_enable_touchpad_wakeup, .-esp_sleep_enable_touchpad_wakeup
	.section	.rodata.str1.4
	.align	4
.LC129:
	.string	"\033[0;31mE (%d) %s: Conflicting wake-up triggers: touch / ULP\033[0m\n"
	.section	.text.esp_sleep_enable_ext0_wakeup,"ax",@progbits
	.literal_position
	.literal .LC126, rtc_gpio_desc
	.literal .LC127, s_config
	.literal .LC128, .LC117
	.literal .LC130, .LC129
	.literal .LC131, -1073741825
	.align	4
	.global	esp_sleep_enable_ext0_wakeup
	.type	esp_sleep_enable_ext0_wakeup, @function
esp_sleep_enable_ext0_wakeup:
.LFB52:
	.loc 1 463 0
.LVL201:
	entry	sp, 32
.LCFI19:
	.loc 1 464 0
	bgeui	a3, 2, .L149
.LVL202:
.LBB70:
.LBB71:
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/driver/include/driver/rtc_io.h"
	.loc 4 43 0
	movi.n	a8, 0x27
	bltu	a8, a2, .L150
	addx2	a8, a2, a2
	addx4	a8, a8, a2
	l32r	a9, .LC126
	addx4	a8, a8, a9
	l32i.n	a8, a8, 0
	bnez.n	a8, .L151
	j	.L147
.L150:
	movi.n	a8, 0
	j	.L147
.L151:
	movi.n	a8, 1
.L147:
.LBE71:
.LBE70:
	.loc 1 467 0
	beqz.n	a8, .L152
	.loc 1 470 0
	l32r	a8, .LC127
	l32i.n	a9, a8, 24
	extui	a9, a9, 0, 11
	movi	a8, 0x300
	bnone	a9, a8, .L148
	.loc 1 471 0 discriminator 2
	call8	esp_log_timestamp
.LVL203:
	l32r	a11, .LC128
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC130
	movi.n	a10, 1
	call8	esp_log_write
.LVL204:
	.loc 1 472 0 discriminator 2
	movi	a2, 0x103
.LVL205:
	retw.n
.LVL206:
.L148:
	.loc 1 474 0
	addx2	a8, a2, a2
	addx4	a2, a8, a2
.LVL207:
	l32r	a8, .LC126
	addx4	a2, a2, a8
	l32r	a10, .LC127
	l8ui	a2, a2, 48
	extui	a8, a2, 0, 5
	l32i.n	a11, a10, 28
	movi.n	a2, -0x20
	and	a2, a11, a2
	or	a2, a2, a8
	s32i.n	a2, a10, 28
	.loc 1 475 0
	extui	a3, a3, 0, 1
.LVL208:
	slli	a8, a3, 30
	l32i.n	a3, a10, 24
	l32r	a2, .LC131
	and	a3, a3, a2
	or	a3, a3, a8
	.loc 1 476 0
	movi.n	a2, 1
	or	a9, a9, a2
	extui	a9, a9, 0, 11
	movi	a2, -0x800
	and	a3, a3, a2
	or	a3, a3, a9
	s32i.n	a3, a10, 24
	.loc 1 477 0
	movi.n	a2, 0
	retw.n
.LVL209:
.L149:
	.loc 1 465 0
	movi	a2, 0x102
.LVL210:
	retw.n
.LVL211:
.L152:
	.loc 1 468 0
	movi	a2, 0x102
.LVL212:
	.loc 1 478 0
	retw.n
.LFE52:
	.size	esp_sleep_enable_ext0_wakeup, .-esp_sleep_enable_ext0_wakeup
	.section	.rodata.str1.4
	.align	4
.LC134:
	.string	"\033[0;31mE (%d) %s: Not an RTC IO: GPIO%d\033[0m\n"
	.section	.text.esp_sleep_enable_ext1_wakeup,"ax",@progbits
	.literal_position
	.literal .LC132, rtc_gpio_desc
	.literal .LC133, .LC117
	.literal .LC135, .LC134
	.literal .LC136, s_config
	.literal .LC137, 262143
	.literal .LC138, -1073737729
	.literal .LC139, -2049
	.align	4
	.global	esp_sleep_enable_ext1_wakeup
	.type	esp_sleep_enable_ext1_wakeup, @function
esp_sleep_enable_ext1_wakeup:
.LFB54:
	.loc 1 501 0
.LVL213:
	entry	sp, 32
.LCFI20:
	.loc 1 502 0
	bgeui	a4, 2, .L161
	movi.n	a5, 0
	mov.n	a9, a5
	j	.L155
.LVL214:
.L160:
.LBB72:
	.loc 1 508 0
	bbci	a2, 0, .L156
.LVL215:
.LBB73:
.LBB74:
	.loc 4 43 0
	movi.n	a8, 0x27
	bltu	a8, a5, .L162
	addx2	a8, a5, a5
	addx4	a8, a8, a5
	l32r	a10, .LC132
	addx4	a8, a8, a10
	l32i.n	a8, a8, 0
	bnez.n	a8, .L163
	j	.L158
.L162:
	movi.n	a8, 0
	j	.L158
.L163:
	movi.n	a8, 1
.L158:
.LBE74:
.LBE73:
	.loc 1 511 0
	bnez.n	a8, .L159
	.loc 1 512 0 discriminator 2
	call8	esp_log_timestamp
.LVL216:
	l32r	a11, .LC133
	mov.n	a15, a5
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC135
	movi.n	a10, 1
	call8	esp_log_write
.LVL217:
	.loc 1 513 0 discriminator 2
	movi	a2, 0x102
.LVL218:
	retw.n
.LVL219:
.L159:
	.loc 1 515 0
	addx2	a8, a5, a5
	addx4	a8, a8, a5
	l32r	a10, .LC132
	addx4	a8, a8, a10
	l32i.n	a10, a8, 48
	movi.n	a8, 1
	ssl	a10
	sll	a8, a8
	or	a9, a9, a8
.LVL220:
.L156:
	.loc 1 507 0 discriminator 2
	addi.n	a5, a5, 1
.LVL221:
	slli	a8, a3, 31
	srli	a2, a2, 1
.LVL222:
	or	a2, a8, a2
	srli	a3, a3, 1
.LVL223:
.L155:
	.loc 1 507 0 is_stmt 0 discriminator 1
	or	a8, a2, a3
	bnez.n	a8, .L160
.LBE72:
	.loc 1 517 0 is_stmt 1
	l32r	a5, .LC136
.LVL224:
	l32r	a2, .LC137
.LVL225:
	and	a9, a9, a2
.LVL226:
	slli	a9, a9, 12
	l32i.n	a3, a5, 24
	l32r	a2, .LC138
	and	a2, a3, a2
	or	a2, a2, a9
	.loc 1 518 0
	extui	a4, a4, 0, 1
.LVL227:
	slli	a4, a4, 11
	l32r	a3, .LC139
	and	a2, a2, a3
	or	a2, a2, a4
	.loc 1 519 0
	movi.n	a3, 2
	or	a2, a2, a3
	s32i.n	a2, a5, 24
	.loc 1 520 0
	movi.n	a2, 0
	retw.n
.LVL228:
.L161:
	.loc 1 503 0
	movi	a2, 0x102
.LVL229:
	.loc 1 521 0
	retw.n
.LFE54:
	.size	esp_sleep_enable_ext1_wakeup, .-esp_sleep_enable_ext1_wakeup
	.section	.text.esp_sleep_enable_gpio_wakeup,"ax",@progbits
	.literal_position
	.literal .LC140, s_config
	.literal .LC141, .LC117
	.literal .LC142, .LC129
	.align	4
	.global	esp_sleep_enable_gpio_wakeup
	.type	esp_sleep_enable_gpio_wakeup, @function
esp_sleep_enable_gpio_wakeup:
.LFB57:
	.loc 1 581 0
	entry	sp, 32
.LCFI21:
	.loc 1 582 0
	l32r	a8, .LC140
	l32i.n	a8, a8, 24
	extui	a8, a8, 0, 11
	movi	a9, 0x300
	bnone	a8, a9, .L165
	.loc 1 583 0 discriminator 2
	call8	esp_log_timestamp
.LVL230:
	l32r	a11, .LC141
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC142
	movi.n	a10, 1
	call8	esp_log_write
.LVL231:
	.loc 1 584 0 discriminator 2
	movi	a2, 0x103
	retw.n
.L165:
	.loc 1 586 0
	l32r	a2, .LC140
	movi.n	a9, 4
	or	a8, a8, a9
	extui	a9, a8, 0, 11
	l32i.n	a10, a2, 24
	movi	a8, -0x800
	and	a8, a10, a8
	or	a8, a8, a9
	s32i.n	a8, a2, 24
	.loc 1 587 0
	movi.n	a2, 0
	.loc 1 588 0
	retw.n
.LFE57:
	.size	esp_sleep_enable_gpio_wakeup, .-esp_sleep_enable_gpio_wakeup
	.section	.text.esp_sleep_enable_uart_wakeup,"ax",@progbits
	.literal_position
	.literal .LC143, s_config
	.align	4
	.global	esp_sleep_enable_uart_wakeup
	.type	esp_sleep_enable_uart_wakeup, @function
esp_sleep_enable_uart_wakeup:
.LFB58:
	.loc 1 591 0
.LVL232:
	entry	sp, 32
.LCFI22:
	.loc 1 592 0
	bnez.n	a2, .L168
	.loc 1 593 0
	l32r	a8, .LC143
	l32i.n	a9, a8, 24
	movi.n	a2, 0x40
.LVL233:
	or	a2, a9, a2
	s32i.n	a2, a8, 24
	.loc 1 600 0
	movi.n	a2, 0
	retw.n
.LVL234:
.L168:
	.loc 1 594 0
	bnei	a2, 1, .L170
	.loc 1 595 0
	l32r	a8, .LC143
	l32i.n	a9, a8, 24
	movi	a2, 0x80
.LVL235:
	or	a2, a9, a2
	s32i.n	a2, a8, 24
	.loc 1 600 0
	movi.n	a2, 0
	retw.n
.LVL236:
.L170:
	.loc 1 597 0
	movi	a2, 0x102
.LVL237:
	.loc 1 601 0
	retw.n
.LFE58:
	.size	esp_sleep_enable_uart_wakeup, .-esp_sleep_enable_uart_wakeup
	.section	.text.esp_sleep_get_wakeup_cause,"ax",@progbits
	.literal_position
	.literal .LC144, s_light_sleep_wakeup
	.literal .LC145, 1072988216
	.align	4
	.global	esp_sleep_get_wakeup_cause
	.type	esp_sleep_get_wakeup_cause, @function
esp_sleep_get_wakeup_cause:
.LFB59:
	.loc 1 604 0
	entry	sp, 32
.LCFI23:
	.loc 1 605 0
	movi.n	a10, 0
	call8	rtc_get_reset_reason
.LVL238:
	beqi	a10, 5, .L172
	.loc 1 605 0 is_stmt 0 discriminator 1
	l32r	a2, .LC144
	l8ui	a2, a2, 0
	beqz.n	a2, .L174
.L172:
.LBB75:
	.loc 1 609 0 is_stmt 1
	l32r	a2, .LC145
	memw
	l32i.n	a2, a2, 0
.LVL239:
.LBE75:
	.loc 1 610 0
	bbsi	a2, 0, .L175
	.loc 1 612 0
	bbsi	a2, 1, .L176
	.loc 1 614 0
	bbsi	a2, 3, .L177
	.loc 1 616 0
	bbsi	a2, 8, .L178
	.loc 1 618 0
	bbsi	a2, 9, .L179
	.loc 1 620 0
	bbsi	a2, 2, .L180
	.loc 1 622 0
	movi	a8, 0xc0
	bnone	a2, a8, .L181
	.loc 1 623 0
	movi.n	a2, 8
.LVL240:
	retw.n
.L174:
	.loc 1 606 0
	movi.n	a2, 0
	retw.n
.LVL241:
.L175:
	.loc 1 611 0
	movi.n	a2, 2
.LVL242:
	retw.n
.LVL243:
.L176:
	.loc 1 613 0
	movi.n	a2, 3
.LVL244:
	retw.n
.LVL245:
.L177:
	.loc 1 615 0
	movi.n	a2, 4
.LVL246:
	retw.n
.LVL247:
.L178:
	.loc 1 617 0
	movi.n	a2, 5
.LVL248:
	retw.n
.LVL249:
.L179:
	.loc 1 619 0
	movi.n	a2, 6
.LVL250:
	retw.n
.LVL251:
.L180:
	.loc 1 621 0
	movi.n	a2, 7
.LVL252:
	retw.n
.LVL253:
.L181:
	.loc 1 625 0
	movi.n	a2, 0
.LVL254:
	.loc 1 627 0
	retw.n
.LFE59:
	.size	esp_sleep_get_wakeup_cause, .-esp_sleep_get_wakeup_cause
	.section	.rodata.str1.4
	.align	4
.LC146:
	.string	"ret == ESP_OK && \"wakeup reason is RTC_TOUCH_TRIG_EN but SENS_TOUCH_MEAS_EN is zero\""
	.section	.text.esp_sleep_get_touchpad_wakeup_status,"ax",@progbits
	.literal_position
	.literal .LC147, .LC146
	.literal .LC148, __func__$6797
	.literal .LC149, .LC26
	.align	4
	.global	esp_sleep_get_touchpad_wakeup_status
	.type	esp_sleep_get_touchpad_wakeup_status, @function
esp_sleep_get_touchpad_wakeup_status:
.LFB51:
	.loc 1 452 0
	entry	sp, 48
.LCFI24:
	.loc 1 453 0
	call8	esp_sleep_get_wakeup_cause
.LVL255:
	bnei	a10, 5, .L185
	.loc 1 457 0
	mov.n	a10, sp
	call8	touch_pad_get_wakeup_status
.LVL256:
	.loc 1 458 0
	beqz.n	a10, .L184
	.loc 1 458 0 is_stmt 0 discriminator 1
	l32r	a13, .LC147
	l32r	a12, .LC148
	movi	a11, 0x1ca
	l32r	a10, .LC149
.LVL257:
	call8	__assert_func
.LVL258:
.L184:
	.loc 1 459 0 is_stmt 1
	l32i.n	a2, sp, 0
	retw.n
.LVL259:
.L185:
	.loc 1 454 0
	movi.n	a2, 0xa
	.loc 1 460 0
	retw.n
.LFE51:
	.size	esp_sleep_get_touchpad_wakeup_status, .-esp_sleep_get_touchpad_wakeup_status
	.section	.text.esp_sleep_get_ext1_wakeup_status,"ax",@progbits
	.literal_position
	.literal .LC151, 1072988368
	.literal .LC152, 262143
	.literal .LC153, rtc_gpio_desc
	.align	4
	.global	esp_sleep_get_ext1_wakeup_status
	.type	esp_sleep_get_ext1_wakeup_status, @function
esp_sleep_get_ext1_wakeup_status:
.LFB56:
	.loc 1 560 0
	entry	sp, 32
.LCFI25:
	.loc 1 561 0
	call8	esp_sleep_get_wakeup_cause
.LVL260:
	bnei	a10, 3, .L192
.LBB76:
.LBB77:
	.loc 1 564 0
	l32r	a2, .LC151
	memw
	l32i.n	a11, a2, 0
.LBE77:
	l32r	a2, .LC152
	and	a11, a11, a2
.LVL261:
.LBE76:
.LBB78:
	.loc 1 567 0
	movi.n	a8, 0
.LBE78:
	.loc 1 566 0
	mov.n	a2, a8
	mov.n	a3, a8
.LBB82:
	.loc 1 567 0
	j	.L188
.LVL262:
.L191:
.LBB79:
.LBB80:
.LBB81:
	.loc 4 43 0
	movi.n	a9, 0x27
	bltu	a9, a8, .L193
	addx2	a10, a8, a8
	addx4	a10, a10, a8
	slli	a9, a10, 2
	l32r	a10, .LC153
	add.n	a9, a10, a9
	l32i.n	a9, a9, 0
	bnez.n	a9, .L194
	j	.L189
.L193:
	movi.n	a9, 0
	j	.L189
.L194:
	movi.n	a9, 1
.L189:
.LBE81:
.LBE80:
	.loc 1 568 0
	beqz.n	a9, .L190
	.loc 1 571 0
	addx2	a10, a8, a8
	addx4	a10, a10, a8
	slli	a9, a10, 2
	l32r	a10, .LC153
	add.n	a9, a10, a9
	l32i.n	a9, a9, 48
.LVL263:
	.loc 1 572 0
	bbc	a11, a9, .L190
	.loc 1 575 0
	movi.n	a13, 0x20
	and	a13, a8, a13
	movi.n	a12, 0
	movi.n	a9, 1
.LVL264:
	ssl	a8
	sll	a9, a9
	mov.n	a10, a9
.LVL265:
	moveqz	a10, a12, a13
	movnez	a9, a12, a13
	or	a9, a2, a9
	or	a10, a3, a10
	mov.n	a2, a9
.LVL266:
	mov.n	a3, a10
.LVL267:
.L190:
.LBE79:
	.loc 1 567 0 discriminator 2
	addi.n	a8, a8, 1
.LVL268:
.L188:
	.loc 1 567 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x27
	bge	a9, a8, .L191
	retw.n
.LVL269:
.L192:
.LBE82:
	.loc 1 562 0 is_stmt 1
	movi.n	a2, 0
	mov.n	a3, a2
	.loc 1 578 0
	retw.n
.LFE56:
	.size	esp_sleep_get_ext1_wakeup_status, .-esp_sleep_get_ext1_wakeup_status
	.section	.text.esp_sleep_pd_config,"ax",@progbits
	.literal_position
	.literal .LC154, s_config
	.align	4
	.global	esp_sleep_pd_config
	.type	esp_sleep_pd_config, @function
esp_sleep_pd_config:
.LFB60:
	.loc 1 631 0
.LVL270:
	entry	sp, 32
.LCFI26:
	.loc 1 632 0
	movi.n	a8, 1
	bgeui	a2, 4, .L196
	movi.n	a8, 0
.L196:
	extui	a9, a8, 0, 8
	movi.n	a8, 1
	bgeui	a3, 3, .L197
	movi.n	a8, 0
.L197:
	extui	a8, a8, 0, 8
	or	a8, a9, a8
	bnez.n	a8, .L199
	.loc 1 635 0
	l32r	a8, .LC154
	addx4	a2, a2, a8
.LVL271:
	s32i.n	a3, a2, 0
	.loc 1 636 0
	movi.n	a2, 0
	retw.n
.LVL272:
.L199:
	.loc 1 633 0
	movi	a2, 0x102
.LVL273:
	.loc 1 637 0
	retw.n
.LFE60:
	.size	esp_sleep_pd_config, .-esp_sleep_pd_config
	.section	.text.esp_deep_sleep_disable_rom_logging,"ax",@progbits
	.literal_position
	.literal .LC155, 1072988336
	.literal .LC156, 65537
	.align	4
	.global	esp_deep_sleep_disable_rom_logging
	.type	esp_deep_sleep_disable_rom_logging, @function
esp_deep_sleep_disable_rom_logging:
.LFB62:
	.loc 1 713 0
	entry	sp, 32
.LCFI27:
.LBB83:
	.loc 1 719 0
	l32r	a9, .LC155
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC156
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LBE83:
.LFE62:
	.size	esp_deep_sleep_disable_rom_logging, .-esp_deep_sleep_disable_rom_logging
	.section	.rodata.__func__$6797,"a",@progbits
	.align	4
	.type	__func__$6797, @object
	.size	__func__$6797, 37
__func__$6797:
	.string	"esp_sleep_get_touchpad_wakeup_status"
	.section	.data.light_sleep_lock$6763,"aw",@progbits
	.align	4
	.type	light_sleep_lock$6763, @object
	.size	light_sleep_lock$6763, 8
light_sleep_lock$6763:
	.word	-1287651329
	.word	0
	.section	.rodata.__func__$6730,"a",@progbits
	.align	4
	.type	__func__$6730, @object
	.size	__func__$6730, 13
__func__$6730:
	.string	"resume_uarts"
	.section	.rodata.__func__$6839,"a",@progbits
	.align	4
	.type	__func__$6839, @object
	.size	__func__$6839, 20
__func__$6839:
	.string	"ext1_wakeup_prepare"
	.section	.rodata.__func__$6805,"a",@progbits
	.align	4
	.type	__func__$6805, @object
	.size	__func__$6805, 20
__func__$6805:
	.string	"ext0_wakeup_prepare"
	.section	.rodata.__func__$6717,"a",@progbits
	.align	4
	.type	__func__$6717, @object
	.size	__func__$6717, 14
__func__$6717:
	.string	"suspend_uarts"
	.section	.rodata.__func__$4812,"a",@progbits
	.align	4
	.type	__func__$4812, @object
	.size	__func__$4812, 18
__func__$4812:
	.string	"uart_tx_wait_idle"
	.section	.bss.lock_rtc_memory_crc,"aw",@nobits
	.align	4
	.type	lock_rtc_memory_crc, @object
	.size	lock_rtc_memory_crc, 4
lock_rtc_memory_crc:
	.zero	4
	.global	s_light_sleep_wakeup
	.section	.bss.s_light_sleep_wakeup,"aw",@nobits
	.type	s_light_sleep_wakeup, @object
	.size	s_light_sleep_wakeup, 1
s_light_sleep_wakeup:
	.zero	1
	.section	.data.s_config,"aw",@progbits
	.align	8
	.type	s_config, @object
	.size	s_config, 48
s_config:
	.word	2
	.word	2
	.word	2
	.zero	4
	.zero	8
	.byte	0
	.byte	0
	.zero	22
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
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.byte	0x4
	.4byte	.LCFI0-.LFB61
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI1-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI2-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI3-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI4-.LFB53
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI5-.LFB55
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI6-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI7-.LFB49
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI8-.LFB42
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI9-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI10-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI11-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI12-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI13-.LFB45
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI14-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI15-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI16-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI17-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI18-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI19-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI20-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI21-.LFB57
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI22-.LFB58
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI23-.LFB59
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI24-.LFB51
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI25-.LFB56
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.byte	0x4
	.4byte	.LCFI26-.LFB60
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.byte	0x4
	.4byte	.LCFI27-.LFB62
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE54:
	.text
.Letext0:
	.file 5 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/lock.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/driver/include/driver/gpio.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/driver/include/driver/touch_pad.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_sleep.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/rtc.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/rtc.h"
	.file 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/rtc_wdt.h"
	.file 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/rtc_periph.h"
	.file 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 19 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/driver/include/driver/uart.h"
	.file 20 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 21 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.file 22 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_clk.h"
	.file 23 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/platform_include/esp_newlib.h"
	.file 24 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/esp_timer_impl.h"
	.file 25 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_timer.h"
	.file 26 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_dport_access.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1c7f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF336
	.byte	0xc
	.4byte	.LASF337
	.4byte	.LASF338
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x5
	.byte	0xd8
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x6
	.byte	0xb
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x7
	.byte	0x12
	.4byte	0x69
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x7
	.byte	0x19
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x7
	.byte	0x1a
	.4byte	0x3e
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x7
	.byte	0x1d
	.4byte	0x98
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x7
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x7
	.byte	0x31
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x8
	.byte	0x15
	.4byte	0x5e
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x8
	.byte	0x2c
	.4byte	0x77
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x8
	.byte	0x2d
	.4byte	0x82
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x8
	.byte	0x38
	.4byte	0x8d
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x8
	.byte	0x39
	.4byte	0x9f
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x8
	.byte	0xa9
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF21
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF23
	.uleb128 0x5
	.byte	0x4
	.4byte	0x112
	.uleb128 0x6
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
	.uleb128 0x5
	.byte	0x4
	.4byte	0x120
	.uleb128 0x7
	.4byte	0x113
	.uleb128 0x5
	.byte	0x4
	.4byte	0x12b
	.uleb128 0x8
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x9
	.byte	0x18
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF26
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0xa
	.byte	0x82
	.4byte	0x21d
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x11
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x12
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x13
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x15
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x17
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x19
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x1a
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x1b
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x21
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x22
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x23
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x25
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x26
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x27
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0xa
	.byte	0xaf
	.4byte	0x13e
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0xb
	.byte	0x19
	.4byte	0x277
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0xb
	.byte	0x25
	.4byte	0x228
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0xc
	.byte	0x1d
	.4byte	0x29b
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0xc
	.byte	0x20
	.4byte	0x282
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0xc
	.byte	0x25
	.4byte	0x2d1
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0xc
	.byte	0x2b
	.4byte	0x2a6
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0xc
	.byte	0x30
	.4byte	0x2fb
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0xc
	.byte	0x34
	.4byte	0x2dc
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0xc
	.byte	0x39
	.4byte	0x349
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF95
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF96
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF97
	.byte	0xc
	.byte	0x43
	.4byte	0x306
	.uleb128 0x4
	.4byte	.LASF98
	.byte	0xc
	.byte	0x46
	.4byte	0x349
	.uleb128 0xb
	.4byte	.LASF99
	.byte	0xc
	.2byte	0x14f
	.4byte	0x10c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0xd
	.byte	0x1f
	.4byte	0x39c
	.uleb128 0xa
	.4byte	.LASF100
	.byte	0
	.uleb128 0xa
	.4byte	.LASF101
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0xe
	.byte	0x52
	.4byte	0x409
	.uleb128 0xa
	.4byte	.LASF106
	.byte	0
	.uleb128 0xa
	.4byte	.LASF107
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF108
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF109
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF111
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF112
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF113
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF114
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF115
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF116
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF117
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF118
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF119
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF120
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF121
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0xe
	.byte	0x65
	.4byte	0x461
	.uleb128 0xa
	.4byte	.LASF122
	.byte	0
	.uleb128 0xa
	.4byte	.LASF123
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF124
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF125
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF126
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF127
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF128
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF129
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF130
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF131
	.2byte	0x100
	.uleb128 0xc
	.4byte	.LASF132
	.2byte	0x200
	.uleb128 0xc
	.4byte	.LASF133
	.2byte	0x400
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0xe
	.byte	0x83
	.4byte	0x492
	.uleb128 0xa
	.4byte	.LASF134
	.byte	0
	.uleb128 0xa
	.4byte	.LASF135
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF136
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF137
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF138
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF139
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0xf
	.byte	0x51
	.4byte	0x4b7
	.uleb128 0xa
	.4byte	.LASF140
	.byte	0
	.uleb128 0xa
	.4byte	.LASF141
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF142
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF143
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF144
	.byte	0xf
	.byte	0x56
	.4byte	0x492
	.uleb128 0xd
	.byte	0x10
	.byte	0xf
	.byte	0x5b
	.4byte	0x4fb
	.uleb128 0xe
	.4byte	.LASF145
	.byte	0xf
	.byte	0x5c
	.4byte	0x4b7
	.byte	0
	.uleb128 0xe
	.4byte	.LASF146
	.byte	0xf
	.byte	0x5d
	.4byte	0xcb
	.byte	0x4
	.uleb128 0xf
	.string	"div"
	.byte	0xf
	.byte	0x5e
	.4byte	0xcb
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF147
	.byte	0xf
	.byte	0x5f
	.4byte	0xcb
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF148
	.byte	0xf
	.byte	0x60
	.4byte	0x4c2
	.uleb128 0x10
	.byte	0x4
	.byte	0xf
	.2byte	0x21a
	.4byte	0x620
	.uleb128 0x11
	.4byte	.LASF149
	.byte	0xf
	.2byte	0x21b
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0xf
	.2byte	0x21c
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF151
	.byte	0xf
	.2byte	0x21d
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF152
	.byte	0xf
	.2byte	0x21e
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF153
	.byte	0xf
	.2byte	0x21f
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF154
	.byte	0xf
	.2byte	0x220
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.4byte	.LASF155
	.byte	0xf
	.2byte	0x221
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.4byte	.LASF156
	.byte	0xf
	.2byte	0x222
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.4byte	.LASF157
	.byte	0xf
	.2byte	0x223
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.4byte	.LASF158
	.byte	0xf
	.2byte	0x224
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.4byte	.LASF159
	.byte	0xf
	.2byte	0x225
	.4byte	0xcb
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.4byte	.LASF160
	.byte	0xf
	.2byte	0x226
	.4byte	0xcb
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.4byte	.LASF161
	.byte	0xf
	.2byte	0x227
	.4byte	0xcb
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x11
	.4byte	.LASF162
	.byte	0xf
	.2byte	0x228
	.4byte	0xcb
	.byte	0x4
	.byte	0x3
	.byte	0xa
	.byte	0
	.uleb128 0x11
	.4byte	.LASF163
	.byte	0xf
	.2byte	0x229
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x11
	.4byte	.LASF164
	.byte	0xf
	.2byte	0x22a
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF165
	.byte	0xf
	.2byte	0x22b
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0xf
	.2byte	0x22c
	.4byte	0x506
	.uleb128 0x10
	.byte	0x4
	.byte	0xf
	.2byte	0x2b8
	.4byte	0x696
	.uleb128 0x11
	.4byte	.LASF167
	.byte	0xf
	.2byte	0x2b9
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF168
	.byte	0xf
	.2byte	0x2ba
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF169
	.byte	0xf
	.2byte	0x2bb
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF170
	.byte	0xf
	.2byte	0x2bc
	.4byte	0xcb
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF171
	.byte	0xf
	.2byte	0x2bd
	.4byte	0xcb
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.4byte	.LASF172
	.byte	0xf
	.2byte	0x2be
	.4byte	0xcb
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0xf
	.2byte	0x2bf
	.4byte	0x62c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0x10
	.byte	0x40
	.4byte	0x6c7
	.uleb128 0xa
	.4byte	.LASF174
	.byte	0
	.uleb128 0xa
	.4byte	.LASF175
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF176
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF177
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0x10
	.byte	0x48
	.4byte	0x6f2
	.uleb128 0xa
	.4byte	.LASF178
	.byte	0
	.uleb128 0xa
	.4byte	.LASF179
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF180
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF181
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF182
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0x10
	.byte	0x51
	.4byte	0x70b
	.uleb128 0xa
	.4byte	.LASF183
	.byte	0
	.uleb128 0xa
	.4byte	.LASF184
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0x10
	.byte	0x57
	.4byte	0x748
	.uleb128 0xa
	.4byte	.LASF185
	.byte	0
	.uleb128 0xa
	.4byte	.LASF186
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF187
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF188
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF189
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF190
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF191
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF192
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.byte	0x34
	.byte	0x11
	.byte	0x21
	.4byte	0x7ec
	.uleb128 0xf
	.string	"reg"
	.byte	0x11
	.byte	0x22
	.4byte	0xcb
	.byte	0
	.uleb128 0xf
	.string	"mux"
	.byte	0x11
	.byte	0x23
	.4byte	0xcb
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF193
	.byte	0x11
	.byte	0x24
	.4byte	0xcb
	.byte	0x8
	.uleb128 0xf
	.string	"ie"
	.byte	0x11
	.byte	0x25
	.4byte	0xcb
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF194
	.byte	0x11
	.byte	0x26
	.4byte	0xcb
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF195
	.byte	0x11
	.byte	0x27
	.4byte	0xcb
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF196
	.byte	0x11
	.byte	0x28
	.4byte	0xcb
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF197
	.byte	0x11
	.byte	0x29
	.4byte	0xcb
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF198
	.byte	0x11
	.byte	0x2a
	.4byte	0xcb
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF199
	.byte	0x11
	.byte	0x2b
	.4byte	0xcb
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF200
	.byte	0x11
	.byte	0x2c
	.4byte	0xcb
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF201
	.byte	0x11
	.byte	0x2d
	.4byte	0xcb
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF202
	.byte	0x11
	.byte	0x2e
	.4byte	0x2c
	.byte	0x30
	.byte	0
	.uleb128 0x4
	.4byte	.LASF203
	.byte	0x11
	.byte	0x2f
	.4byte	0x748
	.uleb128 0xd
	.byte	0x8
	.byte	0x12
	.byte	0x82
	.4byte	0x818
	.uleb128 0xe
	.4byte	.LASF204
	.byte	0x12
	.byte	0x8a
	.4byte	0xcb
	.byte	0
	.uleb128 0xe
	.4byte	.LASF205
	.byte	0x12
	.byte	0x8f
	.4byte	0xcb
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF206
	.byte	0x12
	.byte	0x94
	.4byte	0x7f7
	.uleb128 0x7
	.4byte	0x11a
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3e
	.byte	0x13
	.byte	0x54
	.4byte	0x84d
	.uleb128 0xa
	.4byte	.LASF207
	.byte	0
	.uleb128 0xa
	.4byte	.LASF208
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF209
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF210
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.byte	0x30
	.byte	0x1
	.byte	0x43
	.4byte	0x8d1
	.uleb128 0xe
	.4byte	.LASF211
	.byte	0x1
	.byte	0x44
	.4byte	0x8d1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF212
	.byte	0x1
	.byte	0x45
	.4byte	0xe1
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF213
	.byte	0x1
	.byte	0x46
	.4byte	0xcb
	.byte	0x4
	.byte	0xb
	.byte	0x15
	.byte	0x18
	.uleb128 0x12
	.4byte	.LASF214
	.byte	0x1
	.byte	0x47
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x18
	.uleb128 0x12
	.4byte	.LASF215
	.byte	0x1
	.byte	0x48
	.4byte	0xcb
	.byte	0x4
	.byte	0x12
	.byte	0x2
	.byte	0x18
	.uleb128 0x12
	.4byte	.LASF216
	.byte	0x1
	.byte	0x49
	.4byte	0xcb
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x18
	.uleb128 0x12
	.4byte	.LASF217
	.byte	0x1
	.byte	0x4a
	.4byte	0xcb
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF218
	.byte	0x1
	.byte	0x4b
	.4byte	0xcb
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF219
	.byte	0x1
	.byte	0x4c
	.4byte	0xe1
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.4byte	0x2fb
	.4byte	0x8e1
	.uleb128 0x14
	.4byte	0xfe
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF220
	.byte	0x1
	.byte	0x4d
	.4byte	0x84d
	.uleb128 0x15
	.4byte	.LASF221
	.byte	0x3
	.byte	0x93
	.4byte	0x137
	.byte	0x3
	.4byte	0x910
	.uleb128 0x16
	.string	"p"
	.byte	0x3
	.byte	0x93
	.4byte	0x125
	.uleb128 0x17
	.string	"ip"
	.byte	0x3
	.byte	0x95
	.4byte	0xec
	.byte	0
	.uleb128 0x15
	.4byte	.LASF222
	.byte	0x4
	.byte	0x28
	.4byte	0x137
	.byte	0x3
	.4byte	0x92c
	.uleb128 0x18
	.4byte	.LASF223
	.byte	0x4
	.byte	0x28
	.4byte	0x21d
	.byte	0
	.uleb128 0x19
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x27f
	.4byte	0xcb
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x96f
	.uleb128 0x1a
	.4byte	.LASF292
	.byte	0x1
	.2byte	0x289
	.4byte	0x2c
	.uleb128 0x1b
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x2aa
	.4byte	0x96f
	.uleb128 0x1c
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x2b1
	.4byte	0xcb
	.4byte	.LLST0
	.byte	0
	.uleb128 0x13
	.4byte	0x11a
	.4byte	0x97f
	.uleb128 0x14
	.4byte	0xfe
	.byte	0x2
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF252
	.byte	0x1
	.byte	0x7f
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b8
	.uleb128 0x1e
	.4byte	.LVL5
	.4byte	0x1ab0
	.uleb128 0x1e
	.4byte	.LVL6
	.4byte	0x1abc
	.uleb128 0x1f
	.4byte	.LVL7
	.4byte	0x1ac8
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x7d0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF340
	.byte	0x2
	.2byte	0x10d
	.byte	0x3
	.4byte	0x9eb
	.uleb128 0x22
	.4byte	.LASF225
	.byte	0x2
	.2byte	0x10d
	.4byte	0xb5
	.uleb128 0x1b
	.4byte	.LASF226
	.byte	0x2
	.2byte	0x10e
	.4byte	0xcb
	.uleb128 0x23
	.4byte	.LASF227
	.4byte	0x9fb
	.4byte	.LASF340
	.byte	0
	.uleb128 0x13
	.4byte	0x113
	.4byte	0x9fb
	.uleb128 0x14
	.4byte	0xfe
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.4byte	0x9eb
	.uleb128 0x24
	.4byte	.LASF229
	.byte	0x1
	.byte	0x97
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa90
	.uleb128 0x25
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.byte	0x99
	.4byte	0x2c
	.4byte	.LLST1
	.uleb128 0x27
	.4byte	0x9b8
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0x9a
	.uleb128 0x28
	.4byte	0x9c5
	.4byte	.LLST2
	.uleb128 0x25
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.uleb128 0x29
	.4byte	0x9d1
	.4byte	.LLST3
	.uleb128 0x2a
	.4byte	0x9dd
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4812
	.uleb128 0x1f
	.4byte	.LVL13
	.4byte	0x1ad4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x110
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$4812
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF230
	.byte	0x1
	.byte	0x9e
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb55
	.uleb128 0x2b
	.4byte	.LASF227
	.4byte	0xb65
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6717
	.uleb128 0x25
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.byte	0xa0
	.4byte	0x2c
	.4byte	.LLST4
	.uleb128 0x2c
	.4byte	.LVL19
	.4byte	0x1ad4
	.4byte	0xaf9
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa1
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6717
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL21
	.4byte	0x1ad4
	.4byte	0xb28
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa2
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6717
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL23
	.4byte	0x1ad4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa2
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6717
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x113
	.4byte	0xb65
	.uleb128 0x14
	.4byte	0xfe
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.4byte	0xb55
	.uleb128 0x2d
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x1e0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcbc
	.uleb128 0x1c
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x2c
	.4byte	.LLST5
	.uleb128 0x2b
	.4byte	.LASF227
	.4byte	0xccc
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6805
	.uleb128 0x25
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.uleb128 0x1c
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x33
	.4byte	.LLST6
	.uleb128 0x25
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.uleb128 0x1b
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x1ea
	.4byte	0xcd1
	.uleb128 0x2c
	.4byte	.LVL29
	.4byte	0x1ad4
	.4byte	0xbfd
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1ec
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6805
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL30
	.4byte	0x1ad4
	.4byte	0xc2d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1ed
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6805
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL31
	.4byte	0x1ad4
	.4byte	0xc5d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1ed
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6805
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL32
	.4byte	0x1ad4
	.4byte	0xc8d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1ed
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6805
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL33
	.4byte	0x1ad4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1ee
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6805
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x113
	.4byte	0xccc
	.uleb128 0x14
	.4byte	0xfe
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0xcbc
	.uleb128 0x5
	.byte	0x4
	.4byte	0xcd7
	.uleb128 0x7
	.4byte	0x7ec
	.uleb128 0x2d
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x20b
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe9e
	.uleb128 0x1c
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x20e
	.4byte	0xcb
	.4byte	.LLST7
	.uleb128 0x2b
	.4byte	.LASF227
	.4byte	0xe9e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6839
	.uleb128 0x25
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.uleb128 0x1c
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x20f
	.4byte	0x2c
	.4byte	.LLST8
	.uleb128 0x25
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.uleb128 0x1c
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x210
	.4byte	0x2c
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x214
	.4byte	0xcd1
	.uleb128 0x2c
	.4byte	.LVL42
	.4byte	0x1ad4
	.4byte	0xd7f
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x216
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6839
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL44
	.4byte	0x1ad4
	.4byte	0xdaf
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x217
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6839
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL46
	.4byte	0x1ad4
	.4byte	0xddf
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x217
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6839
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL48
	.4byte	0x1ad4
	.4byte	0xe0f
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x217
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6839
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL50
	.4byte	0x1ad4
	.4byte	0xe3f
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x219
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6839
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL52
	.4byte	0x1ad4
	.4byte	0xe6f
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x21f
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6839
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL54
	.4byte	0x1ad4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x220
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6839
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xcbc
	.uleb128 0x24
	.4byte	.LASF238
	.byte	0x1
	.byte	0xa8
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf68
	.uleb128 0x2b
	.4byte	.LASF227
	.4byte	0xf78
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6730
	.uleb128 0x25
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.byte	0xaa
	.4byte	0x2c
	.4byte	.LLST10
	.uleb128 0x2c
	.4byte	.LVL62
	.4byte	0x1ad4
	.4byte	0xf0c
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xab
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6730
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC74
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL64
	.4byte	0x1ad4
	.4byte	0xf3b
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xac
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6730
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL66
	.4byte	0x1ad4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xad
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6730
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC74
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x113
	.4byte	0xf78
	.uleb128 0x14
	.4byte	0xfe
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.4byte	0xf68
	.uleb128 0x2d
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x1aa
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfdf
	.uleb128 0x1c
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x1ac
	.4byte	0xcb
	.4byte	.LLST11
	.uleb128 0x1c
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x1ad
	.4byte	0xd6
	.4byte	.LLST12
	.uleb128 0x1c
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x1b1
	.4byte	0xd6
	.4byte	.LLST13
	.uleb128 0x1e
	.4byte	.LVL68
	.4byte	0x1adf
	.uleb128 0x1e
	.4byte	.LVL73
	.4byte	0x1aea
	.uleb128 0x1e
	.4byte	.LVL75
	.4byte	0x1af6
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF245
	.byte	0x1
	.byte	0xb1
	.4byte	0xcb
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10be
	.uleb128 0x2f
	.4byte	.LASF228
	.byte	0x1
	.byte	0xb1
	.4byte	0xcb
	.4byte	.LLST14
	.uleb128 0x30
	.4byte	.LASF242
	.byte	0x1
	.byte	0xbd
	.4byte	0x4fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.4byte	.LASF227
	.4byte	0x10ce
	.uleb128 0x32
	.4byte	.LASF243
	.byte	0x1
	.byte	0xce
	.4byte	0x620
	.4byte	.LLST15
	.uleb128 0x30
	.4byte	.LASF244
	.byte	0x1
	.byte	0xd6
	.4byte	0xcb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LVL77
	.4byte	0xa00
	.uleb128 0x1e
	.4byte	.LVL78
	.4byte	0xa90
	.uleb128 0x2c
	.4byte	.LVL79
	.4byte	0x1b02
	.4byte	0x1060
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL80
	.4byte	0x1b0e
	.uleb128 0x1e
	.4byte	.LVL81
	.4byte	0xb6a
	.uleb128 0x1e
	.4byte	.LVL82
	.4byte	0xcdc
	.uleb128 0x1e
	.4byte	.LVL96
	.4byte	0x1b1a
	.uleb128 0x1e
	.4byte	.LVL97
	.4byte	0xf7d
	.uleb128 0x2c
	.4byte	.LVL98
	.4byte	0x1b26
	.4byte	0x10a0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL100
	.4byte	0x1b32
	.4byte	0x10b4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL101
	.4byte	0xea3
	.byte	0
	.uleb128 0x13
	.4byte	0x113
	.4byte	0x10ce
	.uleb128 0x14
	.4byte	0xfe
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x10be
	.uleb128 0x33
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x103
	.4byte	0x12c
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1160
	.uleb128 0x34
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x103
	.4byte	0xcb
	.4byte	.LLST16
	.uleb128 0x35
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x104
	.4byte	0xcb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x35
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x105
	.4byte	0x696
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x36
	.string	"err"
	.byte	0x1
	.2byte	0x108
	.4byte	0x12c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2c
	.4byte	.LVL103
	.4byte	0xfdf
	.4byte	0x113b
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL105
	.4byte	0x1b3e
	.4byte	0x114f
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL106
	.4byte	0x1ac8
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF266
	.byte	0x1
	.byte	0x64
	.4byte	0x35f
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x120b
	.uleb128 0x32
	.4byte	.LASF249
	.byte	0x1
	.byte	0x67
	.4byte	0xcb
	.4byte	.LLST17
	.uleb128 0x31
	.4byte	.LASF227
	.4byte	0x121b
	.uleb128 0x30
	.4byte	.LASF250
	.byte	0x1
	.byte	0x69
	.4byte	0xcb
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x32
	.4byte	.LASF251
	.byte	0x1
	.byte	0x70
	.4byte	0x35f
	.4byte	.LLST18
	.uleb128 0x38
	.4byte	0x8ec
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.byte	0x1
	.byte	0x71
	.4byte	0x11dd
	.uleb128 0x28
	.4byte	0x8fc
	.4byte	.LLST18
	.uleb128 0x25
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.uleb128 0x29
	.4byte	0x905
	.4byte	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL108
	.4byte	0x1b4a
	.4byte	0x11f1
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL110
	.4byte	0x1b55
	.uleb128 0x1f
	.4byte	.LVL112
	.4byte	0x1b60
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x113
	.4byte	0x121b
	.uleb128 0x14
	.4byte	0xfe
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.4byte	0x120b
	.uleb128 0x1d
	.4byte	.LASF253
	.byte	0x1
	.byte	0x77
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1279
	.uleb128 0x39
	.4byte	.LASF254
	.byte	0x1
	.byte	0x77
	.4byte	0x35f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LASF227
	.4byte	0x1279
	.uleb128 0x2c
	.4byte	.LVL119
	.4byte	0x1b4a
	.4byte	0x125f
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL120
	.4byte	0x1b55
	.uleb128 0x1f
	.4byte	.LVL121
	.4byte	0x1b60
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x120b
	.uleb128 0x3a
	.4byte	.LASF255
	.byte	0x1
	.byte	0xe1
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12e7
	.uleb128 0x32
	.4byte	.LASF228
	.byte	0x1
	.byte	0xec
	.4byte	0xcb
	.4byte	.LLST21
	.uleb128 0x1e
	.4byte	.LVL122
	.4byte	0x1b6b
	.uleb128 0x1e
	.4byte	.LVL123
	.4byte	0x1b77
	.uleb128 0x1e
	.4byte	.LVL124
	.4byte	0x1160
	.uleb128 0x2c
	.4byte	.LVL125
	.4byte	0x1220
	.4byte	0x12d4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_wake_deep_sleep
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL126
	.4byte	0x92c
	.uleb128 0x1e
	.4byte	.LVL128
	.4byte	0xfdf
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x118
	.4byte	0x12c
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x152f
	.uleb128 0x3c
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x11a
	.4byte	0x818
	.uleb128 0x5
	.byte	0x3
	.4byte	light_sleep_lock$6763
	.uleb128 0x1c
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x122
	.4byte	0xe1
	.4byte	.LLST22
	.uleb128 0x1c
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x126
	.4byte	0xcb
	.4byte	.LLST23
	.uleb128 0x3d
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x12e
	.4byte	0x152f
	.2byte	0xa8c
	.uleb128 0x3d
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x132
	.4byte	0x152f
	.2byte	0xc7b
	.uleb128 0x1c
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x13b
	.4byte	0x696
	.4byte	.LLST24
	.uleb128 0x3c
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x13e
	.4byte	0x137
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3e
	.string	"err"
	.byte	0x1
	.2byte	0x14b
	.4byte	0x12c
	.4byte	.LLST25
	.uleb128 0x1c
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x151
	.4byte	0xe1
	.4byte	.LLST26
	.uleb128 0x1c
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x152
	.4byte	0xe1
	.4byte	.LLST27
	.uleb128 0x1c
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x154
	.4byte	0xe1
	.4byte	.LLST28
	.uleb128 0x1c
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x156
	.4byte	0xe1
	.4byte	.LLST29
	.uleb128 0x1c
	.4byte	.LASF265
	.byte	0x1
	.2byte	0x158
	.4byte	0xd6
	.4byte	.LLST30
	.uleb128 0x2c
	.4byte	.LVL129
	.4byte	0x1b82
	.4byte	0x13e4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	light_sleep_lock$6763
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL130
	.4byte	0x1b8d
	.uleb128 0x1e
	.4byte	.LVL131
	.4byte	0x1b6b
	.uleb128 0x1e
	.4byte	.LVL132
	.4byte	0x1b98
	.uleb128 0x1e
	.4byte	.LVL134
	.4byte	0x1ba3
	.uleb128 0x1e
	.4byte	.LVL135
	.4byte	0x92c
	.uleb128 0x1e
	.4byte	.LVL139
	.4byte	0x1bae
	.uleb128 0x1e
	.4byte	.LVL141
	.4byte	0x1bba
	.uleb128 0x1e
	.4byte	.LVL143
	.4byte	0x1bc5
	.uleb128 0x1e
	.4byte	.LVL144
	.4byte	0x1bd0
	.uleb128 0x2c
	.4byte	.LVL145
	.4byte	0x1bdb
	.4byte	0x144d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL146
	.4byte	0x1bdb
	.4byte	0x1465
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL147
	.4byte	0x1be6
	.4byte	0x147d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL148
	.4byte	0x1bf1
	.4byte	0x1497
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL149
	.4byte	0x1bfc
	.uleb128 0x1e
	.4byte	.LVL150
	.4byte	0x1c07
	.uleb128 0x2c
	.4byte	.LVL151
	.4byte	0x10d3
	.4byte	0x14ca
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xa8c
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL155
	.4byte	0x1b6b
	.uleb128 0x1e
	.4byte	.LVL157
	.4byte	0x1b98
	.uleb128 0x1e
	.4byte	.LVL160
	.4byte	0x1adf
	.uleb128 0x1e
	.4byte	.LVL161
	.4byte	0x1c12
	.uleb128 0x1e
	.4byte	.LVL169
	.4byte	0x1c1e
	.uleb128 0x1e
	.4byte	.LVL170
	.4byte	0x1c29
	.uleb128 0x1e
	.4byte	.LVL171
	.4byte	0x1c34
	.uleb128 0x1e
	.4byte	.LVL172
	.4byte	0x1c3f
	.uleb128 0x1e
	.4byte	.LVL173
	.4byte	0x1bd0
	.uleb128 0x1f
	.4byte	.LVL174
	.4byte	0x1c4a
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	light_sleep_lock$6763
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xcb
	.uleb128 0x3f
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x16d
	.4byte	0x12c
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1598
	.uleb128 0x34
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x16d
	.4byte	0x349
	.4byte	.LLST31
	.uleb128 0x1e
	.4byte	.LVL191
	.4byte	0x1c55
	.uleb128 0x1f
	.4byte	.LVL192
	.4byte	0x1c60
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC117
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC119
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC117
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x40
	.4byte	.LASF341
	.byte	0x1
	.2byte	0x192
	.4byte	0x12c
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3f
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x12c
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15d9
	.uleb128 0x34
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x1a3
	.4byte	0xe1
	.4byte	.LLST32
	.byte	0
	.uleb128 0x41
	.4byte	.LASF270
	.byte	0x1
	.byte	0x91
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1613
	.uleb128 0x39
	.4byte	.LASF269
	.byte	0x1
	.byte	0x91
	.4byte	0xe1
	.uleb128 0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x1e
	.4byte	.LVL197
	.4byte	0x15ae
	.uleb128 0x1e
	.4byte	.LVL198
	.4byte	0x127e
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x12c
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1661
	.uleb128 0x1e
	.4byte	.LVL199
	.4byte	0x1c55
	.uleb128 0x1f
	.4byte	.LVL200
	.4byte	0x1c60
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC117
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC124
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC117
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x12c
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16ed
	.uleb128 0x34
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x21d
	.4byte	.LLST33
	.uleb128 0x34
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x2c
	.4byte	.LLST34
	.uleb128 0x42
	.4byte	0x910
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.byte	0x1
	.2byte	0x1d3
	.4byte	0x16b9
	.uleb128 0x28
	.4byte	0x920
	.4byte	.LLST35
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL203
	.4byte	0x1c55
	.uleb128 0x1f
	.4byte	.LVL204
	.4byte	0x1c60
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC117
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC129
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC117
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF274
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x12c
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17a9
	.uleb128 0x34
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x1f4
	.4byte	0xe1
	.4byte	.LLST36
	.uleb128 0x34
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x29b
	.4byte	.LLST37
	.uleb128 0x1c
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x1fa
	.4byte	0xcb
	.4byte	.LLST38
	.uleb128 0x25
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.uleb128 0x1c
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x2c
	.4byte	.LLST39
	.uleb128 0x42
	.4byte	0x910
	.4byte	.LBB73
	.4byte	.LBE73-.LBB73
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x176e
	.uleb128 0x28
	.4byte	0x920
	.4byte	.LLST40
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL216
	.4byte	0x1c55
	.uleb128 0x1f
	.4byte	.LVL217
	.4byte	0x1c60
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC117
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC134
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC117
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x244
	.4byte	0x12c
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17f7
	.uleb128 0x1e
	.4byte	.LVL230
	.4byte	0x1c55
	.uleb128 0x1f
	.4byte	.LVL231
	.4byte	0x1c60
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC117
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC129
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC117
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x24e
	.4byte	0x12c
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1822
	.uleb128 0x34
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x24e
	.4byte	0x2c
	.4byte	.LLST41
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x25b
	.4byte	0x354
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1865
	.uleb128 0x1c
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x261
	.4byte	0xcb
	.4byte	.LLST42
	.uleb128 0x31
	.4byte	.LASF227
	.4byte	0x1875
	.uleb128 0x1f
	.4byte	.LVL238
	.4byte	0x1c6b
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x113
	.4byte	0x1875
	.uleb128 0x14
	.4byte	0xfe
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.4byte	0x1865
	.uleb128 0x3b
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x277
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x190c
	.uleb128 0x3c
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x277
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3e
	.string	"ret"
	.byte	0x1
	.2byte	0x1c9
	.4byte	0x12c
	.4byte	.LLST43
	.uleb128 0x2b
	.4byte	.LASF227
	.4byte	0x191c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6797
	.uleb128 0x1e
	.4byte	.LVL255
	.4byte	0x1822
	.uleb128 0x2c
	.4byte	.LVL256
	.4byte	0x1c76
	.4byte	0x18df
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL258
	.4byte	0x1ad4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1ca
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6797
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC146
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x113
	.4byte	0x191c
	.uleb128 0x14
	.4byte	0xfe
	.byte	0x24
	.byte	0
	.uleb128 0x7
	.4byte	0x190c
	.uleb128 0x3b
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x22f
	.4byte	0xe1
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19bc
	.uleb128 0x1c
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x234
	.4byte	0xcb
	.4byte	.LLST44
	.uleb128 0x31
	.4byte	.LASF227
	.4byte	0x19cc
	.uleb128 0x1c
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x236
	.4byte	0xe1
	.4byte	.LLST45
	.uleb128 0x43
	.4byte	.Ldebug_ranges0+0
	.4byte	0x19b2
	.uleb128 0x1c
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x237
	.4byte	0x2c
	.4byte	.LLST46
	.uleb128 0x25
	.4byte	.LBB79
	.4byte	.LBE79-.LBB79
	.uleb128 0x1c
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x23b
	.4byte	0x2c
	.4byte	.LLST47
	.uleb128 0x44
	.4byte	0x910
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.byte	0x1
	.2byte	0x238
	.uleb128 0x28
	.4byte	0x920
	.4byte	.LLST48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL260
	.4byte	0x1822
	.byte	0
	.uleb128 0x13
	.4byte	0x113
	.4byte	0x19cc
	.uleb128 0x14
	.4byte	0xfe
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.4byte	0x19bc
	.uleb128 0x3f
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x275
	.4byte	0x12c
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a0a
	.uleb128 0x34
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x275
	.4byte	0x2d1
	.4byte	.LLST49
	.uleb128 0x35
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x276
	.4byte	0x2fb
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x45
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x2c8
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a2a
	.uleb128 0x31
	.4byte	.LASF227
	.4byte	0x1a3a
	.byte	0
	.uleb128 0x13
	.4byte	0x113
	.4byte	0x1a3a
	.uleb128 0x14
	.4byte	0xfe
	.byte	0x22
	.byte	0
	.uleb128 0x7
	.4byte	0x1a2a
	.uleb128 0x30
	.4byte	.LASF290
	.byte	0x1
	.byte	0x4f
	.4byte	0x8e1
	.uleb128 0x5
	.byte	0x3
	.4byte	s_config
	.uleb128 0x30
	.4byte	.LASF291
	.byte	0x1
	.byte	0x58
	.4byte	0x4c
	.uleb128 0x5
	.byte	0x3
	.4byte	lock_rtc_memory_crc
	.uleb128 0x46
	.string	"TAG"
	.byte	0x1
	.byte	0x5a
	.4byte	0x823
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC117
	.byte	0x9f
	.uleb128 0x13
	.4byte	0x7ec
	.4byte	0x1a83
	.uleb128 0x14
	.4byte	0xfe
	.byte	0x27
	.byte	0
	.uleb128 0x47
	.4byte	.LASF293
	.byte	0x11
	.byte	0x38
	.4byte	0x1a8e
	.uleb128 0x7
	.4byte	0x1a73
	.uleb128 0x48
	.4byte	.LASF294
	.byte	0x1
	.byte	0x54
	.4byte	0x137
	.uleb128 0x5
	.byte	0x3
	.4byte	s_light_sleep_wakeup
	.uleb128 0x1a
	.4byte	.LASF292
	.byte	0x1
	.2byte	0x289
	.4byte	0x2c
	.uleb128 0x49
	.4byte	.LASF295
	.4byte	.LASF295
	.byte	0x14
	.2byte	0x1b5
	.uleb128 0x49
	.4byte	.LASF296
	.4byte	.LASF296
	.byte	0x14
	.2byte	0x195
	.uleb128 0x49
	.4byte	.LASF297
	.4byte	.LASF297
	.byte	0x14
	.2byte	0x17f
	.uleb128 0x4a
	.4byte	.LASF298
	.4byte	.LASF298
	.byte	0x15
	.byte	0x29
	.uleb128 0x4a
	.4byte	.LASF299
	.4byte	.LASF299
	.byte	0x16
	.byte	0x1f
	.uleb128 0x49
	.4byte	.LASF300
	.4byte	.LASF300
	.byte	0xf
	.2byte	0x1f6
	.uleb128 0x49
	.4byte	.LASF301
	.4byte	.LASF301
	.byte	0xf
	.2byte	0x267
	.uleb128 0x49
	.4byte	.LASF302
	.4byte	.LASF302
	.byte	0xf
	.2byte	0x1b5
	.uleb128 0x49
	.4byte	.LASF303
	.4byte	.LASF303
	.byte	0xf
	.2byte	0x1be
	.uleb128 0x49
	.4byte	.LASF304
	.4byte	.LASF304
	.byte	0xf
	.2byte	0x25f
	.uleb128 0x49
	.4byte	.LASF305
	.4byte	.LASF305
	.byte	0xf
	.2byte	0x28f
	.uleb128 0x49
	.4byte	.LASF306
	.4byte	.LASF306
	.byte	0xf
	.2byte	0x199
	.uleb128 0x49
	.4byte	.LASF307
	.4byte	.LASF307
	.byte	0xf
	.2byte	0x2d1
	.uleb128 0x4a
	.4byte	.LASF308
	.4byte	.LASF308
	.byte	0x6
	.byte	0x20
	.uleb128 0x4a
	.4byte	.LASF309
	.4byte	.LASF309
	.byte	0xe
	.byte	0xb9
	.uleb128 0x4a
	.4byte	.LASF310
	.4byte	.LASF310
	.byte	0x6
	.byte	0x24
	.uleb128 0x49
	.4byte	.LASF311
	.4byte	.LASF311
	.byte	0xf
	.2byte	0x20c
	.uleb128 0x4a
	.4byte	.LASF312
	.4byte	.LASF312
	.byte	0x17
	.byte	0x2c
	.uleb128 0x4a
	.4byte	.LASF313
	.4byte	.LASF313
	.byte	0x12
	.byte	0xda
	.uleb128 0x4a
	.4byte	.LASF314
	.4byte	.LASF314
	.byte	0x18
	.byte	0x5f
	.uleb128 0x4a
	.4byte	.LASF315
	.4byte	.LASF315
	.byte	0x19
	.byte	0xbe
	.uleb128 0x4a
	.4byte	.LASF316
	.4byte	.LASF316
	.byte	0x1a
	.byte	0x18
	.uleb128 0x49
	.4byte	.LASF317
	.4byte	.LASF317
	.byte	0xf
	.2byte	0x2c8
	.uleb128 0x4a
	.4byte	.LASF318
	.4byte	.LASF318
	.byte	0x10
	.byte	0xc4
	.uleb128 0x4a
	.4byte	.LASF319
	.4byte	.LASF319
	.byte	0x10
	.byte	0x72
	.uleb128 0x4a
	.4byte	.LASF320
	.4byte	.LASF320
	.byte	0x10
	.byte	0x85
	.uleb128 0x4a
	.4byte	.LASF321
	.4byte	.LASF321
	.byte	0x10
	.byte	0xbc
	.uleb128 0x4a
	.4byte	.LASF322
	.4byte	.LASF322
	.byte	0x10
	.byte	0xb0
	.uleb128 0x4a
	.4byte	.LASF323
	.4byte	.LASF323
	.byte	0x10
	.byte	0x98
	.uleb128 0x4a
	.4byte	.LASF324
	.4byte	.LASF324
	.byte	0x10
	.byte	0x77
	.uleb128 0x4a
	.4byte	.LASF325
	.4byte	.LASF325
	.byte	0x10
	.byte	0x6d
	.uleb128 0x49
	.4byte	.LASF326
	.4byte	.LASF326
	.byte	0xf
	.2byte	0x1ff
	.uleb128 0x4a
	.4byte	.LASF327
	.4byte	.LASF327
	.byte	0x18
	.byte	0x46
	.uleb128 0x4a
	.4byte	.LASF328
	.4byte	.LASF328
	.byte	0x17
	.byte	0x27
	.uleb128 0x4a
	.4byte	.LASF329
	.4byte	.LASF329
	.byte	0x18
	.byte	0x65
	.uleb128 0x4a
	.4byte	.LASF330
	.4byte	.LASF330
	.byte	0x1a
	.byte	0x19
	.uleb128 0x4a
	.4byte	.LASF331
	.4byte	.LASF331
	.byte	0x12
	.byte	0xd9
	.uleb128 0x4a
	.4byte	.LASF332
	.4byte	.LASF332
	.byte	0xd
	.byte	0x57
	.uleb128 0x4a
	.4byte	.LASF333
	.4byte	.LASF333
	.byte	0xd
	.byte	0x6b
	.uleb128 0x4a
	.4byte	.LASF334
	.4byte	.LASF334
	.byte	0xe
	.byte	0x9c
	.uleb128 0x49
	.4byte	.LASF335
	.4byte	.LASF335
	.byte	0xb
	.2byte	0x231
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LFE61
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL13
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL28
	.4byte	.LVL29-1
	.2byte	0x9
	.byte	0x3
	.4byte	s_config+28
	.byte	0x6
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30-1
	.2byte	0x9
	.byte	0x3
	.4byte	s_config+28
	.byte	0x6
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x9
	.byte	0x3
	.4byte	s_config+28
	.byte	0x6
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x9
	.byte	0x3
	.4byte	s_config+28
	.byte	0x6
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33-1
	.2byte	0x9
	.byte	0x3
	.4byte	s_config+28
	.byte	0x6
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x9
	.byte	0x3
	.4byte	s_config+28
	.byte	0x6
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE53
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL29
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL35
	.4byte	.LFE53
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL44
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL46
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL48
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL50
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL52
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL39
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL42
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL44
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL46
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL48
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL50
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL52
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL68
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL71
	.4byte	.LVL73-1
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL76
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL95
	.4byte	.LVL96-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL102
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL107
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL109
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x7
	.byte	0x7a
	.sleb128 1074266112
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL133
	.4byte	.LVL134-1
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL134-1
	.4byte	.LFE45
	.2byte	0x7
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -40
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL136
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL150
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL152
	.4byte	.LVL155-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL155-1
	.4byte	.LFE45
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL156
	.4byte	.LVL159
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL158
	.4byte	.LVL160-1
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL160-1
	.4byte	.LVL162
	.2byte	0x7
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL162
	.4byte	.LFE45
	.2byte	0x8
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL161
	.4byte	.LVL166
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL168
	.4byte	.LVL175
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL175
	.4byte	.LFE45
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL182
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
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL186
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
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL190
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL193
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL195
	.4byte	.LFE48
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL201
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL207
	.4byte	.LVL209
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL210
	.4byte	.LVL211
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL212
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL201
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL208
	.4byte	.LVL209
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LFE52
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL202
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL207
	.4byte	.LVL209
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL212
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL213
	.4byte	.LVL214
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL214
	.4byte	.LVL218
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL219
	.4byte	.LVL222
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL223
	.4byte	.LVL225
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL228
	.4byte	.LVL229
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL229
	.4byte	.LFE54
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL213
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL227
	.4byte	.LVL228
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL228
	.4byte	.LFE54
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL214
	.4byte	.LVL216-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL219
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL214
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL215
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL232
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL233
	.4byte	.LVL234
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL234
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL235
	.4byte	.LVL236
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL236
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL237
	.4byte	.LFE58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL239
	.4byte	.LVL240
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL241
	.4byte	.LVL242
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL245
	.4byte	.LVL246
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL247
	.4byte	.LVL248
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LVL250
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL251
	.4byte	.LVL252
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL253
	.4byte	.LVL254
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL256
	.4byte	.LVL257
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL258
	.4byte	.LVL259
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL261
	.4byte	.LVL269
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL261
	.4byte	.LVL262
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL262
	.4byte	.LVL266
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL267
	.4byte	.LVL269
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL261
	.4byte	.LVL262
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL262
	.4byte	.LVL269
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL263
	.4byte	.LVL264
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL264
	.4byte	.LVL265
	.2byte	0x13
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x30
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL262
	.4byte	.LVL268
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL270
	.4byte	.LVL271
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL271
	.4byte	.LVL272
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL272
	.4byte	.LVL273
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL273
	.4byte	.LFE60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xf4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB78
	.4byte	.LBE78
	.4byte	.LBB82
	.4byte	.LBE82
	.4byte	0
	.4byte	0
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF273:
	.string	"level"
.LASF317:
	.string	"rtc_vddsdio_get_config"
.LASF279:
	.string	"uart_num"
.LASF3:
	.string	"size_t"
.LASF215:
	.string	"ext1_rtc_gpio_mask"
.LASF293:
	.string	"rtc_gpio_desc"
.LASF22:
	.string	"sizetype"
.LASF180:
	.string	"RTC_WDT_STAGE_ACTION_RESET_CPU"
.LASF204:
	.string	"owner"
.LASF327:
	.string	"esp_timer_impl_advance"
.LASF129:
	.string	"UART0_TRIG"
.LASF337:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/sleep_modes.c"
.LASF331:
	.string	"vTaskExitCritical"
.LASF140:
	.string	"RTC_CPU_FREQ_SRC_XTAL"
.LASF16:
	.string	"int32_t"
.LASF194:
	.string	"pullup"
.LASF186:
	.string	"RTC_WDT_LENGTH_200ns"
.LASF108:
	.string	"SW_RESET"
.LASF309:
	.string	"set_rtc_memory_crc"
.LASF222:
	.string	"rtc_gpio_is_valid_gpio"
.LASF227:
	.string	"__func__"
.LASF322:
	.string	"rtc_wdt_set_stage"
.LASF278:
	.string	"esp_sleep_enable_uart_wakeup"
.LASF280:
	.string	"esp_sleep_get_wakeup_cause"
.LASF96:
	.string	"ESP_SLEEP_WAKEUP_UART"
.LASF147:
	.string	"freq_mhz"
.LASF148:
	.string	"rtc_cpu_freq_config_t"
.LASF97:
	.string	"esp_sleep_source_t"
.LASF76:
	.string	"ESP_EXT1_WAKEUP_ANY_HIGH"
.LASF281:
	.string	"wakeup_cause"
.LASF269:
	.string	"time_in_us"
.LASF112:
	.string	"TG0WDT_SYS_RESET"
.LASF271:
	.string	"esp_sleep_enable_touchpad_wakeup"
.LASF167:
	.string	"force"
.LASF223:
	.string	"gpio_num"
.LASF190:
	.string	"RTC_WDT_LENGTH_800ns"
.LASF303:
	.string	"rtc_clk_cpu_freq_set_xtal"
.LASF6:
	.string	"__uint8_t"
.LASF63:
	.string	"TOUCH_PAD_NUM0"
.LASF64:
	.string	"TOUCH_PAD_NUM1"
.LASF65:
	.string	"TOUCH_PAD_NUM2"
.LASF66:
	.string	"TOUCH_PAD_NUM3"
.LASF67:
	.string	"TOUCH_PAD_NUM4"
.LASF68:
	.string	"TOUCH_PAD_NUM5"
.LASF69:
	.string	"TOUCH_PAD_NUM6"
.LASF70:
	.string	"TOUCH_PAD_NUM7"
.LASF71:
	.string	"TOUCH_PAD_NUM8"
.LASF72:
	.string	"TOUCH_PAD_NUM9"
.LASF244:
	.string	"result"
.LASF83:
	.string	"esp_sleep_pd_domain_t"
.LASF21:
	.string	"long int"
.LASF133:
	.string	"BT_TRIG"
.LASF282:
	.string	"esp_sleep_get_touchpad_wakeup_status"
.LASF329:
	.string	"esp_timer_impl_unlock"
.LASF330:
	.string	"esp_dport_access_stall_other_cpu_end"
.LASF211:
	.string	"pd_options"
.LASF236:
	.string	"gpio"
.LASF297:
	.string	"ets_delay_us"
.LASF124:
	.string	"EXT_EVENT1_TRIG"
.LASF287:
	.string	"domain"
.LASF144:
	.string	"rtc_cpu_freq_src_t"
.LASF185:
	.string	"RTC_WDT_LENGTH_100ns"
.LASF274:
	.string	"esp_sleep_enable_ext1_wakeup"
.LASF179:
	.string	"RTC_WDT_STAGE_ACTION_INTERRUPT"
.LASF249:
	.string	"stored_crc"
.LASF5:
	.string	"signed char"
.LASF15:
	.string	"uint8_t"
.LASF262:
	.string	"frc_time_at_end"
.LASF341:
	.string	"esp_sleep_enable_ulp_wakeup"
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
.LASF203:
	.string	"rtc_gpio_desc_t"
.LASF128:
	.string	"MAC_TRIG"
.LASF254:
	.string	"new_stub"
.LASF118:
	.string	"RTCWDT_CPU_RESET"
.LASF312:
	.string	"esp_sync_counters_rtc_and_frc"
.LASF136:
	.string	"REJECT_INT"
.LASF7:
	.string	"unsigned char"
.LASF238:
	.string	"resume_uarts"
.LASF296:
	.string	"ets_update_cpu_frequency_rom"
.LASF292:
	.string	"_rtc_slow_length"
.LASF216:
	.string	"ext0_trigger_level"
.LASF106:
	.string	"NO_MEAN"
.LASF26:
	.string	"_Bool"
.LASF87:
	.string	"esp_sleep_pd_option_t"
.LASF93:
	.string	"ESP_SLEEP_WAKEUP_TOUCHPAD"
.LASF255:
	.string	"esp_deep_sleep_start"
.LASF192:
	.string	"RTC_WDT_LENGTH_3_2us"
.LASF24:
	.string	"char"
.LASF248:
	.string	"vddsdio_config"
.LASF115:
	.string	"INTRUSION_RESET"
.LASF159:
	.string	"dig_dbias_wak"
.LASF267:
	.string	"esp_sleep_disable_wakeup_source"
.LASF265:
	.string	"time_diff"
.LASF260:
	.string	"wdt_was_enabled"
.LASF334:
	.string	"rtc_get_reset_reason"
.LASF304:
	.string	"rtc_sleep_init"
.LASF161:
	.string	"rtc_dbias_wak"
.LASF145:
	.string	"source"
.LASF73:
	.string	"TOUCH_PAD_MAX"
.LASF139:
	.string	"RTC_TIME_VALID_INT"
.LASF78:
	.string	"ESP_PD_DOMAIN_RTC_PERIPH"
.LASF268:
	.string	"esp_sleep_enable_timer_wakeup"
.LASF173:
	.string	"rtc_vddsdio_config_t"
.LASF101:
	.string	"ESP_LOG_ERROR"
.LASF183:
	.string	"RTC_WDT_SYS_RESET_SIG"
.LASF311:
	.string	"rtc_time_get"
.LASF80:
	.string	"ESP_PD_DOMAIN_RTC_FAST_MEM"
.LASF178:
	.string	"RTC_WDT_STAGE_ACTION_OFF"
.LASF120:
	.string	"RTCWDT_BROWN_OUT_RESET"
.LASF272:
	.string	"esp_sleep_enable_ext0_wakeup"
.LASF251:
	.string	"stub_ptr"
.LASF74:
	.string	"touch_pad_t"
.LASF117:
	.string	"SW_CPU_RESET"
.LASF119:
	.string	"EXT_CPU_RESET"
.LASF163:
	.string	"lslp_meminf_pd"
.LASF232:
	.string	"rtc_gpio_num"
.LASF225:
	.string	"uart_no"
.LASF221:
	.string	"esp_ptr_executable"
.LASF122:
	.string	"NO_SLEEP"
.LASF156:
	.string	"rom_mem_pd_en"
.LASF191:
	.string	"RTC_WDT_LENGTH_1_6us"
.LASF298:
	.string	"__assert_func"
.LASF151:
	.string	"rtc_mem_inf_follow_cpu"
.LASF131:
	.string	"TOUCH_TRIG"
.LASF13:
	.string	"__uint64_t"
.LASF170:
	.string	"drefh"
.LASF23:
	.string	"long unsigned int"
.LASF172:
	.string	"drefl"
.LASF171:
	.string	"drefm"
.LASF242:
	.string	"cpu_freq_config"
.LASF226:
	.string	"status"
.LASF199:
	.string	"hold_force"
.LASF288:
	.string	"option"
.LASF229:
	.string	"flush_uarts"
.LASF174:
	.string	"RTC_WDT_STAGE0"
.LASF175:
	.string	"RTC_WDT_STAGE1"
.LASF176:
	.string	"RTC_WDT_STAGE2"
.LASF177:
	.string	"RTC_WDT_STAGE3"
.LASF62:
	.string	"gpio_num_t"
.LASF85:
	.string	"ESP_PD_OPTION_ON"
.LASF110:
	.string	"DEEPSLEEP_RESET"
.LASF257:
	.string	"light_sleep_lock"
.LASF326:
	.string	"rtc_time_slowclk_to_us"
.LASF328:
	.string	"esp_set_time_from_rtc"
.LASF14:
	.string	"__intptr_t"
.LASF81:
	.string	"ESP_PD_DOMAIN_XTAL"
.LASF285:
	.string	"gpio_mask"
.LASF132:
	.string	"SAR_TRIG"
.LASF10:
	.string	"__uint32_t"
.LASF4:
	.string	"_lock_t"
.LASF12:
	.string	"long long int"
.LASF294:
	.string	"s_light_sleep_wakeup"
.LASF202:
	.string	"rtc_num"
.LASF169:
	.string	"tieh"
.LASF168:
	.string	"enable"
.LASF196:
	.string	"slpsel"
.LASF237:
	.string	"rtc_pin"
.LASF306:
	.string	"rtc_clk_cpu_freq_set_config"
.LASF243:
	.string	"config"
.LASF125:
	.string	"GPIO_TRIG"
.LASF134:
	.string	"NO_INT"
.LASF86:
	.string	"ESP_PD_OPTION_AUTO"
.LASF307:
	.string	"rtc_vddsdio_set_config"
.LASF319:
	.string	"rtc_wdt_protect_off"
.LASF261:
	.string	"rtc_ticks_at_end"
.LASF25:
	.string	"esp_err_t"
.LASF275:
	.string	"mask"
.LASF164:
	.string	"vddsdio_pd_en"
.LASF37:
	.string	"GPIO_NUM_10"
.LASF38:
	.string	"GPIO_NUM_11"
.LASF39:
	.string	"GPIO_NUM_12"
.LASF40:
	.string	"GPIO_NUM_13"
.LASF41:
	.string	"GPIO_NUM_14"
.LASF42:
	.string	"GPIO_NUM_15"
.LASF43:
	.string	"GPIO_NUM_16"
.LASF44:
	.string	"GPIO_NUM_17"
.LASF45:
	.string	"GPIO_NUM_18"
.LASF46:
	.string	"GPIO_NUM_19"
.LASF61:
	.string	"GPIO_NUM_MAX"
.LASF79:
	.string	"ESP_PD_DOMAIN_RTC_SLOW_MEM"
.LASF336:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF266:
	.string	"esp_get_deep_sleep_wake_stub"
.LASF205:
	.string	"count"
.LASF123:
	.string	"EXT_EVENT0_TRIG"
.LASF198:
	.string	"hold"
.LASF1:
	.string	"unsigned int"
.LASF47:
	.string	"GPIO_NUM_21"
.LASF48:
	.string	"GPIO_NUM_22"
.LASF49:
	.string	"GPIO_NUM_23"
.LASF50:
	.string	"GPIO_NUM_25"
.LASF51:
	.string	"GPIO_NUM_26"
.LASF52:
	.string	"GPIO_NUM_27"
.LASF20:
	.string	"intptr_t"
.LASF89:
	.string	"ESP_SLEEP_WAKEUP_ALL"
.LASF335:
	.string	"touch_pad_get_wakeup_status"
.LASF165:
	.string	"xtal_fpu"
.LASF189:
	.string	"RTC_WDT_LENGTH_500ns"
.LASF256:
	.string	"esp_light_sleep_start"
.LASF239:
	.string	"timer_wakeup_prepare"
.LASF102:
	.string	"ESP_LOG_WARN"
.LASF234:
	.string	"ext1_wakeup_prepare"
.LASF116:
	.string	"TGWDT_CPU_RESET"
.LASF99:
	.string	"esp_deep_sleep_wake_stub_fn_t"
.LASF141:
	.string	"RTC_CPU_FREQ_SRC_PLL"
.LASF53:
	.string	"GPIO_NUM_32"
.LASF54:
	.string	"GPIO_NUM_33"
.LASF55:
	.string	"GPIO_NUM_34"
.LASF56:
	.string	"GPIO_NUM_35"
.LASF57:
	.string	"GPIO_NUM_36"
.LASF58:
	.string	"GPIO_NUM_37"
.LASF59:
	.string	"GPIO_NUM_38"
.LASF60:
	.string	"GPIO_NUM_39"
.LASF291:
	.string	"lock_rtc_memory_crc"
.LASF94:
	.string	"ESP_SLEEP_WAKEUP_ULP"
.LASF283:
	.string	"pad_num"
.LASF252:
	.string	"esp_default_wake_deep_sleep"
.LASF107:
	.string	"POWERON_RESET"
.LASF314:
	.string	"esp_timer_impl_lock"
.LASF201:
	.string	"drv_s"
.LASF200:
	.string	"drv_v"
.LASF245:
	.string	"esp_sleep_start"
.LASF75:
	.string	"ESP_EXT1_WAKEUP_ALL_LOW"
.LASF105:
	.string	"ESP_LOG_VERBOSE"
.LASF82:
	.string	"ESP_PD_DOMAIN_MAX"
.LASF155:
	.string	"wifi_pd_en"
.LASF130:
	.string	"UART1_TRIG"
.LASF300:
	.string	"rtc_time_us_to_slowclk"
.LASF220:
	.string	"sleep_config_t"
.LASF207:
	.string	"UART_NUM_0"
.LASF208:
	.string	"UART_NUM_1"
.LASF209:
	.string	"UART_NUM_2"
.LASF90:
	.string	"ESP_SLEEP_WAKEUP_EXT0"
.LASF91:
	.string	"ESP_SLEEP_WAKEUP_EXT1"
.LASF332:
	.string	"esp_log_timestamp"
.LASF0:
	.string	"long long unsigned int"
.LASF197:
	.string	"slpie"
.LASF264:
	.string	"frc_time_diff"
.LASF114:
	.string	"RTCWDT_SYS_RESET"
.LASF241:
	.string	"rtc_count_delta"
.LASF135:
	.string	"WAKEUP_INT"
.LASF95:
	.string	"ESP_SLEEP_WAKEUP_GPIO"
.LASF277:
	.string	"esp_sleep_enable_gpio_wakeup"
.LASF158:
	.string	"wdt_flashboot_mod_en"
.LASF100:
	.string	"ESP_LOG_NONE"
.LASF184:
	.string	"RTC_WDT_CPU_RESET_SIG"
.LASF188:
	.string	"RTC_WDT_LENGTH_400ns"
.LASF111:
	.string	"SDIO_RESET"
.LASF206:
	.string	"portMUX_TYPE"
.LASF305:
	.string	"rtc_sleep_start"
.LASF240:
	.string	"period"
.LASF103:
	.string	"ESP_LOG_INFO"
.LASF230:
	.string	"suspend_uarts"
.LASF258:
	.string	"frc_time_at_start"
.LASF98:
	.string	"esp_sleep_wakeup_cause_t"
.LASF310:
	.string	"_lock_release"
.LASF233:
	.string	"desc"
.LASF235:
	.string	"rtc_gpio_mask"
.LASF152:
	.string	"rtc_fastmem_pd_en"
.LASF157:
	.string	"deep_slp"
.LASF210:
	.string	"UART_NUM_MAX"
.LASF315:
	.string	"esp_timer_get_time"
.LASF340:
	.string	"uart_tx_wait_idle"
.LASF313:
	.string	"vTaskEnterCritical"
.LASF323:
	.string	"rtc_wdt_set_time"
.LASF127:
	.string	"SDIO_TRIG"
.LASF214:
	.string	"ext1_trigger_mode"
.LASF153:
	.string	"rtc_slowmem_pd_en"
.LASF253:
	.string	"esp_set_deep_sleep_wake_stub"
.LASF77:
	.string	"esp_sleep_ext1_wakeup_mode_t"
.LASF284:
	.string	"esp_sleep_get_ext1_wakeup_status"
.LASF321:
	.string	"rtc_wdt_set_length_of_reset_signal"
.LASF8:
	.string	"short int"
.LASF19:
	.string	"uint64_t"
.LASF276:
	.string	"mode"
.LASF193:
	.string	"func"
.LASF263:
	.string	"rtc_time_diff"
.LASF339:
	.string	"get_power_down_flags"
.LASF195:
	.string	"pulldown"
.LASF160:
	.string	"dig_dbias_slp"
.LASF109:
	.string	"OWDT_RESET"
.LASF231:
	.string	"ext0_wakeup_prepare"
.LASF162:
	.string	"rtc_dbias_slp"
.LASF301:
	.string	"rtc_sleep_set_wakeup_time"
.LASF181:
	.string	"RTC_WDT_STAGE_ACTION_RESET_SYSTEM"
.LASF320:
	.string	"rtc_wdt_disable"
.LASF259:
	.string	"vddsdio_pd_sleep_duration"
.LASF325:
	.string	"rtc_wdt_protect_on"
.LASF121:
	.string	"RTCWDT_RTC_RESET"
.LASF286:
	.string	"esp_sleep_pd_config"
.LASF182:
	.string	"RTC_WDT_STAGE_ACTION_RESET_RTC"
.LASF270:
	.string	"esp_deep_sleep"
.LASF104:
	.string	"ESP_LOG_DEBUG"
.LASF11:
	.string	"__int64_t"
.LASF113:
	.string	"TG1WDT_SYS_RESET"
.LASF318:
	.string	"rtc_wdt_is_on"
.LASF250:
	.string	"calc_crc"
.LASF219:
	.string	"rtc_ticks_at_sleep_start"
.LASF187:
	.string	"RTC_WDT_LENGTH_300ns"
.LASF17:
	.string	"uint32_t"
.LASF308:
	.string	"_lock_acquire"
.LASF149:
	.string	"lslp_mem_inf_fpu"
.LASF2:
	.string	"short unsigned int"
.LASF324:
	.string	"rtc_wdt_enable"
.LASF146:
	.string	"source_freq_mhz"
.LASF217:
	.string	"ext0_rtc_gpio_num"
.LASF290:
	.string	"s_config"
.LASF316:
	.string	"esp_dport_access_stall_other_cpu_start"
.LASF247:
	.string	"flash_enable_time_us"
.LASF9:
	.string	"__int32_t"
.LASF18:
	.string	"int64_t"
.LASF84:
	.string	"ESP_PD_OPTION_OFF"
.LASF212:
	.string	"sleep_duration"
.LASF92:
	.string	"ESP_SLEEP_WAKEUP_TIMER"
.LASF166:
	.string	"rtc_sleep_config_t"
.LASF150:
	.string	"rtc_mem_inf_fpu"
.LASF88:
	.string	"ESP_SLEEP_WAKEUP_UNDEFINED"
.LASF218:
	.string	"sleep_time_adjustment"
.LASF143:
	.string	"RTC_CPU_FREQ_SRC_APLL"
.LASF224:
	.string	"option_str"
.LASF137:
	.string	"SDIO_IDLE_INT"
.LASF333:
	.string	"esp_log_write"
.LASF213:
	.string	"wakeup_triggers"
.LASF246:
	.string	"esp_light_sleep_inner"
.LASF295:
	.string	"ets_get_detected_xtal_freq"
.LASF142:
	.string	"RTC_CPU_FREQ_SRC_8M"
.LASF126:
	.string	"TIMER_EXPIRE"
.LASF338:
	.string	"/home/raphael/rtone/lcd/build/esp32"
.LASF138:
	.string	"RTC_WDT_INT"
.LASF299:
	.string	"esp_clk_slowclk_cal_get"
.LASF228:
	.string	"pd_flags"
.LASF289:
	.string	"esp_deep_sleep_disable_rom_logging"
.LASF302:
	.string	"rtc_clk_cpu_freq_get_config"
.LASF154:
	.string	"rtc_peri_pd_en"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
