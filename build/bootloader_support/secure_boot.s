	.file	"secure_boot.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"secure_boot"
	.align	4
.LC2:
	.string	"\033[0;31mE (%d) %s: SPI erase failed: 0x%x\033[0m\n"
	.align	4
.LC5:
	.string	"\033[0;31mE (%d) %s: bootloader_mmap(0x1000, 0x%x) failed\033[0m\n"
	.align	4
.LC8:
	.string	"\033[0;31mE (%d) %s: SPI write failed: 0x%x\033[0m\n"
	.section	.text.secure_boot_generate,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC4, 4096
	.literal .LC6, .LC5
	.literal .LC7, 1073061888
	.literal .LC9, .LC8
	.align	4
	.type	secure_boot_generate, @function
secure_boot_generate:
.LFB16:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/src/secure_boot.c"
	.loc 1 47 0
.LVL0:
	entry	sp, 224
.LCFI0:
	.loc 1 55 0
	extui	a3, a2, 0, 7
	beqz.n	a3, .L2
	.loc 1 56 0
	srli	a2, a2, 7
.LVL1:
	addi.n	a2, a2, 1
	slli	a2, a2, 7
.LVL2:
.L2:
	.loc 1 58 0
	call8	ets_secure_boot_start
.LVL3:
	.loc 1 59 0
	mov.n	a10, sp
	call8	ets_secure_boot_rd_iv
.LVL4:
	.loc 1 60 0
	movi.n	a10, 0
	call8	ets_secure_boot_hash
.LVL5:
	.loc 1 62 0
	movi.n	a10, 0
	call8	bootloader_flash_erase_sector
.LVL6:
	mov.n	a3, a10
.LVL7:
	.loc 1 63 0
	beqz.n	a10, .L3
	.loc 1 65 0 discriminator 2
	call8	esp_log_timestamp
.LVL8:
	l32r	a11, .LC1
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC3
	movi.n	a10, 1
	call8	esp_log_write
.LVL9:
	.loc 1 66 0 discriminator 2
	movi.n	a2, 0
.LVL10:
	retw.n
.LVL11:
.L3:
	.loc 1 70 0
	mov.n	a11, a2
	l32r	a10, .LC4
	call8	bootloader_mmap
.LVL12:
	mov.n	a4, a10
.LVL13:
	.loc 1 71 0
	bnez.n	a10, .L11
	.loc 1 72 0 discriminator 2
	call8	esp_log_timestamp
.LVL14:
	l32r	a11, .LC1
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC6
	movi.n	a10, 1
	call8	esp_log_write
.LVL15:
	.loc 1 73 0 discriminator 2
	movi.n	a2, 0
.LVL16:
	retw.n
.LVL17:
.L6:
.LBB32:
	.loc 1 76 0 discriminator 3
	srli	a10, a3, 2
	addx4	a10, a10, a4
	call8	ets_secure_boot_hash
.LVL18:
	.loc 1 75 0 discriminator 3
	movi	a8, 0x80
	add.n	a3, a3, a8
.LVL19:
	j	.L5
.LVL20:
.L11:
.LBE32:
	movi.n	a3, 0
.LVL21:
.L5:
.LBB33:
	.loc 1 75 0 is_stmt 0 discriminator 1
	bltu	a3, a2, .L6
.LBE33:
	.loc 1 78 0 is_stmt 1
	mov.n	a10, a4
	call8	bootloader_munmap
.LVL22:
	.loc 1 80 0
	call8	ets_secure_boot_obtain
.LVL23:
	.loc 1 81 0
	movi	a10, 0x80
	add.n	a10, sp, a10
	call8	ets_secure_boot_rd_abstract
.LVL24:
	.loc 1 82 0
	call8	ets_secure_boot_finish
.LVL25:
.LBB34:
.LBB35:
.LBB36:
.LBB37:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include/esp_flash_encrypt.h"
	.loc 2 39 0
	l32r	a2, .LC7
.LVL26:
	memw
	l32i.n	a8, a2, 0
.LBE37:
	extui	a8, a8, 20, 7
.LVL27:
.LBE36:
	.loc 2 41 0
	movi.n	a13, 0
	j	.L7
.LVL28:
.L9:
	.loc 2 43 0
	bbci	a8, 0, .L8
	.loc 2 44 0
	movi.n	a2, 1
	xor	a13, a13, a2
.LVL29:
	extui	a13, a13, 0, 8
.LVL30:
.L8:
	.loc 2 46 0
	srli	a8, a8, 1
.LVL31:
.L7:
	.loc 2 42 0
	bnez.n	a8, .L9
.LBE35:
.LBE34:
	.loc 1 85 0
	movi	a12, 0xc0
	mov.n	a11, sp
	movi.n	a10, 0
	call8	bootloader_flash_write
