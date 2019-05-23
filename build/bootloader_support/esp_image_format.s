	.file	"esp_image_format.c"
	.text
.Ltext0:
	.section	.text.should_map,"ax",@progbits
	.literal_position
	.literal .LC1, -1074593792
	.literal .LC2, 3342335
	.literal .LC3, -1061158912
	.literal .LC4, 4194303
	.align	4
	.type	should_map, @function
should_map:
.LFB16:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/src/esp_image_format.c"
	.loc 1 474 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 475 0
	l32r	a9, .LC1
	add.n	a9, a2, a9
	movi.n	a8, 1
	l32r	a10, .LC2
	bgeu	a10, a9, .L2
	movi.n	a8, 0
.L2:
	extui	a9, a8, 0, 8
	.loc 1 476 0
	l32r	a8, .LC3
	add.n	a2, a2, a8
.LVL1:
	movi.n	a8, 1
	l32r	a10, .LC4
	bgeu	a10, a2, .L3
	movi.n	a8, 0
.L3:
	extui	a2, a8, 0, 8
.LVL2:
	.loc 1 477 0
	or	a2, a9, a2
	retw.n
.LFE16:
	.size	should_map, .-should_map
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC6:
	.string	"esp_image"
	.align	4
.LC8:
	.string	"\033[0;31mE (%d) %s: image at 0x%x has invalid magic byte\033[0m\n"
	.align	4
.LC10:
	.string	"\033[0;33mW (%d) %s: image at 0x%x has invalid SPI mode %d\033[0m\n"
	.align	4
.LC12:
	.string	"\033[0;33mW (%d) %s: image at 0x%x has invalid SPI speed %d\033[0m\n"
	.align	4
.LC14:
	.string	"\033[0;33mW (%d) %s: image at 0x%x has invalid SPI size %d\033[0m\n"
	.section	.text.verify_image_header,"ax",@progbits
	.literal_position
	.literal .LC5, 8194
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC15, .LC14
	.align	4
	.type	verify_image_header, @function
verify_image_header:
.LFB12:
	.loc 1 274 0
.LVL3:
	entry	sp, 48
.LCFI1:
.LVL4:
	.loc 1 277 0
	l8ui	a9, a3, 0
	movi	a8, 0xe9
	beq	a9, a8, .L9
	.loc 1 278 0
	bnez.n	a4, .L10
	.loc 1 279 0 discriminator 2
	call8	esp_log_timestamp
.LVL5:
	l32r	a11, .LC7
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC9
	movi.n	a10, 1
	call8	esp_log_write
.LVL6:
	.loc 1 281 0 discriminator 2
	l32r	a5, .LC5
	j	.L5
.L9:
	.loc 1 275 0
	movi.n	a5, 0
	j	.L5
.L10:
	.loc 1 281 0
	l32r	a5, .LC5
.L5:
.LVL7:
	.loc 1 283 0
	bnez.n	a4, .L6
	.loc 1 284 0
	l8ui	a4, a3, 2
.LVL8:
	bltui	a4, 6, .L8
	.loc 1 285 0 discriminator 4
	call8	esp_log_timestamp
.LVL9:
	l8ui	a4, a3, 2
	l32r	a11, .LC7
	s32i.n	a4, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC11
	movi.n	a10, 2
	call8	esp_log_write
.LVL10:
.L8:
	.loc 1 290 0
	l8ui	a4, a3, 3
	extui	a4, a4, 4, 4
	blti	a4, 6, .L6
	.loc 1 291 0 discriminator 4
	call8	esp_log_timestamp
.LVL11:
	l8ui	a3, a3, 3
.LVL12:
	extui	a3, a3, 4, 4
	l32r	a11, .LC7
	s32i.n	a3, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC15
	movi.n	a10, 2
	call8	esp_log_write
.LVL13:
.L6:
	.loc 1 295 0
	mov.n	a2, a5
.LVL14:
	retw.n
.LFE12:
	.size	verify_image_header, .-verify_image_header
	.section	.rodata.str1.4
	.align	4
.LC19:
	.string	"\033[0;31mE (%d) %s: invalid segment length 0x%x\033[0m\n"
	.align	4
.LC21:
	.string	"\033[0;31mE (%d) %s: Segment %d load address 0x%08x, doesn't match data 0x%08x\033[0m\n"
	.section	.text.verify_segment_header,"ax",@progbits
	.literal_position
	.literal .LC16, 8194
	.literal .LC17, 16777215
	.literal .LC18, .LC6
	.literal .LC20, .LC19
	.literal .LC22, .LC21
	.align	4
	.type	verify_segment_header, @function
verify_segment_header:
.LFB15:
	.loc 1 444 0
.LVL15:
	entry	sp, 48
.LCFI2:
	.loc 1 445 0
	l32i.n	a8, a3, 4
	extui	a9, a8, 0, 2
	bnez.n	a9, .L12
	.loc 1 446 0
	l32r	a9, .LC17
	bgeu	a9, a8, .L13
.L12:
	.loc 1 447 0
	bnez.n	a5, .L15
	.loc 1 448 0 discriminator 2
	call8	esp_log_timestamp
.LVL16:
	l32r	a11, .LC18
	l32i.n	a15, a3, 4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC20
	movi.n	a10, 1
	call8	esp_log_write
.LVL17:
	.loc 1 450 0 discriminator 2
	l32r	a2, .LC16
.LVL18:
	retw.n
.LVL19:
.L13:
	.loc 1 453 0
	l32i.n	a3, a3, 0
.LVL20:
	.loc 1 454 0
	mov.n	a10, a3
	call8	should_map
.LVL21:
	.loc 1 461 0
	beqz.n	a10, .L16
	.loc 1 462 0
	xor	a8, a3, a4
	extui	a8, a8, 0, 16
	beqz.n	a8, .L17
	.loc 1 463 0
	bnez.n	a5, .L18
	.loc 1 464 0 discriminator 2
	call8	esp_log_timestamp
.LVL22:
	l32r	a11, .LC18
	s32i.n	a4, sp, 4
	s32i.n	a3, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC22
	movi.n	a10, 1
	call8	esp_log_write
.LVL23:
	.loc 1 467 0 discriminator 2
	l32r	a2, .LC16
.LVL24:
	retw.n
.LVL25:
.L15:
	.loc 1 450 0
	l32r	a2, .LC16
.LVL26:
	retw.n
.LVL27:
.L16:
	.loc 1 470 0
	movi.n	a2, 0
.LVL28:
	retw.n
.LVL29:
.L17:
	movi.n	a2, 0
.LVL30:
	retw.n
.LVL31:
.L18:
	.loc 1 467 0
	l32r	a2, .LC16
.LVL32:
	.loc 1 471 0
	retw.n
.LFE15:
	.size	verify_segment_header, .-verify_segment_header
	.section	.rodata.str1.4
	.align	4
.LC25:
	.string	"\033[0;31mE (%d) %s: Checksum failed. Calculated 0x%x read 0x%x\033[0m\n"
	.section	.text.verify_checksum,"ax",@progbits
	.literal_position
	.literal .LC23, 8194
	.literal .LC24, .LC6
	.literal .LC26, .LC25
	.align	4
	.type	verify_checksum, @function
verify_checksum:
.LFB20:
	.loc 1 541 0
.LVL33:
	entry	sp, 64
.LCFI3:
	.loc 1 542 0
	l32i	a7, a4, 220
.LVL34:
	.loc 1 544 0
	addi	a6, a7, 16
	movi.n	a5, -0x10
	and	a5, a6, a5
.LVL35:
	.loc 1 548 0
	l32i.n	a10, a4, 0
	sub	a6, a5, a7
	movi.n	a13, 1
	mov.n	a12, a6
	addi	a11, sp, 16
	add.n	a10, a7, a10
	call8	bootloader_flash_read
.LVL36:
	.loc 1 549 0
	addi.n	a7, a6, -1
.LVL37:
	addi	a8, sp, 16
	add.n	a7, a8, a7
	l8ui	a7, a7, 0
.LVL38:
	.loc 1 550 0
	extui	a11, a3, 24, 8
	.loc 1 551 0
	extui	a8, a3, 16, 16
.LVL39:
	.loc 1 552 0
	srli	a9, a3, 8
	.loc 1 550 0
	xor	a8, a11, a8
	xor	a8, a8, a9
	xor	a3, a8, a3
.LVL40:
	extui	a3, a3, 0, 8
.LVL41:
	.loc 1 554 0
	movi.n	a12, 1
	movi.n	a11, 0
	mov.n	a8, a11
	movnez	a8, a12, a10
	sub	a9, a7, a3
	mov.n	a10, a11
.LVL42:
	movnez	a10, a12, a9
	or	a10, a10, a8
	beq	a10, a11, .L20
	.loc 1 555 0 discriminator 2
	call8	esp_log_timestamp
.LVL43:
	l32r	a11, .LC24
	s32i.n	a7, sp, 0
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC26
	movi.n	a10, 1
	call8	esp_log_write
