	.file	"flash_mmap.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, 1061158912
	.literal .LC1, 1074593792
	.align	4
	.type	get_mmu_region, @function
get_mmu_region:
.LFB30:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/flash_mmap.c"
	.loc 1 103 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 104 0
	bnez.n	a2, .L2
	.loc 1 106 0
	movi.n	a8, 0
	s32i.n	a8, a3, 0
	.loc 1 107 0
	movi.n	a3, 0x40
.LVL1:
	s32i.n	a3, a4, 0
	.loc 1 108 0
	l32r	a3, .LC0
	s32i.n	a3, a5, 0
	retw.n
.LVL2:
.L2:
	.loc 1 111 0
	movi.n	a8, 0x4d
	s32i.n	a8, a3, 0
	.loc 1 112 0
	movi	a3, 0x73
.LVL3:
	s32i.n	a3, a4, 0
	.loc 1 113 0
	l32r	a3, .LC1
	s32i.n	a3, a5, 0
	retw.n
.LFE30:
	.size	get_mmu_region, .-get_mmu_region
	.literal_position
	.literal .LC2, s_mmap_page_refcnt
	.literal .LC3, 1072758784
	.literal .LC4, 1072766976
	.align	4
	.type	spi_flash_mmap_init, @function
spi_flash_mmap_init:
.LFB29:
	.loc 1 78 0
	entry	sp, 32
.LCFI1:
	.loc 1 79 0
	l32r	a2, .LC2
	l8ui	a2, a2, 0
	bnez.n	a2, .L4
.LBB47:
	.loc 1 82 0
#APP
# 82 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/flash_mmap.c" 1
	rsil	a6, 3

# 0 "" 2
.LVL4:
#NO_APP
.LBE47:
.LBB48:
	.loc 1 83 0
	movi.n	a3, 0
	j	.L6
.LVL5:
.L11:
.LBB49:
	.loc 1 84 0
	slli	a5, a3, 2
	l32r	a4, .LC3
	add.n	a4, a5, a4
.LVL6:
.LBB50:
.LBB51:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 112 0
	mov.n	a10, a4
	call8	esp_dport_access_sequence_reg_read
.LVL7:
	mov.n	a2, a10
.LBE51:
.LBE50:
	.loc 1 85 0
	l32r	a8, .LC4
	add.n	a5, a5, a8
.LVL8:
.LBB52:
.LBB53:
	.loc 2 112 0
	mov.n	a10, a5
	call8	esp_dport_access_sequence_reg_read
.LVL9:
.LBE53:
.LBE52:
	.loc 1 87 0
	beq	a2, a10, .L7
.LVL10:
	.loc 1 90 0
	movi	a2, 0x100
	memw
	s32i.n	a2, a4, 0
.LVL11:
.L7:
	.loc 1 92 0
	bbsi	a2, 8, .L8
	.loc 1 92 0 is_stmt 0 discriminator 1
	movi.n	a11, 1
	movi.n	a8, 0
	mov.n	a9, a8
	moveqz	a9, a11, a3
	addi	a10, a3, -77
	moveqz	a8, a11, a10
	or	a8, a8, a9
	bnez.n	a8, .L9
	.loc 1 92 0 discriminator 2
	beqz.n	a2, .L8
.L9:
	.loc 1 93 0 is_stmt 1
	l32r	a2, .LC2
.LVL12:
	add.n	a2, a2, a3
	movi.n	a4, 1
.LVL13:
	s8i	a4, a2, 0
	j	.L10
.LVL14:
.L8:
	.loc 1 95 0
	movi	a2, 0x100
.LVL15:
	memw
	s32i.n	a2, a4, 0
	.loc 1 96 0
	memw
	s32i.n	a2, a5, 0
.LVL16:
.L10:
.LBE49:
	.loc 1 83 0 discriminator 2
	addi.n	a3, a3, 1
.LVL17:
.L6:
	.loc 1 83 0 is_stmt 0 discriminator 1
	movi	a2, 0xff
	bge	a2, a3, .L11
.LBE48:
	.loc 1 99 0 is_stmt 1
	mov.n	a10, a6
	call8	_xtos_set_intlevel
.LVL18:
.L4:
	retw.n
.LFE29:
	.size	spi_flash_mmap_init, .-spi_flash_mmap_init
	.align	4
	.type	spi_flash_protected_mmap_init, @function
spi_flash_protected_mmap_init:
.LFB34:
	.loc 1 290 0
	entry	sp, 32
.LCFI2:
	.loc 1 291 0
	call8	spi_flash_disable_interrupts_caches_and_other_cpu
.LVL19:
	.loc 1 292 0
	call8	spi_flash_mmap_init
.LVL20:
	.loc 1 293 0
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL21:
	retw.n
.LFE34:
	.size	spi_flash_protected_mmap_init, .-spi_flash_protected_mmap_init
	.literal_position
	.literal .LC5, 1072758784
	.align	4
	.type	spi_flash_protected_read_mmu_entry, @function
spi_flash_protected_read_mmu_entry:
.LFB35:
	.loc 1 297 0
.LVL22:
	entry	sp, 32
.LCFI3:
	.loc 1 299 0
	call8	spi_flash_disable_interrupts_caches_and_other_cpu
.LVL23:
.LBB54:
.LBB55:
	.loc 2 79 0
	l32r	a10, .LC5
	addx4	a10, a2, a10
.LVL24:
	call8	esp_dport_access_reg_read
.LVL25:
	mov.n	a2, a10
.LVL26:
.LBE55:
.LBE54:
	.loc 1 301 0
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL27:
	.loc 1 303 0
	retw.n
.LFE35:
	.size	spi_flash_protected_read_mmu_entry, .-spi_flash_protected_read_mmu_entry
	.literal_position
	.literal .LC6, -65536
	.literal .LC7, 65535
	.literal .LC8, written_pages
	.literal .LC9, 65536
	.align	4
	.type	spi_flash_ensure_unmodified_region, @function
spi_flash_ensure_unmodified_region:
.LFB39:
	.loc 1 364 0
.LVL28:
	entry	sp, 32
.LCFI4:
.LVL29:
.LBB64:
.LBB65:
	.loc 1 372 0
	l32r	a8, .LC6
	and	a13, a2, a8
.LVL30:
	.loc 1 373 0
	sub	a2, a2, a13
.LVL31:
	add.n	a3, a3, a2
.LVL32:
	.loc 1 374 0
	l32r	a12, .LC7
	add.n	a2, a3, a12
	and	a12, a2, a8
.LVL33:
.LBB66:
	.loc 1 375 0
	mov.n	a8, a13
	j	.L15
.LVL34:
.L18:
.LBB67:
	.loc 1 376 0
	extui	a9, a8, 16, 16
.LVL35:
	.loc 1 377 0
	movi	a10, 0xff
	blt	a10, a9, .L19
	.loc 1 381 0
	srli	a11, a9, 5
.LVL36:
	.loc 1 382 0
	movi.n	a10, 1
	ssl	a9
	sll	a9, a10
.LVL37:
	.loc 1 386 0
	l32r	a10, .LC8
	addx4	a10, a11, a10
	l32i.n	a10, a10, 0
	bnone	a9, a10, .L17
.LVL38:
.LBB68:
.LBB69:
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/cache.h"
	.loc 3 141 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL39:
	.loc 3 142 0
	movi.n	a10, 0
	call8	Cache_Flush_rom
.LVL40:
	.loc 3 143 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL41:
.LBE69:
.LBE68:
.LBB70:
.LBB71:
	.loc 3 141 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL42:
	.loc 3 142 0
	movi.n	a10, 1
	call8	Cache_Flush_rom
.LVL43:
	.loc 3 143 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL44:
.LBE71:
.LBE70:
	.loc 1 399 0
	l32r	a2, .LC8
.LVL45:
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	s32i.n	a8, a2, 4
	s32i.n	a8, a2, 8
	s32i.n	a8, a2, 12
	s32i.n	a8, a2, 16
	s32i.n	a8, a2, 20
	s32i.n	a8, a2, 24
	s32i.n	a8, a2, 28
	.loc 1 400 0
	movi.n	a2, 1
	retw.n
.LVL46:
.L17:
.LBE67:
	.loc 1 375 0
	l32r	a9, .LC9
.LVL47:
	add.n	a8, a8, a9
.LVL48:
.L15:
	add.n	a9, a13, a12
	bltu	a8, a9, .L18
.LBE66:
	.loc 1 403 0
	movi.n	a2, 0
	retw.n
.LVL49:
.L19:
.LBB73:
.LBB72:
	.loc 1 378 0
	movi.n	a2, 0
.LBE72:
.LBE73:
.LBE65:
.LBE64:
	.loc 1 366 0
	retw.n
.LFE39:
	.size	spi_flash_ensure_unmodified_region, .-spi_flash_ensure_unmodified_region
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC20:
	.string	"s_mmap_page_refcnt[i] == 0 || (entry_pro == pages[pageno] && entry_app == pages[pageno])"
	.align	4
.LC23:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/flash_mmap.c"
	.section	.iram1
	.literal_position
	.literal .LC10, -1073283072
	.literal .LC11, 1253375
	.literal .LC12, -1342177280
	.literal .LC13, 8191
	.literal .LC14, g_rom_flashchip
	.literal .LC15, 2052
	.literal .LC16, 65536
	.literal .LC17, 1072758784
	.literal .LC18, s_mmap_page_refcnt
	.literal .LC19, 1072766976
	.literal .LC21, .LC20
	.literal .LC22, __func__$5782
	.literal .LC24, .LC23
	.literal .LC25, s_mmap_entries_head
	.literal .LC26, s_mmap_last_handle
	.align	4
	.global	spi_flash_mmap_pages
	.type	spi_flash_mmap_pages, @function
spi_flash_mmap_pages:
.LFB32:
	.loc 1 145 0
.LVL50:
	entry	sp, 80
.LCFI5:
	s32i.n	a5, sp, 16
	s32i.n	a6, sp, 20
.LVL51:
	.loc 1 148 0
	beqz.n	a3, .L46
