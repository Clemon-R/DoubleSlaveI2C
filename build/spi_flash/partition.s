	.file	"partition.c"
	.text
.Ltext0:
	.section	.text.iterator_create,"ax",@progbits
	.literal_position
	.literal .LC0, s_partition_list
	.align	4
	.type	iterator_create, @function
iterator_create:
.LFB5:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/partition.c"
	.loc 1 132 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 133 0
	movi.n	a10, 0x14
	call8	malloc
.LVL1:
	.loc 1 135 0
	s32i.n	a2, a10, 0
	.loc 1 136 0
	s32i.n	a3, a10, 4
	.loc 1 137 0
	s32i.n	a4, a10, 8
	.loc 1 138 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
	s32i.n	a8, a10, 12
	.loc 1 139 0
	movi.n	a8, 0
	s32i.n	a8, a10, 16
	.loc 1 141 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LFE5:
	.size	iterator_create, .-iterator_create
	.section	.text.load_partitions,"ax",@progbits
	.literal_position
	.literal .LC1, 4096
	.literal .LC2, 32768
	.literal .LC3, 36864
	.literal .LC4, 20650
	.literal .LC5, 1073061888
	.literal .LC6, -65536
	.literal .LC7, 65536
	.literal .LC8, 67174400
	.literal .LC9, s_partition_list
	.align	4
	.type	load_partitions, @function
load_partitions:
.LFB6:
	.loc 1 146 0
	entry	sp, 48
.LCFI1:
	.loc 1 150 0
	addi.n	a14, sp, 4
	mov.n	a13, sp
	movi.n	a12, 0
	l32r	a11, .LC1
	mov.n	a10, a12
	call8	spi_flash_mmap
.LVL3:
	.loc 1 152 0
	bnez.n	a10, .L14
	.loc 1 157 0
	l32i.n	a2, sp, 0
	.loc 1 156 0
	l32r	a3, .LC2
	add.n	a3, a2, a3
.LVL4:
	.loc 1 158 0
	l32r	a5, .LC3
	add.n	a5, a2, a5
.LVL5:
	.loc 1 160 0
	movi.n	a4, 0
	.loc 1 161 0
	j	.L4
.LVL6:
.L13:
.LBB7:
	.loc 1 162 0
	l16ui	a8, a3, 0
	l32r	a2, .LC4
	bne	a8, a2, .L5
	.loc 1 166 0
	movi.n	a10, 0x28
	call8	malloc
.LVL7:
	mov.n	a2, a10
.LVL8:
	.loc 1 167 0
	l32i.n	a8, a3, 4
	s32i.n	a8, a10, 8
	.loc 1 168 0
	l32i.n	a8, a3, 8
	s32i.n	a8, a10, 12
	.loc 1 169 0
	l8ui	a8, a3, 2
	s32i.n	a8, a10, 0
	.loc 1 170 0
	l8ui	a8, a3, 3
	s32i.n	a8, a10, 4
	.loc 1 171 0
	l32i.n	a8, a3, 28
	extui	a8, a8, 0, 1
	s8i	a8, a10, 33
.LBB8:
.LBB9:
.LBB10:
.LBB11:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include/esp_flash_encrypt.h"
	.loc 2 39 0
	l32r	a8, .LC5
	memw
	l32i.n	a8, a8, 0
.LBE11:
	extui	a8, a8, 20, 7
.LVL9:
.LBE10:
	.loc 2 41 0
	movi.n	a9, 0
	j	.L6
.LVL10:
.L8:
	.loc 2 43 0
	bbci	a8, 0, .L7
	.loc 2 44 0
	movi.n	a10, 1
	xor	a9, a9, a10
.LVL11:
	extui	a9, a9, 0, 8
.LVL12:
.L7:
	.loc 2 46 0
	srli	a8, a8, 1
.LVL13:
.L6:
	.loc 2 42 0
	bnez.n	a8, .L8
.LBE9:
.LBE8:
	.loc 1 172 0
	beqz.n	a9, .L9
	.loc 1 173 0 discriminator 1
	l8ui	a8, a3, 2
.LVL14:
	.loc 1 172 0 discriminator 1
	beqz.n	a8, .L10
	.loc 1 174 0
	l32i.n	a9, a3, 0
.LVL15:
	l32r	a8, .LC6
	and	a8, a9, a8
	l32r	a9, .LC7
	beq	a8, a9, .L10
	.loc 1 175 0
	l32r	a9, .LC8
	bne	a8, a9, .L9
.L10:
	.loc 1 178 0
	movi.n	a8, 1
	s8i	a8, a2, 33
.L9:
	.loc 1 182 0
	movi.n	a12, 0x10
	addi.n	a11, a3, 12
	add.n	a10, a2, a12
	call8	strncpy
.LVL16:
	.loc 1 183 0
	movi.n	a8, 0
	s8i	a8, a2, 32
	.loc 1 185 0
	bnez.n	a4, .L11
	.loc 1 186 0
	l32r	a4, .LC9
.LVL17:
	l32i.n	a8, a4, 0
	s32i.n	a8, a2, 36
	s32i.n	a2, a4, 0
	j	.L12
.LVL18:
.L11:
	.loc 1 188 0
	l32i.n	a8, a4, 36
	s32i.n	a8, a2, 36
	s32i.n	a2, a4, 36
.LVL19:
.L12:
.LBE7:
	.loc 1 161 0
	addi	a3, a3, 32
.LVL20:
.LBB12:
	.loc 1 190 0
	mov.n	a4, a2
.LVL21:
.L4:
.LBE12:
	.loc 1 161 0 discriminator 1
	bne	a3, a5, .L13
.L5:
	.loc 1 192 0
	l32i.n	a10, sp, 4
	call8	spi_flash_munmap
.LVL22:
	.loc 1 193 0
	movi.n	a2, 0
	retw.n
.LVL23:
.L14:
	.loc 1 153 0
	mov.n	a2, a10
	.loc 1 194 0
	retw.n
.LFE6:
	.size	load_partitions, .-load_partitions
	.section	.text.esp_partition_iterator_release,"ax",@progbits
	.align	4
	.global	esp_partition_iterator_release
	.type	esp_partition_iterator_release, @function
esp_partition_iterator_release:
.LFB7:
	.loc 1 197 0
.LVL24:
	entry	sp, 32
.LCFI2:
	.loc 1 199 0
	mov.n	a10, a2
	call8	free
.LVL25:
	retw.n
.LFE7:
	.size	esp_partition_iterator_release, .-esp_partition_iterator_release
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC10:
	.string	"it"
	.align	4
.LC13:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/partition.c"
	.section	.text.esp_partition_next,"ax",@progbits
	.literal_position
	.literal .LC11, .LC10
	.literal .LC12, __func__$3524
	.literal .LC14, .LC13
	.literal .LC15, s_partition_list_lock
	.align	4
	.global	esp_partition_next
	.type	esp_partition_next, @function
esp_partition_next:
.LFB3:
	.loc 1 86 0
