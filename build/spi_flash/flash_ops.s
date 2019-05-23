	.file	"flash_ops.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, 65554
	.literal .LC1, 65553
	.align	4
	.type	spi_flash_translate_rc, @function
spi_flash_translate_rc:
.LFB46:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/flash_ops.c"
	.loc 1 656 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 657 0
	beqz.n	a2, .L3
	beqi	a2, 2, .L5
	j	.L6
.L3:
	.loc 1 659 0
	movi.n	a2, 0
.LVL1:
	retw.n
.LVL2:
.L6:
	.loc 1 664 0
	l32r	a2, .LC1
.LVL3:
	retw.n
.LVL4:
.L5:
	.loc 1 661 0
	l32r	a2, .LC0
.LVL5:
	.loc 1 666 0
	retw.n
.LFE46:
	.size	spi_flash_translate_rc, .-spi_flash_translate_rc
	.section	.text.is_safe_write_address,"ax",@progbits
	.literal_position
	.literal .LC2, 35840
	.align	4
	.type	is_safe_write_address, @function
is_safe_write_address:
.LFB29:
	.loc 1 111 0
.LVL6:
	entry	sp, 32
.LCFI1:
.LVL7:
	.loc 1 113 0
	l32r	a8, .LC2
	bltu	a8, a2, .L8
	.loc 1 114 0
	call8	abort
.LVL8:
.L8:
	.loc 1 117 0
	call8	esp_ota_get_running_partition
.LVL9:
	.loc 1 118 0
	l32i.n	a8, a10, 8
	bltu	a2, a8, .L9
	.loc 1 118 0 is_stmt 0 discriminator 1
	l32i.n	a9, a10, 12
	add.n	a9, a8, a9
	bgeu	a2, a9, .L9
	.loc 1 119 0 is_stmt 1
	call8	abort
.LVL10:
.L9:
	.loc 1 121 0
	bgeu	a2, a8, .L10
	.loc 1 121 0 is_stmt 0 discriminator 1
	add.n	a2, a2, a3
.LVL11:
	bgeu	a8, a2, .L10
	.loc 1 122 0 is_stmt 1
	call8	abort
.LVL12:
.L10:
	.loc 1 126 0
	movi.n	a2, 1
	retw.n
.LFE29:
	.size	is_safe_write_address, .-is_safe_write_address
	.section	.iram1
	.literal_position
	.literal .LC3, unlocked$5829
	.literal .LC4, s_flash_guard_ops
	.align	4
	.type	spi_flash_unlock, @function
spi_flash_unlock:
.LFB38:
	.loc 1 181 0
	entry	sp, 32
.LCFI2:
	.loc 1 183 0
	l32r	a2, .LC3
	l8ui	a2, a2, 0
	bnez.n	a2, .L15
.LBB80:
.LBB81:
.LBB82:
	.loc 1 154 0
	l32r	a2, .LC4
	l32i.n	a2, a2, 0
	beqz.n	a2, .L13
	l32i.n	a2, a2, 0
	beqz.n	a2, .L13
	.loc 1 155 0
	callx8	a2
.LVL13:
.L13:
.LBE82:
.LBE81:
	.loc 1 185 0
	call8	esp_rom_spiflash_unlock
.LVL14:
	mov.n	a2, a10
.LVL15:
.LBB83:
.LBB84:
	.loc 1 161 0
	l32r	a8, .LC4
	l32i.n	a8, a8, 0
	beqz.n	a8, .L14
	l32i.n	a8, a8, 4
	beqz.n	a8, .L14
	.loc 1 162 0
	callx8	a8
.LVL16:
.L14:
.LBE84:
.LBE83:
	.loc 1 187 0
	bnez.n	a2, .L12
	.loc 1 190 0
	movi.n	a8, 1
	l32r	a2, .LC3
.LVL17:
	s8i	a8, a2, 0
.LBE80:
	.loc 1 192 0
	movi.n	a2, 0
	retw.n
.L15:
	movi.n	a2, 0
.L12:
	.loc 1 193 0
	retw.n
.LFE38:
	.size	spi_flash_unlock, .-spi_flash_unlock
	.align	4
	.type	spi_flash_write_inner, @function
spi_flash_write_inner:
.LFB41:
	.loc 1 257 0
.LVL18:
	entry	sp, 32
.LCFI3:
	.loc 1 259 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_rom_spiflash_write
.LVL19:
	.loc 1 324 0
	mov.n	a2, a10
.LVL20:
	retw.n
.LFE41:
	.size	spi_flash_write_inner, .-spi_flash_write_inner
	.section	.text.spi_flash_init,"ax",@progbits
	.align	4
	.global	spi_flash_init
	.type	spi_flash_init, @function
spi_flash_init:
.LFB30:
	.loc 1 130 0
	entry	sp, 32
.LCFI4:
	.loc 1 131 0
	call8	spi_flash_init_lock
.LVL21:
	retw.n
.LFE30:
	.size	spi_flash_init, .-spi_flash_init
	.section	.iram1
	.literal_position
	.literal .LC5, s_flash_guard_ops
	.align	4
	.global	spi_flash_guard_set
	.type	spi_flash_guard_set, @function
spi_flash_guard_set:
.LFB31:
	.loc 1 138 0
.LVL22:
	entry	sp, 32
.LCFI5:
	.loc 1 139 0
	l32r	a8, .LC5
	s32i.n	a2, a8, 0
	retw.n
.LFE31:
	.size	spi_flash_guard_set, .-spi_flash_guard_set
	.literal_position
	.literal .LC6, s_flash_guard_ops
	.align	4
	.global	spi_flash_guard_get
	.type	spi_flash_guard_get, @function
spi_flash_guard_get:
.LFB32:
	.loc 1 143 0
	entry	sp, 32
.LCFI6:
	.loc 1 145 0
	l32r	a8, .LC6
	l32i.n	a2, a8, 0
	retw.n
.LFE32:
	.size	spi_flash_guard_get, .-spi_flash_guard_get
	.literal_position
	.literal .LC7, g_rom_flashchip
	.align	4
	.global	spi_flash_get_chip_size
	.type	spi_flash_get_chip_size, @function
spi_flash_get_chip_size:
.LFB33:
	.loc 1 148 0
	entry	sp, 32
.LCFI7:
	.loc 1 150 0
	l32r	a8, .LC7
	l32i.n	a2, a8, 4
	retw.n
.LFE33:
	.size	spi_flash_get_chip_size, .-spi_flash_get_chip_size
	.literal_position
	.literal .LC8, s_flash_guard_ops
	.align	4
	.global	spi_flash_erase_range
	.type	spi_flash_erase_range, @function
spi_flash_erase_range:
.LFB40:
	.loc 1 202 0
.LVL23:
	entry	sp, 32
.LCFI8:
	.loc 1 203 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	is_safe_write_address
.LVL24:
	beqz.n	a10, .L31
	.loc 1 204 0
	extui	a8, a2, 0, 12
	bnez.n	a8, .L32
	.loc 1 207 0
	extui	a8, a3, 0, 12
	bnez.n	a8, .L33
	.loc 1 210 0
	add.n	a4, a2, a3
	call8	spi_flash_get_chip_size
.LVL25:
	bltu	a10, a4, .L34
	.loc 1 213 0
	srli	a2, a2, 12
.LVL26:
	.loc 1 214 0
	srli	a3, a3, 12
.LVL27:
	add.n	a3, a2, a3
.LVL28:
	.loc 1 218 0
	call8	spi_flash_unlock
.LVL29:
	mov.n	a5, a10
.LVL30:
	.loc 1 219 0
	beqz.n	a10, .L24
.LBB85:
	j	.L25
.LVL31:
.L30:
.LBB86:
.LBB87:
	.loc 1 154 0
	l32r	a4, .LC8
	l32i.n	a4, a4, 0
	beqz.n	a4, .L26
	l32i.n	a4, a4, 0
	beqz.n	a4, .L26
	.loc 1 155 0
	callx8	a4
.LVL32:
.L26:
.LBE87:
.LBE86:
	.loc 1 225 0
	extui	a4, a2, 0, 4
	bnez.n	a4, .L27
	.loc 1 225 0 is_stmt 0 discriminator 1
	sub	a4, a3, a2
	movi.n	a5, 0xf
.LVL33:
	bgeu	a5, a4, .L27
	.loc 1 226 0 is_stmt 1
	srli	a10, a2, 4
	call8	esp_rom_spiflash_erase_block
.LVL34:
	mov.n	a5, a10
.LVL35:
	.loc 1 227 0
	addi	a2, a2, 16
.LVL36:
	j	.L28
.LVL37:
.L27:
	.loc 1 230 0
	mov.n	a10, a2
	call8	esp_rom_spiflash_erase_sector
.LVL38:
	mov.n	a5, a10
.LVL39:
	.loc 1 231 0
	addi.n	a2, a2, 1
.LVL40:
.L28:
.LBB88:
.LBB89:
	.loc 1 161 0
	l32r	a4, .LC8
	l32i.n	a4, a4, 0
	beqz.n	a4, .L24
	l32i.n	a4, a4, 4
	beqz.n	a4, .L24
	.loc 1 162 0
	callx8	a4
.LVL41:
.L24:
.LBE89:
.LBE88:
	.loc 1 220 0 discriminator 1
	sub	a4, a2, a3
	movi.n	a8, 1
	movi.n	a9, 0
	mov.n	a6, a9
	movnez	a6, a8, a4
	mov.n	a4, a6
	movnez	a8, a9, a5
	bany	a8, a6, .L30
.LVL42:
.L25:
.LBE85:
	.loc 1 249 0
	mov.n	a10, a5
	call8	spi_flash_translate_rc
.LVL43:
	mov.n	a2, a10
	retw.n
.LVL44:
.L31:
	.loc 1 203 0
	movi	a2, 0x102
.LVL45:
	retw.n
.LVL46:
.L32:
	.loc 1 205 0
	movi	a2, 0x102
.LVL47:
	retw.n
.LVL48:
.L33:
	.loc 1 208 0
	movi	a2, 0x104
.LVL49:
	retw.n
.LVL50:
.L34:
	.loc 1 211 0
	movi	a2, 0x104
.LVL51:
	.loc 1 250 0
	retw.n
.LFE40:
	.size	spi_flash_erase_range, .-spi_flash_erase_range
	.literal_position
	.literal .LC9, 4096
	.align	4
	.global	spi_flash_erase_sector
	.type	spi_flash_erase_sector, @function
spi_flash_erase_sector:
.LFB39:
	.loc 1 196 0
.LVL52:
	entry	sp, 32
.LCFI9:
	.loc 1 197 0
	slli	a2, a2, 12
.LVL53:
	l32r	a11, .LC9
	mov.n	a10, a2
	call8	is_safe_write_address