.LVL52:
.LBB74:
.LBB75:
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/soc_memory_layout.h"
	.loc 4 167 0
	l32r	a6, .LC10
.LVL53:
	add.n	a6, a2, a6
	movi.n	a5, 1
.LVL54:
	l32r	a7, .LC11
	bgeu	a7, a6, .L22
	movi.n	a5, 0
.L22:
	extui	a5, a5, 0, 8
.LVL55:
	.loc 4 168 0
	l32r	a7, .LC12
	add.n	a7, a2, a7
	movi.n	a6, 1
	l32r	a8, .LC13
	bgeu	a8, a7, .L23
	movi.n	a6, 0
.L23:
	extui	a6, a6, 0, 8
.LVL56:
.LBE75:
.LBE74:
	.loc 1 151 0
	bnez.n	a5, .L47
	bnez.n	a6, .L47
	.loc 1 152 0
	movi	a2, 0x102
.LVL57:
	retw.n
.LVL58:
.L25:
.LBB76:
	.loc 1 155 0
	addx4	a5, a6, a2
	l32i.n	a5, a5, 0
	bltz	a5, .L48
	.loc 1 155 0 is_stmt 0 discriminator 1
	slli	a5, a5, 16
	l32r	a7, .LC14
	l32i.n	a7, a7, 4
	bgeu	a5, a7, .L49
	.loc 1 154 0 is_stmt 1 discriminator 2
	addi.n	a6, a6, 1
.LVL59:
	j	.L24
.LVL60:
.L47:
.LBE76:
	movi.n	a6, 0
.LVL61:
.L24:
.LBB77:
	.loc 1 154 0 is_stmt 0 discriminator 1
	bltu	a6, a3, .L25
.LBE77:
	.loc 1 159 0 is_stmt 1
	l32r	a11, .LC15
	movi.n	a10, 0x14
	call8	heap_caps_malloc
.LVL62:
	s32i.n	a10, sp, 32
.LVL63:
	.loc 1 160 0
	beqz.n	a10, .L50
	.loc 1 164 0
	call8	spi_flash_disable_interrupts_caches_and_other_cpu
.LVL64:
.LBB78:
	.loc 1 167 0
	movi.n	a5, 0
.LBE78:
	.loc 1 166 0
	s32i.n	a5, sp, 40
	mov.n	a6, a5
.LVL65:
.LBB79:
	.loc 1 167 0
	j	.L26
.LVL66:
.L28:
	.loc 1 168 0
	addx4	a7, a5, a2
	l32i.n	a10, a7, 0
	l32r	a11, .LC16
	slli	a10, a10, 16
	call8	spi_flash_ensure_unmodified_region
.LVL67:
	beqz.n	a10, .L27
	.loc 1 169 0
	movi.n	a6, 1
.LVL68:
.L27:
	.loc 1 167 0 discriminator 2
	addi.n	a5, a5, 1
.LVL69:
.L26:
	.loc 1 167 0 is_stmt 0 discriminator 1
	bltu	a5, a3, .L28
	s32i.n	a6, sp, 40
.LBE79:
	.loc 1 172 0 is_stmt 1
	call8	spi_flash_mmap_init
.LVL70:
	.loc 1 177 0
	addi.n	a13, sp, 8
	addi.n	a12, sp, 4
	mov.n	a11, sp
	mov.n	a10, a4
	call8	get_mmu_region
.LVL71:
	.loc 1 178 0
	l32i.n	a4, sp, 4
.LVL72:
	bltu	a4, a3, .L52
	.loc 1 187 0
	l32i.n	a6, sp, 0
.LVL73:
	add.n	a4, a4, a6
	sub	a4, a4, a3
	addi.n	a4, a4, 1
	s32i.n	a4, sp, 24
.LVL74:
	.loc 1 188 0
	j	.L29
.LVL75:
.L35:
.LBB80:
.LBB81:
	.loc 1 191 0
#APP
# 191 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/flash_mmap.c" 1
	rsil	a7, 3

# 0 "" 2
.LVL76:
#NO_APP
.LBE81:
	.loc 1 192 0
	mov.n	a4, a6
	.loc 1 189 0
	movi.n	a5, 0
	.loc 1 192 0
	j	.L30
.LVL77:
.L33:
.LBB82:
.LBB83:
.LBB84:
	.loc 2 112 0
	l32r	a10, .LC17
	addx4	a10, a4, a10
.LVL78:
	call8	esp_dport_access_sequence_reg_read
.LVL79:
.LBE84:
.LBE83:
	.loc 1 194 0
	l32r	a8, .LC18
	add.n	a8, a8, a4
	l8ui	a8, a8, 0
.LVL80:
	.loc 1 195 0
	beqz.n	a8, .L31
	.loc 1 195 0 is_stmt 0 discriminator 1
	addx4	a8, a5, a2
	l32i.n	a8, a8, 0
	bne	a10, a8, .L32
.L31:
.LBE82:
	.loc 1 192 0 is_stmt 1 discriminator 2
	addi.n	a4, a4, 1
.LVL81:
	addi.n	a5, a5, 1
.LVL82:
.L30:
	.loc 1 192 0 is_stmt 0 discriminator 1
	add.n	a8, a6, a3
	bltu	a4, a8, .L33
.L32:
	.loc 1 199 0 is_stmt 1
	mov.n	a10, a7
	call8	_xtos_set_intlevel
.LVL83:
	.loc 1 201 0
	sub	a4, a4, a6
.LVL84:
	beq	a3, a4, .L34
.LBE80:
	.loc 1 188 0 discriminator 2
	addi.n	a6, a6, 1
.LVL85:
.L29:
	.loc 1 188 0 is_stmt 0 discriminator 1
	l32i.n	a4, sp, 24
	blt	a6, a4, .L35
.L34:
	.loc 1 206 0 is_stmt 1
	l32i.n	a5, sp, 24
	bne	a6, a5, .L36
	.loc 1 207 0
	movi.n	a2, 0
.LVL86:
	l32i.n	a3, sp, 20
.LVL87:
	s32i.n	a2, a3, 0
	.loc 1 208 0
	l32i.n	a4, sp, 16
	s32i.n	a2, a4, 0
.LVL88:
	.loc 1 147 0
	s32i.n	a2, sp, 36
	.loc 1 209 0
	movi	a2, 0x101
	j	.L37
.LVL89:
.L36:
.LBB85:
.LBB86:
	.loc 1 213 0
#APP
# 213 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/flash_mmap.c" 1
	rsil	a5, 3

# 0 "" 2
#NO_APP
	s32i.n	a5, sp, 44
.LVL90:
.LBE86:
.LBB87:
	.loc 1 214 0
	mov.n	a7, a6
.LBE87:
	.loc 1 212 0
	movi.n	a5, 0
.LVL91:
.LBE85:
	.loc 1 147 0
	s32i.n	a5, sp, 36
	s32i.n	a6, sp, 24
.LVL92:
	s32i.n	a2, sp, 28
.LBB94:
.LBB93:
	.loc 1 214 0
	j	.L38
.LVL93:
.L43:
.LBB88:
	.loc 1 216 0
	slli	a2, a7, 2
	l32r	a4, .LC17
	add.n	a4, a2, a4
.LVL94:
.LBB89:
.LBB90:
	.loc 2 112 0
	mov.n	a10, a4
	call8	esp_dport_access_sequence_reg_read
.LVL95:
	mov.n	a6, a10
.LBE90:
.LBE89:
	.loc 1 217 0
	l32r	a8, .LC19
	add.n	a2, a2, a8
.LVL96:
.LBB91:
.LBB92:
	.loc 2 112 0
	mov.n	a10, a2
	call8	esp_dport_access_sequence_reg_read
.LVL97:
.LBE92:
.LBE91:
	.loc 1 218 0
	l32r	a8, .LC18
	add.n	a8, a8, a7
	l8ui	a8, a8, 0
	beqz.n	a8, .L39
	.loc 1 218 0 is_stmt 0 discriminator 1
	l32i.n	a11, sp, 28
	addx4	a9, a5, a11
	l32i.n	a9, a9, 0
	bne	a6, a9, .L40
	.loc 1 218 0 discriminator 3
	beq	a10, a9, .L39
.L40:
	.loc 1 218 0 discriminator 4
	l32r	a13, .LC21
	l32r	a12, .LC22
	movi	a11, 0xdc
	l32r	a10, .LC24
	call8	__assert_func
.LVL98:
.L39:
	.loc 1 221 0 is_stmt 1
	bnez.n	a8, .L41
	.loc 1 222 0
	l32i.n	a8, sp, 28
	addx4	a9, a5, a8
	l32i.n	a8, a9, 0
	bne	a6, a8, .L42
	.loc 1 222 0 is_stmt 0 discriminator 1
	beq	a10, a8, .L41
.L42:
	.loc 1 223 0 is_stmt 1
	memw
	s32i.n	a8, a4, 0
	.loc 1 224 0
	l32i.n	a4, a9, 0
.LVL99:
	memw
	s32i.n	a4, a2, 0
.LVL100:
	.loc 1 225 0
	movi.n	a2, 1
.LVL101:
	s32i.n	a2, sp, 36
.LVL102:
.L41:
	.loc 1 228 0 discriminator 2
	l32r	a2, .LC18
	add.n	a2, a2, a7
	l8ui	a4, a2, 0
	addi.n	a4, a4, 1
	s8i	a4, a2, 0
.LBE88:
	.loc 1 214 0 discriminator 2
	addi.n	a7, a7, 1
.LVL103:
	addi.n	a5, a5, 1
.LVL104:
.L38:
	.loc 1 214 0 is_stmt 0 discriminator 1
	l32i.n	a4, sp, 24
	add.n	a2, a4, a3
	bne	a2, a7, .L43
	mov.n	a6, a4
.LBE93:
	.loc 1 230 0 is_stmt 1
	l32i.n	a10, sp, 44
	call8	_xtos_set_intlevel
.LVL105:
	.loc 1 231 0
	l32r	a2, .LC25
	l32i.n	a2, a2, 0
	l32i.n	a5, sp, 32
