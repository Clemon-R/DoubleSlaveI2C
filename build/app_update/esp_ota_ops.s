	.file	"esp_ota_ops.c"
	.text
.Ltext0:
	.section	.text.is_ota_partition,"ax",@progbits
	.align	4
	.type	is_ota_partition, @function
is_ota_partition:
.LFB26:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/app_update/esp_ota_ops.c"
	.loc 1 73 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 77 0
	beqz.n	a2, .L3
	.loc 1 75 0
	l32i.n	a8, a2, 0
	bnez.n	a8, .L4
	.loc 1 76 0
	l32i.n	a2, a2, 4
.LVL1:
	movi.n	a8, 0xf
	bgeu	a8, a2, .L5
	.loc 1 77 0 discriminator 3
	movi.n	a8, 0x1f
	bgeu	a8, a2, .L6
	.loc 1 77 0 is_stmt 0
	movi.n	a2, 0
	retw.n
.LVL2:
.L3:
	movi.n	a2, 0
.LVL3:
	retw.n
.LVL4:
.L4:
	movi.n	a2, 0
.LVL5:
	retw.n
.L5:
	movi.n	a2, 0
	retw.n
.L6:
	movi.n	a2, 1
	.loc 1 78 0 is_stmt 1
	retw.n
.LFE26:
	.size	is_ota_partition, .-is_ota_partition
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"ota_app_count < 16 && \"must erase the partition before writing to it\""
	.align	4
.LC3:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/app_update/esp_ota_ops.c"
	.section	.text.get_ota_partition_count,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$5703
	.literal .LC4, .LC3
	.align	4
	.type	get_ota_partition_count, @function
get_ota_partition_count:
.LFB33:
	.loc 1 278 0
	entry	sp, 32
.LCFI1:
.LVL6:
	.loc 1 279 0
	movi.n	a2, 0
	.loc 1 280 0
	j	.L8
.LVL7:
.L10:
	.loc 1 281 0
	movi.n	a8, 0xf
	bgeu	a8, a2, .L9
	.loc 1 281 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi	a11, 0x119
	l32r	a10, .LC4
	call8	__assert_func
.LVL8:
.L9:
	.loc 1 282 0 is_stmt 1
	addi.n	a2, a2, 1
.LVL9:
	extui	a2, a2, 0, 16
.LVL10:
.L8:
	.loc 1 280 0
	movi.n	a12, 0
	addi	a11, a2, 16
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL11:
	bnez.n	a10, .L10
	.loc 1 285 0
	extui	a2, a2, 0, 8
.LVL12:
	retw.n
.LFE33:
	.size	get_ota_partition_count, .-get_ota_partition_count
	.section	.rodata.str1.4
	.align	4
.LC5:
	.string	"esp_ota_ops"
	.align	4
.LC7:
	.string	"\033[0;31mE (%d) %s: invalid partition table, no app partitions\033[0m\n"
	.section	.text.find_default_boot_partition,"ax",@progbits
	.literal_position
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.align	4
	.type	find_default_boot_partition, @function
find_default_boot_partition:
.LFB36:
	.loc 1 409 0
	entry	sp, 32
.LCFI2:
	.loc 1 413 0
	movi.n	a12, 0
	mov.n	a11, a12
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL13:
	.loc 1 414 0
	bnez.n	a10, .L15
	movi.n	a2, 0x10
	j	.L13
.LVL14:
.L14:
.LBB7:
	.loc 1 420 0
	movi.n	a12, 0
	mov.n	a11, a2
	mov.n	a10, a12
.LVL15:
	call8	esp_partition_find_first
.LVL16:
	.loc 1 421 0
	bnez.n	a10, .L16
	.loc 1 419 0 discriminator 2
	addi.n	a2, a2, 1
.LVL17:
.L13:
	.loc 1 419 0 is_stmt 0 discriminator 1
	bnei	a2, 32, .L14
.LBE7:
	.loc 1 427 0 is_stmt 1
	movi.n	a12, 0
	movi.n	a11, 0x20
	mov.n	a10, a12
.LVL18:
	call8	esp_partition_find_first
.LVL19:
	.loc 1 428 0
	bnez.n	a10, .L17
	.loc 1 432 0 discriminator 2
	call8	esp_log_timestamp
.LVL20:
	l32r	a11, .LC6
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC8
	movi.n	a10, 1
	call8	esp_log_write
.LVL21:
	.loc 1 433 0 discriminator 2
	movi.n	a2, 0
.LVL22:
	retw.n
.LVL23:
.L15:
	.loc 1 415 0
	mov.n	a2, a10
	retw.n
.LVL24:
.L16:
.LBB8:
	.loc 1 422 0
	mov.n	a2, a10
.LVL25:
	retw.n
.LVL26:
.L17:
.LBE8:
	.loc 1 429 0
	mov.n	a2, a10
.LVL27:
	.loc 1 434 0
	retw.n
.LFE36:
	.size	find_default_boot_partition, .-find_default_boot_partition
	.section	.text.ota_select_crc,"ax",@progbits
	.align	4
	.type	ota_select_crc, @function
ota_select_crc:
.LFB30:
	.loc 1 250 0
.LVL28:
	entry	sp, 32
.LCFI3:
	.loc 1 251 0
	movi.n	a12, 4
	mov.n	a11, a2
	movi.n	a10, -1
	call8	crc32_le
.LVL29:
	.loc 1 252 0
	mov.n	a2, a10
.LVL30:
	retw.n
.LFE30:
	.size	ota_select_crc, .-ota_select_crc
	.section	.text.ota_select_valid,"ax",@progbits
	.align	4
	.type	ota_select_valid, @function
ota_select_valid:
.LFB31:
	.loc 1 255 0
.LVL31:
	entry	sp, 32
.LCFI4:
	.loc 1 256 0
	l32i.n	a8, a2, 0
	beqi	a8, -1, .L21
	.loc 1 256 0 is_stmt 0 discriminator 1
	l32i.n	a3, a2, 28
	mov.n	a10, a2
	call8	ota_select_crc
.LVL32:
	bne	a3, a10, .L22
	.loc 1 256 0
	movi.n	a2, 1
.LVL33:
	retw.n
.LVL34:
.L21:
	movi.n	a2, 0
.LVL35:
	retw.n
.LVL36:
.L22:
	movi.n	a2, 0
.LVL37:
	.loc 1 257 0 is_stmt 1
	retw.n
.LFE31:
	.size	ota_select_valid, .-ota_select_valid
	.section	.text.rewrite_ota_seq,"ax",@progbits
	.literal_position
	.literal .LC9, s_ota_select
	.literal .LC10, 4096
	.align	4
	.type	rewrite_ota_seq, @function
rewrite_ota_seq:
.LFB32:
	.loc 1 260 0
.LVL38:
	entry	sp, 32
.LCFI5:
	.loc 1 263 0
	bgeui	a3, 2, .L25
	.loc 1 264 0
	slli	a5, a3, 5
	l32r	a8, .LC9
	add.n	a5, a8, a5
	s32i.n	a2, a5, 0
	.loc 1 265 0
	mov.n	a10, a5
	call8	ota_select_crc
.LVL39:
	s32i.n	a10, a5, 28
	.loc 1 266 0
	slli	a2, a3, 12
.LVL40:
	l32r	a12, .LC10
	mov.n	a11, a2
	mov.n	a10, a4
	call8	esp_partition_erase_range
.LVL41:
	.loc 1 267 0
	bnez.n	a10, .L26
	.loc 1 270 0
	slli	a3, a3, 5
.LVL42:
	movi.n	a13, 0x20
	l32r	a12, .LC9
	add.n	a12, a12, a3
	mov.n	a11, a2
	mov.n	a10, a4
.LVL43:
	call8	esp_partition_write
.LVL44:
	mov.n	a2, a10
	retw.n
.LVL45:
.L25:
	.loc 1 273 0
	movi	a2, 0x102
.LVL46:
	retw.n
.LVL47:
.L26:
	.loc 1 268 0
	mov.n	a2, a10
	.loc 1 275 0
	retw.n
.LFE32:
	.size	rewrite_ota_seq, .-rewrite_ota_seq
	.section	.text.esp_rewrite_ota_data,"ax",@progbits
	.literal_position
	.literal .LC11, s_ota_select
	.literal .LC12, s_ota_select+32
	.align	4
	.type	esp_rewrite_ota_data, @function
esp_rewrite_ota_data:
.LFB34:
	.loc 1 288 0
.LVL48:
	entry	sp, 48
.LCFI6:
.LVL49:
	.loc 1 295 0
	movi.n	a11, 0
	s32i.n	a11, sp, 4
	.loc 1 297 0
	mov.n	a12, a11
	movi.n	a10, 1
	call8	esp_partition_find_first
.LVL50:
	mov.n	a3, a10
.LVL51:
	.loc 1 298 0
	beqz.n	a10, .L39
	.loc 1 299 0
	call8	get_ota_partition_count
.LVL52:
	.loc 1 315 0
	extui	a2, a2, 0, 4
.LVL53:
	mov.n	a4, a10
	bgeu	a2, a10, .L40
	.loc 1 319 0
	mov.n	a15, sp
	addi.n	a14, sp, 4
	movi.n	a13, 0
	l32i.n	a12, a3, 12
	mov.n	a11, a13
	mov.n	a10, a3
.LVL54:
	call8	esp_partition_mmap
.LVL55:
	.loc 1 320 0
	bnez.n	a10, .L41
	.loc 1 324 0
	l32i.n	a6, sp, 4
	l32r	a5, .LC11
	movi.n	a7, 0x20
	mov.n	a12, a7
	mov.n	a11, a6
	mov.n	a10, a5
.LVL56:
	call8	memcpy
.LVL57:
	.loc 1 325 0
	mov.n	a12, a7
	addmi	a11, a6, 0x1000
	l32r	a10, .LC12
	call8	memcpy