.LVL44:
	.loc 1 556 0 discriminator 2
	l32r	a2, .LC23
.LVL45:
	retw.n
.LVL46:
.L20:
	.loc 1 558 0
	beqz.n	a2, .L22
	.loc 1 559 0
	mov.n	a12, a6
	addi	a11, sp, 16
.LVL47:
	mov.n	a10, a2
	call8	bootloader_sha256_data
.LVL48:
.L22:
	.loc 1 562 0
	l8ui	a2, a4, 27
.LVL49:
	beqz.n	a2, .L23
	.loc 1 564 0
	addi	a5, a5, 32
.LVL50:
.L23:
	.loc 1 566 0
	s32i	a5, a4, 220
	.loc 1 568 0
	movi.n	a2, 0
	.loc 1 569 0
	retw.n
.LFE20:
	.size	verify_checksum, .-verify_checksum
	.section	.rodata.str1.4
	.align	4
.LC28:
	.string	"\033[0;31mE (%d) %s: bootloader_mmap(0x%x, 0x%x) failed\033[0m\n"
	.section	.text.process_segment_data,"ax",@progbits
	.literal_position
	.literal .LC27, .LC6
	.literal .LC29, .LC28
	.align	4
	.type	process_segment_data, @function
process_segment_data:
.LFB14:
	.loc 1 400 0
.LVL51:
	entry	sp, 48
.LCFI4:
	.loc 1 401 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	bootloader_mmap
.LVL52:
	mov.n	a2, a10
.LVL53:
	.loc 1 402 0
	bnez.n	a10, .L29
	.loc 1 403 0 discriminator 2
	call8	esp_log_timestamp
.LVL54:
	l32r	a11, .LC27
	s32i.n	a4, sp, 0
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC29
	movi.n	a10, 1
	call8	esp_log_write
.LVL55:
	.loc 1 405 0 discriminator 2
	movi.n	a2, -1
.LVL56:
	retw.n
.LVL57:
.L28:
.LBB2:
.LBB3:
	.loc 1 419 0
	addi.n	a11, a3, 3
	movgez	a11, a3, a3
	srai	a11, a11, 2
.LVL58:
	.loc 1 420 0
	addx4	a11, a11, a2
.LVL59:
	l32i.n	a8, a11, 0
.LVL60:
	.loc 1 421 0
	l32i.n	a9, a7, 0
	xor	a8, a9, a8
.LVL61:
	s32i.n	a8, a7, 0
.LVL62:
	.loc 1 432 0
	beqz.n	a6, .L27
	.loc 1 432 0 discriminator 1
	extui	a8, a12, 0, 10
	bnez.n	a8, .L27
	.loc 1 434 0
	sub	a12, a4, a12
	.loc 1 433 0
	movi	a8, 0x400
	minu	a12, a12, a8
	mov.n	a10, a6
	call8	bootloader_sha256_data
.LVL63:
.L27:
.LBE3:
	.loc 1 418 0 discriminator 2
	addi.n	a3, a3, 4
.LVL64:
	j	.L25
.LVL65:
.L29:
.LBE2:
	movi.n	a3, 0
.LVL66:
.L25:
.LBB4:
	.loc 1 418 0 is_stmt 0 discriminator 1
	mov.n	a12, a3
	bltu	a3, a4, .L28
.LBE4:
	.loc 1 438 0 is_stmt 1
	mov.n	a10, a2
	call8	bootloader_munmap
.LVL67:
	.loc 1 440 0
	movi.n	a2, 0
.LVL68:
	.loc 1 441 0
	retw.n
.LFE14:
	.size	process_segment_data, .-process_segment_data
	.section	.text.should_load,"ax",@progbits
	.literal_position
	.literal .LC30, 268435455
	.literal .LC31, -1074528256
	.literal .LC32, 8191
	.literal .LC33, -1073217536
	.literal .LC34, -1342177280
	.align	4
	.type	should_load, @function
should_load:
.LFB17:
	.loc 1 480 0
.LVL69:
	entry	sp, 32
.LCFI5:
	.loc 1 483 0
	movi.n	a10, 0
	call8	rtc_get_reset_reason
.LVL70:
	mov.n	a3, a10
.LVL71:
	.loc 1 485 0
	mov.n	a10, a2
	call8	should_map
.LVL72:
	bnez.n	a10, .L32
	.loc 1 489 0
	l32r	a8, .LC30
	bgeu	a8, a2, .L31
	.loc 1 497 0
	bnei	a3, 5, .L33
	.loc 1 498 0
	l32r	a3, .LC31
.LVL73:
	add.n	a3, a2, a3
	l32r	a8, .LC32
	bgeu	a8, a3, .L31
	.loc 1 502 0
	l32r	a3, .LC33
	add.n	a3, a2, a3
	bgeu	a8, a3, .L31
	.loc 1 506 0
	l32r	a3, .LC34
	add.n	a2, a2, a3
.LVL74:
	mov.n	a3, a8
	bgeu	a8, a2, .L31
	.loc 1 512 0
	movi.n	a10, 1
	j	.L31
.LVL75:
.L32:
	.loc 1 486 0
	movi.n	a10, 0
	j	.L31
.L33:
	.loc 1 512 0
	movi.n	a10, 1
.LVL76:
.L31:
	.loc 1 513 0
	mov.n	a2, a10
	retw.n
.LFE17:
	.size	should_load, .-should_load
	.section	.rodata.str1.4
	.align	4
.LC35:
	.string	"load"
	.align	4
.LC37:
	.string	""
	.align	4
.LC39:
	.string	"map"
	.align	4
.LC43:
	.string	"\033[0;31mE (%d) %s: bootloader_flash_read failed at 0x%08x\033[0m\n"
	.align	4
.LC45:
	.string	"\033[0;31mE (%d) %s: unaligned segment length 0x%x\033[0m\n"
	.align	4
.LC47:
	.string	"\033[0;32mI (%d) %s: segment %d: paddr=0x%08x vaddr=0x%08x size=0x%05x (%6d) %s\033[0m\n"
	.section	.text.process_segment,"ax",@progbits
	.literal_position
	.literal .LC36, .LC35
	.literal .LC38, .LC37
	.literal .LC40, .LC39
	.literal .LC41, 8194
	.literal .LC42, .LC6
	.literal .LC44, .LC43
	.literal .LC46, .LC45
	.literal .LC48, .LC47
	.align	4
	.type	process_segment, @function
process_segment:
.LFB13:
	.loc 1 298 0
.LVL77:
	entry	sp, 96
.LCFI6:
	s32i.n	a7, sp, 36
	l32i.n	a8, sp, 36
	s32i.n	a8, sp, 44
	.loc 1 302 0
	movi.n	a13, 1
	movi.n	a12, 8
	mov.n	a11, a4
	mov.n	a10, a3
	call8	bootloader_flash_read
.LVL78:
	mov.n	a7, a10
.LVL79:
	.loc 1 303 0
	beqz.n	a10, .L35
	.loc 1 304 0 discriminator 2
	call8	esp_log_timestamp
.LVL80:
	l32r	a11, .LC42
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC44
	movi.n	a10, 1
	call8	esp_log_write
.LVL81:
	.loc 1 305 0 discriminator 2
	mov.n	a2, a7
.LVL82:
	retw.n
.LVL83:
.L35:
	.loc 1 307 0
	l32i.n	a8, sp, 44
	beqz.n	a8, .L37
	.loc 1 308 0
	movi.n	a12, 8
	mov.n	a11, a4
	l32i.n	a10, sp, 36
	call8	bootloader_sha256_data
.LVL84:
.L37:
	.loc 1 311 0
	l32i.n	a8, a4, 0
	s32i.n	a8, sp, 40
	s32i.n	a8, sp, 32
.LVL85:
	.loc 1 312 0
	l32i.n	a7, a4, 4
.LVL86:
	.loc 1 313 0
	addi.n	a3, a3, 8
.LVL87:
	.loc 1 317 0
	mov.n	a13, a5
	mov.n	a12, a3
	mov.n	a11, a4
	mov.n	a10, a2
	call8	verify_segment_header
.LVL88:
	mov.n	a4, a10
.LVL89:
	.loc 1 318 0
	bnez.n	a10, .L45
	.loc 1 322 0
	extui	a8, a7, 0, 2
	beqz.n	a8, .L38
	.loc 1 323 0
	bnez.n	a5, .L39
	.loc 1 323 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL90:
	l32r	a11, .LC42
	mov.n	a15, a7
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC46
	movi.n	a10, 1
	call8	esp_log_write
.LVL91:
	j	.L39
.L38:
	.loc 1 326 0 is_stmt 1
	l32i.n	a10, sp, 40
	call8	should_map
.LVL92:
	s32i.n	a10, sp, 48
.LVL93:
	.loc 1 327 0
	beqz.n	a6, .L46
	.loc 1 327 0 is_stmt 0 discriminator 1
	l32i.n	a10, sp, 40
	call8	should_load