.LVL32:
	mov.n	a2, a10
.LVL33:
	.loc 1 87 0
	beqz.n	a10, .L10
	.loc 1 88 0 discriminator 2
	call8	esp_log_timestamp
.LVL34:
	l32r	a11, .LC1
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC9
	movi.n	a10, 1
	call8	esp_log_write
.LVL35:
	.loc 1 89 0 discriminator 2
	movi.n	a2, 0
.LVL36:
	retw.n
.LVL37:
.L10:
.LBB38:
.LBB39:
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/cache.h"
	.loc 3 173 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL38:
	.loc 3 174 0
	movi.n	a10, 0
	call8	Cache_Read_Enable_rom
.LVL39:
	.loc 3 175 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL40:
.LBE39:
.LBE38:
	.loc 1 92 0
	movi.n	a2, 1
.LVL41:
	.loc 1 93 0
	retw.n
.LFE16:
	.size	secure_boot_generate, .-secure_boot_generate
	.section	.rodata.str1.4
	.align	4
.LC12:
	.string	"\033[0;32mI (%d) %s: bootloader secure boot is already enabled, continuing..\033[0m\n"
	.align	4
.LC14:
	.string	"\033[0;31mE (%d) %s: Unknown/unsupported CODING_SCHEME value 0x%x\033[0m\n"
	.align	4
.LC16:
	.string	"\033[0;31mE (%d) %s: bootloader image appears invalid! error %d\033[0m\n"
	.align	4
.LC28:
	.string	"\033[0;32mI (%d) %s: Generating new secure boot key...\033[0m\n"
	.align	4
.LC31:
	.string	"\033[0;32mI (%d) %s: Read & write protecting new key...\033[0m\n"
	.align	4
.LC35:
	.string	"\033[0;33mW (%d) %s: Using pre-loaded secure boot key in EFUSE block 2\033[0m\n"
	.align	4
.LC37:
	.string	"\033[0;32mI (%d) %s: Generating secure boot digest...\033[0m\n"
	.align	4
.LC39:
	.string	"\033[0;31mE (%d) %s: secure boot generation failed\033[0m\n"
	.align	4
.LC41:
	.string	"\033[0;32mI (%d) %s: Digest generation complete.\033[0m\n"
	.align	4
.LC43:
	.string	"\033[0;31mE (%d) %s: Pre-loaded key is not read protected. Refusing to blow secure boot efuse.\033[0m\n"
	.align	4
.LC45:
	.string	"\033[0;31mE (%d) %s: Pre-loaded key is not write protected. Refusing to blow secure boot efuse.\033[0m\n"
	.align	4
.LC47:
	.string	"\033[0;32mI (%d) %s: blowing secure boot efuse...\033[0m\n"
	.align	4
.LC49:
	.string	"\033[0;32mI (%d) %s: Disable JTAG...\033[0m\n"
	.align	4
.LC51:
	.string	"\033[0;32mI (%d) %s: Disable ROM BASIC interpreter fallback...\033[0m\n"
	.align	4
.LC54:
	.string	"\033[0;32mI (%d) %s: secure boot is now enabled for bootloader image\033[0m\n"
	.align	4
.LC56:
	.string	"\033[0;31mE (%d) %s: secure boot not enabled for bootloader image, EFUSE_RD_ABS_DONE_0 is probably write protected!\033[0m\n"
	.section	.text.esp_secure_boot_permanently_enable,"ax",@progbits
	.literal_position
	.literal .LC10, 1073061912
	.literal .LC11, .LC0
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.literal .LC17, .LC16
	.literal .LC18, 1073061888
	.literal .LC19, 131072
	.literal .LC20, 1073061976
	.literal .LC21, 1073061980
	.literal .LC22, 1073061984
	.literal .LC23, 1073061988
	.literal .LC24, 1073061992
	.literal .LC25, 1073061996
	.literal .LC26, 1073062000
	.literal .LC27, 1073062004
	.literal .LC29, .LC28
	.literal .LC30, 1073062072
	.literal .LC32, .LC31
	.literal .LC33, 1073061916
	.literal .LC34, 131328
	.literal .LC36, .LC35
	.literal .LC38, .LC37
	.literal .LC40, .LC39
	.literal .LC42, .LC41
	.literal .LC44, .LC43
	.literal .LC46, .LC45
	.literal .LC48, .LC47
	.literal .LC50, .LC49
	.literal .LC52, .LC51
	.literal .LC53, 1073061940
	.literal .LC55, .LC54
	.literal .LC57, .LC56
	.align	4
	.global	esp_secure_boot_permanently_enable
	.type	esp_secure_boot_permanently_enable, @function
