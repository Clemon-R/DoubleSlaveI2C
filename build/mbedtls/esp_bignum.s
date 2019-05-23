	.file	"esp_bignum.c"
	.text
.Ltext0:
	.global	__umoddi3
	.section	.text.modular_inverse,"ax",@progbits
	.literal_position
	.align	4
	.type	modular_inverse, @function
modular_inverse:
.LFB30:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/mbedtls/port/esp_bignum.c"
	.loc 1 205 0
.LVL0:
	entry	sp, 48
.LCFI0:
.LVL1:
	.loc 1 210 0
	l32i.n	a2, a2, 8
.LVL2:
	l32i.n	a7, a2, 0
.LVL3:
	.loc 1 209 0
	movi.n	a4, 4
	movi.n	a2, 0
	s32i.n	a2, sp, 0
	.loc 1 208 0
	movi.n	a5, 2
	mov.n	a3, a2
	.loc 1 207 0
	movi.n	a2, 1
	s32i.n	a3, sp, 4
	.loc 1 212 0
	mov.n	a6, a5
	j	.L2
.LVL4:
.L6:
	.loc 1 213 0
	l32i.n	a8, sp, 4
	mull	a11, a8, a7
	muluh	a8, a7, a2
	add.n	a11, a11, a8
	mov.n	a12, a4
	l32i.n	a13, sp, 0
	mull	a10, a7, a2
	call8	__umoddi3
.LVL5:
	bltu	a11, a3, .L3
	bne	a3, a11, .L7
	bltu	a10, a5, .L3
.L7:
	.loc 1 214 0
	add.n	a9, a2, a5
	movi.n	a8, 1
	bltu	a9, a2, .L5
	movi.n	a8, 0
.L5:
	l32i.n	a10, sp, 4
	add.n	a2, a10, a3
.LVL6:
	add.n	a8, a8, a2
	mov.n	a2, a9
	s32i.n	a8, sp, 4
.LVL7:
.L3:
	.loc 1 217 0 discriminator 2
	extui	a9, a5, 31, 1
	slli	a8, a3, 1
	slli	a10, a5, 1
	mov.n	a5, a10
.LVL8:
	or	a3, a9, a8
.LVL9:
	.loc 1 218 0 discriminator 2
	extui	a9, a4, 31, 1
	l32i.n	a10, sp, 0
	slli	a8, a10, 1
	slli	a10, a4, 1
	mov.n	a4, a10
.LVL10:
	or	a8, a9, a8
	s32i.n	a8, sp, 0
.LVL11:
	.loc 1 212 0 discriminator 2
	addi.n	a6, a6, 1
.LVL12:
.L2:
	.loc 1 212 0 is_stmt 0 discriminator 1
	movi.n	a8, 0x20
	bge	a8, a6, .L6
	.loc 1 222 0 is_stmt 1
	neg	a2, a2
.LVL13:
	retw.n
.LFE30:
	.size	modular_inverse, .-modular_inverse
	.section	.text.calculate_rinv,"ax",@progbits
	.align	4
	.type	calculate_rinv, @function
calculate_rinv:
.LFB31:
	.loc 1 237 0
.LVL14:
	entry	sp, 48
.LCFI1:
	mov.n	a5, a2
.LVL15:
	.loc 1 241 0
	mov.n	a10, sp
	call8	mbedtls_mpi_init
.LVL16:
	.loc 1 242 0
	movi.n	a12, 1
	slli	a11, a4, 6
	mov.n	a10, sp
	call8	mbedtls_mpi_set_bit
.LVL17:
	mov.n	a2, a10
.LVL18:
	bnez.n	a10, .L9
	.loc 1 243 0
	mov.n	a12, a3
	mov.n	a11, sp
	mov.n	a10, a5
	call8	mbedtls_mpi_mod_mpi
.LVL19:
	mov.n	a2, a10
.LVL20:
.L9:
	.loc 1 246 0
	mov.n	a10, sp
	call8	mbedtls_mpi_free
.LVL21:
	.loc 1 248 0
	retw.n
.LFE31:
	.size	calculate_rinv, .-calculate_rinv
	.section	.text.esp_mpi_acquire_hardware,"ax",@progbits
	.literal_position
	.literal .LC3, mpi_lock
	.literal .LC4, 1072694416
	.literal .LC5, 1072703512
	.align	4
	.global	esp_mpi_acquire_hardware
	.type	esp_mpi_acquire_hardware, @function
esp_mpi_acquire_hardware:
.LFB23:
	.loc 1 91 0
	entry	sp, 32
.LCFI2:
	.loc 1 93 0
	l32r	a10, .LC3
	call8	_lock_acquire
.LVL22:
	.loc 1 96 0
	movi.n	a10, 0x22
	call8	periph_module_enable
.LVL23:
.LBB48:
.LBB49:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 79 0
	l32r	a2, .LC4
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL24:
.LBE49:
.LBE48:
	.loc 1 97 0
	movi.n	a8, -2
	and	a10, a10, a8
	memw
	s32i.n	a10, a2, 0
.L11:
.LVL25:
.LBB50:
.LBB51:
	.loc 2 79 0 discriminator 1
	l32r	a10, .LC5
	call8	esp_dport_access_reg_read
.LVL26:
.LBE51:
.LBE50:
	.loc 1 99 0 discriminator 1
	bnei	a10, 1, .L11
	.loc 1 105 0
	retw.n
.LFE23:
	.size	esp_mpi_acquire_hardware, .-esp_mpi_acquire_hardware
	.section	.text.esp_mpi_release_hardware,"ax",@progbits
	.literal_position
	.literal .LC6, 1072694416
	.literal .LC7, mpi_lock
	.align	4
	.global	esp_mpi_release_hardware
	.type	esp_mpi_release_hardware, @function
esp_mpi_release_hardware:
.LFB24:
	.loc 1 108 0
	entry	sp, 32