.LVL106:
	s32i.n	a2, a5, 12
	beqz.n	a2, .L44
	.loc 1 231 0 discriminator 1
	addi.n	a4, a5, 12
	s32i.n	a4, a2, 16
.L44:
	.loc 1 231 0 is_stmt 0 discriminator 3
	l32r	a2, .LC25
	l32i.n	a4, sp, 32
	s32i.n	a4, a2, 0
	s32i.n	a2, a4, 16
	.loc 1 232 0 is_stmt 1 discriminator 3
	s32i.n	a6, a4, 4
	.loc 1 233 0 discriminator 3
	s32i.n	a3, a4, 8
	.loc 1 234 0 discriminator 3
	l32r	a3, .LC26
.LVL107:
	l32i.n	a2, a3, 0
	addi.n	a2, a2, 1
	s32i.n	a2, a3, 0
	s32i.n	a2, a4, 0
	.loc 1 235 0 discriminator 3
	l32i.n	a5, sp, 20
	s32i.n	a2, a5, 0
.LVL108:
	.loc 1 236 0 discriminator 3
	l32i.n	a2, sp, 0
	sub	a2, a6, a2
	slli	a2, a2, 16
	l32i.n	a3, sp, 8
	add.n	a2, a2, a3
	l32i.n	a3, sp, 16
	s32i.n	a2, a3, 0
.LVL109:
	.loc 1 237 0 discriminator 3
	movi.n	a2, 0
.LVL110:
.L37:
.LBE94:
	.loc 1 246 0
	l32i.n	a4, sp, 40
	l32i.n	a5, sp, 36
	bgeu	a4, a5, .L45
.LVL111:
.LBB95:
.LBB96:
	.loc 3 141 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL112:
	.loc 3 142 0
	movi.n	a10, 0
	call8	Cache_Flush_rom
.LVL113:
	.loc 3 143 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL114:
.LBE96:
.LBE95:
.LBB97:
.LBB98:
	.loc 3 141 0
	call8	esp_dport_access_stall_other_cpu_start
.LVL115:
	.loc 3 142 0
	movi.n	a10, 1
	call8	Cache_Flush_rom
.LVL116:
	.loc 3 143 0
	call8	esp_dport_access_stall_other_cpu_end
.LVL117:
.L45:
.LBE98:
.LBE97:
	.loc 1 254 0
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL118:
	.loc 1 255 0
	l32i.n	a4, sp, 16
	l32i.n	a3, a4, 0
	bnez.n	a3, .L21
	.loc 1 256 0
	l32i.n	a10, sp, 32
	call8	free
.LVL119:
	retw.n
.LVL120:
.L46:
	.loc 1 149 0
	movi	a2, 0x102
.LVL121:
	retw.n
.LVL122:
.L48:
.LBB99:
	.loc 1 156 0
	movi	a2, 0x102
.LVL123:
	retw.n
.LVL124:
.L49:
	movi	a2, 0x102
.LVL125:
	retw.n
.LVL126:
.L50:
.LBE99:
	.loc 1 161 0
	movi	a2, 0x101
.LVL127:
	retw.n
.LVL128:
.L52:
	.loc 1 179 0
	movi	a2, 0x101
.LVL129:
.L21:
	.loc 1 259 0
	retw.n
.LFE32:
	.size	spi_flash_mmap_pages, .-spi_flash_mmap_pages
	.literal_position
	.literal .LC27, g_rom_flashchip
	.literal .LC28, 65535
	.literal .LC29, 2048
	.align	4
	.global	spi_flash_mmap
	.type	spi_flash_mmap, @function
spi_flash_mmap:
.LFB31:
	.loc 1 119 0
.LVL130:
	entry	sp, 48
.LCFI6:
	.loc 1 121 0
	extui	a7, a2, 0, 16
	bnez.n	a7, .L58
	.loc 1 124 0
	add.n	a7, a2, a3
	l32r	a8, .LC27
	l32i.n	a8, a8, 4
	bltu	a8, a7, .L59
	.loc 1 128 0
	extui	a2, a2, 16, 16
.LVL131:
	.loc 1 129 0
	l32r	a7, .LC28
	add.n	a3, a3, a7
.LVL132:
	extui	a3, a3, 16, 16
	s32i.n	a3, sp, 0
	mov.n	a7, a3
.LVL133:
	.loc 1 131 0
	l32r	a11, .LC29
	slli	a10, a3, 2
	call8	heap_caps_malloc
.LVL134:
	mov.n	a3, a10
.LVL135:
	.loc 1 132 0
	beqz.n	a10, .L60
	movi.n	a8, 0
	j	.L56
.LVL136:
.L57:
.LBB100:
	.loc 1 136 0 discriminator 3
	addx4	a9, a8, a3
	add.n	a10, a8, a2
	s32i.n	a10, a9, 0
	.loc 1 135 0 discriminator 3
	addi.n	a8, a8, 1
.LVL137:
.L56:
	.loc 1 135 0 is_stmt 0 discriminator 1
	blt	a8, a7, .L57
.LBE100:
	.loc 1 138 0 is_stmt 1
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a4
	l32i.n	a11, sp, 0
	mov.n	a10, a3
	call8	spi_flash_mmap_pages
.LVL138:
	mov.n	a2, a10
.LVL139:
	.loc 1 139 0
	mov.n	a10, a3
	call8	free
.LVL140:
	.loc 1 140 0
	retw.n
.LVL141:
.L58:
	.loc 1 122 0
	movi	a2, 0x102
.LVL142:
	retw.n
.LVL143:
.L59:
	.loc 1 125 0
	movi	a2, 0x102
.LVL144:
	retw.n
.LVL145:
.L60:
	.loc 1 133 0
	movi	a2, 0x101
.LVL146:
	.loc 1 141 0
	retw.n
.LFE31:
	.size	spi_flash_mmap, .-spi_flash_mmap
	.section	.rodata.str1.4
	.align	4
.LC32:
	.string	"s_mmap_page_refcnt[i] > 0"
	.align	4
.LC38:
	.string	"0 && \"invalid handle, or handle already unmapped\""
	.section	.iram1
	.literal_position
	.literal .LC30, s_mmap_entries_head
	.literal .LC31, s_mmap_page_refcnt
	.literal .LC33, .LC32
	.literal .LC34, __func__$5791
	.literal .LC35, .LC23
	.literal .LC36, 1072758784
	.literal .LC37, 1072766976
	.literal .LC39, .LC38
	.align	4
	.global	spi_flash_munmap
	.type	spi_flash_munmap, @function
spi_flash_munmap:
.LFB33:
	.loc 1 262 0
.LVL147:
	entry	sp, 32
.LCFI7:
	.loc 1 263 0
	call8	spi_flash_disable_interrupts_caches_and_other_cpu
.LVL148:
	.loc 1 266 0
	l32r	a3, .LC30
	l32i.n	a3, a3, 0
.LVL149:
	j	.L62
.L70:
	.loc 1 267 0
	l32i.n	a8, a3, 0
	bne	a8, a2, .L63
.LBB101:
	.loc 1 271 0
	l32i.n	a9, a3, 4
.LVL150:
	j	.L64
.L67:
	.loc 1 272 0
	l32r	a8, .LC31
	add.n	a8, a8, a9
	l8ui	a8, a8, 0
	bnez.n	a8, .L65
	.loc 1 272 0 is_stmt 0 discriminator 1
	l32r	a13, .LC33
	l32r	a12, .LC34
	movi	a11, 0x110
	l32r	a10, .LC35
	call8	__assert_func
.LVL151:
.L65:
	.loc 1 273 0 is_stmt 1
	addi.n	a8, a8, -1
	extui	a8, a8, 0, 8
	l32r	a10, .LC31
	add.n	a10, a10, a9
	s8i	a8, a10, 0
	bnez.n	a8, .L66
	.loc 1 274 0
	slli	a8, a9, 2
	l32r	a10, .LC36
	add.n	a10, a8, a10
	movi	a11, 0x100
	memw
	s32i.n	a11, a10, 0
	.loc 1 275 0
	l32r	a10, .LC37
	add.n	a8, a8, a10
	memw
	s32i.n	a11, a8, 0
.L66:
	.loc 1 271 0 discriminator 2
	addi.n	a9, a9, 1
.LVL152:
.L64:
	.loc 1 271 0 is_stmt 0 discriminator 1
	l32i.n	a10, a3, 4
	l32i.n	a8, a3, 8
	add.n	a8, a10, a8
	blt	a9, a8, .L67
.LBE101:
	.loc 1 278 0 is_stmt 1
	l32i.n	a2, a3, 12
.LVL153:
	beqz.n	a2, .L68
	.loc 1 278 0 discriminator 1
	l32i.n	a8, a3, 16
	s32i.n	a8, a2, 16
.L68:
	.loc 1 278 0 is_stmt 0 discriminator 3
	l32i.n	a2, a3, 16
	l32i.n	a8, a3, 12
	s32i.n	a8, a2, 0
	.loc 1 279 0 is_stmt 1 discriminator 3
	j	.L69
.LVL154:
.L63:
	.loc 1 266 0 discriminator 2
	l32i.n	a3, a3, 12
.LVL155:
.L62:
	.loc 1 266 0 discriminator 1
	bnez.n	a3, .L70
.LVL156:
.L69:
	.loc 1 282 0
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL157:
	.loc 1 283 0
	bnez.n	a3, .L71
	.loc 1 284 0
	l32r	a13, .LC39
	l32r	a12, .LC34
	movi	a11, 0x11c
	l32r	a10, .LC35
	call8	__assert_func
.LVL158:
.L71:
	.loc 1 286 0
	mov.n	a10, a3
	call8	free
.LVL159:
	retw.n
.LFE33:
	.size	spi_flash_munmap, .-spi_flash_munmap
	.section	.rodata.str1.4
	.align	4
.LC41:
	.string	"handle=%d page=%d count=%d\n"
	.align	4
.LC44:
	.string	"page %d: refcnt=%d paddr=%d\n"
	.section	.text.spi_flash_mmap_dump,"ax",@progbits
	.literal_position
	.literal .LC40, s_mmap_entries_head
	.literal .LC42, .LC41
	.literal .LC43, s_mmap_page_refcnt
	.literal .LC45, .LC44
	.align	4
	.global	spi_flash_mmap_dump
	.type	spi_flash_mmap_dump, @function