.LVL58:
	.loc 1 326 0
	l32i.n	a10, sp, 0
	call8	spi_flash_munmap
.LVL59:
	.loc 1 329 0
	mov.n	a10, a5
	call8	ota_select_valid
.LVL60:
	beqz.n	a10, .L29
	.loc 1 329 0 is_stmt 0 discriminator 1
	l32r	a10, .LC12
	call8	ota_select_valid
.LVL61:
	beqz.n	a10, .L29
	.loc 1 330 0 is_stmt 1
	l32r	a5, .LC11
	l32i.n	a6, a5, 0
	l32i.n	a5, a5, 32
	maxu	a11, a6, a5
.LVL62:
	.loc 1 292 0
	movi.n	a9, 0
	.loc 1 331 0
	j	.L30
.LVL63:
.L31:
	.loc 1 332 0
	addi.n	a9, a9, 1
.LVL64:
.L30:
	.loc 1 331 0
	addi.n	a10, a2, 1
	remu	a10, a10, a4
	mull	a8, a9, a4
	add.n	a10, a10, a8
	bltu	a10, a11, .L31
	.loc 1 335 0
	bltu	a6, a5, .L32
	.loc 1 336 0
	mov.n	a12, a3
	movi.n	a11, 1
.LVL65:
	call8	rewrite_ota_seq
.LVL66:
	mov.n	a2, a10
	retw.n
.LVL67:
.L32:
	.loc 1 338 0
	mov.n	a12, a3
	movi.n	a11, 0
.LVL68:
	call8	rewrite_ota_seq
.LVL69:
	mov.n	a2, a10
	retw.n
.LVL70:
.L29:
	.loc 1 341 0
	l32r	a10, .LC11
	call8	ota_select_valid
.LVL71:
	bnez.n	a10, .L42
	j	.L44
.LVL72:
.L35:
	.loc 1 343 0
	addi.n	a9, a9, 1
.LVL73:
	j	.L33
.LVL74:
.L42:
	movi.n	a9, 0
.LVL75:
.L33:
	.loc 1 342 0
	l32r	a8, .LC11
	l32i.n	a11, a8, 0
	addi.n	a10, a2, 1
	remu	a10, a10, a4
	mull	a8, a9, a4
	add.n	a10, a10, a8
	bltu	a10, a11, .L35
	.loc 1 345 0
	mov.n	a12, a3
	movi.n	a11, 1
	call8	rewrite_ota_seq
.LVL76:
	mov.n	a2, a10
	retw.n
.LVL77:
.L44:
	.loc 1 347 0
	l32r	a10, .LC12
	call8	ota_select_valid
.LVL78:
	bnez.n	a10, .L43
	j	.L45
.LVL79:
.L38:
	.loc 1 349 0
	addi.n	a9, a9, 1
.LVL80:
	j	.L36
.LVL81:
.L43:
	movi.n	a9, 0
.LVL82:
.L36:
	.loc 1 348 0
	l32r	a8, .LC11
	l32i.n	a11, a8, 32
	addi.n	a10, a2, 1
	remu	a10, a10, a4
	mull	a8, a9, a4
	add.n	a10, a10, a8
	bltu	a10, a11, .L38
	.loc 1 351 0
	mov.n	a12, a3
	movi.n	a11, 0
	call8	rewrite_ota_seq
.LVL83:
	mov.n	a2, a10
	retw.n
.LVL84:
.L45:
	.loc 1 355 0
	mov.n	a12, a3
	movi.n	a11, 0
	addi.n	a10, a2, 1
	call8	rewrite_ota_seq
.LVL85:
	mov.n	a2, a10
	retw.n
.LVL86:
.L39:
	.loc 1 359 0
	movi	a2, 0x105
.LVL87:
	retw.n
.LVL88:
.L40:
	.loc 1 316 0
	movi	a2, 0x102
	retw.n
.LVL89:
.L41:
	.loc 1 322 0
	mov.n	a2, a10
	.loc 1 361 0
	retw.n
.LFE34:
	.size	esp_rewrite_ota_data, .-esp_rewrite_ota_data
	.section	.rodata.str1.4
	.align	4
.LC15:
	.string	"phys_offs != SPI_FLASH_CACHE2PHYS_FAIL"
	.align	4
.LC19:
	.string	"it != NULL"
	.section	.text.esp_ota_get_running_partition,"ax",@progbits
	.literal_position
	.literal .LC13, curr_partition$5751
	.literal .LC14, esp_ota_get_running_partition
	.literal .LC16, .LC15
	.literal .LC17, __func__$5753
	.literal .LC18, .LC3
	.literal .LC20, .LC19
	.align	4
	.global	esp_ota_get_running_partition
	.type	esp_ota_get_running_partition, @function
esp_ota_get_running_partition:
.LFB38:
	.loc 1 495 0
	entry	sp, 32
.LCFI7:
	.loc 1 502 0
	l32r	a2, .LC13
	l32i.n	a2, a2, 0
	bnez.n	a2, .L47
	.loc 1 508 0
	l32r	a10, .LC14
	call8	spi_flash_cache2phys
.LVL90:
	mov.n	a4, a10
.LVL91:
	.loc 1 510 0
	bnei	a10, -1, .L48
	.loc 1 510 0 is_stmt 0 discriminator 1
	l32r	a13, .LC16
	l32r	a12, .LC17
	movi	a11, 0x1fe
	l32r	a10, .LC18
	call8	__assert_func
.LVL92:
.L48:
	.loc 1 512 0 is_stmt 1
	movi.n	a12, 0
	movi	a11, 0xff
	mov.n	a10, a12
	call8	esp_partition_find
.LVL93:
	mov.n	a3, a10
.LVL94:
	.loc 1 515 0
	bnez.n	a10, .L49
	.loc 1 515 0 is_stmt 0 discriminator 1
	l32r	a13, .LC20
	l32r	a12, .LC17
	movi	a11, 0x203
	l32r	a10, .LC18
	call8	__assert_func
.LVL95:
.L51:
.LBB9:
	.loc 1 518 0 is_stmt 1
	mov.n	a10, a3
	call8	esp_partition_get
.LVL96:
	mov.n	a2, a10
.LVL97:
	.loc 1 519 0
	l32i.n	a9, a10, 8
	bltu	a4, a9, .L50
	.loc 1 519 0 is_stmt 0 discriminator 1
	l32i.n	a8, a10, 12
	add.n	a8, a9, a8
	bgeu	a4, a8, .L50
	.loc 1 520 0 is_stmt 1
	mov.n	a10, a3
	call8	esp_partition_iterator_release
.LVL98:
	.loc 1 521 0
	l32r	a3, .LC13
.LVL99:
	s32i.n	a2, a3, 0
	.loc 1 522 0
	retw.n
.LVL100:
.L50:
	.loc 1 524 0
	mov.n	a10, a3
	call8	esp_partition_next
.LVL101:
	mov.n	a3, a10
.LVL102:
.L49:
.LBE9:
	.loc 1 517 0
	bnez.n	a3, .L51
	.loc 1 527 0
	call8	abort
.LVL103:
.L47:
	.loc 1 528 0
	retw.n
.LFE38:
	.size	esp_ota_get_running_partition, .-esp_ota_get_running_partition
	.section	.text.esp_ota_begin,"ax",@progbits
	.literal_position
	.literal .LC21, 5377
	.literal .LC22, s_ota_ops_entries_head
	.literal .LC23, s_ota_ops_last_handle
	.align	4
	.global	esp_ota_begin
	.type	esp_ota_begin, @function
esp_ota_begin:
.LFB27:
	.loc 1 81 0
.LVL104:
	entry	sp, 32
.LCFI8:
.LVL105:
	.loc 1 85 0
	movi.n	a8, 1
	movi.n	a11, 0
	mov.n	a9, a11
	moveqz	a9, a8, a2
	.loc 1 85 0
	movnez	a8, a11, a4
	or	a8, a8, a9
	.loc 1 85 0
	bne	a8, a11, .L59
	.loc 1 89 0
	mov.n	a10, a2
	call8	esp_partition_verify
.LVL106:
	mov.n	a2, a10
.LVL107:
	.loc 1 90 0
	beqz.n	a10, .L60
	.loc 1 94 0
	call8	is_ota_partition
.LVL108:
	beqz.n	a10, .L61
	.loc 1 98 0
	call8	esp_ota_get_running_partition
.LVL109:
	beq	a2, a10, .L62
	.loc 1 103 0
	addi.n	a5, a3, -1
	movi.n	a8, -3
	bgeu	a8, a5, .L54
	.loc 1 104 0
	l32i.n	a12, a2, 12
	movi.n	a11, 0
	mov.n	a10, a2
	call8	esp_partition_erase_range
.LVL110:
	j	.L55
.LVL111:
.L54:
	.loc 1 106 0
	srli	a12, a3, 12
	addi.n	a12, a12, 1
	slli	a12, a12, 12
	movi.n	a11, 0
	mov.n	a10, a2
	call8	esp_partition_erase_range
.LVL112:
.L55:
	.loc 1 109 0
	bnez.n	a10, .L63
	.loc 1 113 0
	movi.n	a11, 1
	movi.n	a10, 0x2c
.LVL113:
	call8	calloc
.LVL114:
	.loc 1 114 0
	beqz.n	a10, .L64
	.loc 1 118 0
	l32r	a8, .LC22
	l32i.n	a8, a8, 0
	s32i.n	a8, a10, 36
	beqz.n	a8, .L56
	.loc 1 118 0 discriminator 1
	addi	a9, a10, 36
	s32i.n	a9, a8, 40
.L56:
	.loc 1 118 0 is_stmt 0 discriminator 3
	l32r	a8, .LC22
	s32i.n	a10, a8, 0
	s32i.n	a8, a10, 40
	.loc 1 120 0 is_stmt 1 discriminator 3
	movi.n	a8, -3
	bgeu	a8, a5, .L57
	.loc 1 121 0
	l32i.n	a3, a2, 12
