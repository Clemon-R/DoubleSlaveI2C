	.file	"vfs_fat_spiflash.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"vfs_fat_spiflash"
	.align	4
.LC2:
	.string	"\033[0;31mE (%d) %s: Failed to find FATFS partition (type='data', subtype='fat', partition_label='%s'). Check the partition table.\033[0m\n"
	.align	4
.LC4:
	.string	"\033[0;31mE (%d) %s: failed to mount wear levelling layer. result = %i\033[0m\n"
	.align	4
.LC6:
	.string	"\033[0;31mE (%d) %s: ff_diskio_register_wl_partition failed pdrv=%i, error - 0x(%x)\033[0m\n"
	.align	4
.LC8:
	.string	"\033[0;33mW (%d) %s: f_mount failed (%d)\033[0m\n"
	.align	4
.LC12:
	.string	"\033[0;32mI (%d) %s: Formatting FATFS partition, allocation unit size=%d\033[0m\n"
	.align	4
.LC14:
	.string	"\033[0;31mE (%d) %s: f_mkfs failed (%d)\033[0m\n"
	.align	4
.LC16:
	.string	"\033[0;32mI (%d) %s: Mounting again\033[0m\n"
	.align	4
.LC18:
	.string	"\033[0;31mE (%d) %s: f_mount failed after formatting (%d)\033[0m\n"
	.section	.text.esp_vfs_fat_spiflash_mount,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.literal .LC10, 4096
	.literal .LC11, 524288
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.literal .LC17, .LC16
	.literal .LC19, .LC18
	.align	4
	.global	esp_vfs_fat_spiflash_mount
	.type	esp_vfs_fat_spiflash_mount, @function
esp_vfs_fat_spiflash_mount:
.LFB22:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/fatfs/src/vfs_fat_spiflash.c"
	.loc 1 33 0
.LVL0:
	entry	sp, 64
.LCFI0:
	mov.n	a6, a2
.LVL1:
	.loc 1 38 0
	beqz.n	a3, .L10
	movi	a11, 0xff
	j	.L2
.L10:
	movi	a11, 0x81
.L2:
.LVL2:
	.loc 1 40 0 discriminator 4
	mov.n	a12, a3
	movi.n	a10, 1
	call8	esp_partition_find_first
.LVL3:
	.loc 1 42 0 discriminator 4
	bnez.n	a10, .L3
	.loc 1 43 0 discriminator 2
	call8	esp_log_timestamp
.LVL4:
	l32r	a11, .LC1
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC3
	movi.n	a10, 1
	call8	esp_log_write
.LVL5:
	.loc 1 44 0 discriminator 2
	movi	a2, 0x105
.LVL6:
	retw.n
.LVL7:
.L3:
	.loc 1 47 0
	mov.n	a11, a5
	call8	wl_mount
.LVL8:
	mov.n	a2, a10
.LVL9:
	.loc 1 48 0
	beqz.n	a10, .L5
	.loc 1 49 0 discriminator 2
	call8	esp_log_timestamp
.LVL10:
	l32r	a11, .LC1
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC5
	movi.n	a10, 1
	call8	esp_log_write
.LVL11:
	.loc 1 50 0 discriminator 2
	retw.n
.L5:
	.loc 1 53 0
	movi.n	a2, -1
.LVL12:
	s8i	a2, sp, 16
	.loc 1 54 0
	addi	a10, sp, 16
.LVL13:
	call8	ff_diskio_get_drive
.LVL14:
	mov.n	a2, a10
	bnez.n	a10, .L11
	.loc 1 59 0
	l8ui	a10, sp, 16
	addi	a3, a10, 48
.LVL15:
	s8i	a3, sp, 17
	movi.n	a3, 0x3a
	s8i	a3, sp, 18
	movi.n	a3, 0
	s8i	a3, sp, 19
	.loc 1 61 0
	l32i.n	a11, a5, 0
	call8	ff_diskio_register_wl_partition
.LVL16:
	mov.n	a3, a10
.LVL17:
	.loc 1 62 0
	beqz.n	a10, .L6
	.loc 1 63 0 discriminator 2
	call8	esp_log_timestamp
.LVL18:
	l8ui	a15, sp, 16
	l32r	a11, .LC1
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC7
	movi.n	a10, 1
	call8	esp_log_write
.LVL19:
	.loc 1 36 0 discriminator 2
	movi.n	a5, 0
.LVL20:
	.loc 1 64 0 discriminator 2
	j	.L7
.LVL21:
.L6:
	.loc 1 67 0
	addi	a13, sp, 20
	l32i.n	a12, a4, 4
	addi	a11, sp, 17
	mov.n	a10, a6
	call8	esp_vfs_fat_register
.LVL22:
	mov.n	a3, a10
.LVL23:
	.loc 1 68 0
	movi	a5, 0x103
.LVL24:
	beq	a10, a5, .L8
	.loc 1 70 0
	bnez.n	a10, .L12
.L8:
	.loc 1 76 0
	movi.n	a12, 1
	addi	a11, sp, 17
	l32i.n	a10, sp, 20
	call8	f_mount
.LVL25:
	mov.n	a3, a10
.LVL26:
	.loc 1 77 0
	beqz.n	a10, .L4
.LBB5:
	.loc 1 78 0 discriminator 4
	call8	esp_log_timestamp
.LVL27:
	l32r	a11, .LC1
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC9
	movi.n	a10, 2
	call8	esp_log_write