.LCFI3:
.LVL27:
.LBB52:
.LBB53:
	.loc 2 79 0
	l32r	a2, .LC6
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL28:
.LBE53:
.LBE52:
	.loc 1 109 0
	movi.n	a8, 1
	or	a10, a10, a8
	memw
	s32i.n	a10, a2, 0
	.loc 1 112 0
	movi.n	a10, 0x22
	call8	periph_module_disable
.LVL29:
	.loc 1 114 0
	l32r	a10, .LC7
	call8	_lock_release
.LVL30:
	retw.n
.LFE24:
	.size	esp_mpi_release_hardware, .-esp_mpi_release_hardware
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC15:
	.string	"x->n >= num_words"
	.align	4
.LC18:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/mbedtls/port/esp_bignum.c"
	.section	.text.esp_mpi_mul_mpi_mod,"ax",@progbits
	.literal_position
	.literal .LC8, 1072701440
	.literal .LC9, 1072702976
	.literal .LC10, 1072701952
	.literal .LC11, 1072703488
	.literal .LC12, 1072703500
	.literal .LC13, 1072703508
	.literal .LC14, 1072703504
	.literal .LC16, .LC15
	.literal .LC17, __func__$5819
	.literal .LC19, .LC18
	.align	4
	.global	esp_mpi_mul_mpi_mod
	.type	esp_mpi_mul_mpi_mod, @function
esp_mpi_mul_mpi_mod:
.LFB34:
	.loc 1 293 0
.LVL31:
	entry	sp, 64
.LCFI4:
	.loc 1 295 0
	mov.n	a10, a3
	call8	mbedtls_mpi_bitlen
.LVL32:
	mov.n	a6, a10
.LVL33:
	.loc 1 296 0
	mov.n	a10, a4
	call8	mbedtls_mpi_bitlen
.LVL34:
	mov.n	a7, a10
.LVL35:
	.loc 1 297 0
	mov.n	a10, a5
	call8	mbedtls_mpi_bitlen
.LVL36:
	.loc 1 298 0
	add.n	a9, a6, a7
	minu	a9, a10, a9
.LVL37:
.LBB97:
.LBB98:
	.loc 1 121 0
	addi	a6, a6, 31
.LVL38:
	srli	a6, a6, 5
.LVL39:
.LBE98:
.LBE97:
.LBB99:
.LBB100:
	addi	a7, a7, 31
.LVL40:
	srli	a8, a7, 5
.LVL41:
.LBE100:
.LBE99:
.LBB101:
.LBB102:
	addi	a7, a10, 31
.LVL42:
	srli	a7, a7, 5
.LVL43:
.LBE102:
.LBE101:
.LBB103:
.LBB104:
	addi	a9, a9, 31
.LVL44:
	srli	a9, a9, 5
.LVL45:
	s32i.n	a9, sp, 16
.LBE104:
.LBE103:
	.loc 1 303 0
	maxu	a7, a7, a8
	maxu	a7, a7, a6
.LVL46:
.LBB105:
.LBB106:
	.loc 1 129 0
	addi.n	a7, a7, 15
.LVL47:
	movi.n	a6, -0x10
	and	a6, a7, a6
.LBE106:
.LBE105:
	.loc 1 308 0
	mov.n	a10, sp
.LVL48:
	call8	mbedtls_mpi_init
.LVL49:
	.loc 1 309 0
	mov.n	a12, a6
	mov.n	a11, a5
	mov.n	a10, sp
	call8	calculate_rinv
.LVL50:
	mov.n	a7, a10
.LVL51:
	bnez.n	a10, .L14
	.loc 1 310 0
	mov.n	a10, a5
	call8	modular_inverse
.LVL52:
	mov.n	a7, a10
.LVL53:
	.loc 1 312 0
	call8	esp_mpi_acquire_hardware
.LVL54:
.LBB107:
.LBB108:
	.loc 1 159 0
	l32i.n	a8, a5, 4
	minu	a8, a6, a8
.LVL55:
.LBB109:
	.loc 1 162 0
	movi.n	a10, 0
	j	.L15
.LVL56:
.L16:
	.loc 1 163 0
	slli	a9, a10, 2
	l32r	a11, .LC8
	add.n	a11, a9, a11
	l32i.n	a12, a5, 8
	add.n	a9, a12, a9
	l32i.n	a9, a9, 0
	s32i.n	a9, a11, 0
	.loc 1 162 0
	addi.n	a10, a10, 1
.LVL57:
.L15:
	bltu	a10, a8, .L16
.LBE109:
.LBB110:
	.loc 1 167 0
	mov.n	a5, a8
.LVL58:
	j	.L17
.LVL59:
.L18:
	.loc 1 168 0
	l32r	a8, .LC8
	addx4	a8, a5, a8
	movi.n	a9, 0
	s32i.n	a9, a8, 0
	.loc 1 167 0
	addi.n	a5, a5, 1
.LVL60:
.L17:
	bltu	a5, a6, .L18
.LVL61:
.LBE110:
.LBE108:
.LBE107:
.LBB111:
.LBB112:
	.loc 1 159 0
	l32i.n	a5, a3, 4
.LVL62:
	minu	a5, a6, a5
.LVL63:
.LBB113:
	.loc 1 162 0
	movi.n	a9, 0
	j	.L19
.LVL64:
.L20:
	.loc 1 163 0
	slli	a8, a9, 2
	l32r	a10, .LC9
	add.n	a10, a8, a10
	l32i.n	a11, a3, 8
	add.n	a8, a11, a8
	l32i.n	a8, a8, 0
	s32i.n	a8, a10, 0
	.loc 1 162 0
	addi.n	a9, a9, 1
.LVL65:
.L19:
	bltu	a9, a5, .L20
.LVL66:
	j	.L21
.LVL67:
.L22:
.LBE113:
.LBB114:
	.loc 1 168 0
	l32r	a8, .LC9
	addx4	a8, a5, a8
	movi.n	a9, 0
	s32i.n	a9, a8, 0
	.loc 1 167 0
	addi.n	a5, a5, 1