.LVL115:
	s32i.n	a3, a10, 8
	j	.L58
.LVL116:
.L57:
	.loc 1 123 0
	s32i.n	a3, a10, 8
.LVL117:
.L58:
	.loc 1 126 0
	s32i.n	a2, a10, 4
	.loc 1 127 0
	l32r	a3, .LC23
	l32i.n	a2, a3, 0
.LVL118:
	addi.n	a2, a2, 1
	s32i.n	a2, a3, 0
	s32i.n	a2, a10, 0
	.loc 1 128 0
	s32i.n	a2, a4, 0
.LVL119:
	.loc 1 129 0
	movi.n	a2, 0
	retw.n
.LVL120:
.L59:
	.loc 1 86 0
	movi	a2, 0x102
.LVL121:
	retw.n
.LVL122:
.L60:
	.loc 1 91 0
	movi	a2, 0x105
.LVL123:
	retw.n
.LVL124:
.L61:
	.loc 1 95 0
	movi	a2, 0x102
.LVL125:
	retw.n
.LVL126:
.L62:
	.loc 1 99 0
	l32r	a2, .LC21
.LVL127:
	retw.n
.LVL128:
.L63:
	.loc 1 110 0
	mov.n	a2, a10
.LVL129:
	retw.n
.LVL130:
.L64:
	.loc 1 115 0
	movi	a2, 0x101
.LVL131:
	.loc 1 130 0
	retw.n
.LFE27:
	.size	esp_ota_begin, .-esp_ota_begin
	.section	.rodata.str1.4
	.align	4
.LC26:
	.string	"\033[0;31mE (%d) %s: write data is invalid\033[0m\n"
	.align	4
.LC29:
	.string	"it->erased_size > 0 && \"must erase the partition before writing to it\""
	.align	4
.LC33:
	.string	"\033[0;31mE (%d) %s: OTA image has invalid magic byte (expected 0xE9, saw 0x%02x\033[0m\n"
	.align	4
.LC36:
	.string	"\033[0;31mE (%d) %s: not found the handle\033[0m\n"
	.section	.text.esp_ota_write,"ax",@progbits
	.literal_position
	.literal .LC24, 5379
	.literal .LC25, .LC5
	.literal .LC27, .LC26
	.literal .LC28, s_ota_ops_entries_head
	.literal .LC30, .LC29
	.literal .LC31, __func__$5671
	.literal .LC32, .LC3
	.literal .LC34, .LC33
	.literal .LC35, 1073061888
	.literal .LC37, .LC36
	.align	4
	.global	esp_ota_write
	.type	esp_ota_write, @function
esp_ota_write:
.LFB28:
	.loc 1 133 0
.LVL132:
	entry	sp, 32
.LCFI9:
.LVL133:
	.loc 1 138 0
	bnez.n	a3, .L66
	.loc 1 139 0 discriminator 2
	call8	esp_log_timestamp
.LVL134:
	l32r	a11, .LC25
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC27
	movi.n	a10, 1
	call8	esp_log_write
.LVL135:
	.loc 1 140 0 discriminator 2
	movi	a2, 0x102
.LVL136:
	retw.n
.LVL137:
.L66:
	.loc 1 144 0
	l32r	a5, .LC28
	l32i.n	a5, a5, 0
.LVL138:
	j	.L68
.L77:
	.loc 1 145 0
	l32i.n	a8, a5, 0
	bne	a8, a2, .L69
	.loc 1 147 0
	l32i.n	a2, a5, 8
.LVL139:
	bnez.n	a2, .L70
	.loc 1 147 0 is_stmt 0 discriminator 1
	l32r	a13, .LC30
	l32r	a12, .LC31
	movi	a11, 0x93
	l32r	a10, .LC32
	call8	__assert_func
.LVL140:
.L70:
	.loc 1 148 0 is_stmt 1
	l32i.n	a2, a5, 12
	bnez.n	a2, .L71
	.loc 1 148 0 is_stmt 0 discriminator 1
	l8ui	a2, a5, 16
	bnez.n	a2, .L71
	.loc 1 148 0 discriminator 2
	beqz.n	a4, .L71
	.loc 1 148 0 discriminator 3
	l8ui	a6, a3, 0
	movi	a2, 0xe9
	beq	a6, a2, .L71
	.loc 1 149 0 is_stmt 1 discriminator 2
	call8	esp_log_timestamp
.LVL141:
	l32r	a11, .LC25
	l8ui	a15, a3, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC34
	movi.n	a10, 1
	call8	esp_log_write
.LVL142:
	.loc 1 150 0 discriminator 2
	l32r	a2, .LC24
	retw.n
.L71:
.LBB10:
.LBB11:
.LBB12:
.LBB13:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include/esp_flash_encrypt.h"
	.loc 2 39 0
	l32r	a2, .LC35
	memw
	l32i.n	a8, a2, 0
.LBE13:
	extui	a8, a8, 20, 7
.LVL143:
.LBE12:
	.loc 2 41 0
	movi.n	a2, 0
	j	.L72
.LVL144:
.L74:
	.loc 2 43 0
	bbci	a8, 0, .L73
	.loc 2 44 0
	movi.n	a9, 1
	xor	a2, a2, a9
.LVL145:
	extui	a2, a2, 0, 8
.LVL146:
.L73:
	.loc 2 46 0
	srli	a8, a8, 1
.LVL147:
.L72:
	.loc 2 42 0
	bnez.n	a8, .L74
.LBE11:
.LBE10:
	.loc 1 153 0
	beqz.n	a2, .L75
.LBB14:
	.loc 1 158 0
	l8ui	a10, a5, 16
	beqz.n	a10, .L76
	.loc 1 159 0
	movi.n	a2, 0x10
.LVL148:
	sub	a2, a2, a10
	minu	a2, a4, a2
.LVL149:
	.loc 1 160 0
	addi	a6, a5, 17
	mov.n	a12, a2
	mov.n	a11, a3
	add.n	a10, a6, a10
	call8	memcpy
.LVL150:
	.loc 1 161 0
	l8ui	a8, a5, 16
	add.n	a8, a2, a8
	extui	a8, a8, 0, 8
	s8i	a8, a5, 16
	.loc 1 162 0
	bnei	a8, 16, .L78
	.loc 1 166 0
	movi.n	a13, 0x10
	mov.n	a12, a6
	l32i.n	a11, a5, 12
	l32i.n	a10, a5, 4
	call8	esp_partition_write
.LVL151:
	.loc 1 167 0
	bnez.n	a10, .L79
	.loc 1 170 0
	movi.n	a8, 0
	s8i	a8, a5, 16
	.loc 1 171 0
	movi.n	a12, 0x10
	movi	a11, 0xff
	mov.n	a10, a6
.LVL152:
	call8	memset
.LVL153:
	.loc 1 172 0
	l32i.n	a6, a5, 12
	addi	a6, a6, 16
	s32i.n	a6, a5, 12
	.loc 1 173 0
	add.n	a3, a3, a2
.LVL154:
	.loc 1 174 0
	sub	a4, a4, a2
.LVL155:
.L76:
	.loc 1 178 0
	extui	a12, a4, 0, 4
	s8i	a12, a5, 16
	.loc 1 179 0
	beqz.n	a12, .L75
	.loc 1 180 0
	sub	a4, a4, a12
.LVL156:
	.loc 1 181 0
	add.n	a11, a3, a4
	addi	a10, a5, 17
	call8	memcpy
.LVL157:
.L75:
.LBE14:
	.loc 1 185 0
	mov.n	a13, a4
	mov.n	a12, a3
	l32i.n	a11, a5, 12
	l32i.n	a10, a5, 4
	call8	esp_partition_write
.LVL158:
	.loc 1 186 0
	bnez.n	a10, .L80
	.loc 1 187 0
	l32i.n	a2, a5, 12
	add.n	a4, a2, a4
.LVL159:
	s32i.n	a4, a5, 12
	.loc 1 189 0
	mov.n	a2, a10
	retw.n
.LVL160:
.L69:
	.loc 1 144 0 discriminator 2
	l32i.n	a5, a5, 36
.LVL161:
.L68:
	.loc 1 144 0 discriminator 1
	bnez.n	a5, .L77
	.loc 1 194 0 discriminator 2
	call8	esp_log_timestamp
.LVL162:
	l32r	a11, .LC25
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC37
	movi.n	a10, 1
	call8	esp_log_write
.LVL163:
	.loc 1 195 0 discriminator 2
	movi	a2, 0x102
.LVL164:
	retw.n
.LVL165:
.L78:
.LBB15:
	.loc 1 163 0
	movi.n	a2, 0
.LVL166:
	retw.n
.LVL167:
.L79:
	.loc 1 168 0
	mov.n	a2, a10
.LVL168:
	retw.n
.LVL169:
.L80:
.LBE15:
	.loc 1 189 0
	mov.n	a2, a10
	.loc 1 196 0
	retw.n
.LFE28:
	.size	esp_ota_write, .-esp_ota_write
	.section	.text.esp_ota_end,"ax",@progbits
	.literal_position
	.literal .LC38, 5379
	.literal .LC39, s_ota_ops_entries_head
	.align	4
	.global	esp_ota_end
	.type	esp_ota_end, @function
esp_ota_end:
.LFB29:
	.loc 1 199 0
.LVL170:
	entry	sp, 304
.LCFI10:
.LVL171:
	.loc 1 203 0
	l32r	a3, .LC39
	l32i.n	a3, a3, 0
.LVL172:
	j	.L82
.L84:
	.loc 1 204 0
	l32i.n	a8, a3, 0
	beq	a8, a2, .L83
	.loc 1 203 0 discriminator 2
	l32i.n	a3, a3, 36
.LVL173:
.L82:
	.loc 1 203 0 discriminator 1
	bnez.n	a3, .L84