.LVL28:
	.loc 1 79 0 discriminator 4
	movi.n	a5, 0xd
	bne	a3, a5, .L13
	.loc 1 79 0 is_stmt 0 discriminator 1
	l8ui	a3, a4, 0
.LVL29:
	beqz.n	a3, .L14
	.loc 1 83 0 is_stmt 1
	l32r	a10, .LC10
	call8	malloc
.LVL30:
	mov.n	a5, a10
.LVL31:
	.loc 1 84 0
	beqz.n	a10, .L15
	.loc 1 88 0
	l32i.n	a3, a4, 8
.LVL32:
.LBB6:
.LBB7:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/fatfs/src/vfs_fat_internal.h"
	.loc 2 27 0
	l32r	a4, .LC10
.LVL33:
	maxu	a8, a3, a4
.LVL34:
	.loc 2 28 0
	l32r	a3, .LC11
.LVL35:
	minu	a3, a8, a3
.LVL36:
.LBE7:
.LBE6:
	.loc 1 91 0
	call8	esp_log_timestamp
.LVL37:
	l32r	a11, .LC1
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC13
	movi.n	a10, 3
	call8	esp_log_write
.LVL38:
	.loc 1 92 0
	mov.n	a14, a4
	mov.n	a13, a5
	mov.n	a12, a3
	movi.n	a11, 0xf
	addi	a10, sp, 17
	call8	f_mkfs
.LVL39:
	mov.n	a3, a10
.LVL40:
	.loc 1 93 0
	beqz.n	a10, .L9
.LVL41:
	.loc 1 95 0
	call8	esp_log_timestamp
.LVL42:
	l32r	a11, .LC1
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC15
	movi.n	a10, 1
	call8	esp_log_write
.LVL43:
	.loc 1 94 0
	movi.n	a3, -1
.LVL44:
	j	.L7
.LVL45:
.L9:
	.loc 1 98 0
	mov.n	a10, a5
	call8	free
.LVL46:
	.loc 1 100 0
	call8	esp_log_timestamp
.LVL47:
	l32r	a11, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC17
	movi.n	a10, 3
	call8	esp_log_write
.LVL48:
	.loc 1 101 0
	movi.n	a12, 0
	addi	a11, sp, 17
	l32i.n	a10, sp, 20
	call8	f_mount
.LVL49:
	mov.n	a3, a10
.LVL50:
	.loc 1 102 0
	beqz.n	a10, .L4
.LVL51:
	.loc 1 104 0
	call8	esp_log_timestamp
.LVL52:
	l32r	a11, .LC1
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC19
	movi.n	a10, 1
	call8	esp_log_write
.LVL53:
	.loc 1 99 0
	movi.n	a5, 0
	.loc 1 103 0
	movi.n	a3, -1
.LVL54:
	j	.L7
.LVL55:
.L12:
.LBE5:
	.loc 1 36 0
	movi.n	a5, 0
	j	.L7
.LVL56:
.L13:
	movi.n	a5, 0
.LBB8:
	.loc 1 80 0
	movi.n	a3, -1
.LVL57:
	j	.L7
.L14:
.LBE8:
	.loc 1 36 0
	movi.n	a5, 0
.LBB9:
	.loc 1 80 0
	movi.n	a3, -1
	j	.L7
.LVL58:
.L15:
	.loc 1 85 0
	movi	a3, 0x101
.LVL59:
.L7:
.LBE9:
	.loc 1 111 0
	mov.n	a10, a5
	call8	free
.LVL60:
	.loc 1 112 0
	mov.n	a10, a6
	call8	esp_vfs_fat_unregister_path
.LVL61:
	.loc 1 113 0
	movi.n	a11, 0
	l8ui	a10, sp, 16
	call8	ff_diskio_register
.LVL62:
	.loc 1 114 0
	mov.n	a2, a3
	retw.n
.LVL63:
.L11:
	.loc 1 56 0
	movi	a2, 0x101
.LVL64:
.L4:
	.loc 1 115 0
	retw.n
.LFE22:
	.size	esp_vfs_fat_spiflash_mount, .-esp_vfs_fat_spiflash_mount
	.section	.text.esp_vfs_fat_spiflash_unmount,"ax",@progbits
	.align	4
	.global	esp_vfs_fat_spiflash_unmount
	.type	esp_vfs_fat_spiflash_unmount, @function
esp_vfs_fat_spiflash_unmount:
.LFB23:
	.loc 1 118 0
.LVL65:
	entry	sp, 48
.LCFI1:
	.loc 1 119 0
	mov.n	a10, a3
	call8	ff_diskio_get_pdrv_wl
.LVL66:
	mov.n	a4, a10
.LVL67:
	.loc 1 120 0
	movi	a8, 0xff
	beq	a10, a8, .L18
	.loc 1 123 0
	addi	a8, a10, 48
	s8i	a8, sp, 0
	movi.n	a8, 0x3a
	s8i	a8, sp, 1
	movi.n	a8, 0
	s8i	a8, sp, 2
	.loc 1 125 0
	movi.n	a12, 0
	mov.n	a11, sp
	mov.n	a10, a12
	call8	f_mount
.LVL68:
	.loc 1 126 0
	movi.n	a11, 0
	mov.n	a10, a4
	call8	ff_diskio_register
.LVL69:
	.loc 1 127 0
	mov.n	a10, a3
	call8	ff_diskio_clear_pdrv_wl
.LVL70:
	.loc 1 129 0
	mov.n	a10, a3
	call8	wl_unmount
.LVL71:
	mov.n	a3, a10
.LVL72:
	.loc 1 130 0
	mov.n	a10, a2
	call8	esp_vfs_fat_unregister_path