.LVL26:
	entry	sp, 32
.LCFI3:
	.loc 1 87 0
	bnez.n	a2, .L17
	.loc 1 87 0 is_stmt 0 discriminator 1
	l32r	a13, .LC11
	l32r	a12, .LC12
	movi.n	a11, 0x57
	l32r	a10, .LC14
	call8	__assert_func
.LVL27:
.L17:
	.loc 1 89 0 is_stmt 1
	l32i.n	a3, a2, 12
	bnez.n	a3, .L18
	.loc 1 90 0
	mov.n	a10, a2
	call8	esp_partition_iterator_release
.LVL28:
	.loc 1 91 0
	movi.n	a2, 0
.LVL29:
	retw.n
.LVL30:
.L18:
	.loc 1 93 0
	l32r	a10, .LC15
	call8	_lock_acquire
.LVL31:
	.loc 1 94 0
	j	.L20
.L24:
.LVL32:
.LBB13:
	.loc 1 96 0
	l32i.n	a9, a2, 0
	l32i.n	a8, a3, 0
	bne	a9, a8, .L21
	.loc 1 99 0
	l32i.n	a8, a2, 4
	movi	a9, 0xff
	beq	a8, a9, .L22
	.loc 1 99 0 is_stmt 0 discriminator 1
	l32i.n	a9, a3, 4
	bne	a8, a9, .L21
.L22:
	.loc 1 102 0 is_stmt 1
	l32i.n	a10, a2, 8
	beqz.n	a10, .L23
	.loc 1 102 0 discriminator 1
	addi	a11, a3, 16
	call8	strcmp
.LVL33:
	beqz.n	a10, .L23
.L21:
.LBE13:
	.loc 1 94 0
	l32i.n	a3, a3, 36
.LVL34:
	s32i.n	a3, a2, 12
.L20:
	.loc 1 94 0 discriminator 1
	l32i.n	a3, a2, 12
	bnez.n	a3, .L24
.L23:
	.loc 1 108 0
	l32r	a10, .LC15
	call8	_lock_release
.LVL35:
	.loc 1 109 0
	l32i.n	a3, a2, 12
	bnez.n	a3, .L25
	.loc 1 110 0
	mov.n	a10, a2
	call8	esp_partition_iterator_release
.LVL36:
	.loc 1 111 0
	movi.n	a2, 0
.LVL37:
	retw.n
.LVL38:
.L25:
	.loc 1 113 0
	s32i.n	a3, a2, 16
	.loc 1 114 0
	l32i.n	a3, a3, 36
	s32i.n	a3, a2, 12
	.loc 1 116 0
	retw.n
.LFE3:
	.size	esp_partition_next, .-esp_partition_next
	.section	.text.esp_partition_find,"ax",@progbits
	.literal_position
	.literal .LC16, s_partition_list
	.literal .LC17, s_partition_list_lock
	.align	4
	.global	esp_partition_find
	.type	esp_partition_find, @function
esp_partition_find:
.LFB2:
	.loc 1 63 0
.LVL39:
	entry	sp, 32
.LCFI4:
	.loc 1 64 0
	l32r	a8, .LC16
	l32i.n	a8, a8, 0
	bnez.n	a8, .L27
.LBB14:
	.loc 1 66 0
	l32r	a10, .LC17
	call8	_lock_acquire
.LVL40:
	.loc 1 68 0
	l32r	a8, .LC16
	l32i.n	a8, a8, 0
	bnez.n	a8, .L30
	.loc 1 69 0
	call8	load_partitions
.LVL41:
	mov.n	a5, a10
.LVL42:
	j	.L28
.LVL43:
.L30:
	.loc 1 67 0
	movi.n	a5, 0
.LVL44:
.L28:
	.loc 1 71 0
	l32r	a10, .LC17
	call8	_lock_release
.LVL45:
	.loc 1 72 0
	bnez.n	a5, .L31
.LVL46:
.L27:
.LBE14:
	.loc 1 78 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	iterator_create
.LVL47:
	.loc 1 80 0
	call8	esp_partition_next
.LVL48:
	mov.n	a2, a10
.LVL49:
	.loc 1 82 0
	retw.n
.LVL50:
.L31:
.LBB15:
	.loc 1 73 0
	movi.n	a2, 0
.LVL51:
.LBE15:
	.loc 1 83 0
	retw.n
.LFE2:
	.size	esp_partition_find, .-esp_partition_find
	.section	.rodata.str1.4
	.align	4
.LC18:
	.string	"iterator != NULL"
	.section	.text.esp_partition_get,"ax",@progbits
	.literal_position
	.literal .LC19, .LC18
	.literal .LC20, __func__$3561
	.literal .LC21, .LC13
	.align	4
	.global	esp_partition_get
	.type	esp_partition_get, @function
esp_partition_get:
.LFB8:
	.loc 1 203 0
.LVL52:
	entry	sp, 32
.LCFI5:
	.loc 1 204 0
	bnez.n	a2, .L33
	.loc 1 204 0 is_stmt 0 discriminator 1
	l32r	a13, .LC19
	l32r	a12, .LC20
	movi	a11, 0xcc
	l32r	a10, .LC21
	call8	__assert_func
.LVL53:
.L33:
	.loc 1 206 0 is_stmt 1
	l32i.n	a2, a2, 16
.LVL54:
	retw.n
.LFE8:
	.size	esp_partition_get, .-esp_partition_get
	.section	.text.esp_partition_find_first,"ax",@progbits
	.align	4
	.global	esp_partition_find_first
	.type	esp_partition_find_first, @function
esp_partition_find_first:
.LFB4:
	.loc 1 120 0
.LVL55:
	entry	sp, 32
.LCFI6:
	.loc 1 121 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_partition_find
.LVL56:
	mov.n	a3, a10
.LVL57:
	.loc 1 122 0
	beqz.n	a10, .L36
	.loc 1 125 0
	call8	esp_partition_get
.LVL58:
	mov.n	a2, a10
.LVL59:
	.loc 1 126 0
	mov.n	a10, a3
	call8	esp_partition_iterator_release
.LVL60:
	.loc 1 127 0
	retw.n
.LVL61:
.L36:
	.loc 1 123 0
	movi.n	a2, 0
.LVL62:
	.loc 1 128 0
	retw.n
.LFE4:
	.size	esp_partition_find_first, .-esp_partition_find_first
	.section	.rodata.str1.4
	.align	4
.LC22:
	.string	"partition != NULL"
	.section	.text.esp_partition_verify,"ax",@progbits
	.literal_position
	.literal .LC23, .LC22
	.literal .LC24, __func__$3565
	.literal .LC25, .LC13
	.align	4
	.global	esp_partition_verify
	.type	esp_partition_verify, @function
esp_partition_verify:
.LFB9:
	.loc 1 209 0
.LVL63:
	entry	sp, 32
