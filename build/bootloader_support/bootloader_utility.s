	.file	"bootloader_utility.c"
	.text
.Ltext0:
	.section	.text.index_to_partition,"ax",@progbits
	.align	4
	.type	index_to_partition, @function
index_to_partition:
.LFB23:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/src/bootloader_utility.c"
	.loc 1 162 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 163 0
	bnei	a3, -1, .L2
	.loc 1 164 0
	l32i.n	a3, a2, 8
.LVL1:
	l32i.n	a2, a2, 12
.LVL2:
	s32i.n	a3, sp, 0
	s32i.n	a2, sp, 4
	j	.L3
.LVL3:
.L2:
	.loc 1 167 0
	movi.n	a8, -2
	bne	a3, a8, .L4
	.loc 1 168 0
	l32i.n	a3, a2, 16
.LVL4:
	l32i.n	a2, a2, 20
.LVL5:
	s32i.n	a3, sp, 0
	s32i.n	a2, sp, 4
	j	.L3
.LVL6:
.L4:
	.loc 1 171 0
	movi.n	a8, 0xf
	bltu	a8, a3, .L5
	.loc 1 171 0 is_stmt 0 discriminator 1
	l32i	a8, a2, 152
	bgeu	a3, a8, .L5
	.loc 1 172 0 is_stmt 1
	addi.n	a3, a3, 2
.LVL7:
	addx8	a3, a3, a2
.LVL8:
	l32i.n	a8, a3, 8
	l32i.n	a2, a3, 12
.LVL9:
	s32i.n	a8, sp, 0
	s32i.n	a2, sp, 4
	j	.L3
.LVL10:
.L5:
	.loc 1 176 0
	movi.n	a2, 0
.LVL11:
	s32i.n	a2, sp, 0
	s32i.n	a2, sp, 4
.LVL12:
.L3:
	.loc 1 177 0
	l32i.n	a2, sp, 0
	l32i.n	a3, sp, 4
	retw.n
.LFE23:
	.size	index_to_partition, .-index_to_partition
	.section	.text.try_load_partition,"ax",@progbits
	.align	4
	.type	try_load_partition, @function
try_load_partition:
.LFB26:
	.loc 1 266 0
.LVL13:
	entry	sp, 32
.LCFI1:
	.loc 1 280 0
	movi.n	a2, 0
.LVL14:
	retw.n
.LFE26:
	.size	try_load_partition, .-try_load_partition
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	" is not bootable"
	.align	4
.LC2:
	.string	"boot"
	.align	4
.LC4:
	.string	"\033[0;31mE (%d) %s: Factory app partition%s\033[0m\n"
	.align	4
.LC6:
	.string	"\033[0;31mE (%d) %s: Factory test app partition%s\033[0m\n"
	.align	4
.LC8:
	.string	"\033[0;31mE (%d) %s: OTA app partition slot %d%s\033[0m\n"
	.section	.text.log_invalid_app_partition,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.align	4
	.type	log_invalid_app_partition, @function
log_invalid_app_partition:
.LFB24:
	.loc 1 180 0
.LVL15:
	entry	sp, 48
.LCFI2:
.LVL16:
	.loc 1 182 0
	movi.n	a8, -2
	beq	a2, a8, .L9
	bnei	a2, -1, .L12
	.loc 1 184 0 discriminator 2
	call8	esp_log_timestamp
.LVL17:
	l32r	a11, .LC3
	l32r	a15, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC5
	movi.n	a10, 1
	call8	esp_log_write
.LVL18:
	.loc 1 185 0 discriminator 2
	retw.n
.L9:
	.loc 1 187 0 discriminator 2
	call8	esp_log_timestamp
.LVL19:
	l32r	a11, .LC3
	l32r	a15, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC7
	movi.n	a10, 1
	call8	esp_log_write
.LVL20:
	.loc 1 188 0 discriminator 2
	retw.n
.L12:
	.loc 1 190 0 discriminator 2
	call8	esp_log_timestamp
.LVL21:
	l32r	a11, .LC3
	l32r	a8, .LC1
	s32i.n	a8, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC9
	movi.n	a10, 1
	call8	esp_log_write
.LVL22:
	retw.n
.LFE24:
	.size	log_invalid_app_partition, .-log_invalid_app_partition
	.section	.text.set_cache_and_start_app,"ax",@progbits
	.literal_position
	.literal .LC10, 1072758784
	.literal .LC11, -65536
	.literal .LC12, 65535
	.literal .LC13, 1072693316
	.literal .LC14, 1072693340
	.align	4
	.type	set_cache_and_start_app, @function
set_cache_and_start_app:
.LFB30:
	.loc 1 432 0
.LVL23:
	entry	sp, 48
.LCFI3:
	s32i.n	a7, sp, 0
.LVL24:
.LBB25:
.LBB26:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/cache.h"
	.loc 2 157 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL25:
	.loc 2 158 0
	movi.n	a10, 0
	call8	Cache_Read_Disable_rom
.LVL26:
	.loc 2 159 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL27:
.LBE26:
.LBE25:
.LBB27:
.LBB28:
	.loc 2 141 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL28:
	.loc 2 142 0
	movi.n	a10, 0
	call8	Cache_Flush_rom
.LVL29:
	.loc 2 143 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL30:
.LBE28:
.LBE27:
.LBB29:
	.loc 1 441 0
	movi.n	a7, 0
.LVL31:
	j	.L14
.LVL32:
.L15:
	.loc 1 442 0 discriminator 3
	l32r	a8, .LC10
	addx4	a8, a7, a8
	movi	a9, 0x100
	memw
	s32i.n	a9, a8, 0
	.loc 1 441 0 discriminator 3
	addi.n	a7, a7, 1
.LVL33:
.L14:
	.loc 1 441 0 is_stmt 0 discriminator 1
	movi	a8, 0xff
	bge	a8, a7, .L15
.LBE29:
	.loc 1 445 0 is_stmt 1
	l32r	a8, .LC11
	and	a7, a3, a8
.LVL34:
.LBB30:
.LBB31:
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h"
	.loc 3 128 0
	extui	a3, a3, 0, 16
.LVL35:
	add.n	a3, a4, a3
	l32r	a4, .LC12
.LVL36:
	add.n	a3, a3, a4
	extui	a3, a3, 16, 16
.LBE31:
.LBE30:
	.loc 1 449 0
	and	a2, a2, a8
.LVL37:
.LBB32:
.LBB33:
	.loc 2 75 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL38:
	.loc 2 76 0
	mov.n	a15, a3
	movi.n	a14, 0x40
	mov.n	a13, a2
	mov.n	a12, a7
	movi.n	a11, 0
	mov.n	a10, a11
	call8	cache_flash_mmu_set_rom
.LVL39:
	.loc 2 77 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL40:
.LBE33:
.LBE32:
.LBB34:
.LBB35:
	.loc 2 75 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL41:
	.loc 2 76 0
	mov.n	a15, a3
	movi.n	a14, 0x40
	mov.n	a13, a2
	mov.n	a12, a7
	movi.n	a11, 0
	movi.n	a10, 1
	call8	cache_flash_mmu_set_rom
.LVL42:
	.loc 2 77 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL43:
.LBE35:
.LBE34:
	.loc 1 454 0
	l32r	a3, .LC11
.LVL44:
	and	a2, a6, a3
.LVL45:
.LBB36:
.LBB37:
	.loc 3 128 0
	extui	a3, a6, 0, 16
.LVL46:
	l32i.n	a6, sp, 0
.LVL47:
	add.n	a3, a6, a3
	add.n	a3, a3, a4
	extui	a3, a3, 16, 16
.LBE37:
.LBE36:
	.loc 1 458 0
	l32r	a8, .LC11
.LVL48:
	and	a5, a5, a8
.LVL49:
.LBB38:
.LBB39:
	.loc 2 75 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL50:
	.loc 2 76 0
	mov.n	a15, a3
	movi.n	a14, 0x40
	mov.n	a13, a5
	mov.n	a12, a2
	movi.n	a11, 0
	mov.n	a10, a11
	call8	cache_flash_mmu_set_rom
.LVL51:
	.loc 2 77 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL52:
.LBE39:
.LBE38:
.LBB40:
.LBB41:
	.loc 2 75 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL53:
	.loc 2 76 0
	mov.n	a15, a3
	movi.n	a14, 0x40
	mov.n	a13, a5
	mov.n	a12, a2
	movi.n	a11, 0
	movi.n	a10, 1
	call8	cache_flash_mmu_set_rom
.LVL54:
	.loc 2 77 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL55:
.LBE41:
.LBE40:
.LBB42:
.LBB43:
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 4 79 0
	l32r	a3, .LC13
.LVL56:
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL57:
.LBE43:
.LBE42:
	.loc 1 463 0
	movi.n	a2, -0x1a
.LVL58:
	and	a10, a10, a2
	memw
	s32i.n	a10, a3, 0
.LVL59:
.LBB44:
.LBB45:
	.loc 4 79 0
	l32r	a3, .LC14
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL60:
.LBE45:
.LBE44:
	.loc 1 468 0
	and	a10, a10, a2
	memw
	s32i.n	a10, a3, 0
.LVL61:
.LBB46:
.LBB47:
	.loc 2 173 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL62:
	.loc 2 174 0
	movi.n	a10, 0
	call8	Cache_Read_Enable_rom