.LVL68:
.L21:
	bltu	a5, a6, .L22
.LVL69:
.LBE114:
.LBE112:
.LBE111:
.LBB115:
.LBB116:
	.loc 1 159 0
	l32i.n	a5, sp, 4
.LVL70:
	minu	a5, a6, a5
.LVL71:
.LBB117:
	.loc 1 162 0
	movi.n	a9, 0
	j	.L23
.LVL72:
.L24:
	.loc 1 163 0
	slli	a8, a9, 2
	l32r	a10, .LC10
	add.n	a10, a8, a10
	l32i.n	a11, sp, 8
	add.n	a8, a11, a8
	l32i.n	a8, a8, 0
	s32i.n	a8, a10, 0
	.loc 1 162 0
	addi.n	a9, a9, 1
.LVL73:
.L23:
	bltu	a9, a5, .L24
.LVL74:
	j	.L25
.LVL75:
.L26:
.LBE117:
.LBB118:
	.loc 1 168 0
	l32r	a8, .LC10
	addx4	a8, a5, a8
	movi.n	a9, 0
	s32i.n	a9, a8, 0
	.loc 1 167 0
	addi.n	a5, a5, 1
.LVL76:
.L25:
	bltu	a5, a6, .L26
.LBE118:
.LBE116:
.LBE115:
	.loc 1 318 0
	l32r	a5, .LC11
.LVL77:
	memw
	s32i.n	a7, a5, 0
	.loc 1 321 0
	srli	a5, a6, 4
	addi.n	a5, a5, -1
	l32r	a7, .LC12
.LVL78:
	memw
	s32i.n	a5, a7, 0
.LVL79:
.LBB119:
.LBB120:
	.loc 1 257 0
	movi.n	a5, 1
	l32r	a7, .LC13
	memw
	s32i.n	a5, a7, 0
	.loc 1 262 0
	l32r	a7, .LC14
	memw
	s32i.n	a5, a7, 0
.L27:
.LVL80:
.LBE120:
.LBE119:
.LBB121:
.LBB122:
.LBB123:
.LBB124:
	.loc 2 79 0
	l32r	a10, .LC13
	call8	esp_dport_access_reg_read
.LVL81:
.LBE124:
.LBE123:
	.loc 1 276 0
	bnei	a10, 1, .L27
	.loc 1 280 0
	movi.n	a7, 1
	l32r	a5, .LC13
	memw
	s32i.n	a7, a5, 0
.LVL82:
.LBE122:
.LBE121:
.LBB125:
.LBB126:
.LBB127:
.LBB128:
	.loc 1 159 0
	l32i.n	a5, a4, 4
	minu	a5, a6, a5
.LVL83:
.LBB129:
	.loc 1 162 0
	movi.n	a8, 0
	j	.L28
.LVL84:
.L29:
	.loc 1 163 0
	slli	a7, a8, 2
	l32r	a9, .LC9
	add.n	a9, a7, a9
	l32i.n	a10, a4, 8
	add.n	a7, a10, a7
	l32i.n	a7, a7, 0
	s32i.n	a7, a9, 0
	.loc 1 162 0
	addi.n	a8, a8, 1
.LVL85:
.L28:
	bltu	a8, a5, .L29
.LVL86:
	j	.L30
.LVL87:
.L31:
.LBE129:
.LBB130:
	.loc 1 168 0
	l32r	a7, .LC9
	addx4	a7, a5, a7
	movi.n	a8, 0
	s32i.n	a8, a7, 0
	.loc 1 167 0
	addi.n	a5, a5, 1
.LVL88:
.L30:
	bltu	a5, a6, .L31
.LVL89:
.LBE130:
.LBE128:
.LBE127:
.LBB131:
.LBB132:
	.loc 1 257 0
	movi.n	a5, 1
.LVL90:
	l32r	a6, .LC13
.LVL91:
	memw
	s32i.n	a5, a6, 0
.LVL92:
	.loc 1 262 0
	l32r	a6, .LC14
	memw
	s32i.n	a5, a6, 0
.LBE132:
.LBE131:
	.loc 1 438 0
	l32i.n	a11, sp, 16
	mov.n	a10, a2
	call8	mbedtls_mpi_grow
.LVL93:
	mov.n	a7, a10
.LVL94:
	bnez.n	a10, .L32
.L33:
.LVL95:
.LBB133:
.LBB134:
.LBB135:
.LBB136:
	.loc 2 79 0
	l32r	a10, .LC13
	call8	esp_dport_access_reg_read
.LVL96:
.LBE136:
.LBE135:
	.loc 1 276 0
	bnei	a10, 1, .L33
	.loc 1 280 0
	movi.n	a6, 1
	l32r	a5, .LC13
	memw
	s32i.n	a6, a5, 0
.LVL97:
.LBE134:
.LBE133:
.LBB137:
.LBB138:
	.loc 1 183 0
	l32i.n	a6, a2, 4
	l32i.n	a5, sp, 16
	bgeu	a6, a5, .L34
	l32r	a13, .LC16
	l32r	a12, .LC17
	movi	a11, 0xb7
	l32r	a10, .LC19
	call8	__assert_func
.LVL98:
.L34:
	.loc 1 186 0
	l32i.n	a12, sp, 16
	l32r	a11, .LC10
	l32i.n	a10, a2, 8
	call8	esp_dport_access_read_buffer
.LVL99:
	j	.L35
.LVL100:
.L36:
.LBB139:
	.loc 1 191 0
	l32i.n	a6, a2, 8
	addx4	a6, a5, a6
	movi.n	a8, 0
	s32i.n	a8, a6, 0
	.loc 1 190 0
	addi.n	a5, a5, 1
.LVL101:
.L35:
	l32i.n	a6, a2, 4
	bltu	a5, a6, .L36
.LBE139:
.LBE138:
.LBE137:
	.loc 1 444 0
	l32i.n	a5, a3, 0
.LVL102:
	l32i.n	a3, a4, 0