.LVL54:
	beqz.n	a10, .L37
	.loc 1 198 0
	l32r	a11, .LC9
	mov.n	a10, a2
	call8	spi_flash_erase_range
.LVL55:
	mov.n	a2, a10
	retw.n
.L37:
	.loc 1 197 0
	movi	a2, 0x102
	.loc 1 199 0
	retw.n
.LFE39:
	.size	spi_flash_erase_sector, .-spi_flash_erase_sector
	.literal_position
	.literal .LC10, g_rom_flashchip
	.literal .LC11, s_flash_guard_ops
	.literal .LC12, -1073283072
	.literal .LC13, 1253375
	.literal .LC14, -1342177280
	.literal .LC15, 8191
	.literal .LC16, 458751
	.literal .LC17, 8192
	.align	4
	.global	spi_flash_write
	.type	spi_flash_write, @function
spi_flash_write:
.LFB42:
	.loc 1 328 0
.LVL56:
	entry	sp, 80
.LCFI10:
	.loc 1 329 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	is_safe_write_address
.LVL57:
	beqz.n	a10, .L60
	.loc 1 332 0
	add.n	a5, a2, a4
	l32r	a6, .LC10
	l32i.n	a6, a6, 4
	bltu	a6, a5, .L61
	.loc 1 335 0
	beqz.n	a4, .L62
.LVL58:
	.loc 1 348 0
	movi.n	a6, -4
	and	a5, a2, a6
	s32i.n	a5, sp, 32
.LVL59:
	.loc 1 349 0
	addi.n	a5, a2, 3
.LVL60:
	and	a5, a5, a6
	sub	a5, a5, a2
	minu	a5, a4, a5
.LVL61:
	.loc 1 351 0
	sub	a7, a4, a5
	and	a6, a7, a6
.LVL62:
	.loc 1 352 0
	add.n	a8, a5, a6
	s32i.n	a8, sp, 44
.LVL63:
	.loc 1 353 0
	sub	a7, a4, a6
	sub	a9, a7, a5
	s32i.n	a9, sp, 40
.LVL64:
	.loc 1 355 0
	call8	spi_flash_unlock
.LVL65:
	mov.n	a7, a10
.LVL66:
	.loc 1 356 0
	bnez.n	a10, .L40
	.loc 1 359 0
	beqz.n	a5, .L41
.LBB90:
	.loc 1 360 0
	movi.n	a7, -1
.LVL67:
	s32i.n	a7, sp, 0
	.loc 1 361 0
	l32i.n	a8, sp, 32
	sub	a10, a2, a8
.LVL68:
	mov.n	a12, a5
	mov.n	a11, a3
	add.n	a10, sp, a10
	call8	memcpy
.LVL69:
.LBB91:
.LBB92:
	.loc 1 154 0
	l32r	a7, .LC11
	l32i.n	a7, a7, 0
	beqz.n	a7, .L42
	l32i.n	a7, a7, 0
	beqz.n	a7, .L42
	.loc 1 155 0
	callx8	a7
.LVL70:
.L42:
.LBE92:
.LBE91:
	.loc 1 363 0
	movi.n	a12, 4
	mov.n	a11, sp
	l32i.n	a10, sp, 32
	call8	spi_flash_write_inner
.LVL71:
	mov.n	a7, a10
.LVL72:
.LBB93:
.LBB94:
	.loc 1 161 0
	l32r	a8, .LC11
	l32i.n	a8, a8, 0
	beqz.n	a8, .L43
	l32i.n	a8, a8, 4
	beqz.n	a8, .L43
	.loc 1 162 0
	callx8	a8
.LVL73:
.L43:
.LBE94:
.LBE93:
	.loc 1 365 0
	bnez.n	a7, .L40
.L41:
.LBE90:
	.loc 1 370 0
	beqz.n	a6, .L45
.LVL74:
.LBB95:
.LBB96:
.LBB97:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/soc_memory_layout.h"
	.loc 2 167 0
	l32r	a8, .LC12
	add.n	a8, a3, a8
	movi.n	a9, 1
	l32r	a10, .LC13
	bgeu	a10, a8, .L46
	movi.n	a9, 0
.L46:
	extui	a9, a9, 0, 8
.LVL75:
	.loc 2 168 0
	l32r	a11, .LC14
	add.n	a11, a3, a11
	movi.n	a10, 1
	l32r	a12, .LC15
	bgeu	a12, a11, .L47
	movi.n	a10, 0
.L47:
	extui	a10, a10, 0, 8
.LVL76:
.LBE97:
.LBE96:
	.loc 1 376 0
	bnez.n	a9, .L66
	beqz.n	a10, .L63
.L66:
.LVL77:
	.loc 1 375 0
	l32r	a9, .LC16
.LVL78:
	bltu	a9, a8, .L64
	.loc 1 376 0 discriminator 3
	add.n	a8, a3, a5
.LVL79:
	extui	a8, a8, 0, 2
	bnez.n	a8, .L65
	.loc 1 376 0 is_stmt 0
	movi.n	a8, 1
	j	.L48
.LVL80:
.L63:
	movi.n	a8, 0
	j	.L48
.LVL81:
.L64:
	movi.n	a8, 0
.LVL82:
	j	.L48
.L65:
	movi.n	a8, 0
.LVL83:
.L48:
	.loc 1 374 0 is_stmt 1
	s32i.n	a8, sp, 36
.LVL84:
	.loc 1 380 0
	j	.L50
.LVL85:
.L54:
.LBB98:
	.loc 1 382 0
	l32r	a7, .LC17
.LVL86:
	minu	a9, a6, a7
	s32i.n	a9, sp, 32
.LVL87:
	.loc 1 383 0
	add.n	a7, a3, a5
.LVL88:
	.loc 1 384 0
	l32i.n	a8, sp, 36
	bnez.n	a8, .L51
	.loc 1 385 0
	movi.n	a8, 0x20
	minu	a9, a9, a8
.LVL89:
	s32i.n	a9, sp, 32
.LVL90:
	.loc 1 386 0
	mov.n	a12, a9
	mov.n	a11, a7
	mov.n	a10, sp
	call8	memcpy
.LVL91:
	.loc 1 387 0
	mov.n	a7, sp
.LVL92:
.L51:
.LBB99:
.LBB100:
	.loc 1 154 0
	l32r	a8, .LC11
	l32i.n	a8, a8, 0
	beqz.n	a8, .L52
	l32i.n	a8, a8, 0
	beqz.n	a8, .L52
	.loc 1 155 0
	callx8	a8
.LVL93:
.L52:
.LBE100:
.LBE99:
	.loc 1 390 0
	l32i.n	a12, sp, 32
	mov.n	a11, a7
	add.n	a10, a5, a2
	call8	spi_flash_write_inner
.LVL94:
	mov.n	a7, a10
.LVL95:
.LBB101:
.LBB102:
	.loc 1 161 0
	l32r	a8, .LC11
	l32i.n	a8, a8, 0
	beqz.n	a8, .L53
	l32i.n	a8, a8, 4
	beqz.n	a8, .L53
	.loc 1 162 0
	callx8	a8
.LVL96:
.L53:
.LBE102:
.LBE101:
	.loc 1 393 0
	l32i.n	a9, sp, 32
	sub	a6, a6, a9
.LVL97:
	.loc 1 394 0
	add.n	a5, a5, a9
.LVL98:
.L50:
.LBE98:
	.loc 1 380 0
	movi.n	a8, 1
	movi.n	a9, 0
	mov.n	a10, a9
	movnez	a10, a8, a6
	movnez	a8, a9, a7
	bany	a8, a10, .L54
	.loc 1 396 0
	bne	a7, a9, .L40
.LVL99:
.L45:
.LBE95:
	.loc 1 401 0
	l32i.n	a5, sp, 40
.LVL100:
	beqz.n	a5, .L40
.LBB103:
	.loc 1 402 0
	movi.n	a5, -1
	s32i.n	a5, sp, 0
	.loc 1 403 0
	l32i.n	a12, sp, 40
	l32i.n	a5, sp, 44
	add.n	a11, a3, a5
	mov.n	a10, sp
	call8	memcpy
.LVL101:
.LBB104:
.LBB105:
	.loc 1 154 0
	l32r	a3, .LC11
.LVL102:
	l32i.n	a3, a3, 0
	beqz.n	a3, .L55
	l32i.n	a3, a3, 0
	beqz.n	a3, .L55
	.loc 1 155 0
	callx8	a3
.LVL103:
.L55:
.LBE105:
.LBE104:
	.loc 1 405 0
	movi.n	a12, 4
	mov.n	a11, sp
	l32i.n	a3, sp, 44
	add.n	a10, a2, a3
	call8	spi_flash_write_inner
.LVL104:
	mov.n	a7, a10
.LVL105:
.LBB106:
.LBB107:
	.loc 1 161 0
	l32r	a3, .LC11
	l32i.n	a3, a3, 0
	beqz.n	a3, .L40
	l32i.n	a3, a3, 4
	beqz.n	a3, .L40
	.loc 1 162 0
	callx8	a3
.LVL106:
.L40:
.LBE107:
.LBE106:
.LBE103:
.LBB108:
.LBB109:
	.loc 1 168 0
	l32r	a3, .LC11
	l32i.n	a3, a3, 0
	beqz.n	a3, .L58
	l32i.n	a3, a3, 8
	beqz.n	a3, .L58
	.loc 1 169 0
	callx8	a3
.LVL107:
.L58:
.LBE109:
.LBE108:
	.loc 1 416 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	spi_flash_mark_modified_region
.LVL108:
.LBB110:
.LBB111:
	.loc 1 175 0
	l32r	a2, .LC11
.LVL109:
	l32i.n	a2, a2, 0
	beqz.n	a2, .L59
	l32i.n	a2, a2, 12
	beqz.n	a2, .L59
	.loc 1 176 0
	callx8	a2
.LVL110:
.L59:
.LBE111:
.LBE110:
	.loc 1 419 0
	mov.n	a10, a7
	call8	spi_flash_translate_rc
.LVL111:
	mov.n	a2, a10
	retw.n
.LVL112:
.L60:
	.loc 1 329 0
	movi	a2, 0x102
.LVL113:
	retw.n
.LVL114:
.L61:
	.loc 1 333 0
	movi	a2, 0x104
.LVL115:
	retw.n
.LVL116:
.L62:
	.loc 1 336 0
	movi.n	a2, 0
.LVL117:
	.loc 1 420 0
	retw.n
.LFE42:
	.size	spi_flash_write, .-spi_flash_write
	.literal_position
	.literal .LC18, g_rom_flashchip
	.literal .LC19, s_flash_guard_ops
	.literal .LC20, -1073283072
	.literal .LC21, 1253375
	.literal .LC22, -1342177280
	.literal .LC23, 8191
	.literal .LC24, 458751
	.literal .LC25, 16384
	.align	4
	.global	spi_flash_read
	.type	spi_flash_read, @function