.LVL63:
	.loc 2 175 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL64:
.LBE47:
.LBE46:
	.loc 1 483 0
	l32i.n	a2, sp, 48
	callx8	a2
.LVL65:
.LFE30:
	.size	set_cache_and_start_app, .-set_cache_and_start_app
	.section	.rodata.str1.4
	.align	4
.LC17:
	.string	"DROM"
	.align	4
.LC20:
	.string	"\033[0;31mE (%d) %s: Image contains multiple %s segments. Only the last one will be mapped.\033[0m\n"
	.align	4
.LC24:
	.string	"IROM"
	.section	.text.unpack_load_app,"ax",@progbits
	.literal_position
	.literal .LC15, -1061158912
	.literal .LC16, 4194303
	.literal .LC18, .LC17
	.literal .LC19, .LC2
	.literal .LC21, .LC20
	.literal .LC22, -1074593792
	.literal .LC23, 3342335
	.literal .LC25, .LC24
	.align	4
	.type	unpack_load_app, @function
unpack_load_app:
.LFB29:
	.loc 1 381 0
.LVL66:
	entry	sp, 64
.LCFI4:
.LVL67:
.LBB48:
	.loc 1 390 0
	movi.n	a3, 0
.LBE48:
	.loc 1 387 0
	mov.n	a7, a3
	.loc 1 386 0
	mov.n	a6, a3
	.loc 1 385 0
	mov.n	a5, a3
	.loc 1 384 0
	s32i.n	a3, sp, 20
	.loc 1 383 0
	s32i.n	a3, sp, 16
	.loc 1 382 0
	mov.n	a4, a3
.LBB50:
	.loc 1 390 0
	j	.L17
.LVL68:
.L22:
.LBB49:
	.loc 1 392 0
	addi.n	a8, a3, 2
	addx8	a8, a8, a2
	l32i.n	a9, a8, 12
	l32r	a8, .LC15
	add.n	a8, a9, a8
	l32r	a9, .LC16
	bltu	a9, a8, .L18
	.loc 1 393 0
	beqz.n	a4, .L19
	.loc 1 394 0 discriminator 2
	call8	esp_log_timestamp
.LVL69:
	l32r	a11, .LC19
	l32r	a15, .LC18
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC21
	movi.n	a10, 1
	call8	esp_log_write
.LVL70:
.L19:
	.loc 1 398 0
	addi	a4, a3, 36
.LVL71:
	addx4	a4, a4, a2
	l32i.n	a4, a4, 12
.LVL72:
	.loc 1 399 0
	addi.n	a8, a3, 2
	addx8	a8, a8, a2
	l32i.n	a9, a8, 12
	s32i.n	a9, sp, 16
.LVL73:
	.loc 1 400 0
	l32i.n	a8, a8, 16
	s32i.n	a8, sp, 20
.LVL74:
.L18:
	.loc 1 402 0
	addi.n	a8, a3, 2
	addx8	a8, a8, a2
	l32i.n	a9, a8, 12
	l32r	a8, .LC22
	add.n	a8, a9, a8
	l32r	a9, .LC23
	bltu	a9, a8, .L20
	.loc 1 403 0
	beqz.n	a5, .L21
	.loc 1 404 0 discriminator 2
	call8	esp_log_timestamp
.LVL75:
	l32r	a11, .LC19
	l32r	a15, .LC25
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC21
	movi.n	a10, 1
	call8	esp_log_write
.LVL76:
.L21:
	.loc 1 408 0
	addi	a5, a3, 36
.LVL77:
	addx4	a5, a5, a2
	l32i.n	a5, a5, 12
.LVL78:
	.loc 1 409 0
	addi.n	a7, a3, 2
.LVL79:
	addx8	a7, a7, a2
	l32i.n	a6, a7, 12
.LVL80:
	.loc 1 410 0
	l32i.n	a7, a7, 16
.LVL81:
.L20:
.LBE49:
	.loc 1 390 0 discriminator 2
	addi.n	a3, a3, 1
.LVL82:
.L17:
	.loc 1 390 0 is_stmt 0 discriminator 1
	l8ui	a8, a2, 5
	blt	a3, a8, .L22
.LBE50:
	.loc 1 415 0 is_stmt 1
	l32i.n	a2, a2, 8
.LVL83:
	s32i.n	a2, sp, 0
	mov.n	a15, a7
	mov.n	a14, a6
	mov.n	a13, a5
	l32i.n	a12, sp, 20
	l32i.n	a11, sp, 16
	mov.n	a10, a4
	call8	set_cache_and_start_app
.LVL84:
.LFE29:
	.size	unpack_load_app, .-unpack_load_app
	.section	.rodata.str1.4
	.align	4
.LC27:
	.string	"\033[0;32mI (%d) %s: Disabling RNG early entropy source...\033[0m\n"
	.section	.text.load_image,"ax",@progbits
	.literal_position
	.literal .LC26, .LC2
	.literal .LC28, .LC27
	.align	4
	.type	load_image, @function
load_image:
.LFB28:
	.loc 1 337 0
.LVL85:
	entry	sp, 32
.LCFI5:
	.loc 1 373 0
	call8	esp_log_timestamp
.LVL86:
	l32r	a11, .LC26
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC28
	movi.n	a10, 3
	call8	esp_log_write
.LVL87:
	.loc 1 374 0
	call8	bootloader_random_disable
.LVL88:
	.loc 1 377 0
	mov.n	a10, a2
	call8	unpack_load_app
.LVL89:
.LFE28:
	.size	load_image, .-load_image
	.section	.rodata.str1.4
	.align	4
.LC29:
	.string	"RF data"
	.align	4
.LC31:
	.string	"test app"
	.align	4
.LC33:
	.string	"WiFi data"
	.align	4
.LC35:
	.string	"NVS keys"
	.align	4
.LC37:
	.string	"Unknown data"
	.align	4
.LC39:
	.string	"OTA data"
	.align	4
.LC41:
	.string	"Unknown app"
	.align	4
.LC43:
	.string	"OTA app"
	.align	4
.LC45:
	.string	"factory app"
	.align	4
.LC47:
	.string	"unknown"
	.align	4
.LC52:
	.string	"\033[0;31mE (%d) %s: bootloader_mmap(0x%x, 0x%x) failed\033[0m\n"
	.align	4
.LC54:
	.string	"\033[0;31mE (%d) %s: Failed to verify partition table\033[0m\n"
	.align	4
.LC56:
	.string	"\033[0;32mI (%d) %s: Partition Table:\033[0m\n"
	.align	4
.LC58:
	.string	"\033[0;32mI (%d) %s: ## Label            Usage          Type ST Offset   Length\033[0m\n"
	.align	4
.LC60:
	.string	"\033[0;32mI (%d) %s: %2d %-16s %-16s %02x %02x %08x %08x\033[0m\n"
	.align	4
.LC62:
	.string	"\033[0;32mI (%d) %s: End of partition table\033[0m\n"
	.section	.text.bootloader_utility_load_partition_table,"ax",@progbits
	.literal_position
	.literal .LC30, .LC29
	.literal .LC32, .LC31
	.literal .LC34, .LC33
	.literal .LC36, .LC35
	.literal .LC38, .LC37
	.literal .LC40, .LC39
	.literal .LC42, .LC41
	.literal .LC44, .LC43
	.literal .LC46, .LC45
	.literal .LC48, .LC47
	.literal .LC49, 3072
	.literal .LC50, 32768
	.literal .LC51, .LC2
	.literal .LC53, .LC52
	.literal .LC55, .LC54
	.literal .LC57, .LC56
	.literal .LC59, .LC58
	.literal .LC61, .LC60
	.literal .LC63, .LC62
	.align	4
	.global	bootloader_utility_load_partition_table
	.type	bootloader_utility_load_partition_table, @function
bootloader_utility_load_partition_table:
.LFB22:
	.loc 1 71 0
.LVL90:
	entry	sp, 80
.LCFI6:
	.loc 1 77 0
	l32r	a11, .LC49
	l32r	a10, .LC50
	call8	bootloader_mmap
.LVL91:
	mov.n	a5, a10
.LVL92:
	.loc 1 78 0
	bnez.n	a10, .L25
	.loc 1 79 0 discriminator 2
	call8	esp_log_timestamp
.LVL93:
	l32r	a11, .LC51
	l32r	a2, .LC49
.LVL94:
	s32i.n	a2, sp, 0
	l32r	a15, .LC50
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC53
	movi.n	a10, 1
	call8	esp_log_write
.LVL95:
	.loc 1 80 0 discriminator 2
	movi.n	a2, 0
	retw.n
.LVL96:
.L25:
	.loc 1 84 0
	addi	a12, sp, 32
	movi.n	a11, 1
	call8	esp_partition_table_verify
.LVL97:
	.loc 1 85 0
	beqz.n	a10, .L27
	.loc 1 86 0 discriminator 2
	call8	esp_log_timestamp
.LVL98:
	l32r	a11, .LC51
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC55
	movi.n	a10, 1
	call8	esp_log_write
.LVL99:
	.loc 1 87 0 discriminator 2
	movi.n	a2, 0
.LVL100:
	retw.n
.LVL101:
.L27:
	.loc 1 90 0 discriminator 9
	call8	esp_log_timestamp