esp_secure_boot_permanently_enable:
.LFB18:
	.loc 1 105 0
	entry	sp, 288
.LCFI1:
.LBB40:
.LBB41:
.LBB42:
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include/esp_secure_boot.h"
	.loc 4 46 0
	l32r	a2, .LC10
	memw
	l32i.n	a2, a2, 0
.LBE42:
.LBE41:
.LBE40:
	.loc 1 107 0
	bbci	a2, 4, .L13
	.loc 1 109 0 discriminator 9
	call8	esp_log_timestamp
.LVL42:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC13
	movi.n	a10, 3
	call8	esp_log_write
.LVL43:
	.loc 1 110 0 discriminator 9
	movi.n	a2, 0
	retw.n
.L13:
.LBB43:
.LBB44:
	.loc 1 113 0
	l32r	a2, .LC10
	memw
	l32i.n	a2, a2, 0
.LBE44:
	extui	a2, a2, 0, 2
.LVL44:
.LBE43:
	.loc 1 114 0
	bltui	a2, 2, .L15
	.loc 1 115 0 discriminator 2
	call8	esp_log_timestamp
.LVL45:
	l32r	a11, .LC11
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC15
	movi.n	a10, 1
	call8	esp_log_write
.LVL46:
	.loc 1 116 0 discriminator 2
	movi	a2, 0x106
.LVL47:
	retw.n
.LVL48:
.L15:
	.loc 1 120 0
	movi	a12, 0x100
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL49:
	.loc 1 121 0
	mov.n	a10, sp
	call8	esp_image_verify_bootloader_data
.LVL50:
	mov.n	a2, a10
.LVL51:
	.loc 1 122 0
	beqz.n	a10, .L16
	.loc 1 123 0 discriminator 2
	call8	esp_log_timestamp
.LVL52:
	l32r	a11, .LC11
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC17
	movi.n	a10, 1
	call8	esp_log_write
.LVL53:
	.loc 1 124 0 discriminator 2
	retw.n
.L16:
.LBB45:
	.loc 1 127 0
	l32r	a2, .LC18
.LVL54:
	memw
	l32i.n	a8, a2, 0
.LVL55:
.LBE45:
	.loc 1 128 0
	l32r	a2, .LC19
	and	a2, a8, a2
	movi.n	a11, 1
	movi.n	a10, 0
.LVL56:
	mov.n	a3, a10
	movnez	a3, a11, a2
	extui	a3, a3, 0, 8
.LVL57:
	.loc 1 129 0
	movi	a9, 0x100
	and	a8, a8, a9
.LVL58:
	mov.n	a4, a10
	movnez	a4, a11, a8
	extui	a4, a4, 0, 8
.LVL59:
	.loc 1 130 0
	mov.n	a5, a10
	moveqz	a5, a11, a2
	.loc 1 131 0
	moveqz	a10, a11, a8
	.loc 1 130 0
	bnone	a10, a5, .L17
.LBB46:
	.loc 1 132 0
	l32r	a2, .LC20
	memw
	l32i.n	a2, a2, 0
.LBE46:
	bnez.n	a2, .L17
.LBB47:
	.loc 1 133 0
	l32r	a2, .LC21
	memw
	l32i.n	a2, a2, 0
.LBE47:
	bnez.n	a2, .L17
.LBB48:
	.loc 1 134 0
	l32r	a2, .LC22
	memw
	l32i.n	a2, a2, 0
.LBE48:
	bnez.n	a2, .L17
.LBB49:
	.loc 1 135 0
	l32r	a2, .LC23
	memw
	l32i.n	a2, a2, 0
.LBE49:
	bnez.n	a2, .L17
.LBB50:
	.loc 1 136 0
	l32r	a2, .LC24
	memw
	l32i.n	a2, a2, 0
.LBE50:
	bnez.n	a2, .L17
.LBB51:
	.loc 1 137 0
	l32r	a2, .LC25
	memw
	l32i.n	a2, a2, 0
.LBE51:
	bnez.n	a2, .L17
.LBB52:
	.loc 1 138 0
	l32r	a2, .LC26
	memw
	l32i.n	a2, a2, 0
.LBE52:
	bnez.n	a2, .L17
.LBB53:
	.loc 1 139 0
	l32r	a2, .LC27
	memw
	l32i.n	a2, a2, 0
.LBE53:
	bnez.n	a2, .L17
	.loc 1 140 0 discriminator 9
	call8	esp_log_timestamp
.LVL60:
	l32r	a2, .LC11
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC29
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL61:
	.loc 1 141 0 discriminator 9
	l32r	a10, .LC30
	call8	esp_efuse_write_random_key
.LVL62:
.LBB54:
.LBB55:
	.loc 1 101 0 discriminator 9
	call8	esp_efuse_burn_new_values