.LCFI7:
	.loc 1 210 0
	bnez.n	a2, .L38
	.loc 1 210 0 is_stmt 0 discriminator 1
	l32r	a13, .LC23
	l32r	a12, .LC24
	movi	a11, 0xd2
	l32r	a10, .LC25
	call8	__assert_func
.LVL64:
.L38:
	.loc 1 211 0 is_stmt 1
	l8ui	a3, a2, 16
	beqz.n	a3, .L44
	.loc 1 211 0 is_stmt 0 discriminator 1
	addi	a12, a2, 16
	j	.L39
.L44:
	.loc 1 211 0
	movi.n	a12, 0
.L39:
.LVL65:
	.loc 1 212 0 is_stmt 1 discriminator 4
	l32i.n	a11, a2, 4
	l32i.n	a10, a2, 0
	call8	esp_partition_find
.LVL66:
	mov.n	a3, a10
.LVL67:
	.loc 1 215 0 discriminator 4
	j	.L40
.L43:
.LBB16:
	.loc 1 216 0
	mov.n	a10, a3
	call8	esp_partition_get
.LVL68:
	mov.n	a4, a10
.LVL69:
	.loc 1 218 0
	l32i.n	a9, a10, 8
	l32i.n	a8, a2, 8
	bne	a9, a8, .L41
	.loc 1 219 0
	l32i.n	a9, a2, 12
	l32i.n	a8, a10, 12
	bne	a9, a8, .L41
	.loc 1 220 0
	l8ui	a9, a2, 33
	l8ui	a8, a10, 33
	bne	a9, a8, .L41
	.loc 1 221 0
	mov.n	a10, a3
	call8	esp_partition_iterator_release
.LVL70:
	.loc 1 222 0
	mov.n	a2, a4
.LVL71:
	retw.n
.LVL72:
.L41:
	.loc 1 224 0
	mov.n	a10, a3
	call8	esp_partition_next
.LVL73:
	mov.n	a3, a10
.LVL74:
.L40:
.LBE16:
	.loc 1 215 0
	bnez.n	a3, .L43
	.loc 1 226 0
	mov.n	a10, a3
	call8	esp_partition_iterator_release
.LVL75:
	.loc 1 227 0
	movi.n	a2, 0
.LVL76:
	.loc 1 228 0
	retw.n
.LFE9:
	.size	esp_partition_verify, .-esp_partition_verify
	.section	.text.esp_partition_write,"ax",@progbits
	.literal_position
	.literal .LC26, .LC22
	.literal .LC27, __func__$3588
	.literal .LC28, .LC13
	.align	4
	.global	esp_partition_write
	.type	esp_partition_write, @function
esp_partition_write:
.LFB11:
	.loc 1 262 0
.LVL77:
	entry	sp, 32
.LCFI8:
	.loc 1 263 0
	bnez.n	a2, .L46
	.loc 1 263 0 is_stmt 0 discriminator 1
	l32r	a13, .LC26
	l32r	a12, .LC27
	movi	a11, 0x107
	l32r	a10, .LC28
	call8	__assert_func
.LVL78:
.L46:
	.loc 1 264 0 is_stmt 1
	l32i.n	a8, a2, 12
	bltu	a8, a3, .L49
	.loc 1 267 0
	add.n	a9, a3, a5
	bltu	a8, a9, .L50
	.loc 1 270 0
	l32i.n	a10, a2, 8
	add.n	a10, a3, a10
.LVL79:
	.loc 1 271 0
	l8ui	a2, a2, 33
.LVL80:
	beqz.n	a2, .L48
	.loc 1 272 0
	mov.n	a12, a5
	mov.n	a11, a4
	call8	spi_flash_write_encrypted
.LVL81:
	mov.n	a2, a10
	retw.n
.LVL82:
.L48:
	.loc 1 274 0
	mov.n	a12, a5
	mov.n	a11, a4
	call8	spi_flash_write
.LVL83:
	mov.n	a2, a10
	retw.n
.LVL84:
.L49:
	.loc 1 265 0
	movi	a2, 0x102
.LVL85:
	retw.n
.LVL86:
.L50:
	.loc 1 268 0
	movi	a2, 0x104
.LVL87:
	.loc 1 276 0
	retw.n
.LFE11:
	.size	esp_partition_write, .-esp_partition_write
	.section	.text.esp_partition_erase_range,"ax",@progbits
	.literal_position
	.literal .LC29, .LC22
	.literal .LC30, __func__$3594
	.literal .LC31, .LC13
	.align	4
	.global	esp_partition_erase_range
	.type	esp_partition_erase_range, @function
esp_partition_erase_range:
.LFB12:
	.loc 1 280 0
.LVL88:
	entry	sp, 32
.LCFI9:
	.loc 1 281 0
	bnez.n	a2, .L52
	.loc 1 281 0 is_stmt 0 discriminator 1
	l32r	a13, .LC29
	l32r	a12, .LC30
	movi	a11, 0x119
	l32r	a10, .LC31
	call8	__assert_func
.LVL89:
.L52:
	.loc 1 282 0 is_stmt 1
	l32i.n	a8, a2, 12
	bltu	a8, a3, .L54
	.loc 1 285 0
	add.n	a9, a3, a4
	bltu	a8, a9, .L55
	.loc 1 288 0
	extui	a8, a4, 0, 12
	bnez.n	a8, .L56
	.loc 1 291 0
	extui	a8, a3, 0, 12
	bnez.n	a8, .L57
	.loc 1 294 0
	l32i.n	a10, a2, 8
	mov.n	a11, a4
	add.n	a10, a3, a10
	call8	spi_flash_erase_range
.LVL90:
	mov.n	a2, a10
.LVL91:
	retw.n
.LVL92:
.L54:
	.loc 1 283 0
	movi	a2, 0x102
.LVL93:
	retw.n
.LVL94:
.L55:
	.loc 1 286 0
	movi	a2, 0x104
.LVL95:
	retw.n
.LVL96:
.L56:
	.loc 1 289 0
	movi	a2, 0x104
.LVL97:
	retw.n
.LVL98:
.L57:
	.loc 1 292 0
	movi	a2, 0x102
.LVL99:
	.loc 1 296 0
	retw.n
.LFE12:
	.size	esp_partition_erase_range, .-esp_partition_erase_range
	.section	.text.esp_partition_mmap,"ax",@progbits
	.literal_position
	.literal .LC32, .LC22
	.literal .LC33, __func__$3603
	.literal .LC34, .LC13
	.literal .LC35, -65536
	.align	4
	.global	esp_partition_mmap
	.type	esp_partition_mmap, @function
esp_partition_mmap:
.LFB13:
	.loc 1 309 0
.LVL100:
	entry	sp, 32
.LCFI10:
	.loc 1 310 0
	bnez.n	a2, .L59
	.loc 1 310 0 is_stmt 0 discriminator 1
	l32r	a13, .LC32
	l32r	a12, .LC33
	movi	a11, 0x136
	l32r	a10, .LC34
	call8	__assert_func
