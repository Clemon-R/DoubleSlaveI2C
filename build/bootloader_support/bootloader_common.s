	.file	"bootloader_common.c"
	.text
.Ltext0:
	.section	.text.bootloader_common_ota_select_crc,"ax",@progbits
	.align	4
	.global	bootloader_common_ota_select_crc
	.type	bootloader_common_ota_select_crc, @function
bootloader_common_ota_select_crc:
.LFB7:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/src/bootloader_common.c"
	.loc 1 38 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 39 0
	movi.n	a12, 4
	mov.n	a11, a2
	movi.n	a10, -1
	call8	crc32_le
.LVL1:
	.loc 1 40 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LFE7:
	.size	bootloader_common_ota_select_crc, .-bootloader_common_ota_select_crc
	.section	.text.bootloader_common_ota_select_valid,"ax",@progbits
	.align	4
	.global	bootloader_common_ota_select_valid
	.type	bootloader_common_ota_select_valid, @function
bootloader_common_ota_select_valid:
.LFB8:
	.loc 1 43 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 44 0
	l32i.n	a8, a2, 0
	beqi	a8, -1, .L4
	.loc 1 44 0 is_stmt 0 discriminator 1
	l32i.n	a3, a2, 28
	mov.n	a10, a2
	call8	bootloader_common_ota_select_crc
.LVL4:
	bne	a3, a10, .L5
	.loc 1 44 0
	movi.n	a2, 1
.LVL5:
	retw.n
.LVL6:
.L4:
	movi.n	a2, 0
.LVL7:
	retw.n
.LVL8:
.L5:
	movi.n	a2, 0
.LVL9:
	.loc 1 45 0 is_stmt 1
	retw.n
.LFE8:
	.size	bootloader_common_ota_select_valid, .-bootloader_common_ota_select_valid
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.string	"\"(Cannot use SET_PERI_REG_MASK for DPORT registers use DPORT_SET_PERI_REG_MASK)\" && (!((((GPIO_PIN_MUX_REG[num_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[num_pin])) <= 0x3ff13FFC))"
	.align	4
.LC6:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/src/bootloader_common.c"
	.align	4
.LC8:
	.string	"\"(Cannot use WRITE_PERI_REG for DPORT registers use DPORT_WRITE_PERI_REG)\" && (!(((((GPIO_PIN_MUX_REG[num_pin]))) >= 0x3ff00000) && (((GPIO_PIN_MUX_REG[num_pin]))) <= 0x3ff13FFC))"
	.align	4
.LC10:
	.string	"\"(Cannot use READ_PERI_REG for DPORT registers use DPORT_READ_PERI_REG)\" && (!((((GPIO_PIN_MUX_REG[num_pin])) >= 0x3ff00000) && ((GPIO_PIN_MUX_REG[num_pin])) <= 0x3ff13FFC))"
	.section	.text.bootloader_common_check_long_hold_gpio,"ax",@progbits
	.literal_position
	.literal .LC0, GPIO_PIN_MUX_REG
	.literal .LC1, -1072693248
	.literal .LC2, 81916
	.literal .LC4, .LC3
	.literal .LC5, __func__$3750
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC12, 274877907
	.align	4
	.global	bootloader_common_check_long_hold_gpio
	.type	bootloader_common_check_long_hold_gpio, @function
bootloader_common_check_long_hold_gpio:
.LFB9:
	.loc 1 48 0
.LVL10:
	entry	sp, 32
.LCFI2:
	.loc 1 49 0
	extui	a5, a2, 0, 8
	mov.n	a10, a5
	call8	gpio_pad_select_gpio
.LVL11:
	.loc 1 50 0
	l32r	a4, .LC0
	addx4	a4, a2, a4
	l32i.n	a8, a4, 0
	beqz.n	a8, .L7
.LBB2:
	.loc 1 51 0
	l32r	a4, .LC1
	add.n	a4, a8, a4
	l32r	a9, .LC2
	bltu	a9, a4, .L8
	.loc 1 51 0 is_stmt 0 discriminator 1
	l32r	a13, .LC4
	l32r	a12, .LC5
	movi.n	a11, 0x33
	l32r	a10, .LC7
	call8	__assert_func
.LVL12:
.L8:
.LBB3:
	.loc 1 51 0 discriminator 2
	l32r	a9, .LC2
	bltu	a9, a4, .L9
	.loc 1 51 0 discriminator 3
	l32r	a13, .LC9
	l32r	a12, .LC5
	movi.n	a11, 0x33
	l32r	a10, .LC7
	call8	__assert_func
.LVL13:
.L9:
.LBB4:
	.loc 1 51 0 discriminator 4
	l32r	a9, .LC2
	bltu	a9, a4, .L10
	.loc 1 51 0 discriminator 5
	l32r	a13, .LC11
	l32r	a12, .LC5
	movi.n	a11, 0x33
	l32r	a10, .LC7
	call8	__assert_func
.LVL14:
.L10:
	.loc 1 51 0 discriminator 6
	memw
	l32i.n	a9, a8, 0
.LBE4:
	movi	a4, 0x200
	or	a4, a9, a4
	memw
	s32i.n	a4, a8, 0
.L7:
.LBE3:
.LBE2:
	.loc 1 53 0 is_stmt 1
	mov.n	a10, a5
	call8	gpio_pad_pullup
.LVL15:
	.loc 1 54 0
	call8	esp_log_early_timestamp