.LVL73:
	.loc 1 131 0
	beqz.n	a10, .L19
	.loc 1 130 0
	mov.n	a2, a10
.LVL74:
	retw.n
.LVL75:
.L18:
	.loc 1 121 0
	movi	a2, 0x103
.LVL76:
	retw.n
.LVL77:
.L19:
	.loc 1 131 0
	mov.n	a2, a3
.LVL78:
	.loc 1 133 0
	retw.n
.LFE23:
	.size	esp_vfs_fat_spiflash_unmount, .-esp_vfs_fat_spiflash_unmount
	.section	.rodata.str1.4
	.align	4
.LC22:
	.string	"\033[0;31mE (%d) %s: ff_diskio_register_raw_partition failed pdrv=%i, error - 0x(%x)\033[0m\n"
	.section	.text.esp_vfs_fat_rawflash_mount,"ax",@progbits
	.literal_position
	.literal .LC20, .LC0
	.literal .LC21, .LC2
	.literal .LC23, .LC22
	.literal .LC24, .LC8
	.align	4
	.global	esp_vfs_fat_rawflash_mount
	.type	esp_vfs_fat_rawflash_mount, @function
esp_vfs_fat_rawflash_mount:
.LFB24:
	.loc 1 138 0
.LVL79:
	entry	sp, 64
.LCFI2:
	mov.n	a6, a2
.LVL80:
	.loc 1 141 0
	mov.n	a12, a3
	movi	a11, 0x81
	movi.n	a10, 1
	call8	esp_partition_find_first
.LVL81:
	mov.n	a5, a10
.LVL82:
	.loc 1 143 0
	bnez.n	a10, .L21
	.loc 1 144 0 discriminator 2
	call8	esp_log_timestamp
.LVL83:
	l32r	a11, .LC20
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC21
	movi.n	a10, 1
	call8	esp_log_write
.LVL84:
	.loc 1 145 0 discriminator 2
	movi	a2, 0x105
.LVL85:
	retw.n
.LVL86:
.L21:
	.loc 1 149 0
	movi.n	a2, -1
.LVL87:
	s8i	a2, sp, 16
	.loc 1 150 0
	addi	a10, sp, 16
	call8	ff_diskio_get_drive
.LVL88:
	mov.n	a2, a10
	bnez.n	a10, .L26
	.loc 1 155 0
	l8ui	a10, sp, 16
	addi	a3, a10, 48
.LVL89:
	s8i	a3, sp, 17
	movi.n	a3, 0x3a
	s8i	a3, sp, 18
	movi.n	a3, 0
	s8i	a3, sp, 19
	.loc 1 157 0
	mov.n	a11, a5
	call8	ff_diskio_register_raw_partition
.LVL90:
	mov.n	a3, a10
.LVL91:
	.loc 1 158 0
	beqz.n	a10, .L23
	.loc 1 159 0 discriminator 2
	call8	esp_log_timestamp
.LVL92:
	l8ui	a15, sp, 16
	l32r	a11, .LC20
	s32i.n	a3, sp, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC23
	movi.n	a10, 1
	call8	esp_log_write
.LVL93:
	.loc 1 160 0 discriminator 2
	j	.L24
.L23:
	.loc 1 164 0
	addi	a13, sp, 20
	l32i.n	a12, a4, 4
	addi	a11, sp, 17
	mov.n	a10, a6
	call8	esp_vfs_fat_register
.LVL94:
	mov.n	a3, a10
.LVL95:
	.loc 1 165 0
	movi	a4, 0x103
.LVL96:
	beq	a10, a4, .L25
	.loc 1 167 0
	bnez.n	a10, .L24
.L25:
	.loc 1 173 0
	movi.n	a12, 1
	addi	a11, sp, 17
	l32i.n	a10, sp, 20
	call8	f_mount
.LVL97:
	mov.n	a3, a10
.LVL98:
	.loc 1 174 0
	beqz.n	a10, .L22
	.loc 1 175 0 discriminator 4
	call8	esp_log_timestamp
.LVL99:
	l32r	a11, .LC20
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC24
	movi.n	a10, 2
	call8	esp_log_write
.LVL100:
	.loc 1 176 0 discriminator 4
	movi.n	a3, -1
.LVL101:
.L24:
	.loc 1 182 0
	mov.n	a10, a6
	call8	esp_vfs_fat_unregister_path
.LVL102:
	.loc 1 183 0
	movi.n	a11, 0
	l8ui	a10, sp, 16
	call8	ff_diskio_register
.LVL103:
	.loc 1 184 0
	mov.n	a2, a3
	retw.n
.LVL104:
.L26:
	.loc 1 152 0
	movi	a2, 0x101
.LVL105:
.L22:
	.loc 1 185 0
	retw.n
.LFE24:
	.size	esp_vfs_fat_rawflash_mount, .-esp_vfs_fat_rawflash_mount
	.section	.text.esp_vfs_fat_rawflash_unmount,"ax",@progbits
	.literal_position
	.literal .LC25, .LC0
	.literal .LC26, .LC2
	.align	4
	.global	esp_vfs_fat_rawflash_unmount
	.type	esp_vfs_fat_rawflash_unmount, @function
esp_vfs_fat_rawflash_unmount:
.LFB25:
	.loc 1 189 0
.LVL106:
	entry	sp, 48
.LCFI3:
	.loc 1 190 0
	mov.n	a12, a3
	movi	a11, 0x81
	movi.n	a10, 1
	call8	esp_partition_find_first