.LVL101:
.L59:
	.loc 1 311 0 is_stmt 1
	l32i.n	a8, a2, 12
	bltu	a8, a3, .L61
	.loc 1 314 0
	add.n	a9, a3, a4
	bltu	a8, a9, .L62
	.loc 1 317 0
	l32i.n	a10, a2, 8
	add.n	a3, a3, a10
.LVL102:
	.loc 1 319 0
	extui	a2, a3, 0, 16
.LVL103:
	.loc 1 321 0
	mov.n	a14, a7
	mov.n	a13, a6
	mov.n	a12, a5
	add.n	a11, a4, a2
	l32r	a10, .LC35
	and	a10, a3, a10
.LVL104:
	call8	spi_flash_mmap
.LVL105:
	.loc 1 323 0
	bnez.n	a10, .L63
	.loc 1 324 0
	l32i.n	a3, a6, 0
.LVL106:
	add.n	a2, a3, a2
.LVL107:
	s32i.n	a2, a6, 0
	.loc 1 326 0
	mov.n	a2, a10
	retw.n
.LVL108:
.L61:
	.loc 1 312 0
	movi	a2, 0x102
.LVL109:
	retw.n
.LVL110:
.L62:
	.loc 1 315 0
	movi	a2, 0x104
.LVL111:
	retw.n
.LVL112:
.L63:
	.loc 1 326 0
	mov.n	a2, a10
.LVL113:
	.loc 1 327 0
	retw.n
.LFE13:
	.size	esp_partition_mmap, .-esp_partition_mmap
	.section	.text.esp_partition_read,"ax",@progbits
	.literal_position
	.literal .LC36, .LC22
	.literal .LC37, __func__$3578
	.literal .LC38, .LC13
	.align	4
	.global	esp_partition_read
	.type	esp_partition_read, @function
esp_partition_read:
.LFB10:
	.loc 1 232 0
.LVL114:
	entry	sp, 48
.LCFI11:
	.loc 1 233 0
	bnez.n	a2, .L65
	.loc 1 233 0 is_stmt 0 discriminator 1
	l32r	a13, .LC36
	l32r	a12, .LC37
	movi	a11, 0xe9
	l32r	a10, .LC38
	call8	__assert_func
.LVL115:
.L65:
	.loc 1 234 0 is_stmt 1
	l32i.n	a8, a2, 12
	bltu	a8, a3, .L69
	.loc 1 237 0
	add.n	a9, a3, a5
	bltu	a8, a9, .L70
	.loc 1 241 0
	l8ui	a8, a2, 33
	bnez.n	a8, .L67
	.loc 1 242 0
	l32i.n	a10, a2, 8
	mov.n	a12, a5
	mov.n	a11, a4
	add.n	a10, a3, a10
	call8	spi_flash_read
.LVL116:
	mov.n	a2, a10
.LVL117:
	retw.n
.LVL118:
.L67:
.LBB17:
	.loc 1 249 0
	mov.n	a15, sp
	addi.n	a14, sp, 4
	movi.n	a13, 0
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_partition_mmap
.LVL119:
	.loc 1 251 0
	bnez.n	a10, .L71
	.loc 1 254 0
	mov.n	a12, a5
	l32i.n	a11, sp, 4
	mov.n	a10, a4
.LVL120:
	call8	memcpy
.LVL121:
	.loc 1 255 0
	l32i.n	a10, sp, 0
	call8	spi_flash_munmap
.LVL122:
	.loc 1 256 0
	movi.n	a2, 0
.LVL123:
	retw.n
.LVL124:
.L71:
	.loc 1 252 0
	mov.n	a2, a10
.LVL125:
	retw.n
.LVL126:
.L69:
.LBE17:
	.loc 1 235 0
	movi	a2, 0x102
.LVL127:
	retw.n
.LVL128:
.L70:
	.loc 1 238 0
	movi	a2, 0x104
.LVL129:
	.loc 1 258 0
	retw.n
.LFE10:
	.size	esp_partition_read, .-esp_partition_read
	.section	.text.esp_partition_get_sha256,"ax",@progbits
	.align	4
	.global	esp_partition_get_sha256
	.type	esp_partition_get_sha256, @function
esp_partition_get_sha256:
.LFB14:
	.loc 1 330 0
.LVL130:
	entry	sp, 32
.LCFI12:
	.loc 1 331 0
	mov.n	a13, a3
	l32i.n	a12, a2, 0
	l32i.n	a11, a2, 12
	l32i.n	a10, a2, 8
	call8	bootloader_common_get_sha256_of_partition
.LVL131:
	.loc 1 332 0
	mov.n	a2, a10
.LVL132:
	retw.n
.LFE14:
	.size	esp_partition_get_sha256, .-esp_partition_get_sha256
	.section	.text.esp_partition_check_identity,"ax",@progbits
	.align	4
	.global	esp_partition_check_identity
	.type	esp_partition_check_identity, @function
esp_partition_check_identity:
.LFB15:
	.loc 1 335 0
.LVL133:
	entry	sp, 96
.LCFI13:
	.loc 1 336 0
	movi.n	a12, 0x40
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL134:
	.loc 1 338 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	esp_partition_get_sha256
.LVL135:
	bnez.n	a10, .L75
	.loc 1 339 0 discriminator 1
	addi	a11, sp, 32
	mov.n	a10, a3
	call8	esp_partition_get_sha256
.LVL136:
	.loc 1 338 0 discriminator 1
	bnez.n	a10, .L76
	.loc 1 341 0
	movi.n	a12, 0x20
	add.n	a11, sp, a12
	mov.n	a10, sp
	call8	memcmp
.LVL137:
	bnez.n	a10, .L77
	.loc 1 343 0
	movi.n	a2, 1
.LVL138:
	retw.n
.LVL139:
.L75:
	.loc 1 346 0
	movi.n	a2, 0
.LVL140:
	retw.n
.LVL141:
.L76:
	movi.n	a2, 0
.LVL142:
	retw.n
.LVL143:
.L77:
	movi.n	a2, 0
.LVL144:
	.loc 1 347 0
	retw.n
.LFE15:
	.size	esp_partition_check_identity, .-esp_partition_check_identity
	.section	.rodata.__func__$3603,"a",@progbits
	.align	4
	.type	__func__$3603, @object
	.size	__func__$3603, 19
__func__$3603:
	.string	"esp_partition_mmap"
	.section	.rodata.__func__$3594,"a",@progbits
	.align	4
	.type	__func__$3594, @object
	.size	__func__$3594, 26
__func__$3594:
	.string	"esp_partition_erase_range"
	.section	.rodata.__func__$3588,"a",@progbits
	.align	4
	.type	__func__$3588, @object
	.size	__func__$3588, 20
__func__$3588:
	.string	"esp_partition_write"
	.section	.rodata.__func__$3578,"a",@progbits
	.align	4
	.type	__func__$3578, @object
	.size	__func__$3578, 19
__func__$3578:
	.string	"esp_partition_read"
	.section	.rodata.__func__$3565,"a",@progbits
	.align	4
	.type	__func__$3565, @object
	.size	__func__$3565, 21