.LVL103:
	mull	a3, a5, a3
	s32i.n	a3, a2, 0
.LVL104:
.L32:
.LBE126:
.LBE125:
	.loc 1 331 0
	call8	esp_mpi_release_hardware
.LVL105:
.L14:
	.loc 1 334 0
	mov.n	a10, sp
	call8	mbedtls_mpi_free
.LVL106:
	.loc 1 336 0
	mov.n	a2, a7
.LVL107:
	retw.n
.LFE34:
	.size	esp_mpi_mul_mpi_mod, .-esp_mpi_mul_mpi_mod
	.section	.rodata.__func__$5819,"a",@progbits
	.align	4
	.type	__func__$5819, @object
	.size	__func__$5819, 17
__func__$5819:
	.string	"mem_block_to_mpi"
	.section	.bss.mpi_lock,"aw",@nobits
	.align	4
	.type	mpi_lock, @object
	.size	mpi_lock, 4
mpi_lock:
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI0-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI1-.LFB31
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI2-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI3-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI4-.LFB34
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/lock.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_dport_access.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/driver/include/driver/periph_ctrl.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/periph_defs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xcb0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0xc
	.4byte	.LASF105
	.4byte	.LASF106
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0xd8
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x5
	.byte	0xb
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0xab
	.uleb128 0x6
	.4byte	0x9e
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x6
	.byte	0x2d
	.4byte	0x56
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x6
	.byte	0x39
	.4byte	0x68
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x7
	.byte	0xa8
	.4byte	0xb0
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0xc
	.byte	0x7
	.byte	0xb6
	.4byte	0xfc
	.uleb128 0x8
	.string	"s"
	.byte	0x7
	.byte	0xb8
	.4byte	0x4f
	.byte	0
	.uleb128 0x8
	.string	"n"
	.byte	0x7
	.byte	0xb9
	.4byte	0x73
	.byte	0x4
	.uleb128 0x8
	.string	"p"
	.byte	0x7
	.byte	0xba
	.4byte	0xfc
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc6
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x7
	.byte	0xbc
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x16
	.4byte	0x1f3
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x11
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x12
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x13
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x15
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x17
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x19
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x1a
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x1b
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x1d
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x1e
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x1f
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x21
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x22
	.byte	0
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x2
	.byte	0x4a
	.4byte	0xb0
	.byte	0x3
	.4byte	0x20f
	.uleb128 0xc
	.string	"reg"
	.byte	0x2
	.byte	0x4a
	.4byte	0xb0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x1
	.byte	0xfe
	.byte	0x3
	.4byte	0x227
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x1
	.byte	0xfe
	.4byte	0xb0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x1
	.byte	0x9c
	.byte	0x3
	.4byte	0x285
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x1
	.byte	0x9c
	.4byte	0xb0
	.uleb128 0xc
	.string	"mpi"
	.byte	0x1
	.byte	0x9c
	.4byte	0x285
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x1
	.byte	0x9c
	.4byte	0x73
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x1
	.byte	0x9e
	.4byte	0x290
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x1
	.byte	0x9f
	.4byte	0xb0
	.uleb128 0x10
	.4byte	0x279
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xa2
	.4byte	0x4f
	.byte	0
	.uleb128 0x12
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xa7
	.4byte	0x4f
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x28b
	.uleb128 0x6
	.4byte	0x102
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb0
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x10b
	.byte	0x3
	.4byte	0x2b0
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x10b
	.4byte	0xb0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x1
	.byte	0x7f
	.4byte	0x73
	.byte	0x3
	.4byte	0x2cc
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x1
	.byte	0x7f
	.4byte	0x73
	.byte	0
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x1
	.byte	0x77
	.4byte	0x73
	.byte	0x3
	.4byte	0x2e8
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x1
	.byte	0x77
	.4byte	0x73
	.byte	0
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x1
	.byte	0xcc
	.4byte	0xc6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x358
	.uleb128 0x16
	.string	"M"
	.byte	0x1
	.byte	0xcc
	.4byte	0x285
	.4byte	.LLST0
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0xce
	.4byte	0x4f
	.4byte	.LLST1
	.uleb128 0x17
	.string	"t"
	.byte	0x1
	.byte	0xcf
	.4byte	0xbb
	.4byte	.LLST2
	.uleb128 0x18
	.4byte	.LASF68
	.byte	0x1
	.byte	0xd0
	.4byte	0xbb
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LASF69
	.byte	0x1
	.byte	0xd1
	.4byte	0xbb
	.4byte	.LLST4
	.uleb128 0x19
	.string	"N"
	.byte	0x1
	.byte	0xd2
	.4byte	0xbb
	.uleb128 0x7
	.byte	0x77
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF71
	.byte	0x1
	.byte	0xec
	.4byte	0x4f
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x434
	.uleb128 0x1b
	.4byte	.LASF72
	.byte	0x1
	.byte	0xec
	.4byte	0x434
	.4byte	.LLST5
	.uleb128 0x1c
	.string	"M"
	.byte	0x1
	.byte	0xec
	.4byte	0x285
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF73
	.byte	0x1
	.byte	0xec
	.4byte	0x4f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.string	"ret"
	.byte	0x1
	.byte	0xee
	.4byte	0x4f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF74
	.byte	0x1
	.byte	0xef
	.4byte	0x73
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.uleb128 0x19
	.string	"RR"
	.byte	0x1
	.byte	0xf0
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.4byte	.LASF89
	.byte	0x1
	.byte	0xf5
	.4byte	.L9
	.uleb128 0x20
	.4byte	.LVL16
	.4byte	0xc16
	.4byte	0x3e2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x20
	.4byte	.LVL17
	.4byte	0xc21
	.4byte	0x403
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x74
	.sleb128 0
	.byte	0x36
	.byte	0x24
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x20
	.4byte	.LVL19
	.4byte	0xc2d
	.4byte	0x423
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL21
	.4byte	0xc39
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x102
	.uleb128 0x23
	.4byte	.LASF75
	.byte	0x1
	.byte	0x5a
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d4
	.uleb128 0x24
	.4byte	0x1f3
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.byte	0x1
	.byte	0x61
	.4byte	0x47c
	.uleb128 0x25
	.4byte	0x203
	.4byte	0x3ff00490
	.uleb128 0x22
	.4byte	.LVL24
	.4byte	0xc44
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x1f3
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.byte	0x1
	.byte	0x63
	.4byte	0x4ac
	.uleb128 0x25
	.4byte	0x203
	.4byte	0x3ff02818
	.uleb128 0x22
	.4byte	.LVL26
	.4byte	0xc44
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff02818
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL22
	.4byte	0xc4f
	.4byte	0x4c3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	mpi_lock
	.byte	0
	.uleb128 0x22
	.4byte	.LVL23
	.4byte	0xc5a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF76
	.byte	0x1
	.byte	0x6b
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53e
	.uleb128 0x24
	.4byte	0x1f3
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.byte	0x1
	.byte	0x6d
	.4byte	0x516
	.uleb128 0x25
	.4byte	0x203
	.4byte	0x3ff00490
	.uleb128 0x22
	.4byte	.LVL28
	.4byte	0xc44
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL29
	.4byte	0xc65
	.4byte	0x52a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x22
	.byte	0
	.uleb128 0x22
	.4byte	.LVL30
	.4byte	0xc70
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	mpi_lock
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x4f
	.byte	0x3
	.4byte	0x59a
	.uleb128 0x27
	.string	"Z"
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x434
	.uleb128 0x27
	.string	"X"
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x285
	.uleb128 0x27
	.string	"Y"
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x285
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x73
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x73
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.2byte	0x1af
	.4byte	0x4f
	.uleb128 0x29
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1be
	.byte	0
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0x1
	.byte	0xb5
	.byte	0x3
	.4byte	0x5de
	.uleb128 0xc
	.string	"x"
	.byte	0x1
	.byte	0xb5
	.4byte	0x434
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x1
	.byte	0xb5
	.4byte	0xb0
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x1
	.byte	0xb5
	.4byte	0x4f
	.uleb128 0x2a
	.4byte	.LASF80
	.4byte	0x5ee
	.4byte	.LASF79
	.uleb128 0x12
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xbe
	.4byte	0x73
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0x9e
	.4byte	0x5ee
	.uleb128 0x2c
	.4byte	0x90
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	0x5de
	.uleb128 0x2d
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x124
	.4byte	0x4f
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf3
	.uleb128 0x2e
	.string	"Z"
	.byte	0x1
	.2byte	0x124
	.4byte	0x434
	.4byte	.LLST6
	.uleb128 0x2e
	.string	"X"
	.byte	0x1
	.2byte	0x124
	.4byte	0x285
	.4byte	.LLST7
	.uleb128 0x2f
	.string	"Y"
	.byte	0x1
	.2byte	0x124
	.4byte	0x285
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2e
	.string	"M"
	.byte	0x1
	.2byte	0x124
	.4byte	0x285
	.4byte	.LLST8
	.uleb128 0x30
	.string	"ret"
	.byte	0x1
	.2byte	0x126
	.4byte	0x4f
	.4byte	.LLST9
	.uleb128 0x31
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x127
	.4byte	0x73
	.4byte	.LLST10
	.uleb128 0x31
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x128
	.4byte	0x73
	.4byte	.LLST11
	.uleb128 0x31
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x129
	.4byte	0x73
	.4byte	.LLST12
	.uleb128 0x31
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x12a
	.4byte	0x73
	.4byte	.LLST13
	.uleb128 0x32
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x12b
	.4byte	0x73
	.uleb128 0x32
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x12c
	.4byte	0x73
	.uleb128 0x32
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x12d
	.4byte	0x73
	.uleb128 0x32
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x12e
	.4byte	0x73
	.uleb128 0x32
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x12f
	.4byte	0x73
	.uleb128 0x33
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x130
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x131
	.4byte	0xc6
	.4byte	.LLST14
	.uleb128 0x34
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x14d
	.4byte	.L14
	.uleb128 0x35
	.4byte	0x2cc
	.4byte	.LBB97
	.4byte	.LBE97-.LBB97
	.byte	0x1
	.2byte	0x12b
	.4byte	0x718
	.uleb128 0x36
	.4byte	0x2dc
	.4byte	.LLST15
	.byte	0
	.uleb128 0x35
	.4byte	0x2cc
	.4byte	.LBB99
	.4byte	.LBE99-.LBB99
	.byte	0x1
	.2byte	0x12c
	.4byte	0x736
	.uleb128 0x36
	.4byte	0x2dc
	.4byte	.LLST16
	.byte	0
	.uleb128 0x35
	.4byte	0x2cc
	.4byte	.LBB101
	.4byte	.LBE101-.LBB101
	.byte	0x1
	.2byte	0x12d
	.4byte	0x754
	.uleb128 0x36
	.4byte	0x2dc
	.4byte	.LLST17
	.byte	0
	.uleb128 0x35
	.4byte	0x2cc
	.4byte	.LBB103
	.4byte	.LBE103-.LBB103
	.byte	0x1
	.2byte	0x12e
	.4byte	0x772
	.uleb128 0x36
	.4byte	0x2dc
	.4byte	.LLST18
	.byte	0
	.uleb128 0x35
	.4byte	0x2b0
	.4byte	.LBB105
	.4byte	.LBE105-.LBB105
	.byte	0x1
	.2byte	0x12f
	.4byte	0x790
	.uleb128 0x36
	.4byte	0x2c0
	.4byte	.LLST19
	.byte	0
	.uleb128 0x35
	.4byte	0x227
	.4byte	.LBB107
	.4byte	.LBE107-.LBB107
	.byte	0x1
	.2byte	0x13b
	.4byte	0x806
	.uleb128 0x36
	.4byte	0x249
	.4byte	.LLST20
	.uleb128 0x36
	.4byte	0x23e
	.4byte	.LLST21
	.uleb128 0x36
	.4byte	0x233
	.4byte	.LLST22
	.uleb128 0x37
	.4byte	.LBB108
	.4byte	.LBE108-.LBB108
	.uleb128 0x38
	.4byte	0x254
	.4byte	.LLST22
	.uleb128 0x38
	.4byte	0x25f
	.4byte	.LLST24
	.uleb128 0x39
	.4byte	.LBB109
	.4byte	.LBE109-.LBB109
	.4byte	0x7f1
	.uleb128 0x38
	.4byte	0x26f
	.4byte	.LLST25
	.byte	0
	.uleb128 0x37
	.4byte	.LBB110
	.4byte	.LBE110-.LBB110
	.uleb128 0x38
	.4byte	0x27a
	.4byte	.LLST26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	0x227
	.4byte	.LBB111
	.4byte	.LBE111-.LBB111
	.byte	0x1
	.2byte	0x13c
	.4byte	0x87c
	.uleb128 0x36
	.4byte	0x249
	.4byte	.LLST27
	.uleb128 0x36
	.4byte	0x23e
	.4byte	.LLST28
	.uleb128 0x36
	.4byte	0x233
	.4byte	.LLST29
	.uleb128 0x37
	.4byte	.LBB112
	.4byte	.LBE112-.LBB112
	.uleb128 0x38
	.4byte	0x254
	.4byte	.LLST29
	.uleb128 0x38
	.4byte	0x25f
	.4byte	.LLST31
	.uleb128 0x39
	.4byte	.LBB113
	.4byte	.LBE113-.LBB113
	.4byte	0x867
	.uleb128 0x38
	.4byte	0x26f
	.4byte	.LLST32
	.byte	0
	.uleb128 0x37
	.4byte	.LBB114
	.4byte	.LBE114-.LBB114
	.uleb128 0x38
	.4byte	0x27a
	.4byte	.LLST33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	0x227
	.4byte	.LBB115
	.4byte	.LBE115-.LBB115
	.byte	0x1
	.2byte	0x13d
	.4byte	0x8f2
	.uleb128 0x36
	.4byte	0x249
	.4byte	.LLST34
	.uleb128 0x36
	.4byte	0x23e
	.4byte	.LLST35
	.uleb128 0x36
	.4byte	0x233
	.4byte	.LLST36
	.uleb128 0x37
	.4byte	.LBB116
	.4byte	.LBE116-.LBB116
	.uleb128 0x38
	.4byte	0x254
	.4byte	.LLST36
	.uleb128 0x38
	.4byte	0x25f
	.4byte	.LLST38
	.uleb128 0x39
	.4byte	.LBB117
	.4byte	.LBE117-.LBB117
	.4byte	0x8dd
	.uleb128 0x38
	.4byte	0x26f
	.4byte	.LLST39
	.byte	0
	.uleb128 0x37
	.4byte	.LBB118
	.4byte	.LBE118-.LBB118
	.uleb128 0x38
	.4byte	0x27a
	.4byte	.LLST40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	0x20f
	.4byte	.LBB119
	.4byte	.LBE119-.LBB119
	.byte	0x1
	.2byte	0x144
	.4byte	0x910
	.uleb128 0x36
	.4byte	0x21b
	.4byte	.LLST41
	.byte	0
	.uleb128 0x35
	.4byte	0x296
	.4byte	.LBB121
	.4byte	.LBE121-.LBB121
	.byte	0x1
	.2byte	0x146
	.4byte	0x957
	.uleb128 0x3a
	.4byte	0x2a3
	.uleb128 0x3b
	.4byte	0x1f3
	.4byte	.LBB123
	.4byte	.LBE123-.LBB123
	.byte	0x1
	.2byte	0x114
	.uleb128 0x36
	.4byte	0x203
	.4byte	.LLST42
	.uleb128 0x22
	.4byte	.LVL81
	.4byte	0xc44
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff02814
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	0x53e
	.4byte	.LBB125
	.4byte	.LBE125-.LBB125
	.byte	0x1
	.2byte	0x149
	.4byte	0xb4c
	.uleb128 0x36
	.4byte	0x579
	.4byte	.LLST43
	.uleb128 0x36
	.4byte	0x56d
	.4byte	.LLST44
	.uleb128 0x36
	.4byte	0x563
	.4byte	.LLST45
	.uleb128 0x36
	.4byte	0x559
	.4byte	.LLST46
	.uleb128 0x36
	.4byte	0x54f
	.4byte	.LLST47
	.uleb128 0x37
	.4byte	.LBB126
	.4byte	.LBE126-.LBB126
	.uleb128 0x38
	.4byte	0x585
	.4byte	.LLST48
	.uleb128 0x3c
	.4byte	0x591
	.4byte	.L32
	.uleb128 0x35
	.4byte	0x227
	.4byte	.LBB127
	.4byte	.LBE127-.LBB127
	.byte	0x1
	.2byte	0x1b2
	.4byte	0xa29
	.uleb128 0x36
	.4byte	0x249
	.4byte	.LLST44
	.uleb128 0x36
	.4byte	0x23e
	.4byte	.LLST45
	.uleb128 0x36
	.4byte	0x233
	.4byte	.LLST51
	.uleb128 0x37
	.4byte	.LBB128
	.4byte	.LBE128-.LBB128
	.uleb128 0x38
	.4byte	0x254
	.4byte	.LLST51
	.uleb128 0x38
	.4byte	0x25f
	.4byte	.LLST53
	.uleb128 0x39
	.4byte	.LBB129
	.4byte	.LBE129-.LBB129
	.4byte	0xa14
	.uleb128 0x38
	.4byte	0x26f
	.4byte	.LLST54
	.byte	0
	.uleb128 0x37
	.4byte	.LBB130
	.4byte	.LBE130-.LBB130
	.uleb128 0x38
	.4byte	0x27a
	.4byte	.LLST55
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	0x20f
	.4byte	.LBB131
	.4byte	.LBE131-.LBB131
	.byte	0x1
	.2byte	0x1b4
	.4byte	0xa47
	.uleb128 0x36
	.4byte	0x21b
	.4byte	.LLST56
	.byte	0
	.uleb128 0x35
	.4byte	0x296
	.4byte	.LBB133
	.4byte	.LBE133-.LBB133
	.byte	0x1
	.2byte	0x1b8
	.4byte	0xa8e
	.uleb128 0x3a
	.4byte	0x2a3
	.uleb128 0x3b
	.4byte	0x1f3
	.4byte	.LBB135
	.4byte	.LBE135-.LBB135
	.byte	0x1
	.2byte	0x114
	.uleb128 0x36
	.4byte	0x203
	.4byte	.LLST57
	.uleb128 0x22
	.4byte	.LVL96
	.4byte	0xc44
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff02814
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	0x59a
	.4byte	.LBB137
	.4byte	.LBE137-.LBB137
	.byte	0x1
	.2byte	0x1ba
	.4byte	0xb33
	.uleb128 0x36
	.4byte	0x5ba
	.4byte	.LLST58
	.uleb128 0x36
	.4byte	0x5af
	.4byte	.LLST59
	.uleb128 0x36
	.4byte	0x5a6
	.4byte	.LLST60
	.uleb128 0x37
	.4byte	.LBB138
	.4byte	.LBE138-.LBB138
	.uleb128 0x3d
	.4byte	0x5c5
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5819
	.uleb128 0x39
	.4byte	.LBB139
	.4byte	.LBE139-.LBB139
	.4byte	0xae8
	.uleb128 0x38
	.4byte	0x5d3
	.4byte	.LLST61
	.byte	0
	.uleb128 0x20
	.4byte	.LVL98
	.4byte	0xc7b
	.4byte	0xb17
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xb7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5819
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x22
	.4byte	.LVL99
	.4byte	0xc86
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff02200
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL93
	.4byte	0xc91
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL32
	.4byte	0xc9c
	.4byte	0xb60
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL34
	.4byte	0xc9c
	.4byte	0xb74
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL36
	.4byte	0xc9c
	.4byte	0xb88
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL49
	.4byte	0xc16
	.4byte	0xb9c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x20
	.4byte	.LVL50
	.4byte	0x358
	.4byte	0xbbc
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL52
	.4byte	0x2e8
	.4byte	0xbd0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL54
	.4byte	0x43a
	.uleb128 0x3e
	.4byte	.LVL105
	.4byte	0x4d4
	.uleb128 0x22
	.4byte	.LVL106
	.4byte	0xc39
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"TAG"
	.byte	0x1
	.byte	0x3c
	.4byte	0xa5
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3240
	.sleb128 0
	.uleb128 0x1e
	.4byte	.LASF90
	.byte	0x1
	.byte	0x58
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x3
	.4byte	mpi_lock
	.uleb128 0x3f
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x7
	.byte	0xc5
	.uleb128 0x40
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x146
	.uleb128 0x40
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x289
	.uleb128 0x3f
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x7
	.byte	0xcc
	.uleb128 0x3f
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x8
	.byte	0x1e
	.uleb128 0x3f
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x5
	.byte	0x20
	.uleb128 0x3f
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x9
	.byte	0x25
	.uleb128 0x3f
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x9
	.byte	0x31
	.uleb128 0x3f
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x5
	.byte	0x24
	.uleb128 0x3f
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0xa
	.byte	0x29
	.uleb128 0x3f
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x8
	.byte	0x1d
	.uleb128 0x3f
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x7
	.byte	0xd9
	.uleb128 0x40
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x15a
	.uleb128 0x41
	.uleb128 0x9
	.byte	0x9e
	.uleb128 0x7
	.byte	0x62
	.byte	0x69
	.byte	0x67
	.byte	0x6e
	.byte	0x75
	.byte	0x6d
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x17
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x1
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x7
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL7
	.4byte	.LVL13
	.2byte	0x7
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -44
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x2
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL9
	.4byte	.LFE30
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x4
	.4byte	.LVL4
	.4byte	.LVL10
	.2byte	0x7
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -48
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL12
	.4byte	.LFE30
	.2byte	0x7
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -48
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL31
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL107
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL31
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL103
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL31
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL58
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL105
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL33
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x3
	.byte	0x76
	.sleb128 -31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL35
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x3
	.byte	0x77
	.sleb128 -31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL36
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL37
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x3
	.byte	0x79
	.sleb128 -31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL53
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x5
	.byte	0xc
	.4byte	0x3ff02800
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x3
	.byte	0x76
	.sleb128 -31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x3
	.byte	0x77
	.sleb128 -31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL41
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x3
	.byte	0x79
	.sleb128 -31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL47
	.4byte	.LVL51
	.2byte	0x3
	.byte	0x77
	.sleb128 -15
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL54
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL58
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL54
	.4byte	.LVL105
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff02000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL55
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL58
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL61
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL61
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL61
	.4byte	.LVL105
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff02600
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL63
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL66
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL69
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL69
	.4byte	.LVL105
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL69
	.4byte	.LVL105
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff02200
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL71
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL74
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL79
	.4byte	.LVL105
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff02810
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL80
	.4byte	.LVL105
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff02814
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL82
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL82
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL82
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL82
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL82
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL82
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL82
	.4byte	.LVL105
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff02600
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL83
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL86
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL89
	.4byte	.LVL105
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff02810
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL95
	.4byte	.LVL104
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff02814
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL97
	.4byte	.LVL104
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL97
	.4byte	.LVL104
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff02200
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL97
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF78:
	.string	"z_words"