.L83:
	.loc 1 209 0
	beqz.n	a3, .L89
	.loc 1 216 0
	l32i.n	a2, a3, 8
.LVL174:
	beqz.n	a2, .L90
	.loc 1 216 0 is_stmt 0 discriminator 1
	l32i.n	a11, a3, 12
	beqz.n	a11, .L91
	.loc 1 221 0 is_stmt 1
	l8ui	a2, a3, 16
	beqz.n	a2, .L92
	.loc 1 223 0
	movi.n	a13, 0x10
	addi	a12, a3, 17
	l32i.n	a10, a3, 4
	call8	esp_partition_write
.LVL175:
	mov.n	a2, a10
.LVL176:
	.loc 1 224 0
	bnez.n	a10, .L93
	.loc 1 228 0
	l32i.n	a8, a3, 12
	addi	a8, a8, 16
	s32i.n	a8, a3, 12
	.loc 1 229 0
	movi.n	a8, 0
	s8i	a8, a3, 16
	j	.L87
.LVL177:
.L92:
	.loc 1 201 0
	movi.n	a2, 0
.LVL178:
.L87:
	.loc 1 234 0
	l32i.n	a8, a3, 4
	l32i.n	a9, a8, 8
	.loc 1 233 0
	s32i	a9, sp, 256
	.loc 1 235 0
	l32i.n	a8, a8, 12
	.loc 1 233 0
	s32i	a8, sp, 260
	.loc 1 238 0
	mov.n	a12, sp
	addmi	a11, sp, 0x100
	movi.n	a10, 0
	call8	esp_image_verify
.LVL179:
	bnez.n	a10, .L94
	j	.L86
.LVL180:
.L90:
	.loc 1 217 0
	movi	a2, 0x102
	j	.L86
.L91:
	movi	a2, 0x102
	j	.L86
.LVL181:
.L93:
	.loc 1 225 0
	movi	a2, 0x103
.LVL182:
	j	.L86
.LVL183:
.L94:
	.loc 1 239 0
	l32r	a2, .LC38
.LVL184:
.L86:
	.loc 1 244 0
	l32i.n	a8, a3, 36
	beqz.n	a8, .L88
	.loc 1 244 0 discriminator 1
	l32i.n	a9, a3, 40
	s32i.n	a9, a8, 40
.L88:
	.loc 1 244 0 is_stmt 0 discriminator 3
	l32i.n	a8, a3, 40
	l32i.n	a9, a3, 36
	s32i.n	a9, a8, 0
	.loc 1 245 0 is_stmt 1 discriminator 3
	mov.n	a10, a3
	call8	free
.LVL185:
	.loc 1 246 0 discriminator 3
	retw.n
.LVL186:
.L89:
	.loc 1 210 0
	movi	a2, 0x105
.LVL187:
	.loc 1 247 0
	retw.n
.LFE29:
	.size	esp_ota_end, .-esp_ota_end
	.section	.text.esp_ota_set_boot_partition,"ax",@progbits
	.literal_position
	.literal .LC40, 5379
	.align	4
	.global	esp_ota_set_boot_partition
	.type	esp_ota_set_boot_partition, @function
esp_ota_set_boot_partition:
.LFB35:
	.loc 1 364 0
.LVL188:
	entry	sp, 304
.LCFI11:
.LVL189:
	.loc 1 366 0
	beqz.n	a2, .L98
	.loc 1 372 0
	l32i.n	a8, a2, 8
	.loc 1 371 0
	s32i	a8, sp, 256
	.loc 1 373 0
	l32i.n	a8, a2, 12
	.loc 1 371 0
	s32i	a8, sp, 260
	.loc 1 375 0
	mov.n	a12, sp
	addmi	a11, sp, 0x100
	movi.n	a10, 0
	call8	esp_image_verify
.LVL190:
	bnez.n	a10, .L99
	.loc 1 386 0
	l32i.n	a8, a2, 0
	bnez.n	a8, .L100
	.loc 1 387 0
	l32i.n	a8, a2, 4
	bnez.n	a8, .L97
	.loc 1 388 0
	movi.n	a12, 0
	mov.n	a11, a12
	movi.n	a10, 1
	call8	esp_partition_find_first
.LVL191:
	.loc 1 389 0
	beqz.n	a10, .L101
	.loc 1 390 0
	l32i.n	a12, a10, 12
	movi.n	a11, 0
	call8	esp_partition_erase_range
.LVL192:
	mov.n	a2, a10
.LVL193:
	retw.n
.LVL194:
.L97:
	.loc 1 396 0
	movi.n	a12, 0
	mov.n	a11, a12
	movi.n	a10, 1
	call8	esp_partition_find_first
.LVL195:
	.loc 1 397 0
	beqz.n	a10, .L102
	.loc 1 398 0
	l32i.n	a10, a2, 4
.LVL196:
	call8	esp_rewrite_ota_data
.LVL197:
	mov.n	a2, a10
.LVL198:
	retw.n
.LVL199:
.L98:
	.loc 1 367 0
	movi	a2, 0x102
.LVL200:
	retw.n
.LVL201:
.L99:
	.loc 1 376 0
	l32r	a2, .LC40
.LVL202:
	retw.n
.LVL203:
.L100:
	.loc 1 404 0
	movi	a2, 0x102
.LVL204:
	retw.n
.LVL205:
.L101:
	.loc 1 392 0
	movi	a2, 0x105
.LVL206:
	retw.n
.LVL207:
.L102:
	.loc 1 400 0
	movi	a2, 0x105
.LVL208:
	.loc 1 406 0
	retw.n
.LFE35:
	.size	esp_ota_set_boot_partition, .-esp_ota_set_boot_partition
	.section	.rodata.str1.4
	.align	4
.LC42:
	.string	"\033[0;31mE (%d) %s: not found ota data\033[0m\n"
	.align	4
.LC44:
	.string	"\033[0;31mE (%d) %s: mmap ota data filed\033[0m\n"
	.align	4
.LC48:
	.string	"\033[0;31mE (%d) %s: ota data invalid, no current app. Assuming factory\033[0m\n"
	.section	.text.esp_ota_get_boot_partition,"ax",@progbits
	.literal_position
	.literal .LC41, .LC5
	.literal .LC43, .LC42
	.literal .LC45, .LC44
	.literal .LC46, s_ota_select
	.literal .LC47, s_ota_select+32
	.literal .LC49, .LC48
	.align	4
	.global	esp_ota_get_boot_partition
	.type	esp_ota_get_boot_partition, @function
esp_ota_get_boot_partition:
.LFB37:
	.loc 1 437 0
	entry	sp, 48
.LCFI12:
.LVL209:
	.loc 1 441 0
	movi.n	a11, 0
	s32i.n	a11, sp, 4
.LVL210:
	.loc 1 443 0
	mov.n	a12, a11
	movi.n	a10, 1
	call8	esp_partition_find_first
.LVL211:
	.loc 1 445 0
	bnez.n	a10, .L104
	.loc 1 446 0 discriminator 2
	call8	esp_log_timestamp
.LVL212:
	l32r	a11, .LC41
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC43
	movi.n	a10, 1
	call8	esp_log_write
.LVL213:
	.loc 1 447 0 discriminator 2
	movi.n	a2, 0
	retw.n
.LVL214:
.L104:
	.loc 1 450 0
	mov.n	a15, sp
	addi.n	a14, sp, 4
	movi.n	a13, 0
	l32i.n	a12, a10, 12
	mov.n	a11, a13
	call8	esp_partition_mmap
.LVL215:
	.loc 1 451 0
	beqz.n	a10, .L106
	.loc 1 452 0
	l32i.n	a10, sp, 0
.LVL216:
	call8	spi_flash_munmap
.LVL217:
	.loc 1 453 0
	call8	esp_log_timestamp
.LVL218:
	l32r	a11, .LC41
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC45
	movi.n	a10, 1
	call8	esp_log_write
.LVL219:
	.loc 1 454 0
	movi.n	a2, 0
	retw.n
.LVL220:
.L106:
	.loc 1 456 0
	l32i.n	a3, sp, 4
	l32r	a2, .LC46
	movi.n	a4, 0x20
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL221:
	call8	memcpy
.LVL222:
	.loc 1 457 0
	mov.n	a12, a4
	addmi	a11, a3, 0x1000
	l32r	a10, .LC47
	call8	memcpy
.LVL223:
	.loc 1 458 0
	l32i.n	a10, sp, 0
	call8	spi_flash_munmap
.LVL224:
	.loc 1 460 0
	call8	get_ota_partition_count
.LVL225:
	mov.n	a3, a10
.LVL226:
	.loc 1 464 0
	l32i.n	a2, a2, 0
	bnei	a2, -1, .L107
	.loc 1 464 0 is_stmt 0 discriminator 1
	l32r	a2, .LC46
	l32i.n	a2, a2, 32
	bnei	a2, -1, .L107
	.loc 1 466 0 is_stmt 1
	call8	find_default_boot_partition
.LVL227:
	mov.n	a2, a10
	retw.n
.L107:
	.loc 1 467 0
	l32r	a10, .LC46
	call8	ota_select_valid
.LVL228:
	beqz.n	a10, .L108
	.loc 1 467 0 is_stmt 0 discriminator 1
	l32r	a10, .LC47
	call8	ota_select_valid
.LVL229:
	beqz.n	a10, .L108
	.loc 1 472 0 is_stmt 1
	l32r	a2, .LC46
	l32i.n	a11, a2, 0
	l32i.n	a2, a2, 32
	maxu	a11, a11, a2
	addi.n	a11, a11, -1
	remu	a11, a11, a3
	.loc 1 471 0
	movi.n	a12, 0
	addi	a11, a11, 16
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL230:
	mov.n	a2, a10
	retw.n
.L108:
	.loc 1 473 0
	l32r	a10, .LC46
	call8	ota_select_valid