.LVL63:
.LBE55:
.LBE54:
	.loc 1 143 0 discriminator 9
	call8	esp_log_timestamp
.LVL64:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC32
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL65:
.LBB56:
	.loc 1 144 0 discriminator 9
	l32r	a3, .LC34
.LVL66:
	l32r	a2, .LC33
	memw
	s32i.n	a3, a2, 0
.LBE56:
.LBB57:
.LBB58:
	.loc 1 101 0 discriminator 9
	call8	esp_efuse_burn_new_values
.LVL67:
.LBE58:
.LBE57:
	.loc 1 147 0 discriminator 9
	movi.n	a4, 1
	.loc 1 146 0 discriminator 9
	mov.n	a3, a4
	.loc 1 147 0 discriminator 9
	j	.L18
.LVL68:
.L17:
	.loc 1 150 0 discriminator 4
	call8	esp_log_timestamp
.LVL69:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC36
	movi.n	a10, 2
	call8	esp_log_write
.LVL70:
.L18:
	.loc 1 153 0 discriminator 9
	call8	esp_log_timestamp
.LVL71:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC38
	movi.n	a10, 3
	call8	esp_log_write
.LVL72:
	.loc 1 154 0 discriminator 9
	l32i	a10, sp, 220
.LVL73:
	.loc 1 155 0 discriminator 9
	l8ui	a2, sp, 27
	beqz.n	a2, .L19
	.loc 1 157 0
	addi	a10, a10, -32
.LVL74:
.L19:
	.loc 1 159 0
	call8	secure_boot_generate
.LVL75:
	.loc 1 159 0
	bnez.n	a10, .L20
	.loc 1 160 0 discriminator 2
	call8	esp_log_timestamp
.LVL76:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC40
	movi.n	a10, 1
	call8	esp_log_write
.LVL77:
	.loc 1 161 0 discriminator 2
	movi.n	a2, -1
	retw.n
.L20:
	.loc 1 163 0 discriminator 9
	call8	esp_log_timestamp
.LVL78:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC42
	movi.n	a10, 3
	call8	esp_log_write
.LVL79:
	.loc 1 166 0 discriminator 9
	bnez.n	a3, .L21
	.loc 1 167 0 discriminator 2
	call8	esp_log_timestamp
.LVL80:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC44
	movi.n	a10, 1
	call8	esp_log_write
.LVL81:
	.loc 1 168 0 discriminator 2
	movi	a2, 0x103
	retw.n
.L21:
	.loc 1 170 0
	bnez.n	a4, .L22
	.loc 1 171 0 discriminator 2
	call8	esp_log_timestamp
.LVL82:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC46
	movi.n	a10, 1
	call8	esp_log_write
.LVL83:
	.loc 1 172 0 discriminator 2
	movi	a2, 0x103
	retw.n
.L22:
	.loc 1 176 0 discriminator 9
	call8	esp_log_timestamp
.LVL84:
	l32r	a2, .LC11
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC48
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL85:
	.loc 1 182 0 discriminator 9
	call8	esp_log_timestamp
.LVL86:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC50
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL87:
	.loc 1 189 0 discriminator 9
	call8	esp_log_timestamp
.LVL88:
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC52
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL89:
.LBB59:
	.loc 1 195 0 discriminator 9
	movi.n	a3, 0x54
.LVL90:
	l32r	a2, .LC53
	memw
	s32i.n	a3, a2, 0
.LBE59:
.LBB60:
.LBB61:
	.loc 1 101 0 discriminator 9
	call8	esp_efuse_burn_new_values
.LVL91:
.LBE61:
.LBE60:
.LBB62:
	.loc 1 197 0 discriminator 9
	l32r	a2, .LC10
	memw
	l32i.n	a2, a2, 0
.LVL92:
.LBE62:
	.loc 1 199 0 discriminator 9
	bbci	a2, 4, .L23
	.loc 1 200 0 discriminator 9
	call8	esp_log_timestamp
.LVL93:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC55
	movi.n	a10, 3
	call8	esp_log_write
.LVL94:
	.loc 1 201 0 discriminator 9
	movi.n	a2, 0
.LVL95:
	retw.n
.LVL96:
.L23:
	.loc 1 206 0 discriminator 2
	call8	esp_log_timestamp
.LVL97:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC57
	movi.n	a10, 1
	call8	esp_log_write
.LVL98:
	.loc 1 208 0 discriminator 2
	movi	a2, 0x103
.LVL99:
	.loc 1 210 0 discriminator 2
	retw.n