.LVL107:
	.loc 1 193 0
	bnez.n	a10, .L28
	.loc 1 194 0 discriminator 2
	call8	esp_log_timestamp
.LVL108:
	l32r	a11, .LC25
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC26
	movi.n	a10, 1
	call8	esp_log_write
.LVL109:
	.loc 1 195 0 discriminator 2
	movi	a2, 0x105
.LVL110:
	retw.n
.LVL111:
.L28:
	.loc 1 198 0
	call8	ff_diskio_get_pdrv_raw
.LVL112:
	mov.n	a3, a10
.LVL113:
	.loc 1 199 0
	movi	a8, 0xff
	beq	a10, a8, .L30
	.loc 1 202 0
	addi	a8, a10, 48
	s8i	a8, sp, 0
	movi.n	a8, 0x3a
	s8i	a8, sp, 1
	movi.n	a8, 0
	s8i	a8, sp, 2
	.loc 1 204 0
	movi.n	a12, 0
	mov.n	a11, sp
	mov.n	a10, a12
	call8	f_mount
.LVL114:
	.loc 1 205 0
	movi.n	a11, 0
	mov.n	a10, a3
	call8	ff_diskio_register
.LVL115:
	.loc 1 206 0
	mov.n	a10, a2
	call8	esp_vfs_fat_unregister_path
.LVL116:
	mov.n	a2, a10
.LVL117:
	.loc 1 207 0
	retw.n
.LVL118:
.L30:
	.loc 1 200 0
	movi	a2, 0x103
.LVL119:
	.loc 1 208 0
	retw.n