.LVL231:
	beqz.n	a10, .L109
	.loc 1 478 0
	l32r	a2, .LC46
	l32i.n	a11, a2, 0
	addi.n	a11, a11, -1
	remu	a11, a11, a3
	.loc 1 477 0
	movi.n	a12, 0
	addi	a11, a11, 16
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL232:
	mov.n	a2, a10
	retw.n
.L109:
	.loc 1 480 0
	l32r	a10, .LC47
	call8	ota_select_valid
.LVL233:
	beqz.n	a10, .L110
	.loc 1 485 0
	l32r	a2, .LC46
	l32i.n	a11, a2, 32
	addi.n	a11, a11, -1
	remu	a11, a11, a3
	.loc 1 484 0
	movi.n	a12, 0
	addi	a11, a11, 16
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL234:
	mov.n	a2, a10
	retw.n
.L110:
	.loc 1 488 0 discriminator 2
	call8	esp_log_timestamp
.LVL235:
	l32r	a11, .LC41
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC49
	movi.n	a10, 1
	call8	esp_log_write
.LVL236:
	.loc 1 489 0 discriminator 2
	call8	find_default_boot_partition
.LVL237:
	mov.n	a2, a10
	.loc 1 491 0 discriminator 2
	retw.n
.LFE37:
	.size	esp_ota_get_boot_partition, .-esp_ota_get_boot_partition
	.section	.rodata.str1.4
	.align	4
.LC50:
	.string	"start_from != NULL"
	.section	.text.esp_ota_get_next_update_partition,"ax",@progbits
	.literal_position
	.literal .LC51, .LC50
	.literal .LC52, __func__$5764
	.literal .LC53, .LC3
	.align	4
	.global	esp_ota_get_next_update_partition
	.type	esp_ota_get_next_update_partition, @function
esp_ota_get_next_update_partition:
.LFB39:
	.loc 1 532 0
.LVL238:
	entry	sp, 32
.LCFI13:
.LVL239:
	.loc 1 535 0
	bnez.n	a2, .L112
	.loc 1 536 0
	call8	esp_ota_get_running_partition
.LVL240:
	mov.n	a5, a10
.LVL241:
	j	.L113
.LVL242:
.L112:
	.loc 1 538 0
	mov.n	a10, a2
	call8	esp_partition_verify
.LVL243:
	mov.n	a5, a10
.LVL244:
.L113:
	.loc 1 540 0
	bnez.n	a5, .L119
	.loc 1 540 0 is_stmt 0 discriminator 1
	l32r	a13, .LC51
	l32r	a12, .LC52
	movi	a11, 0x21c
	l32r	a10, .LC53
	call8	__assert_func
.LVL245:
.L118:
.LBB16:
.LBB17:
	.loc 1 555 0 is_stmt 1
	movi.n	a12, 0
	mov.n	a11, a3
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL246:
	.loc 1 556 0
	beqz.n	a10, .L115
	.loc 1 560 0
	bnez.n	a2, .L116
	.loc 1 563 0
	mov.n	a2, a10
.LVL247:
.L116:
	.loc 1 566 0
	beq	a5, a10, .L121
	.loc 1 570 0
	beqz.n	a4, .L115
	j	.L122
.L121:
	.loc 1 568 0
	movi.n	a4, 1
.LVL248:
.L115:
.LBE17:
	.loc 1 554 0
	addi.n	a3, a3, 1
.LVL249:
	j	.L114
.LVL250:
.L119:
.LBE16:
	movi.n	a3, 0x10
	movi.n	a4, 0
	mov.n	a2, a4
.LVL251:
.L114:
.LBB19:
	.loc 1 552 0 discriminator 1
	bnei	a3, 32, .L118
	retw.n
.LVL252:
.L122:
.LBB18:
	.loc 1 571 0
	mov.n	a2, a10
.LVL253:
.LBE18:
.LBE19:
	.loc 1 577 0
	retw.n
.LFE39:
	.size	esp_ota_get_next_update_partition, .-esp_ota_get_next_update_partition
	.section	.rodata.__func__$5764,"a",@progbits
	.align	4
	.type	__func__$5764, @object
	.size	__func__$5764, 34
__func__$5764:
	.string	"esp_ota_get_next_update_partition"
	.section	.rodata.__func__$5753,"a",@progbits
	.align	4
	.type	__func__$5753, @object
	.size	__func__$5753, 30
__func__$5753:
	.string	"esp_ota_get_running_partition"
	.section	.bss.curr_partition$5751,"aw",@nobits
	.align	4
	.type	curr_partition$5751, @object
	.size	curr_partition$5751, 4
curr_partition$5751:
	.zero	4
	.section	.rodata.__func__$5703,"a",@progbits
	.align	4
	.type	__func__$5703, @object
	.size	__func__$5703, 24
__func__$5703:
	.string	"get_ota_partition_count"
	.section	.rodata.__func__$5671,"a",@progbits
	.align	4
	.type	__func__$5671, @object
	.size	__func__$5671, 14
__func__$5671:
	.string	"esp_ota_write"
	.section	.bss.s_ota_select,"aw",@nobits
	.align	4
	.type	s_ota_select, @object
	.size	s_ota_select, 64
s_ota_select:
	.zero	64
	.section	.bss.s_ota_ops_last_handle,"aw",@nobits
	.align	4
	.type	s_ota_ops_last_handle, @object
	.size	s_ota_ops_last_handle, 4
s_ota_ops_last_handle:
	.zero	4
	.section	.bss.s_ota_ops_entries_head,"aw",@nobits
	.align	4
	.type	s_ota_ops_entries_head, @object
	.size	s_ota_ops_entries_head, 4
s_ota_ops_entries_head:
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI0-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI1-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI2-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI3-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI4-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI5-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI6-.LFB34
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI7-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI8-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI9-.LFB28
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
	.uleb128 0x130
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI11-.LFB35
	.byte	0xe
	.uleb128 0x130
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI12-.LFB37
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI13-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
	.text