.LVL102:
	l32r	a3, .LC51
	mov.n	a14, a3
	mov.n	a13, a10
	l32r	a12, .LC57
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL103:
	.loc 1 91 0 discriminator 9
	call8	esp_log_timestamp
.LVL104:
	mov.n	a14, a3
	mov.n	a13, a10
	l32r	a12, .LC59
	mov.n	a11, a3
	movi.n	a10, 3
	call8	esp_log_write
.LVL105:
.LBB51:
	.loc 1 93 0 discriminator 9
	movi.n	a4, 0
	j	.L28
.LVL106:
.L39:
.LBB52:
	.loc 1 94 0
	slli	a3, a4, 5
	add.n	a3, a5, a3
.LVL107:
	.loc 1 100 0
	l8ui	a8, a3, 2
	beqz.n	a8, .L30
	beqi	a8, 1, .L31
	j	.L43
.L30:
	.loc 1 102 0
	l8ui	a6, a3, 3
	beqz.n	a6, .L33
	beqi	a6, 32, .L34
	j	.L44
.L33:
	.loc 1 104 0
	l32i.n	a8, a3, 4
	l32i.n	a6, a3, 8
	s32i.n	a8, a2, 8
	s32i.n	a6, a2, 12
.LVL108:
	.loc 1 105 0
	l32r	a6, .LC46
	.loc 1 106 0
	j	.L29
.LVL109:
.L34:
	.loc 1 108 0
	l32i.n	a8, a3, 4
	l32i.n	a6, a3, 8
	s32i.n	a8, a2, 16
	s32i.n	a6, a2, 20
.LVL110:
	.loc 1 109 0
	l32r	a6, .LC32
	.loc 1 110 0
	j	.L29
.LVL111:
.L44:
	.loc 1 113 0
	movi.n	a8, -0x10
	and	a8, a6, a8
	bnei	a8, 16, .L41
	.loc 1 114 0
	extui	a6, a6, 0, 4
	addi.n	a6, a6, 2
	addx8	a6, a6, a2
	l32i.n	a9, a3, 4
	l32i.n	a8, a3, 8
	s32i.n	a9, a6, 8
	s32i.n	a8, a6, 12
	.loc 1 115 0
	l32i	a6, a2, 152
	addi.n	a6, a6, 1
	s32i	a6, a2, 152
.LVL112:
	.loc 1 116 0
	l32r	a6, .LC44
	j	.L29
.LVL113:
.L31:
	.loc 1 125 0
	l8ui	a6, a3, 3
	beqi	a6, 1, .L36
	beqz.n	a6, .L37
	beqi	a6, 2, .L42
	beqi	a6, 4, .L38
	j	.L45
.L36:
	.loc 1 131 0
	l32r	a6, .LC30
	j	.L29
.L37:
	.loc 1 127 0
	l32i.n	a8, a3, 4
	l32i.n	a6, a3, 8
	s32i.n	a8, a2, 0
	s32i.n	a6, a2, 4
.LVL114:
	.loc 1 128 0
	l32r	a6, .LC40
	.loc 1 129 0
	j	.L29
.LVL115:
.L38:
	.loc 1 137 0
	l32r	a6, .LC36
	.loc 1 138 0
	j	.L29
.LVL116:
.L45:
	.loc 1 140 0
	l32r	a6, .LC38
	.loc 1 141 0
	j	.L29
.LVL117:
.L43:
	.loc 1 97 0
	l32r	a6, .LC48
	j	.L29
.L41:
	.loc 1 119 0
	l32r	a6, .LC42
	j	.L29
.L42:
	.loc 1 134 0
	l32r	a6, .LC34
.LVL118:
.L29:
	.loc 1 149 0 discriminator 9
	call8	esp_log_timestamp
.LVL119:
	addi.n	a8, a3, 12
	l8ui	a9, a3, 2
	l8ui	a12, a3, 3
	l32r	a11, .LC51
	l32i.n	a13, a3, 8
	s32i.n	a13, sp, 20
	l32i.n	a3, a3, 4
.LVL120:
	s32i.n	a3, sp, 16
	s32i.n	a12, sp, 12
	s32i.n	a9, sp, 8
	s32i.n	a6, sp, 4
	s32i.n	a8, sp, 0
	mov.n	a15, a4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC61
	movi.n	a10, 3
	call8	esp_log_write
.LVL121:
.LBE52:
	.loc 1 93 0 discriminator 9
	addi.n	a4, a4, 1
.LVL122:
.L28:
	.loc 1 93 0 is_stmt 0 discriminator 1
	l32i.n	a3, sp, 32
	blt	a4, a3, .L39
.LBE51:
	.loc 1 154 0 is_stmt 1
	mov.n	a10, a5
	call8	bootloader_munmap
.LVL123:
	.loc 1 156 0
	call8	esp_log_timestamp
.LVL124:
	l32r	a11, .LC51
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC63
	movi.n	a10, 3
	call8	esp_log_write
.LVL125:
	.loc 1 157 0
	movi.n	a2, 1
.LVL126:
	.loc 1 158 0
	retw.n
.LFE22:
	.size	bootloader_utility_load_partition_table, .-bootloader_utility_load_partition_table
	.section	.rodata.str1.4
	.align	4
.LC66:
	.string	"\033[0;31mE (%d) %s: ota_info partition size %d is too small (minimum %d bytes)\033[0m\n"
	.align	4
.LC69:
	.string	"\033[0;32mI (%d) %s: Defaulting to factory image\033[0m\n"
	.align	4
.LC71:
	.string	"\033[0;32mI (%d) %s: No factory image, trying OTA 0\033[0m\n"
	.align	4
.LC73:
	.string	"\033[0;31mE (%d) %s: ota data partition invalid, falling back to factory\033[0m\n"
	.align	4
.LC75:
	.string	"\033[0;31mE (%d) %s: ota data partition invalid and no factory, will try all partitions\033[0m\n"
	.section	.text.bootloader_utility_get_selected_boot_partition,"ax",@progbits
	.literal_position
	.literal .LC64, 8191
	.literal .LC65, .LC2
	.literal .LC67, .LC66
	.literal .LC68, .LC52
	.literal .LC70, .LC69
	.literal .LC72, .LC71
	.literal .LC74, .LC73
	.literal .LC76, .LC75
	.align	4
	.global	bootloader_utility_get_selected_boot_partition
	.type	bootloader_utility_get_selected_boot_partition, @function
bootloader_utility_get_selected_boot_partition:
.LFB25:
	.loc 1 196 0
.LVL127:
	entry	sp, 112
.LCFI7:
	.loc 1 200 0
	l32i.n	a10, a2, 0
	beqz.n	a10, .L59
	.loc 1 202 0
	l32i.n	a11, a2, 4
	l32r	a3, .LC64
	bltu	a3, a11, .L48
	.loc 1 203 0 discriminator 2
	call8	esp_log_timestamp
.LVL128:
	l32r	a11, .LC65
	movi.n	a3, 0x20
	s32i.n	a3, sp, 0
	l32i.n	a15, a2, 4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC67
	movi.n	a10, 1
	call8	esp_log_write
.LVL129:
	.loc 1 204 0 discriminator 2
	movi	a2, -0x63
.LVL130:
	retw.n
.LVL131:
.L48:
	.loc 1 208 0
	call8	bootloader_mmap
.LVL132:
	mov.n	a3, a10
.LVL133:
	.loc 1 209 0
	bnez.n	a10, .L49
	.loc 1 210 0 discriminator 2
	call8	esp_log_timestamp
.LVL134:
	l32r	a11, .LC65
	l32i.n	a3, a2, 4
.LVL135:
	s32i.n	a3, sp, 0
	l32i.n	a15, a2, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC68
	movi.n	a10, 1
	call8	esp_log_write
.LVL136:
	.loc 1 211 0 discriminator 2
	movi	a2, -0x63
.LVL137:
	retw.n
.LVL138:
.L49:
	.loc 1 213 0
	movi.n	a5, 0x20
	mov.n	a12, a5
	mov.n	a11, a10
	addi	a10, sp, 16
	call8	memcpy
.LVL139:
	.loc 1 214 0
	mov.n	a12, a5
	addmi	a11, a3, 0x1000
	addi	a10, sp, 48
	call8	memcpy
.LVL140:
	.loc 1 215 0
	mov.n	a10, a3
	call8	bootloader_munmap
.LVL141:
	.loc 1 218 0
	l32i.n	a3, sp, 16
.LVL142:
	bnei	a3, -1, .L50
	.loc 1 218 0 is_stmt 0 discriminator 1
	l32i.n	a3, sp, 48
	beqi	a3, -1, .L51
.L50:
	.loc 1 218 0 discriminator 3
	l32i	a3, a2, 152
	bnez.n	a3, .L52
.L51:
	.loc 1 220 0 is_stmt 1
	l32i.n	a2, a2, 8
.LVL143:
	beqz.n	a2, .L53
	.loc 1 221 0 discriminator 9
	call8	esp_log_timestamp
.LVL144:
	l32r	a11, .LC65
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC70
	movi.n	a10, 3
	call8	esp_log_write
.LVL145:
	.loc 1 222 0 discriminator 9
	movi.n	a2, -1
	retw.n