.LFE18:
	.size	esp_secure_boot_permanently_enable, .-esp_secure_boot_permanently_enable
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
	.uleb128 0xe0
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
	.uleb128 0x120
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include/esp_image_format.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/secure_boot.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_dport_access.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include_bootloader/bootloader_flash.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include/esp_efuse.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xba7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xc
	.4byte	.LASF79
	.4byte	.LASF80
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
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x5
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x6
	.4byte	0x93
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x6
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x6
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x6
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x1f
	.4byte	0xf7
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x7
	.byte	0x18
	.4byte	0xb0
	.uleb128 0x9
	.byte	0x18
	.byte	0x8
	.byte	0x3b
	.4byte	0x189
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x8
	.byte	0x3c
	.4byte	0xa5
	.byte	0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x8
	.byte	0x3d
	.4byte	0xa5
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x8
	.byte	0x3f
	.4byte	0xa5
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x8
	.byte	0x41
	.4byte	0xa5
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x8
	.byte	0x43
	.4byte	0xa5
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x8
	.byte	0x44
	.4byte	0xbb
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x8
	.byte	0x47
	.4byte	0xa5
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x8
	.byte	0x49
	.4byte	0x189
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x8
	.byte	0x4b
	.4byte	0x199
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x8
	.byte	0x4f
	.4byte	0xa5
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.4byte	0xa5
	.4byte	0x199
	.uleb128 0xd
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	0xa5
	.4byte	0x1a9
	.uleb128 0xd
	.4byte	0x85
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x8
	.byte	0x50
	.4byte	0x102
	.uleb128 0x9
	.byte	0x8
	.byte	0x8
	.byte	0x57
	.4byte	0x1d5
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x8
	.byte	0x58
	.4byte	0xbb
	.byte	0
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x8
	.byte	0x59
	.4byte	0xbb
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x8
	.byte	0x5a
	.4byte	0x1b4
	.uleb128 0xe
	.2byte	0x100
	.byte	0x8
	.byte	0x5f
	.4byte	0x232
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x8
	.byte	0x60
	.4byte	0xbb
	.byte	0
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x8
	.byte	0x61
	.4byte	0x1a9
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x8
	.byte	0x62
	.4byte	0x232
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x8
	.byte	0x63
	.4byte	0x242
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x8
	.byte	0x64
	.4byte	0xbb
	.byte	0xdc
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x8
	.byte	0x65
	.4byte	0x252
	.byte	0xe0
	.byte	0
	.uleb128 0xc
	.4byte	0x1d5
	.4byte	0x242
	.uleb128 0xd
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.4byte	0xbb
	.4byte	0x252
	.uleb128 0xd
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.4byte	0xa5
	.4byte	0x262
	.uleb128 0xd
	.4byte	0x85
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x8
	.byte	0x66
	.4byte	0x1e0
	.uleb128 0xc
	.4byte	0xa5
	.4byte	0x27d
	.uleb128 0xd
	.4byte	0x85
	.byte	0x3f
	.byte	0
	.uleb128 0x9
	.byte	0xc0
	.byte	0x4
	.byte	0x6b
	.4byte	0x29d
	.uleb128 0xf
	.string	"iv"
	.byte	0x4
	.byte	0x6c
	.4byte	0x29d
	.byte	0
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x4
	.byte	0x6d
	.4byte	0x26d
	.byte	0x80
	.byte	0
	.uleb128 0xc
	.4byte	0xa5
	.4byte	0x2ad
	.uleb128 0xd
	.4byte	0x85
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x4
	.byte	0x6e
	.4byte	0x27d
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x2
	.byte	0x26
	.4byte	0x2ec
	.byte	0x3
	.4byte	0x2ec
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x2
	.byte	0x27
	.4byte	0xbb
	.uleb128 0x12
	.4byte	.LASF48
	.4byte	0x303
	.4byte	.LASF51
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x2
	.byte	0x29
	.4byte	0x2ec
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF50
	.uleb128 0xc
	.4byte	0x93
	.4byte	0x303
	.uleb128 0xd
	.4byte	0x85
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.4byte	0x2f3
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x3
	.byte	0xaa
	.byte	0x3
	.4byte	0x328
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x3
	.byte	0xaa
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x3
	.byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x4
	.byte	0x2d
	.4byte	0x2ec
	.byte	0x3
	.4byte	0x346
	.uleb128 0x12
	.4byte	.LASF48
	.4byte	0x356
	.4byte	.LASF52
	.byte	0
	.uleb128 0xc
	.4byte	0x93
	.4byte	0x356
	.uleb128 0xd
	.4byte	0x85
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.4byte	0x346
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x1
	.byte	0x60
	.byte	0x3
	.uleb128 0x17
	.4byte	.LASF84
	.byte	0x1
	.byte	0x2f
	.4byte	0x2ec
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d0
	.uleb128 0x18
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2f
	.4byte	0xbb
	.4byte	.LLST0
	.uleb128 0x19
	.string	"err"
	.byte	0x1
	.byte	0x30
	.4byte	0xf7
	.4byte	.LLST1
	.uleb128 0x1a
	.4byte	.LASF45
	.byte	0x1
	.byte	0x31
	.4byte	0x2ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1a
	.4byte	.LASF39
	.byte	0x1
	.byte	0x32
	.4byte	0x5d0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0
	.4byte	0x3e4
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x4b
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x1c
	.4byte	.LVL18
	.4byte	0xadb
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0x2b8
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.byte	0x56
	.4byte	0x419
	.uleb128 0x1f
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.uleb128 0x20
	.4byte	0x2c8
	.4byte	.LLST3
	.uleb128 0x20
	.4byte	0x2e0
	.4byte	.LLST4
	.uleb128 0x21
	.4byte	0x2d3
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0x308
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.byte	0x5b
	.4byte	0x462
	.uleb128 0x22
	.4byte	0x314
	.byte	0
	.uleb128 0x1f
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.uleb128 0x23
	.4byte	.LVL38
	.4byte	0xae6
	.uleb128 0x24
	.4byte	.LVL39
	.4byte	0xaf1
	.4byte	0x457
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.4byte	.LVL40
	.4byte	0xafc
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL3
	.4byte	0xb07
	.uleb128 0x24
	.4byte	.LVL4
	.4byte	0xb12
	.4byte	0x480
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x24
	.4byte	.LVL5
	.4byte	0xadb
	.4byte	0x493
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL6
	.4byte	0xb1d
	.4byte	0x4a6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.4byte	.LVL8
	.4byte	0xb28
	.uleb128 0x24
	.4byte	.LVL9
	.4byte	0xb33
	.4byte	0x4e3
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL12
	.4byte	0xb3e
	.4byte	0x4fe
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL14
	.4byte	0xb28
	.uleb128 0x24
	.4byte	.LVL15
	.4byte	0xb33
	.4byte	0x53b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL22
	.4byte	0xb49
	.4byte	0x54f
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL23
	.4byte	0xb54
	.uleb128 0x24
	.4byte	.LVL24
	.4byte	0xb5f
	.4byte	0x56d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x23
	.4byte	.LVL25
	.4byte	0xb6a
	.uleb128 0x24
	.4byte	.LVL32
	.4byte	0xb75
	.4byte	0x596
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xc0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL34
	.4byte	0xb28
	.uleb128 0x1c
	.4byte	.LVL35
	.4byte	0xb33
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5d6
	.uleb128 0x6
	.4byte	0xbb
	.uleb128 0x25
	.4byte	.LASF85
	.byte	0x1
	.byte	0x69
	.4byte	0xf7
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaaf
	.uleb128 0x19
	.string	"err"
	.byte	0x1
	.byte	0x6a
	.4byte	0xf7
	.4byte	.LLST5
	.uleb128 0x26
	.4byte	.LASF53
	.byte	0x1
	.byte	0x71
	.4byte	0xbb
	.4byte	.LLST6
	.uleb128 0x27
	.4byte	.LASF48
	.4byte	0xabf
	.uleb128 0x1a
	.4byte	.LASF54
	.byte	0x1
	.byte	0x78
	.4byte	0x262
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x26
	.4byte	.LASF55
	.byte	0x1
	.byte	0x7f
	.4byte	0xbb
	.4byte	.LLST7
	.uleb128 0x26
	.4byte	.LASF56
	.byte	0x1
	.byte	0x80
	.4byte	0x2ec
	.4byte	.LLST8
	.uleb128 0x26
	.4byte	.LASF57
	.byte	0x1
	.byte	0x81
	.4byte	0x2ec
	.4byte	.LLST9
	.uleb128 0x26
	.4byte	.LASF42
	.byte	0x1
	.byte	0x9a
	.4byte	0xbb
	.4byte	.LLST10
	.uleb128 0x26
	.4byte	.LASF58
	.byte	0x1
	.byte	0xb3
	.4byte	0xbb
	.4byte	.LLST11
	.uleb128 0x26
	.4byte	.LASF59
	.byte	0x1
	.byte	0xc5
	.4byte	0xbb
	.4byte	.LLST12
	.uleb128 0x1e
	.4byte	0x328
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x1
	.byte	0x6b
	.4byte	0x6a7
	.uleb128 0x1f
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.uleb128 0x21
	.4byte	0x338
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0x35b
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x1
	.byte	0x8e
	.4byte	0x6c4
	.uleb128 0x23
	.4byte	.LVL63
	.4byte	0xb80
	.byte	0
	.uleb128 0x1e
	.4byte	0x35b
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.byte	0x1
	.byte	0x91
	.4byte	0x6e1
	.uleb128 0x23
	.4byte	.LVL67
	.4byte	0xb80
	.byte	0
	.uleb128 0x1e
	.4byte	0x35b
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.byte	0x1
	.byte	0xc4
	.4byte	0x6fe
	.uleb128 0x23
	.4byte	.LVL91
	.4byte	0xb80
	.byte	0
	.uleb128 0x23
	.4byte	.LVL42
	.4byte	0xb28
	.uleb128 0x24
	.4byte	.LVL43
	.4byte	0xb33
	.4byte	0x735
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL45
	.4byte	0xb28
	.uleb128 0x24
	.4byte	.LVL46
	.4byte	0xb33
	.4byte	0x772
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL49
	.4byte	0xb8b
	.4byte	0x793
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x24
	.4byte	.LVL50
	.4byte	0xb94
	.4byte	0x7a8
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.uleb128 0x23
	.4byte	.LVL52
	.4byte	0xb28
	.uleb128 0x24
	.4byte	.LVL53
	.4byte	0xb33
	.4byte	0x7e5
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL60
	.4byte	0xb28
	.uleb128 0x24
	.4byte	.LVL61
	.4byte	0xb33
	.4byte	0x816
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL62
	.4byte	0xb9f
	.4byte	0x82d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff5a0b8
	.byte	0
	.uleb128 0x23
	.4byte	.LVL64
	.4byte	0xb28
	.uleb128 0x24
	.4byte	.LVL65
	.4byte	0xb33
	.4byte	0x85e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL69
	.4byte	0xb28
	.uleb128 0x24
	.4byte	.LVL70
	.4byte	0xb33
	.4byte	0x895
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL71
	.4byte	0xb28
	.uleb128 0x24
	.4byte	.LVL72
	.4byte	0xb33
	.4byte	0x8cc
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL75
	.4byte	0x363
	.uleb128 0x23
	.4byte	.LVL76
	.4byte	0xb28
	.uleb128 0x24
	.4byte	.LVL77
	.4byte	0xb33
	.4byte	0x90c
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL78
	.4byte	0xb28
	.uleb128 0x24
	.4byte	.LVL79
	.4byte	0xb33
	.4byte	0x943
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL80
	.4byte	0xb28
	.uleb128 0x24
	.4byte	.LVL81
	.4byte	0xb33
	.4byte	0x97a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL82
	.4byte	0xb28
	.uleb128 0x24
	.4byte	.LVL83
	.4byte	0xb33
	.4byte	0x9b1
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL84
	.4byte	0xb28
	.uleb128 0x24
	.4byte	.LVL85
	.4byte	0xb33
	.4byte	0x9e2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL86
	.4byte	0xb28
	.uleb128 0x24
	.4byte	.LVL87
	.4byte	0xb33
	.4byte	0xa13
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL88
	.4byte	0xb28
	.uleb128 0x24
	.4byte	.LVL89
	.4byte	0xb33
	.4byte	0xa44
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC51
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL93
	.4byte	0xb28
	.uleb128 0x24
	.4byte	.LVL94
	.4byte	0xb33
	.4byte	0xa7b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL97
	.4byte	0xb28
	.uleb128 0x1c
	.4byte	.LVL98
	.4byte	0xb33
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x93
	.4byte	0xabf
	.uleb128 0xd
	.4byte	0x85
	.byte	0x22
	.byte	0
	.uleb128 0x6
	.4byte	0xaaf
	.uleb128 0x28
	.string	"TAG"
	.byte	0x1
	.byte	0x27
	.4byte	0xad6
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x6
	.4byte	0x9a
	.uleb128 0x29
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x9
	.byte	0x1c
	.uleb128 0x29
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0xa
	.byte	0x18
	.uleb128 0x29
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x3
	.byte	0xac
	.uleb128 0x29
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0xa
	.byte	0x19
	.uleb128 0x29
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x9
	.byte	0x18
	.uleb128 0x29
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x9
	.byte	0x22
	.uleb128 0x29
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0xb
	.byte	0x66
	.uleb128 0x29
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0xc
	.byte	0x57
	.uleb128 0x29
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0xc
	.byte	0x6b
	.uleb128 0x29
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0xb
	.byte	0x32
	.uleb128 0x29
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0xb
	.byte	0x3a
	.uleb128 0x29
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x9
	.byte	0x1e
	.uleb128 0x29
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x9
	.byte	0x24
	.uleb128 0x29
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x9
	.byte	0x1a
	.uleb128 0x29
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0xb
	.byte	0x5d
	.uleb128 0x29
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0xd
	.byte	0x2b
	.uleb128 0x2a
	.4byte	.LASF86
	.4byte	.LASF86
	.uleb128 0x29
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x8
	.byte	0xd5
	.uleb128 0x29
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0xd
	.byte	0x5c
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL27
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL30
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL57
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL59
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL73
	.4byte	.LVL75-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x3
	.byte	0x8
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LFE18
	.2byte	0x3
	.byte	0x8
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.string	"start_addr"
.LASF31:
	.string	"spi_pin_drv"