.LVL16:
	mov.n	a4, a10
.LVL17:
	.loc 1 55 0
	movi.n	a5, 0x1f
	bltu	a5, a2, .L11
	.loc 1 55 0 is_stmt 0 discriminator 1
	call8	gpio_input_get
.LVL18:
	ssr	a2
	srl	a10, a10
	extui	a10, a10, 0, 1
	j	.L12
.L11:
	.loc 1 55 0 discriminator 2
	call8	gpio_input_get_high
.LVL19:
	ssr	a2
	srl	a10, a10
	extui	a10, a10, 0, 1
.L12:
	.loc 1 55 0 discriminator 4
	bnez.n	a10, .L17
.L16:
	.loc 1 59 0 is_stmt 1
	movi.n	a8, 0x1f
	bltu	a8, a2, .L14
	.loc 1 59 0 is_stmt 0 discriminator 1
	call8	gpio_input_get
.LVL20:
	ssr	a2
	srl	a10, a10
	extui	a10, a10, 0, 1
	j	.L15
.L14:
	.loc 1 59 0 discriminator 2
	call8	gpio_input_get_high
.LVL21:
	ssr	a2
	srl	a10, a10
	extui	a10, a10, 0, 1
.L15:
	.loc 1 59 0 discriminator 4
	bnez.n	a10, .L18
	.loc 1 62 0 is_stmt 1
	call8	esp_log_early_timestamp
.LVL22:
	sub	a10, a10, a4
	l32r	a8, .LC12
	muluh	a10, a10, a8
	srli	a10, a10, 6
	bltu	a10, a3, .L16
	.loc 1 63 0
	movi.n	a2, 1
.LVL23:
	retw.n
.LVL24:
.L17:
	.loc 1 56 0
	movi.n	a2, 0
.LVL25:
	retw.n
.LVL26:
.L18:
	.loc 1 60 0
	movi.n	a2, -1
.LVL27:
	.loc 1 64 0
	retw.n
.LFE9:
	.size	bootloader_common_check_long_hold_gpio, .-bootloader_common_check_long_hold_gpio
	.section	.rodata.str1.4
	.align	4
.LC13:
	.string	", "
	.section	.text.bootloader_common_label_search,"ax",@progbits
	.literal_position
	.literal .LC14, .LC13
	.align	4
	.global	bootloader_common_label_search
	.type	bootloader_common_label_search, @function
bootloader_common_label_search:
.LFB10:
	.loc 1 68 0
.LVL28:
	entry	sp, 32
.LCFI3:
	mov.n	a5, a2
	.loc 1 69 0
	movi.n	a4, 1
	movi.n	a2, 0
.LVL29:
	mov.n	a6, a2
	moveqz	a6, a4, a5
	.loc 1 69 0
	movnez	a4, a2, a3
	or	a2, a4, a6
	.loc 1 69 0
	bnez.n	a2, .L25
	.loc 1 72 0
	mov.n	a11, a3
	mov.n	a10, a5
	call8	strstr
.LVL30:
	mov.n	a4, a10
.LVL31:
	.loc 1 73 0
	j	.L21
.L24:
.LBB5:
	.loc 1 77 0
	sub	a8, a4, a5
.LVL32:
	.loc 1 78 0
	beqz.n	a8, .L22
	.loc 1 78 0 is_stmt 0 discriminator 1
	add.n	a8, a5, a8
.LVL33:
	addi.n	a8, a8, -1
	l8ui	a8, a8, 0
	addi	a6, a8, -44
	movi.n	a11, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a11, a6
	mov.n	a6, a9
	addi	a9, a8, -32
	mov.n	a8, a10
	moveqz	a8, a11, a9
	or	a8, a6, a8
	beq	a8, a10, .L23
.L22:
.LBB6:
	.loc 1 80 0 is_stmt 1
	mov.n	a10, a3
	call8	strlen
.LVL34:
	.loc 1 81 0
	add.n	a10, a4, a10
.LVL35:
	l8ui	a10, a10, 0
	movi.n	a8, 1
	movi.n	a6, 0
	mov.n	a11, a6
	moveqz	a11, a8, a10
	addi	a9, a10, -44
	movnez	a8, a6, a9
	or	a8, a11, a8
	bne	a8, a6, .L26
	.loc 1 82 0
	beqi	a10, 32, .L27
.L23:
.LBE6:
	.loc 1 90 0
	l32r	a11, .LC14
	mov.n	a10, a4
	call8	strcspn
.LVL36:
	mov.n	a6, a10
.LVL37:
	.loc 1 91 0
	mov.n	a10, a4
	call8	strlen
.LVL38:
	beq	a6, a10, .L20
	.loc 1 94 0
	mov.n	a11, a3
	add.n	a10, a4, a6
	call8	strstr
.LVL39:
	mov.n	a4, a10
.LVL40:
.L21:
.LBE5:
	.loc 1 73 0
	bnez.n	a4, .L24
	retw.n
.LVL41:
.L25:
	.loc 1 70 0
	movi.n	a2, 0
	retw.n
.LVL42:
.L26:
.LBB8:
.LBB7:
	.loc 1 84 0
	mov.n	a2, a8
	retw.n
.L27:
	movi.n	a2, 1
.L20:
.LBE7:
.LBE8:
	.loc 1 97 0
	retw.n