.L53:
	.loc 1 224 0 discriminator 9
	call8	esp_log_timestamp
.LVL146:
	l32r	a11, .LC65
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC72
	movi.n	a10, 3
	call8	esp_log_write
.LVL147:
	.loc 1 225 0 discriminator 9
	movi.n	a2, 0
	retw.n
.LVL148:
.L52:
.LBB53:
	.loc 1 231 0
	addi	a10, sp, 16
	call8	bootloader_common_ota_select_valid
.LVL149:
	beqz.n	a10, .L54
	.loc 1 231 0 is_stmt 0 discriminator 1
	addi	a10, sp, 48
	call8	bootloader_common_ota_select_valid
.LVL150:
	beqz.n	a10, .L54
.LVL151:
	.loc 1 234 0 is_stmt 1
	l32i.n	a3, sp, 16
	l32i.n	a4, sp, 48
	maxu	a4, a4, a3
	addi.n	a4, a4, -1
.LVL152:
	.loc 1 232 0
	movi.n	a3, 1
	.loc 1 234 0
	j	.L55
.LVL153:
.L54:
	.loc 1 235 0
	addi	a10, sp, 16
	call8	bootloader_common_ota_select_valid
.LVL154:
	beqz.n	a10, .L56
.LVL155:
	.loc 1 238 0
	l32i.n	a4, sp, 16
	addi.n	a4, a4, -1
.LVL156:
	.loc 1 236 0
	movi.n	a3, 1
	j	.L55
.LVL157:
.L56:
	.loc 1 239 0
	addi	a10, sp, 48
	call8	bootloader_common_ota_select_valid
.LVL158:
	beqz.n	a10, .L60
.LVL159:
	.loc 1 242 0
	l32i.n	a4, sp, 48
	addi.n	a4, a4, -1
.LVL160:
	.loc 1 240 0
	movi.n	a3, 1
	j	.L55
.LVL161:
.L60:
	.loc 1 228 0
	movi.n	a3, 0
.LVL162:
.L55:
	.loc 1 245 0
	beqz.n	a3, .L57
.LBB54:
	.loc 1 246 0
	l32i	a2, a2, 152
.LVL163:
	.loc 1 248 0
	remu	a2, a4, a2
.LVL164:
	retw.n
.LVL165:
.L57:
.LBE54:
	.loc 1 249 0
	l32i.n	a2, a2, 8
.LVL166:
	beqz.n	a2, .L58
	.loc 1 250 0 discriminator 2
	call8	esp_log_timestamp
.LVL167:
	l32r	a11, .LC65
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC74
	movi.n	a10, 1
	call8	esp_log_write
.LVL168:
	.loc 1 251 0 discriminator 2
	movi.n	a2, -1
	retw.n
.L58:
	.loc 1 253 0 discriminator 2
	call8	esp_log_timestamp
.LVL169:
	l32r	a11, .LC65
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC76
	movi.n	a10, 1
	call8	esp_log_write
.LVL170:
	.loc 1 254 0 discriminator 2
	movi.n	a2, -1
	retw.n
.LVL171:
.L59:
.LBE53:
	.loc 1 261 0
	movi.n	a2, -1
.LVL172:
	.loc 1 262 0
	retw.n
.LFE25:
	.size	bootloader_utility_get_selected_boot_partition, .-bootloader_utility_get_selected_boot_partition
	.section	.text.bootloader_reset,"ax",@progbits
	.align	4
	.global	bootloader_reset
	.type	bootloader_reset, @function
bootloader_reset:
.LFB31:
	.loc 1 488 0
	entry	sp, 32
.LCFI8:
	.loc 1 496 0
	call8	abort
.LVL173:
.LFE31:
	.size	bootloader_reset, .-bootloader_reset
	.section	.rodata.str1.4
	.align	4
.LC78:
	.string	"\033[0;31mE (%d) %s: No bootable test partition in the partition table\033[0m\n"
	.align	4
.LC80:
	.string	"\033[0;33mW (%d) %s: Falling back to test app as only bootable partition\033[0m\n"
	.align	4
.LC82:
	.string	"\033[0;31mE (%d) %s: No bootable app partitions in the partition table\033[0m\n"
	.section	.text.bootloader_utility_load_boot_image,"ax",@progbits
	.literal_position
	.literal .LC77, .LC2
	.literal .LC79, .LC78
	.literal .LC81, .LC80
	.literal .LC83, .LC82
	.align	4
	.global	bootloader_utility_load_boot_image
	.type	bootloader_utility_load_boot_image, @function
bootloader_utility_load_boot_image:
.LFB27:
	.loc 1 285 0
.LVL174:
	entry	sp, 304
.LCFI9:
.LVL175:
	.loc 1 290 0
	movi.n	a4, -2
	bne	a3, a4, .L73
	.loc 1 291 0
	addi.n	a11, sp, 8
	addi	a10, a2, 16
	call8	try_load_partition
.LVL176:
	beqz.n	a10, .L64
	.loc 1 292 0
	addi.n	a10, sp, 8
	call8	load_image
.LVL177:
.L64:
	.loc 1 294 0 discriminator 2
	call8	esp_log_timestamp
.LVL178:
	l32r	a11, .LC77
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC79
	movi.n	a10, 1
	call8	esp_log_write
.LVL179:
	.loc 1 295 0 discriminator 2
	call8	bootloader_reset
.LVL180:
.L67:
	.loc 1 301 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	index_to_partition
.LVL181:
	s32i.n	a10, sp, 0
	s32i.n	a11, sp, 4
	.loc 1 302 0
	l32i.n	a8, sp, 4
	beqz.n	a8, .L65
	.loc 1 306 0
	addi.n	a11, sp, 8
	mov.n	a10, sp
	call8	try_load_partition
.LVL182:
	beqz.n	a10, .L66
	.loc 1 307 0
	addi.n	a10, sp, 8
	call8	load_image
.LVL183:
.L66:
	.loc 1 309 0
	mov.n	a10, a4
	call8	log_invalid_app_partition
.LVL184:
.L65:
	.loc 1 300 0 discriminator 2
	addi.n	a4, a4, -1
.LVL185:
	j	.L63
.LVL186:
.L73:
	mov.n	a4, a3
.LVL187:
.L63:
	.loc 1 300 0 is_stmt 0 discriminator 1
	bgei	a4, -1, .L67
	.loc 1 313 0 is_stmt 1
	addi.n	a4, a3, 1
.LVL188:
	j	.L68
.LVL189:
.L71:
	.loc 1 314 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	index_to_partition
.LVL190:
	s32i.n	a10, sp, 0
	s32i.n	a11, sp, 4
	.loc 1 315 0
	l32i.n	a3, sp, 4
	beqz.n	a3, .L69
	.loc 1 319 0
	addi.n	a11, sp, 8
	mov.n	a10, sp
	call8	try_load_partition
.LVL191:
	beqz.n	a10, .L70
	.loc 1 320 0
	addi.n	a10, sp, 8
	call8	load_image
.LVL192:
.L70:
	.loc 1 322 0
	mov.n	a10, a4
	call8	log_invalid_app_partition
.LVL193:
.L69:
	.loc 1 313 0 discriminator 2
	addi.n	a4, a4, 1
.LVL194:
.L68:
	.loc 1 313 0 is_stmt 0 discriminator 1
	l32i	a3, a2, 152
	bltu	a4, a3, .L71
	.loc 1 325 0 is_stmt 1
	addi.n	a11, sp, 8
	addi	a10, a2, 16
	call8	try_load_partition
.LVL195:
	beqz.n	a10, .L72
	.loc 1 326 0 discriminator 4
	call8	esp_log_timestamp
.LVL196:
	l32r	a11, .LC77
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC81
	movi.n	a10, 2
	call8	esp_log_write
.LVL197:
	.loc 1 327 0 discriminator 4
	addi.n	a10, sp, 8
	call8	load_image
.LVL198:
.L72:
	.loc 1 330 0 discriminator 2
	call8	esp_log_timestamp
.LVL199:
	l32r	a11, .LC77
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC83
	movi.n	a10, 1
	call8	esp_log_write
.LVL200:
	.loc 1 331 0 discriminator 2
	movi	a12, 0x100
	movi.n	a11, 0
	addi.n	a10, sp, 8
	call8	memset
.LVL201:
	.loc 1 332 0 discriminator 2
	call8	bootloader_reset