spi_flash_mmap_dump:
.LFB36:
	.loc 1 306 0
	entry	sp, 32
.LCFI8:
	.loc 1 307 0
	call8	spi_flash_protected_mmap_init
.LVL160:
	.loc 1 310 0
	l32r	a2, .LC40
	l32i.n	a2, a2, 0
.LVL161:
	j	.L73
.L74:
	.loc 1 311 0 discriminator 3
	l32i.n	a13, a2, 8
	l32i.n	a12, a2, 4
	l32i.n	a11, a2, 0
	l32r	a10, .LC42
	call8	printf
.LVL162:
	.loc 1 310 0 discriminator 3
	l32i.n	a2, a2, 12
.LVL163:
.L73:
	.loc 1 310 0 discriminator 1
	bnez.n	a2, .L74
	j	.L75
.LVL164:
.L77:
.LBB102:
	.loc 1 314 0
	l32r	a8, .LC43
	add.n	a8, a8, a2
	l8ui	a8, a8, 0
	beqz.n	a8, .L76
.LBB103:
	.loc 1 315 0
	mov.n	a10, a2
	call8	spi_flash_protected_read_mmu_entry
.LVL165:
	.loc 1 316 0
	l32r	a8, .LC43
	add.n	a8, a8, a2
	mov.n	a13, a10
	l8ui	a12, a8, 0
	mov.n	a11, a2
	l32r	a10, .LC45
.LVL166:
	call8	printf
.LVL167:
.L76:
.LBE103:
	.loc 1 313 0 discriminator 2
	addi.n	a2, a2, 1
.LVL168:
.L75:
	.loc 1 313 0 is_stmt 0 discriminator 1
	movi	a8, 0xff
	bge	a8, a2, .L77
.LBE102:
	.loc 1 319 0 is_stmt 1
	retw.n
.LFE36:
	.size	spi_flash_mmap_dump, .-spi_flash_mmap_dump
	.section	.iram1
	.literal_position
	.literal .LC46, s_mmap_page_refcnt
	.literal .LC47, 1072758784
	.align	4
	.global	spi_flash_mmap_get_free_pages
	.type	spi_flash_mmap_get_free_pages, @function
spi_flash_mmap_get_free_pages:
.LFB37:
	.loc 1 322 0
.LVL169:
	entry	sp, 48
.LCFI9:
	.loc 1 323 0
	call8	spi_flash_disable_interrupts_caches_and_other_cpu
.LVL170:
	.loc 1 324 0
	call8	spi_flash_mmap_init
.LVL171:
	.loc 1 329 0
	addi.n	a13, sp, 8
	addi.n	a12, sp, 4
	mov.n	a11, sp
	mov.n	a10, a2
	call8	get_mmu_region
.LVL172:
.LBB104:
	.loc 1 330 0
#APP
# 330 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/flash_mmap.c" 1
	rsil	a4, 3

# 0 "" 2
.LVL173:
#NO_APP
.LBE104:
.LBB105:
	.loc 1 331 0
	l32i.n	a3, sp, 0
.LVL174:
.LBE105:
	.loc 1 325 0
	movi.n	a2, 0
.LVL175:
.LBB108:
	.loc 1 331 0
	j	.L79
.LVL176:
.L81:
	.loc 1 332 0
	l32r	a8, .LC46
	add.n	a8, a8, a3
	l8ui	a8, a8, 0
	bnez.n	a8, .L80
.LVL177:
.LBB106:
.LBB107:
	.loc 2 112 0 discriminator 1
	l32r	a10, .LC47
	addx4	a10, a3, a10
.LVL178:
	call8	esp_dport_access_sequence_reg_read
.LVL179:
.LBE107:
.LBE106:
	.loc 1 332 0 discriminator 1
	bnei	a10, 256, .L80
	.loc 1 333 0
	addi.n	a2, a2, 1
.LVL180:
.L80:
	.loc 1 331 0 discriminator 2
	addi.n	a3, a3, 1
.LVL181:
.L79:
	.loc 1 331 0 is_stmt 0 discriminator 1
	l32i.n	a8, sp, 4
	l32i.n	a9, sp, 0
	add.n	a8, a9, a8
	blt	a3, a8, .L81
.LBE108:
	.loc 1 336 0 is_stmt 1
	mov.n	a10, a4
	call8	_xtos_set_intlevel
.LVL182:
	.loc 1 337 0
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL183:
	.loc 1 339 0
	retw.n
.LFE37:
	.size	spi_flash_mmap_get_free_pages, .-spi_flash_mmap_get_free_pages
	.literal_position
	.literal .LC48, -65536
	.literal .LC49, 65535
	.literal .LC50, written_pages
	.literal .LC51, 65536
	.align	4
	.global	spi_flash_mark_modified_region
	.type	spi_flash_mark_modified_region, @function
spi_flash_mark_modified_region:
.LFB38:
	.loc 1 359 0
.LVL184:
	entry	sp, 32
.LCFI10:
.LVL185:
.LBB117:
.LBB118:
	.loc 1 372 0
	l32r	a8, .LC48
	and	a12, a2, a8
.LVL186:
	.loc 1 373 0
	sub	a2, a2, a12
.LVL187:
	add.n	a3, a3, a2
.LVL188:
	.loc 1 374 0
	l32r	a13, .LC49
	add.n	a2, a3, a13
	and	a13, a2, a8
.LVL189:
.LBB119:
	.loc 1 375 0
	mov.n	a10, a12
	j	.L83
.LVL190:
.L85:
.LBB120:
	.loc 1 376 0
	extui	a11, a10, 16, 16
.LVL191:
	.loc 1 377 0
	movi	a8, 0xff
	blt	a8, a11, .L82
	.loc 1 381 0
	srli	a9, a11, 5
.LVL192:
	.loc 1 382 0
	movi.n	a8, 1
	ssl	a11
	sll	a8, a8
.LVL193:
	.loc 1 385 0
	l32r	a11, .LC50
.LVL194:
	addx4	a9, a9, a11
.LVL195:
	l32i.n	a11, a9, 0
	or	a8, a11, a8
.LVL196:
	s32i.n	a8, a9, 0
.LBE120:
	.loc 1 375 0
	l32r	a8, .LC51
	add.n	a10, a10, a8
.LVL197:
.L83:
	add.n	a8, a12, a13
	bltu	a10, a8, .L85
.L82:
	retw.n
.LBE119:
.LBE118:
.LBE117:
.LFE38:
	.size	spi_flash_mark_modified_region, .-spi_flash_mark_modified_region
	.section	.text.spi_flash_cache2phys,"ax",@progbits
	.literal_position
	.literal .LC52, -1073741824
	.literal .LC53, 851967
	.literal .LC54, 1074593791
	.literal .LC55, -1061158912
	.literal .LC56, 65535
	.align	4
	.global	spi_flash_cache2phys
	.type	spi_flash_cache2phys, @function
spi_flash_cache2phys:
.LFB41:
	.loc 1 407 0
.LVL198:
	entry	sp, 32
.LCFI11:
.LVL199:
	.loc 1 410 0
	l32r	a8, .LC52
	add.n	a8, a2, a8
	l32r	a9, .LC53
	bgeu	a9, a8, .L90
	.loc 1 414 0
	l32r	a8, .LC54
	blt	a8, a2, .L88
	.loc 1 416 0
	l32r	a8, .LC55
	add.n	a8, a2, a8
	l32r	a10, .LC56
	add.n	a10, a8, a10
	movgez	a10, a8, a8
	srai	a10, a10, 16
.LVL200:
	j	.L89
.LVL201:
.L88:
	.loc 1 419 0
	l32r	a8, .LC52
	add.n	a8, a2, a8
	l32r	a10, .LC56
	add.n	a10, a8, a10
	movgez	a10, a8, a8
	srai	a10, a10, 16
	addi	a10, a10, 64
.LVL202:
.L89:
	.loc 1 422 0
	movi	a8, 0xff
	bltu	a8, a10, .L91
	.loc 1 426 0
	call8	spi_flash_protected_read_mmu_entry
.LVL203:
	.loc 1 427 0
	beqi	a10, 256, .L92
	.loc 1 431 0
	slli	a10, a10, 16
.LVL204:
	.loc 1 432 0
	extui	a2, a2, 0, 16
.LVL205:
	or	a2, a10, a2
	retw.n
.LVL206:
.L90:
	.loc 1 412 0
	movi.n	a2, -1
.LVL207:
	retw.n
.LVL208:
.L91:
	.loc 1 424 0
	movi.n	a2, -1
.LVL209:
	retw.n
.LVL210:
.L92:
	.loc 1 429 0
	movi.n	a2, -1
.LVL211:
	.loc 1 433 0
	retw.n
.LFE41:
	.size	spi_flash_cache2phys, .-spi_flash_cache2phys
	.section	.iram1
	.literal_position
	.literal .LC57, 1061158912
	.literal .LC58, 1073741824
	.literal .LC59, 1072758784
	.align	4
	.global	spi_flash_phys2cache
	.type	spi_flash_phys2cache, @function
spi_flash_phys2cache:
.LFB42:
	.loc 1 436 0
.LVL212:
	entry	sp, 48
.LCFI12:
	.loc 1 437 0
	extui	a5, a2, 16, 16
.LVL213:
	.loc 1 441 0
	bnez.n	a3, .L99
	.loc 1 444 0
	l32r	a3, .LC57
.LVL214:
	s32i.n	a3, sp, 0
	.loc 1 445 0
	movi.n	a7, 0
	.loc 1 443 0
	movi.n	a4, 0x40
	.loc 1 442 0
	mov.n	a3, a7
	j	.L94
.LVL215:
.L99:
	.loc 1 449 0
	l32r	a4, .LC58
	s32i.n	a4, sp, 0
	.loc 1 450 0
	movi.n	a7, 0x40
	.loc 1 448 0
	movi	a4, 0x100
	.loc 1 447 0
	movi.n	a3, 0x4d