__func__$3565:
	.string	"esp_partition_verify"
	.section	.rodata.__func__$3561,"a",@progbits
	.align	4
	.type	__func__$3561, @object
	.size	__func__$3561, 18
__func__$3561:
	.string	"esp_partition_get"
	.section	.rodata.__func__$3524,"a",@progbits
	.align	4
	.type	__func__$3524, @object
	.size	__func__$3524, 19
__func__$3524:
	.string	"esp_partition_next"
	.section	.bss.s_partition_list_lock,"aw",@nobits
	.align	4
	.type	s_partition_list_lock, @object
	.size	s_partition_list_lock, 4
s_partition_list_lock:
	.zero	4
	.section	.bss.s_partition_list,"aw",@nobits
	.align	4
	.type	s_partition_list, @object
	.size	s_partition_list, 4
s_partition_list:
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI0-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI1-.LFB6
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI2-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI4-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI5-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI6-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI7-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI8-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI9-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI10-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI11-.LFB10
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI12-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI13-.LFB15
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE26:
	.text
.Letext0:
	.file 3 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/lock.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_flash_data_types.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/include/esp_spi_flash.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/include/esp_partition.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/string.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/include/bootloader_common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xfee
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0xc
	.4byte	.LASF135
	.4byte	.LASF136
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF2
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
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0x95
	.4byte	0x49
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x4
	.byte	0x12
	.4byte	0x62
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x16
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x4
	.byte	0x19
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x4
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x5
	.byte	0xb
	.4byte	0x49
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x6
	.byte	0x4
	.4byte	0xce
	.uleb128 0x7
	.4byte	0xc1
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x8
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x6
	.byte	0x15
	.4byte	0x57
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x6
	.byte	0x21
	.4byte	0x70
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x6
	.byte	0x2c
	.4byte	0x7b
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x6
	.byte	0x2d
	.4byte	0x86
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x7
	.byte	0x18
	.4byte	0xf0
	.uleb128 0x9
	.byte	0x8
	.byte	0x8
	.byte	0x24
	.4byte	0x132
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x8
	.byte	0x25
	.4byte	0xfb
	.byte	0
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x8
	.byte	0x26
	.4byte	0xfb
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x8
	.byte	0x27
	.4byte	0x111
	.uleb128 0x9
	.byte	0x20
	.byte	0x8
	.byte	0x2c
	.4byte	0x18e
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x8
	.byte	0x2d
	.4byte	0xe5
	.byte	0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x8
	.byte	0x2e
	.4byte	0xda
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x8
	.byte	0x2f
	.4byte	0xda
	.byte	0x3
	.uleb128 0xb
	.string	"pos"
	.byte	0x8
	.byte	0x30
	.4byte	0x132
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x8
	.byte	0x31
	.4byte	0x18e
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x8
	.byte	0x32
	.4byte	0xfb
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.4byte	0xda
	.4byte	0x19e
	.uleb128 0xd
	.4byte	0xb1
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x8
	.byte	0x33
	.4byte	0x13d
	.uleb128 0xe
	.byte	0x4
	.4byte	0x30
	.byte	0x9
	.byte	0xa1
	.4byte	0x1c2
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x9
	.byte	0xa4
	.4byte	0x1a9
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x9
	.byte	0xa9
	.4byte	0xfb
	.uleb128 0xe
	.byte	0x4
	.4byte	0x30
	.byte	0xa
	.byte	0x26
	.4byte	0x1f1
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0xa
	.byte	0x29
	.4byte	0x1d8
	.uleb128 0xe
	.byte	0x4
	.4byte	0x30
	.byte	0xa
	.byte	0x2f
	.4byte	0x2b7
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x11
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x12
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x13
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x15
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x16
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x17
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x19
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x1a
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x1b
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x1d
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x1e
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x1f
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF64
	.byte	0x80
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x81
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x82
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0xa
	.byte	0x50
	.4byte	0x1fc
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0xa
	.byte	0x5a
	.4byte	0x2cd
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2d3
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x14
	.byte	0x1
	.byte	0x2b
	.4byte	0x31c
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x2c
	.4byte	0x1f1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0x2d
	.4byte	0x2b7
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x1
	.byte	0x2e
	.4byte	0xc8
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x1
	.byte	0x2f
	.4byte	0x3da
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x1
	.byte	0x30
	.4byte	0x3e0
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x24
	.byte	0xa
	.byte	0x63
	.4byte	0x36d
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0xa
	.byte	0x64
	.4byte	0x1f1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0xa
	.byte	0x65
	.4byte	0x2b7
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0xa
	.byte	0x66
	.4byte	0xfb
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0xa
	.byte	0x67
	.4byte	0xfb
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0xa
	.byte	0x68
	.4byte	0x36d
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0xa
	.byte	0x69
	.4byte	0x37d
	.byte	0x21
	.byte	0
	.uleb128 0xc
	.4byte	0xc1
	.4byte	0x37d
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF74
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0xa
	.byte	0x6a
	.4byte	0x31c
	.uleb128 0x9
	.byte	0x4
	.byte	0x1
	.byte	0x28
	.4byte	0x3a4
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x1
	.byte	0x28
	.4byte	0x3c9
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x28
	.byte	0x1
	.byte	0x26
	.4byte	0x3c9
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x1
	.byte	0x27
	.4byte	0x384
	.byte	0
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x1
	.byte	0x28
	.4byte	0x38f
	.byte	0x24
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3a4
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0x1
	.byte	0x29
	.4byte	0x3a4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3cf
	.uleb128 0x6
	.byte	0x4
	.4byte	0x384
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0x1
	.byte	0x31
	.4byte	0x2d3
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x4
	.byte	0x1
	.byte	0x38
	.4byte	0x40a
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x1
	.byte	0x38
	.4byte	0x3c9
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0x2
	.byte	0x26
	.4byte	0x37d
	.byte	0x3
	.4byte	0x43e
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0x2
	.byte	0x27
	.4byte	0xfb
	.uleb128 0x13
	.4byte	.LASF85
	.4byte	0x44e
	.4byte	.LASF137
	.uleb128 0x12
	.4byte	.LASF86
	.byte	0x2
	.byte	0x29
	.4byte	0x37d
	.byte	0
	.uleb128 0xc
	.4byte	0xc1
	.4byte	0x44e
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.4byte	0x43e
	.uleb128 0x14
	.4byte	.LASF138
	.byte	0x1
	.byte	0x82
	.4byte	0x4b1
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b1
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0x82
	.4byte	0x1f1
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.LASF28
	.byte	0x1
	.byte	0x83
	.4byte	0x2b7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF29
	.byte	0x1
	.byte	0x83
	.4byte	0xc8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.string	"it"
	.byte	0x1
	.byte	0x85
	.4byte	0x4b1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x18
	.4byte	.LVL1
	.4byte	0xf3a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e6
	.uleb128 0x1a
	.4byte	.LASF139
	.byte	0x1
	.byte	0x91
	.4byte	0x106
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d9
	.uleb128 0x17
	.string	"ptr"
	.byte	0x1
	.byte	0x93
	.4byte	0x5d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.4byte	.LASF87
	.byte	0x1
	.byte	0x94
	.4byte	0x1cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.string	"err"
	.byte	0x1
	.byte	0x96
	.4byte	0x106
	.4byte	.LLST1
	.uleb128 0x1c
	.string	"it"
	.byte	0x1
	.byte	0x9c
	.4byte	0x5e4
	.4byte	.LLST2
	.uleb128 0x1c
	.string	"end"
	.byte	0x1
	.byte	0x9e
	.4byte	0x5e4
	.4byte	.LLST3
	.uleb128 0x1d
	.4byte	.LASF88
	.byte	0x1
	.byte	0xa0
	.4byte	0x3da
	.4byte	.LLST4
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0
	.4byte	0x5a4
	.uleb128 0x1d
	.4byte	.LASF89
	.byte	0x1
	.byte	0xa6
	.4byte	0x3da
	.4byte	.LLST5
	.uleb128 0x1f
	.4byte	0x40a
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0xac
	.4byte	0x574
	.uleb128 0x20
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x21
	.4byte	0x41a
	.4byte	.LLST6
	.uleb128 0x21
	.4byte	0x432
	.4byte	.LLST7
	.uleb128 0x22
	.4byte	0x425
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL7
	.4byte	0xf3a
	.4byte	0x588
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x18
	.4byte	.LVL16
	.4byte	0xf45
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 12
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL3
	.4byte	0xf50
	.4byte	0x5cf
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x24
	.4byte	.LVL22
	.4byte	0xf5b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5df
	.uleb128 0x7
	.4byte	0xfb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5ea
	.uleb128 0x7
	.4byte	0x19e
	.uleb128 0x25
	.4byte	.LASF140
	.byte	0x1
	.byte	0xc4
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x622
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x1
	.byte	0xc4
	.4byte	0x2c2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LVL25
	.4byte	0xf66
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF91
	.byte	0x1
	.byte	0x55
	.4byte	0x2c2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x705
	.uleb128 0x27
	.string	"it"
	.byte	0x1
	.byte	0x55
	.4byte	0x2c2
	.4byte	.LLST8
	.uleb128 0x28
	.4byte	.LASF85
	.4byte	0x715
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3524
	.uleb128 0x29
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x683
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.byte	0x5f
	.4byte	0x3e0
	.4byte	.LLST9
	.uleb128 0x18
	.4byte	.LVL33
	.4byte	0xf71
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL27
	.4byte	0xf7c
	.4byte	0x6b2
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x57
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3524
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x23
	.4byte	.LVL28
	.4byte	0x5ef
	.4byte	0x6c6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL31
	.4byte	0xf87
	.4byte	0x6dd
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_partition_list_lock
	.byte	0
	.uleb128 0x23
	.4byte	.LVL35
	.4byte	0xf92
	.4byte	0x6f4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_partition_list_lock
	.byte	0
	.uleb128 0x18
	.4byte	.LVL36
	.4byte	0x5ef
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xc1
	.4byte	0x715
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.4byte	0x705
	.uleb128 0x26
	.4byte	.LASF92
	.byte	0x1
	.byte	0x3d
	.4byte	0x2c2
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e0
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3d
	.4byte	0x1f1
	.4byte	.LLST10
	.uleb128 0x16
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3e
	.4byte	0x2b7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF29
	.byte	0x1
	.byte	0x3e
	.4byte	0xc8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.string	"it"
	.byte	0x1
	.byte	0x4e
	.4byte	0x2c2
	.4byte	.LLST11
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x7b6
	.uleb128 0x1c
	.string	"err"
	.byte	0x1
	.byte	0x43
	.4byte	0x106
	.4byte	.LLST12
	.uleb128 0x23
	.4byte	.LVL40
	.4byte	0xf87
	.4byte	0x799
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_partition_list_lock
	.byte	0
	.uleb128 0x24
	.4byte	.LVL41
	.4byte	0x4b7
	.uleb128 0x18
	.4byte	.LVL45
	.4byte	0xf92
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_partition_list_lock
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL47
	.4byte	0x453
	.4byte	0x7d6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL48
	.4byte	0x622
	.byte	0
	.uleb128 0x26
	.4byte	.LASF93
	.byte	0x1
	.byte	0xca
	.4byte	0x843
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x843
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0x1
	.byte	0xca
	.4byte	0x2c2
	.4byte	.LLST13
	.uleb128 0x28
	.4byte	.LASF85
	.4byte	0x85e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3561
	.uleb128 0x18
	.4byte	.LVL53
	.4byte	0xf7c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xcc
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3561
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x849
	.uleb128 0x7
	.4byte	0x384
	.uleb128 0xc
	.4byte	0xc1
	.4byte	0x85e
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.4byte	0x84e
	.uleb128 0x26
	.4byte	.LASF94
	.byte	0x1
	.byte	0x76
	.4byte	0x843
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x907
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0x76
	.4byte	0x1f1
	.4byte	.LLST14
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x1
	.byte	0x77
	.4byte	0x2b7
	.4byte	.LLST15
	.uleb128 0x16
	.4byte	.LASF29
	.byte	0x1
	.byte	0x77
	.4byte	0xc8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.string	"it"
	.byte	0x1
	.byte	0x79
	.4byte	0x2c2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"res"
	.byte	0x1
	.byte	0x7d
	.4byte	0x843
	.4byte	.LLST16
	.uleb128 0x23
	.4byte	.LVL56
	.4byte	0x71a
	.4byte	0x8e2
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL58
	.4byte	0x7e0
	.4byte	0x8f6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL60
	.4byte	0x5ef
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF95
	.byte	0x1
	.byte	0xd0
	.4byte	0x843
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f5
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x1
	.byte	0xd0
	.4byte	0x843
	.4byte	.LLST17
	.uleb128 0x28
	.4byte	.LASF85
	.4byte	0xa05
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3565
	.uleb128 0x1d
	.4byte	.LASF29
	.byte	0x1
	.byte	0xd3
	.4byte	0xc8
	.4byte	.LLST18
	.uleb128 0x17
	.string	"it"
	.byte	0x1
	.byte	0xd4
	.4byte	0x2c2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x9ac
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.byte	0xd8
	.4byte	0x843
	.4byte	.LLST19
	.uleb128 0x23
	.4byte	.LVL68
	.4byte	0x7e0
	.4byte	0x987
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL70
	.4byte	0x5ef
	.4byte	0x99b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL73
	.4byte	0x622
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL64
	.4byte	0xf7c
	.4byte	0x9db
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xd2
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3565
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.uleb128 0x24
	.4byte	.LVL66
	.4byte	0x71a
	.uleb128 0x18
	.4byte	.LVL75
	.4byte	0x5ef
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xc1
	.4byte	0xa05
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0x9f5
	.uleb128 0x2a
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x104
	.4byte	0x106
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad0
	.uleb128 0x2b
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x104
	.4byte	0x843
	.4byte	.LLST20
	.uleb128 0x2b
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x105
	.4byte	0x25
	.4byte	.LLST21
	.uleb128 0x2c
	.string	"src"
	.byte	0x1
	.2byte	0x105
	.4byte	0xd3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x105
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x28
	.4byte	.LASF85
	.4byte	0xae0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3588
	.uleb128 0x23
	.4byte	.LVL78
	.4byte	0xf7c
	.4byte	0xa9f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x107
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3588
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.uleb128 0x23
	.4byte	.LVL81
	.4byte	0xf9d
	.4byte	0xab9
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL83
	.4byte	0xfa8
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xc1
	.4byte	0xae0
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0xad0
	.uleb128 0x2a
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x116
	.4byte	0x106
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb7b
	.uleb128 0x2b
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x116
	.4byte	0x843
	.4byte	.LLST22
	.uleb128 0x2d
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x117
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x117
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x28
	.4byte	.LASF85
	.4byte	0xb8b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3594
	.uleb128 0x23
	.4byte	.LVL89
	.4byte	0xf7c
	.4byte	0xb6a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x119
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3594
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.uleb128 0x18
	.4byte	.LVL90
	.4byte	0xfb3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xc1
	.4byte	0xb8b
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.4byte	0xb7b
	.uleb128 0x2a
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x132
	.4byte	0x106
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb1
	.uleb128 0x2b
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x132
	.4byte	0x843
	.4byte	.LLST23
	.uleb128 0x2b
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x132
	.4byte	0xfb
	.4byte	.LLST24
	.uleb128 0x2d
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x132
	.4byte	0xfb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x133
	.4byte	0x1c2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2d
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x134
	.4byte	0xcb1
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2d
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x134
	.4byte	0xcb7
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x28
	.4byte	.LASF85
	.4byte	0xcbd
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3603
	.uleb128 0x2e
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x13d
	.4byte	0x25
	.4byte	.LLST25
	.uleb128 0x2e
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x13f
	.4byte	0x25
	.4byte	.LLST26
	.uleb128 0x2e
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x140
	.4byte	0x25
	.4byte	.LLST27
	.uleb128 0x2f
	.string	"rc"
	.byte	0x1
	.2byte	0x141
	.4byte	0x106
	.4byte	.LLST28
	.uleb128 0x23
	.4byte	.LVL101
	.4byte	0xf7c
	.4byte	0xc80
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x136
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3603
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.uleb128 0x18
	.4byte	.LVL105
	.4byte	0xf50
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1cd
	.uleb128 0x7
	.4byte	0x705
	.uleb128 0x26
	.4byte	.LASF108
	.byte	0x1
	.byte	0xe6
	.4byte	0x106
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf3
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x1
	.byte	0xe6
	.4byte	0x843
	.4byte	.LLST29
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x1
	.byte	0xe7
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.string	"dst"
	.byte	0x1
	.byte	0xe7
	.4byte	0xb8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF24
	.byte	0x1
	.byte	0xe7
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x28
	.4byte	.LASF85
	.4byte	0xdf3
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3578
	.uleb128 0x29
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0xdad
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0xf5
	.4byte	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.4byte	.LASF87
	.byte	0x1
	.byte	0xf6
	.4byte	0x1cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"err"
	.byte	0x1
	.byte	0xf7
	.4byte	0x106
	.4byte	.LLST30
	.uleb128 0x23
	.4byte	.LVL119
	.4byte	0xb90
	.4byte	0xd89
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x23
	.4byte	.LVL121
	.4byte	0xfbe
	.4byte	0xda3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL122
	.4byte	0xf5b
	.byte	0
	.uleb128 0x23
	.4byte	.LVL115
	.4byte	0xf7c
	.4byte	0xddc
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe9
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$3578
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.uleb128 0x18
	.4byte	.LVL116
	.4byte	0xfc7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x705
	.uleb128 0x2a
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x149
	.4byte	0x106
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe41
	.uleb128 0x2b
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x149
	.4byte	0x843
	.4byte	.LLST31
	.uleb128 0x2d
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x149
	.4byte	0xe41
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LVL131
	.4byte	0xfd2
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xda
	.uleb128 0x2a
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x14e
	.4byte	0x37d
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf02
	.uleb128 0x2b
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x14e
	.4byte	0x843
	.4byte	.LLST32
	.uleb128 0x2d
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x14e
	.4byte	0x843
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x150
	.4byte	0xf02
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.4byte	.LVL134
	.4byte	0xfdd
	.4byte	0xeaf
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x23
	.4byte	.LVL135
	.4byte	0xdf8
	.4byte	0xeca
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x23
	.4byte	.LVL136
	.4byte	0xdf8
	.4byte	0xee4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x18
	.4byte	.LVL137
	.4byte	0xfe6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xda
	.4byte	0xf18
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x1
	.uleb128 0xd
	.4byte	0xb1
	.byte	0x1f
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF115
	.byte	0x1
	.byte	0x38
	.4byte	0x3f1
	.uleb128 0x5
	.byte	0x3
	.4byte	s_partition_list
	.uleb128 0x1b
	.4byte	.LASF116
	.byte	0x1
	.byte	0x3a
	.4byte	0x9f
	.uleb128 0x5
	.byte	0x3
	.4byte	s_partition_list_lock
	.uleb128 0x32
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0xb
	.byte	0x65
	.uleb128 0x32
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0xc
	.byte	0x24
	.uleb128 0x32
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0x9
	.byte	0xc1
	.uleb128 0x32
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0x9
	.byte	0xe9
	.uleb128 0x32
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0xb
	.byte	0x5a
	.uleb128 0x32
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0xc
	.byte	0x1c
	.uleb128 0x32
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0xd
	.byte	0x29
	.uleb128 0x32
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0x5
	.byte	0x20
	.uleb128 0x32
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0x5
	.byte	0x24
	.uleb128 0x32
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x9
	.byte	0x74
	.uleb128 0x32
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0x9
	.byte	0x5d
	.uleb128 0x32
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0x9
	.byte	0x4a
	.uleb128 0x33
	.4byte	.LASF131
	.4byte	.LASF131
	.uleb128 0x32
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x9
	.byte	0x8b
	.uleb128 0x32
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0xe
	.byte	0x5d
	.uleb128 0x33
	.4byte	.LASF132
	.4byte	.LASF132
	.uleb128 0x32
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0xc
	.byte	0x16
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL39
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
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL50
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL55
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL63
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL69
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
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
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79
	.4byte	.LVL81-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL82
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL88
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL100
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LVL108
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL111
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102
	.4byte	.LVL108
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL112
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL102
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL112
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL103
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LFE13
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL105-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL105-1
	.4byte	.LVL106
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LFE13
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL105
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL112
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL114
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
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL129
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL133
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL144
	.4byte	.LFE15
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF86:
	.string	"enabled"