.LFE10:
	.size	bootloader_common_label_search, .-bootloader_common_label_search
	.section	.rodata.str1.4
	.align	4
.LC15:
	.string	"no"
	.align	4
.LC17:
	.string	"yes"
	.align	4
.LC19:
	.string	"err"
	.align	4
.LC23:
	.string	"boot_comm"
	.align	4
.LC25:
	.string	"\033[0;31mE (%d) %s: bootloader_mmap(0x%x, 0x%x) failed\033[0m\n"
	.align	4
.LC27:
	.string	"\033[0;31mE (%d) %s: Failed to verify partition table\033[0m\n"
	.align	4
.LC29:
	.string	"\033[0;32mI (%d) %s: ## Label            Usage Offset   Length   Cleaned\033[0m\n"
	.align	4
.LC31:
	.string	"\033[0;32mI (%d) %s: %2d %-16s data  %08x %08x [%s]\033[0m\n"
	.section	.text.bootloader_common_erase_part_type_data,"ax",@progbits
	.literal_position
	.literal .LC16, .LC15
	.literal .LC18, .LC17
	.literal .LC20, .LC19
	.literal .LC21, 3072
	.literal .LC22, 32768
	.literal .LC24, .LC23
	.literal .LC26, .LC25
	.literal .LC28, .LC27
	.literal .LC30, .LC29
	.literal .LC32, .LC31
	.align	4
	.global	bootloader_common_erase_part_type_data
	.type	bootloader_common_erase_part_type_data, @function
bootloader_common_erase_part_type_data:
.LFB11:
	.loc 1 100 0
.LVL43:
	entry	sp, 96
.LCFI4:
	extui	a3, a3, 0, 8
	s32i.n	a3, sp, 52
.LVL44:
	.loc 1 107 0
	l32r	a11, .LC21
	l32r	a10, .LC22
	call8	bootloader_mmap
.LVL45:
	mov.n	a5, a10
.LVL46:
	.loc 1 108 0
	bnez.n	a10, .L29
	.loc 1 109 0 discriminator 2
	call8	esp_log_timestamp
.LVL47:
	l32r	a11, .LC24
	l32r	a2, .LC21
.LVL48:
	s32i.n	a2, sp, 0
	l32r	a15, .LC22
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC26
	movi.n	a10, 1
	call8	esp_log_write
.LVL49:
	.loc 1 110 0 discriminator 2
	movi.n	a2, 0
	retw.n
.LVL50:
.L29:
	.loc 1 114 0
	addi	a12, sp, 16
	movi.n	a11, 1
	call8	esp_partition_table_verify
.LVL51:
	.loc 1 115 0
	beqz.n	a10, .L31
	.loc 1 116 0 discriminator 2
	call8	esp_log_timestamp
.LVL52:
	l32r	a11, .LC24
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC28
	movi.n	a10, 1
	call8	esp_log_write
.LVL53:
	.loc 1 117 0 discriminator 2
	movi.n	a2, 0
.LVL54:
	s32i.n	a2, sp, 48
	j	.L32
.LVL55:
.L31:
	.loc 1 119 0 discriminator 9
	call8	esp_log_timestamp
.LVL56:
	l32r	a11, .LC24
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC30
	movi.n	a10, 3
	call8	esp_log_write
.LVL57:
.LBB9:
	.loc 1 120 0 discriminator 9
	movi.n	a4, 0
.LBE9:
	.loc 1 105 0 discriminator 9
	movi.n	a3, 1
.LVL58:
	s32i.n	a3, sp, 48
.LBB12:
	.loc 1 120 0 discriminator 9
	j	.L33
.LVL59:
.L38:
.LBB10:
	.loc 1 121 0
	slli	a3, a4, 5
	add.n	a3, a5, a3
.LVL60:
	.loc 1 122 0
	movi.n	a6, 0
	s32i.n	a6, sp, 20
	s32i.n	a6, sp, 24
	s32i.n	a6, sp, 28
	s32i.n	a6, sp, 32
	s8i	a6, sp, 36
	.loc 1 123 0
	l8ui	a6, a3, 2
	bnei	a6, 1, .L34
.LVL61:
.LBB11:
	.loc 1 125 0
	l32i.n	a6, sp, 52
	beqz.n	a6, .L39
	.loc 1 125 0 discriminator 1
	l8ui	a6, a3, 3
	beqz.n	a6, .L40
	.loc 1 124 0
	movi.n	a7, 0
	j	.L35
.L39:
	movi.n	a7, 0
	j	.L35
.L40:
	.loc 1 126 0
	movi.n	a7, 1
.L35:
.LVL62:
	.loc 1 129 0
	addi.n	a6, a3, 12
	movi.n	a12, 0x10
	mov.n	a11, a6
	addi	a10, sp, 20
	call8	strncpy
.LVL63:
	.loc 1 130 0
	bnez.n	a7, .L36
	.loc 1 130 0 discriminator 1
	addi	a11, sp, 20
	mov.n	a10, a2
	call8	bootloader_common_label_search
.LVL64:
	beqz.n	a10, .L41
.L36:
	.loc 1 131 0
	l32i.n	a11, a3, 8
	l32i.n	a10, a3, 4
	call8	bootloader_flash_erase_range
.LVL65:
	.loc 1 132 0
	beqz.n	a10, .L42
	.loc 1 133 0
	movi.n	a8, 0
	s32i.n	a8, sp, 48