.LASF54:
	.string	"bootloader_data"
.LASF26:
	.string	"spi_mode"
.LASF43:
	.string	"image_digest"
.LASF76:
	.string	"esp_image_verify_bootloader_data"
.LASF25:
	.string	"segment_count"
.LASF4:
	.string	"short int"
.LASF11:
	.string	"sizetype"
.LASF7:
	.string	"__uint32_t"
.LASF28:
	.string	"spi_size"
.LASF71:
	.string	"ets_secure_boot_obtain"
.LASF45:
	.string	"digest"
.LASF14:
	.string	"uint8_t"
.LASF75:
	.string	"esp_efuse_burn_new_values"
.LASF81:
	.string	"Cache_Read_Enable"
.LASF51:
	.string	"esp_flash_encryption_enabled"
.LASF37:
	.string	"esp_image_segment_header_t"
.LASF8:
	.string	"long long int"
.LASF86:
	.string	"memset"
.LASF10:
	.string	"long int"
.LASF73:
	.string	"ets_secure_boot_finish"
.LASF20:
	.string	"ESP_LOG_INFO"
.LASF62:
	.string	"Cache_Read_Enable_rom"
.LASF5:
	.string	"__uint8_t"
.LASF30:
	.string	"wp_pin"
.LASF36:
	.string	"data_len"