.LVL202:
.LFE27:
	.size	bootloader_utility_load_boot_image, .-bootloader_utility_load_boot_image
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI0-.LFB23
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI1-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI2-.LFB24
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI4-.LFB29
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI5-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI6-.LFB22
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI7-.LFB25
	.byte	0xe
	.uleb128 0x70
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI9-.LFB27
	.byte	0xe
	.uleb128 0x130
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_flash_data_types.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include/esp_image_format.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include_bootloader/bootloader_config.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_dport_access.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include/bootloader_random.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include/esp_flash_partitions.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include/bootloader_common.h"
	.file 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x15fb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0xc
	.4byte	.LASF132
	.4byte	.LASF133
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x5
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x5
	.byte	0x16
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x5
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x5
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x5
	.byte	0x31
	.4byte	0x25
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb7
	.uleb128 0x7
	.4byte	0xaa
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x6
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x6
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x6
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x6
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x6
	.byte	0xa9
	.4byte	0x89
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x1f
	.4byte	0x124
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF27
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x7
	.byte	0x18
	.4byte	0xd2
	.uleb128 0xa
	.byte	0x20
	.byte	0x8
	.byte	0x1d
	.4byte	0x163
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x8
	.byte	0x1e
	.4byte	0xdd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x8
	.byte	0x1f
	.4byte	0x163
	.byte	0x4
	.uleb128 0xc
	.string	"crc"
	.byte	0x8
	.byte	0x20
	.4byte	0xdd
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.4byte	0xbc
	.4byte	0x173
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x17
	.byte	0
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x8
	.byte	0x21
	.4byte	0x136
	.uleb128 0xa
	.byte	0x8
	.byte	0x8
	.byte	0x24
	.4byte	0x19f
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x8
	.byte	0x25
	.4byte	0xdd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x8
	.byte	0x26
	.4byte	0xdd
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x8
	.byte	0x27
	.4byte	0x17e
	.uleb128 0xa
	.byte	0x20
	.byte	0x8
	.byte	0x2c
	.4byte	0x1fb
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x8
	.byte	0x2d
	.4byte	0xc7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x8
	.byte	0x2e
	.4byte	0xbc
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x8
	.byte	0x2f
	.4byte	0xbc
	.byte	0x3
	.uleb128 0xc
	.string	"pos"
	.byte	0x8
	.byte	0x30
	.4byte	0x19f
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x8
	.byte	0x31
	.4byte	0x1fb
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x8
	.byte	0x32
	.4byte	0xdd
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.4byte	0xbc
	.4byte	0x20b
	.uleb128 0xe
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x8
	.byte	0x33
	.4byte	0x1aa
	.uleb128 0xa
	.byte	0x18
	.byte	0x9
	.byte	0x3b
	.4byte	0x29d
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x9
	.byte	0x3c
	.4byte	0xbc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x9
	.byte	0x3d
	.4byte	0xbc
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x9
	.byte	0x3f
	.4byte	0xbc
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x9
	.byte	0x41
	.4byte	0xbc
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x9
	.byte	0x43
	.4byte	0xbc
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x9
	.byte	0x44
	.4byte	0xdd
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x9
	.byte	0x47
	.4byte	0xbc
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x9
	.byte	0x49
	.4byte	0x29d
	.byte	0x9
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x9
	.byte	0x4b
	.4byte	0x2ad
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x9
	.byte	0x4f
	.4byte	0xbc
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.4byte	0xbc
	.4byte	0x2ad
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	0xbc
	.4byte	0x2bd
	.uleb128 0xe
	.4byte	0x9b
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x9
	.byte	0x50
	.4byte	0x216
	.uleb128 0xa
	.byte	0x8
	.byte	0x9
	.byte	0x57
	.4byte	0x2e9
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x9
	.byte	0x58
	.4byte	0xdd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x9
	.byte	0x59
	.4byte	0xdd
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0x9
	.byte	0x5a
	.4byte	0x2c8
	.uleb128 0x10
	.2byte	0x100
	.byte	0x9
	.byte	0x5f
	.4byte	0x346
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x9
	.byte	0x60
	.4byte	0xdd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x9
	.byte	0x61
	.4byte	0x2bd
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x9
	.byte	0x62
	.4byte	0x346
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x9
	.byte	0x63
	.4byte	0x356
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x9
	.byte	0x64
	.4byte	0xdd
	.byte	0xdc
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x9
	.byte	0x65
	.4byte	0x366
	.byte	0xe0
	.byte	0
	.uleb128 0xd
	.4byte	0x2e9
	.4byte	0x356
	.uleb128 0xe
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.4byte	0xdd
	.4byte	0x366
	.uleb128 0xe
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.4byte	0xbc
	.4byte	0x376
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x9
	.byte	0x66
	.4byte	0x2f4
	.uleb128 0xa
	.byte	0xa0
	.byte	0xa
	.byte	0x21
	.4byte	0x3d2
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0xa
	.byte	0x22
	.4byte	0x19f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0xa
	.byte	0x23
	.4byte	0x19f
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0xa
	.byte	0x24
	.4byte	0x19f
	.byte	0x10
	.uleb128 0xc
	.string	"ota"
	.byte	0xa
	.byte	0x25
	.4byte	0x3d2
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0xa
	.byte	0x26
	.4byte	0xdd
	.byte	0x98
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0xa
	.byte	0x27
	.4byte	0xdd
	.byte	0x9c
	.byte	0
	.uleb128 0xd
	.4byte	0x19f
	.4byte	0x3e2
	.uleb128 0xe
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0xa
	.byte	0x28
	.4byte	0x381
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x2
	.byte	0x8a
	.byte	0x3
	.4byte	0x40d
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x2
	.byte	0x8a
	.4byte	0x25
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0x2
	.byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x2
	.byte	0x9a
	.byte	0x3
	.4byte	0x42d
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x2
	.byte	0x9a
	.4byte	0x25
	.uleb128 0x13
	.4byte	.LASF71
	.byte	0x2
	.byte	0x9c
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0x2
	.byte	0xaa
	.byte	0x3
	.4byte	0x44d
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x2
	.byte	0xaa
	.4byte	0x25
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0x2
	.byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x4
	.byte	0x4a
	.4byte	0xdd
	.byte	0x3
	.4byte	0x469
	.uleb128 0x15
	.string	"reg"
	.byte	0x4
	.byte	0x4a
	.4byte	0xdd
	.byte	0
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0x2
	.byte	0x45
	.4byte	0x2c
	.byte	0x3
	.4byte	0x4d3
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x2
	.byte	0x45
	.4byte	0x25
	.uleb128 0x15
	.string	"pid"
	.byte	0x2
	.byte	0x45
	.4byte	0x25
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x2
	.byte	0x45
	.4byte	0x2c
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x2
	.byte	0x45
	.4byte	0x2c
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x2
	.byte	0x45
	.4byte	0x25
	.uleb128 0x15
	.string	"num"
	.byte	0x2
	.byte	0x45
	.4byte	0x25
	.uleb128 0x16
	.4byte	.LASF121
	.byte	0x2
	.byte	0x47
	.4byte	0x2c
	.byte	0
	.uleb128 0x17
	.string	"ret"
	.byte	0x2
	.byte	0x49
	.4byte	0x2c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x3
	.byte	0x7e
	.4byte	0xdd
	.byte	0x3
	.4byte	0x4fa
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x3
	.byte	0x7e
	.4byte	0xdd
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x3
	.byte	0x7e
	.4byte	0xdd
	.byte	0
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0x1
	.byte	0xa1
	.4byte	0x19f
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53f
	.uleb128 0x19
	.string	"bs"
	.byte	0x1
	.byte	0xa1
	.4byte	0x53f
	.4byte	.LLST0
	.uleb128 0x1a
	.4byte	.LASF80
	.byte	0x1
	.byte	0xa1
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x1b
	.4byte	.LASF85
	.byte	0x1
	.byte	0xaf
	.4byte	0x19f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x545
	.uleb128 0x7
	.4byte	0x3e2
	.uleb128 0x1c
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x109
	.4byte	0x124
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x583
	.uleb128 0x1d
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x109
	.4byte	0x583
	.4byte	.LLST2
	.uleb128 0x1e
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x109
	.4byte	0x58e
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x589
	.uleb128 0x7
	.4byte	0x19f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x376
	.uleb128 0x1f
	.4byte	.LASF134
	.byte	0x1
	.byte	0xb3
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x68c
	.uleb128 0x20
	.4byte	.LASF80
	.byte	0x1
	.byte	0xb3
	.4byte	0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LASF86
	.byte	0x1
	.byte	0xb5
	.4byte	0xb1
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x21
	.4byte	.LVL17
	.4byte	0x14fd
	.uleb128 0x22
	.4byte	.LVL18
	.4byte	0x1508
	.4byte	0x608
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL19
	.4byte	0x14fd
	.uleb128 0x22
	.4byte	.LVL20
	.4byte	0x1508
	.4byte	0x648
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL21
	.4byte	0x14fd
	.uleb128 0x24
	.4byte	.LVL22
	.4byte	0x1508
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x1a8
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5f
	.uleb128 0x1d
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x1a9
	.4byte	0xdd
	.4byte	.LLST3
	.uleb128 0x1d
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1aa
	.4byte	0xdd
	.4byte	.LLST4
	.uleb128 0x1d
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x1ab
	.4byte	0xdd
	.4byte	.LLST5
	.uleb128 0x1d
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x1ac
	.4byte	0xdd
	.4byte	.LLST6
	.uleb128 0x1d
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x1ad
	.4byte	0xdd
	.4byte	.LLST7
	.uleb128 0x1d
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x1ae
	.4byte	0xdd
	.4byte	.LLST8
	.uleb128 0x1e
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x1af
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"rc"
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x25
	.uleb128 0x27
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x1bd
	.4byte	0xdd
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x28
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x1be
	.4byte	0xdd
	.uleb128 0x29
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x1c6
	.4byte	0xdd
	.4byte	.LLST9
	.uleb128 0x28
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x1c7
	.4byte	0xdd
	.uleb128 0x2a
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x1de
	.4byte	0xb5f
	.uleb128 0x27
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x1df
	.4byte	0x752
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.4byte	0x40d
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.byte	0x1
	.2byte	0x1b3
	.4byte	0x7b7
	.uleb128 0x2c
	.4byte	0x419
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.uleb128 0x21
	.4byte	.LVL25
	.4byte	0x1513
	.uleb128 0x22
	.4byte	.LVL26
	.4byte	0x151e
	.4byte	0x7ac
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL27
	.4byte	0x1529
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0x3ed
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x801
	.uleb128 0x2c
	.4byte	0x3f9
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x21
	.4byte	.LVL28
	.4byte	0x1513
	.uleb128 0x22
	.4byte	.LVL29
	.4byte	0x1534
	.4byte	0x7f6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL30
	.4byte	0x1529
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.4byte	0x81d
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x25
	.4byte	.LLST10
	.byte	0
	.uleb128 0x2b
	.4byte	0x4d3
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.2byte	0x1be
	.4byte	0x844
	.uleb128 0x30
	.4byte	0x4ee
	.4byte	.LLST11
	.uleb128 0x30
	.4byte	0x4e3
	.4byte	.LLST12
	.byte	0
	.uleb128 0x2b
	.4byte	0x469
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x8d5
	.uleb128 0x30
	.4byte	0x4b0
	.4byte	.LLST13
	.uleb128 0x2c
	.4byte	0x4a5
	.byte	0x40
	.uleb128 0x30
	.4byte	0x49a
	.4byte	.LLST14
	.uleb128 0x31
	.4byte	0x48f
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2c
	.4byte	0x484
	.byte	0
	.uleb128 0x2c
	.4byte	0x479
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0x32
	.4byte	0x4c7
	.uleb128 0x21
	.4byte	.LVL38
	.4byte	0x1513
	.uleb128 0x22
	.4byte	.LVL39
	.4byte	0x153f
	.4byte	0x8ca
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL40
	.4byte	0x1529
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0x469
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x966
	.uleb128 0x30
	.4byte	0x4b0
	.4byte	.LLST15
	.uleb128 0x2c
	.4byte	0x4a5
	.byte	0x40
	.uleb128 0x30
	.4byte	0x49a
	.4byte	.LLST16
	.uleb128 0x31
	.4byte	0x48f
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2c
	.4byte	0x484
	.byte	0
	.uleb128 0x2c
	.4byte	0x479
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.uleb128 0x32
	.4byte	0x4c7
	.uleb128 0x21
	.4byte	.LVL41
	.4byte	0x1513
	.uleb128 0x22
	.4byte	.LVL42
	.4byte	0x153f
	.4byte	0x95b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL43
	.4byte	0x1529
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0x4d3
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x98d
	.uleb128 0x30
	.4byte	0x4ee
	.4byte	.LLST17
	.uleb128 0x30
	.4byte	0x4e3
	.4byte	.LLST18
	.byte	0
	.uleb128 0x2b
	.4byte	0x469
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.2byte	0x1ca
	.4byte	0xa1e
	.uleb128 0x30
	.4byte	0x4b0
	.4byte	.LLST19
	.uleb128 0x2c
	.4byte	0x4a5
	.byte	0x40
	.uleb128 0x31
	.4byte	0x49a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x30
	.4byte	0x48f
	.4byte	.LLST20
	.uleb128 0x2c
	.4byte	0x484
	.byte	0
	.uleb128 0x2c
	.4byte	0x479
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.uleb128 0x32
	.4byte	0x4c7
	.uleb128 0x21
	.4byte	.LVL50
	.4byte	0x1513
	.uleb128 0x22
	.4byte	.LVL51
	.4byte	0x153f
	.4byte	0xa13
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL52
	.4byte	0x1529
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0x469
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x1
	.2byte	0x1cc
	.4byte	0xaaf
	.uleb128 0x30
	.4byte	0x4b0
	.4byte	.LLST21
	.uleb128 0x2c
	.4byte	0x4a5
	.byte	0x40
	.uleb128 0x31
	.4byte	0x49a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x30
	.4byte	0x48f
	.4byte	.LLST22
	.uleb128 0x2c
	.4byte	0x484
	.byte	0
	.uleb128 0x2c
	.4byte	0x479
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.uleb128 0x32
	.4byte	0x4c7
	.uleb128 0x21
	.4byte	.LVL53
	.4byte	0x1513
	.uleb128 0x22
	.4byte	.LVL54
	.4byte	0x153f
	.4byte	0xaa4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL55
	.4byte	0x1529
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0x44d
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.2byte	0x1cf
	.4byte	0xadd
	.uleb128 0x33
	.4byte	0x45d
	.4byte	0x3ff00044
	.uleb128 0x24
	.4byte	.LVL57
	.4byte	0x154a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0x44d
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.byte	0x1
	.2byte	0x1d4
	.4byte	0xb0b
	.uleb128 0x33
	.4byte	0x45d
	.4byte	0x3ff0005c
	.uleb128 0x24
	.4byte	.LVL60
	.4byte	0x154a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0x42d
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.byte	0x1
	.2byte	0x1d9
	.4byte	0xb55
	.uleb128 0x2c
	.4byte	0x439
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.uleb128 0x21
	.4byte	.LVL62
	.4byte	0x1513
	.uleb128 0x22
	.4byte	.LVL63
	.4byte	0x1555
	.4byte	0xb4a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL64
	.4byte	0x1529
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LVL65
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb65
	.uleb128 0x35
	.4byte	0xa9
	.uleb128 0x25
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x17c
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcd6
	.uleb128 0x1d
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x17c
	.4byte	0xcd6
	.4byte	.LLST23
	.uleb128 0x29
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x17e
	.4byte	0xdd
	.4byte	.LLST24
	.uleb128 0x29
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x17f
	.4byte	0xdd
	.4byte	.LLST25
	.uleb128 0x29
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x180
	.4byte	0xdd
	.4byte	.LLST26
	.uleb128 0x29
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x181
	.4byte	0xdd
	.4byte	.LLST27
	.uleb128 0x29
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x182
	.4byte	0xdd
	.4byte	.LLST28
	.uleb128 0x29
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x183
	.4byte	0xdd
	.4byte	.LLST29
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0
	.4byte	0xc9e
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.2byte	0x186
	.4byte	0x25
	.4byte	.LLST30
	.uleb128 0x2d
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.uleb128 0x29
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x187
	.4byte	0xce1
	.4byte	.LLST31
	.uleb128 0x21
	.4byte	.LVL69
	.4byte	0x14fd
	.uleb128 0x22
	.4byte	.LVL70
	.4byte	0x1508
	.4byte	0xc60
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.uleb128 0x21
	.4byte	.LVL75
	.4byte	0x14fd
	.uleb128 0x24
	.4byte	.LVL76
	.4byte	0x1508
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL84
	.4byte	0x68c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xcdc
	.uleb128 0x7
	.4byte	0x376
	.uleb128 0x6
	.byte	0x4
	.4byte	0xce7
	.uleb128 0x7
	.4byte	0x2e9
	.uleb128 0x25
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x150
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd61
	.uleb128 0x1e
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x150
	.4byte	0xcd6
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.4byte	.LVL86
	.4byte	0x14fd
	.uleb128 0x22
	.4byte	.LVL87
	.4byte	0x1508
	.4byte	0xd47
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x21
	.4byte	.LVL88
	.4byte	0x1560
	.uleb128 0x24
	.4byte	.LVL89
	.4byte	0xb6a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF107
	.byte	0x1
	.byte	0x46
	.4byte	0x124
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa5
	.uleb128 0x19
	.string	"bs"
	.byte	0x1
	.byte	0x46
	.4byte	0xfa5
	.4byte	.LLST32
	.uleb128 0x1b
	.4byte	.LASF104
	.byte	0x1
	.byte	0x48
	.4byte	0xfab
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x38
	.4byte	.LASF105
	.byte	0x1
	.byte	0x49
	.4byte	0xb1
	.4byte	.LLST33
	.uleb128 0x39
	.string	"err"
	.byte	0x1
	.byte	0x4a
	.4byte	0x12b
	.4byte	.LLST34
	.uleb128 0x1b
	.4byte	.LASF106
	.byte	0x1
	.byte	0x4b
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.4byte	0xe4a
	.uleb128 0x39
	.string	"i"
	.byte	0x1
	.byte	0x5d
	.4byte	0x25
	.4byte	.LLST35
	.uleb128 0x2d
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.uleb128 0x38
	.4byte	.LASF83
	.byte	0x1
	.byte	0x5e
	.4byte	0xfab
	.4byte	.LLST36
	.uleb128 0x21
	.4byte	.LVL119
	.4byte	0x14fd
	.uleb128 0x24
	.4byte	.LVL121
	.4byte	0x1508
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC60
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x9
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL91
	.4byte	0x156b
	.4byte	0xe66
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x8000
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc00
	.byte	0
	.uleb128 0x21
	.4byte	.LVL93
	.4byte	0x14fd
	.uleb128 0x22
	.4byte	.LVL95
	.4byte	0x1508
	.4byte	0xeab
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0xa
	.2byte	0x8000
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL97
	.4byte	0x1576
	.4byte	0xec4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x21
	.4byte	.LVL98
	.4byte	0x14fd
	.uleb128 0x22
	.4byte	.LVL99
	.4byte	0x1508
	.4byte	0xefb
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x21
	.4byte	.LVL102
	.4byte	0x14fd
	.uleb128 0x22
	.4byte	.LVL103
	.4byte	0x1508
	.4byte	0xf2c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL104
	.4byte	0x14fd
	.uleb128 0x22
	.4byte	.LVL105
	.4byte	0x1508
	.4byte	0xf5d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC58
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL123
	.4byte	0x1581
	.4byte	0xf71
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL124
	.4byte	0x14fd
	.uleb128 0x24
	.4byte	.LVL125
	.4byte	0x1508
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e2
	.uleb128 0x6
	.byte	0x4
	.4byte	0xfb1
	.uleb128 0x7
	.4byte	0x20b
	.uleb128 0x37
	.4byte	.LASF108
	.byte	0x1
	.byte	0xc3
	.4byte	0x25
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1261
	.uleb128 0x19
	.string	"bs"
	.byte	0x1
	.byte	0xc3
	.4byte	0x53f
	.4byte	.LLST37
	.uleb128 0x3a
	.string	"sa"
	.byte	0x1
	.byte	0xc5
	.4byte	0x173
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3a
	.string	"sb"
	.byte	0x1
	.byte	0xc5
	.4byte	0x173
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.4byte	.LASF109
	.byte	0x1
	.byte	0xc6
	.4byte	0x1261
	.4byte	.LLST38
	.uleb128 0x2e
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.4byte	0x111b
	.uleb128 0x38
	.4byte	.LASF110
	.byte	0x1
	.byte	0xe4
	.4byte	0x124
	.4byte	.LLST39
	.uleb128 0x38
	.4byte	.LASF111
	.byte	0x1
	.byte	0xe5
	.4byte	0xb1
	.4byte	.LLST40
	.uleb128 0x38
	.4byte	.LASF29
	.byte	0x1
	.byte	0xe6
	.4byte	0x25
	.4byte	.LLST41
	.uleb128 0x2e
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.4byte	0x105e
	.uleb128 0x38
	.4byte	.LASF112
	.byte	0x1
	.byte	0xf6
	.4byte	0x25
	.4byte	.LLST42
	.byte	0
	.uleb128 0x22
	.4byte	.LVL149
	.4byte	0x15d6
	.4byte	0x1073
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x22
	.4byte	.LVL150
	.4byte	0x15d6
	.4byte	0x1087
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x22
	.4byte	.LVL154
	.4byte	0x15d6
	.4byte	0x109c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x22
	.4byte	.LVL158
	.4byte	0x15d6
	.4byte	0x10b0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x21
	.4byte	.LVL167
	.4byte	0x14fd
	.uleb128 0x22
	.4byte	.LVL168
	.4byte	0x1508
	.4byte	0x10e7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC73
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x21
	.4byte	.LVL169
	.4byte	0x14fd
	.uleb128 0x24
	.4byte	.LVL170
	.4byte	0x1508
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC75
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL128
	.4byte	0x14fd
	.uleb128 0x22
	.4byte	.LVL129
	.4byte	0x1508
	.4byte	0x1159
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC66
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL132
	.4byte	0x156b
	.uleb128 0x21
	.4byte	.LVL134
	.4byte	0x14fd
	.uleb128 0x22
	.4byte	.LVL136
	.4byte	0x1508
	.4byte	0x11a0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL139
	.4byte	0x15e1
	.4byte	0x11c1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL140
	.4byte	0x15e1
	.4byte	0x11e2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x73
	.sleb128 4096
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL141
	.4byte	0x1581
	.4byte	0x11f6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL144
	.4byte	0x14fd
	.uleb128 0x22
	.4byte	.LVL145
	.4byte	0x1508
	.4byte	0x122d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC69
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x21
	.4byte	.LVL146
	.4byte	0x14fd
	.uleb128 0x24
	.4byte	.LVL147
	.4byte	0x1508
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC71
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1267
	.uleb128 0x7
	.4byte	0x173
	.uleb128 0x3b
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x1e7
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x128c
	.uleb128 0x21
	.4byte	.LVL173
	.4byte	0x15ea
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x11c
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14e6
	.uleb128 0x3c
	.string	"bs"
	.byte	0x1
	.2byte	0x11c
	.4byte	0x53f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x11c
	.4byte	0x25
	.4byte	.LLST43
	.uleb128 0x29
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x11e
	.4byte	0x25
	.4byte	.LLST44
	.uleb128 0x27
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x11f
	.4byte	0x19f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x27
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x120
	.4byte	0x376
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x22
	.4byte	.LVL176
	.4byte	0x54a
	.4byte	0x130a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.byte	0
	.uleb128 0x22
	.4byte	.LVL177
	.4byte	0xcec
	.4byte	0x131f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.byte	0
	.uleb128 0x21
	.4byte	.LVL178
	.4byte	0x14fd
	.uleb128 0x22
	.4byte	.LVL179
	.4byte	0x1508
	.4byte	0x1356
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC78
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x21
	.4byte	.LVL180
	.4byte	0x126c
	.uleb128 0x22
	.4byte	.LVL181
	.4byte	0x4fa
	.4byte	0x1379
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL182
	.4byte	0x54a
	.4byte	0x1395
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.byte	0
	.uleb128 0x22
	.4byte	.LVL183
	.4byte	0xcec
	.4byte	0x13aa
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.byte	0
	.uleb128 0x22
	.4byte	.LVL184
	.4byte	0x594
	.4byte	0x13be
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL190
	.4byte	0x4fa
	.4byte	0x13d8
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL191
	.4byte	0x54a
	.4byte	0x13f4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.byte	0
	.uleb128 0x22
	.4byte	.LVL192
	.4byte	0xcec
	.4byte	0x1409
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.byte	0
	.uleb128 0x22
	.4byte	.LVL193
	.4byte	0x594
	.4byte	0x141d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL195
	.4byte	0x54a
	.4byte	0x1438
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.byte	0
	.uleb128 0x21
	.4byte	.LVL196
	.4byte	0x14fd
	.uleb128 0x22
	.4byte	.LVL197
	.4byte	0x1508
	.4byte	0x146f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC80
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x22
	.4byte	.LVL198
	.4byte	0xcec
	.4byte	0x1484
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.byte	0
	.uleb128 0x21
	.4byte	.LVL199
	.4byte	0x14fd
	.uleb128 0x22
	.4byte	.LVL200
	.4byte	0x1508
	.4byte	0x14bb
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC82
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x22
	.4byte	.LVL201
	.4byte	0x15f5
	.4byte	0x14dc
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x21
	.4byte	.LVL202
	.4byte	0x126c
	.byte	0
	.uleb128 0x3a
	.string	"TAG"
	.byte	0x1
	.byte	0x37
	.4byte	0x14f8
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xb1
	.uleb128 0x3d
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0xb
	.byte	0x57
	.uleb128 0x3d
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0xb
	.byte	0x6b
	.uleb128 0x3d
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0xc
	.byte	0x18
	.uleb128 0x3d
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x2
	.byte	0x9c
	.uleb128 0x3d
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0xc
	.byte	0x19
	.uleb128 0x3d
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x2
	.byte	0x8c
	.uleb128 0x3d
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x2
	.byte	0x47
	.uleb128 0x3d
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0xc
	.byte	0x1e
	.uleb128 0x3d
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x2
	.byte	0xac
	.uleb128 0x3d
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0xd
	.byte	0x29
	.uleb128 0x3d
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0x3
	.byte	0x32
	.uleb128 0x3d
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0xe
	.byte	0x26
	.uleb128 0x3d
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x3
	.byte	0x3a
	.uleb128 0x3e
	.uleb128 0x12
	.byte	0x9e
	.uleb128 0x10
	.byte	0x42
	.byte	0x6f
	.byte	0x74
	.byte	0x68
	.byte	0x20
	.byte	0x4f
	.byte	0x54
	.byte	0x41
	.byte	0x20
	.byte	0x76
	.byte	0x61
	.byte	0x6c
	.byte	0x75
	.byte	0x65
	.byte	0x73
	.byte	0
	.uleb128 0x3e
	.uleb128 0x19
	.byte	0x9e
	.uleb128 0x17
	.byte	0x4f
	.byte	0x6e
	.byte	0x6c
	.byte	0x79
	.byte	0x20
	.byte	0x4f
	.byte	0x54
	.byte	0x41
	.byte	0x20
	.byte	0x73
	.byte	0x65
	.byte	0x71
	.byte	0x75
	.byte	0x65
	.byte	0x6e
	.byte	0x63
	.byte	0x65
	.byte	0x20
	.byte	0x41
	.byte	0x20
	.byte	0x69
	.byte	0x73
	.byte	0
	.uleb128 0x3e
	.uleb128 0x19
	.byte	0x9e
	.uleb128 0x17
	.byte	0x4f
	.byte	0x6e
	.byte	0x6c
	.byte	0x79
	.byte	0x20
	.byte	0x4f
	.byte	0x54
	.byte	0x41
	.byte	0x20
	.byte	0x73
	.byte	0x65
	.byte	0x71
	.byte	0x75
	.byte	0x65
	.byte	0x6e
	.byte	0x63
	.byte	0x65
	.byte	0x20
	.byte	0x42
	.byte	0x20
	.byte	0x69
	.byte	0x73
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0xf
	.byte	0x27
	.uleb128 0x3f
	.4byte	.LASF129
	.4byte	.LASF129
	.uleb128 0x3d
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0x10
	.byte	0x47
	.uleb128 0x3f
	.4byte	.LASF130
	.4byte	.LASF130
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3c
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x73
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL23
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL23
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL23
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL36
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL23
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL49
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL23
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL47
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL23
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL31
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL59
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL45
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE30
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL36
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL37
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44
	.4byte	.LFE30
	.2byte	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL37
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x73
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL50-1
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x78
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL50-1
	.4byte	.LFE30
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
.LLST15:
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44
	.4byte	.LFE30
	.2byte	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL40
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x73
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL50-1
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x78
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL50-1
	.4byte	.LFE30
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
.LLST17:
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL47
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL45
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL59
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL49
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LFE30
	.2byte	0x10
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL49
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE30
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL52
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LFE30
	.2byte	0x10
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL52
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE30
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL66
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL72
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL74
	.4byte	.LFE29
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LFE29
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL78
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL81
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL68
	.4byte	.LVL82
	.2byte	0xa
	.byte	0x73
	.sleb128 2
	.byte	0x33
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xc
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL90
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL126
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x6
	.byte	0x3
	.4byte	.LC47
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x6
	.byte	0x3
	.4byte	.LC45
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x6
	.byte	0x3
	.4byte	.LC47
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x6
	.byte	0x3
	.4byte	.LC31
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x6
	.byte	0x3
	.4byte	.LC47
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x6
	.byte	0x3
	.4byte	.LC43
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x6
	.byte	0x3
	.4byte	.LC47
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x6
	.byte	0x3
	.4byte	.LC39
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x6
	.byte	0x3
	.4byte	.LC35
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x6
	.byte	0x3
	.4byte	.LC37
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x6
	.byte	0x3
	.4byte	.LC47
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL97
	.4byte	.LVL98-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL101
	.4byte	.LVL102-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL107
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL120
	.4byte	.LVL121-1
	.2byte	0x3
	.byte	0x78
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL121-1
	.4byte	.LVL122
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
.LLST37:
	.4byte	.LVL127
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
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL143
	.4byte	.LVL148
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL163
	.4byte	.LVL165
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL166
	.4byte	.LVL171
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL172
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL133
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL138
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL148
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL151
	.4byte	.LVL153
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL153
	.4byte	.LVL155
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL157
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL161
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL162
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL151
	.4byte	.LVL153
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5516
	.sleb128 0
	.4byte	.LVL155
	.4byte	.LVL157
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5536
	.sleb128 0
	.4byte	.LVL159
	.4byte	.LVL161
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5563
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL162
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1d
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL174
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL189
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL175
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL180
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL187
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	0
	.4byte	0
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF106:
	.string	"num_partitions"