.LVL94:
	beqz.n	a10, .L47
	.loc 1 327 0
	movi.n	a6, 1
.LVL95:
	j	.L40
.LVL96:
.L46:
	movi.n	a6, 0
.LVL97:
	j	.L40
.LVL98:
.L47:
	movi.n	a6, 0
.LVL99:
.L40:
	.loc 1 329 0 is_stmt 1 discriminator 6
	bnez.n	a5, .L41
	.loc 1 330 0 discriminator 33
	call8	esp_log_timestamp
.LVL100:
	bnez.n	a6, .L48
	.loc 1 330 0 is_stmt 0 discriminator 43
	l32i.n	a4, sp, 48
.LVL101:
	beqz.n	a4, .L49
	.loc 1 330 0
	l32r	a4, .LC40
	j	.L42
.LVL102:
.L48:
	l32r	a4, .LC36
.LVL103:
	j	.L42
.L49:
	l32r	a4, .LC38
.L42:
	.loc 1 330 0 discriminator 49
	l32r	a11, .LC42
	s32i.n	a4, sp, 16
	s32i.n	a7, sp, 12
	s32i.n	a7, sp, 8
	l32i.n	a4, sp, 40
	s32i.n	a4, sp, 4
	s32i.n	a3, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC48
	movi.n	a10, 3
	call8	esp_log_write
.LVL104:
.L41:
	.loc 1 372 0 is_stmt 1
	movi.n	a10, 0
	call8	spi_flash_mmap_get_free_pages
.LVL105:
	mov.n	a4, a10
.LVL106:
	l32i.n	a5, sp, 44
.LVL107:
	.loc 1 375 0
	j	.L43
.LVL108:
.L44:
	.loc 1 376 0
	extui	a8, a3, 0, 16
	movi.n	a2, 0
	movi.n	a9, 1
	movnez	a2, a9, a8
.LVL109:
	.loc 1 377 0
	sub	a2, a4, a2
.LVL110:
	slli	a2, a2, 16
	l32i	a15, sp, 96
	mov.n	a14, a5
	mov.n	a13, a6
	mov.n	a12, a2
	mov.n	a11, a3
	l32i.n	a10, sp, 32
	call8	process_segment_data
.LVL111:
	.loc 1 378 0
	bnez.n	a10, .L50
	.loc 1 381 0
	add.n	a3, a3, a2
.LVL112:
	.loc 1 382 0
	sub	a7, a7, a2
.LVL113:
.L43:
	.loc 1 375 0
	slli	a2, a4, 16
	bgeu	a7, a2, .L44
	.loc 1 385 0
	l32i	a15, sp, 96
	l32i.n	a14, sp, 36
	mov.n	a13, a6
	mov.n	a12, a7
	mov.n	a11, a3
	l32i.n	a10, sp, 40
	call8	process_segment_data
.LVL114:
	.loc 1 386 0
	bnez.n	a10, .L51
	.loc 1 389 0
	movi.n	a2, 0
	retw.n
.LVL115:
.L39:
	.loc 1 392 0
	beqz.n	a4, .L52
	.loc 1 317 0
	mov.n	a2, a4
.LVL116:
	retw.n
.LVL117:
.L45:
	.loc 1 319 0
	mov.n	a2, a10
.LVL118:
	retw.n
.LVL119:
.L50:
	.loc 1 379 0
	mov.n	a2, a10
	retw.n
.LVL120:
.L51:
	.loc 1 387 0
	mov.n	a2, a10
	retw.n
.LVL121:
.L52:
	.loc 1 393 0
	l32r	a2, .LC41
.LVL122:
	.loc 1 397 0
	retw.n
.LFE13:
	.size	process_segment, .-process_segment
	.section	.text.debug_log_hash,"ax",@progbits
	.align	4
	.type	debug_log_hash, @function
debug_log_hash:
.LFB23:
	.loc 1 641 0
.LVL123:
	entry	sp, 112
.LCFI7:
	.loc 1 644 0
	movi.n	a8, 0
	s8i	a8, sp, 64
	.loc 1 645 0
	movi.n	a12, 0x20
	mov.n	a11, a2
	mov.n	a10, sp
	call8	bootloader_sha256_hex_to_str
.LVL124:
	retw.n
.LFE23:
	.size	debug_log_hash, .-debug_log_hash
	.section	.rodata.str1.4
	.align	4
.LC50:
	.string	"Calculated hash"
	.align	4
.LC53:
	.string	"\033[0;31mE (%d) %s: Image hash failed - image is corrupt\033[0m\n"
	.align	4
.LC55:
	.string	"Expected hash"
	.section	.text.verify_simple_hash,"ax",@progbits
	.literal_position
	.literal .LC49, 8194
	.literal .LC51, .LC50
	.literal .LC52, .LC6
	.literal .LC54, .LC53
	.literal .LC56, .LC55
	.align	4
	.type	verify_simple_hash, @function
verify_simple_hash:
.LFB22:
	.loc 1 619 0
.LVL125:
	entry	sp, 64
.LCFI8:
	.loc 1 620 0
	movi.n	a4, 0x20
	mov.n	a12, a4
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL126:
	.loc 1 621 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	bootloader_sha256_finish
.LVL127:
	.loc 1 624 0
	l32r	a11, .LC51
	mov.n	a10, sp
	call8	debug_log_hash
.LVL128:
	.loc 1 627 0
	l32i.n	a10, a3, 0
	l32i	a2, a3, 220
.LVL129:
	add.n	a10, a10, a2
	mov.n	a11, a4
	addi	a10, a10, -32
	call8	bootloader_mmap
.LVL130:
	mov.n	a3, a10
.LVL131:
	.loc 1 628 0
	mov.n	a12, a4
	mov.n	a11, sp
	call8	memcmp
.LVL132:
	mov.n	a2, a10
	beqz.n	a10, .L55
	.loc 1 629 0 discriminator 2
	call8	esp_log_timestamp
.LVL133:
	l32r	a11, .LC52
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC54
	movi.n	a10, 1
	call8	esp_log_write
.LVL134:
	.loc 1 630 0 discriminator 2
	l32r	a11, .LC56
	mov.n	a10, a3
	call8	debug_log_hash
.LVL135:
	.loc 1 631 0 discriminator 2
	mov.n	a10, a3
	call8	bootloader_munmap
.LVL136:
	.loc 1 632 0 discriminator 2
	l32r	a2, .LC49
	retw.n
.L55:
	.loc 1 635 0
	mov.n	a10, a3
	call8	bootloader_munmap
.LVL137:
	.loc 1 637 0
	retw.n
.LFE22:
	.size	verify_simple_hash, .-verify_simple_hash
	.section	.rodata.str1.4
	.align	4
.LC60:
	.string	"\033[0;31mE (%d) %s: partition size 0x%x invalid, larger than 16MB\033[0m\n"
	.align	4
.LC62:
	.string	"\033[0;31mE (%d) %s: image at 0x%x segment count %d exceeds max %d\033[0m\n"
	.align	4
.LC64:
	.string	"\033[0;31mE (%d) %s: image offset has wrapped\033[0m\n"
	.align	4
.LC66:
	.string	"\033[0;31mE (%d) %s: Image length %d doesn't fit in partition length %d\033[0m\n"
	.section	.text.image_load,"ax",@progbits
	.literal_position
	.literal .LC57, 8194
	.literal .LC58, 16777216
	.literal .LC59, .LC6
	.literal .LC61, .LC60
	.literal .LC63, .LC62
	.literal .LC65, .LC64
	.literal .LC67, .LC66
	.literal .LC68, 4096
	.align	4
	.type	image_load, @function
image_load:
.LFB9:
	.loc 1 98 0
.LVL138:
	entry	sp, 80
.LCFI9:
.LVL139:
	.loc 1 104 0
	addi.n	a5, a2, -1
	movi.n	a6, 1
	movi.n	a8, 0
	mov.n	a9, a8
	moveqz	a9, a6, a5
	extui	a5, a9, 0, 8
.LVL140:
	.loc 1 107 0
	movi	a7, 0xef
	s32i.n	a7, sp, 16
.LVL141:
	.loc 1 110 0
	mov.n	a9, a8
.LVL142:
	moveqz	a9, a6, a4
	mov.n	a7, a9
	.loc 1 110 0
	movnez	a6, a8, a3
	or	a6, a6, a9
	.loc 1 110 0
	bne	a6, a8, .L73
	.loc 1 114 0
	l32i.n	a6, a3, 4
	l32r	a7, .LC58
	bgeu	a7, a6, .L59
.LVL143:
	.loc 1 116 0
	beqi	a2, 1, .L74
	.loc 1 116 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL144:
	l32r	a11, .LC59
	l32i.n	a15, a3, 4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC61
	movi.n	a10, 1
	call8	esp_log_write