.LASF64:
	.string	"ets_secure_boot_start"
.LASF72:
	.string	"ets_secure_boot_rd_abstract"
.LASF3:
	.string	"unsigned char"
.LASF59:
	.string	"after"
.LASF85:
	.string	"esp_secure_boot_permanently_enable"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF16:
	.string	"uint32_t"
.LASF82:
	.string	"cpu_no"
.LASF0:
	.string	"unsigned int"
.LASF58:
	.string	"new_wdata6"
.LASF80:
	.string	"/home/raphael/rtone/lcd/build/bootloader_support"
.LASF12:
	.string	"long unsigned int"
.LASF27:
	.string	"spi_speed"
.LASF41:
	.string	"segment_data"
.LASF48:
	.string	"__func__"
.LASF68:
	.string	"esp_log_write"
.LASF56:
	.string	"efuse_key_read_protected"
.LASF70:
	.string	"bootloader_munmap"
.LASF83:
	.string	"burn_efuses"
.LASF13:
	.string	"char"
.LASF21:
	.string	"ESP_LOG_DEBUG"
.LASF15:
	.string	"int32_t"
.LASF17:
	.string	"ESP_LOG_NONE"
.LASF29:
	.string	"entry_addr"
.LASF1:
	.string	"short unsigned int"
.LASF55:
	.string	"dis_reg"