.LASF57:
	.string	"segment_data"
.LASF61:
	.string	"ota_info"
.LASF5:
	.string	"__uint8_t"
.LASF30:
	.string	"seq_label"
.LASF36:
	.string	"type"
.LASF45:
	.string	"entry_addr"
.LASF83:
	.string	"partition"
.LASF99:
	.string	"entry"
.LASF10:
	.string	"long long unsigned int"
.LASF92:
	.string	"irom_load_addr"
.LASF31:
	.string	"esp_ota_select_entry_t"
.LASF63:
	.string	"test"
.LASF105:
	.string	"partition_usage"
.LASF107:
	.string	"bootloader_utility_load_partition_table"
.LASF25:
	.string	"ESP_LOG_DEBUG"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF103:
	.string	"image_data"
.LASF33:
	.string	"size"
.LASF89:
	.string	"drom_load_addr"
.LASF34:
	.string	"esp_partition_pos_t"
.LASF102:
	.string	"load_image"
.LASF95:
	.string	"drom_page_count"
.LASF12:
	.string	"long int"
.LASF35:
	.string	"magic"
.LASF118:
	.string	"esp_log_write"
.LASF68:
	.string	"Cache_Read_Disable"
.LASF129:
	.string	"memcpy"
.LASF111:
	.string	"ota_msg"