.LFE25:
	.size	esp_vfs_fat_rawflash_unmount, .-esp_vfs_fat_rawflash_unmount
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI0-.LFB22
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI1-.LFB23
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 3 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/queue.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/fatfs/src/integer.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/fatfs/src/ff.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/include/esp_partition.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/wear_levelling/include/wear_levelling.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/fatfs/src/esp_vfs_fat.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.file 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/fatfs/src/diskio.h"
	.file 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/fatfs/src/diskio_wl.h"
	.file 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/fatfs/src/diskio_rawflash.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe2f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0xc
	.4byte	.LASF154
	.4byte	.LASF155
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF5
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x4
	.byte	0x19
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x4
	.byte	0x1a
	.4byte	0x30
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
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x7
	.4byte	0x95
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x5
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x5
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x8
	.byte	0x4
	.4byte	0x30
	.byte	0xb
	.byte	0x1f
	.4byte	0xee
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x6
	.byte	0x18
	.4byte	0xa7
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF23
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x7
	.byte	0x58
	.4byte	0x8c
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x8
	.byte	0x4f
	.4byte	0x100
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF26
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x9
	.byte	0x16
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x9
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x9
	.byte	0x1f
	.4byte	0x8e
	.uleb128 0xa
	.2byte	0x1038
	.byte	0xa
	.byte	0x5a
	.4byte	0x237
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0xa
	.byte	0x5b
	.4byte	0x11d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0xa
	.byte	0x5c
	.4byte	0x11d
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0xa
	.byte	0x5d
	.4byte	0x11d
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0xa
	.byte	0x5e
	.4byte	0x11d
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0xa
	.byte	0x5f
	.4byte	0x11d
	.byte	0x4
	.uleb128 0xc
	.string	"id"
	.byte	0xa
	.byte	0x60
	.4byte	0x128
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0xa
	.byte	0x61
	.4byte	0x128
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0xa
	.byte	0x62
	.4byte	0x128
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0xa
	.byte	0x64
	.4byte	0x128
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0xa
	.byte	0x6d
	.4byte	0x10b
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0xa
	.byte	0x70
	.4byte	0x133
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0xa
	.byte	0x71
	.4byte	0x133
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0xa
	.byte	0x7b
	.4byte	0x133
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0xa
	.byte	0x7c
	.4byte	0x133
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0xa
	.byte	0x7d
	.4byte	0x133
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0xa
	.byte	0x7e
	.4byte	0x133
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0xa
	.byte	0x7f
	.4byte	0x133
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0xa
	.byte	0x80
	.4byte	0x133
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0xa
	.byte	0x81
	.4byte	0x133
	.byte	0x34
	.uleb128 0xc
	.string	"win"
	.byte	0xa
	.byte	0x82
	.4byte	0x237
	.byte	0x38
	.byte	0
	.uleb128 0xd
	.4byte	0x11d
	.4byte	0x248
	.uleb128 0xe
	.4byte	0x85
	.2byte	0xfff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0xa
	.byte	0x83
	.4byte	0x13e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x248
	.uleb128 0x8
	.byte	0x4
	.4byte	0x30
	.byte	0xa
	.byte	0xdb
	.4byte	0x2de
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0xa
	.byte	0xf0
	.4byte	0x259
	.uleb128 0x8
	.byte	0x4
	.4byte	0x30
	.byte	0xc
	.byte	0x26
	.4byte	0x302
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0xc
	.byte	0x29
	.4byte	0x2e9
	.uleb128 0x8
	.byte	0x4
	.4byte	0x30
	.byte	0xc
	.byte	0x2f
	.4byte	0x3c8
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x15
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x17
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x19
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x1b
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x1d
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x1e
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x1f
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x80
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x81
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x82
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF102
	.byte	0xc
	.byte	0x50
	.4byte	0x30d
	.uleb128 0xf
	.byte	0x24
	.byte	0xc
	.byte	0x63
	.4byte	0x424
	.uleb128 0xb
	.4byte	.LASF103
	.byte	0xc
	.byte	0x64
	.4byte	0x302
	.byte	0
	.uleb128 0xb
	.4byte	.LASF104
	.byte	0xc
	.byte	0x65
	.4byte	0x3c8
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF105
	.byte	0xc
	.byte	0x66
	.4byte	0xb2
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF106
	.byte	0xc
	.byte	0x67
	.4byte	0xb2
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF107
	.byte	0xc
	.byte	0x68
	.4byte	0x424
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF108
	.byte	0xc
	.byte	0x69
	.4byte	0xf9
	.byte	0x21
	.byte	0
	.uleb128 0xd
	.4byte	0x95
	.4byte	0x434
	.uleb128 0x10
	.4byte	0x85
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xc
	.byte	0x6a
	.4byte	0x3d3
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0xd
	.byte	0x1c
	.4byte	0xa7
	.uleb128 0xf
	.byte	0xc
	.byte	0xe
	.byte	0x5a
	.4byte	0x477
	.uleb128 0xb
	.4byte	.LASF111
	.byte	0xe
	.byte	0x5f
	.4byte	0xf9
	.byte	0
	.uleb128 0xb
	.4byte	.LASF112
	.byte	0xe
	.byte	0x60
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0xe
	.byte	0x6e
	.4byte	0x25
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0xe
	.byte	0x6f
	.4byte	0x44a
	.uleb128 0x11
	.4byte	.LASF156
	.byte	0x2
	.byte	0x15
	.4byte	0x25
	.byte	0x3
	.4byte	0x4ca
	.uleb128 0x12
	.4byte	.LASF115
	.byte	0x2
	.byte	0x16
	.4byte	0x25
	.uleb128 0x12
	.4byte	.LASF116
	.byte	0x2
	.byte	0x16
	.4byte	0x25
	.uleb128 0x13
	.4byte	.LASF117
	.byte	0x2
	.byte	0x18
	.4byte	0x25
	.uleb128 0x13
	.4byte	.LASF118
	.byte	0x2
	.byte	0x19
	.4byte	0x4ca
	.uleb128 0x13
	.4byte	.LASF119
	.byte	0x2
	.byte	0x1a
	.4byte	0x4ca
	.byte	0
	.uleb128 0x7
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF129
	.byte	0x1
	.byte	0x1d
	.4byte	0xee
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x919
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x1
	.byte	0x1d
	.4byte	0x9c
	.4byte	.LLST0
	.uleb128 0x15
	.4byte	.LASF121
	.byte	0x1
	.byte	0x1e
	.4byte	0x9c
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	.LASF122
	.byte	0x1
	.byte	0x1f
	.4byte	0x919
	.4byte	.LLST2
	.uleb128 0x15
	.4byte	.LASF123
	.byte	0x1
	.byte	0x20
	.4byte	0x924
	.4byte	.LLST3
	.uleb128 0x16
	.4byte	.LASF124
	.byte	0x1
	.byte	0x22
	.4byte	0xee
	.4byte	.LLST4
	.uleb128 0x17
	.4byte	.LASF125
	.byte	0x1
	.byte	0x23
	.4byte	0x4ca
	.2byte	0x1000
	.uleb128 0x16
	.4byte	.LASF126
	.byte	0x1
	.byte	0x24
	.4byte	0x8c
	.4byte	.LLST5
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0x1
	.byte	0x26
	.4byte	0x3c8
	.4byte	.LLST6
	.uleb128 0x16
	.4byte	.LASF127
	.byte	0x1
	.byte	0x28
	.4byte	0x92a
	.4byte	.LLST7
	.uleb128 0x18
	.4byte	.LASF31
	.byte	0x1
	.byte	0x35
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.string	"drv"
	.byte	0x1
	.byte	0x3b
	.4byte	0x935
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0x1a
	.4byte	.LASF133
	.byte	0x1
	.byte	0x6e
	.4byte	.L7
	.uleb128 0x19
	.string	"fs"
	.byte	0x1
	.byte	0x42
	.4byte	0x253
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.4byte	.LASF128
	.byte	0x1
	.byte	0x4c
	.4byte	0x2de
	.4byte	.LLST8
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0
	.4byte	0x7a6
	.uleb128 0x18
	.4byte	.LASF117
	.byte	0x1
	.byte	0x58
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	0x482
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x58
	.4byte	0x611
	.uleb128 0x1d
	.4byte	0x49d
	.4byte	.LLST9
	.uleb128 0x1d
	.4byte	0x492
	.4byte	.LLST10
	.uleb128 0x1e
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x1f
	.4byte	0x4a8
	.4byte	.LLST11
	.uleb128 0x1f
	.4byte	0x4b3
	.4byte	.LLST12
	.uleb128 0x1f
	.4byte	0x4be
	.4byte	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL27
	.4byte	0xd6a
	.uleb128 0x21
	.4byte	.LVL28
	.4byte	0xd75
	.4byte	0x64e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL30
	.4byte	0xd80
	.4byte	0x663
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x20
	.4byte	.LVL37
	.4byte	0xd6a
	.uleb128 0x21
	.4byte	.LVL38
	.4byte	0xd75
	.4byte	0x6a0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL39
	.4byte	0xd8b
	.4byte	0x6cb
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL42
	.4byte	0xd6a
	.uleb128 0x21
	.4byte	.LVL43
	.4byte	0xd75
	.4byte	0x708
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL46
	.4byte	0xd97
	.4byte	0x71c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL47
	.4byte	0xd6a
	.uleb128 0x21
	.4byte	.LVL48
	.4byte	0xd75
	.4byte	0x753
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL49
	.4byte	0xda2
	.4byte	0x76c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.4byte	.LVL52
	.4byte	0xd6a
	.uleb128 0x23
	.4byte	.LVL53
	.4byte	0xd75
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL3
	.4byte	0xdae
	.4byte	0x7bf
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL4
	.4byte	0xd6a
	.uleb128 0x21
	.4byte	.LVL5
	.4byte	0xd75
	.4byte	0x7fc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL8
	.4byte	0xdb9
	.4byte	0x810
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL10
	.4byte	0xd6a
	.uleb128 0x21
	.4byte	.LVL11
	.4byte	0xd75
	.4byte	0x84d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL14
	.4byte	0xdc4
	.4byte	0x861
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x20
	.4byte	.LVL16
	.4byte	0xdcf
	.uleb128 0x20
	.4byte	.LVL18
	.4byte	0xd6a
	.uleb128 0x21
	.4byte	.LVL19
	.4byte	0xd75
	.4byte	0x8a8
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL22
	.4byte	0xdda
	.4byte	0x8c8
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x21
	.4byte	.LVL25
	.4byte	0xda2
	.4byte	0x8e1
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x21
	.4byte	.LVL60
	.4byte	0xd97
	.4byte	0x8f5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL61
	.4byte	0xde5
	.4byte	0x909
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL62
	.4byte	0xdf0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x91f
	.uleb128 0x7
	.4byte	0x477
	.uleb128 0x6
	.byte	0x4
	.4byte	0x43f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x930
	.uleb128 0x7
	.4byte	0x434
	.uleb128 0xd
	.4byte	0x95
	.4byte	0x945
	.uleb128 0x10
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF130
	.byte	0x1
	.byte	0x75
	.4byte	0xee
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa39
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x1
	.byte	0x75
	.4byte	0x9c
	.4byte	.LLST14
	.uleb128 0x15
	.4byte	.LASF123
	.byte	0x1
	.byte	0x75
	.4byte	0x43f
	.4byte	.LLST15
	.uleb128 0x18
	.4byte	.LASF31
	.byte	0x1
	.byte	0x77
	.4byte	0x11d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.string	"drv"
	.byte	0x1
	.byte	0x7b
	.4byte	0x935
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.4byte	.LASF131
	.byte	0x1
	.byte	0x81
	.4byte	0xee
	.4byte	.LLST16
	.uleb128 0x24
	.string	"err"
	.byte	0x1
	.byte	0x82
	.4byte	0xee
	.4byte	.LLST17
	.uleb128 0x21
	.4byte	.LVL66
	.4byte	0xdfb
	.4byte	0x9c9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL68
	.4byte	0xda2
	.4byte	0x9e7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL69
	.4byte	0xdf0
	.4byte	0xa00
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL70
	.4byte	0xe06
	.4byte	0xa14
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL71
	.4byte	0xe11
	.4byte	0xa28
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL73
	.4byte	0xde5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF132
	.byte	0x1
	.byte	0x87
	.4byte	0xee
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc3a
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x1
	.byte	0x87
	.4byte	0x9c
	.4byte	.LLST18
	.uleb128 0x15
	.4byte	.LASF121
	.byte	0x1
	.byte	0x88
	.4byte	0x9c
	.4byte	.LLST19
	.uleb128 0x15
	.4byte	.LASF122
	.byte	0x1
	.byte	0x89
	.4byte	0x919
	.4byte	.LLST20
	.uleb128 0x16
	.4byte	.LASF124
	.byte	0x1
	.byte	0x8b
	.4byte	0xee
	.4byte	.LLST21
	.uleb128 0x18
	.4byte	.LASF127
	.byte	0x1
	.byte	0x8d
	.4byte	0x92a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.4byte	.LASF31
	.byte	0x1
	.byte	0x95
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.string	"drv"
	.byte	0x1
	.byte	0x9b
	.4byte	0x935
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0x1a
	.4byte	.LASF133
	.byte	0x1
	.byte	0xb5
	.4byte	.L24
	.uleb128 0x19
	.string	"fs"
	.byte	0x1
	.byte	0xa3
	.4byte	0x253
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.4byte	.LASF128
	.byte	0x1
	.byte	0xad
	.4byte	0x2de
	.4byte	.LLST22
	.uleb128 0x21
	.4byte	.LVL81
	.4byte	0xdae
	.4byte	0xafd
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x81
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL83
	.4byte	0xd6a
	.uleb128 0x21
	.4byte	.LVL84
	.4byte	0xd75
	.4byte	0xb3a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL88
	.4byte	0xdc4
	.4byte	0xb4e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x21
	.4byte	.LVL90
	.4byte	0xe1c
	.4byte	0xb62
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL92
	.4byte	0xd6a
	.uleb128 0x21
	.4byte	.LVL93
	.4byte	0xd75
	.4byte	0xba0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL94
	.4byte	0xdda
	.4byte	0xbc0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x21
	.4byte	.LVL97
	.4byte	0xda2
	.4byte	0xbd9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x20
	.4byte	.LVL99
	.4byte	0xd6a
	.uleb128 0x21
	.4byte	.LVL100
	.4byte	0xd75
	.4byte	0xc16
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL102
	.4byte	0xde5
	.4byte	0xc2a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL103
	.4byte	0xdf0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF134
	.byte	0x1
	.byte	0xbc
	.4byte	0xee
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd53
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x1
	.byte	0xbc
	.4byte	0x9c
	.4byte	.LLST23
	.uleb128 0x15
	.4byte	.LASF121
	.byte	0x1
	.byte	0xbc
	.4byte	0x9c
	.4byte	.LLST24
	.uleb128 0x16
	.4byte	.LASF127
	.byte	0x1
	.byte	0xbe
	.4byte	0x92a
	.4byte	.LLST25
	.uleb128 0x18
	.4byte	.LASF31
	.byte	0x1
	.byte	0xc6
	.4byte	0x11d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.string	"drv"
	.byte	0x1
	.byte	0xca
	.4byte	0x935
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"err"
	.byte	0x1
	.byte	0xce
	.4byte	0xee
	.uleb128 0x21
	.4byte	.LVL107
	.4byte	0xdae
	.4byte	0xcc5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x81
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL108
	.4byte	0xd6a
	.uleb128 0x21
	.4byte	.LVL109
	.4byte	0xd75
	.4byte	0xd02
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL112
	.4byte	0xe27
	.uleb128 0x21
	.4byte	.LVL114
	.4byte	0xda2
	.4byte	0xd29
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL115
	.4byte	0xdf0
	.4byte	0xd42
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.4byte	.LVL116
	.4byte	0xde5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"TAG"
	.byte	0x1
	.byte	0x1c
	.4byte	0xd65
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x7
	.4byte	0x9c
	.uleb128 0x26
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0xb
	.byte	0x57
	.uleb128 0x26
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0xb
	.byte	0x6b
	.uleb128 0x26
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0xf
	.byte	0x65
	.uleb128 0x27
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xa
	.2byte	0x112
	.uleb128 0x26
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0xf
	.byte	0x5a
	.uleb128 0x27
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x111
	.uleb128 0x26
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0xc
	.byte	0x8a
	.uleb128 0x26
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0xd
	.byte	0x2b
	.uleb128 0x26
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0x10
	.byte	0x5a
	.uleb128 0x26
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x11
	.byte	0x20
	.uleb128 0x26
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xe
	.byte	0x33
	.uleb128 0x26
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xe
	.byte	0x54
	.uleb128 0x26
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x10
	.byte	0x46
	.uleb128 0x26
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x11
	.byte	0x21
	.uleb128 0x26
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x11
	.byte	0x22
	.uleb128 0x26
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0xd
	.byte	0x36
	.uleb128 0x26
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0x12
	.byte	0x1f
	.uleb128 0x26
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0x12
	.byte	0x20
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL64
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL33
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL59
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL64
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL24
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL64
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41
	.4byte	.LVL45
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL55
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL59
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL46
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL63
	.4byte	.LFE22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LVL37-1
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x23
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL32
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL36
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL32
	.4byte	.LVL55
	.2byte	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL32
	.4byte	.LVL55
	.2byte	0x4
	.byte	0x40
	.byte	0x3f
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL65
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
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL65
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL79
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL79
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL89
	.4byte	.LVL104
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL105
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL79
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL96
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
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL80
	.4byte	.LVL91
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL98
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL106
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
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL106
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL113
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL107
	.4byte	.LVL108-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL111
	.4byte	.LVL112-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"pdrv"