.LVL216:
.L94:
	.loc 1 452 0
	call8	spi_flash_disable_interrupts_caches_and_other_cpu
.LVL217:
.LBB121:
	.loc 1 453 0
#APP
# 453 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/flash_mmap.c" 1
	rsil	a6, 3

# 0 "" 2
.LVL218:
#NO_APP
.LBE121:
.LBB122:
	.loc 1 454 0
	j	.L95
.LVL219:
.L98:
.LBB123:
.LBB124:
	.loc 2 112 0
	l32r	a10, .LC59
	addx4	a10, a3, a10
.LVL220:
	call8	esp_dport_access_sequence_reg_read
.LVL221:
.LBE124:
.LBE123:
	.loc 1 455 0
	bne	a5, a10, .L96
.LBB125:
	.loc 1 456 0
	sub	a3, a3, a7
.LVL222:
	.loc 1 457 0
	slli	a3, a3, 16
.LVL223:
	l32i.n	a4, sp, 0
.LVL224:
	add.n	a3, a4, a3
.LVL225:
	.loc 1 458 0
	mov.n	a10, a6
	call8	_xtos_set_intlevel
.LVL226:
	.loc 1 459 0
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL227:
	.loc 1 460 0
	extui	a2, a2, 0, 16
.LVL228:
	or	a2, a3, a2
	retw.n
.LVL229:
.L96:
.LBE125:
	.loc 1 454 0 discriminator 2
	addi.n	a3, a3, 1
.LVL230:
.L95:
	.loc 1 454 0 is_stmt 0 discriminator 1
	blt	a3, a4, .L98
.LBE122:
	.loc 1 463 0 is_stmt 1
	mov.n	a10, a6
	call8	_xtos_set_intlevel
.LVL231:
	.loc 1 464 0
	call8	spi_flash_enable_interrupts_caches_and_other_cpu
.LVL232:
	.loc 1 465 0
	movi.n	a2, 0
.LVL233:
	.loc 1 466 0
	retw.n
.LFE42:
	.size	spi_flash_phys2cache, .-spi_flash_phys2cache
	.section	.rodata.__func__$5791,"a",@progbits
	.align	4
	.type	__func__$5791, @object
	.size	__func__$5791, 17
__func__$5791:
	.string	"spi_flash_munmap"
	.section	.rodata.__func__$5782,"a",@progbits
	.align	4
	.type	__func__$5782, @object
	.size	__func__$5782, 21
__func__$5782:
	.string	"spi_flash_mmap_pages"
	.section	.bss.written_pages,"aw",@nobits
	.align	4
	.type	written_pages, @object
	.size	written_pages, 32
written_pages:
	.zero	32
	.section	.bss.s_mmap_last_handle,"aw",@nobits
	.align	4
	.type	s_mmap_last_handle, @object
	.size	s_mmap_last_handle, 4
s_mmap_last_handle:
	.zero	4
	.section	.bss.s_mmap_page_refcnt,"aw",@nobits
	.align	4
	.type	s_mmap_page_refcnt, @object
	.size	s_mmap_page_refcnt, 256
s_mmap_page_refcnt:
	.zero	256
	.section	.bss.s_mmap_entries_head,"aw",@nobits
	.align	4
	.type	s_mmap_entries_head, @object
	.size	s_mmap_entries_head, 4
s_mmap_entries_head:
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI2-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI3-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI4-.LFB39
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
	.uleb128 0x50
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI6-.LFB31
	.byte	0xe
	.uleb128 0x30
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
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI8-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI9-.LFB37
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI10-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI11-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI12-.LFB42
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
	.text