.LASF100:
	.string	"unpack_load_app"
.LASF75:
	.string	"cache_flash_mmu_set"
.LASF73:
	.string	"Cache_Read_Enable_rom"
.LASF97:
	.string	"irom_page_count"
.LASF8:
	.string	"__uint32_t"
.LASF67:
	.string	"Cache_Flush"
.LASF11:
	.string	"__intptr_t"
.LASF82:
	.string	"try_load_partition"
.LASF70:
	.string	"Cache_Flush_rom"
.LASF51:
	.string	"load_addr"
.LASF29:
	.string	"ota_seq"
.LASF0:
	.string	"unsigned int"
.LASF17:
	.string	"uint16_t"
.LASF109:
	.string	"ota_select_map"
.LASF14:
	.string	"long unsigned int"
.LASF108:
	.string	"bootloader_utility_get_selected_boot_partition"
.LASF124:
	.string	"bootloader_mmap"
.LASF86:
	.string	"not_bootable"
.LASF38:
	.string	"label"
.LASF84:
	.string	"data"
.LASF127:
	.string	"bootloader_common_ota_select_valid"
.LASF1:
	.string	"short unsigned int"
.LASF65:
	.string	"selected_subtype"
.LASF85:
	.string	"invalid"
.LASF20:
	.string	"intptr_t"