.LASF98:
	.string	"periph_module_disable"
.LASF31:
	.string	"PERIPH_PWM1_MODULE"
.LASF71:
	.string	"calculate_rinv"
.LASF8:
	.string	"__uint64_t"
.LASF20:
	.string	"PERIPH_LEDC_MODULE"
.LASF50:
	.string	"PERIPH_BT_BASEBAND_MODULE"
.LASF76:
	.string	"esp_mpi_release_hardware"
.LASF37:
	.string	"PERIPH_PCNT_MODULE"
.LASF16:
	.string	"uint64_t"
.LASF4:
	.string	"short int"
.LASF9:
	.string	"size_t"
.LASF12:
	.string	"sizetype"
.LASF61:
	.string	"copy_words"
.LASF29:
	.string	"PERIPH_TIMG1_MODULE"
.LASF55:
	.string	"op_reg"
.LASF41:
	.string	"PERIPH_SPI_DMA_MODULE"
.LASF49:
	.string	"PERIPH_WIFI_BT_COMMON_MODULE"
.LASF107:
	.string	"esp_mpi_mul_mpi_mod"
.LASF7:
	.string	"__uint32_t"
.LASF66:
	.string	"bits_to_words"
.LASF45:
	.string	"PERIPH_EMAC_MODULE"
