	.file	"flash_encrypt.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"flash_encrypt"
	.align	4
.LC3:
	.string	"\033[0;31mE (%d) %s: Unknown/unsupported CODING_SCHEME value 0x%x\033[0m\n"
	.align	4
.LC15:
	.string	"\033[0;32mI (%d) %s: Generating new flash encryption key...\033[0m\n"
	.align	4
.LC18:
	.string	"\033[0;32mI (%d) %s: Read & write protecting new key...\033[0m\n"
	.align	4
.LC22:
	.string	"\033[0;31mE (%d) %s: Flash encryption key has to be either unset or both read and write protected\033[0m\n"
	.align	4
.LC24:
	.string	"\033[0;33mW (%d) %s: Using pre-loaded flash encryption key in EFUSE block 1\033[0m\n"
	.align	4
.LC26:
	.string	"\033[0;32mI (%d) %s: Setting CRYPT_CONFIG efuse to 0xF\033[0m\n"
	.align	4
.LC30:
	.string	"\033[0;32mI (%d) %s: Disable UART bootloader encryption...\033[0m\n"
	.align	4
.LC32:
	.string	"\033[0;32mI (%d) %s: Disable UART bootloader decryption...\033[0m\n"
	.align	4
.LC34:
	.string	"\033[0;32mI (%d) %s: Disable UART bootloader MMU cache...\033[0m\n"
	.align	4
.LC36:
	.string	"\033[0;32mI (%d) %s: Disable JTAG...\033[0m\n"
	.align	4
.LC38:
	.string	"\033[0;32mI (%d) %s: Disable ROM BASIC interpreter fallback...\033[0m\n"
	.section	.text.initialise_flash_encryption,"ax",@progbits
	.literal_position
	.literal .LC0, 1073061912
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.literal .LC5, 1073061888
	.literal .LC6, 65536
	.literal .LC7, 1073061944
	.literal .LC8, 1073061948
	.literal .LC9, 1073061952
	.literal .LC10, 1073061956
	.literal .LC11, 1073061960
	.literal .LC12, 1073061964
	.literal .LC13, 1073061968
	.literal .LC14, 1073061972
	.literal .LC16, .LC15
	.literal .LC17, 1073062040
	.literal .LC19, .LC18
	.literal .LC20, 1073061916
	.literal .LC21, 65664
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.literal .LC27, .LC26
	.literal .LC28, 1073061936
	.literal .LC29, -268435456
	.literal .LC31, .LC30
	.literal .LC33, .LC32
	.literal .LC35, .LC34
	.literal .LC37, .LC36
	.literal .LC39, .LC38
	.literal .LC40, 1073061940
	.align	4
	.type	initialise_flash_encryption, @function
initialise_flash_encryption:
.LFB13:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/src/flash_encrypt.c"
	.loc 1 64 0
	entry	sp, 32
.LCFI0:
.LBB5:
.LBB6:
	.loc 1 65 0
	l32r	a2, .LC0
	memw
	l32i.n	a2, a2, 0
.LBE6:
	extui	a2, a2, 0, 2
.LVL0:
.LBE5:
	.loc 1 66 0
	bltui	a2, 2, .L2
	.loc 1 67 0 discriminator 2
	call8	esp_log_timestamp
.LVL1:
	l32r	a11, .LC2
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC4
	movi.n	a10, 1
	call8	esp_log_write
.LVL2:
	.loc 1 68 0 discriminator 2
	movi	a2, 0x106
.LVL3:
	retw.n
.LVL4:
.L2:
.LBB7:
	.loc 1 74 0
	l32r	a2, .LC5
.LVL5:
	memw
	l32i.n	a2, a2, 0
.LVL6:
.LBE7:
	.loc 1 75 0
	l32r	a9, .LC6
	and	a9, a2, a9
.LVL7:
	.loc 1 76 0
	movi	a8, 0x80
	and	a8, a2, a8
.LVL8:
	.loc 1 77 0
	movi.n	a10, 1
	movi.n	a2, 0
.LVL9:
	mov.n	a3, a2
	moveqz	a3, a10, a9
	extui	a9, a3, 0, 8
.LVL10:
	.loc 1 78 0
	moveqz	a2, a10, a8
	extui	a2, a2, 0, 8
	.loc 1 77 0
	bnone	a9, a2, .L4
.LBB8:
	.loc 1 79 0
	l32r	a8, .LC7
.LVL11:
	memw
	l32i.n	a8, a8, 0
.LBE8:
	bnez.n	a8, .L4
.LBB9:
	.loc 1 80 0
	l32r	a8, .LC8
	memw
	l32i.n	a8, a8, 0
.LBE9:
	bnez.n	a8, .L4
.LBB10:
	.loc 1 81 0
	l32r	a8, .LC9
	memw
	l32i.n	a8, a8, 0
.LBE10:
	bnez.n	a8, .L4
.LBB11:
	.loc 1 82 0
	l32r	a8, .LC10
	memw
	l32i.n	a8, a8, 0
.LBE11:
	bnez.n	a8, .L4
.LBB12:
	.loc 1 83 0
	l32r	a8, .LC11
	memw
	l32i.n	a8, a8, 0
.LBE12:
	bnez.n	a8, .L4
.LBB13:
	.loc 1 84 0
	l32r	a8, .LC12
	memw
	l32i.n	a8, a8, 0
.LBE13:
	bnez.n	a8, .L4
.LBB14:
	.loc 1 85 0
	l32r	a8, .LC13
	memw
	l32i.n	a8, a8, 0
.LBE14:
	bnez.n	a8, .L4
.LBB15:
	.loc 1 86 0
	l32r	a8, .LC14
	memw
	l32i.n	a8, a8, 0
.LBE15:
	bnez.n	a8, .L4
	.loc 1 87 0 discriminator 9
	call8	esp_log_timestamp
.LVL12:
	l32r	a2, .LC2
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC16
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL13:
	.loc 1 88 0 discriminator 9
	l32r	a10, .LC17
	call8	esp_efuse_write_random_key
.LVL14:
	.loc 1 89 0 discriminator 9
	call8	esp_efuse_burn_new_values
.LVL15:
	.loc 1 91 0 discriminator 9
	call8	esp_log_timestamp
.LVL16:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC19
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL17:
.LBB16:
	.loc 1 92 0 discriminator 9
	l32r	a8, .LC21
	l32r	a2, .LC20
	memw
	s32i.n	a8, a2, 0
.LBE16:
	.loc 1 93 0 discriminator 9
	call8	esp_efuse_burn_new_values
.LVL18:
	j	.L5
.L4:
	.loc 1 96 0
	or	a2, a9, a2
	beqz.n	a2, .L6
	.loc 1 97 0 discriminator 2
	call8	esp_log_timestamp