.Letext0:
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/include/esp_spi_flash.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/include/esp_partition.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_flash_data_types.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include/esp_image_format.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/app_update/include/esp_ota_ops.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/crc.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.file 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1563
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF173
	.byte	0xc
	.4byte	.LASF174
	.4byte	.LASF175
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x16
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x19
	.4byte	0x62
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0xd8
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe2
	.uleb128 0x6
	.4byte	0xd5
	.uleb128 0x5
	.byte	0x4
	.4byte	0xed
	.uleb128 0x7
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x18
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x110
	.uleb128 0x9
	.4byte	0xc7
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0xdc
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0x7
	.byte	0xa1
	.4byte	0x12e
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x7
	.byte	0xa9
	.4byte	0xaa
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0x8
	.byte	0x26
	.4byte	0x152
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x8
	.byte	0x29
	.4byte	0x139
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0x8
	.byte	0x2f
	.4byte	0x218
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x11
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x12
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x13
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x15
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x16
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x17
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x19
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x1b
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x1d
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x1e
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x1f
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x81
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x82
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x8
	.byte	0x50
	.4byte	0x15d
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x8
	.byte	0x5a
	.4byte	0x22e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x234
	.uleb128 0xc
	.4byte	.LASF176
	.uleb128 0xd
	.byte	0x24
	.byte	0x8
	.byte	0x63
	.4byte	0x28a
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x8
	.byte	0x64
	.4byte	0x152
	.byte	0
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x8
	.byte	0x65
	.4byte	0x218
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x8
	.byte	0x66
	.4byte	0xaa
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x8
	.byte	0x67
	.4byte	0xaa
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x8
	.byte	0x68
	.4byte	0x28a
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x8
	.byte	0x69
	.4byte	0xf9
	.byte	0x21
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0x29a
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x8
	.byte	0x6a
	.4byte	0x239
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x2b5
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0x9
	.byte	0x24
	.4byte	0x2d6
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x9
	.byte	0x25
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x9
	.byte	0x26
	.4byte	0xaa
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x9
	.byte	0x27
	.4byte	0x2b5
	.uleb128 0xd
	.byte	0x18
	.byte	0xa
	.byte	0x3b
	.4byte	0x368
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0xa
	.byte	0x3c
	.4byte	0x89
	.byte	0
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0xa
	.byte	0x3d
	.4byte	0x89
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0xa
	.byte	0x3f
	.4byte	0x89
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0xa
	.byte	0x41
	.4byte	0x89
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0xa
	.byte	0x43
	.4byte	0x89
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0xa
	.byte	0x44
	.4byte	0xaa
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0xa
	.byte	0x47
	.4byte	0x89
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0xa
	.byte	0x49
	.4byte	0x368
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0xa
	.byte	0x4b
	.4byte	0x378
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0xa
	.byte	0x4f
	.4byte	0x89
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x378
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x388
	.uleb128 0x9
	.4byte	0xc7
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0xa
	.byte	0x50
	.4byte	0x2e1
	.uleb128 0xd
	.byte	0x8
	.byte	0xa
	.byte	0x57
	.4byte	0x3b4
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0xa
	.byte	0x58
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0xa
	.byte	0x59
	.4byte	0xaa
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0xa
	.byte	0x5a
	.4byte	0x393
	.uleb128 0x10
	.2byte	0x100
	.byte	0xa
	.byte	0x5f
	.4byte	0x411
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0xa
	.byte	0x60
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0xa
	.byte	0x61
	.4byte	0x388
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF84
	.byte	0xa
	.byte	0x62
	.4byte	0x411
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0xa
	.byte	0x63
	.4byte	0x421
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0xa
	.byte	0x64
	.4byte	0xaa
	.byte	0xdc
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0xa
	.byte	0x65
	.4byte	0x431
	.byte	0xe0
	.byte	0
	.uleb128 0x8
	.4byte	0x3b4
	.4byte	0x421
	.uleb128 0x9
	.4byte	0xc7
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0xaa
	.4byte	0x431
	.uleb128 0x9
	.4byte	0xc7
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x441
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0xa
	.byte	0x66
	.4byte	0x3bf
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0xa
	.byte	0x69
	.4byte	0x465
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0xb
	.byte	0x2a
	.4byte	0xaa
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0xc
	.byte	0x1f
	.4byte	0x4a1
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF95
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF96
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF97
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0x1
	.byte	0x34
	.4byte	0x4c2
	.uleb128 0xe
	.4byte	.LASF98
	.byte	0x1
	.byte	0x34
	.4byte	0x523
	.byte	0
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0x1
	.byte	0x34
	.4byte	0x529
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0x2c
	.byte	0x1
	.byte	0x2d
	.4byte	0x523
	.uleb128 0xe
	.4byte	.LASF100
	.byte	0x1
	.byte	0x2e
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF101
	.byte	0x1
	.byte	0x2f
	.4byte	0x52f
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0x1
	.byte	0x30
	.4byte	0xaa
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0x1
	.byte	0x31
	.4byte	0xaa
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0x1
	.byte	0x32
	.4byte	0x89
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0x1
	.byte	0x33
	.4byte	0x100
	.byte	0x11
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0x1
	.byte	0x34
	.4byte	0x4a1
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4c2
	.uleb128 0x5
	.byte	0x4
	.4byte	0x523
	.uleb128 0x5
	.byte	0x4
	.4byte	0x535
	.uleb128 0x6
	.4byte	0x29a
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0x1
	.byte	0x35
	.4byte	0x4c2
	.uleb128 0xd
	.byte	0x20
	.byte	0x1
	.byte	0x39
	.4byte	0x572
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0x1
	.byte	0x3a
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF109
	.byte	0x1
	.byte	0x3b
	.4byte	0x2a5
	.byte	0x4
	.uleb128 0x12
	.string	"crc"
	.byte	0x1
	.byte	0x3c
	.4byte	0xaa
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0x1
	.byte	0x3d
	.4byte	0x545
	.uleb128 0x11
	.4byte	.LASF112
	.byte	0x4
	.byte	0x1
	.byte	0x3f
	.4byte	0x596
	.uleb128 0xe
	.4byte	.LASF113
	.byte	0x1
	.byte	0x3f
	.4byte	0x523
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF177
	.byte	0x2
	.byte	0x26
	.4byte	0xf9
	.byte	0x3
	.4byte	0x5ca
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x2
	.byte	0x27
	.4byte	0xaa
	.uleb128 0x15
	.4byte	.LASF115
	.4byte	0x5da
	.4byte	.LASF177
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x2
	.byte	0x29
	.4byte	0xf9
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0x5da
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.4byte	0x5ca
	.uleb128 0x16
	.4byte	.LASF117
	.byte	0x1
	.byte	0x48
	.4byte	0xf9
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x606
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.byte	0x48
	.4byte	0x52f
	.4byte	.LLST0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x115
	.4byte	0x89
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x68a
	.uleb128 0x19
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x117
	.4byte	0x94
	.4byte	.LLST1
	.uleb128 0x1a
	.4byte	.LASF115
	.4byte	0x69a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5703
	.uleb128 0x1b
	.4byte	.LVL8
	.4byte	0x147e
	.4byte	0x66f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x119
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5703
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL11
	.4byte	0x1489
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0x69a
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.4byte	0x68a
	.uleb128 0x18
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x198
	.4byte	0x52f
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x76a
	.uleb128 0x19
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x19d
	.4byte	0x52f
	.4byte	.LLST2
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0
	.4byte	0x6fb
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x218
	.4byte	.LLST3
	.uleb128 0x1d
	.4byte	.LVL16
	.4byte	0x1489
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL13
	.4byte	0x1489
	.4byte	0x718
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL19
	.4byte	0x1489
	.4byte	0x736
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.4byte	.LVL20
	.4byte	0x1494
	.uleb128 0x1d
	.4byte	.LVL21
	.4byte	0x149f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF122
	.byte	0x1
	.byte	0xf9
	.4byte	0xaa
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ac
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0xf9
	.4byte	0x7ac
	.4byte	.LLST4
	.uleb128 0x1d
	.4byte	.LVL29
	.4byte	0x14aa
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7b2
	.uleb128 0x6
	.4byte	0x572
	.uleb128 0x16
	.4byte	.LASF123
	.byte	0x1
	.byte	0xfe
	.4byte	0xf9
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ee
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0xfe
	.4byte	0x7ac
	.4byte	.LLST5
	.uleb128 0x1d
	.4byte	.LVL32
	.4byte	0x76a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x103
	.4byte	0xee
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x89e
	.uleb128 0x21
	.string	"seq"
	.byte	0x1
	.2byte	0x103
	.4byte	0xaa
	.4byte	.LLST6
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x103
	.4byte	0x89
	.4byte	.LLST7
	.uleb128 0x23
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x103
	.4byte	0x52f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"ret"
	.byte	0x1
	.2byte	0x105
	.4byte	0xee
	.4byte	.LLST8
	.uleb128 0x1b
	.4byte	.LVL39
	.4byte	0x76a
	.4byte	0x85a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL41
	.4byte	0x14b5
	.4byte	0x87b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL44
	.4byte	0x14c1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x11f
	.4byte	0xee
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa7
	.uleb128 0x22
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x11f
	.4byte	0x218
	.4byte	.LLST9
	.uleb128 0x1f
	.string	"ret"
	.byte	0x1
	.2byte	0x121
	.4byte	0xee
	.4byte	.LLST10
	.uleb128 0x19
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x122
	.4byte	0x52f
	.4byte	.LLST11
	.uleb128 0x19
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x123
	.4byte	0x94
	.4byte	.LLST12
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.2byte	0x124
	.4byte	0xaa
	.4byte	.LLST13
	.uleb128 0x1f
	.string	"seq"
	.byte	0x1
	.2byte	0x125
	.4byte	0xaa
	.4byte	.LLST14
	.uleb128 0x24
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x126
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x127
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.4byte	.LVL50
	.4byte	0x1489
	.4byte	0x951
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.4byte	.LVL52
	.4byte	0x606
	.uleb128 0x1b
	.4byte	.LVL55
	.4byte	0x14cc
	.4byte	0x984
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL57
	.4byte	0x14d8
	.4byte	0x9a4
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL58
	.4byte	0x14d8
	.4byte	0x9c8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select+32
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x76
	.sleb128 4096
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL59
	.4byte	0x14e1
	.uleb128 0x1b
	.4byte	.LVL60
	.4byte	0x7b7
	.4byte	0x9e5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL61
	.4byte	0x7b7
	.4byte	0x9fc
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select+32
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL66
	.4byte	0x7ee
	.4byte	0xa15
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL69
	.4byte	0x7ee
	.4byte	0xa2e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL71
	.4byte	0x7b7
	.4byte	0xa42
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL76
	.4byte	0x7ee
	.4byte	0xa5b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL78
	.4byte	0x7b7
	.4byte	0xa72
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select+32
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL83
	.4byte	0x7ee
	.4byte	0xa8b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL85
	.4byte	0x7ee
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x52f
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf4
	.uleb128 0x24
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x52f
	.uleb128 0x5
	.byte	0x3
	.4byte	curr_partition$5751
	.uleb128 0x19
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x1fc
	.4byte	0xb5
	.4byte	.LLST15
	.uleb128 0x1a
	.4byte	.LASF115
	.4byte	0xc04
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5753
	.uleb128 0x1f
	.string	"it"
	.byte	0x1
	.2byte	0x200
	.4byte	0x223
	.4byte	.LLST16
	.uleb128 0x26
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0xb55
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.2byte	0x206
	.4byte	0x52f
	.4byte	.LLST17
	.uleb128 0x1b
	.4byte	.LVL96
	.4byte	0x14ec
	.4byte	0xb30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL98
	.4byte	0x14f7
	.4byte	0xb44
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL101
	.4byte	0x1502
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL90
	.4byte	0x150d
	.4byte	0xb6c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_ota_get_running_partition
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL92
	.4byte	0x147e
	.4byte	0xb9c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1fe
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5753
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL93
	.4byte	0x1519
	.4byte	0xbba
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL95
	.4byte	0x147e
	.4byte	0xbea
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x203
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5753
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.uleb128 0x20
	.4byte	.LVL103
	.4byte	0x1524
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0xc04
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.4byte	0xbf4
	.uleb128 0x27
	.4byte	.LASF133
	.byte	0x1
	.byte	0x50
	.4byte	0xee
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcf0
	.uleb128 0x28
	.4byte	.LASF134
	.byte	0x1
	.byte	0x50
	.4byte	0x52f
	.4byte	.LLST18
	.uleb128 0x28
	.4byte	.LASF135
	.byte	0x1
	.byte	0x50
	.4byte	0xb5
	.4byte	.LLST19
	.uleb128 0x29
	.4byte	.LASF136
	.byte	0x1
	.byte	0x50
	.4byte	0xcf0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2a
	.4byte	.LASF137
	.byte	0x1
	.byte	0x52
	.4byte	0xcf6
	.4byte	.LLST20
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.byte	0x53
	.4byte	0xee
	.4byte	.LLST21
	.uleb128 0x1b
	.4byte	.LVL106
	.4byte	0x152f
	.4byte	0xc7f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL108
	.4byte	0x5df
	.4byte	0xc93
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL109
	.4byte	0xaa7
	.uleb128 0x1b
	.4byte	.LVL110
	.4byte	0x14b5
	.4byte	0xcb5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL112
	.4byte	0x14b5
	.4byte	0xcda
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x3c
	.byte	0x24
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL114
	.4byte	0x153a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x2c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x465
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53a
	.uleb128 0x27
	.4byte	.LASF138
	.byte	0x1
	.byte	0x84
	.4byte	0xee
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf1d
	.uleb128 0x28
	.4byte	.LASF100
	.byte	0x1
	.byte	0x84
	.4byte	0x465
	.4byte	.LLST22
	.uleb128 0x28
	.4byte	.LASF139
	.byte	0x1
	.byte	0x84
	.4byte	0xe7
	.4byte	.LLST23
	.uleb128 0x28
	.4byte	.LASF62
	.byte	0x1
	.byte	0x84
	.4byte	0xb5
	.4byte	.LLST24
	.uleb128 0x2c
	.4byte	.LASF140
	.byte	0x1
	.byte	0x86
	.4byte	0xf1d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.byte	0x87
	.4byte	0xee
	.4byte	.LLST25
	.uleb128 0x2d
	.string	"it"
	.byte	0x1
	.byte	0x88
	.4byte	0xcf6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.4byte	.LASF115
	.4byte	0xf38
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5671
	.uleb128 0x2e
	.4byte	0x596
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.byte	0x99
	.4byte	0xdae
	.uleb128 0x2f
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x30
	.4byte	0x5a6
	.4byte	.LLST26
	.uleb128 0x30
	.4byte	0x5be
	.4byte	.LLST27
	.uleb128 0x31
	.4byte	0x5b1
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xe32
	.uleb128 0x2a
	.4byte	.LASF141
	.byte	0x1
	.byte	0x9b
	.4byte	0xb5
	.4byte	.LLST28
	.uleb128 0x1b
	.4byte	.LVL150
	.4byte	0x14d8
	.4byte	0xde0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL151
	.4byte	0x14c1
	.4byte	0xdf9
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL153
	.4byte	0x1545
	.4byte	0xe18
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL157
	.4byte	0x14d8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 17
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL134
	.4byte	0x1494
	.uleb128 0x1b
	.4byte	.LVL135
	.4byte	0x149f
	.4byte	0xe69
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL140
	.4byte	0x147e
	.4byte	0xe98
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x93
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5671
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.uleb128 0x20
	.4byte	.LVL141
	.4byte	0x1494
	.uleb128 0x1b
	.4byte	.LVL142
	.4byte	0x149f
	.4byte	0xecf
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL158
	.4byte	0x14c1
	.4byte	0xee9
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL162
	.4byte	0x1494
	.uleb128 0x1d
	.4byte	.LVL163
	.4byte	0x149f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf23
	.uleb128 0x6
	.4byte	0x89
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0xf38
	.uleb128 0x9
	.4byte	0xc7
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.4byte	0xf28
	.uleb128 0x27
	.4byte	.LASF142
	.byte	0x1
	.byte	0xc6
	.4byte	0xee
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xff2
	.uleb128 0x28
	.4byte	.LASF100
	.byte	0x1
	.byte	0xc6
	.4byte	0x465
	.4byte	.LLST29
	.uleb128 0x2d
	.string	"it"
	.byte	0x1
	.byte	0xc8
	.4byte	0xcf6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.byte	0xc9
	.4byte	0xee
	.4byte	.LLST30
	.uleb128 0x32
	.4byte	.LASF178
	.byte	0x1
	.byte	0xf3
	.4byte	.L86
	.uleb128 0x2c
	.4byte	.LASF139
	.byte	0x1
	.byte	0xe8
	.4byte	0x441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2c
	.4byte	.LASF143
	.byte	0x1
	.byte	0xe9
	.4byte	0xff2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.4byte	.LVL175
	.4byte	0x14c1
	.4byte	0xfc1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 17
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL179
	.4byte	0x1550
	.4byte	0xfe1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL185
	.4byte	0x155b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x2d6
	.uleb128 0x25
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x16b
	.4byte	0xee
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10c7
	.uleb128 0x22
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x16b
	.4byte	0x52f
	.4byte	.LLST31
	.uleb128 0x19
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x16d
	.4byte	0x52f
	.4byte	.LLST32
	.uleb128 0x24
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x172
	.4byte	0x441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x24
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x173
	.4byte	0xff2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.4byte	.LVL190
	.4byte	0x1550
	.4byte	0x1070
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL191
	.4byte	0x1489
	.4byte	0x108d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL192
	.4byte	0x14b5
	.4byte	0x10a0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL195
	.4byte	0x1489
	.4byte	0x10bd
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.4byte	.LVL197
	.4byte	0x89e
	.byte	0
	.uleb128 0x25
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x52f
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x132b
	.uleb128 0x1f
	.string	"ret"
	.byte	0x1
	.2byte	0x1b6
	.4byte	0xee
	.4byte	.LLST33
	.uleb128 0x19
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x52f
	.4byte	.LLST34
	.uleb128 0x24
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x1b9
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x94
	.4byte	.LLST35
	.uleb128 0x1b
	.4byte	.LVL211
	.4byte	0x1489
	.4byte	0x114c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.4byte	.LVL212
	.4byte	0x1494
	.uleb128 0x1b
	.4byte	.LVL213
	.4byte	0x149f
	.4byte	0x1183
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL215
	.4byte	0x14cc
	.4byte	0x11a7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x20
	.4byte	.LVL217
	.4byte	0x14e1
	.uleb128 0x20
	.4byte	.LVL218
	.4byte	0x1494
	.uleb128 0x1b
	.4byte	.LVL219
	.4byte	0x149f
	.4byte	0x11e7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL222
	.4byte	0x14d8
	.4byte	0x1207
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL223
	.4byte	0x14d8
	.4byte	0x122b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select+32
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x73
	.sleb128 4096
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL224
	.4byte	0x14e1
	.uleb128 0x20
	.4byte	.LVL225
	.4byte	0x606
	.uleb128 0x20
	.4byte	.LVL227
	.4byte	0x69f
	.uleb128 0x1b
	.4byte	.LVL228
	.4byte	0x7b7
	.4byte	0x125d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL229
	.4byte	0x7b7
	.4byte	0x1274
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select+32
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL230
	.4byte	0x1489
	.4byte	0x128c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL231
	.4byte	0x7b7
	.4byte	0x12a3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL232
	.4byte	0x1489
	.4byte	0x12bb
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL233
	.4byte	0x7b7
	.4byte	0x12d2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select+32
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL234
	.4byte	0x1489
	.4byte	0x12ea
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.4byte	.LVL235
	.4byte	0x1494
	.uleb128 0x1b
	.4byte	.LVL236
	.4byte	0x149f
	.4byte	0x1321
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x20
	.4byte	.LVL237
	.4byte	0x69f
	.byte	0
	.uleb128 0x25
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x213
	.4byte	0x52f
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1414
	.uleb128 0x22
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x213
	.4byte	0x52f
	.4byte	.LLST36
	.uleb128 0x19
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x215
	.4byte	0x52f
	.4byte	.LLST37
	.uleb128 0x19
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x216
	.4byte	0xf9
	.4byte	.LLST38
	.uleb128 0x1a
	.4byte	.LASF115
	.4byte	0x1424
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5764
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x13ca
	.uleb128 0x1f
	.string	"t"
	.byte	0x1
	.2byte	0x228
	.4byte	0x218
	.4byte	.LLST39
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.2byte	0x22b
	.4byte	0x52f
	.4byte	.LLST40
	.uleb128 0x1d
	.4byte	.LVL246
	.4byte	0x1489
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL240
	.4byte	0xaa7
	.uleb128 0x1b
	.4byte	.LVL243
	.4byte	0x152f
	.4byte	0x13e7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL245
	.4byte	0x147e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x21c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5764
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0x1424
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x21
	.byte	0
	.uleb128 0x6
	.4byte	0x1414
	.uleb128 0x2c
	.4byte	.LASF150
	.byte	0x1
	.byte	0x3f
	.4byte	0x57d
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_ops_entries_head
	.uleb128 0x2c
	.4byte	.LASF151
	.byte	0x1
	.byte	0x42
	.4byte	0xaa
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_ops_last_handle
	.uleb128 0x8
	.4byte	0x572
	.4byte	0x145b
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF152
	.byte	0x1
	.byte	0x43
	.4byte	0x144b
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select
	.uleb128 0x2d
	.string	"TAG"
	.byte	0x1
	.byte	0x45
	.4byte	0x110
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC5
	.byte	0x9f
	.uleb128 0x34
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0xd
	.byte	0x29
	.uleb128 0x34
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0x8
	.byte	0x8a
	.uleb128 0x34
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0xc
	.byte	0x57
	.uleb128 0x34
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0xc
	.byte	0x6b
	.uleb128 0x34
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0xe
	.byte	0x33
	.uleb128 0x35
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0x8
	.2byte	0x102
	.uleb128 0x34
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0x8
	.byte	0xef
	.uleb128 0x35
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0x8
	.2byte	0x11e
	.uleb128 0x36
	.4byte	.LASF179
	.4byte	.LASF179
	.uleb128 0x34
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0x7
	.byte	0xe9
	.uleb128 0x34
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0x8
	.byte	0x94
	.uleb128 0x34
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0x8
	.byte	0xa7
	.uleb128 0x34
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0x8
	.byte	0x9f
	.uleb128 0x35
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0x7
	.2byte	0x10f
	.uleb128 0x34
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0x8
	.byte	0x7b
	.uleb128 0x34
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0xf
	.byte	0x47
	.uleb128 0x34
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0x8
	.byte	0xbb
	.uleb128 0x34
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0xf
	.byte	0x57
	.uleb128 0x34
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0x10
	.byte	0x19
	.uleb128 0x34
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0xa
	.byte	0xa8
	.uleb128 0x34
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0xf
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x19
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2b
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
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL38
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL48
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL86
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL49
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL67
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL84
	.4byte	.LFE34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x16
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x16
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL91
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL94
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL100
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL97
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL104
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL107
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x2
	.byte	0x7a
	.sleb128 4
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL104
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL117
	.4byte	.LVL120
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL114
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL130
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL105
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL120
	.4byte	.LVL128
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL132
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL139
	.4byte	.LVL160
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL164
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL132
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL154
	.4byte	.LVL160
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL169
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL132
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL155
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL160
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL158
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL167
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL143
	.4byte	.LVL150-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL146
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL149
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL170
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL174
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
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL171
	.4byte	.LVL176
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL178
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL183
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL186
	.4byte	.LFE29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL188
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL194
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL200
	.4byte	.LVL201
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL201
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
	.4byte	.LVL205
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL207
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL208
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL189
	.4byte	.LVL191
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL191
	.4byte	.LVL192-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL199
	.4byte	.LVL205
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL215
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL209
	.4byte	.LVL211
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL211
	.4byte	.LVL212-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL214
	.4byte	.LVL215-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL210
	.4byte	.LVL226
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL226
	.4byte	.LFE37
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL238
	.4byte	.LVL241
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL241
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL242
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL244
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL239
	.4byte	.LVL245
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL245
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL250
	.4byte	.LVL251
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL251
	.4byte	.LVL253
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL239
	.4byte	.LVL245
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL245
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL250
	.4byte	.LVL251
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL251
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL245
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL251
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL246
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL252
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
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
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	0
	.4byte	0
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"spi_flash_mmap_handle_t"
.LASF147:
	.string	"start_from"