.Letext0:
	.file 5 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/spi_flash.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/include/esp_spi_flash.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_dport_access.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/xtensa/xtruntime.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/cache_utils.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/heap/include/esp_heap_caps.h"
	.file 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.file 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x11e6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0xc
	.4byte	.LASF114
	.4byte	.LASF115
	.4byte	.Ldebug_ranges0+0xb0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x5
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
	.byte	0x6
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
	.byte	0x6
	.byte	0x19
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x6
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
	.byte	0x6
	.byte	0x31
	.4byte	0x3e
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb6
	.uleb128 0x6
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x7
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x7
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x7
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x7
	.byte	0xa9
	.4byte	0x89
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x8
	.byte	0x18
	.4byte	0xc2
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x7
	.byte	0x18
	.byte	0x9
	.byte	0x89
	.4byte	0x146
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x9
	.byte	0x8a
	.4byte	0xcd
	.byte	0
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x9
	.byte	0x8b
	.4byte	0xcd
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x9
	.byte	0x8c
	.4byte	0xcd
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x9
	.byte	0x8d
	.4byte	0xcd
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x9
	.byte	0x8e
	.4byte	0xcd
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x9
	.byte	0x8f
	.4byte	0xcd
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x9
	.byte	0x90
	.4byte	0xf5
	.uleb128 0x9
	.byte	0x4
	.4byte	0x30
	.byte	0xa
	.byte	0xa1
	.4byte	0x16a
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0xa
	.byte	0xa4
	.4byte	0x151
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0xa
	.byte	0xa9
	.4byte	0xcd
	.uleb128 0x7
	.byte	0x8
	.byte	0x1
	.byte	0x43
	.4byte	0x1a1
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x1
	.byte	0x43
	.4byte	0x1de
	.byte	0
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x1
	.byte	0x43
	.4byte	0x1e4
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x14
	.byte	0x1
	.byte	0x3f
	.4byte	0x1de
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x1
	.byte	0x40
	.4byte	0xcd
	.byte	0
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x1
	.byte	0x41
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x1
	.byte	0x42
	.4byte	0x3e
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x1
	.byte	0x43
	.4byte	0x180
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1de
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x1
	.byte	0x44
	.4byte	0x1a1
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x4
	.byte	0x1
	.byte	0x47
	.4byte	0x20e
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x1
	.byte	0x47
	.4byte	0x1de
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x2
	.byte	0x6b
	.4byte	0xcd
	.byte	0x3
	.4byte	0x22a
	.uleb128 0xd
	.string	"reg"
	.byte	0x2
	.byte	0x6b
	.4byte	0xcd
	.byte	0
	.uleb128 0xe
	.4byte	.LASF116
	.byte	0x3
	.byte	0x8a
	.byte	0x3
	.4byte	0x24a
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x3
	.byte	0x8a
	.4byte	0x3e
	.uleb128 0x10
	.4byte	.LASF107
	.byte	0x3
	.byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x2
	.byte	0x4a
	.4byte	0xcd
	.byte	0x3
	.4byte	0x266
	.uleb128 0xd
	.string	"reg"
	.byte	0x2
	.byte	0x4a
	.4byte	0xcd
	.byte	0
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x4
	.byte	0xa5
	.4byte	0xee
	.byte	0x3
	.4byte	0x289
	.uleb128 0xd
	.string	"p"
	.byte	0x4
	.byte	0xa5
	.4byte	0xb0
	.uleb128 0x11
	.string	"r"
	.byte	0x4
	.byte	0xa6
	.4byte	0xee
	.byte	0
	.uleb128 0x12
	.4byte	.LASF117
	.byte	0x1
	.byte	0x66
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d5
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x1
	.byte	0x66
	.4byte	0x16a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x1
	.byte	0x66
	.4byte	0x2d5
	.4byte	.LLST0
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x1
	.byte	0x66
	.4byte	0x2d5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x1
	.byte	0x66
	.4byte	0x2db
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3e
	.uleb128 0x5
	.byte	0x4
	.4byte	0xcd
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x1
	.byte	0x4d
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c8
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x1
	.byte	0x52
	.4byte	0x30
	.4byte	.LLST1
	.uleb128 0x17
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.4byte	0x322
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x1
	.byte	0x52
	.4byte	0x30
	.4byte	.LLST1
	.byte	0
	.uleb128 0x17
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.4byte	0x3b7
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x53
	.4byte	0x3e
	.4byte	.LLST3
	.uleb128 0x19
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0x1
	.byte	0x54
	.4byte	0xcd
	.4byte	.LLST4
	.uleb128 0x1a
	.4byte	.LASF54
	.byte	0x1
	.byte	0x55
	.4byte	0xcd
	.uleb128 0x1b
	.4byte	0x20e
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.byte	0x1
	.byte	0x54
	.4byte	0x38c
	.uleb128 0x1c
	.4byte	0x21e
	.4byte	.LLST5
	.uleb128 0x1d
	.4byte	.LVL7
	.4byte	0x1165
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x20e
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	0x21e
	.4byte	.LLST6
	.uleb128 0x1d
	.4byte	.LVL9
	.4byte	0x1165
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL18
	.4byte	0x1170
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x121
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3fa
	.uleb128 0x21
	.4byte	.LVL19
	.4byte	0x117b
	.uleb128 0x21
	.4byte	.LVL20
	.4byte	0x2e1
	.uleb128 0x21
	.4byte	.LVL21
	.4byte	0x1186
	.byte	0
	.uleb128 0x22
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x128
	.4byte	0xcd
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x479
	.uleb128 0x23
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x128
	.4byte	0x3e
	.4byte	.LLST7
	.uleb128 0x24
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x12a
	.4byte	0xcd
	.uleb128 0x25
	.4byte	0x24a
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x1
	.2byte	0x12c
	.4byte	0x466
	.uleb128 0x1c
	.4byte	0x25a
	.4byte	.LLST8
	.uleb128 0x1d
	.4byte	.LVL25
	.4byte	0x1191
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xa
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL23
	.4byte	0x117b
	.uleb128 0x21
	.4byte	.LVL27
	.4byte	0x1186
	.byte	0
	.uleb128 0x26
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x171
	.4byte	0xee
	.byte	0x3
	.4byte	0x4ef
	.uleb128 0x27
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x171
	.4byte	0x25
	.uleb128 0x27
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x171
	.4byte	0x25
	.uleb128 0x27
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x171
	.4byte	0xee
	.uleb128 0x24
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x174
	.4byte	0xcd
	.uleb128 0x28
	.uleb128 0x24
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x177
	.4byte	0xcd
	.uleb128 0x28
	.uleb128 0x24
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x178
	.4byte	0x3e
	.uleb128 0x29
	.string	"idx"
	.byte	0x1
	.2byte	0x17d
	.4byte	0x3e
	.uleb128 0x29
	.string	"bit"
	.byte	0x1
	.2byte	0x17e
	.4byte	0xcd
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x16b
	.4byte	0xee
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x62c
	.uleb128 0x23
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x16b
	.4byte	0x25
	.4byte	.LLST9
	.uleb128 0x23
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x16b
	.4byte	0x25
	.4byte	.LLST10
	.uleb128 0x2a
	.4byte	0x479
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.byte	0x1
	.2byte	0x16d
	.uleb128 0x2b
	.4byte	0x4a2
	.byte	0
	.uleb128 0x1c
	.4byte	0x496
	.4byte	.LLST11
	.uleb128 0x1c
	.4byte	0x48a
	.4byte	.LLST12
	.uleb128 0x19
	.4byte	.LBB65
	.4byte	.LBE65-.LBB65
	.uleb128 0x2c
	.4byte	0x4ae
	.4byte	.LLST13
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2c
	.4byte	0x4bb
	.4byte	.LLST14
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x2c
	.4byte	0x4c8
	.4byte	.LLST15
	.uleb128 0x2c
	.4byte	0x4d4
	.4byte	.LLST16
	.uleb128 0x2c
	.4byte	0x4e0
	.4byte	.LLST17
	.uleb128 0x25
	.4byte	0x22a
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.byte	0x1
	.2byte	0x18b
	.4byte	0x5de
	.uleb128 0x1c
	.4byte	0x236
	.4byte	.LLST18
	.uleb128 0x19
	.4byte	.LBB69
	.4byte	.LBE69-.LBB69
	.uleb128 0x21
	.4byte	.LVL39
	.4byte	0x119c
	.uleb128 0x2e
	.4byte	.LVL40
	.4byte	0x11a7
	.4byte	0x5d3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL41
	.4byte	0x11b2
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	0x22a
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.byte	0x1
	.2byte	0x18d
	.uleb128 0x1c
	.4byte	0x236
	.4byte	.LLST19
	.uleb128 0x19
	.4byte	.LBB71
	.4byte	.LBE71-.LBB71
	.uleb128 0x21
	.4byte	.LVL42
	.4byte	0x119c
	.uleb128 0x2e
	.4byte	.LVL43
	.4byte	0x11a7
	.4byte	0x61c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x21
	.4byte	.LVL44
	.4byte	0x11b2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF81
	.byte	0x1
	.byte	0x8f
	.4byte	0xe3
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa74
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x1
	.byte	0x8f
	.4byte	0xa74
	.4byte	.LLST20
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x1
	.byte	0x8f
	.4byte	0x25
	.4byte	.LLST21
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x1
	.byte	0x8f
	.4byte	0x16a
	.4byte	.LLST22
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x1
	.byte	0x90
	.4byte	0xa7f
	.4byte	.LLST23
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x1
	.byte	0x90
	.4byte	0xa85
	.4byte	.LLST24
	.uleb128 0x18
	.string	"ret"
	.byte	0x1
	.byte	0x92
	.4byte	0xe3
	.4byte	.LLST25
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x1
	.byte	0x93
	.4byte	0xee
	.4byte	.LLST26
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0x1
	.byte	0x93
	.4byte	0xee
	.4byte	.LLST27
	.uleb128 0x16
	.4byte	.LASF73
	.byte	0x1
	.byte	0x9f
	.4byte	0xa8b
	.4byte	.LLST28
	.uleb128 0x30
	.4byte	.LASF74
	.byte	0x1
	.byte	0xae
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.4byte	.LASF75
	.byte	0x1
	.byte	0xaf
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x30
	.4byte	.LASF50
	.byte	0x1
	.byte	0xb0
	.4byte	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x1
	.byte	0xb8
	.4byte	0x3e
	.4byte	.LLST29
	.uleb128 0x18
	.string	"end"
	.byte	0x1
	.byte	0xbb
	.4byte	0x3e
	.4byte	.LLST30
	.uleb128 0x31
	.4byte	.LASF77
	.4byte	0xaa1
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5782
	.uleb128 0x1b
	.4byte	0x266
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.byte	0x1
	.byte	0x97
	.4byte	0x756
	.uleb128 0x1c
	.4byte	0x276
	.4byte	.LLST31
	.uleb128 0x19
	.4byte	.LBB75
	.4byte	.LBE75-.LBB75
	.uleb128 0x2c
	.4byte	0x27f
	.4byte	.LLST32
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x76d
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x9a
	.4byte	0x3e
	.4byte	.LLST33
	.byte	0
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x50
	.4byte	0x795
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xa7
	.4byte	0x3e
	.4byte	.LLST34
	.uleb128 0x1d
	.4byte	.LVL67
	.4byte	0x4ef
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.4byte	0x85a
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0x1
	.byte	0xbd
	.4byte	0x3e
	.4byte	.LLST35
	.uleb128 0x18
	.string	"pos"
	.byte	0x1
	.byte	0xbe
	.4byte	0x3e
	.4byte	.LLST36
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x1
	.byte	0xbf
	.4byte	0x30
	.4byte	.LLST37
	.uleb128 0x17
	.4byte	.LBB81
	.4byte	.LBE81-.LBB81
	.4byte	0x7ec
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x1
	.byte	0xbf
	.4byte	0x30
	.4byte	.LLST37
	.byte	0
	.uleb128 0x17
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.4byte	0x849
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0x1
	.byte	0xc1
	.4byte	0x3e
	.4byte	.LLST39
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x1
	.byte	0xc2
	.4byte	0xb7
	.4byte	.LLST40
	.uleb128 0x1f
	.4byte	0x20e
	.4byte	.LBB83
	.4byte	.LBE83-.LBB83
	.byte	0x1
	.byte	0xc1
	.uleb128 0x1c
	.4byte	0x21e
	.4byte	.LLST41
	.uleb128 0x1d
	.4byte	.LVL79
	.4byte	0x1165
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xa
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL83
	.4byte	0x1170
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x68
	.4byte	0x96c
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0x1
	.byte	0xd4
	.4byte	0xcd
	.4byte	.LLST42
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x1
	.byte	0xd5
	.4byte	0x30
	.4byte	.LLST43
	.uleb128 0x17
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.4byte	0x89e
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x1
	.byte	0xd5
	.4byte	0x30
	.4byte	.LLST43
	.byte	0
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x80
	.4byte	0x95a
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xd6
	.4byte	0x3e
	.4byte	.LLST45
	.uleb128 0x19
	.4byte	.LBB88
	.4byte	.LBE88-.LBB88
	.uleb128 0x1a
	.4byte	.LASF53
	.byte	0x1
	.byte	0xd8
	.4byte	0xcd
	.uleb128 0x1a
	.4byte	.LASF54
	.byte	0x1
	.byte	0xd9
	.4byte	0xcd
	.uleb128 0x1b
	.4byte	0x20e
	.4byte	.LBB89
	.4byte	.LBE89-.LBB89
	.byte	0x1
	.byte	0xd8
	.4byte	0x900
	.uleb128 0x1c
	.4byte	0x21e
	.4byte	.LLST46
	.uleb128 0x1d
	.4byte	.LVL95
	.4byte	0x1165
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x20e
	.4byte	.LBB91
	.4byte	.LBE91-.LBB91
	.byte	0x1
	.byte	0xd9
	.4byte	0x92d
	.uleb128 0x1c
	.4byte	0x21e
	.4byte	.LLST47
	.uleb128 0x1d
	.4byte	.LVL97
	.4byte	0x1165
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL98
	.4byte	0x11bd
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xdc
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5782
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL105
	.4byte	0x1170
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x22a
	.4byte	.LBB95
	.4byte	.LBE95-.LBB95
	.byte	0x1
	.byte	0xfa
	.4byte	0x9b8
	.uleb128 0x1c
	.4byte	0x236
	.4byte	.LLST48
	.uleb128 0x19
	.4byte	.LBB96
	.4byte	.LBE96-.LBB96
	.uleb128 0x21
	.4byte	.LVL112
	.4byte	0x119c
	.uleb128 0x2e
	.4byte	.LVL113
	.4byte	0x11a7
	.4byte	0x9ad
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL114
	.4byte	0x11b2
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x22a
	.4byte	.LBB97
	.4byte	.LBE97-.LBB97
	.byte	0x1
	.byte	0xfb
	.4byte	0xa04
	.uleb128 0x1c
	.4byte	0x236
	.4byte	.LLST49
	.uleb128 0x19
	.4byte	.LBB98
	.4byte	.LBE98-.LBB98
	.uleb128 0x21
	.4byte	.LVL115
	.4byte	0x119c
	.uleb128 0x2e
	.4byte	.LVL116
	.4byte	0x11a7
	.4byte	0x9f9
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x21
	.4byte	.LVL117
	.4byte	0x11b2
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL62
	.4byte	0x11c8
	.4byte	0xa1e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x804
	.byte	0
	.uleb128 0x21
	.4byte	.LVL64
	.4byte	0x117b
	.uleb128 0x21
	.4byte	.LVL70
	.4byte	0x2e1
	.uleb128 0x2e
	.4byte	.LVL71
	.4byte	0x289
	.4byte	0xa59
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x21
	.4byte	.LVL118
	.4byte	0x1186
	.uleb128 0x1d
	.4byte	.LVL119
	.4byte	0x11d3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa7a
	.uleb128 0x33
	.4byte	0x3e
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x175
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ea
	.uleb128 0x34
	.4byte	0xa9
	.4byte	0xaa1
	.uleb128 0x35
	.4byte	0x9b
	.byte	0x14
	.byte	0
	.uleb128 0x33
	.4byte	0xa91
	.uleb128 0x2f
	.4byte	.LASF82
	.byte	0x1
	.byte	0x75
	.4byte	0xe3
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbb6
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0x1
	.byte	0x75
	.4byte	0x25
	.4byte	.LLST50
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0x1
	.byte	0x75
	.4byte	0x25
	.4byte	.LLST51
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x1
	.byte	0x75
	.4byte	0x16a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0x1
	.byte	0x76
	.4byte	0xa7f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0x1
	.byte	0x76
	.4byte	0xa85
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x18
	.string	"ret"
	.byte	0x1
	.byte	0x78
	.4byte	0xe3
	.4byte	.LLST52
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x1
	.byte	0x80
	.4byte	0x3e
	.4byte	.LLST53
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x1
	.byte	0x81
	.4byte	0x3e
	.4byte	.LLST54
	.uleb128 0x16
	.4byte	.LASF67
	.byte	0x1
	.byte	0x83
	.4byte	0x2d5
	.4byte	.LLST55
	.uleb128 0x17
	.4byte	.LBB100
	.4byte	.LBE100-.LBB100
	.4byte	0xb5b
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x87
	.4byte	0x3e
	.4byte	.LLST56
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL134
	.4byte	0x11c8
	.4byte	0xb78
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x800
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL138
	.4byte	0x62c
	.4byte	0xba5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL140
	.4byte	0x11d3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x105
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc93
	.uleb128 0x23
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x105
	.4byte	0x175
	.4byte	.LLST57
	.uleb128 0x37
	.string	"it"
	.byte	0x1
	.2byte	0x108
	.4byte	0xa8b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LASF77
	.4byte	0xca3
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5791
	.uleb128 0x17
	.4byte	.LBB101
	.4byte	.LBE101-.LBB101
	.4byte	0xc40
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x10f
	.4byte	0x3e
	.4byte	.LLST58
	.uleb128 0x1d
	.4byte	.LVL151
	.4byte	0x11bd
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x110
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5791
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL148
	.4byte	0x117b
	.uleb128 0x21
	.4byte	.LVL157
	.4byte	0x1186
	.uleb128 0x2e
	.4byte	.LVL158
	.4byte	0x11bd
	.4byte	0xc82
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x11c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5791
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL159
	.4byte	0x11d3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0xa9
	.4byte	0xca3
	.uleb128 0x35
	.4byte	0x9b
	.byte	0x10
	.byte	0
	.uleb128 0x33
	.4byte	0xc93
	.uleb128 0x39
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x131
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd4b
	.uleb128 0x38
	.string	"it"
	.byte	0x1
	.2byte	0x135
	.4byte	0xa8b
	.4byte	.LLST59
	.uleb128 0x17
	.4byte	.LBB102
	.4byte	.LBE102-.LBB102
	.4byte	0xd2e
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.2byte	0x139
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.4byte	.LBB103
	.4byte	.LBE103-.LBB103
	.uleb128 0x3a
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x13b
	.4byte	0xcd
	.4byte	.LLST60
	.uleb128 0x2e
	.4byte	.LVL165
	.4byte	0x3fa
	.4byte	0xd13
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL167
	.4byte	0x11de
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL160
	.4byte	0x3c8
	.uleb128 0x1d
	.4byte	.LVL162
	.4byte	0x11de
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x141
	.4byte	0xcd
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe7a
	.uleb128 0x23
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x141
	.4byte	0x16a
	.4byte	.LLST61
	.uleb128 0x3a
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x145
	.4byte	0x3e
	.4byte	.LLST62
	.uleb128 0x3c
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x146
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3c
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x147
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3c
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x148
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3c
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x14a
	.4byte	0x30
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LBB104
	.4byte	.LBE104-.LBB104
	.4byte	0xddc
	.uleb128 0x3c
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x14a
	.4byte	0x30
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x98
	.4byte	0xe24
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.2byte	0x14b
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.4byte	0x20e
	.4byte	.LBB106
	.4byte	.LBE106-.LBB106
	.byte	0x1
	.2byte	0x14c
	.uleb128 0x1c
	.4byte	0x21e
	.4byte	.LLST63
	.uleb128 0x1d
	.4byte	.LVL179
	.4byte	0x1165
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xa
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL170
	.4byte	0x117b
	.uleb128 0x21
	.4byte	.LVL171
	.4byte	0x2e1
	.uleb128 0x2e
	.4byte	.LVL172
	.4byte	0x289
	.4byte	0xe5c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL182
	.4byte	0x1170
	.4byte	0xe70
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL183
	.4byte	0x1186
	.byte	0
	.uleb128 0x36
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x166
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf23
	.uleb128 0x23
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x166
	.4byte	0x25
	.4byte	.LLST64
	.uleb128 0x23
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x166
	.4byte	0x25
	.4byte	.LLST65
	.uleb128 0x2a
	.4byte	0x479
	.4byte	.LBB117
	.4byte	.LBE117-.LBB117
	.byte	0x1
	.2byte	0x168
	.uleb128 0x2b
	.4byte	0x4a2
	.byte	0x1
	.uleb128 0x1c
	.4byte	0x496
	.4byte	.LLST66
	.uleb128 0x1c
	.4byte	0x48a
	.4byte	.LLST67
	.uleb128 0x19
	.4byte	.LBB118
	.4byte	.LBE118-.LBB118
	.uleb128 0x3d
	.4byte	0x4ae
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x19
	.4byte	.LBB119
	.4byte	.LBE119-.LBB119
	.uleb128 0x2c
	.4byte	0x4bb
	.4byte	.LLST68
	.uleb128 0x19
	.4byte	.LBB120
	.4byte	.LBE120-.LBB120
	.uleb128 0x2c
	.4byte	0x4c8
	.4byte	.LLST69
	.uleb128 0x2c
	.4byte	0x4d4
	.4byte	.LLST70
	.uleb128 0x2c
	.4byte	0x4e0
	.4byte	.LLST71
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x196
	.4byte	0xcd
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf95
	.uleb128 0x23
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x196
	.4byte	0xb0
	.4byte	.LLST72
	.uleb128 0x38
	.string	"c"
	.byte	0x1
	.2byte	0x198
	.4byte	0xd8
	.4byte	.LLST73
	.uleb128 0x3a
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x199
	.4byte	0x25
	.4byte	.LLST74
	.uleb128 0x3a
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x1aa
	.4byte	0xcd
	.4byte	.LLST75
	.uleb128 0x3a
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x1af
	.4byte	0xcd
	.4byte	.LLST76
	.uleb128 0x21
	.4byte	.LVL203
	.4byte	0x3fa
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x1b3
	.4byte	0xb0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10f4
	.uleb128 0x23
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x1b3
	.4byte	0xcd
	.4byte	.LLST77
	.uleb128 0x23
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x1b3
	.4byte	0x16a
	.4byte	.LLST78
	.uleb128 0x3c
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x1b5
	.4byte	0xcd
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3a
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x3e
	.4byte	.LLST79
	.uleb128 0x38
	.string	"end"
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x3e
	.4byte	.LLST80
	.uleb128 0x3c
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x3c
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x1b7
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3c
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x30
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x17
	.4byte	.LBB121
	.4byte	.LBE121-.LBB121
	.4byte	0x1044
	.uleb128 0x3c
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x30
	.uleb128 0x1
	.byte	0x56
	.byte	0
	.uleb128 0x17
	.4byte	.LBB122
	.4byte	.LBE122-.LBB122
	.4byte	0x10cd
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x1c6
	.4byte	0x3e
	.4byte	.LLST81
	.uleb128 0x25
	.4byte	0x20e
	.4byte	.LBB123
	.4byte	.LBE123-.LBB123
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x1095
	.uleb128 0x1c
	.4byte	0x21e
	.4byte	.LLST82
	.uleb128 0x1d
	.4byte	.LVL221
	.4byte	0x1165
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xa
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LBB125
	.4byte	.LBE125-.LBB125
	.uleb128 0x3a
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x1c9
	.4byte	0xd8
	.4byte	.LLST83
	.uleb128 0x2e
	.4byte	.LVL226
	.4byte	0x1170
	.4byte	0x10c2
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL227
	.4byte	0x1186
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL217
	.4byte	0x117b
	.uleb128 0x2e
	.4byte	.LVL231
	.4byte	0x1170
	.4byte	0x10ea
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL232
	.4byte	0x1186
	.byte	0
	.uleb128 0x30
	.4byte	.LASF97
	.byte	0x1
	.byte	0x47
	.4byte	0x1f5
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mmap_entries_head
	.uleb128 0x34
	.4byte	0xb7
	.4byte	0x1115
	.uleb128 0x35
	.4byte	0x9b
	.byte	0xff
	.byte	0
	.uleb128 0x30
	.4byte	.LASF98
	.byte	0x1
	.byte	0x49
	.4byte	0x1105
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.uleb128 0x30
	.4byte	.LASF99
	.byte	0x1
	.byte	0x4a
	.4byte	0xcd
	.uleb128 0x5
	.byte	0x3
	.4byte	s_mmap_last_handle
	.uleb128 0x34
	.4byte	0xcd
	.4byte	0x1147
	.uleb128 0x35
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x162
	.4byte	0x1137
	.uleb128 0x5
	.byte	0x3
	.4byte	written_pages
	.uleb128 0x3e
	.4byte	.LASF119
	.byte	0x9
	.2byte	0x21a
	.4byte	0x146
	.uleb128 0x3f
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0xb
	.byte	0x1f
	.uleb128 0x3f
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0xc
	.byte	0x99
	.uleb128 0x3f
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0xd
	.byte	0x26
	.uleb128 0x3f
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0xd
	.byte	0x29
	.uleb128 0x3f
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0xb
	.byte	0x1e
	.uleb128 0x3f
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0xb
	.byte	0x18
	.uleb128 0x3f
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0x3
	.byte	0x8c
	.uleb128 0x3f
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0xb
	.byte	0x19
	.uleb128 0x3f
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0xe
	.byte	0x29
	.uleb128 0x3f
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0xf
	.byte	0x37
	.uleb128 0x3f
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x10
	.byte	0x5a
	.uleb128 0x3f
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0x11
	.byte	0xb2
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xa
	.2byte	0x100
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0x75
	.sleb128 -8192
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0x75
	.sleb128 -8192
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25-1
	.4byte	.LVL26
	.2byte	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE35
	.2byte	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL39-1
	.4byte	.LVL45
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0xa
	.byte	0x73
	.sleb128 65535
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL30
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL39-1
	.4byte	.LVL46
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x11
	.sleb128 -65536
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL34
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL46
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL37
	.4byte	.LVL39-1
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL36
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL37
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x7
	.byte	0x31
	.byte	0x78
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL38
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL41
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL50
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL110
	.4byte	.LVL120
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL50
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x2
	.byte	0x74
	.sleb128 8
	.4byte	.LVL108
	.4byte	.LVL120
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL129
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL50
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL72
	.4byte	.LVL120
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL128
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL50
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL54
	.4byte	.LVL120
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL120
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL122
	.4byte	.LFE32
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL53
	.4byte	.LVL120
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL120
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL122
	.4byte	.LFE32
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xa
	.2byte	0x101
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL73
	.4byte	.LVL120
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL129
	.4byte	.LFE32
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL51
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL120
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL120
	.4byte	.LVL129
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL63
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64-1
	.4byte	.LVL120
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL126
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL128
	.4byte	.LFE32
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL74
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL93
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL75
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL52
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL110
	.4byte	.LVL120
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
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL61
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL122
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL77
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL76
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL79
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt
	.byte	0x22
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	s_mmap_page_refcnt-1
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79-1
	.4byte	.LVL81
	.2byte	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0xb
	.byte	0x74
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL89
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL91
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL93
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL94
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x4
	.byte	0x72
	.sleb128 -8192
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0xb
	.byte	0x77
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0xb
	.byte	0x77
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL96
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0xb
	.byte	0x77
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff12000
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0xb
	.byte	0x77
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff12000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL111
	.4byte	.LVL117
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL114
	.4byte	.LVL117
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL131
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
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL132
	.4byte	.LVL141
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL145
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL131
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL146
	.4byte	.LFE31
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL133
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL135
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL145
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL135
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL145
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL136
	.4byte	.LVL138-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL147
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL156
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL150
	.4byte	.LVL151-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL151
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL161
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL166
	.4byte	.LVL167-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL169
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL175
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL171
	.4byte	.LVL176
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	.LVL178
	.4byte	.LVL179-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL179-1
	.4byte	.LVL180
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL184
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL187
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL184
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL188
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL185
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL189
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL185
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL187
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL190
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL191
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL194
	.4byte	.LVL197
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL192
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL195
	.4byte	.LVL197
	.2byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL193
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL196
	.4byte	.LVL197
	.2byte	0x7
	.byte	0x31
	.byte	0x7a
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL198
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL207
	.4byte	.LVL208
	.2byte	0x7
	.byte	0x78
	.sleb128 1073741824
	.byte	0x9f
	.4byte	.LVL208
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL209
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
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL199
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL207
	.4byte	.LVL208
	.2byte	0x7
	.byte	0x78
	.sleb128 1073741824
	.byte	0x9f
	.4byte	.LVL208
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL209
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
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL200
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL202
	.4byte	.LVL203-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL208
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL210
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL204
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL212
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL228
	.4byte	.LVL229
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL229
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL233
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL212
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL214
	.4byte	.LVL215
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL215
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL216
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL216
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL216
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL229
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL218
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL229
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	.LVL220
	.4byte	.LVL221-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL221-1
	.4byte	.LVL222
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	.LVL229
	.4byte	.LVL230
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x3ff10000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL225
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	0
	.4byte	0
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	.LBB72
	.4byte	.LBE72
	.4byte	0
	.4byte	0
	.4byte	.LBB76
	.4byte	.LBE76
	.4byte	.LBB77
	.4byte	.LBE77
	.4byte	.LBB99
	.4byte	.LBE99
	.4byte	0
	.4byte	0
	.4byte	.LBB78
	.4byte	.LBE78
	.4byte	.LBB79
	.4byte	.LBE79
	.4byte	0
	.4byte	0
	.4byte	.LBB85
	.4byte	.LBE85
	.4byte	.LBB94
	.4byte	.LBE94
	.4byte	0
	.4byte	0
	.4byte	.LBB87
	.4byte	.LBE87
	.4byte	.LBB93
	.4byte	.LBE93
	.4byte	0
	.4byte	0
	.4byte	.LBB105
	.4byte	.LBE105
	.4byte	.LBB108
	.4byte	.LBE108
	.4byte	0
	.4byte	0
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF112:
	.string	"printf"