.LASF115:
	.string	"s_partition_list"
.LASF88:
	.string	"last"
.LASF134:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF119:
	.string	"spi_flash_mmap"
.LASF13:
	.string	"_lock_t"
.LASF90:
	.string	"iterator"
.LASF124:
	.string	"_lock_acquire"
.LASF100:
	.string	"start_addr"
.LASF30:
	.string	"flags"
.LASF37:
	.string	"ESP_PARTITION_TYPE_DATA"
.LASF51:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_10"
.LASF52:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_11"
.LASF53:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_12"
.LASF54:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_13"
.LASF55:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_14"
.LASF56:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_15"
.LASF0:
	.string	"unsigned int"
.LASF79:
	.string	"next"
.LASF91:
	.string	"esp_partition_next"
.LASF9:
	.string	"__int32_t"
.LASF125:
	.string	"_lock_release"
.LASF67:
	.string	"ESP_PARTITION_SUBTYPE_ANY"
.LASF36:
	.string	"ESP_PARTITION_TYPE_APP"
.LASF78:
	.string	"partition_list_item_"
.LASF120:
	.string	"spi_flash_munmap"
.LASF101:
	.string	"esp_partition_mmap"
.LASF138:
	.string	"iterator_create"
.LASF127:
	.string	"spi_flash_write"