spi_flash_read:
.LFB44:
	.loc 1 489 0
.LVL118:
	entry	sp, 112
.LCFI11:
	.loc 1 492 0
	add.n	a5, a2, a4
	l32r	a6, .LC18
	l32i.n	a6, a6, 4
	bltu	a6, a5, .L98
	.loc 1 495 0
	beqz.n	a4, .L99
.LVL119:
.LBB112:
.LBB113:
	.loc 1 154 0
	l32r	a5, .LC19
	l32i.n	a5, a5, 0
	beqz.n	a5, .L69
	l32i.n	a5, a5, 0
	beqz.n	a5, .L69
	.loc 1 155 0
	callx8	a5
.LVL120:
.L69:
.LBE113:
.LBE112:
	.loc 1 503 0
	movi.n	a5, 0xf
	bltu	a5, a4, .L70
.LBB114:
	.loc 1 505 0
	movi.n	a10, -4
.LVL121:
	.loc 1 506 0
	extui	a5, a2, 0, 2
.LVL122:
	.loc 1 507 0
	add.n	a12, a4, a5
	addi.n	a12, a12, 3
.LVL123:
	.loc 1 508 0
	and	a12, a12, a10
.LVL124:
	mov.n	a11, sp
	and	a10, a2, a10
.LVL125:
	call8	esp_rom_spiflash_read
.LVL126:
	mov.n	a7, a10
.LVL127:
	.loc 1 509 0
	bnez.n	a10, .L72
	.loc 1 513 0
	mov.n	a12, a4
	add.n	a11, sp, a5
	mov.n	a10, a3
	call8	memcpy
.LVL128:
	.loc 1 514 0
	j	.L72
.LVL129:
.L70:
.LBE114:
	.loc 1 523 0
	extui	a5, a2, 0, 2
	beqz.n	a5, .L100
	.loc 1 523 0 is_stmt 0 discriminator 1
	movi.n	a6, 4
	sub	a6, a6, a5
	s32i.n	a6, sp, 44
	j	.L73
.L100:
	.loc 1 523 0
	movi.n	a5, 0
	s32i.n	a5, sp, 44
.L73:
.LVL130:
	.loc 1 524 0 is_stmt 1 discriminator 4
	extui	a5, a3, 0, 2
	beqz.n	a5, .L101
	.loc 1 524 0 is_stmt 0 discriminator 1
	srai	a5, a3, 31
	extui	a6, a5, 30, 2
	add.n	a5, a3, a6
	extui	a5, a5, 0, 2
	sub	a5, a5, a6
	movi.n	a6, 4
	sub	a6, a6, a5
	s32i.n	a6, sp, 36
	j	.L74
.L101:
	.loc 1 524 0
	movi.n	a6, 0
	s32i.n	a6, sp, 36
.L74:
.LVL131:
	.loc 1 525 0 is_stmt 1 discriminator 4
	l32i.n	a5, sp, 44
	l32i.n	a8, sp, 36
	maxu	a6, a5, a8
	sub	a6, a4, a6
	movi.n	a5, -4
	and	a6, a6, a5
	s32i.n	a6, sp, 48
.LVL132:
	.loc 1 530 0 discriminator 4
	and	a6, a2, a5
.LVL133:
	s32i	a6, sp, 64
.LVL134:
	.loc 1 537 0 discriminator 4
	l32i.n	a6, sp, 44
.LVL135:
	add.n	a6, a6, a2
	s32i.n	a6, sp, 40
	l32i.n	a8, sp, 48
	add.n	a6, a8, a6
	and	a5, a6, a5
	s32i.n	a5, sp, 52
.LVL136:
	.loc 1 538 0 discriminator 4
	sub	a2, a5, a2
.LVL137:
	s32i.n	a2, sp, 56
.LVL138:
	.loc 1 539 0 discriminator 4
	sub	a4, a4, a2
.LVL139:
	s32i.n	a4, sp, 60
.LVL140:
.LBB115:
.LBB116:
	.loc 2 167 0 discriminator 4
	l32r	a4, .LC20
.LVL141:
	add.n	a4, a3, a4
	movi.n	a2, 1
.LVL142:
	l32r	a5, .LC21
.LVL143:
	bgeu	a5, a4, .L75
	movi.n	a2, 0
.L75:
	extui	a2, a2, 0, 8
.LVL144:
	.loc 2 168 0 discriminator 4
	l32r	a6, .LC22
	add.n	a6, a3, a6
	movi.n	a5, 1
	l32r	a7, .LC23
	bgeu	a7, a6, .L76
	movi.n	a5, 0
.L76:
	extui	a5, a5, 0, 8
.LVL145:
.LBE116:
.LBE115:
	.loc 1 544 0 discriminator 4
	bnez.n	a2, .L108
	beqz.n	a5, .L102
.L108:
.LVL146:
	.loc 1 543 0
	l32r	a2, .LC24
.LVL147:
	bltu	a2, a4, .L103
	.loc 1 544 0 discriminator 3
	l32i.n	a4, sp, 36
.LVL148:
	add.n	a2, a3, a4
	extui	a2, a2, 0, 2
	bnez.n	a2, .L104
	.loc 1 544 0 is_stmt 0
	movi.n	a2, 1
	j	.L77
.LVL149:
.L102:
	movi.n	a2, 0
.LVL150:
	j	.L77
.LVL151:
.L103:
	movi.n	a2, 0
	j	.L77
.LVL152:
.L104:
	movi.n	a2, 0
.LVL153:
.L77:
	.loc 1 542 0 is_stmt 1
	s32i.n	a2, sp, 32
.LVL154:
	.loc 1 548 0
	l32i.n	a5, sp, 48
	bnez.n	a5, .L105
	.loc 1 499 0
	movi.n	a7, 0
	j	.L80
.LVL155:
.L87:
.LBB117:
.LBB118:
	.loc 1 552 0
	l32r	a2, .LC25
	minu	a2, a4, a2
.LVL156:
	.loc 1 554 0
	l32i.n	a8, sp, 36
	add.n	a6, a5, a8
	add.n	a6, a3, a6
.LVL157:
	.loc 1 556 0
	l32i.n	a9, sp, 32
	bnez.n	a9, .L106
	.loc 1 557 0
	movi.n	a7, 0x20
.LVL158:
	minu	a2, a2, a7
.LVL159:
	.loc 1 558 0
	mov.n	a11, sp
.LVL160:
	j	.L81
.LVL161:
.L106:
	.loc 1 555 0
	mov.n	a11, a6
.LVL162:
.L81:
	.loc 1 560 0
	mov.n	a12, a2
	l32i.n	a8, sp, 40
	add.n	a10, a5, a8
	call8	esp_rom_spiflash_read
.LVL163:
	mov.n	a7, a10
.LVL164:
	.loc 1 562 0
	bnez.n	a10, .L72
	.loc 1 565 0
	sub	a4, a4, a2
.LVL165:
	.loc 1 566 0
	add.n	a5, a5, a2
.LVL166:
	.loc 1 567 0
	l32i.n	a9, sp, 32
	bnez.n	a9, .L83
.LBB119:
.LBB120:
	.loc 1 161 0
	l32r	a8, .LC19
	l32i.n	a8, a8, 0
	beqz.n	a8, .L84
	l32i.n	a8, a8, 4
	beqz.n	a8, .L84
	.loc 1 162 0
	callx8	a8
.LVL167:
.L84:
.LBE120:
.LBE119:
	.loc 1 569 0
	mov.n	a12, a2
	mov.n	a11, sp
	mov.n	a10, a6
	call8	memcpy
.LVL168:
.LBB121:
.LBB122:
	.loc 1 154 0
	l32r	a2, .LC19
.LVL169:
	l32i.n	a2, a2, 0
	beqz.n	a2, .L79
	l32i.n	a2, a2, 0
	beqz.n	a2, .L79
	.loc 1 155 0
	callx8	a2
.LVL170:
	j	.L79
.LVL171:
.L83:
.LBE122:
.LBE121:
	.loc 1 571 0
	beqz.n	a4, .L79
.LBB123:
.LBB124:
	.loc 1 161 0
	l32r	a2, .LC19
.LVL172:
	l32i.n	a2, a2, 0
	beqz.n	a2, .L86
	l32i.n	a2, a2, 4
	beqz.n	a2, .L86
	.loc 1 162 0
	callx8	a2
.LVL173:
.L86:
.LBE124:
.LBE123:
.LBB125:
.LBB126:
	.loc 1 154 0
	l32r	a2, .LC19
	l32i.n	a2, a2, 0
	beqz.n	a2, .L79
	l32i.n	a2, a2, 0
	beqz.n	a2, .L79
	.loc 1 155 0
	callx8	a2
.LVL174:
	j	.L79
.LVL175:
.L105:
.LBE126:
.LBE125:
.LBE118:
.LBE117:
	l32i.n	a4, sp, 48
	movi.n	a5, 0
	mov.n	a7, a5
.LVL176:
.L79:
.LBB131:
	.loc 1 551 0
	bnez.n	a4, .L87
	.loc 1 583 0
	l32i.n	a2, sp, 44
	l32i.n	a4, sp, 36
.LVL177:
	beq	a2, a4, .L80
	.loc 1 584 0
	l32i.n	a5, sp, 32
.LVL178:
	bnez.n	a5, .L88
.LBB127:
.LBB128:
	.loc 1 161 0
	l32r	a2, .LC19
	l32i.n	a2, a2, 0
	beqz.n	a2, .L88
	l32i.n	a2, a2, 4
	beqz.n	a2, .L88
	.loc 1 162 0
	callx8	a2
.LVL179:
.L88:
.LBE128:
.LBE127:
	.loc 1 587 0
	l32i.n	a12, sp, 48
	l32i.n	a6, sp, 36
	add.n	a11, a3, a6
	l32i.n	a2, sp, 44
	add.n	a10, a3, a2
	call8	memmove
.LVL180:
	.loc 1 588 0
	l32i.n	a4, sp, 32
	bnez.n	a4, .L80
.LBB129:
.LBB130:
	.loc 1 154 0
	l32r	a2, .LC19
	l32i.n	a2, a2, 0
	beqz.n	a2, .L80
	l32i.n	a2, a2, 0
	beqz.n	a2, .L80
	.loc 1 155 0
	callx8	a2
.LVL181:
.L80:
.LBE130:
.LBE129:
.LBE131:
	.loc 1 593 0
	l32i.n	a5, sp, 44
	beqz.n	a5, .L89
.LBB132:
	.loc 1 595 0
	movi.n	a12, 4
	mov.n	a11, sp
	l32i	a10, sp, 64
	call8	esp_rom_spiflash_read