.LASF50:
	.string	"_Bool"
.LASF57:
	.string	"efuse_key_write_protected"
.LASF52:
	.string	"esp_secure_boot_enabled"
.LASF19:
	.string	"ESP_LOG_WARN"
.LASF42:
	.string	"image_len"
.LASF74:
	.string	"bootloader_flash_write"
.LASF46:
	.string	"esp_secure_boot_iv_digest_t"
.LASF66:
	.string	"bootloader_flash_erase_sector"
.LASF44:
	.string	"esp_image_metadata_t"
.LASF47:
	.string	"flash_crypt_cnt"
.LASF39:
	.string	"image"
.LASF32:
	.string	"reserved"
.LASF65:
	.string	"ets_secure_boot_rd_iv"
.LASF22:
	.string	"ESP_LOG_VERBOSE"
.LASF6:
	.string	"__int32_t"
.LASF33:
	.string	"hash_appended"
.LASF49:
	.string	"enabled"
.LASF67:
	.string	"esp_log_timestamp"
.LASF61:
	.string	"esp_dport_access_stall_other_cpu_start"
.LASF40:
	.string	"segments"
.LASF60:
	.string	"ets_secure_boot_hash"
.LASF24:
	.string	"magic"
.LASF77:
	.string	"esp_efuse_write_random_key"
.LASF78:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF53:
	.string	"coding_scheme"
.LASF63:
	.string	"esp_dport_access_stall_other_cpu_end"
.LASF18:
	.string	"ESP_LOG_ERROR"
.LASF35:
	.string	"load_addr"
.LASF84:
	.string	"secure_boot_generate"
.LASF23:
	.string	"esp_err_t"
.LASF79:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/src/secure_boot.c"
.LASF69:
	.string	"bootloader_mmap"
.LASF34:
	.string	"esp_image_header_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