.LASF59:
	.string	"image_digest"
.LASF134:
	.string	"log_invalid_app_partition"
.LASF93:
	.string	"irom_size"
.LASF78:
	.string	"psize"
.LASF37:
	.string	"subtype"
.LASF91:
	.string	"irom_addr"
.LASF77:
	.string	"paddr"
.LASF24:
	.string	"ESP_LOG_INFO"
.LASF40:
	.string	"esp_partition_info_t"
.LASF112:
	.string	"ota_slot"
.LASF119:
	.string	"esp_dport_access_stall_other_cpu_start"
.LASF13:
	.string	"sizetype"
.LASF46:
	.string	"wp_pin"
.LASF72:
	.string	"Cache_Read_Enable"
.LASF49:
	.string	"hash_appended"
.LASF114:
	.string	"bootloader_utility_load_boot_image"
.LASF56:
	.string	"segments"
.LASF76:
	.string	"vaddr"
.LASF69:
	.string	"cpu_no"
.LASF48:
	.string	"reserved"
.LASF41:
	.string	"segment_count"
.LASF133:
	.string	"/home/raphael/rtone/lcd/build/bootloader_support"
.LASF96:
	.string	"irom_load_addr_aligned"
.LASF113:
	.string	"bootloader_reset"
.LASF121:
	.string	"cache_flash_mmu_set_rom"
.LASF50:
	.string	"esp_image_header_t"
.LASF27:
	.string	"_Bool"
.LASF18:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF132:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/src/bootloader_utility.c"
.LASF54:
	.string	"start_addr"
.LASF55:
	.string	"image"
.LASF79:
	.string	"bootloader_cache_pages_to_map"
.LASF4:
	.string	"short int"
.LASF94:
	.string	"drom_load_addr_aligned"
.LASF130:
	.string	"memset"
.LASF117:
	.string	"esp_log_timestamp"
.LASF22:
	.string	"ESP_LOG_ERROR"
.LASF64:
	.string	"app_count"
.LASF52:
	.string	"data_len"
.LASF71:
	.string	"Cache_Read_Disable_rom"
.LASF104:
	.string	"partitions"
.LASF90:
	.string	"drom_size"
.LASF53:
	.string	"esp_image_segment_header_t"
.LASF88:
	.string	"drom_addr"
.LASF47:
	.string	"spi_pin_drv"
.LASF19:
	.string	"uint32_t"
.LASF125:
	.string	"esp_partition_table_verify"
.LASF42:
	.string	"spi_mode"
.LASF87:
	.string	"set_cache_and_start_app"
.LASF81:
	.string	"index_to_partition"
.LASF15:
	.string	"char"
.LASF26:
	.string	"ESP_LOG_VERBOSE"
.LASF7:
	.string	"__int32_t"
.LASF6:
	.string	"__uint16_t"
.LASF80:
	.string	"index"
.LASF21:
	.string	"ESP_LOG_NONE"
.LASF128:
	.string	"abort"
.LASF60:
	.string	"esp_image_metadata_t"
.LASF58:
	.string	"image_len"
.LASF122:
	.string	"esp_dport_access_reg_read"
.LASF32:
	.string	"offset"
.LASF98:
	.string	"entry_t"
.LASF123:
	.string	"bootloader_random_disable"
.LASF120:
	.string	"esp_dport_access_stall_other_cpu_end"
.LASF115:
	.string	"start_index"
.LASF23:
	.string	"ESP_LOG_WARN"
.LASF28:
	.string	"esp_err_t"
.LASF44:
	.string	"spi_size"
.LASF16:
	.string	"uint8_t"
.LASF39:
	.string	"flags"
.LASF66:
	.string	"bootloader_state_t"
.LASF74:
	.string	"DPORT_REG_READ"
.LASF131:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF62:
	.string	"factory"
.LASF126:
	.string	"bootloader_munmap"
.LASF110:
	.string	"ota_valid"
.LASF116:
	.string	"part"
.LASF101:
	.string	"header"
.LASF43:
	.string	"spi_speed"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