.LVL145:
	.loc 1 108 0 is_stmt 1 discriminator 3
	movi.n	a7, 0
	.loc 1 115 0 discriminator 3
	movi	a6, 0x102
	j	.L60
.LVL146:
.L59:
	.loc 1 119 0
	movi	a12, 0x100
	movi.n	a11, 0
	mov.n	a10, a4
	call8	memset
.LVL147:
	.loc 1 120 0
	l32i.n	a10, a3, 0
	s32i.n	a10, a4, 0
	.loc 1 123 0
	addi.n	a6, a4, 4
	s32i.n	a6, sp, 32
	movi.n	a13, 1
	movi.n	a12, 0x18
	mov.n	a11, a6
	call8	bootloader_flash_read
.LVL148:
	mov.n	a6, a10
.LVL149:
	.loc 1 124 0
	bnez.n	a10, .L75
	.loc 1 132 0
	l8ui	a6, a4, 27
.LVL150:
	beqz.n	a6, .L76
	.loc 1 134 0
	call8	bootloader_sha256_start
.LVL151:
	mov.n	a7, a10
.LVL152:
	.loc 1 135 0
	beqz.n	a10, .L77
	.loc 1 138 0
	movi.n	a12, 0x18
	l32i.n	a11, sp, 32
	call8	bootloader_sha256_data
.LVL153:
	j	.L61
.LVL154:
.L76:
	.loc 1 108 0
	movi.n	a7, 0
.LVL155:
.L61:
	.loc 1 148 0
	s32i.n	a5, sp, 36
	mov.n	a12, a5
	l32i.n	a11, sp, 32
	l32i.n	a10, a4, 0
	call8	verify_image_header
.LVL156:
	mov.n	a6, a10
.LVL157:
	.loc 1 149 0
	bnez.n	a10, .L60
	.loc 1 153 0
	l8ui	a5, a4, 5
.LVL158:
	movi.n	a8, 0x10
	bgeu	a8, a5, .L62
	.loc 1 154 0
	beqi	a2, 1, .L60
	.loc 1 154 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL159:
	l8ui	a2, a4, 5
.LVL160:
	l32r	a11, .LC59
	movi.n	a3, 0x10
.LVL161:
	s32i.n	a3, sp, 4
	s32i.n	a2, sp, 0
	l32i.n	a15, a4, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC63
	movi.n	a10, 1
	call8	esp_log_write
.LVL162:
	j	.L60
.LVL163:
.L62:
	.loc 1 158 0 is_stmt 1
	l32i.n	a5, a4, 0
	addi	a5, a5, 24
	s32i.n	a5, sp, 32
.LVL164:
.LBB5:
	.loc 1 159 0
	movi.n	a5, 0
.LVL165:
	j	.L63
.LVL166:
.L64:
.LBB6:
	.loc 1 160 0
	addi.n	a12, a5, 2
	addx8	a12, a12, a4
.LVL167:
	.loc 1 162 0
	addi	a6, sp, 16
.LVL168:
	s32i.n	a6, sp, 0
	mov.n	a15, a7
	movi.n	a14, 0
	l32i.n	a13, sp, 36
	addi.n	a12, a12, 12
.LVL169:
	l32i.n	a11, sp, 32
	mov.n	a10, a5
.LVL170:
	call8	process_segment
.LVL171:
	mov.n	a6, a10
.LVL172:
	.loc 1 163 0
	bnez.n	a10, .L60
	.loc 1 166 0 discriminator 2
	l32i.n	a8, sp, 32
	addi.n	a9, a8, 8
.LVL173:
	.loc 1 167 0 discriminator 2
	addi	a8, a5, 36
	addx4	a8, a8, a4
	s32i.n	a9, a8, 12
	.loc 1 168 0 discriminator 2
	addi.n	a8, a5, 2
.LVL174:
	addx8	a8, a8, a4
.LVL175:
	l32i.n	a8, a8, 16
.LVL176:
	add.n	a8, a9, a8
	s32i.n	a8, sp, 32
.LVL177:
.LBE6:
	.loc 1 159 0 discriminator 2
	addi.n	a5, a5, 1
.LVL178:
.L63:
	.loc 1 159 0 is_stmt 0 discriminator 1
	l8ui	a8, a4, 5
	blt	a5, a8, .L64
.LVL179:
.LBE5:
	.loc 1 173 0 is_stmt 1
	l32i.n	a5, a4, 0
.LVL180:
	l32i.n	a9, sp, 32
	bgeu	a9, a5, .L65
	.loc 1 174 0
	beqi	a2, 1, .L60
	.loc 1 174 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL181:
	l32r	a11, .LC59
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC65
	movi.n	a10, 1
	call8	esp_log_write
.LVL182:
	j	.L60
.LVL183:
.L65:
	.loc 1 177 0 is_stmt 1
	l32i.n	a8, sp, 32
	sub	a5, a8, a5
	s32i	a5, a4, 220
	.loc 1 179 0
	call8	esp_cpu_in_ocd_debug_mode
.LVL184:
	bnez.n	a10, .L66
	.loc 1 180 0
	mov.n	a12, a4
	l32i.n	a11, sp, 16
	mov.n	a10, a7
	call8	verify_checksum
.LVL185:
	mov.n	a6, a10
.LVL186:
	.loc 1 181 0
	bnez.n	a10, .L60
.L66:
	.loc 1 185 0
	l32i	a5, a4, 220
	l32i.n	a8, a3, 4
	bgeu	a8, a5, .L67
	.loc 1 186 0
	beqi	a2, 1, .L60
	.loc 1 186 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL187:
	l32r	a11, .LC59
	l32i.n	a2, a3, 4
.LVL188:
	s32i.n	a2, sp, 0
	l32i	a15, a4, 220
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC67
	movi.n	a10, 1
	call8	esp_log_write
.LVL189:
	j	.L60
.LVL190:
.L67:
	.loc 1 189 0 is_stmt 1
	l32i.n	a3, a4, 0
.LVL191:
	.loc 1 195 0
	l32r	a2, .LC68
.LVL192:
	beq	a3, a2, .L68
	.loc 1 201 0
	beqz.n	a7, .L69
	.loc 1 201 0 discriminator 1
	call8	esp_cpu_in_ocd_debug_mode
.LVL193:
	bnez.n	a10, .L69
	.loc 1 202 0
	mov.n	a11, a4
	mov.n	a10, a7
	call8	verify_simple_hash
.LVL194:
	mov.n	a6, a10
.LVL195:
	j	.L69
.L68:
	.loc 1 207 0
	beqz.n	a7, .L69
	.loc 1 208 0
	movi.n	a11, 0
	mov.n	a10, a7
	call8	bootloader_sha256_finish
.LVL196:
.L69:
	.loc 1 212 0
	l8ui	a2, a4, 27
	beqz.n	a2, .L70
.LBB7:
	.loc 1 213 0
	l32i.n	a10, a4, 0
	l32i	a2, a4, 220
	add.n	a10, a10, a2
	movi.n	a11, 0x20
	addi	a10, a10, -32
	call8	bootloader_mmap
.LVL197:
	mov.n	a2, a10
.LVL198:
	.loc 1 214 0
	beqz.n	a10, .L78
	.loc 1 218 0
	movi.n	a12, 0x20
	mov.n	a11, a10
	movi	a10, 0xe0
	add.n	a10, a4, a10
	call8	memcpy
.LVL199:
	.loc 1 219 0
	mov.n	a10, a2
	call8	bootloader_munmap
.LVL200:
.L70:
.LBE7:
	.loc 1 223 0
	beqz.n	a6, .L79
	.loc 1 222 0
	movi.n	a7, 0
	j	.L60
.LVL201:
.L74:
	.loc 1 108 0
	movi.n	a7, 0
	.loc 1 115 0
	movi	a6, 0x102
	j	.L60
.LVL202:
.L75:
	.loc 1 108 0
	movi.n	a7, 0
	j	.L60
.LVL203:
.L78:
.LBB8:
	.loc 1 215 0
	movi.n	a6, -1
.LVL204:
.L60:
.LBE8:
	.loc 1 245 0
	bnez.n	a6, .L71
	.loc 1 246 0
	l32r	a6, .LC57
.LVL205:
.L71:
	.loc 1 248 0
	beqz.n	a7, .L72
	.loc 1 250 0
	movi.n	a11, 0
.LVL206:
	mov.n	a10, a7
	call8	bootloader_sha256_finish
.LVL207:
.L72:
	.loc 1 253 0
	movi	a12, 0x100
	movi.n	a11, 0
.LVL208:
	mov.n	a10, a4
	call8	memset
.LVL209:
	.loc 1 254 0
	mov.n	a2, a6
	retw.n
.LVL210:
.L73:
	.loc 1 111 0
	movi	a2, 0x102
.LVL211:
	retw.n
.LVL212:
.L77:
	.loc 1 136 0
	movi	a2, 0x101
.LVL213:
	retw.n