.LVL66:
	.loc 1 134 0
	l32r	a7, .LC20
.LVL67:
	j	.L37
.LVL68:
.L41:
	.loc 1 139 0
	l32r	a7, .LC16
.LVL69:
	j	.L37
.LVL70:
.L42:
	.loc 1 136 0
	l32r	a7, .LC18
.LVL71:
.L37:
	.loc 1 142 0 discriminator 9
	call8	esp_log_timestamp
.LVL72:
	l32r	a11, .LC24
	s32i.n	a7, sp, 12
	l32i.n	a7, a3, 8
.LVL73:
	s32i.n	a7, sp, 8
	l32i.n	a3, a3, 4
.LVL74:
	s32i.n	a3, sp, 4
	s32i.n	a6, sp, 0
	mov.n	a15, a4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC32
	movi.n	a10, 3
	call8	esp_log_write
.LVL75:
.L34:
.LBE11:
.LBE10:
	.loc 1 120 0 discriminator 2
	addi.n	a4, a4, 1
.LVL76:
.L33:
	.loc 1 120 0 is_stmt 0 discriminator 1
	l32i.n	a3, sp, 16
	blt	a4, a3, .L38
.LVL77:
.L32:
.LBE12:
	.loc 1 148 0 is_stmt 1
	mov.n	a10, a5
	call8	bootloader_munmap
.LVL78:
	.loc 1 150 0
	l32i.n	a2, sp, 48
	.loc 1 151 0
	retw.n
.LFE11:
	.size	bootloader_common_erase_part_type_data, .-bootloader_common_erase_part_type_data
	.section	.text.bootloader_common_get_sha256_of_partition,"ax",@progbits
	.literal_position
	.literal .LC33, 8194
	.literal .LC34, .LC23
	.literal .LC35, .LC25
	.align	4
	.global	bootloader_common_get_sha256_of_partition
	.type	bootloader_common_get_sha256_of_partition, @function
bootloader_common_get_sha256_of_partition:
.LFB12:
	.loc 1 154 0
.LVL79:
	entry	sp, 320
.LCFI5:
	.loc 1 155 0
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a5
	.loc 1 155 0
	movnez	a8, a10, a3
	or	a8, a8, a9
	.loc 1 155 0
	bne	a8, a10, .L50
	.loc 1 159 0
	bne	a4, a10, .L45
.LBB13:
	.loc 1 160 0
	addi	a4, sp, 16
.LVL80:
	addmi	a11, a4, 0x100
	s32i.n	a2, a11, 0
	s32i.n	a3, a11, 4
	.loc 1 167 0
	mov.n	a12, a4
	movi.n	a10, 1
	call8	esp_image_verify
.LVL81:
	mov.n	a3, a10
.LVL82:
	bnez.n	a10, .L51
	.loc 1 170 0
	l8ui	a4, sp, 43
	beqz.n	a4, .L47
	.loc 1 171 0
	movi.n	a12, 0x20
	movi	a11, 0xe0
	addi	a2, sp, 16
.LVL83:
	add.n	a11, a2, a11
	mov.n	a10, a5
	call8	memcpy
.LVL84:
	.loc 1 172 0
	j	.L44
.LVL85:
.L47:
	.loc 1 175 0
	l32i	a3, sp, 236
.LVL86:
	j	.L45
.LVL87:
.L51:
	.loc 1 168 0
	l32r	a3, .LC33
	j	.L44
.LVL88:
.L45:
.LBE13:
	.loc 1 178 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	bootloader_mmap
.LVL89:
	mov.n	a4, a10
.LVL90:
	.loc 1 179 0
	bnez.n	a10, .L48
	.loc 1 180 0 discriminator 2
	call8	esp_log_timestamp
.LVL91:
	l32r	a11, .LC34
	s32i.n	a3, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC35
	movi.n	a10, 1
	call8	esp_log_write
.LVL92:
	.loc 1 181 0 discriminator 2
	movi.n	a3, -1
.LVL93:
	j	.L44
.LVL94:
.L48:
	.loc 1 183 0
	call8	bootloader_sha256_start
.LVL95:
	mov.n	a2, a10
.LVL96:
	.loc 1 184 0
	bnez.n	a10, .L49
	.loc 1 185 0
	mov.n	a10, a4
	call8	bootloader_munmap
.LVL97:
	.loc 1 186 0
	movi	a3, 0x101
.LVL98:
	j	.L44
.LVL99:
.L49:
	.loc 1 188 0
	mov.n	a12, a3
	mov.n	a11, a4
	call8	bootloader_sha256_data
.LVL100:
	.loc 1 189 0
	mov.n	a11, a5
	mov.n	a10, a2
	call8	bootloader_sha256_finish
.LVL101:
	.loc 1 191 0
	mov.n	a10, a4
	call8	bootloader_munmap
.LVL102:
	.loc 1 193 0
	movi.n	a3, 0
.LVL103:
	j	.L44
.LVL104:
.L50:
	.loc 1 156 0
	movi	a3, 0x102
.LVL105:
.L44:
	.loc 1 194 0
	mov.n	a2, a3
	retw.n
.LFE12:
	.size	bootloader_common_get_sha256_of_partition, .-bootloader_common_get_sha256_of_partition
	.section	.rodata.__func__$3750,"a",@progbits
	.align	4
	.type	__func__$3750, @object
	.size	__func__$3750, 39