.LVL182:
	mov.n	a7, a10
.LVL183:
	.loc 1 596 0
	bnez.n	a10, .L72
	.loc 1 600 0
	l32i.n	a6, sp, 32
	bnez.n	a6, .L91
.LBB133:
.LBB134:
	.loc 1 161 0
	l32r	a2, .LC19
	l32i.n	a2, a2, 0
	beqz.n	a2, .L91
	l32i.n	a2, a2, 4
	beqz.n	a2, .L91
	.loc 1 162 0
	callx8	a2
.LVL184:
.L91:
.LBE134:
.LBE133:
	.loc 1 603 0
	movi.n	a11, 4
	l32i.n	a2, sp, 44
	sub	a11, a11, a2
	mov.n	a12, a2
	add.n	a11, sp, a11
	mov.n	a10, a3
	call8	memcpy
.LVL185:
	.loc 1 604 0
	l32i.n	a4, sp, 32
	bnez.n	a4, .L89
.LBB135:
.LBB136:
	.loc 1 154 0
	l32r	a2, .LC19
	l32i.n	a2, a2, 0
	beqz.n	a2, .L89
	l32i.n	a2, a2, 0
	beqz.n	a2, .L89
	.loc 1 155 0
	callx8	a2
.LVL186:
.L89:
.LBE136:
.LBE135:
.LBE132:
	.loc 1 608 0
	l32i.n	a5, sp, 60
	beqz.n	a5, .L72
.LBB137:
	.loc 1 610 0
	bgeui	a5, 5, .L107
	movi.n	a12, 4
	j	.L93
.L107:
	movi.n	a12, 8
.L93:
.LVL187:
	.loc 1 611 0 discriminator 4
	mov.n	a11, sp
	l32i.n	a10, sp, 52
	call8	esp_rom_spiflash_read
.LVL188:
	mov.n	a7, a10
.LVL189:
	.loc 1 612 0 discriminator 4
	bnez.n	a10, .L72
	.loc 1 616 0
	l32i.n	a6, sp, 32
	bnez.n	a6, .L95
.LBB138:
.LBB139:
	.loc 1 161 0
	l32r	a2, .LC19
	l32i.n	a2, a2, 0
	beqz.n	a2, .L95
	l32i.n	a2, a2, 4
	beqz.n	a2, .L95
	.loc 1 162 0
	callx8	a2
.LVL190:
.L95:
.LBE139:
.LBE138:
	.loc 1 619 0
	l32i.n	a12, sp, 60
	mov.n	a11, sp
	l32i.n	a2, sp, 56
	add.n	a10, a3, a2
	call8	memcpy
.LVL191:
	.loc 1 620 0
	l32i.n	a4, sp, 32
	bnez.n	a4, .L72
.LBB140:
.LBB141:
	.loc 1 154 0
	l32r	a2, .LC19
	l32i.n	a2, a2, 0
	beqz.n	a2, .L72
	l32i.n	a2, a2, 0
	beqz.n	a2, .L72
	.loc 1 155 0
	callx8	a2
.LVL192:
.L72:
.LBE141:
.LBE140:
.LBE137:
.LBB142:
.LBB143:
	.loc 1 161 0
	l32r	a2, .LC19
	l32i.n	a2, a2, 0
	beqz.n	a2, .L97
	l32i.n	a2, a2, 4
	beqz.n	a2, .L97
	.loc 1 162 0
	callx8	a2
.LVL193:
.L97:
.LBE143:
.LBE142:
	.loc 1 627 0
	mov.n	a10, a7
	call8	spi_flash_translate_rc
.LVL194:
	mov.n	a2, a10
	retw.n
.LVL195:
.L98:
	.loc 1 493 0
	movi	a2, 0x104
.LVL196:
	retw.n
.LVL197:
.L99:
	.loc 1 496 0
	movi.n	a2, 0
.LVL198:
	.loc 1 628 0
	retw.n
.LFE44:
	.size	spi_flash_read, .-spi_flash_read
	.literal_position
	.literal .LC26, g_rom_flashchip
	.literal .LC27, -65536
	.align	4
	.global	spi_flash_read_encrypted
	.type	spi_flash_read_encrypted, @function
spi_flash_read_encrypted:
.LFB45:
	.loc 1 631 0
.LVL199:
	entry	sp, 48
.LCFI12:
	.loc 1 632 0
	add.n	a5, a2, a4
	l32r	a8, .LC26
	l32i.n	a8, a8, 4
	bltu	a8, a5, .L112
	.loc 1 635 0
	beqz.n	a4, .L113
	.loc 1 642 0
	l32r	a10, .LC27
	and	a10, a2, a10
.LVL200:
	.loc 1 643 0
	sub	a5, a2, a10
.LVL201:
	.loc 1 645 0
	addi.n	a14, sp, 4
	mov.n	a13, sp
	movi.n	a12, 0
	add.n	a11, a4, a5
.LVL202:
	call8	spi_flash_mmap
.LVL203:
	mov.n	a2, a10
.LVL204:
	.loc 1 646 0
	bnez.n	a10, .L111
	.loc 1 649 0
	mov.n	a12, a4
	l32i.n	a11, sp, 0
	add.n	a11, a11, a5
	mov.n	a10, a3
	call8	memcpy
.LVL205:
	.loc 1 650 0
	l32i.n	a10, sp, 4
	call8	spi_flash_munmap
.LVL206:
	.loc 1 651 0
	retw.n
.LVL207:
.L112:
	.loc 1 633 0
	movi	a2, 0x104
.LVL208:
	retw.n
.LVL209:
.L113:
	.loc 1 636 0
	movi.n	a2, 0
.LVL210:
.L111:
	.loc 1 652 0
	retw.n
.LFE45:
	.size	spi_flash_read_encrypted, .-spi_flash_read_encrypted
	.literal_position
	.literal .LC28, s_flash_guard_ops
	.align	4
	.global	spi_flash_write_encrypted
	.type	spi_flash_write_encrypted, @function
spi_flash_write_encrypted:
.LFB43:
	.loc 1 423 0
.LVL211:
	entry	sp, 64
.LCFI13:
	.loc 1 424 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	is_safe_write_address
.LVL212:
	beqz.n	a10, .L128
.LVL213:
	.loc 1 426 0
	extui	a5, a2, 0, 4
	bnez.n	a5, .L129
	.loc 1 429 0
	extui	a5, a4, 0, 4
	bnez.n	a5, .L130
	.loc 1 435 0
	call8	spi_flash_unlock
.LVL214:
	mov.n	a7, a10
.LVL215:
	.loc 1 436 0
	beqz.n	a10, .L131
	j	.L118
.LVL216:
.L125:
.LBB144:
.LBB145:
.LBB146:
	.loc 1 447 0
	add.n	a7, a5, a2
.LVL217:
	.loc 1 448 0
	bnez.n	a5, .L119
	.loc 1 448 0 is_stmt 0 discriminator 1
	extui	a6, a7, 0, 5
	beqz.n	a6, .L119
.LVL218:
	.loc 1 451 0 is_stmt 1
	addi	a7, a7, -16
.LVL219:
	.loc 1 453 0
	movi.n	a6, 0x10
	mov.n	a12, a6
	add.n	a11, a3, a5
	add.n	a10, sp, a6
	call8	memcpy
.LVL220:
	.loc 1 455 0
	mov.n	a12, a6
	mov.n	a11, sp
	mov.n	a10, a7
	call8	spi_flash_read_encrypted
.LVL221:
	j	.L120
.LVL222:
.L119:
	.loc 1 456 0
	sub	a6, a4, a5
	bnei	a6, 16, .L121
.LVL223:
	.loc 1 460 0
	mov.n	a12, a6
	add.n	a11, a3, a5
	mov.n	a10, sp
	call8	memcpy
.LVL224:
	.loc 1 462 0
	mov.n	a12, a6
	add.n	a11, sp, a6
	add.n	a10, a7, a6
	call8	spi_flash_read_encrypted
.LVL225:
	j	.L120
.LVL226:
.L121:
	.loc 1 466 0
	movi.n	a6, 0x20
	mov.n	a12, a6
	add.n	a11, a3, a5
	mov.n	a10, sp
	call8	memcpy
.LVL227:
.L120:
.LBB147:
.LBB148:
	.loc 1 154 0
	l32r	a8, .LC28
	l32i.n	a8, a8, 0
	beqz.n	a8, .L122
	l32i.n	a8, a8, 0
	beqz.n	a8, .L122
	.loc 1 155 0
	callx8	a8
.LVL228:
.L122:
.LBE148:
.LBE147:
	.loc 1 470 0
	movi.n	a12, 0x20
	mov.n	a11, sp
	mov.n	a10, a7
	call8	esp_rom_spiflash_write_encrypted
.LVL229:
	mov.n	a7, a10
.LVL230:
.LBB149:
.LBB150:
	.loc 1 161 0
	l32r	a8, .LC28
	l32i.n	a8, a8, 0
	beqz.n	a8, .L123
	l32i.n	a8, a8, 4
	beqz.n	a8, .L123
	.loc 1 162 0
	callx8	a8
.LVL231:
.L123:
.LBE150:
.LBE149:
	.loc 1 472 0
	bnez.n	a7, .L124
.LBE146:
	.loc 1 446 0 discriminator 2
	add.n	a5, a5, a6
.LVL232:
	j	.L117
.LVL233:
.L131:
.LBE145:
.LBE144:
	movi.n	a5, 0
.L117:
.LVL234:
.LBB152:
.LBB151:
	.loc 1 446 0 is_stmt 0 discriminator 1
	bltu	a5, a4, .L125
.L124:
.LBE151:
	.loc 1 476 0 is_stmt 1
	movi.n	a3, 0
.LVL235:
	s32i.n	a3, sp, 0
	s32i.n	a3, sp, 4
	s32i.n	a3, sp, 8
	s32i.n	a3, sp, 12
	s32i.n	a3, sp, 16
	s32i.n	a3, sp, 20
	s32i.n	a3, sp, 24
	s32i.n	a3, sp, 28
.LVL236:
.L118:
.LBE152:
.LBB153:
.LBB154:
	.loc 1 168 0
	l32r	a3, .LC28
	l32i.n	a3, a3, 0
	beqz.n	a3, .L126
	l32i.n	a3, a3, 8
	beqz.n	a3, .L126
	.loc 1 169 0
	callx8	a3
.LVL237:
.L126:
.LBE154:
.LBE153:
	.loc 1 482 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	spi_flash_mark_modified_region
.LVL238:
.LBB155:
.LBB156:
	.loc 1 175 0
	l32r	a2, .LC28
.LVL239:
	l32i.n	a2, a2, 0
	beqz.n	a2, .L127
	l32i.n	a2, a2, 12
	beqz.n	a2, .L127
	.loc 1 176 0
	callx8	a2