.LVL19:
	l32r	a11, .LC2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC23
	movi.n	a10, 1
	call8	esp_log_write
.LVL20:
	.loc 1 98 0 discriminator 2
	movi	a2, 0x103
	retw.n
.L6:
	.loc 1 100 0 discriminator 4
	call8	esp_log_timestamp
.LVL21:
	l32r	a11, .LC2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC25
	movi.n	a10, 2
	call8	esp_log_write
.LVL22:
.L5:
	.loc 1 113 0 discriminator 9
	call8	esp_log_timestamp
.LVL23:
	l32r	a2, .LC2
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC27
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL24:
.LBB17:
	.loc 1 114 0 discriminator 9
	l32r	a9, .LC29
	l32r	a8, .LC28
	memw
	s32i.n	a9, a8, 0
.LBE17:
	.loc 1 115 0 discriminator 9
	call8	esp_efuse_burn_new_values
.LVL25:
	.loc 1 119 0 discriminator 9
	call8	esp_log_timestamp
.LVL26:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC31
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL27:
	.loc 1 125 0 discriminator 9
	call8	esp_log_timestamp
.LVL28:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC33
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL29:
	.loc 1 131 0 discriminator 9
	call8	esp_log_timestamp
.LVL30:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC35
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL31:
	.loc 1 137 0 discriminator 9
	call8	esp_log_timestamp
.LVL32:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC37
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL33:
	.loc 1 143 0 discriminator 9
	call8	esp_log_timestamp
.LVL34:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC39
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL35:
.LBB18:
	.loc 1 150 0 discriminator 9
	movi	a8, 0x3c4
	l32r	a2, .LC40
	memw
	s32i.n	a8, a2, 0
.LBE18:
	.loc 1 151 0 discriminator 9
	call8	esp_efuse_burn_new_values
.LVL36:
	.loc 1 154 0 discriminator 9
	movi.n	a2, 0
	.loc 1 155 0 discriminator 9
	retw.n
.LFE13:
	.size	initialise_flash_encryption, .-initialise_flash_encryption
	.section	.rodata.str1.4
	.align	4
.LC42:
	.string	"\033[0;31mE (%d) %s: esp_flash_encrypt_region bad src_addr 0x%x\033[0m\n"
	.align	4
.LC45:
	.string	"\033[0;31mE (%d) %s: flash operation failed: 0x%x\033[0m\n"
	.section	.text.esp_flash_encrypt_region,"ax",@progbits
	.literal_position
	.literal .LC41, .LC1
	.literal .LC43, .LC42
	.literal .LC44, 4096
	.literal .LC46, .LC45
	.align	4
	.global	esp_flash_encrypt_region
	.type	esp_flash_encrypt_region, @function
esp_flash_encrypt_region:
.LFB18:
	.loc 1 311 0
.LVL37:
	entry	sp, 4128
.LCFI1:
	.loc 1 315 0
	extui	a4, a2, 0, 12
	beqz.n	a4, .L12
	.loc 1 316 0 discriminator 2
	call8	esp_log_timestamp
.LVL38:
	l32r	a11, .LC41
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC43
	movi.n	a10, 1
	call8	esp_log_write
.LVL39:
	.loc 1 317 0 discriminator 2
	movi.n	a2, -1
.LVL40:
	retw.n
.LVL41:
.L11:
.LBB19:
.LBB20:
	.loc 1 321 0
	call8	rtc_wdt_feed
.LVL42:
	.loc 1 322 0
	add.n	a6, a5, a2
.LVL43:
	.loc 1 323 0
	movi.n	a13, 0
	l32r	a12, .LC44
	mov.n	a11, sp
	mov.n	a10, a6
	call8	bootloader_flash_read
.LVL44:
	mov.n	a4, a10
.LVL45:
	.loc 1 324 0
	bnez.n	a10, .L10
	.loc 1 327 0
	srli	a10, a6, 12
	call8	bootloader_flash_erase_sector
.LVL46:
	mov.n	a4, a10
.LVL47:
	.loc 1 328 0
	bnez.n	a10, .L10
	.loc 1 331 0
	movi.n	a13, 1
	l32r	a12, .LC44
	mov.n	a11, sp
	mov.n	a10, a6
	call8	bootloader_flash_write
.LVL48:
	mov.n	a4, a10
.LVL49:
	.loc 1 332 0
	bnez.n	a10, .L10
.LBE20:
	.loc 1 320 0 discriminator 2
	addmi	a5, a5, 0x1000
.LVL50:
	j	.L8
.LVL51:
.L12:
.LBE19:
	movi.n	a5, 0
.L8:
.LVL52:
.LBB21:
	.loc 1 320 0 is_stmt 0 discriminator 1
	bltu	a5, a3, .L11
.LBE21:
	.loc 1 336 0 is_stmt 1
	movi.n	a2, 0
.LVL53:
	retw.n
.LVL54:
.L10:
	.loc 1 339 0 discriminator 2
	call8	esp_log_timestamp
.LVL55:
	l32r	a11, .LC41
	mov.n	a15, a4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC46
	movi.n	a10, 1
	call8	esp_log_write
.LVL56:
	.loc 1 340 0 discriminator 2
	mov.n	a2, a4
.LVL57:
	.loc 1 341 0 discriminator 2
	retw.n
.LFE18:
	.size	esp_flash_encrypt_region, .-esp_flash_encrypt_region
	.section	.rodata.str1.4
	.align	4
.LC49:
	.string	"\033[0;31mE (%d) %s: Failed to encrypt bootloader in place: 0x%x\033[0m\n"
	.align	4
.LC52:
	.string	"\033[0;31mE (%d) %s: Failed to encrypt bootloader IV & digest in place: 0x%x\033[0m\n"
	.align	4
.LC54:
	.string	"\033[0;33mW (%d) %s: no valid bootloader was found\033[0m\n"
	.section	.text.encrypt_bootloader,"ax",@progbits
	.literal_position
	.literal .LC47, 4096
	.literal .LC48, .LC1
	.literal .LC50, .LC49
	.literal .LC51, 1073061912
	.literal .LC53, .LC52
	.literal .LC55, .LC54
	.align	4
	.type	encrypt_bootloader, @function
encrypt_bootloader:
.LFB15:
	.loc 1 216 0
	entry	sp, 48
.LCFI2:
	.loc 1 220 0
	mov.n	a10, sp
	call8	esp_image_verify_bootloader
.LVL58:
	mov.n	a2, a10
	bnez.n	a10, .L14
	.loc 1 222 0
	l32i.n	a11, sp, 0
	l32r	a10, .LC47
	call8	esp_flash_encrypt_region
.LVL59:
	mov.n	a3, a10
.LVL60:
	.loc 1 223 0
	beqz.n	a10, .L15
	.loc 1 224 0 discriminator 2
	call8	esp_log_timestamp