__func__$3750:
	.string	"bootloader_common_check_long_hold_gpio"
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI0-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI1-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI2-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI3-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI4-.LFB11
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI5-.LFB12
	.byte	0xe
	.uleb128 0x140
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_flash_data_types.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include/bootloader_common.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include/esp_image_format.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include_bootloader/bootloader_sha.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/crc.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/gpio.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/string.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include/esp_flash_partitions.h"
	.file 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/gpio_periph.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbf1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0xc
	.4byte	.LASF117
	.4byte	.LASF118
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x19
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x31
	.4byte	0x33
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x7
	.4byte	0xb1
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc9
	.uleb128 0x8
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0xa9
	.4byte	0x89
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x18
	.4byte	0xe0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x1f
	.4byte	0x13d
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF28
	.uleb128 0xb
	.byte	0x20
	.byte	0x5
	.byte	0x1d
	.4byte	0x171
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x5
	.byte	0x1e
	.4byte	0xeb
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x5
	.byte	0x1f
	.4byte	0x171
	.byte	0x4
	.uleb128 0xd
	.string	"crc"
	.byte	0x5
	.byte	0x20
	.4byte	0xeb
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	0xca
	.4byte	0x181
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x17
	.byte	0
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x5
	.byte	0x21
	.4byte	0x144
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.byte	0x24
	.4byte	0x1ad
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x5
	.byte	0x25
	.4byte	0xeb
	.byte	0
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x5
	.byte	0x26
	.4byte	0xeb
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x5
	.byte	0x27
	.4byte	0x18c
	.uleb128 0xb
	.byte	0x20
	.byte	0x5
	.byte	0x2c
	.4byte	0x209
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x5
	.byte	0x2d
	.4byte	0xd5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x5
	.byte	0x2e
	.4byte	0xca
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x5
	.byte	0x2f
	.4byte	0xca
	.byte	0x3
	.uleb128 0xd
	.string	"pos"
	.byte	0x5
	.byte	0x30
	.4byte	0x1ad
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x5
	.byte	0x31
	.4byte	0x209
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x5
	.byte	0x32
	.4byte	0xeb
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	0xca
	.4byte	0x219
	.uleb128 0xf
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x5
	.byte	0x33
	.4byte	0x1b8
	.uleb128 0x9
	.byte	0x4
	.4byte	0x33
	.byte	0x7
	.byte	0x13
	.4byte	0x243
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF42
	.sleb128 -1
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x7
	.byte	0x17
	.4byte	0x224
	.uleb128 0xb
	.byte	0x18
	.byte	0x8
	.byte	0x3b
	.4byte	0x2d5
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x8
	.byte	0x3c
	.4byte	0xca
	.byte	0
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x8
	.byte	0x3d
	.4byte	0xca
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x8
	.byte	0x3f
	.4byte	0xca
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x8
	.byte	0x41
	.4byte	0xca
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x8
	.byte	0x43
	.4byte	0xca
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x8
	.byte	0x44
	.4byte	0xeb
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x8
	.byte	0x47
	.4byte	0xca
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x8
	.byte	0x49
	.4byte	0x2d5
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x8
	.byte	0x4b
	.4byte	0x2e5
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x8
	.byte	0x4f
	.4byte	0xca
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.4byte	0xca
	.4byte	0x2e5
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	0xca
	.4byte	0x2f5
	.uleb128 0xf
	.4byte	0x9b
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x8
	.byte	0x50
	.4byte	0x24e
	.uleb128 0xb
	.byte	0x8
	.byte	0x8
	.byte	0x57
	.4byte	0x321
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x8
	.byte	0x58
	.4byte	0xeb
	.byte	0
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x8
	.byte	0x59
	.4byte	0xeb
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0x8
	.byte	0x5a
	.4byte	0x300
	.uleb128 0x12
	.2byte	0x100
	.byte	0x8
	.byte	0x5f
	.4byte	0x37e
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x8
	.byte	0x60
	.4byte	0xeb
	.byte	0
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x8
	.byte	0x61
	.4byte	0x2f5
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x8
	.byte	0x62
	.4byte	0x37e
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x8
	.byte	0x63
	.4byte	0x38e
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x8
	.byte	0x64
	.4byte	0xeb
	.byte	0xdc
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x8
	.byte	0x65
	.4byte	0x39e
	.byte	0xe0
	.byte	0
	.uleb128 0xe
	.4byte	0x321
	.4byte	0x38e
	.uleb128 0xf
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.4byte	0xeb
	.4byte	0x39e
	.uleb128 0xf
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.4byte	0xca
	.4byte	0x3ae
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0x8
	.byte	0x66
	.4byte	0x32c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0x69
	.4byte	0x3d2
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x9
	.byte	0x1b
	.4byte	0xa2
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0x1
	.byte	0x25
	.4byte	0xeb
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41f
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0x25
	.4byte	0x41f
	.4byte	.LLST0
	.uleb128 0x15
	.4byte	.LVL1
	.4byte	0xb03
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x425
	.uleb128 0x7
	.4byte	0x181
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0x1
	.byte	0x2a
	.4byte	0x13d
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x461
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0x2a
	.4byte	0x41f
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	.LVL4
	.4byte	0x3dd
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0x1
	.byte	0x2f
	.4byte	0x243
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x59e
	.uleb128 0x17
	.4byte	.LASF71
	.byte	0x1
	.byte	0x2f
	.4byte	0xeb
	.4byte	.LLST2
	.uleb128 0x18
	.4byte	.LASF72
	.byte	0x1
	.byte	0x2f
	.4byte	0xeb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LASF119
	.4byte	0x5ae
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3750
	.uleb128 0x1a
	.4byte	.LASF75
	.byte	0x1
	.byte	0x36
	.4byte	0xeb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LVL11
	.4byte	0xb0e
	.4byte	0x4c6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL12
	.4byte	0xb19
	.4byte	0x4f5
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x33
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3750
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL13
	.4byte	0xb19
	.4byte	0x524
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x33
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3750
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL14
	.4byte	0xb19
	.4byte	0x553
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x33
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3750
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL15
	.4byte	0xb24
	.4byte	0x567
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL16
	.4byte	0xb30
	.uleb128 0x1c
	.4byte	.LVL18
	.4byte	0xb3b
	.uleb128 0x1c
	.4byte	.LVL19
	.4byte	0xb46
	.uleb128 0x1c
	.4byte	.LVL20
	.4byte	0xb3b
	.uleb128 0x1c
	.4byte	.LVL21
	.4byte	0xb46
	.uleb128 0x1c
	.4byte	.LVL22
	.4byte	0xb30
	.byte	0
	.uleb128 0xe
	.4byte	0xb1
	.4byte	0x5ae
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x26
	.byte	0
	.uleb128 0x7
	.4byte	0x59e
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0x1
	.byte	0x43
	.4byte	0x13d
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a9
	.uleb128 0x17
	.4byte	.LASF74
	.byte	0x1
	.byte	0x43
	.4byte	0xb8
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LASF38
	.byte	0x1
	.byte	0x43
	.4byte	0xab
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF76
	.byte	0x1
	.byte	0x48
	.4byte	0xb8
	.4byte	.LLST4
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0
	.4byte	0x692
	.uleb128 0x1d
	.4byte	.LASF77
	.byte	0x1
	.byte	0x4d
	.4byte	0x33
	.4byte	.LLST5
	.uleb128 0x1d
	.4byte	.LASF78
	.byte	0x1
	.byte	0x5a
	.4byte	0x33
	.4byte	.LLST6
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x647
	.uleb128 0x1d
	.4byte	.LASF79
	.byte	0x1
	.byte	0x50
	.4byte	0x33
	.4byte	.LLST7
	.uleb128 0x15
	.4byte	.LVL34
	.4byte	0xb51
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL36
	.4byte	0xb5c
	.4byte	0x664
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL38
	.4byte	0xb51
	.4byte	0x678
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL39
	.4byte	0xb67
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL30
	.4byte	0xb67
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x1
	.byte	0x63
	.4byte	0x13d
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x90d
	.uleb128 0x17
	.4byte	.LASF81
	.byte	0x1
	.byte	0x63
	.4byte	0xb8
	.4byte	.LLST8
	.uleb128 0x17
	.4byte	.LASF82
	.byte	0x1
	.byte	0x63
	.4byte	0x13d
	.4byte	.LLST9
	.uleb128 0x1a
	.4byte	.LASF83
	.byte	0x1
	.byte	0x65
	.4byte	0x90d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1d
	.4byte	.LASF84
	.byte	0x1
	.byte	0x66
	.4byte	0xb8
	.4byte	.LLST10
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x67
	.4byte	0x101
	.4byte	.LLST11
	.uleb128 0x1a
	.4byte	.LASF85
	.byte	0x1
	.byte	0x68
	.4byte	0x33
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.string	"ret"
	.byte	0x1
	.byte	0x69
	.4byte	0x13d
	.4byte	.LLST12
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x813
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0x78
	.4byte	0x33
	.4byte	.LLST13
	.uleb128 0x20
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x1d
	.4byte	.LASF86
	.byte	0x1
	.byte	0x79
	.4byte	0x90d
	.4byte	.LLST14
	.uleb128 0x1a
	.4byte	.LASF38
	.byte	0x1
	.byte	0x7a
	.4byte	0x918
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x20
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x1d
	.4byte	.LASF87
	.byte	0x1
	.byte	0x7c
	.4byte	0x13d
	.4byte	.LLST15
	.uleb128 0x1b
	.4byte	.LVL63
	.4byte	0xb72
	.4byte	0x79e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL64
	.4byte	0x5b3
	.4byte	0x7b9
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL65
	.4byte	0xb7d
	.uleb128 0x1c
	.4byte	.LVL72
	.4byte	0xb88
	.uleb128 0x15
	.4byte	.LVL75
	.4byte	0xb93
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL45
	.4byte	0xb9e
	.4byte	0x82f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x8000
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc00
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL47
	.4byte	0xb88
	.uleb128 0x1b
	.4byte	.LVL49
	.4byte	0xb93
	.4byte	0x874
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0xa
	.2byte	0x8000
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL51
	.4byte	0xba9
	.4byte	0x88e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL52
	.4byte	0xb88
	.uleb128 0x1b
	.4byte	.LVL53
	.4byte	0xb93
	.4byte	0x8c5
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL56
	.4byte	0xb88
	.uleb128 0x1b
	.4byte	.LVL57
	.4byte	0xb93
	.4byte	0x8fc
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x15
	.4byte	.LVL78
	.4byte	0xbb4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x913
	.uleb128 0x7
	.4byte	0x219
	.uleb128 0xe
	.4byte	0xb1
	.4byte	0x928
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x1
	.byte	0x99
	.4byte	0x101
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xac1
	.uleb128 0x17
	.4byte	.LASF89
	.byte	0x1
	.byte	0x99
	.4byte	0xeb
	.4byte	.LLST16
	.uleb128 0x17
	.4byte	.LASF33
	.byte	0x1
	.byte	0x99
	.4byte	0xeb
	.4byte	.LLST17
	.uleb128 0x17
	.4byte	.LASF36
	.byte	0x1
	.byte	0x99
	.4byte	0x33
	.4byte	.LLST18
	.uleb128 0x18
	.4byte	.LASF90
	.byte	0x1
	.byte	0x99
	.4byte	0xac1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1d
	.4byte	.LASF91
	.byte	0x1
	.byte	0xb2
	.4byte	0xc3
	.4byte	.LLST19
	.uleb128 0x1d
	.4byte	.LASF92
	.byte	0x1
	.byte	0xb7
	.4byte	0x3d2
	.4byte	.LLST20
	.uleb128 0x21
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0xa01
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0x1
	.byte	0xa0
	.4byte	0xac7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.4byte	.LASF94
	.byte	0x1
	.byte	0xa4
	.4byte	0x3ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1b
	.4byte	.LVL81
	.4byte	0xbbf
	.4byte	0x9e3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x74
	.sleb128 256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL84
	.4byte	0xbca
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 224
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL89
	.4byte	0xb9e
	.4byte	0xa1b
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL91
	.4byte	0xb88
	.uleb128 0x1b
	.4byte	.LVL92
	.4byte	0xb93
	.4byte	0xa5f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL95
	.4byte	0xbd3
	.uleb128 0x1b
	.4byte	.LVL97
	.4byte	0xbb4
	.4byte	0xa7c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL100
	.4byte	0xbde
	.4byte	0xa96
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL101
	.4byte	0xbe9
	.4byte	0xab0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL102
	.4byte	0xbb4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xca
	.uleb128 0x7
	.4byte	0x1ad
	.uleb128 0x22
	.string	"TAG"
	.byte	0x1
	.byte	0x23
	.4byte	0xade
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC23
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xb8
	.uleb128 0xe
	.4byte	0xeb
	.4byte	0xaf3
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x27
	.byte	0
	.uleb128 0x23
	.4byte	.LASF120
	.byte	0x10
	.byte	0x19
	.4byte	0xafe
	.uleb128 0x7
	.4byte	0xae3
	.uleb128 0x24
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0xa
	.byte	0x33
	.uleb128 0x24
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xb
	.byte	0xf6
	.uleb128 0x24
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0xc
	.byte	0x29
	.uleb128 0x25
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0xb
	.2byte	0x10a
	.uleb128 0x24
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x6
	.byte	0x61
	.uleb128 0x24
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0xb
	.byte	0x79
	.uleb128 0x24
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0xb
	.byte	0x82
	.uleb128 0x24
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0xd
	.byte	0x21
	.uleb128 0x24
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0xd
	.byte	0x1f
	.uleb128 0x24
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0xd
	.byte	0x28
	.uleb128 0x24
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0xd
	.byte	0x24
	.uleb128 0x24
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0xe
	.byte	0x70
	.uleb128 0x24
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0x6
	.byte	0x57
	.uleb128 0x24
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x6
	.byte	0x6b
	.uleb128 0x24
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0xe
	.byte	0x32
	.uleb128 0x24
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0xf
	.byte	0x26
	.uleb128 0x24
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0xe
	.byte	0x3a
	.uleb128 0x24
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0x8
	.byte	0xa8
	.uleb128 0x26
	.4byte	.LASF121
	.4byte	.LASF121
	.uleb128 0x24
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x9
	.byte	0x1d
	.uleb128 0x24
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0x9
	.byte	0x1f
	.uleb128 0x24
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0x9
	.byte	0x21
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
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL6
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
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL31
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL42
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL33
	.4byte	.LVL40
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE10
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL43
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL43
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58
	.4byte	.LFE11
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL73
	.4byte	.LVL75-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -84
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL44
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL68
	.4byte	.LFE11
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL60
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x3
	.byte	0x76
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL79
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
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
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL79
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL82
	.4byte	.LVL86
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL94
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL99
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL80
	.4byte	.LVL104
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL105
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL90
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL96
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
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
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF116:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF102:
	.string	"strlen"