.LASF34:
	.string	"PERIPH_UHCI0_MODULE"
.LASF42:
	.string	"PERIPH_SDMMC_MODULE"
.LASF92:
	.string	"mbedtls_mpi_set_bit"
.LASF73:
	.string	"num_words"
.LASF17:
	.string	"mbedtls_mpi_uint"
.LASF79:
	.string	"mem_block_to_mpi"
.LASF106:
	.string	"/home/raphael/rtone/lcd/build/mbedtls"
.LASF21:
	.string	"PERIPH_UART0_MODULE"
.LASF96:
	.string	"_lock_acquire"
.LASF63:
	.string	"DPORT_REG_READ"
.LASF93:
	.string	"mbedtls_mpi_mod_mpi"
.LASF18:
	.string	"mbedtls_mpi"
.LASF6:
	.string	"long long int"
.LASF67:
	.string	"bits"
.LASF88:
	.string	"Mprime"
.LASF11:
	.string	"long int"
.LASF94:
	.string	"mbedtls_mpi_free"
.LASF32:
	.string	"PERIPH_PWM2_MODULE"
.LASF25:
	.string	"PERIPH_I2C1_MODULE"
.LASF52:
	.string	"PERIPH_AES_MODULE"
.LASF75:
	.string	"esp_mpi_acquire_hardware"