.LASF149:
	.string	"next_is_result"
.LASF15:
	.string	"size_t"
.LASF160:
	.string	"esp_partition_mmap"
.LASF136:
	.string	"out_handle"
.LASF3:
	.string	"__uint8_t"
.LASF109:
	.string	"seq_label"
.LASF138:
	.string	"esp_ota_write"
.LASF59:
	.string	"type"
.LASF132:
	.string	"esp_ota_get_running_partition"
.LASF73:
	.string	"entry_addr"
.LASF131:
	.string	"phys_offs"
.LASF134:
	.string	"partition"
.LASF10:
	.string	"long long unsigned int"
.LASF119:
	.string	"find_default_boot_partition"
.LASF139:
	.string	"data"
.LASF71:
	.string	"spi_speed"
.LASF6:
	.string	"__int32_t"
.LASF58:
	.string	"esp_partition_iterator_t"
.LASF142:
	.string	"esp_ota_end"
.LASF172:
	.string	"free"
.LASF146:
	.string	"esp_ota_get_next_update_partition"
.LASF105:
	.string	"partial_data"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF123:
	.string	"ota_select_valid"
.LASF67:
	.string	"esp_partition_pos_t"
.LASF56:
	.string	"ESP_PARTITION_SUBTYPE_ANY"