.LASF58:
	.string	"start_addr"
.LASF65:
	.string	"ESP_IMAGE_VERIFY"
.LASF42:
	.string	"GPIO_SHORT_HOLD"
.LASF39:
	.string	"flags"
.LASF92:
	.string	"sha_handle"
.LASF97:
	.string	"__assert_func"
.LASF43:
	.string	"GPIO_NOT_HOLD"
.LASF0:
	.string	"unsigned int"
.LASF79:
	.string	"len_label"
.LASF7:
	.string	"__int32_t"
.LASF47:
	.string	"spi_speed"
.LASF107:
	.string	"esp_log_timestamp"
.LASF101:
	.string	"gpio_input_get_high"
.LASF57:
	.string	"esp_image_segment_header_t"
.LASF120:
	.string	"GPIO_PIN_MUX_REG"
.LASF111:
	.string	"bootloader_munmap"
.LASF11:
	.string	"__intptr_t"
.LASF44:
	.string	"esp_comm_gpio_hold_t"
.LASF54:
	.string	"esp_image_header_t"
.LASF74:
	.string	"list"
.LASF30:
	.string	"seq_label"
.LASF19:
	.string	"uint32_t"
.LASF48:
	.string	"spi_size"
.LASF103:
	.string	"strcspn"
.LASF10:
	.string	"long long unsigned int"