.LASF137:
	.string	"malloc"
.LASF128:
	.string	"fresult"
.LASF121:
	.string	"partition_label"
.LASF5:
	.string	"size_t"
.LASF30:
	.string	"fs_type"
.LASF126:
	.string	"workbuf"
.LASF103:
	.string	"type"
.LASF35:
	.string	"n_rootdir"
.LASF117:
	.string	"alloc_unit_size"
.LASF9:
	.string	"long long unsigned int"
.LASF136:
	.string	"esp_log_write"
.LASF146:
	.string	"esp_vfs_fat_unregister_path"
.LASF24:
	.string	"QueueHandle_t"
.LASF139:
	.string	"free"
.LASF115:
	.string	"sector_size"
.LASF151:
	.string	"ff_diskio_register_raw_partition"
.LASF67:
	.string	"FR_TOO_MANY_OPEN_FILES"
.LASF20:
	.string	"ESP_LOG_DEBUG"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF38:
	.string	"sobj"
.LASF68:
	.string	"FR_INVALID_PARAMETER"
.LASF42:
	.string	"fsize"
.LASF156:
	.string	"esp_vfs_fat_get_allocation_unit_size"
.LASF41:
	.string	"n_fatent"
.LASF58:
	.string	"FR_INVALID_OBJECT"