.LVL61:
	l32r	a11, .LC48
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC50
	movi.n	a10, 1
	call8	esp_log_write
.LVL62:
	.loc 1 225 0 discriminator 2
	mov.n	a2, a3
	retw.n
.L15:
.LBB22:
.LBB23:
.LBB24:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include/esp_secure_boot.h"
	.loc 2 46 0
	l32r	a3, .LC51
.LVL63:
	memw
	l32i.n	a3, a3, 0
.LBE24:
.LBE23:
.LBE22:
	.loc 1 228 0
	bbci	a3, 4, .L16
	.loc 1 233 0
	l32r	a11, .LC47
	movi.n	a10, 0
.LVL64:
	call8	esp_flash_encrypt_region
.LVL65:
	mov.n	a3, a10
.LVL66:
	.loc 1 235 0
	beqz.n	a10, .L16
	.loc 1 236 0 discriminator 2
	call8	esp_log_timestamp
.LVL67:
	l32r	a11, .LC48
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC53
	movi.n	a10, 1
	call8	esp_log_write
.LVL68:
	.loc 1 237 0 discriminator 2
	mov.n	a2, a3
	retw.n
.LVL69:
.L14:
	.loc 1 242 0 discriminator 4
	call8	esp_log_timestamp
.LVL70:
	l32r	a11, .LC48
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC55
	movi.n	a10, 2
	call8	esp_log_write
.LVL71:
	.loc 1 245 0 discriminator 4
	movi.n	a2, 0
.L16:
	.loc 1 246 0
	retw.n
.LFE15:
	.size	encrypt_bootloader, .-encrypt_bootloader
	.section	.rodata.str1.4
	.align	4
.LC59:
	.string	"\033[0;31mE (%d) %s: Failed to read partition table data\033[0m\n"
	.align	4
.LC62:
	.string	"\033[0;31mE (%d) %s: Failed to encrypt partition table in place. %x\033[0m\n"
	.align	4
.LC64:
	.string	"\033[0;31mE (%d) %s: Failed to read partition table data - not plaintext?\033[0m\n"
	.section	.text.encrypt_and_load_partition_table,"ax",@progbits
	.literal_position
	.literal .LC56, 3072
	.literal .LC57, 32768
	.literal .LC58, .LC1
	.literal .LC60, .LC59
	.literal .LC61, 4096
	.literal .LC63, .LC62
	.literal .LC65, .LC64
	.align	4
	.type	encrypt_and_load_partition_table, @function
encrypt_and_load_partition_table:
.LFB16:
	.loc 1 249 0
.LVL72:
	entry	sp, 32
.LCFI3:
	.loc 1 252 0
	movi.n	a13, 0
	l32r	a12, .LC56
	mov.n	a11, a2
	l32r	a10, .LC57
	call8	bootloader_flash_read
.LVL73:
	mov.n	a4, a10
.LVL74:
	.loc 1 253 0
	beqz.n	a10, .L18
	.loc 1 254 0 discriminator 2
	call8	esp_log_timestamp
.LVL75:
	l32r	a11, .LC58
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC60
	movi.n	a10, 1
	call8	esp_log_write
.LVL76:
	.loc 1 255 0 discriminator 2
	mov.n	a2, a4
.LVL77:
	retw.n
.LVL78:
.L18:
	.loc 1 257 0
	mov.n	a12, a3
	movi.n	a11, 0
	mov.n	a10, a2
	call8	esp_partition_table_verify
.LVL79:
	mov.n	a2, a10
.LVL80:
	bnez.n	a10, .L20
.LBB25:
	.loc 1 259 0
	l32r	a11, .LC61
	l32r	a10, .LC57
	call8	esp_flash_encrypt_region
.LVL81:
	mov.n	a3, a10
.LVL82:
	.loc 1 261 0
	beqz.n	a10, .L19
	.loc 1 262 0 discriminator 2
	call8	esp_log_timestamp
.LVL83:
	l32r	a11, .LC58
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC63
	movi.n	a10, 1
	call8	esp_log_write
.LVL84:
	.loc 1 263 0 discriminator 2
	mov.n	a2, a3
	retw.n
.LVL85:
.L20:
.LBE25:
	.loc 1 267 0 discriminator 2
	call8	esp_log_timestamp
.LVL86:
	l32r	a11, .LC58
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC65
	movi.n	a10, 1
	call8	esp_log_write
.LVL87:
	.loc 1 268 0 discriminator 2
	movi	a2, 0x103
.LVL88:
.L19:
	.loc 1 273 0
	retw.n
.LFE16:
	.size	encrypt_and_load_partition_table, .-encrypt_and_load_partition_table
	.section	.rodata.str1.4
	.align	4
.LC69:
	.string	"\033[0;32mI (%d) %s: Encrypting partition %d at offset 0x%x...\033[0m\n"
	.align	4
.LC71:
	.string	"\033[0;31mE (%d) %s: Failed to encrypt partition %d\033[0m\n"
	.section	.text.encrypt_partition,"ax",@progbits
	.literal_position
	.literal .LC66, -65536
	.literal .LC67, -67174400
	.literal .LC68, .LC1
	.literal .LC70, .LC69
	.literal .LC72, .LC71
	.align	4
	.type	encrypt_partition, @function
encrypt_partition:
.LFB17:
	.loc 1 277 0
.LVL89:
	entry	sp, 304
.LCFI4:
	.loc 1 279 0
	l32i.n	a10, a3, 28
	extui	a10, a10, 0, 1
.LVL90:
	.loc 1 281 0
	l8ui	a8, a3, 2
	bnez.n	a8, .L22
.LBB26:
	.loc 1 284 0
	addi	a12, sp, 16
	addi.n	a11, a3, 4
	movi.n	a10, 0
.LVL91:
	call8	esp_image_verify
.LVL92:
	.loc 1 287 0
	movi.n	a8, 0
	movi.n	a9, 1
	moveqz	a8, a9, a10
	extui	a10, a8, 0, 8
.LVL93:
.LBE26:
	j	.L23
.LVL94:
.L22:
	.loc 1 288 0
	l32i.n	a9, a3, 0
	l32r	a11, .LC66
	and	a12, a9, a11
	.loc 1 289 0
	add.n	a11, a12, a11
	movi.n	a13, 1
	movi.n	a8, 0
	mov.n	a4, a8
	moveqz	a4, a13, a11
	l32r	a9, .LC67
	add.n	a9, a12, a9
	moveqz	a8, a13, a9
	or	a8, a4, a8
	.loc 1 288 0
	beqz.n	a8, .L23
	.loc 1 291 0
	mov.n	a10, a13
.LVL95:
.L23:
	.loc 1 294 0
	beqz.n	a10, .L26
	.loc 1 299 0 discriminator 9
	call8	esp_log_timestamp