.LASF21:
	.string	"uint32_t"
.LASF140:
	.string	"esp_partition_iterator_release"
.LASF39:
	.string	"ESP_PARTITION_SUBTYPE_APP_FACTORY"
.LASF33:
	.string	"SPI_FLASH_MMAP_INST"
.LASF110:
	.string	"esp_partition_get_sha256"
.LASF117:
	.string	"malloc"
.LASF12:
	.string	"long long unsigned int"
.LASF128:
	.string	"spi_flash_erase_range"
.LASF118:
	.string	"strncpy"
.LASF8:
	.string	"__uint16_t"
.LASF105:
	.string	"phys_addr"
.LASF43:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_2"
.LASF35:
	.string	"spi_flash_mmap_handle_t"
.LASF73:
	.string	"encrypted"
.LASF69:
	.string	"esp_partition_iterator_t"
.LASF58:
	.string	"ESP_PARTITION_SUBTYPE_APP_TEST"
.LASF75:
	.string	"esp_partition_t"
.LASF2:
	.string	"size_t"
.LASF40:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MIN"
.LASF31:
	.string	"esp_partition_info_t"
.LASF23:
	.string	"offset"
.LASF60:
	.string	"ESP_PARTITION_SUBTYPE_DATA_PHY"
.LASF32:
	.string	"SPI_FLASH_MMAP_DATA"