.LVL240:
.L127:
.LBE156:
.LBE155:
	.loc 1 485 0
	mov.n	a10, a7
	call8	spi_flash_translate_rc
.LVL241:
	mov.n	a2, a10
	retw.n
.LVL242:
.L128:
	.loc 1 424 0
	movi	a2, 0x102
.LVL243:
	retw.n
.LVL244:
.L129:
	.loc 1 427 0
	movi	a2, 0x102
.LVL245:
	retw.n
.LVL246:
.L130:
	.loc 1 430 0
	movi	a2, 0x104
.LVL247:
	.loc 1 486 0
	retw.n
.LFE43:
	.size	spi_flash_write_encrypted, .-spi_flash_write_encrypted
	.section	.bss.unlocked$5829,"aw",@nobits
	.type	unlocked$5829, @object
	.size	unlocked$5829, 1
unlocked$5829:
	.zero	1
	.section	.bss.s_flash_guard_ops,"aw",@nobits
	.align	4
	.type	s_flash_guard_ops, @object
	.size	s_flash_guard_ops, 4
s_flash_guard_ops:
	.zero	4
	.global	g_flash_guard_no_os_ops
	.section	.dram1,"a",@progbits
	.align	4
	.type	g_flash_guard_no_os_ops, @object
	.size	g_flash_guard_no_os_ops, 16
g_flash_guard_no_os_ops:
	.word	spi_flash_disable_interrupts_caches_and_other_cpu_no_os
	.word	spi_flash_enable_interrupts_caches_no_os
	.word	0
	.word	0
	.global	g_flash_guard_default_ops
	.align	4
	.type	g_flash_guard_default_ops, @object
	.size	g_flash_guard_default_ops, 16
g_flash_guard_default_ops:
	.word	spi_flash_disable_interrupts_caches_and_other_cpu
	.word	spi_flash_enable_interrupts_caches_and_other_cpu
	.word	spi_flash_op_lock
	.word	spi_flash_op_unlock
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
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI0-.LFB46
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
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI2-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI3-.LFB41
	.byte	0xe
	.uleb128 0x20
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
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI5-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI6-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI7-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI8-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI9-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI10-.LFB42
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI11-.LFB44
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI12-.LFB45
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI13-.LFB43
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE26:
	.text