.LVL96:
	l32r	a11, .LC68
	l32i.n	a8, a3, 4
	s32i.n	a8, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC70
	movi.n	a10, 3
	call8	esp_log_write
.LVL97:
	.loc 1 301 0 discriminator 9
	l32i.n	a11, a3, 8
	l32i.n	a10, a3, 4
	call8	esp_flash_encrypt_region
.LVL98:
	mov.n	a3, a10
.LVL99:
	.loc 1 302 0 discriminator 9
	beqz.n	a10, .L27
	.loc 1 303 0 discriminator 2
	call8	esp_log_timestamp
.LVL100:
	l32r	a11, .LC68
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC72
	movi.n	a10, 1
	call8	esp_log_write
.LVL101:
	.loc 1 305 0 discriminator 2
	mov.n	a2, a3
.LVL102:
	retw.n
.LVL103:
.L26:
	.loc 1 295 0
	movi.n	a2, 0
.LVL104:
	retw.n
.LVL105:
.L27:
	.loc 1 305 0
	mov.n	a2, a10
.LVL106:
	.loc 1 307 0
	retw.n
.LFE17:
	.size	encrypt_partition, .-encrypt_partition
	.section	.rodata.str1.4
	.align	4
.LC74:
	.string	"\033[0;31mE (%d) %s: Cannot re-encrypt data (FLASH_CRYPT_CNT 0x%02x write disabled %d\033[0m\n"
	.align	4
.LC78:
	.string	"\033[0;32mI (%d) %s: Flash encryption completed\033[0m\n"
	.section	.text.encrypt_flash_contents,"ax",@progbits
	.literal_position
	.literal .LC73, .LC1
	.literal .LC75, .LC74
	.literal .LC76, 1073061916
	.literal .LC77, -133169153
	.literal .LC79, .LC78
	.align	4
	.type	encrypt_flash_contents, @function
encrypt_flash_contents:
.LFB14:
	.loc 1 159 0
.LVL107:
	entry	sp, 3136
.LCFI5:
	.loc 1 166 0
	beqz.n	a3, .L29
	.loc 1 167 0 discriminator 2
	call8	esp_log_timestamp
.LVL108:
	l32r	a11, .LC73
	s32i.n	a3, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC75
	movi.n	a10, 1
	call8	esp_log_write
.LVL109:
	.loc 1 168 0 discriminator 2
	movi.n	a2, -1
.LVL110:
	retw.n
.LVL111:
.L29:
	.loc 1 171 0
	bnez.n	a2, .L31
	.loc 1 173 0
	call8	initialise_flash_encryption
.LVL112:
	.loc 1 174 0
	bnez.n	a10, .L34
.LVL113:
.L31:
	.loc 1 179 0
	call8	encrypt_bootloader
.LVL114:
	.loc 1 180 0
	bnez.n	a10, .L35
	.loc 1 184 0
	addi	a3, sp, 16
.LVL115:
	addmi	a11, a3, 0xc00
	mov.n	a10, a3
.LVL116:
	call8	encrypt_and_load_partition_table
.LVL117:
	.loc 1 185 0
	bnez.n	a10, .L36
	movi.n	a3, 0
	j	.L32
.LVL118:
.L33:
.LBB27:
	.loc 1 194 0
	slli	a11, a3, 5
	addi	a4, sp, 16
	add.n	a11, a4, a11
	mov.n	a10, a3
.LVL119:
	call8	encrypt_partition
.LVL120:
	.loc 1 195 0
	bnez.n	a10, .L37
	.loc 1 193 0 discriminator 2
	addi.n	a3, a3, 1
.LVL121:
.L32:
	.loc 1 193 0 is_stmt 0 discriminator 1
	addi	a4, sp, 16
	addmi	a8, a4, 0xc00
	l32i.n	a8, a8, 0
	blt	a3, a8, .L33
.LBE27:
	.loc 1 203 0 is_stmt 1
	movi.n	a8, -1
	xor	a8, a8, a2
	extui	a8, a8, 0, 7
	neg	a3, a8
.LVL122:
	and	a3, a3, a8
	nsau	a3, a3
	neg	a3, a3
.LVL123:
	.loc 1 205 0
	addi	a8, a3, 31
	movi.n	a3, 1
.LVL124:
	ssl	a8
	sll	a3, a3
	add.n	a2, a2, a3
.LVL125:
.LBB28:
.LBB29:
	.loc 1 207 0
	l32r	a8, .LC76
.LVL126:
	memw
	l32i.n	a9, a8, 0
.LBE29:
	l32r	a3, .LC77
	and	a3, a9, a3
	extui	a2, a2, 0, 7
.LVL127:
	slli	a2, a2, 20
	or	a2, a3, a2
	memw
	s32i.n	a2, a8, 0
.LBE28:
	.loc 1 208 0
	call8	esp_efuse_burn_new_values
.LVL128:
	.loc 1 210 0
	call8	esp_log_timestamp
.LVL129:
	l32r	a11, .LC73
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC79
	movi.n	a10, 3
	call8	esp_log_write
.LVL130:
	.loc 1 212 0
	movi.n	a2, 0
	retw.n
.LVL131:
.L34:
	.loc 1 175 0
	mov.n	a2, a10
.LVL132:
	retw.n
.LVL133:
.L35:
	.loc 1 181 0
	mov.n	a2, a10
.LVL134:
	retw.n
.LVL135:
.L36:
	.loc 1 186 0
	mov.n	a2, a10
.LVL136:
	retw.n
.LVL137:
.L37:
.LBB30:
	.loc 1 196 0
	mov.n	a2, a10
.LVL138:
.LBE30:
	.loc 1 213 0
	retw.n
.LFE14:
	.size	encrypt_flash_contents, .-encrypt_flash_contents
	.global	__paritysi2
	.global	__popcountsi2
	.section	.rodata.str1.4
	.align	4
.LC83:
	.string	"\033[0;32mI (%d) %s: flash encryption is enabled (%d plaintext flashes left)\033[0m\n"
	.section	.text.esp_flash_encrypt_check_and_update,"ax",@progbits
	.literal_position
	.literal .LC80, 1073061888
	.literal .LC81, 133169152
	.literal .LC82, .LC1
	.literal .LC84, .LC83
	.align	4
	.global	esp_flash_encrypt_check_and_update
	.type	esp_flash_encrypt_check_and_update, @function
esp_flash_encrypt_check_and_update:
.LFB12:
	.loc 1 41 0
	entry	sp, 32
.LCFI6:
.LBB31:
	.loc 1 42 0
	l32r	a2, .LC80
	memw
	l32i.n	a3, a2, 0
.LVL139:
.LBE31:
	.loc 1 44 0
	l32r	a2, .LC81
	and	a2, a3, a2
	extui	a2, a2, 20, 12