.LASF105:
	.string	"strncpy"
.LASF87:
	.string	"fl_ota_data_erase"
.LASF100:
	.string	"gpio_input_get"
.LASF6:
	.string	"__uint16_t"
.LASF82:
	.string	"ota_data_erase"
.LASF118:
	.string	"/home/raphael/rtone/lcd/build/bootloader_support"
.LASF24:
	.string	"ESP_LOG_WARN"
.LASF72:
	.string	"delay_sec"
.LASF40:
	.string	"esp_partition_info_t"
.LASF32:
	.string	"offset"
.LASF78:
	.string	"pos_delim"
.LASF28:
	.string	"_Bool"
.LASF62:
	.string	"image_len"
.LASF22:
	.string	"ESP_LOG_NONE"
.LASF80:
	.string	"bootloader_common_erase_part_type_data"
.LASF63:
	.string	"image_digest"
.LASF15:
	.string	"char"
.LASF94:
	.string	"data"
.LASF64:
	.string	"esp_image_metadata_t"
.LASF16:
	.string	"uint8_t"
.LASF73:
	.string	"bootloader_common_label_search"
.LASF31:
	.string	"esp_ota_select_entry_t"
.LASF85:
	.string	"num_partitions"
.LASF99:
	.string	"esp_log_early_timestamp"