.LASF74:
	.string	"_Bool"
.LASF34:
	.string	"spi_flash_mmap_memory_t"
.LASF95:
	.string	"esp_partition_verify"
.LASF121:
	.string	"free"
.LASF93:
	.string	"esp_partition_get"
.LASF92:
	.string	"esp_partition_find"
.LASF17:
	.string	"char"
.LASF113:
	.string	"partition_1"
.LASF114:
	.string	"partition_2"
.LASF3:
	.string	"ptrdiff_t"
.LASF137:
	.string	"esp_flash_encryption_enabled"
.LASF61:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS"
.LASF18:
	.string	"uint8_t"
.LASF11:
	.string	"long long int"
.LASF94:
	.string	"esp_partition_find_first"
.LASF80:
	.string	"partition_list_item_t"
.LASF132:
	.string	"memset"
.LASF24:
	.string	"size"
.LASF89:
	.string	"item"
.LASF96:
	.string	"partition"
.LASF71:
	.string	"info"
.LASF123:
	.string	"__assert_func"
.LASF64:
	.string	"ESP_PARTITION_SUBTYPE_DATA_ESPHTTPD"
.LASF83:
	.string	"slh_first"
.LASF116:
	.string	"s_partition_list_lock"
.LASF136:
	.string	"/home/raphael/rtone/lcd/build/spi_flash"
.LASF126:
	.string	"spi_flash_write_encrypted"
.LASF19:
	.string	"uint16_t"
.LASF28:
	.string	"subtype"
.LASF82:
	.string	"partition_list_head_"
.LASF97:
	.string	"esp_partition_write"
.LASF70:
	.string	"next_item"
.LASF7:
	.string	"short int"
.LASF130:
	.string	"bootloader_common_get_sha256_of_partition"
.LASF14:
	.string	"long int"
.LASF103:
	.string	"out_ptr"
.LASF59:
	.string	"ESP_PARTITION_SUBTYPE_DATA_OTA"
.LASF63:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS_KEYS"
.LASF133:
	.string	"memcmp"
.LASF129:
	.string	"spi_flash_read"
.LASF99:
	.string	"esp_partition_erase_range"
.LASF5:
	.string	"__uint8_t"
.LASF106:
	.string	"region_offset"
.LASF41:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_0"
.LASF42:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_1"
.LASF26:
	.string	"magic"
.LASF44:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_3"
.LASF45:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_4"
.LASF46:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_5"
.LASF47:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_6"
.LASF48:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_7"
.LASF49:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_8"
.LASF50:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_9"
.LASF15:
	.string	"sizetype"
.LASF139:
	.string	"load_partitions"
.LASF16:
	.string	"long unsigned int"
.LASF104:
	.string	"out_handle"
.LASF72:
	.string	"address"
.LASF20:
	.string	"int32_t"
.LASF57:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MAX"
.LASF135:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/partition.c"
.LASF102:
	.string	"memory"
.LASF27:
	.string	"type"
.LASF6:
	.string	"unsigned char"
.LASF10:
	.string	"__uint32_t"
.LASF22:
	.string	"esp_err_t"
.LASF108:
	.string	"esp_partition_read"
.LASF29:
	.string	"label"
.LASF68:
	.string	"esp_partition_subtype_t"
.LASF38:
	.string	"esp_partition_type_t"
.LASF62:
	.string	"ESP_PARTITION_SUBTYPE_DATA_COREDUMP"
.LASF65:
	.string	"ESP_PARTITION_SUBTYPE_DATA_FAT"
.LASF84:
	.string	"flash_crypt_cnt"
.LASF111:
	.string	"sha_256"
.LASF4:
	.string	"signed char"
.LASF1:
	.string	"short unsigned int"
.LASF98:
	.string	"dst_offset"
.LASF87:
	.string	"handle"
.LASF131:
	.string	"memcpy"
.LASF85:
	.string	"__func__"
.LASF107:
	.string	"mmap_addr"
.LASF76:
	.string	"sle_next"
.LASF112:
	.string	"esp_partition_check_identity"
.LASF109:
	.string	"src_offset"
.LASF25:
	.string	"esp_partition_pos_t"
.LASF77:
	.string	"esp_partition_iterator_opaque_"
.LASF66:
	.string	"ESP_PARTITION_SUBTYPE_DATA_SPIFFS"
.LASF122:
	.string	"strcmp"
.LASF81:
	.string	"esp_partition_iterator_opaque_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