.LVL140:
	.loc 1 45 0
	movi.n	a4, 4
	and	a4, a3, a4
	movi.n	a11, 0
	movi.n	a8, 1
	movnez	a11, a8, a4
	extui	a3, a11, 0, 8
.LVL141:
	.loc 1 48 0
	mov.n	a10, a2
	call8	__paritysi2
.LVL142:
	bnei	a10, 1, .L39
.LBB32:
	.loc 1 50 0
	mov.n	a10, a2
	call8	__popcountsi2
.LVL143:
	movi.n	a2, 7
.LVL144:
	sub	a10, a2, a10
	extui	a2, a10, 31, 1
	add.n	a10, a2, a10
	srai	a2, a10, 1
.LVL145:
	.loc 1 51 0
	beqz.n	a4, .L40
	.loc 1 52 0
	movi.n	a2, 0
.LVL146:
.L40:
	.loc 1 54 0 discriminator 9
	call8	esp_log_timestamp
.LVL147:
	l32r	a11, .LC82
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC84
	movi.n	a10, 3
	call8	esp_log_write
.LVL148:
	.loc 1 55 0 discriminator 9
	movi.n	a2, 0
.LVL149:
	retw.n
.LVL150:
.L39:
.LBE32:
	.loc 1 59 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	encrypt_flash_contents
.LVL151:
	mov.n	a2, a10
.LVL152:
	.loc 1 61 0
	retw.n
.LFE12:
	.size	esp_flash_encrypt_check_and_update, .-esp_flash_encrypt_check_and_update
	.section	.text.esp_flash_write_protect_crypt_cnt,"ax",@progbits
	.literal_position
	.literal .LC85, 1073061888
	.literal .LC86, 1073061916
	.align	4
	.global	esp_flash_write_protect_crypt_cnt
	.type	esp_flash_write_protect_crypt_cnt, @function
esp_flash_write_protect_crypt_cnt:
.LFB19:
	.loc 1 344 0
	entry	sp, 32
.LCFI7:
.LBB33:
	.loc 1 345 0
	l32r	a8, .LC85
	memw
	l32i.n	a8, a8, 0
.LVL153:
.LBE33:
	.loc 1 347 0
	bbsi	a8, 2, .L43
.LBB34:
	.loc 1 348 0
	movi.n	a9, 4
	l32r	a8, .LC86
.LVL154:
	memw
	s32i.n	a9, a8, 0
.LBE34:
	.loc 1 349 0
	call8	esp_efuse_burn_new_values
.LVL155:
.L43:
	retw.n