.LASF16:
	.string	"long int"
.LASF68:
	.string	"magic"
.LASF144:
	.string	"esp_ota_set_boot_partition"
.LASF156:
	.string	"esp_log_write"
.LASF179:
	.string	"memcpy"
.LASF117:
	.string	"is_ota_partition"
.LASF137:
	.string	"new_entry"
.LASF46:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MAX"
.LASF12:
	.string	"uint16_t"
.LASF43:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_13"
.LASF52:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS_KEYS"
.LASF90:
	.string	"ESP_IMAGE_VERIFY_SILENT"
.LASF114:
	.string	"flash_crypt_cnt"
.LASF148:
	.string	"default_ota"
.LASF145:
	.string	"esp_ota_get_boot_partition"
.LASF29:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MIN"
.LASF7:
	.string	"__uint32_t"
.LASF66:
	.string	"offset"
.LASF76:
	.string	"reserved"
.LASF104:
	.string	"partial_bytes"
.LASF79:
	.string	"load_addr"
.LASF168:
	.string	"esp_partition_verify"
.LASF108:
	.string	"ota_seq"
.LASF151:
	.string	"s_ota_ops_last_handle"
.LASF8:
	.string	"unsigned int"
.LASF127:
	.string	"esp_rewrite_ota_data"
.LASF175:
	.string	"/home/raphael/rtone/lcd/build/app_update"
.LASF27:
	.string	"esp_partition_type_t"
.LASF18:
	.string	"long unsigned int"
.LASF57:
	.string	"esp_partition_subtype_t"
.LASF102:
	.string	"erased_size"
.LASF122:
	.string	"ota_select_crc"
.LASF54:
	.string	"ESP_PARTITION_SUBTYPE_DATA_FAT"
.LASF62:
	.string	"size"
.LASF5:
	.string	"short unsigned int"
.LASF128:
	.string	"find_partition"
.LASF53:
	.string	"ESP_PARTITION_SUBTYPE_DATA_ESPHTTPD"
.LASF164:
	.string	"esp_partition_next"
.LASF176:
	.string	"esp_partition_iterator_opaque_"
.LASF163:
	.string	"esp_partition_iterator_release"
.LASF103:
	.string	"wrote_size"
.LASF94:
	.string	"ESP_LOG_WARN"
.LASF63:
	.string	"label"
.LASF2:
	.string	"short int"
.LASF157:
	.string	"crc32_le"
.LASF111:
	.string	"ota_ops_entry_"
.LASF60:
	.string	"subtype"
.LASF165:
	.string	"spi_flash_cache2phys"
.LASF112:
	.string	"ota_ops_entries_head"
.LASF154:
	.string	"esp_partition_find_first"
.LASF130:
	.string	"curr_partition"
.LASF133:
	.string	"esp_ota_begin"
.LASF95:
	.string	"ESP_LOG_INFO"
.LASF118:
	.string	"get_ota_partition_count"
.LASF99:
	.string	"le_prev"
.LASF106:
	.string	"entries"
.LASF17:
	.string	"sizetype"
.LASF141:
	.string	"copy_len"
.LASF49:
	.string	"ESP_PARTITION_SUBTYPE_DATA_PHY"
.LASF174:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/app_update/esp_ota_ops.c"
.LASF61:
	.string	"address"
.LASF77:
	.string	"hash_appended"
.LASF26:
	.string	"ESP_PARTITION_TYPE_DATA"
.LASF152:
	.string	"s_ota_select"
.LASF120:
	.string	"ota_app_count"
.LASF89:
	.string	"ESP_IMAGE_VERIFY"
.LASF22:
	.string	"SPI_FLASH_MMAP_DATA"
.LASF23:
	.string	"SPI_FLASH_MMAP_INST"
.LASF178:
	.string	"cleanup"
.LASF98:
	.string	"le_next"
.LASF125:
	.string	"sec_id"
.LASF25:
	.string	"ESP_PARTITION_TYPE_APP"
.LASF91:
	.string	"esp_ota_handle_t"
.LASF69:
	.string	"segment_count"
.LASF124:
	.string	"rewrite_ota_seq"
.LASF113:
	.string	"lh_first"
.LASF78:
	.string	"esp_image_header_t"
.LASF21:
	.string	"_Bool"
.LASF13:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF30:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_0"
.LASF82:
	.string	"start_addr"
.LASF32:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_2"
.LASF83:
	.string	"image"
.LASF34:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_4"
.LASF35:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_5"
.LASF36:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_6"
.LASF37:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_7"
.LASF38:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_8"
.LASF39:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_9"
.LASF143:
	.string	"part_pos"
.LASF155:
	.string	"esp_log_timestamp"
.LASF93:
	.string	"ESP_LOG_ERROR"
.LASF110:
	.string	"ota_select"
.LASF115:
	.string	"__func__"
.LASF80:
	.string	"data_len"
.LASF50:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS"
.LASF85:
	.string	"segment_data"
.LASF169:
	.string	"calloc"
.LASF81:
	.string	"esp_image_segment_header_t"
.LASF64:
	.string	"encrypted"
.LASF177:
	.string	"esp_flash_encryption_enabled"
.LASF75:
	.string	"spi_pin_drv"
.LASF14:
	.string	"uint32_t"
.LASF116:
	.string	"enabled"
.LASF70:
	.string	"spi_mode"
.LASF19:
	.string	"char"
.LASF97:
	.string	"ESP_LOG_VERBOSE"
.LASF129:
	.string	"ota_data_map"
.LASF171:
	.string	"esp_image_verify"
.LASF28:
	.string	"ESP_PARTITION_SUBTYPE_APP_FACTORY"
.LASF4:
	.string	"__uint16_t"
.LASF92:
	.string	"ESP_LOG_NONE"
.LASF158:
	.string	"esp_partition_erase_range"
.LASF167:
	.string	"abort"
.LASF159:
	.string	"esp_partition_write"
.LASF88:
	.string	"esp_image_metadata_t"
.LASF31:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_1"
.LASF86:
	.string	"image_len"
.LASF33:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_3"
.LASF161:
	.string	"spi_flash_munmap"
.LASF162:
	.string	"esp_partition_get"
.LASF126:
	.string	"ota_data_partition"
.LASF101:
	.string	"part"
.LASF74:
	.string	"wp_pin"
.LASF47:
	.string	"ESP_PARTITION_SUBTYPE_APP_TEST"
.LASF107:
	.string	"ota_ops_entry_t"
.LASF135:
	.string	"image_size"
.LASF40:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_10"
.LASF41:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_11"
.LASF42:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_12"
.LASF170:
	.string	"memset"
.LASF44:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_14"
.LASF45:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_15"
.LASF48:
	.string	"ESP_PARTITION_SUBTYPE_DATA_OTA"
.LASF20:
	.string	"esp_err_t"
.LASF51:
	.string	"ESP_PARTITION_SUBTYPE_DATA_COREDUMP"
.LASF72:
	.string	"spi_size"
.LASF84:
	.string	"segments"
.LASF11:
	.string	"uint8_t"
.LASF55:
	.string	"ESP_PARTITION_SUBTYPE_DATA_SPIFFS"
.LASF153:
	.string	"__assert_func"
.LASF173:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF100:
	.string	"handle"
.LASF150:
	.string	"s_ota_ops_entries_head"
.LASF65:
	.string	"esp_partition_t"
.LASF166:
	.string	"esp_partition_find"
.LASF96:
	.string	"ESP_LOG_DEBUG"
.LASF87:
	.string	"image_digest"
.LASF140:
	.string	"data_bytes"
.LASF121:
	.string	"result"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