.Letext0:
	.file 3 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/spi_flash.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/include/esp_spi_flash.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/include/esp_partition.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/app_update/include/esp_ota_ops.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/cache_utils.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x144a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF167
	.byte	0xc
	.4byte	.LASF168
	.4byte	.LASF169
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0xd8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x4
	.byte	0x12
	.4byte	0x57
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x4
	.byte	0x19
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0x31
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0x32
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbc
	.uleb128 0x7
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xca
	.uleb128 0x8
	.4byte	0xbd
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd5
	.uleb128 0x9
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x5
	.byte	0xa9
	.4byte	0x89
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x5
	.byte	0xaa
	.4byte	0x94
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x6
	.byte	0x18
	.4byte	0xe1
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF23
	.uleb128 0xa
	.byte	0x4
	.4byte	0x30
	.byte	0x7
	.byte	0x83
	.4byte	0x13e
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x7
	.byte	0x87
	.4byte	0x11f
	.uleb128 0xc
	.byte	0x18
	.byte	0x7
	.byte	0x89
	.4byte	0x19a
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x7
	.byte	0x8a
	.4byte	0xec
	.byte	0
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x7
	.byte	0x8b
	.4byte	0xec
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x7
	.byte	0x8c
	.4byte	0xec
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x7
	.byte	0x8d
	.4byte	0xec
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x7
	.byte	0x8e
	.4byte	0xec
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x7
	.byte	0x8f
	.4byte	0xec
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x7
	.byte	0x90
	.4byte	0x149
	.uleb128 0xa
	.byte	0x4
	.4byte	0x30
	.byte	0x8
	.byte	0xa1
	.4byte	0x1be
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x8
	.byte	0xa9
	.4byte	0xec
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x8
	.2byte	0x12f
	.4byte	0xb6
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x8
	.2byte	0x133
	.4byte	0xb6
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x8
	.2byte	0x137
	.4byte	0xb6
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x8
	.2byte	0x13b
	.4byte	0xb6
	.uleb128 0xf
	.byte	0x10
	.byte	0x8
	.2byte	0x159
	.4byte	0x237
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x8
	.2byte	0x15a
	.4byte	0x1c9
	.byte	0
	.uleb128 0x11
	.string	"end"
	.byte	0x8
	.2byte	0x15b
	.4byte	0x1d5
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x8
	.2byte	0x15c
	.4byte	0x1e1
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x8
	.2byte	0x15d
	.4byte	0x1ed
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x8
	.2byte	0x15e
	.4byte	0x1f9
	.uleb128 0xa
	.byte	0x4
	.4byte	0x30
	.byte	0x9
	.byte	0x26
	.4byte	0x25c
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0x9
	.byte	0x29
	.4byte	0x243
	.uleb128 0xa
	.byte	0x4
	.4byte	0x30
	.byte	0x9
	.byte	0x2f
	.4byte	0x322
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x11
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x12
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x13
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x15
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x16
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x17
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x19
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x1b
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x1d
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x1e
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x1f
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0x81
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x82
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF78
	.byte	0x9
	.byte	0x50
	.4byte	0x267
	.uleb128 0xc
	.byte	0x24
	.byte	0x9
	.byte	0x63
	.4byte	0x37e
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0x9
	.byte	0x64
	.4byte	0x25c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x9
	.byte	0x65
	.4byte	0x322
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0x9
	.byte	0x66
	.4byte	0xec
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0x9
	.byte	0x67
	.4byte	0xec
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0x9
	.byte	0x68
	.4byte	0x37e
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0x9
	.byte	0x69
	.4byte	0x118
	.byte	0x21
	.byte	0
	.uleb128 0x12
	.4byte	0xbd
	.4byte	0x38e
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0x9
	.byte	0x6a
	.4byte	0x32d
	.uleb128 0x14
	.4byte	.LASF86
	.byte	0x1
	.byte	0x9f
	.byte	0x3
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x1
	.byte	0x98
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x2
	.byte	0xa5
	.4byte	0x118
	.byte	0x3
	.4byte	0x3cc
	.uleb128 0x16
	.string	"p"
	.byte	0x2
	.byte	0xa5
	.4byte	0xcf
	.uleb128 0x17
	.string	"r"
	.byte	0x2
	.byte	0xa6
	.4byte	0x118
	.byte	0
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0x2
	.byte	0x9b
	.4byte	0x118
	.byte	0x3
	.4byte	0x3ef
	.uleb128 0x16
	.string	"p"
	.byte	0x2
	.byte	0x9b
	.4byte	0xcf
	.uleb128 0x17
	.string	"r"
	.byte	0x2
	.byte	0x9d
	.4byte	0x118
	.byte	0
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0x1
	.byte	0xad
	.byte	0x3
	.uleb128 0x14
	.4byte	.LASF91
	.byte	0x1
	.byte	0xa6
	.byte	0x3
	.uleb128 0x18
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x28f
	.4byte	0x10d
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x429
	.uleb128 0x19
	.string	"rc"
	.byte	0x1
	.2byte	0x28f
	.4byte	0x13e
	.4byte	.LLST0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0x1
	.byte	0x6e
	.4byte	0x118
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x49c
	.uleb128 0x1b
	.4byte	.LASF94
	.byte	0x1
	.byte	0x6e
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x1c
	.4byte	.LASF82
	.byte	0x1
	.byte	0x6e
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF95
	.byte	0x1
	.byte	0x70
	.4byte	0x118
	.byte	0x1
	.uleb128 0x1e
	.string	"p"
	.byte	0x1
	.byte	0x75
	.4byte	0x49c
	.4byte	.LLST2
	.uleb128 0x1f
	.4byte	.LVL8
	.4byte	0x13a1
	.uleb128 0x1f
	.4byte	.LVL9
	.4byte	0x13ac
	.uleb128 0x1f
	.4byte	.LVL10
	.4byte	0x13a1
	.uleb128 0x1f
	.4byte	.LVL12
	.4byte	0x13a1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4a2
	.uleb128 0x8
	.4byte	0x38e
	.uleb128 0x20
	.4byte	.LASF170
	.byte	0x1
	.byte	0xb4
	.4byte	0x13e
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51e
	.uleb128 0x21
	.4byte	.LASF96
	.byte	0x1
	.byte	0xb6
	.4byte	0x118
	.uleb128 0x5
	.byte	0x3
	.4byte	unlocked$5829
	.uleb128 0x22
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.uleb128 0x1e
	.string	"rc"
	.byte	0x1
	.byte	0xb9
	.4byte	0x13e
	.4byte	.LLST3
	.uleb128 0x23
	.4byte	0x3a1
	.4byte	.LBB81
	.4byte	.LBE81-.LBB81
	.byte	0x1
	.byte	0xb8
	.4byte	0x504
	.uleb128 0x24
	.4byte	.LVL13
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	0x399
	.4byte	.LBB83
	.4byte	.LBE83-.LBB83
	.byte	0x1
	.byte	0xba
	.uleb128 0x1f
	.4byte	.LVL14
	.4byte	0x13b7
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x100
	.4byte	0x13e
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x581
	.uleb128 0x26
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x100
	.4byte	0xec
	.4byte	.LLST4
	.uleb128 0x27
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x100
	.4byte	0x581
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.2byte	0x100
	.4byte	0xe1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.4byte	.LVL19
	.4byte	0x13c3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x587
	.uleb128 0x8
	.4byte	0xec
	.uleb128 0x2b
	.4byte	.LASF171
	.byte	0x1
	.byte	0x81
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ab
	.uleb128 0x1f
	.4byte	.LVL21
	.4byte	0x13cf
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF172
	.byte	0x1
	.byte	0x89
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ce
	.uleb128 0x1c
	.4byte	.LASF100
	.byte	0x1
	.byte	0x89
	.4byte	0x5ce
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5d4
	.uleb128 0x8
	.4byte	0x237
	.uleb128 0x2d
	.4byte	.LASF101
	.byte	0x1
	.byte	0x8e
	.4byte	0x5ce
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.4byte	.LASF102
	.byte	0x1
	.byte	0x93
	.4byte	0x25
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.4byte	.LASF106
	.byte	0x1
	.byte	0xc9
	.4byte	0x10d
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x72d
	.uleb128 0x1b
	.4byte	.LASF103
	.byte	0x1
	.byte	0xc9
	.4byte	0xec
	.4byte	.LLST5
	.uleb128 0x1b
	.4byte	.LASF82
	.byte	0x1
	.byte	0xc9
	.4byte	0xec
	.4byte	.LLST6
	.uleb128 0x2f
	.4byte	.LASF42
	.byte	0x1
	.byte	0xd5
	.4byte	0x25
	.4byte	.LLST7
	.uleb128 0x1e
	.string	"end"
	.byte	0x1
	.byte	0xd6
	.4byte	0x25
	.4byte	.LLST8
	.uleb128 0x2f
	.4byte	.LASF104
	.byte	0x1
	.byte	0xd7
	.4byte	0x72d
	.4byte	.LLST9
	.uleb128 0x1e
	.string	"rc"
	.byte	0x1
	.byte	0xd9
	.4byte	0x13e
	.4byte	.LLST10
	.uleb128 0x30
	.4byte	.LBB85
	.4byte	.LBE85-.LBB85
	.4byte	0x6f0
	.uleb128 0x2f
	.4byte	.LASF105
	.byte	0x1
	.byte	0xdc
	.4byte	0x25
	.4byte	.LLST11
	.uleb128 0x23
	.4byte	0x3a1
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.byte	0x1
	.byte	0xe0
	.4byte	0x6ad
	.uleb128 0x24
	.4byte	.LVL32
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	0x399
	.4byte	.LBB88
	.4byte	.LBE88-.LBB88
	.byte	0x1
	.byte	0xea
	.4byte	0x6c9
	.uleb128 0x24
	.4byte	.LVL41
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL34
	.4byte	0x13da
	.4byte	0x6df
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x72
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0
	.uleb128 0x29
	.4byte	.LVL38
	.4byte	0x13e6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL24
	.4byte	0x429
	.4byte	0x70a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL25
	.4byte	0x5ee
	.uleb128 0x1f
	.4byte	.LVL29
	.4byte	0x4a7
	.uleb128 0x29
	.4byte	.LVL43
	.4byte	0x3ff
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x25
	.uleb128 0x2e
	.4byte	.LASF107
	.byte	0x1
	.byte	0xc3
	.4byte	0x10d
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x78d
	.uleb128 0x32
	.string	"sec"
	.byte	0x1
	.byte	0xc3
	.4byte	0x25
	.4byte	.LLST12
	.uleb128 0x31
	.4byte	.LVL54
	.4byte	0x429
	.4byte	0x775
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x29
	.4byte	.LVL55
	.4byte	0x603
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x147
	.4byte	0x10d
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xafd
	.uleb128 0x19
	.string	"dst"
	.byte	0x1
	.2byte	0x147
	.4byte	0x25
	.4byte	.LLST13
	.uleb128 0x26
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x147
	.4byte	0xcf
	.4byte	.LLST14
	.uleb128 0x27
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x147
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x34
	.string	"rc"
	.byte	0x1
	.2byte	0x153
	.4byte	0x13e
	.4byte	.LLST15
	.uleb128 0x35
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x155
	.4byte	0xafd
	.4byte	.LLST16
	.uleb128 0x35
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x15c
	.4byte	0x25
	.4byte	.LLST17
	.uleb128 0x35
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x15d
	.4byte	0x25
	.4byte	.LLST18
	.uleb128 0x35
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x15e
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x35
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x15f
	.4byte	0x25
	.4byte	.LLST20
	.uleb128 0x35
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x160
	.4byte	0x25
	.4byte	.LLST21
	.uleb128 0x35
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x161
	.4byte	0x25
	.4byte	.LLST22
	.uleb128 0x36
	.string	"out"
	.byte	0x1
	.2byte	0x19c
	.4byte	.L40
	.uleb128 0x30
	.4byte	.LBB90
	.4byte	.LBE90-.LBB90
	.4byte	0x8f0
	.uleb128 0x37
	.string	"t"
	.byte	0x1
	.2byte	0x168
	.4byte	0xec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.4byte	0x3a1
	.4byte	.LBB91
	.4byte	.LBE91-.LBB91
	.byte	0x1
	.2byte	0x16a
	.4byte	0x898
	.uleb128 0x24
	.4byte	.LVL70
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	0x399
	.4byte	.LBB93
	.4byte	.LBE93-.LBB93
	.byte	0x1
	.2byte	0x16c
	.uleb128 0x31
	.4byte	.LVL69
	.4byte	0x13f2
	.4byte	0x8d2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xc
	.byte	0x91
	.sleb128 0
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x1c
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x50
	.byte	0x1c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL71
	.4byte	0x51e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LBB95
	.4byte	.LBE95-.LBB95
	.4byte	0x9db
	.uleb128 0x35
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x176
	.4byte	0x118
	.4byte	.LLST23
	.uleb128 0x38
	.4byte	0x3a9
	.4byte	.LBB96
	.4byte	.LBE96-.LBB96
	.byte	0x1
	.2byte	0x176
	.4byte	0x93e
	.uleb128 0x3a
	.4byte	0x3b9
	.4byte	.LLST24
	.uleb128 0x22
	.4byte	.LBB97
	.4byte	.LBE97-.LBB97
	.uleb128 0x3b
	.4byte	0x3c2
	.4byte	.LLST25
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LBB98
	.4byte	.LBE98-.LBB98
	.uleb128 0x3c
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x17d
	.4byte	0xb08
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x17e
	.4byte	0xec
	.4byte	.LLST26
	.uleb128 0x35
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x17f
	.4byte	0xafd
	.4byte	.LLST27
	.uleb128 0x39
	.4byte	0x3a1
	.4byte	.LBB99
	.4byte	.LBE99-.LBB99
	.byte	0x1
	.2byte	0x185
	.uleb128 0x39
	.4byte	0x399
	.4byte	.LBB101
	.4byte	.LBE101-.LBB101
	.byte	0x1
	.2byte	0x187
	.uleb128 0x31
	.4byte	.LVL91
	.4byte	0x13f2
	.4byte	0x9b9
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x29
	.4byte	.LVL94
	.4byte	0x51e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LBB103
	.4byte	.LBE103-.LBB103
	.4byte	0xa75
	.uleb128 0x37
	.string	"t"
	.byte	0x1
	.2byte	0x192
	.4byte	0xec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.4byte	0x3a1
	.4byte	.LBB104
	.4byte	.LBE104-.LBB104
	.byte	0x1
	.2byte	0x194
	.4byte	0xa13
	.uleb128 0x24
	.4byte	.LVL103
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	0x399
	.4byte	.LBB106
	.4byte	.LBE106-.LBB106
	.byte	0x1
	.2byte	0x196
	.4byte	0xa30
	.uleb128 0x24
	.4byte	.LVL106
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL101
	.4byte	0x13f2
	.4byte	0xa55
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x29
	.4byte	.LVL104
	.4byte	0x51e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0x3f7
	.4byte	.LBB108
	.4byte	.LBE108-.LBB108
	.byte	0x1
	.2byte	0x19f
	.4byte	0xa92
	.uleb128 0x24
	.4byte	.LVL107
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	0x3ef
	.4byte	.LBB110
	.4byte	.LBE110-.LBB110
	.byte	0x1
	.2byte	0x1a1
	.4byte	0xaaf
	.uleb128 0x24
	.4byte	.LVL110
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL57
	.4byte	0x429
	.4byte	0xac9
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL65
	.4byte	0x4a7
	.uleb128 0x31
	.4byte	.LVL108
	.4byte	0x13fb
	.4byte	0xaec
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL111
	.4byte	0x3ff
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb03
	.uleb128 0x8
	.4byte	0xd6
	.uleb128 0x12
	.4byte	0xec
	.4byte	0xb18
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x7
	.byte	0
	.uleb128 0x33
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x10d
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xff5
	.uleb128 0x19
	.string	"src"
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x25
	.4byte	.LLST28
	.uleb128 0x27
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x1e8
	.4byte	0xad
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x25
	.4byte	.LLST29
	.uleb128 0x34
	.string	"rc"
	.byte	0x1
	.2byte	0x1f3
	.4byte	0x13e
	.4byte	.LLST30
	.uleb128 0x36
	.string	"out"
	.byte	0x1
	.2byte	0x270
	.4byte	.L72
	.uleb128 0x35
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x204
	.4byte	0xff5
	.4byte	.LLST31
	.uleb128 0x35
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x205
	.4byte	0xf7
	.4byte	.LLST31
	.uleb128 0x35
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x20b
	.4byte	0x25
	.4byte	.LLST33
	.uleb128 0x35
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x20c
	.4byte	0x25
	.4byte	.LLST34
	.uleb128 0x35
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x20d
	.4byte	0x25
	.4byte	.LLST35
	.uleb128 0x35
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x212
	.4byte	0x25
	.4byte	.LLST36
	.uleb128 0x35
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x213
	.4byte	0x25
	.4byte	.LLST37
	.uleb128 0x35
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x219
	.4byte	0x25
	.4byte	.LLST38
	.uleb128 0x35
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x21a
	.4byte	0x25
	.4byte	.LLST39
	.uleb128 0x35
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x21b
	.4byte	0x25
	.4byte	.LLST40
	.uleb128 0x35
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x21e
	.4byte	0x118
	.4byte	.LLST41
	.uleb128 0x38
	.4byte	0x3a1
	.4byte	.LBB112
	.4byte	.LBE112-.LBB112
	.byte	0x1
	.2byte	0x1f5
	.4byte	0xc48
	.uleb128 0x24
	.4byte	.LVL120
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LBB114
	.4byte	.LBE114-.LBB114
	.4byte	0xce2
	.uleb128 0x37
	.string	"t"
	.byte	0x1
	.2byte	0x1f8
	.4byte	0xffb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x35
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x1f9
	.4byte	0xec
	.4byte	.LLST42
	.uleb128 0x35
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x1fa
	.4byte	0xec
	.4byte	.LLST43
	.uleb128 0x35
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x1fb
	.4byte	0xec
	.4byte	.LLST44
	.uleb128 0x31
	.4byte	.LVL126
	.4byte	0x1406
	.4byte	0xcbf
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xa
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x3
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0
	.uleb128 0x29
	.4byte	.LVL128
	.4byte	0x13f2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x70
	.byte	0x1c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0x3a9
	.4byte	.LBB115
	.4byte	.LBE115-.LBB115
	.byte	0x1
	.2byte	0x21e
	.4byte	0xd13
	.uleb128 0x3a
	.4byte	0x3b9
	.4byte	.LLST45
	.uleb128 0x22
	.4byte	.LBB116
	.4byte	.LBE116-.LBB116
	.uleb128 0x3b
	.4byte	0x3c2
	.4byte	.LLST46
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	.Ldebug_ranges0+0
	.4byte	0xe8b
	.uleb128 0x35
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x225
	.4byte	0xec
	.4byte	.LLST47
	.uleb128 0x35
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x226
	.4byte	0xec
	.4byte	.LLST48
	.uleb128 0x30
	.4byte	.LBB118
	.4byte	.LBE118-.LBB118
	.4byte	0xe2d
	.uleb128 0x35
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x228
	.4byte	0xec
	.4byte	.LLST49
	.uleb128 0x3c
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x229
	.4byte	0xb08
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x35
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x22a
	.4byte	0xff5
	.4byte	.LLST50
	.uleb128 0x35
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x22b
	.4byte	0xff5
	.4byte	.LLST51
	.uleb128 0x39
	.4byte	0x399
	.4byte	.LBB119
	.4byte	.LBE119-.LBB119
	.byte	0x1
	.2byte	0x238
	.uleb128 0x38
	.4byte	0x3a1
	.4byte	.LBB121
	.4byte	.LBE121-.LBB121
	.byte	0x1
	.2byte	0x23a
	.4byte	0xdb6
	.uleb128 0x24
	.4byte	.LVL170
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	0x399
	.4byte	.LBB123
	.4byte	.LBE123-.LBB123
	.byte	0x1
	.2byte	0x23d
	.4byte	0xdd3
	.uleb128 0x24
	.4byte	.LVL173
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	0x3a1
	.4byte	.LBB125
	.4byte	.LBE125-.LBB125
	.byte	0x1
	.2byte	0x23e
	.4byte	0xdf0
	.uleb128 0x24
	.4byte	.LVL174
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL163
	.4byte	0x1406
	.4byte	0xe0f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0x22
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL168
	.4byte	0x13f2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0x399
	.4byte	.LBB127
	.4byte	.LBE127-.LBB127
	.byte	0x1
	.2byte	0x249
	.4byte	0xe4a
	.uleb128 0x24
	.4byte	.LVL179
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	0x3a1
	.4byte	.LBB129
	.4byte	.LBE129-.LBB129
	.byte	0x1
	.2byte	0x24d
	.4byte	0xe67
	.uleb128 0x24
	.4byte	.LVL181
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL180
	.4byte	0x1412
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LBB132
	.4byte	.LBE132-.LBB132
	.4byte	0xf24
	.uleb128 0x37
	.string	"t"
	.byte	0x1
	.2byte	0x252
	.4byte	0xec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x38
	.4byte	0x399
	.4byte	.LBB133
	.4byte	.LBE133-.LBB133
	.byte	0x1
	.2byte	0x259
	.4byte	0xec3
	.uleb128 0x24
	.4byte	.LVL184
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	0x3a1
	.4byte	.LBB135
	.4byte	.LBE135-.LBB135
	.byte	0x1
	.2byte	0x25d
	.4byte	0xee0
	.uleb128 0x24
	.4byte	.LVL186
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL182
	.4byte	0x1406
	.4byte	0xf01
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x29
	.4byte	.LVL185
	.4byte	0x13f2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x8
	.byte	0x6c
	.byte	0x1c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LBB137
	.4byte	.LBE137-.LBB137
	.4byte	0xfc7
	.uleb128 0x37
	.string	"t"
	.byte	0x1
	.2byte	0x261
	.4byte	0x100b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x35
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x262
	.4byte	0xe1
	.4byte	.LLST52
	.uleb128 0x38
	.4byte	0x399
	.4byte	.LBB138
	.4byte	.LBE138-.LBB138
	.byte	0x1
	.2byte	0x269
	.4byte	0xf6c
	.uleb128 0x24
	.4byte	.LVL190
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	0x3a1
	.4byte	.LBB140
	.4byte	.LBE140-.LBB140
	.byte	0x1
	.2byte	0x26d
	.4byte	0xf89
	.uleb128 0x24
	.4byte	.LVL192
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL188
	.4byte	0x1406
	.4byte	0xfa5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x29
	.4byte	.LVL191
	.4byte	0x13f2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0x399
	.4byte	.LBB142
	.4byte	.LBE142-.LBB142
	.byte	0x1
	.2byte	0x271
	.4byte	0xfe4
	.uleb128 0x24
	.4byte	.LVL193
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL194
	.4byte	0x3ff
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd6
	.uleb128 0x12
	.4byte	0xec
	.4byte	0x100b
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.4byte	0xec
	.4byte	0x101b
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x1
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x276
	.4byte	0x10d
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1106
	.uleb128 0x19
	.string	"src"
	.byte	0x1
	.2byte	0x276
	.4byte	0x25
	.4byte	.LLST53
	.uleb128 0x27
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x276
	.4byte	0xad
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x276
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x34
	.string	"err"
	.byte	0x1
	.2byte	0x27f
	.4byte	0x10d
	.4byte	.LLST54
	.uleb128 0x37
	.string	"map"
	.byte	0x1
	.2byte	0x280
	.4byte	0xafd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3c
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x281
	.4byte	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x282
	.4byte	0x25
	.4byte	.LLST55
	.uleb128 0x35
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x283
	.4byte	0x25
	.4byte	.LLST56
	.uleb128 0x31
	.4byte	.LVL203
	.4byte	0x141d
	.4byte	0x10e2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x31
	.4byte	.LVL205
	.4byte	0x13f2
	.4byte	0x10fc
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL206
	.4byte	0x1428
	.byte	0
	.uleb128 0x33
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x1a6
	.4byte	0x10d
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1340
	.uleb128 0x26
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x1a6
	.4byte	0x25
	.4byte	.LLST57
	.uleb128 0x19
	.string	"src"
	.byte	0x1
	.2byte	0x1a6
	.4byte	0xcf
	.4byte	.LLST58
	.uleb128 0x27
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x1a6
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x35
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x1a9
	.4byte	0xafd
	.4byte	.LLST59
	.uleb128 0x34
	.string	"rc"
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x13e
	.4byte	.LLST60
	.uleb128 0x3d
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x12b8
	.uleb128 0x3c
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x1340
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x1bd
	.4byte	0xec
	.4byte	.LLST61
	.uleb128 0x3f
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.2byte	0x1be
	.4byte	0x25
	.4byte	.LLST62
	.uleb128 0x22
	.4byte	.LBB146
	.4byte	.LBE146-.LBB146
	.uleb128 0x35
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x1bf
	.4byte	0xec
	.4byte	.LLST63
	.uleb128 0x39
	.4byte	0x3a1
	.4byte	.LBB147
	.4byte	.LBE147-.LBB147
	.byte	0x1
	.2byte	0x1d5
	.uleb128 0x39
	.4byte	0x399
	.4byte	.LBB149
	.4byte	.LBE149-.LBB149
	.byte	0x1
	.2byte	0x1d7
	.uleb128 0x31
	.4byte	.LVL220
	.4byte	0x13f2
	.4byte	0x120a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x40
	.byte	0x1c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL221
	.4byte	0x101b
	.4byte	0x122a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL224
	.4byte	0x13f2
	.4byte	0x124d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL225
	.4byte	0x101b
	.4byte	0x1276
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x77
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x40
	.byte	0x1c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL227
	.4byte	0x13f2
	.4byte	0x1299
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL229
	.4byte	0x1433
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0x3f7
	.4byte	.LBB153
	.4byte	.LBE153-.LBB153
	.byte	0x1
	.2byte	0x1e1
	.4byte	0x12d5
	.uleb128 0x24
	.4byte	.LVL237
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	0x3ef
	.4byte	.LBB155
	.4byte	.LBE155-.LBB155
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x12f2
	.uleb128 0x24
	.4byte	.LVL240
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL212
	.4byte	0x429
	.4byte	0x130c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL214
	.4byte	0x4a7
	.uleb128 0x31
	.4byte	.LVL238
	.4byte	0x13fb
	.4byte	0x132f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL241
	.4byte	0x3ff
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xd6
	.4byte	0x1350
	.uleb128 0x13
	.4byte	0xa6
	.byte	0x1f
	.byte	0
	.uleb128 0x40
	.string	"TAG"
	.byte	0x1
	.byte	0x30
	.4byte	0xc4
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5183
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF150
	.byte	0x1
	.byte	0x58
	.4byte	0x5ce
	.uleb128 0x5
	.byte	0x3
	.4byte	s_flash_guard_ops
	.uleb128 0x41
	.4byte	.LASF151
	.byte	0x7
	.2byte	0x21a
	.4byte	0x19a
	.uleb128 0x42
	.4byte	.LASF152
	.byte	0x1
	.byte	0x4a
	.4byte	0x5d4
	.uleb128 0x5
	.byte	0x3
	.4byte	g_flash_guard_default_ops
	.uleb128 0x42
	.4byte	.LASF153
	.byte	0x1
	.byte	0x51
	.4byte	0x5d4
	.uleb128 0x5
	.byte	0x3
	.4byte	g_flash_guard_no_os_ops
	.uleb128 0x43
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0xa
	.byte	0x47
	.uleb128 0x43
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0xb
	.byte	0x9c
	.uleb128 0x44
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0x7
	.2byte	0x148
	.uleb128 0x44
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0x7
	.2byte	0x1af
	.uleb128 0x43
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0xc
	.byte	0x1a
	.uleb128 0x44
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0x7
	.2byte	0x184
	.uleb128 0x44
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0x7
	.2byte	0x191
	.uleb128 0x45
	.4byte	.LASF173
	.4byte	.LASF173
	.uleb128 0x43
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0xc
	.byte	0x39
	.uleb128 0x44
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0x7
	.2byte	0x1bf
	.uleb128 0x43
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0xd
	.byte	0x18
	.uleb128 0x43
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0x8
	.byte	0xc1
	.uleb128 0x43
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0x8
	.byte	0xe9
	.uleb128 0x44
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0x7
	.2byte	0x1f5
	.uleb128 0x46
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xa
	.byte	0x73
	.byte	0x70
	.byte	0x69
	.byte	0x5f
	.byte	0x66
	.byte	0x6c
	.byte	0x61
	.byte	0x73
	.byte	0x68
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
	.uleb128 0x3
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xd
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
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
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL48
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
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL26
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL44
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL28
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL28
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL39
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL31
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL56
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109
	.4byte	.LVL112
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL56
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102
	.4byte	.LVL112
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL58
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL95
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL58
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102
	.4byte	.LVL112
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL60
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL85
	.4byte	.LVL109
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL112
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL61
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL85
	.4byte	.LVL109
	.2byte	0x1c
	.byte	0x72
	.sleb128 3
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x74
	.sleb128 0
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
	.4byte	.LVL109
	.4byte	.LVL112
	.2byte	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x3
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x74
	.sleb128 0
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
.LLST19:
	.4byte	.LVL61
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL62
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL63
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL65-1
	.4byte	.LVL112
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL64
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL65-1
	.4byte	.LVL112
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL84
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL74
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL90
	.4byte	.LVL91-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL91-1
	.4byte	.LVL98
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL88
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL118
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL137
	.4byte	.LVL195
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL196
	.4byte	.LVL197
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL197
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL198
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL118
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL139
	.4byte	.LVL195
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL195
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL119
	.4byte	.LVL127
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL129
	.4byte	.LVL155
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL164
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL129
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL130
	.4byte	.LVL192
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL131
	.4byte	.LVL192
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL133
	.4byte	.LVL175
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL176
	.4byte	.LVL192
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL135
	.4byte	.LVL192
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL134
	.4byte	.LVL192
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL136
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL143
	.4byte	.LVL192
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL138
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL142
	.4byte	.LVL192
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL141
	.4byte	.LVL192
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL154
	.4byte	.LVL192
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL121
	.4byte	.LVL125
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL126-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL126-1
	.4byte	.LVL129
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL122
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL126-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL126-1
	.4byte	.LVL129
	.2byte	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x3
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL140
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL145
	.4byte	.LVL147
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL155
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL155
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL176
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL156
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL157
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL162
	.4byte	.LVL163-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL187
	.4byte	.LVL188-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL199
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL204
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
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL204
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL200
	.4byte	.LVL203-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL203-1
	.4byte	.LVL204
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL204
	.4byte	.LVL207
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL203-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL203-1
	.4byte	.LVL207
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL211
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL239
	.4byte	.LVL242
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL242
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL244
	.4byte	.LVL245
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL245
	.4byte	.LVL246
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL246
	.4byte	.LVL247
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL247
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL211
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL235
	.4byte	.LVL242
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL242
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL213
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL235
	.4byte	.LVL242
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL244
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL215
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL230
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL218
	.4byte	.LVL222
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL223
	.4byte	.LVL226
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL226
	.4byte	.LVL227
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL227
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL216
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL234
	.4byte	.LVL236
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL217
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x57
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
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB117
	.4byte	.LBE117
	.4byte	.LBB131
	.4byte	.LBE131
	.4byte	0
	.4byte	0
	.4byte	.LBB144
	.4byte	.LBE144
	.4byte	.LBB152
	.4byte	.LBE152
	.4byte	0
	.4byte	0
	.4byte	.LBB145
	.4byte	.LBE145
	.4byte	.LBB151
	.4byte	.LBE151
	.4byte	0
	.4byte	0
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF88:
	.string	"esp_ptr_internal"