.LFE19:
	.size	esp_flash_write_protect_crypt_cnt, .-esp_flash_write_protect_crypt_cnt
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI0-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI1-.LFB18
	.byte	0xe
	.uleb128 0x1020
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI3-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI4-.LFB17
	.byte	0xe
	.uleb128 0x130
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI5-.LFB14
	.byte	0xe
	.uleb128 0xc40
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI6-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI7-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 3 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_flash_data_types.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include/esp_image_format.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include/esp_efuse.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/rtc_wdt.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include/esp_flash_partitions.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf19
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0xc
	.4byte	.LASF99
	.4byte	.LASF100
	.4byte	.Ldebug_ranges0+0x30
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
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb6
	.uleb128 0x6
	.4byte	0xa9
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x18
	.4byte	0xd1
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.byte	0x24
	.4byte	0x113
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x7
	.byte	0x25
	.4byte	0xdc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x7
	.byte	0x26
	.4byte	0xdc
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x7
	.byte	0x27
	.4byte	0xf2
	.uleb128 0x7
	.byte	0x20
	.byte	0x7
	.byte	0x2c
	.4byte	0x16f
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x7
	.byte	0x2d
	.4byte	0xc6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x7
	.byte	0x2e
	.4byte	0xbb
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x7
	.byte	0x2f
	.4byte	0xbb
	.byte	0x3
	.uleb128 0x9
	.string	"pos"
	.byte	0x7
	.byte	0x30
	.4byte	0x113
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x7
	.byte	0x31
	.4byte	0x16f
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x7
	.byte	0x32
	.4byte	0xdc
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.4byte	0xbb
	.4byte	0x17f
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x33
	.4byte	0x11e
	.uleb128 0x7
	.byte	0x18
	.byte	0x8
	.byte	0x3b
	.4byte	0x211
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x8
	.byte	0x3c
	.4byte	0xbb
	.byte	0
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x8
	.byte	0x3d
	.4byte	0xbb
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x8
	.byte	0x3f
	.4byte	0xbb
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x8
	.byte	0x41
	.4byte	0xbb
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x8
	.byte	0x43
	.4byte	0xbb
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x8
	.byte	0x44
	.4byte	0xdc
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x8
	.byte	0x47
	.4byte	0xbb
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x8
	.byte	0x49
	.4byte	0x211
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x8
	.byte	0x4b
	.4byte	0x221
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x8
	.byte	0x4f
	.4byte	0xbb
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.4byte	0xbb
	.4byte	0x221
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0xbb
	.4byte	0x231
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x8
	.byte	0x50
	.4byte	0x18a
	.uleb128 0x7
	.byte	0x8
	.byte	0x8
	.byte	0x57
	.4byte	0x25d
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x8
	.byte	0x58
	.4byte	0xdc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x8
	.byte	0x59
	.4byte	0xdc
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x8
	.byte	0x5a
	.4byte	0x23c
	.uleb128 0xd
	.2byte	0x100
	.byte	0x8
	.byte	0x5f
	.4byte	0x2ba
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x8
	.byte	0x60
	.4byte	0xdc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x8
	.byte	0x61
	.4byte	0x231
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x8
	.byte	0x62
	.4byte	0x2ba
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x8
	.byte	0x63
	.4byte	0x2ca
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x8
	.byte	0x64
	.4byte	0xdc
	.byte	0xdc
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x8
	.byte	0x65
	.4byte	0x2da
	.byte	0xe0
	.byte	0
	.uleb128 0xa
	.4byte	0x25d
	.4byte	0x2ca
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	0xdc
	.4byte	0x2da
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	0xbb
	.4byte	0x2ea
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x8
	.byte	0x66
	.4byte	0x268
	.uleb128 0xe
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0x69
	.4byte	0x30e
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x37
	.byte	0x9
	.byte	0x1f
	.4byte	0x33f
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.4byte	.LASF101
	.byte	0x2
	.byte	0x2d
	.4byte	0x35d
	.byte	0x3
	.4byte	0x35d
	.uleb128 0x11
	.4byte	.LASF82
	.4byte	0x374
	.4byte	.LASF101
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF58
	.uleb128 0xa
	.4byte	0xa9
	.4byte	0x374
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.4byte	0x364
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x1
	.byte	0x3f
	.4byte	0xe7
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x655
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0x1
	.byte	0x41
	.4byte	0xdc
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	.LASF82
	.4byte	0x665
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0x1
	.byte	0x4a
	.4byte	0xdc
	.4byte	.LLST1
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x1
	.byte	0x4b
	.4byte	0x35d
	.4byte	.LLST2
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x1
	.byte	0x4c
	.4byte	0x35d
	.4byte	.LLST3
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x1
	.byte	0x75
	.4byte	0xdc
	.4byte	.LLST4
	.uleb128 0x15
	.4byte	.LVL1
	.4byte	0xea3
	.uleb128 0x16
	.4byte	.LVL2
	.4byte	0xeae
	.4byte	0x423
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL12
	.4byte	0xea3
	.uleb128 0x16
	.4byte	.LVL13
	.4byte	0xeae
	.4byte	0x454
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL14
	.4byte	0xeb9
	.4byte	0x46b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff5a098
	.byte	0
	.uleb128 0x15
	.4byte	.LVL15
	.4byte	0xec4
	.uleb128 0x15
	.4byte	.LVL16
	.4byte	0xea3
	.uleb128 0x16
	.4byte	.LVL17
	.4byte	0xeae
	.4byte	0x4a5
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL18
	.4byte	0xec4
	.uleb128 0x15
	.4byte	.LVL19
	.4byte	0xea3
	.uleb128 0x16
	.4byte	.LVL20
	.4byte	0xeae
	.4byte	0x4e5
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x15
	.4byte	.LVL21
	.4byte	0xea3
	.uleb128 0x16
	.4byte	.LVL22
	.4byte	0xeae
	.4byte	0x51c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x15
	.4byte	.LVL23
	.4byte	0xea3
	.uleb128 0x16
	.4byte	.LVL24
	.4byte	0xeae
	.4byte	0x54d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL25
	.4byte	0xec4
	.uleb128 0x15
	.4byte	.LVL26
	.4byte	0xea3
	.uleb128 0x16
	.4byte	.LVL27
	.4byte	0xeae
	.4byte	0x587
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL28
	.4byte	0xea3
	.uleb128 0x16
	.4byte	.LVL29
	.4byte	0xeae
	.4byte	0x5b8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL30
	.4byte	0xea3
	.uleb128 0x16
	.4byte	.LVL31
	.4byte	0xeae
	.4byte	0x5e9
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL32
	.4byte	0xea3
	.uleb128 0x16
	.4byte	.LVL33
	.4byte	0xeae
	.4byte	0x61a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL34
	.4byte	0xea3
	.uleb128 0x16
	.4byte	.LVL35
	.4byte	0xeae
	.4byte	0x64b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL36
	.4byte	0xec4
	.byte	0
	.uleb128 0xa
	.4byte	0xa9
	.4byte	0x665
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x1b
	.byte	0
	.uleb128 0x6
	.4byte	0x655
	.uleb128 0x18
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x136
	.4byte	0xe7
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e0
	.uleb128 0x19
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x136
	.4byte	0xdc
	.4byte	.LLST5
	.uleb128 0x1a
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x136
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.string	"err"
	.byte	0x1
	.2byte	0x138
	.4byte	0xe7
	.4byte	.LLST6
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.2byte	0x139
	.4byte	0x7e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x1d
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x152
	.4byte	.L10
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0
	.4byte	0x769
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.2byte	0x140
	.4byte	0x2c
	.4byte	.LLST7
	.uleb128 0x1f
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x20
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x142
	.4byte	0xdc
	.4byte	.LLST8
	.uleb128 0x15
	.4byte	.LVL42
	.4byte	0xecf
	.uleb128 0x16
	.4byte	.LVL44
	.4byte	0xeda
	.4byte	0x72e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL46
	.4byte	0xee5
	.4byte	0x744
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x76
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0
	.uleb128 0x21
	.4byte	.LVL48
	.4byte	0xef0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL38
	.4byte	0xea3
	.uleb128 0x16
	.4byte	.LVL39
	.4byte	0xeae
	.4byte	0x7a6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL55
	.4byte	0xea3
	.uleb128 0x21
	.4byte	.LVL56
	.4byte	0xeae
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xdc
	.4byte	0x7f1
	.uleb128 0x22
	.4byte	0x9b
	.2byte	0x3ff
	.byte	0
	.uleb128 0x23
	.4byte	.LASF103
	.byte	0x1
	.byte	0xd7
	.4byte	0xe7
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x93b
	.uleb128 0x24
	.string	"err"
	.byte	0x1
	.byte	0xd9
	.4byte	0xe7
	.4byte	.LLST9
	.uleb128 0x25
	.4byte	.LASF67
	.byte	0x1
	.byte	0xda
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.4byte	0x33f
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.byte	0xe4
	.4byte	0x84a
	.uleb128 0x1f
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x27
	.4byte	0x34f
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL58
	.4byte	0xefb
	.4byte	0x85e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x16
	.4byte	.LVL59
	.4byte	0x66a
	.4byte	0x873
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x15
	.4byte	.LVL61
	.4byte	0xea3
	.uleb128 0x16
	.4byte	.LVL62
	.4byte	0xeae
	.4byte	0x8b0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL65
	.4byte	0x66a
	.4byte	0x8ca
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x15
	.4byte	.LVL67
	.4byte	0xea3
	.uleb128 0x16
	.4byte	.LVL68
	.4byte	0xeae
	.4byte	0x907
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL70
	.4byte	0xea3
	.uleb128 0x21
	.4byte	.LVL71
	.4byte	0xeae
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x1
	.byte	0xf8
	.4byte	0xe7
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa3
	.uleb128 0x28
	.4byte	.LASF70
	.byte	0x1
	.byte	0xf8
	.4byte	0xaa3
	.4byte	.LLST10
	.uleb128 0x28
	.4byte	.LASF71
	.byte	0x1
	.byte	0xf8
	.4byte	0xaa9
	.4byte	.LLST11
	.uleb128 0x29
	.string	"err"
	.byte	0x1
	.byte	0xfa
	.4byte	0xe7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2a
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0x9f2
	.uleb128 0x1b
	.string	"err"
	.byte	0x1
	.2byte	0x103
	.4byte	0xe7
	.4byte	.LLST12
	.uleb128 0x16
	.4byte	.LVL81
	.4byte	0x66a
	.4byte	0x9b8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x8000
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x15
	.4byte	.LVL83
	.4byte	0xea3
	.uleb128 0x21
	.4byte	.LVL84
	.4byte	0xeae
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL73
	.4byte	0xeda
	.4byte	0xa19
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x8000
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc00
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL75
	.4byte	0xea3
	.uleb128 0x16
	.4byte	.LVL76
	.4byte	0xeae
	.4byte	0xa50
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC59
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x16
	.4byte	.LVL79
	.4byte	0xf06
	.4byte	0xa6f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL86
	.4byte	0xea3
	.uleb128 0x21
	.4byte	.LVL87
	.4byte	0xeae
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC64
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x17f
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.uleb128 0x2b
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x114
	.4byte	0xe7
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc3
	.uleb128 0x19
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x114
	.4byte	0x25
	.4byte	.LLST13
	.uleb128 0x19
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x114
	.4byte	0xbc3
	.4byte	.LLST14
	.uleb128 0x1b
	.string	"err"
	.byte	0x1
	.2byte	0x116
	.4byte	0xe7
	.4byte	.LLST15
	.uleb128 0x20
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x117
	.4byte	0x35d
	.4byte	.LLST16
	.uleb128 0x2a
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.4byte	0xb43
	.uleb128 0x2c
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x11b
	.4byte	0x2ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x21
	.4byte	.LVL92
	.4byte	0xf11
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL96
	.4byte	0xea3
	.uleb128 0x16
	.4byte	.LVL97
	.4byte	0xeae
	.4byte	0xb80
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC69
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL98
	.4byte	0x66a
	.uleb128 0x15
	.4byte	.LVL100
	.4byte	0xea3
	.uleb128 0x21
	.4byte	.LVL101
	.4byte	0xeae
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC71
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xbc9
	.uleb128 0x6
	.4byte	0x17f
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x1
	.byte	0x9e
	.4byte	0xe7
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd38
	.uleb128 0x28
	.4byte	.LASF78
	.byte	0x1
	.byte	0x9e
	.4byte	0xdc
	.4byte	.LLST17
	.uleb128 0x28
	.4byte	.LASF79
	.byte	0x1
	.byte	0x9e
	.4byte	0x35d
	.4byte	.LLST18
	.uleb128 0x24
	.string	"err"
	.byte	0x1
	.byte	0xa0
	.4byte	0xe7
	.4byte	.LLST19
	.uleb128 0x25
	.4byte	.LASF70
	.byte	0x1
	.byte	0xa1
	.4byte	0xd38
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3120
	.uleb128 0x25
	.4byte	.LASF71
	.byte	0x1
	.byte	0xa2
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x1
	.byte	0xcb
	.4byte	0x25
	.4byte	.LLST20
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x1
	.byte	0xcd
	.4byte	0xdc
	.4byte	.LLST21
	.uleb128 0x14
	.4byte	.LASF82
	.4byte	0xd58
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xc8a
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0xc1
	.4byte	0x25
	.4byte	.LLST22
	.uleb128 0x21
	.4byte	.LVL120
	.4byte	0xaaf
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL108
	.4byte	0xea3
	.uleb128 0x16
	.4byte	.LVL109
	.4byte	0xeae
	.4byte	0xcce
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC74
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL112
	.4byte	0x379
	.uleb128 0x15
	.4byte	.LVL114
	.4byte	0x7f1
	.uleb128 0x16
	.4byte	.LVL117
	.4byte	0x93b
	.4byte	0xcfb
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x73
	.sleb128 3072
	.byte	0
	.uleb128 0x15
	.4byte	.LVL128
	.4byte	0xec4
	.uleb128 0x15
	.4byte	.LVL129
	.4byte	0xea3
	.uleb128 0x21
	.4byte	.LVL130
	.4byte	0xeae
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC78
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x17f
	.4byte	0xd48
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x5f
	.byte	0
	.uleb128 0xa
	.4byte	0xa9
	.4byte	0xd58
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.4byte	0xd48
	.uleb128 0x2d
	.4byte	.LASF84
	.byte	0x1
	.byte	0x28
	.4byte	0xe7
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe19
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0x1
	.byte	0x2a
	.4byte	0xdc
	.4byte	.LLST23
	.uleb128 0x14
	.4byte	.LASF82
	.4byte	0xe29
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x1
	.byte	0x2c
	.4byte	0xdc
	.4byte	.LLST24
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x1
	.byte	0x2d
	.4byte	0x35d
	.4byte	.LLST25
	.uleb128 0x2a
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.4byte	0xe02
	.uleb128 0x13
	.4byte	.LASF86
	.byte	0x1
	.byte	0x32
	.4byte	0x25
	.4byte	.LLST26
	.uleb128 0x15
	.4byte	.LVL147
	.4byte	0xea3
	.uleb128 0x21
	.4byte	.LVL148
	.4byte	0xeae
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC83
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL151
	.4byte	0xbce
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xa9
	.4byte	0xe29
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x22
	.byte	0
	.uleb128 0x6
	.4byte	0xe19
	.uleb128 0x2e
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x157
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe77
	.uleb128 0x20
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x159
	.4byte	0xdc
	.4byte	.LLST27
	.uleb128 0x14
	.4byte	.LASF82
	.4byte	0xe87
	.uleb128 0x20
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x15a
	.4byte	0x35d
	.4byte	.LLST28
	.uleb128 0x15
	.4byte	.LVL155
	.4byte	0xec4
	.byte	0
	.uleb128 0xa
	.4byte	0xa9
	.4byte	0xe87
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x21
	.byte	0
	.uleb128 0x6
	.4byte	0xe77
	.uleb128 0x29
	.string	"TAG"
	.byte	0x1
	.byte	0x1f
	.4byte	0xe9e
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC1
	.byte	0x9f
	.uleb128 0x6
	.4byte	0xb0
	.uleb128 0x2f
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x9
	.byte	0x57
	.uleb128 0x2f
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x9
	.byte	0x6b
	.uleb128 0x2f
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0xa
	.byte	0x5c
	.uleb128 0x2f
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0xa
	.byte	0x2b
	.uleb128 0x2f
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0xb
	.byte	0x8c
	.uleb128 0x2f
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0xc
	.byte	0x4b
	.uleb128 0x2f
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0xc
	.byte	0x66
	.uleb128 0x2f
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0xc
	.byte	0x5d
	.uleb128 0x2f
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x8
	.byte	0xcc
	.uleb128 0x2f
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xd
	.byte	0x26
	.uleb128 0x2f
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x8
	.byte	0xa8
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xa
	.2byte	0x180
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xa
	.2byte	0x380
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xa
	.2byte	0x3c0
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xa
	.2byte	0x3c4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL45
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL54
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL41
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL52
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL43
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL54
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL72
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL72
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL88
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL89
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL89
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL99
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL105
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL99
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL105
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL91
	.4byte	.LVL92-1
	.2byte	0x6
	.byte	0x73
	.sleb128 28
	.byte	0x6
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL94
	.4byte	.LVL96-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
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
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL125
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
	.4byte	.LVL135
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL135
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
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL138
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL107
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115
	.4byte	.LVL131
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL135
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL117
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL120
	.4byte	.LVL128-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL131
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x3
	.byte	0x73
	.sleb128 32
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL131
	.2byte	0x33
	.byte	0x8
	.byte	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x20
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x1f
	.byte	0x1a
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x12
	.byte	0x28
	.2byte	0x6
	.byte	0x13
	.byte	0x8
	.byte	0x20
	.byte	0x2f
	.2byte	0x14
	.byte	0x30
	.byte	0x16
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1a
	.byte	0x28
	.2byte	0x9
	.byte	0x31
	.byte	0x24
	.byte	0x16
	.byte	0x23
	.uleb128 0x1
	.byte	0x16
	.byte	0x2f
	.2byte	0xffef
	.byte	0x13
	.byte	0x96
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL125
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL127
	.4byte	.LVL131
	.2byte	0x38
	.byte	0x31
	.byte	0x4f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x20
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x1f
	.byte	0x1a
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x12
	.byte	0x28
	.2byte	0x6
	.byte	0x13
	.byte	0x8
	.byte	0x20
	.byte	0x2f
	.2byte	0x14
	.byte	0x30
	.byte	0x16
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1a
	.byte	0x28
	.2byte	0x9
	.byte	0x31
	.byte	0x24
	.byte	0x16
	.byte	0x23
	.uleb128 0x1
	.byte	0x16
	.byte	0x2f
	.2byte	0xffef
	.byte	0x13
	.byte	0x96
	.byte	0x1c
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL118
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL137
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL140
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL150
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL141
	.4byte	.LVL142-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL142-1
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL145
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x34
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	0
	.4byte	0
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF43:
	.string	"start_addr"