.LVL214:
.L79:
	.loc 1 242 0
	movi.n	a2, 0
	.loc 1 255 0
	retw.n
.LFE9:
	.size	image_load, .-image_load
	.section	.text.bootloader_load_image,"ax",@progbits
	.align	4
	.global	bootloader_load_image
	.type	bootloader_load_image, @function
bootloader_load_image:
.LFB10:
	.loc 1 258 0
.LVL215:
	entry	sp, 32
.LCFI10:
	.loc 1 264 0
	movi.n	a2, -1
.LVL216:
	retw.n
.LFE10:
	.size	bootloader_load_image, .-bootloader_load_image
	.section	.text.esp_image_verify,"ax",@progbits
	.align	4
	.global	esp_image_verify
	.type	esp_image_verify, @function
esp_image_verify:
.LFB11:
	.loc 1 267 0
.LVL217:
	entry	sp, 32
.LCFI11:
	.loc 1 268 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	image_load
.LVL218:
	.loc 1 269 0
	mov.n	a2, a10
.LVL219:
	retw.n
.LFE11:
	.size	esp_image_verify, .-esp_image_verify
	.global	esp_image_load
	.set	esp_image_load,esp_image_verify
	.section	.rodata
	.align	4
.LC0:
	.word	4096
	.word	28672
	.section	.text.esp_image_verify_bootloader_data,"ax",@progbits
	.literal_position
	.literal .LC69, .LC0
	.align	4
	.global	esp_image_verify_bootloader_data
	.type	esp_image_verify_bootloader_data, @function
esp_image_verify_bootloader_data:
.LFB19:
	.loc 1 526 0
.LVL220:
	entry	sp, 48
.LCFI12:
	.loc 1 527 0
	beqz.n	a2, .L85
	.loc 1 530 0
	l32r	a8, .LC69
	l32i.n	a9, a8, 0
	l32i.n	a8, a8, 4
	s32i.n	a9, sp, 0
	s32i.n	a8, sp, 4
	.loc 1 534 0
	mov.n	a12, a2
	mov.n	a11, sp
	movi.n	a10, 0
	call8	esp_image_verify
.LVL221:
	mov.n	a2, a10
.LVL222:
	retw.n
.LVL223:
.L85:
	.loc 1 528 0
	movi	a2, 0x102
.LVL224:
	.loc 1 537 0
	retw.n
.LFE19:
	.size	esp_image_verify_bootloader_data, .-esp_image_verify_bootloader_data
	.section	.text.esp_image_verify_bootloader,"ax",@progbits
	.align	4
	.global	esp_image_verify_bootloader
	.type	esp_image_verify_bootloader, @function
esp_image_verify_bootloader:
.LFB18:
	.loc 1 516 0
.LVL225:
	entry	sp, 288
.LCFI13:
	.loc 1 518 0
	mov.n	a10, sp
	call8	esp_image_verify_bootloader_data
.LVL226:
	.loc 1 519 0
	beqz.n	a2, .L87
	.loc 1 520 0
	bnez.n	a10, .L89
	.loc 1 520 0 is_stmt 0 discriminator 1
	l32i	a8, sp, 220
	j	.L88
.L89:
	.loc 1 520 0
	movi.n	a8, 0
.L88:
	.loc 1 520 0 discriminator 4
	s32i.n	a8, a2, 0
.L87:
	.loc 1 523 0 is_stmt 1
	mov.n	a2, a10
.LVL227:
	retw.n
.LFE18:
	.size	esp_image_verify_bootloader, .-esp_image_verify_bootloader
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI0-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI1-.LFB12
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI2-.LFB15
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI3-.LFB20
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI4-.LFB14
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI5-.LFB17
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
	.uleb128 0x60
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI7-.LFB23
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI8-.LFB22
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI9-.LFB9
	.byte	0xe
	.uleb128 0x50
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
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI12-.LFB19
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI13-.LFB18
	.byte	0xe
	.uleb128 0x120
	.align	4