.LASF120:
	.string	"write_src"
.LASF3:
	.string	"size_t"
.LASF21:
	.string	"uintptr_t"
.LASF32:
	.string	"page_size"
.LASF100:
	.string	"funcs"
.LASF22:
	.string	"esp_err_t"
.LASF4:
	.string	"__uint8_t"
.LASF79:
	.string	"type"
.LASF155:
	.string	"esp_ota_get_running_partition"
.LASF147:
	.string	"encrypt_buf"
.LASF10:
	.string	"long long unsigned int"
.LASF37:
	.string	"spi_flash_mmap_handle_t"
.LASF170:
	.string	"spi_flash_unlock"
.LASF156:
	.string	"esp_rom_spiflash_unlock"
.LASF106:
	.string	"spi_flash_erase_range"
.LASF145:
	.string	"dest_addr"
.LASF123:
	.string	"dstc"
.LASF20:
	.string	"intptr_t"
.LASF139:
	.string	"read_dst"
.LASF40:
	.string	"spi_flash_op_lock_func_t"
.LASF92:
	.string	"spi_flash_translate_rc"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF28:
	.string	"device_id"
.LASF166:
	.string	"esp_rom_spiflash_write_encrypted"
.LASF157:
	.string	"esp_rom_spiflash_write"
.LASF122:
	.string	"dstv"