.LASF37:
	.string	"count"
.LASF46:
	.string	"esp_ptr_internal"
.LASF74:
	.string	"region_begin"
.LASF103:
	.string	"spi_flash_disable_interrupts_caches_and_other_cpu"
.LASF3:
	.string	"size_t"
.LASF26:
	.string	"page_size"
.LASF68:
	.string	"page_count"
.LASF65:
	.string	"spi_flash_protected_read_mmu_entry"
.LASF70:
	.string	"out_handle"
.LASF4:
	.string	"__uint8_t"
.LASF67:
	.string	"pages"
.LASF110:
	.string	"heap_caps_malloc"
.LASF93:
	.string	"phys_offs"
.LASF10:
	.string	"long long unsigned int"
.LASF32:
	.string	"spi_flash_mmap_handle_t"
.LASF64:
	.string	"addr"
.LASF49:
	.string	"out_size"
.LASF44:
	.string	"DPORT_SEQUENCE_REG_READ"
.LASF87:
	.string	"spi_flash_mmap_get_free_pages"
.LASF111:
	.string	"free"
.LASF25:
	.string	"sector_size"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF62:
	.string	"mark"
.LASF31:
	.string	"spi_flash_mmap_memory_t"
.LASF40:
	.string	"mmap_entry_"
.LASF12:
	.string	"long int"