.LASF36:
	.string	"spi_pin_drv"
.LASF84:
	.string	"esp_flash_encrypt_check_and_update"
.LASF92:
	.string	"bootloader_flash_read"
.LASF31:
	.string	"spi_mode"
.LASF48:
	.string	"image_digest"
.LASF71:
	.string	"num_partitions"
.LASF66:
	.string	"sec_start"
.LASF95:
	.string	"esp_image_verify_bootloader"
.LASF30:
	.string	"segment_count"
.LASF6:
	.string	"short int"
.LASF3:
	.string	"size_t"
.LASF27:
	.string	"label"
.LASF102:
	.string	"flash_failed"
.LASF65:
	.string	"data_length"
.LASF13:
	.string	"sizetype"
.LASF7:
	.string	"__uint16_t"
.LASF9:
	.string	"__uint32_t"
.LASF33:
	.string	"spi_size"
.LASF46:
	.string	"segment_data"
.LASF73:
	.string	"index"
.LASF90:
	.string	"esp_efuse_burn_new_values"
.LASF83:
	.string	"esp_flash_encrypt_region"
.LASF80:
	.string	"ffs_inv"
.LASF42:
	.string	"esp_image_segment_header_t"
.LASF29:
	.string	"esp_partition_info_t"
.LASF57:
	.string	"ESP_LOG_VERBOSE"