.LASF153:
	.string	"g_flash_guard_no_os_ops"
.LASF87:
	.string	"spi_flash_guard_start"
.LASF132:
	.string	"direct_read"
.LASF77:
	.string	"ESP_PARTITION_SUBTYPE_ANY"
.LASF13:
	.string	"long int"
.LASF41:
	.string	"spi_flash_op_unlock_func_t"
.LASF112:
	.string	"left_size"
.LASF173:
	.string	"memcpy"
.LASF69:
	.string	"ESP_PARTITION_SUBTYPE_DATA_OTA"
.LASF130:
	.string	"pad_right_off"
.LASF67:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MAX"
.LASF111:
	.string	"left_off"
.LASF73:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS_KEYS"
.LASF161:
	.string	"spi_flash_mark_modified_region"
.LASF124:
	.string	"dsti"
.LASF76:
	.string	"ESP_PARTITION_SUBTYPE_DATA_SPIFFS"
.LASF50:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MIN"
.LASF141:
	.string	"map_handle"
.LASF34:
	.string	"esp_rom_spiflash_chip_t"
.LASF142:
	.string	"map_src"
.LASF45:
	.string	"spi_flash_guard_funcs_t"
.LASF8:
	.string	"__uint32_t"
.LASF11:
	.string	"__intptr_t"
.LASF43:
	.string	"op_lock"
.LASF150:
	.string	"s_flash_guard_ops"
.LASF136:
	.string	"mid_read"
.LASF133:
	.string	"read_src"
.LASF143:
	.string	"map_size"
.LASF0:
	.string	"unsigned int"
.LASF140:
	.string	"spi_flash_read_encrypted"
.LASF121:
	.string	"spi_flash_read"
.LASF116:
	.string	"right_size"
.LASF105:
	.string	"sector"
.LASF48:
	.string	"esp_partition_type_t"
.LASF6:
	.string	"short int"
.LASF15:
	.string	"long unsigned int"
.LASF135:
	.string	"mid_remaining"
.LASF128:
	.string	"pad_left_size"
.LASF26:
	.string	"ESP_ROM_SPIFLASH_RESULT_TIMEOUT"
.LASF75:
	.string	"ESP_PARTITION_SUBTYPE_DATA_FAT"
.LASF82:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF44:
	.string	"op_unlock"
.LASF102:
	.string	"spi_flash_get_chip_size"
.LASF125:
	.string	"src_mid_off"
.LASF98:
	.string	"target"
.LASF144:
	.string	"spi_flash_write_encrypted"
.LASF83:
	.string	"label"
.LASF7:
	.string	"__int32_t"
.LASF99:
	.string	"src_addr"
.LASF80:
	.string	"subtype"
.LASF164:
	.string	"spi_flash_mmap"
.LASF30:
	.string	"block_size"
.LASF151:
	.string	"g_rom_flashchip"
.LASF33:
	.string	"status_mask"
.LASF27:
	.string	"esp_rom_spiflash_result_t"
.LASF118:
	.string	"write_buf"
.LASF89:
	.string	"esp_ptr_byte_accessible"
.LASF14:
	.string	"sizetype"
.LASF70:
	.string	"ESP_PARTITION_SUBTYPE_DATA_PHY"
.LASF90:
	.string	"spi_flash_guard_op_unlock"
.LASF81:
	.string	"address"
.LASF146:
	.string	"ssrc"
.LASF117:
	.string	"direct_write"
.LASF47:
	.string	"ESP_PARTITION_TYPE_DATA"
.LASF35:
	.string	"SPI_FLASH_MMAP_DATA"
.LASF36:
	.string	"SPI_FLASH_MMAP_INST"
.LASF104:
	.string	"sectors_per_block"
.LASF97:
	.string	"spi_flash_write_inner"
.LASF162:
	.string	"esp_rom_spiflash_read"
.LASF160:
	.string	"esp_rom_spiflash_erase_sector"
.LASF46:
	.string	"ESP_PARTITION_TYPE_APP"
.LASF115:
	.string	"right_off"
.LASF39:
	.string	"spi_flash_guard_end_func_t"
.LASF138:
	.string	"read_dst_final"
.LASF127:
	.string	"pad_left_src"
.LASF158:
	.string	"spi_flash_init_lock"
.LASF31:
	.string	"sector_size"
.LASF94:
	.string	"addr"
.LASF23:
	.string	"_Bool"
.LASF18:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF86:
	.string	"spi_flash_guard_end"
.LASF103:
	.string	"start_addr"
.LASF53:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_2"
.LASF167:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF55:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_4"
.LASF56:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_5"
.LASF57:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_6"
.LASF58:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_7"
.LASF59:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_8"
.LASF159:
	.string	"esp_rom_spiflash_erase_block"
.LASF12:
	.string	"__uintptr_t"
.LASF71:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS"
.LASF126:
	.string	"dst_mid_off"
.LASF84:
	.string	"encrypted"
.LASF110:
	.string	"srcc"
.LASF19:
	.string	"uint32_t"
.LASF129:
	.string	"pad_right_src"
.LASF113:
	.string	"mid_off"
.LASF16:
	.string	"char"
.LASF152:
	.string	"g_flash_guard_default_ops"
.LASF114:
	.string	"mid_size"
.LASF109:
	.string	"srcv"
.LASF24:
	.string	"ESP_ROM_SPIFLASH_RESULT_OK"
.LASF148:
	.string	"row_size"
.LASF74:
	.string	"ESP_PARTITION_SUBTYPE_DATA_ESPHTTPD"
.LASF78:
	.string	"esp_partition_subtype_t"
.LASF171:
	.string	"spi_flash_init"
.LASF149:
	.string	"row_addr"
.LASF154:
	.string	"abort"
.LASF96:
	.string	"unlocked"
.LASF137:
	.string	"read_buf"
.LASF38:
	.string	"spi_flash_guard_start_func_t"
.LASF54:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_3"
.LASF165:
	.string	"spi_flash_munmap"
.LASF168:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/flash_ops.c"
.LASF60:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_9"
.LASF68:
	.string	"ESP_PARTITION_SUBTYPE_APP_TEST"
.LASF91:
	.string	"spi_flash_guard_op_lock"
.LASF25:
	.string	"ESP_ROM_SPIFLASH_RESULT_ERR"
.LASF61:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_10"
.LASF62:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_11"
.LASF63:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_12"
.LASF64:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_13"
.LASF65:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_14"
.LASF66:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_15"
.LASF108:
	.string	"spi_flash_write"
.LASF72:
	.string	"ESP_PARTITION_SUBTYPE_DATA_COREDUMP"
.LASF163:
	.string	"memmove"
.LASF17:
	.string	"uint8_t"
.LASF101:
	.string	"spi_flash_guard_get"
.LASF134:
	.string	"read_size"
.LASF169:
	.string	"/home/raphael/rtone/lcd/build/spi_flash"
.LASF49:
	.string	"ESP_PARTITION_SUBTYPE_APP_FACTORY"
.LASF119:
	.string	"write_size"
.LASF51:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_0"
.LASF52:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_1"
.LASF85:
	.string	"esp_partition_t"
.LASF42:
	.string	"start"
.LASF93:
	.string	"is_safe_write_address"
.LASF29:
	.string	"chip_size"
.LASF172:
	.string	"spi_flash_guard_set"
.LASF107:
	.string	"spi_flash_erase_sector"
.LASF95:
	.string	"result"
.LASF131:
	.string	"pad_right_size"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