.LEFDE26:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_flash_data_types.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/rtc.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include/esp_image_format.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/include/esp_spi_flash.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include_bootloader/bootloader_sha.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/string.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/cpu.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1411
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF150
	.byte	0xc
	.4byte	.LASF151
	.4byte	.LASF152
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
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
	.byte	0x3
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
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x31
	.4byte	0x25
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x7
	.4byte	0xab
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0xa9
	.4byte	0x89
	.uleb128 0x6
	.byte	0x4
	.4byte	0xef
	.uleb128 0x8
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x7
	.byte	0x52
	.4byte	0x15d
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x5
	.byte	0x18
	.4byte	0xc8
	.uleb128 0xb
	.byte	0x8
	.byte	0x6
	.byte	0x24
	.4byte	0x189
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x25
	.4byte	0xd3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0x26
	.4byte	0xd3
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x6
	.byte	0x27
	.4byte	0x168
	.uleb128 0xd
	.4byte	0xbd
	.4byte	0x1a4
	.uleb128 0xe
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x1d
	.4byte	0x1d5
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x27
	.4byte	0x1fa
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x2f
	.4byte	0x22b
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x18
	.byte	0x8
	.byte	0x3b
	.4byte	0x2b2
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x8
	.byte	0x3c
	.4byte	0xbd
	.byte	0
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x8
	.byte	0x3d
	.4byte	0xbd
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x8
	.byte	0x3f
	.4byte	0xbd
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x8
	.byte	0x41
	.4byte	0xbd
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x8
	.byte	0x43
	.4byte	0xbd
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x8
	.byte	0x44
	.4byte	0xd3
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x8
	.byte	0x47
	.4byte	0xbd
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x8
	.byte	0x49
	.4byte	0x2b2
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x8
	.byte	0x4b
	.4byte	0x2c2
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x8
	.byte	0x4f
	.4byte	0xbd
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.4byte	0xbd
	.4byte	0x2c2
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	0xbd
	.4byte	0x2d2
	.uleb128 0xe
	.4byte	0x9b
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x8
	.byte	0x50
	.4byte	0x22b
	.uleb128 0xb
	.byte	0x8
	.byte	0x8
	.byte	0x57
	.4byte	0x2fe
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x8
	.byte	0x58
	.4byte	0xd3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x8
	.byte	0x59
	.4byte	0xd3
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x8
	.byte	0x5a
	.4byte	0x2dd
	.uleb128 0x10
	.2byte	0x100
	.byte	0x8
	.byte	0x5f
	.4byte	0x35b
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x8
	.byte	0x60
	.4byte	0xd3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x8
	.byte	0x61
	.4byte	0x2d2
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x8
	.byte	0x62
	.4byte	0x35b
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x8
	.byte	0x63
	.4byte	0x36b
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0x8
	.byte	0x64
	.4byte	0xd3
	.byte	0xdc
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0x8
	.byte	0x65
	.4byte	0x37b
	.byte	0xe0
	.byte	0
	.uleb128 0xd
	.4byte	0x2fe
	.4byte	0x36b
	.uleb128 0xe
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.4byte	0xd3
	.4byte	0x37b
	.uleb128 0xe
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.4byte	0xbd
	.4byte	0x38b
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x8
	.byte	0x66
	.4byte	0x309
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x69
	.4byte	0x3af
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x8
	.byte	0x6f
	.4byte	0x396
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x9
	.byte	0x1f
	.4byte	0x3eb
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0xa
	.byte	0xa1
	.4byte	0x404
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0xb
	.byte	0x1b
	.4byte	0xa2
	.uleb128 0x11
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x43a
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43a
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1d9
	.4byte	0xd3
	.4byte	.LLST0
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF89
	.uleb128 0x11
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x111
	.4byte	0x15d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55d
	.uleb128 0x12
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x111
	.4byte	0xd3
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x111
	.4byte	0x55d
	.4byte	.LLST2
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x111
	.4byte	0x43a
	.4byte	.LLST3
	.uleb128 0x13
	.string	"err"
	.byte	0x1
	.2byte	0x113
	.4byte	0x15d
	.4byte	.LLST4
	.uleb128 0x14
	.4byte	.LVL5
	.4byte	0x1373
	.uleb128 0x15
	.4byte	.LVL6
	.4byte	0x137e
	.4byte	0x4d8
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
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL9
	.4byte	0x1373
	.uleb128 0x15
	.4byte	.LVL10
	.4byte	0x137e
	.4byte	0x51c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
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
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL11
	.4byte	0x1373
	.uleb128 0x17
	.4byte	.LVL13
	.4byte	0x137e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
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
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x563
	.uleb128 0x7
	.4byte	0x2d2
	.uleb128 0x11
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x15d
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x671
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x12
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x671
	.4byte	.LLST6
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x1bb
	.4byte	0xd3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x43a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1c5
	.4byte	0xd3
	.4byte	.LLST7
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x1c6
	.4byte	0x43a
	.4byte	.LLST8
	.uleb128 0x14
	.4byte	.LVL16
	.4byte	0x1373
	.uleb128 0x15
	.4byte	.LVL17
	.4byte	0x137e
	.4byte	0x615
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
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL21
	.4byte	0x40f
	.4byte	0x629
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL22
	.4byte	0x1373
	.uleb128 0x17
	.4byte	.LVL23
	.4byte	0x137e
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
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
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
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x677
	.uleb128 0x7
	.4byte	0x2fe
	.uleb128 0x11
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x21c
	.4byte	0x15d
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a1
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x21c
	.4byte	0x404
	.4byte	.LLST9
	.uleb128 0x12
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x21c
	.4byte	0xd3
	.4byte	.LLST10
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x21c
	.4byte	0x7a1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x21e
	.4byte	0xd3
	.4byte	.LLST11
	.uleb128 0x19
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x21f
	.4byte	0xd3
	.4byte	.LLST12
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.2byte	0x223
	.4byte	0x194
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.string	"err"
	.byte	0x1
	.2byte	0x224
	.4byte	0x15d
	.4byte	.LLST13
	.uleb128 0x19
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x225
	.4byte	0xbd
	.4byte	.LLST14
	.uleb128 0x1b
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x226
	.4byte	0xbd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LVL36
	.4byte	0x1389
	.4byte	0x740
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x14
	.4byte	.LVL43
	.4byte	0x1373
	.uleb128 0x15
	.4byte	.LVL44
	.4byte	0x137e
	.4byte	0x784
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
	.4byte	.LC6
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
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL48
	.4byte	0x1394
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
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x38b
	.uleb128 0x11
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x18f
	.4byte	0x15d
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x93b
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x18f
	.4byte	0xde
	.4byte	.LLST15
	.uleb128 0x12
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x18f
	.4byte	0xd3
	.4byte	.LLST16
	.uleb128 0x18
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x18f
	.4byte	0xd3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x18f
	.4byte	0x43a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x18f
	.4byte	0x404
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x18f
	.4byte	0x93b
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x191
	.4byte	0x941
	.4byte	.LLST17
	.uleb128 0x1a
	.string	"src"
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x941
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.Ldebug_ranges0+0
	.4byte	0x8cc
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x25
	.4byte	.LLST18
	.uleb128 0x1d
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x13
	.string	"w_i"
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x13
	.string	"w"
	.byte	0x1
	.2byte	0x1a4
	.4byte	0xd3
	.4byte	.LLST20
	.uleb128 0x19
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x1af
	.4byte	0x94c
	.4byte	.LLST21
	.uleb128 0x17
	.4byte	.LVL63
	.4byte	0x1394
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x14
	.byte	0x73
	.sleb128 3
	.byte	0x73
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x32
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x19
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xa
	.2byte	0x400
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
	.byte	0
	.uleb128 0x15
	.4byte	.LVL52
	.4byte	0x139f
	.4byte	0x8e6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL54
	.4byte	0x1373
	.uleb128 0x15
	.4byte	.LVL55
	.4byte	0x137e
	.4byte	0x92a
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
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL67
	.4byte	0x13aa
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x947
	.uleb128 0x7
	.4byte	0xd3
	.uleb128 0x7
	.4byte	0x2c
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x1df
	.4byte	0x43a
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9af
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1df
	.4byte	0xd3
	.4byte	.LLST22
	.uleb128 0x19
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x43a
	.4byte	.LLST23
	.uleb128 0x15
	.4byte	.LVL70
	.4byte	0x13b5
	.4byte	0x99e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL72
	.4byte	0x40f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x129
	.4byte	0x15d
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc90
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x129
	.4byte	0x25
	.4byte	.LLST24
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x129
	.4byte	0xd3
	.4byte	.LLST25
	.uleb128 0x12
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x129
	.4byte	0xc90
	.4byte	.LLST26
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x129
	.4byte	0x43a
	.4byte	.LLST27
	.uleb128 0x12
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x129
	.4byte	0x43a
	.4byte	.LLST28
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x129
	.4byte	0x404
	.4byte	.LLST29
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x129
	.4byte	0x93b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"err"
	.byte	0x1
	.2byte	0x12b
	.4byte	0x15d
	.4byte	.LLST30
	.uleb128 0x19
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x137
	.4byte	0xde
	.4byte	.LLST31
	.uleb128 0x1b
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x138
	.4byte	0xd3
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1b
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x139
	.4byte	0xd3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"err"
	.byte	0x1
	.2byte	0x187
	.4byte	.L39
	.uleb128 0x19
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x146
	.4byte	0x43a
	.4byte	.LLST32
	.uleb128 0x19
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x174
	.4byte	0xd3
	.4byte	.LLST33
	.uleb128 0x19
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x176
	.4byte	0xd3
	.4byte	.LLST34
	.uleb128 0x15
	.4byte	.LVL78
	.4byte	0x1389
	.4byte	0xad4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x14
	.4byte	.LVL80
	.4byte	0x1373
	.uleb128 0x15
	.4byte	.LVL81
	.4byte	0x137e
	.4byte	0xb11
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
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL84
	.4byte	0x1394
	.4byte	0xb31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x15
	.4byte	.LVL88
	.4byte	0x568
	.4byte	0xb57
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
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL90
	.4byte	0x1373
	.uleb128 0x15
	.4byte	.LVL91
	.4byte	0x137e
	.4byte	0xb94
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
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL92
	.4byte	0x40f
	.4byte	0xba9
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL94
	.4byte	0x951
	.4byte	0xbbe
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.4byte	.LVL100
	.4byte	0x1373
	.uleb128 0x15
	.4byte	.LVL104
	.4byte	0x137e
	.4byte	0xc17
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
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
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
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 12
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL105
	.4byte	0x13c0
	.4byte	0xc2a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL111
	.4byte	0x7a7
	.4byte	0xc5e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL114
	.4byte	0x7a7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2fe
	.uleb128 0x1f
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x280
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcf6
	.uleb128 0x18
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x280
	.4byte	0xcf6
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x280
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x283
	.4byte	0xd01
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x17
	.4byte	.LVL124
	.4byte	0x13cb
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xcfc
	.uleb128 0x7
	.4byte	0xbd
	.uleb128 0xd
	.4byte	0xab
	.4byte	0xd11
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x40
	.byte	0
	.uleb128 0x11
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x26a
	.4byte	0x15d
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe6b
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x26a
	.4byte	0x404
	.4byte	.LLST35
	.uleb128 0x12
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x26a
	.4byte	0x7a1
	.4byte	.LLST36
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x26c
	.4byte	0x37b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x273
	.4byte	0xe9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LVL126
	.4byte	0x13d6
	.4byte	0xd87
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL127
	.4byte	0x13df
	.4byte	0xda1
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
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x15
	.4byte	.LVL128
	.4byte	0xc96
	.4byte	0xdbe
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.byte	0
	.uleb128 0x15
	.4byte	.LVL130
	.4byte	0x139f
	.4byte	0xdd2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL132
	.4byte	0x13ea
	.4byte	0xdf2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL133
	.4byte	0x1373
	.uleb128 0x15
	.4byte	.LVL134
	.4byte	0x137e
	.4byte	0xe29
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
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC53
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL135
	.4byte	0xc96
	.4byte	0xe46
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC55
	.byte	0
	.uleb128 0x15
	.4byte	.LVL136
	.4byte	0x13aa
	.4byte	0xe5a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL137
	.4byte	0x13aa
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF124
	.byte	0x1
	.byte	0x61
	.4byte	0x15d
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1206
	.uleb128 0x21
	.4byte	.LASF125
	.byte	0x1
	.byte	0x61
	.4byte	0x3af
	.4byte	.LLST37
	.uleb128 0x21
	.4byte	.LASF126
	.byte	0x1
	.byte	0x61
	.4byte	0x1206
	.4byte	.LLST38
	.uleb128 0x22
	.4byte	.LASF102
	.byte	0x1
	.byte	0x61
	.4byte	0x7a1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF109
	.byte	0x1
	.byte	0x66
	.4byte	0x43a
	.byte	0
	.uleb128 0x24
	.4byte	.LASF93
	.byte	0x1
	.byte	0x68
	.4byte	0x43a
	.4byte	.LLST39
	.uleb128 0x25
	.string	"err"
	.byte	0x1
	.byte	0x69
	.4byte	0x15d
	.4byte	.LLST40
	.uleb128 0x26
	.4byte	.LASF101
	.byte	0x1
	.byte	0x6b
	.4byte	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.4byte	.LASF100
	.byte	0x1
	.byte	0x6c
	.4byte	0x404
	.4byte	.LLST41
	.uleb128 0x27
	.string	"err"
	.byte	0x1
	.byte	0xf4
	.4byte	.L60
	.uleb128 0x24
	.4byte	.LASF127
	.byte	0x1
	.byte	0x9e
	.4byte	0xd3
	.4byte	.LLST42
	.uleb128 0x24
	.4byte	.LASF128
	.byte	0x1
	.byte	0xac
	.4byte	0xd3
	.4byte	.LLST43
	.uleb128 0x24
	.4byte	.LASF129
	.byte	0x1
	.byte	0xbd
	.4byte	0x43a
	.4byte	.LLST44
	.uleb128 0x28
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0xf9f
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x9f
	.4byte	0x25
	.4byte	.LLST45
	.uleb128 0x1d
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x24
	.4byte	.LASF115
	.byte	0x1
	.byte	0xa0
	.4byte	0xc90
	.4byte	.LLST46
	.uleb128 0x17
	.4byte	.LVL171
	.4byte	0x9af
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
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x75
	.sleb128 2
	.byte	0x33
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xffd
	.uleb128 0x24
	.4byte	.LASF123
	.byte	0x1
	.byte	0xd5
	.4byte	0xe9
	.4byte	.LLST47
	.uleb128 0x15
	.4byte	.LVL197
	.4byte	0x139f
	.4byte	0xfcb
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x15
	.4byte	.LVL199
	.4byte	0x13f5
	.4byte	0xfec
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x74
	.sleb128 224
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x17
	.4byte	.LVL200
	.4byte	0x13aa
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL144
	.4byte	0x1373
	.uleb128 0x15
	.4byte	.LVL145
	.4byte	0x137e
	.4byte	0x1034
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
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC60
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL147
	.4byte	0x13d6
	.4byte	0x1054
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x15
	.4byte	.LVL148
	.4byte	0x1389
	.4byte	0x1072
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
	.byte	0x48
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x14
	.4byte	.LVL151
	.4byte	0x13fe
	.uleb128 0x15
	.4byte	.LVL153
	.4byte	0x1394
	.4byte	0x109b
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x15
	.4byte	.LVL156
	.4byte	0x441
	.4byte	0x10b7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.4byte	.LVL159
	.4byte	0x1373
	.uleb128 0x15
	.4byte	.LVL162
	.4byte	0x137e
	.4byte	0x10fc
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
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL181
	.4byte	0x1373
	.uleb128 0x15
	.4byte	.LVL182
	.4byte	0x137e
	.4byte	0x1133
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
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC64
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x14
	.4byte	.LVL184
	.4byte	0x1409
	.uleb128 0x15
	.4byte	.LVL185
	.4byte	0x67c
	.4byte	0x1156
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL187
	.4byte	0x1373
	.uleb128 0x15
	.4byte	.LVL189
	.4byte	0x137e
	.4byte	0x1194
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
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC66
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL193
	.4byte	0x1409
	.uleb128 0x15
	.4byte	.LVL194
	.4byte	0xd11
	.4byte	0x11b7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL196
	.4byte	0x13df
	.4byte	0x11d0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL207
	.4byte	0x13df
	.4byte	0x11e9
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL209
	.4byte	0x13d6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x120c
	.uleb128 0x7
	.4byte	0x189
	.uleb128 0x29
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x101
	.4byte	0x15d
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x124a
	.uleb128 0x12
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x101
	.4byte	0x1206
	.4byte	.LLST48
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x101
	.4byte	0x7a1
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x29
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x10a
	.4byte	0x15d
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12ad
	.uleb128 0x12
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x10a
	.4byte	0x3af
	.4byte	.LLST49
	.uleb128 0x18
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x10a
	.4byte	0x1206
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x10a
	.4byte	0x7a1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LVL218
	.4byte	0xe6b
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
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x20d
	.4byte	0x15d
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1302
	.uleb128 0x12
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x20d
	.4byte	0x7a1
	.4byte	.LLST50
	.uleb128 0x1b
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x212
	.4byte	0x120c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.4byte	.LVL221
	.4byte	0x124a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x203
	.4byte	0x15d
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x135c
	.uleb128 0x12
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x203
	.4byte	0x93b
	.4byte	.LLST51
	.uleb128 0x1b
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x205
	.4byte	0x38b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x1a
	.string	"err"
	.byte	0x1
	.2byte	0x206
	.4byte	0x15d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x17
	.4byte	.LVL226
	.4byte	0x12ad
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.byte	0
	.uleb128 0x2a
	.string	"TAG"
	.byte	0x1
	.byte	0x2a
	.4byte	0x136e
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC6
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xb2
	.uleb128 0x2b
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x9
	.byte	0x57
	.uleb128 0x2b
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x9
	.byte	0x6b
	.uleb128 0x2b
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0xc
	.byte	0x4b
	.uleb128 0x2b
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xb
	.byte	0x1f
	.uleb128 0x2b
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0xc
	.byte	0x32
	.uleb128 0x2b
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0xc
	.byte	0x3a
	.uleb128 0x2b
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x7
	.byte	0x9c
	.uleb128 0x2b
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0xa
	.byte	0xff
	.uleb128 0x2b
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xb
	.byte	0x38
	.uleb128 0x2c
	.4byte	.LASF146
	.4byte	.LASF146
	.uleb128 0x2b
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0xb
	.byte	0x21
	.uleb128 0x2b
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xd
	.byte	0x16
	.uleb128 0x2c
	.4byte	.LASF147
	.4byte	.LASF147
	.uleb128 0x2b
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0xb
	.byte	0x1d
	.uleb128 0x2b
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0xe
	.byte	0x6f
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.2byte	0x7
	.byte	0x72
	.sleb128 1061158912
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
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
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL33
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL33
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL36
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x7
	.byte	0x76
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.4byte	.LVL39
	.4byte	.LVL43-1
	.2byte	0x8
	.byte	0x91
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x31
	.byte	0x1c
	.4byte	.LVL43-1
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x8
	.byte	0x91
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x31
	.byte	0x1c
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x7
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.4byte	.LVL48-1
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL51
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL57
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL59
	.4byte	.LVL64
	.2byte	0x10
	.byte	0x73
	.sleb128 3
	.byte	0x73
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x32
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x10
	.byte	0x73
	.sleb128 -1
	.byte	0x73
	.sleb128 -4
	.byte	0x73
	.sleb128 -4
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x32
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xa
	.2byte	0x400
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL69
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x7
	.byte	0x72
	.sleb128 1342177280
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x35
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x35
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL77
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LVL115
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
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
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL77
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87
	.4byte	.LVL108
	.2byte	0x3
	.byte	0x73
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL77
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL89
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL77
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL107
	.4byte	.LVL115
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL119
	.4byte	.LVL121
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL77
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL79
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL79
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL89
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL115
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL119
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL121
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL85
	.4byte	.LVL88-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL88-1
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL93
	.4byte	.LVL115
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL119
	.4byte	.LVL121
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL106
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL119
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111-1
	.2byte	0x10
	.byte	0x79
	.sleb128 0
	.byte	0x30
	.byte	0x78
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL111-1
	.4byte	.LVL112
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL125
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL129
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL125
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL131
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL138
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL160
	.4byte	.LVL163
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL163
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL188
	.4byte	.LVL190
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL190
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL192
	.4byte	.LVL201
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL201
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL203
	.4byte	.LVL210
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL210
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL212
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL213
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL138
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL161
	.4byte	.LVL163
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL163
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL191
	.4byte	.LVL201
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL201
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL203
	.4byte	.LVL210
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL210
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL214
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL140
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL142
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL158
	.4byte	.LVL201
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL201
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL204
	.4byte	.LVL206
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL206
	.4byte	.LVL207-1
	.2byte	0xe
	.byte	0x31
	.byte	0x7b
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL207-1
	.4byte	.LVL208
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL208
	.4byte	.LVL209-1
	.2byte	0xe
	.byte	0x31
	.byte	0x7b
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL209-1
	.4byte	.LVL210
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL210
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL214
	.4byte	.LFE9
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL140
	.4byte	.LVL143
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL146
	.2byte	0x4
	.byte	0xa
	.2byte	0x102
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL149
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL150
	.4byte	.LVL151-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL157
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL168
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL172
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x4
	.byte	0xa
	.2byte	0x102
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL210
	.4byte	.LVL212
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL214
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL141
	.4byte	.LVL152
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL200
	.4byte	.LVL203
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL210
	.4byte	.LVL212
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL212
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL214
	.4byte	.LFE9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL165
	.4byte	.LVL173
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL173
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL178
	.4byte	.LVL183
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL183
	.4byte	.LVL184-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL184-1
	.4byte	.LVL201
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL214
	.4byte	.LFE9
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL179
	.4byte	.LVL183
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL183
	.4byte	.LVL184-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL184-1
	.4byte	.LVL201
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL214
	.4byte	.LFE9
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL191
	.4byte	.LVL201
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0x1000
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0x1000
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL214
	.4byte	.LFE9
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0x1000
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL164
	.4byte	.LVL166
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL166
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL167
	.4byte	.LVL169
	.2byte	0x3
	.byte	0x7c
	.sleb128 12
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LVL171-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL171-1
	.4byte	.LVL174
	.2byte	0xa
	.byte	0x75
	.sleb128 2
	.byte	0x33
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xc
	.byte	0x9f
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0xa
	.byte	0x78
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xc
	.byte	0x9f
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x3
	.byte	0x78
	.sleb128 12
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LVL178
	.2byte	0xa
	.byte	0x75
	.sleb128 2
	.byte	0x33
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xc
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL198
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL215
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL216
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL217
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL219
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL220
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL222
	.4byte	.LVL223
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL223
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL224
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL225
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL227
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF91:
	.string	"verify_image_header"