.LASF102:
	.string	"mbedtls_mpi_grow"
.LASF103:
	.string	"mbedtls_mpi_bitlen"
.LASF105:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/mbedtls/port/esp_bignum.c"
.LASF86:
	.string	"y_words"
.LASF3:
	.string	"unsigned char"
.LASF48:
	.string	"PERIPH_BT_MODULE"
.LASF82:
	.string	"y_bits"
.LASF46:
	.string	"PERIPH_RNG_MODULE"
.LASF80:
	.string	"__func__"
.LASF89:
	.string	"cleanup"
.LASF28:
	.string	"PERIPH_TIMG0_MODULE"
.LASF56:
	.string	"start_op"
.LASF2:
	.string	"signed char"
.LASF0:
	.string	"long long unsigned int"
.LASF36:
	.string	"PERIPH_RMT_MODULE"
.LASF70:
	.string	"modular_inverse"
.LASF77:
	.string	"modular_multiply_finish"
.LASF1:
	.string	"unsigned int"
.LASF83:
	.string	"m_bits"
.LASF27:
	.string	"PERIPH_I2S1_MODULE"
.LASF62:
	.string	"wait_op_complete"
.LASF35:
	.string	"PERIPH_UHCI1_MODULE"
.LASF60:
	.string	"pbase"