.LASF9:
	.string	"long long int"
.LASF60:
	.string	"segments"
.LASF86:
	.string	"partition"
.LASF68:
	.string	"bootloader_common_ota_select_crc"
.LASF90:
	.string	"out_sha_256"
.LASF96:
	.string	"gpio_pad_select_gpio"
.LASF33:
	.string	"size"
.LASF67:
	.string	"bootloader_sha256_handle_t"
.LASF25:
	.string	"ESP_LOG_INFO"
.LASF59:
	.string	"image"
.LASF115:
	.string	"bootloader_sha256_finish"
.LASF81:
	.string	"list_erase"
.LASF108:
	.string	"esp_log_write"
.LASF70:
	.string	"bootloader_common_check_long_hold_gpio"
.LASF20:
	.string	"intptr_t"
.LASF17:
	.string	"uint16_t"
.LASF37:
	.string	"subtype"
.LASF109:
	.string	"bootloader_mmap"
.LASF56:
	.string	"data_len"
.LASF84:
	.string	"marker"
.LASF13:
	.string	"sizetype"
.LASF4:
	.string	"short int"
.LASF88:
	.string	"bootloader_common_get_sha256_of_partition"
.LASF12:
	.string	"long int"
.LASF55:
	.string	"load_addr"
.LASF46:
	.string	"spi_mode"
.LASF110:
	.string	"esp_partition_table_verify"
.LASF93:
	.string	"partition_pos"
.LASF76:
	.string	"sub_list_start_like_label"
.LASF66:
	.string	"ESP_IMAGE_VERIFY_SILENT"
.LASF5:
	.string	"__uint8_t"
.LASF91:
	.string	"partition_bin"
.LASF75:
	.string	"tm_start"
.LASF35:
	.string	"magic"
.LASF50:
	.string	"wp_pin"
.LASF77:
	.string	"idx_first"
.LASF117:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/src/bootloader_common.c"
.LASF14:
	.string	"long unsigned int"
.LASF89:
	.string	"address"
.LASF61:
	.string	"segment_data"
.LASF27:
	.string	"ESP_LOG_VERBOSE"
.LASF104:
	.string	"strstr"
.LASF18:
	.string	"int32_t"
.LASF83:
	.string	"partitions"
.LASF106:
	.string	"bootloader_flash_erase_range"
.LASF36:
	.string	"type"
.LASF3:
	.string	"unsigned char"
.LASF8:
	.string	"__uint32_t"
.LASF114:
	.string	"bootloader_sha256_data"
.LASF71:
	.string	"num_pin"
.LASF21:
	.string	"esp_err_t"
.LASF53:
	.string	"hash_appended"
.LASF51:
	.string	"spi_pin_drv"
.LASF38:
	.string	"label"
.LASF26:
	.string	"ESP_LOG_DEBUG"
.LASF41:
	.string	"GPIO_LONG_HOLD"
.LASF98:
	.string	"gpio_pad_pullup"
.LASF95:
	.string	"crc32_le"
.LASF113:
	.string	"bootloader_sha256_start"
.LASF2:
	.string	"signed char"
.LASF1:
	.string	"short unsigned int"
.LASF121:
	.string	"memcpy"
.LASF49:
	.string	"entry_addr"
.LASF119:
	.string	"__func__"
.LASF52:
	.string	"reserved"
.LASF69:
	.string	"bootloader_common_ota_select_valid"
.LASF34:
	.string	"esp_partition_pos_t"
.LASF112:
	.string	"esp_image_verify"
.LASF29:
	.string	"ota_seq"
.LASF23:
	.string	"ESP_LOG_ERROR"
.LASF45:
	.string	"segment_count"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