.LASF150:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF32:
	.string	"RTCWDT_CPU_RESET"
.LASF97:
	.string	"segment_data_offs"
.LASF130:
	.string	"bootloader_load_image"
.LASF21:
	.string	"POWERON_RESET"
.LASF70:
	.string	"start_addr"
.LASF77:
	.string	"ESP_IMAGE_VERIFY"
.LASF100:
	.string	"sha_handle"
.LASF0:
	.string	"unsigned int"
.LASF54:
	.string	"ESP_IMAGE_FLASH_SIZE_16MB"
.LASF7:
	.string	"__int32_t"
.LASF59:
	.string	"spi_speed"
.LASF42:
	.string	"ESP_IMAGE_SPI_MODE_DIO"
.LASF96:
	.string	"segment"
.LASF69:
	.string	"esp_image_segment_header_t"
.LASF109:
	.string	"do_load"
.LASF125:
	.string	"mode"
.LASF140:
	.string	"bootloader_munmap"
.LASF11:
	.string	"__intptr_t"
.LASF52:
	.string	"ESP_IMAGE_FLASH_SIZE_4MB"
.LASF137:
	.string	"bootloader_flash_read"
.LASF135:
	.string	"esp_log_timestamp"
.LASF66:
	.string	"esp_image_header_t"