.LASF101:
	.string	"ESP_PARTITION_SUBTYPE_ANY"
.LASF10:
	.string	"long int"
.LASF142:
	.string	"wl_mount"
.LASF116:
	.string	"requested_size"
.LASF138:
	.string	"f_mkfs"
.LASF93:
	.string	"ESP_PARTITION_SUBTYPE_DATA_OTA"
.LASF91:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MAX"
.LASF62:
	.string	"FR_NO_FILESYSTEM"
.LASF66:
	.string	"FR_NOT_ENOUGH_CORE"
.LASF57:
	.string	"FR_EXIST"
.LASF44:
	.string	"fatbase"
.LASF29:
	.string	"DWORD"
.LASF74:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MIN"
.LASF7:
	.string	"__uint32_t"
.LASF36:
	.string	"csize"
.LASF149:
	.string	"ff_diskio_clear_pdrv_wl"
.LASF129:
	.string	"esp_vfs_fat_spiflash_mount"
.LASF40:
	.string	"free_clst"
.LASF27:
	.string	"BYTE"
.LASF125:
	.string	"workbuf_size"
.LASF0:
	.string	"unsigned int"
.LASF112:
	.string	"max_files"
.LASF72:
	.string	"esp_partition_type_t"
.LASF12:
	.string	"long unsigned int"