.LASF69:
	.string	"out_ptr"
.LASF109:
	.string	"__assert_func"
.LASF97:
	.string	"s_mmap_entries_head"
.LASF6:
	.string	"short int"
.LASF102:
	.string	"_xtos_set_intlevel"
.LASF51:
	.string	"intLvl"
.LASF89:
	.string	"spi_flash_mark_modified_region"
.LASF66:
	.string	"spi_flash_ensure_unmodified_region"
.LASF95:
	.string	"page_delta"
.LASF100:
	.string	"written_pages"
.LASF28:
	.string	"esp_rom_spiflash_chip_t"
.LASF82:
	.string	"spi_flash_mmap"
.LASF8:
	.string	"__uint32_t"
.LASF116:
	.string	"Cache_Flush"
.LASF11:
	.string	"__intptr_t"
.LASF91:
	.string	"cached"
.LASF73:
	.string	"new_entry"
.LASF52:
	.string	"__tmp"
.LASF107:
	.string	"Cache_Flush_rom"
.LASF58:
	.string	"value"
.LASF47:
	.string	"memory"
.LASF0:
	.string	"unsigned int"
.LASF24:
	.string	"block_size"
.LASF71:
	.string	"did_flush"
.LASF14:
	.string	"long unsigned int"
.LASF36:
	.string	"page"
.LASF99:
	.string	"s_mmap_last_handle"
.LASF84:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF118:
	.string	"spi_flash_mmap_dump"
.LASF19:
	.string	"intptr_t"
.LASF101:
	.string	"esp_dport_access_sequence_reg_read"
.LASF114:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/flash_mmap.c"
.LASF90:
	.string	"spi_flash_cache2phys"
.LASF56:
	.string	"spi_flash_protected_mmap_init"
.LASF86:
	.string	"paddr"
.LASF119:
	.string	"g_rom_flashchip"
.LASF63:
	.string	"page_start_addr"
.LASF96:
	.string	"base"
.LASF27:
	.string	"status_mask"
.LASF34:
	.string	"le_prev"
.LASF39:
	.string	"mmap_entry_t"
.LASF53:
	.string	"entry_pro"
.LASF106:
	.string	"esp_dport_access_stall_other_cpu_start"
.LASF13:
	.string	"sizetype"
.LASF94:
	.string	"spi_flash_phys2cache"
.LASF92:
	.string	"cache_page"
.LASF54:
	.string	"entry_app"
.LASF29:
	.string	"SPI_FLASH_MMAP_DATA"
.LASF30:
	.string	"SPI_FLASH_MMAP_INST"
.LASF33:
	.string	"le_next"
.LASF43:
	.string	"cpu_no"
.LASF98:
	.string	"s_mmap_page_refcnt"
.LASF42:
	.string	"lh_first"
.LASF55:
	.string	"spi_flash_mmap_init"
.LASF117:
	.string	"get_mmu_region"
.LASF21:
	.string	"_Bool"
.LASF17:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF60:
	.string	"start_addr"
.LASF113:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF48:
	.string	"out_begin"
.LASF41:
	.string	"mmap_entries_head"
.LASF72:
	.string	"need_flush"
.LASF77:
	.string	"__func__"
.LASF75:
	.string	"region_size"
.LASF50:
	.string	"region_addr"
.LASF18:
	.string	"uint32_t"
.LASF61:
	.string	"length"
.LASF15:
	.string	"char"
.LASF7:
	.string	"__int32_t"
.LASF104:
	.string	"spi_flash_enable_interrupts_caches_and_other_cpu"
.LASF22:
	.string	"device_id"
.LASF83:
	.string	"src_addr"
.LASF57:
	.string	"index"
.LASF38:
	.string	"entries"
.LASF105:
	.string	"esp_dport_access_reg_read"
.LASF88:
	.string	"spi_flash_munmap"
.LASF108:
	.string	"esp_dport_access_stall_other_cpu_end"
.LASF81:
	.string	"spi_flash_mmap_pages"
.LASF23:
	.string	"chip_size"
.LASF79:
	.string	"table_val"
.LASF20:
	.string	"esp_err_t"
.LASF16:
	.string	"uint8_t"
.LASF45:
	.string	"DPORT_REG_READ"
.LASF115:
	.string	"/home/raphael/rtone/lcd/build/spi_flash"
.LASF80:
	.string	"refcnt"
.LASF35:
	.string	"handle"
.LASF78:
	.string	"pageno"
.LASF76:
	.string	"start"
.LASF59:
	.string	"update_written_pages"
.LASF85:
	.string	"phys_page"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