.LASF79:
	.string	"esp_image_load_mode_t"
.LASF128:
	.string	"end_addr"
.LASF134:
	.string	"esp_image_verify_bootloader"
.LASF45:
	.string	"ESP_IMAGE_SPI_MODE_SLOW_READ"
.LASF18:
	.string	"uint32_t"
.LASF118:
	.string	"offset_page"
.LASF98:
	.string	"map_segment"
.LASF106:
	.string	"checksum"
.LASF119:
	.string	"image_hash"
.LASF95:
	.string	"index"
.LASF93:
	.string	"silent"
.LASF107:
	.string	"process_segment_data"
.LASF60:
	.string	"spi_size"
.LASF149:
	.string	"esp_cpu_in_ocd_debug_mode"
.LASF10:
	.string	"long long unsigned int"
.LASF24:
	.string	"DEEPSLEEP_RESET"
.LASF126:
	.string	"part"
.LASF40:
	.string	"ESP_IMAGE_SPI_MODE_QIO"
.LASF141:
	.string	"rtc_get_reset_reason"
.LASF87:
	.string	"SPI_FLASH_MMAP_INST"
.LASF152:
	.string	"/home/raphael/rtone/lcd/build/bootloader_support"
.LASF82:
	.string	"ESP_LOG_WARN"
.LASF27:
	.string	"TG1WDT_SYS_RESET"
.LASF129:
	.string	"is_bootloader"
.LASF55:
	.string	"ESP_IMAGE_FLASH_SIZE_MAX"
.LASF26:
	.string	"TG0WDT_SYS_RESET"
.LASF3:
	.string	"size_t"
.LASF37:
	.string	"offset"
.LASF111:
	.string	"should_load"
.LASF86:
	.string	"SPI_FLASH_MMAP_DATA"
.LASF41:
	.string	"ESP_IMAGE_SPI_MODE_QOUT"
.LASF89:
	.string	"_Bool"
.LASF46:
	.string	"ESP_IMAGE_SPI_SPEED_40M"
.LASF143:
	.string	"bootloader_sha256_hex_to_str"
.LASF74:
	.string	"image_len"
.LASF132:
	.string	"esp_image_verify_bootloader_data"
.LASF22:
	.string	"SW_RESET"
.LASF25:
	.string	"SDIO_RESET"
.LASF51:
	.string	"ESP_IMAGE_FLASH_SIZE_2MB"
.LASF80:
	.string	"ESP_LOG_NONE"
.LASF33:
	.string	"EXT_CPU_RESET"
.LASF99:
	.string	"verify_checksum"
.LASF75:
	.string	"image_digest"
.LASF15:
	.string	"char"
.LASF133:
	.string	"bootloader_part"
.LASF43:
	.string	"ESP_IMAGE_SPI_MODE_DOUT"
.LASF102:
	.string	"data"
.LASF76:
	.string	"esp_image_metadata_t"
.LASF16:
	.string	"uint8_t"
.LASF103:
	.string	"unpadded_length"
.LASF9:
	.string	"long long int"
.LASF72:
	.string	"segments"
.LASF34:
	.string	"RTCWDT_BROWN_OUT_RESET"
.LASF30:
	.string	"TGWDT_CPU_RESET"
.LASF108:
	.string	"data_addr"
.LASF142:
	.string	"spi_flash_mmap_get_free_pages"
.LASF146:
	.string	"memset"
.LASF48:
	.string	"ESP_IMAGE_SPI_SPEED_20M"
.LASF38:
	.string	"size"
.LASF88:
	.string	"bootloader_sha256_handle_t"
.LASF83:
	.string	"ESP_LOG_INFO"
.LASF71:
	.string	"image"
.LASF144:
	.string	"bootloader_sha256_finish"
.LASF115:
	.string	"header"
.LASF136:
	.string	"esp_log_write"
.LASF151:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/src/esp_image_format.c"
.LASF101:
	.string	"checksum_word"
.LASF19:
	.string	"intptr_t"
.LASF139:
	.string	"bootloader_mmap"
.LASF68:
	.string	"data_len"
.LASF116:
	.string	"is_mapping"
.LASF6:
	.string	"short int"
.LASF12:
	.string	"long int"
.LASF67:
	.string	"load_addr"
.LASF123:
	.string	"hash"
.LASF104:
	.string	"length"
.LASF58:
	.string	"spi_mode"
.LASF31:
	.string	"SW_CPU_RESET"
.LASF145:
	.string	"memcmp"
.LASF78:
	.string	"ESP_IMAGE_VERIFY_SILENT"
.LASF121:
	.string	"hash_print"
.LASF117:
	.string	"free_page_count"
.LASF53:
	.string	"ESP_IMAGE_FLASH_SIZE_8MB"
.LASF4:
	.string	"__uint8_t"
.LASF28:
	.string	"RTCWDT_SYS_RESET"
.LASF153:
	.string	"debug_log_hash"
.LASF56:
	.string	"magic"
.LASF62:
	.string	"wp_pin"
.LASF35:
	.string	"RTCWDT_RTC_RESET"
.LASF13:
	.string	"sizetype"
.LASF14:
	.string	"long unsigned int"
.LASF20:
	.string	"NO_MEAN"
.LASF112:
	.string	"load_rtc_memory"
.LASF73:
	.string	"segment_data"
.LASF85:
	.string	"ESP_LOG_VERBOSE"
.LASF17:
	.string	"int32_t"
.LASF124:
	.string	"image_load"
.LASF5:
	.string	"unsigned char"
.LASF105:
	.string	"calc"
.LASF8:
	.string	"__uint32_t"
.LASF138:
	.string	"bootloader_sha256_data"
.LASF23:
	.string	"OWDT_RESET"
.LASF94:
	.string	"verify_segment_header"
.LASF36:
	.string	"esp_err_t"
.LASF110:
	.string	"SHA_CHUNK"
.LASF65:
	.string	"hash_appended"
.LASF127:
	.string	"next_addr"
.LASF63:
	.string	"spi_pin_drv"
.LASF120:
	.string	"label"
.LASF84:
	.string	"ESP_LOG_DEBUG"
.LASF44:
	.string	"ESP_IMAGE_SPI_MODE_FAST_READ"
.LASF29:
	.string	"INTRUSION_RESET"
.LASF114:
	.string	"flash_addr"
.LASF90:
	.string	"should_map"
.LASF148:
	.string	"bootloader_sha256_start"
.LASF2:
	.string	"signed char"
.LASF1:
	.string	"short unsigned int"
.LASF113:
	.string	"process_segment"
.LASF147:
	.string	"memcpy"
.LASF49:
	.string	"ESP_IMAGE_SPI_SPEED_80M"
.LASF61:
	.string	"entry_addr"
.LASF64:
	.string	"reserved"
.LASF122:
	.string	"verify_simple_hash"
.LASF92:
	.string	"src_addr"
.LASF47:
	.string	"ESP_IMAGE_SPI_SPEED_26M"
.LASF50:
	.string	"ESP_IMAGE_FLASH_SIZE_1MB"
.LASF39:
	.string	"esp_partition_pos_t"
.LASF131:
	.string	"esp_image_verify"
.LASF81:
	.string	"ESP_LOG_ERROR"
.LASF57:
	.string	"segment_count"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