.LASF10:
	.string	"long long int"
.LASF74:
	.string	"partition"
.LASF85:
	.string	"efuse_blk0"
.LASF12:
	.string	"long int"
.LASF75:
	.string	"should_encrypt"
.LASF21:
	.string	"offset"
.LASF55:
	.string	"ESP_LOG_INFO"
.LASF18:
	.string	"int32_t"
.LASF64:
	.string	"src_addr"
.LASF4:
	.string	"__uint8_t"
.LASF67:
	.string	"image_length"
.LASF41:
	.string	"data_len"
.LASF23:
	.string	"esp_partition_pos_t"
.LASF69:
	.string	"encrypt_and_load_partition_table"
.LASF97:
	.string	"esp_image_verify"
.LASF5:
	.string	"unsigned char"
.LASF38:
	.string	"hash_appended"
.LASF2:
	.string	"signed char"
.LASF28:
	.string	"flags"
.LASF11:
	.string	"long long unsigned int"
.LASF19:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF17:
	.string	"uint16_t"
.LASF63:
	.string	"new_wdata6"
.LASF100:
	.string	"/home/raphael/rtone/lcd/build/bootloader_support"
.LASF14:
	.string	"long unsigned int"
.LASF32:
	.string	"spi_speed"
.LASF35:
	.string	"wp_pin"
.LASF51:
	.string	"ESP_IMAGE_VERIFY_SILENT"
.LASF50:
	.string	"ESP_IMAGE_VERIFY"
.LASF82:
	.string	"__func__"
.LASF88:
	.string	"esp_log_write"
.LASF61:
	.string	"efuse_key_read_protected"
.LASF40:
	.string	"load_addr"
.LASF15:
	.string	"char"
.LASF25:
	.string	"type"
.LASF86:
	.string	"left"
.LASF52:
	.string	"ESP_LOG_NONE"
.LASF34:
	.string	"entry_addr"
.LASF1:
	.string	"short unsigned int"
.LASF60:
	.string	"dis_reg"
.LASF58:
	.string	"_Bool"
.LASF62:
	.string	"efuse_key_write_protected"
.LASF103:
	.string	"encrypt_bootloader"
.LASF54:
	.string	"ESP_LOG_WARN"
.LASF47:
	.string	"image_len"
.LASF94:
	.string	"bootloader_flash_write"
.LASF101:
	.string	"esp_secure_boot_enabled"
.LASF68:
	.string	"initialise_flash_encryption"
.LASF77:
	.string	"encrypt_flash_contents"
.LASF93:
	.string	"bootloader_flash_erase_sector"
.LASF49:
	.string	"esp_image_metadata_t"
.LASF96:
	.string	"esp_partition_table_verify"
.LASF78:
	.string	"flash_crypt_cnt"
.LASF44:
	.string	"image"
.LASF37:
	.string	"reserved"
.LASF22:
	.string	"size"
.LASF79:
	.string	"flash_crypt_wr_dis"
.LASF104:
	.string	"esp_flash_write_protect_crypt_cnt"
.LASF8:
	.string	"__int32_t"
.LASF76:
	.string	"data_ignored"
.LASF26:
	.string	"subtype"
.LASF16:
	.string	"uint8_t"
.LASF99:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/src/flash_encrypt.c"
.LASF87:
	.string	"esp_log_timestamp"
.LASF56:
	.string	"ESP_LOG_DEBUG"
.LASF45:
	.string	"segments"
.LASF72:
	.string	"encrypt_partition"
.LASF81:
	.string	"new_flash_crypt_cnt"
.LASF24:
	.string	"magic"
.LASF70:
	.string	"partition_table"
.LASF89:
	.string	"esp_efuse_write_random_key"
.LASF91:
	.string	"rtc_wdt_feed"
.LASF98:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF59:
	.string	"coding_scheme"
.LASF53:
	.string	"ESP_LOG_ERROR"
.LASF20:
	.string	"esp_err_t"
.LASF39:
	.string	"esp_image_header_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