.LASF147:
	.string	"ff_diskio_register"
.LASF107:
	.string	"label"
.LASF99:
	.string	"ESP_PARTITION_SUBTYPE_DATA_FAT"
.LASF106:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF46:
	.string	"database"
.LASF37:
	.string	"ssize"
.LASF120:
	.string	"base_path"
.LASF144:
	.string	"ff_diskio_register_wl_partition"
.LASF51:
	.string	"FR_INT_ERR"
.LASF50:
	.string	"FR_DISK_ERR"
.LASF94:
	.string	"ESP_PARTITION_SUBTYPE_DATA_PHY"
.LASF47:
	.string	"winsect"
.LASF132:
	.string	"esp_vfs_fat_rawflash_mount"
.LASF118:
	.string	"max_sectors_per_cylinder"
.LASF4:
	.string	"short int"
.LASF28:
	.string	"WORD"
.LASF104:
	.string	"subtype"
.LASF59:
	.string	"FR_WRITE_PROTECTED"
.LASF48:
	.string	"FATFS"
.LASF141:
	.string	"esp_partition_find_first"
.LASF123:
	.string	"wl_handle"
.LASF19:
	.string	"ESP_LOG_INFO"
.LASF11:
	.string	"sizetype"
.LASF122:
	.string	"mount_config"
.LASF73:
	.string	"ESP_PARTITION_SUBTYPE_APP_FACTORY"
.LASF105:
	.string	"address"
.LASF18:
	.string	"ESP_LOG_WARN"
.LASF64:
	.string	"FR_TIMEOUT"
.LASF45:
	.string	"dirbase"
.LASF71:
	.string	"ESP_PARTITION_TYPE_DATA"
.LASF152:
	.string	"ff_diskio_get_pdrv_raw"
.LASF53:
	.string	"FR_NO_FILE"
.LASF127:
	.string	"data_partition"
.LASF70:
	.string	"ESP_PARTITION_TYPE_APP"
.LASF61:
	.string	"FR_NOT_ENABLED"
.LASF39:
	.string	"last_clst"
.LASF26:
	.string	"float"
.LASF140:
	.string	"f_mount"
.LASF32:
	.string	"n_fats"
.LASF23:
	.string	"_Bool"
.LASF14:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF75:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_0"
.LASF76:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_1"
.LASF77:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_2"
.LASF78:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_3"
.LASF79:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_4"
.LASF80:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_5"
.LASF81:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_6"
.LASF82:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_7"
.LASF83:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_8"
.LASF84:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_9"
.LASF135:
	.string	"esp_log_timestamp"
.LASF17:
	.string	"ESP_LOG_ERROR"
.LASF60:
	.string	"FR_INVALID_DRIVE"
.LASF33:
	.string	"wflag"
.LASF95:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS"
.LASF63:
	.string	"FR_MKFS_ABORTED"
.LASF145:
	.string	"esp_vfs_fat_register"
.LASF65:
	.string	"FR_LOCKED"
.LASF108:
	.string	"encrypted"
.LASF155:
	.string	"/home/raphael/rtone/lcd/build/fatfs"
.LASF15:
	.string	"uint32_t"
.LASF133:
	.string	"fail"
.LASF148:
	.string	"ff_diskio_get_pdrv_wl"
.LASF131:
	.string	"err_drv"
.LASF13:
	.string	"char"
.LASF25:
	.string	"SemaphoreHandle_t"
.LASF55:
	.string	"FR_INVALID_NAME"
.LASF21:
	.string	"ESP_LOG_VERBOSE"
.LASF130:
	.string	"esp_vfs_fat_spiflash_unmount"
.LASF98:
	.string	"ESP_PARTITION_SUBTYPE_DATA_ESPHTTPD"
.LASF102:
	.string	"esp_partition_subtype_t"
.LASF49:
	.string	"FR_OK"
.LASF16:
	.string	"ESP_LOG_NONE"
.LASF6:
	.string	"__int32_t"
.LASF150:
	.string	"wl_unmount"
.LASF43:
	.string	"volbase"
.LASF97:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS_KEYS"
.LASF154:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/fatfs/src/vfs_fat_spiflash.c"
.LASF92:
	.string	"ESP_PARTITION_SUBTYPE_APP_TEST"
.LASF34:
	.string	"fsi_flag"
.LASF110:
	.string	"wl_handle_t"
.LASF85:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_10"
.LASF86:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_11"
.LASF87:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_12"
.LASF88:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_13"
.LASF89:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_14"
.LASF90:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_15"
.LASF22:
	.string	"esp_err_t"
.LASF96:
	.string	"ESP_PARTITION_SUBTYPE_DATA_COREDUMP"
.LASF119:
	.string	"max_size"
.LASF100:
	.string	"ESP_PARTITION_SUBTYPE_DATA_SPIFFS"
.LASF69:
	.string	"FRESULT"
.LASF153:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF113:
	.string	"allocation_unit_size"
.LASF109:
	.string	"esp_partition_t"
.LASF54:
	.string	"FR_NO_PATH"
.LASF111:
	.string	"format_if_mount_failed"
.LASF52:
	.string	"FR_NOT_READY"
.LASF114:
	.string	"esp_vfs_fat_mount_config_t"
.LASF134:
	.string	"esp_vfs_fat_rawflash_unmount"
.LASF143:
	.string	"ff_diskio_get_drive"
.LASF124:
	.string	"result"
.LASF56:
	.string	"FR_DENIED"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