.LASF54:
	.string	"PERIPH_RSA_MODULE"
.LASF5:
	.string	"short unsigned int"
.LASF53:
	.string	"PERIPH_SHA_MODULE"
.LASF97:
	.string	"periph_module_enable"
.LASF22:
	.string	"PERIPH_UART1_MODULE"
.LASF64:
	.string	"hardware_words"
.LASF14:
	.string	"char"
.LASF24:
	.string	"PERIPH_I2C0_MODULE"
.LASF26:
	.string	"PERIPH_I2S0_MODULE"
.LASF69:
	.string	"two_2_i"
.LASF43:
	.string	"PERIPH_SDIO_SLAVE_MODULE"
.LASF74:
	.string	"num_bits"
.LASF19:
	.string	"_Bool"
.LASF30:
	.string	"PERIPH_PWM0_MODULE"
.LASF68:
	.string	"two_2_i_minus_1"
.LASF40:
	.string	"PERIPH_VSPI_MODULE"
.LASF33:
	.string	"PERIPH_PWM3_MODULE"
.LASF95:
	.string	"esp_dport_access_reg_read"
.LASF47:
	.string	"PERIPH_WIFI_MODULE"
.LASF15:
	.string	"uint32_t"
.LASF13:
	.string	"long unsigned int"
.LASF51:
	.string	"PERIPH_BT_LC_MODULE"
.LASF58:
	.string	"mem_base"
.LASF59:
	.string	"hw_words"
.LASF99:
	.string	"_lock_release"
.LASF91:
	.string	"mbedtls_mpi_init"
.LASF38:
	.string	"PERIPH_SPI_MODULE"
.LASF101:
	.string	"esp_dport_access_read_buffer"
.LASF10:
	.string	"_lock_t"
.LASF72:
	.string	"Rinv"
.LASF39:
	.string	"PERIPH_HSPI_MODULE"
.LASF57:
	.string	"mpi_to_mem_block"
.LASF44:
	.string	"PERIPH_CAN_MODULE"
.LASF85:
	.string	"x_words"
.LASF100:
	.string	"__assert_func"
.LASF104:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF65:
	.string	"words"
.LASF87:
	.string	"m_words"
.LASF23:
	.string	"PERIPH_UART2_MODULE"
.LASF84:
	.string	"z_bits"
.LASF81:
	.string	"x_bits"
.LASF90:
	.string	"mpi_lock"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
