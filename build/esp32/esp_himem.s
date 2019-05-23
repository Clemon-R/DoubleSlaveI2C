	.file	"esp_himem.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"s_ram_descriptor[blocks_out[i]].is_mapped == false"
	.align	4
.LC3:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/esp_himem.c"
	.section	.text.allocate_blocks,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$5290
	.literal .LC4, .LC3
	.align	4
	.type	allocate_blocks, @function
allocate_blocks:
.LFB35:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/esp_himem.c"
	.loc 1 172 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 180 0
	beqz.n	a2, .L6
	.loc 1 189 0
	movi.n	a2, 0
.LVL2:
	retw.n
.LVL3:
.L5:
.LBB19:
	.loc 1 183 0
	addx2	a11, a9, a3
	l16ui	a8, a11, 0
	slli	a8, a8, 2
	l8ui	a12, a8, 0
	movi.n	a10, 1
	or	a10, a12, a10
	s8i	a10, a8, 0
	.loc 1 184 0
	l16ui	a8, a11, 0
	slli	a8, a8, 2
	l32i.n	a8, a8, 0
	.loc 1 184 0
	bbci	a8, 1, .L4
	.loc 1 184 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi	a11, 0xb8
	l32r	a10, .LC4
	call8	__assert_func
.LVL4:
.L4:
	.loc 1 182 0 is_stmt 1 discriminator 2
	addi.n	a9, a9, 1
.LVL5:
	j	.L2
.LVL6:
.L6:
.LBE19:
	movi.n	a9, 0
.L2:
.LVL7:
.LBB20:
	.loc 1 182 0 is_stmt 0 discriminator 1
	blt	a9, a2, .L5
.LBE20:
	.loc 1 186 0 is_stmt 1
	movi.n	a2, 1
.LVL8:
	.loc 1 191 0
	retw.n
.LFE35:
	.size	allocate_blocks, .-allocate_blocks
	.section	.rodata.str1.4
	.align	4
.LC5:
	.string	"r == 0"
	.section	.text.set_bank,"ax",@progbits
	.literal_position
	.literal .LC6, .LC5
	.literal .LC7, __func__$5261
	.literal .LC8, .LC3
	.align	4
	.type	set_bank, @function
set_bank:
.LFB30:
	.loc 1 112 0
.LVL9:
	entry	sp, 32
.LCFI1:
	.loc 1 114 0
	addmi	a2, a2, 0x7f00
.LVL10:
	slli	a2, a2, 15
.LVL11:
	slli	a3, a3, 15
.LVL12:
	mov.n	a15, a4
	movi.n	a14, 0x20
	mov.n	a13, a3
	mov.n	a12, a2
	movi.n	a11, 0
	mov.n	a10, a11
	call8	cache_sram_mmu_set
.LVL13:
	.loc 1 115 0
	beqz.n	a10, .L8
	.loc 1 115 0 is_stmt 0 discriminator 1
	l32r	a13, .LC6
	l32r	a12, .LC7
	movi	a11, 0x73
	l32r	a10, .LC8
.LVL14:
	call8	__assert_func
.LVL15:
.L8:
	.loc 1 116 0 is_stmt 1
	mov.n	a15, a4
	movi.n	a14, 0x20
	mov.n	a13, a3
	mov.n	a12, a2
	movi.n	a11, 0
	movi.n	a10, 1
.LVL16:
	call8	cache_sram_mmu_set
.LVL17:
	.loc 1 117 0
	beqz.n	a10, .L7
	.loc 1 117 0 is_stmt 0 discriminator 1
	l32r	a13, .LC6
	l32r	a12, .LC7
	movi	a11, 0x75
	l32r	a10, .LC8
.LVL18:
	call8	__assert_func
.LVL19:
.L7:
	retw.n
.LFE30:
	.size	set_bank, .-set_bank
	.section	.text.esp_himem_get_phys_size,"ax",@progbits
	.literal_position
	.literal .LC9, -4194304
	.align	4
	.global	esp_himem_get_phys_size
	.type	esp_himem_get_phys_size, @function
esp_himem_get_phys_size:
.LFB31:
	.loc 1 121 0 is_stmt 1
	entry	sp, 32
.LCFI2:
.LVL20:
	.loc 1 123 0
	call8	esp_spiram_get_size
.LVL21:
	.loc 1 124 0
	l32r	a2, .LC9
	add.n	a2, a10, a2
	retw.n
.LFE31:
	.size	esp_himem_get_phys_size, .-esp_himem_get_phys_size
	.section	.text.esp_himem_get_free_size,"ax",@progbits
	.align	4
	.global	esp_himem_get_free_size
	.type	esp_himem_get_free_size, @function
esp_himem_get_free_size:
.LFB32:
	.loc 1 127 0
	entry	sp, 32
.LCFI3:
.LVL22:
	.loc 1 133 0
	movi.n	a2, 0
	retw.n
.LFE32:
	.size	esp_himem_get_free_size, .-esp_himem_get_free_size
	.section	.text.esp_himem_reserved_area_size,"ax",@progbits
	.align	4
	.global	esp_himem_reserved_area_size
	.type	esp_himem_reserved_area_size, @function
esp_himem_reserved_area_size:
.LFB33:
	.loc 1 135 0
	entry	sp, 32
.LCFI4:
	.loc 1 137 0
	movi.n	a2, 0
	retw.n
.LFE33:
	.size	esp_himem_reserved_area_size, .-esp_himem_reserved_area_size
	.section	.text.esp_himem_init,"ax",@progbits
	.align	4
	.global	esp_himem_init
	.type	esp_himem_init, @function
esp_himem_init:
.LFB34:
	.loc 1 141 0
	entry	sp, 32
.LCFI5:
	retw.n
.LFE34:
	.size	esp_himem_init, .-esp_himem_init
	.section	.text.esp_himem_alloc,"ax",@progbits
	.literal_position
	.literal .LC10, spinlock
	.align	4
	.global	esp_himem_alloc
	.type	esp_himem_alloc, @function
esp_himem_alloc:
.LFB36:
	.loc 1 195 0
.LVL23:
	.loc 1 195 0
	entry	sp, 32
.LCFI6:
	.loc 1 196 0
	extui	a8, a2, 0, 15
	bnez.n	a8, .L18
	.loc 1 199 0
	srli	a2, a2, 15
.LVL24:
	.loc 1 200 0
	movi.n	a11, 1
	movi.n	a10, 8
	call8	calloc
.LVL25:
	mov.n	a4, a10
.LVL26:
	.loc 1 201 0
	beqz.n	a10, .L16
	.loc 1 204 0
	mov.n	a11, a2
	movi.n	a10, 2
	call8	calloc
.LVL27:
	s32i.n	a10, a4, 4
	.loc 1 205 0
	beqz.n	a10, .L16
	.loc 1 208 0
	l32r	a5, .LC10
	mov.n	a10, a5
	call8	vTaskEnterCritical
.LVL28:
	.loc 1 209 0
	l32i.n	a11, a4, 4
	mov.n	a10, a2
	call8	allocate_blocks
.LVL29:
	mov.n	a6, a10
.LVL30:
	.loc 1 210 0
	mov.n	a10, a5
	call8	vTaskExitCritical
.LVL31:
	.loc 1 211 0
	beqz.n	a6, .L16
	.loc 1 214 0
	s32i.n	a2, a4, 0
	.loc 1 215 0
	s32i.n	a4, a3, 0
	.loc 1 216 0
	movi.n	a2, 0
.LVL32:
	retw.n
.LVL33:
.L16:
	.loc 1 218 0
	beqz.n	a4, .L17
	.loc 1 219 0
	l32i.n	a10, a4, 4
	call8	free
.LVL34:
.L17:
	.loc 1 221 0
	mov.n	a10, a4
	call8	free
.LVL35:
	.loc 1 222 0
	movi	a2, 0x101
.LVL36:
	retw.n
.LVL37:
.L18:
	.loc 1 197 0
	movi	a2, 0x104
.LVL38:
	.loc 1 223 0
	retw.n
.LFE36:
	.size	esp_himem_alloc, .-esp_himem_alloc
	.section	.rodata.str1.4
	.align	4
.LC11:
	.string	"ramblock_idx_valid(handle->block[i])"
	.align	4
.LC16:
	.string	"esp_himem"
	.align	4
.LC18:
	.string	"\033[0;31mE (%d) %s: %s: %s\033[0m\n"
	.align	4
.LC20:
	.string	"block in range still mapped"
	.section	.text.esp_himem_free,"ax",@progbits
	.literal_position
	.literal .LC12, .LC11
	.literal .LC13, __func__$5306
	.literal .LC14, .LC3
	.literal .LC22, spinlock
	.align	4
	.global	esp_himem_free
	.type	esp_himem_free, @function
esp_himem_free:
.LFB37:
	.loc 1 226 0
.LVL39:
	entry	sp, 48
.LCFI7:
.LVL40:
.LBB21:
	.loc 1 228 0
	l32i.n	a8, a2, 0
	movi.n	a9, 0
	bge	a9, a8, .L30
	.loc 1 229 0 discriminator 1
	l32r	a13, .LC12
	l32r	a12, .LC13
	movi	a11, 0xe5
	l32r	a10, .LC14
	call8	__assert_func
.LVL41:
.L30:
.LBE21:
	.loc 1 233 0
	l32r	a10, .LC22
	call8	vTaskEnterCritical
.LVL42:
.LBB22:
	.loc 1 234 0
	movi.n	a9, 0
	j	.L26
.LVL43:
.L27:
	.loc 1 235 0 discriminator 3
	l32i.n	a8, a2, 4
	addx2	a8, a9, a8
	l16ui	a8, a8, 0
	slli	a8, a8, 2
	l8ui	a11, a8, 0
	movi.n	a10, -2
	and	a10, a11, a10
	s8i	a10, a8, 0
	.loc 1 234 0 discriminator 3
	addi.n	a9, a9, 1
.LVL44:
.L26:
	.loc 1 234 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 0
	blt	a9, a8, .L27
.LBE22:
	.loc 1 237 0 is_stmt 1
	l32r	a10, .LC22
	call8	vTaskExitCritical
.LVL45:
	.loc 1 240 0
	l32i.n	a10, a2, 4
	call8	free
.LVL46:
	.loc 1 241 0
	mov.n	a10, a2
	call8	free
.LVL47:
	.loc 1 243 0
	movi.n	a2, 0
.LVL48:
	retw.n
.LFE37:
	.size	esp_himem_free, .-esp_himem_free
	.section	.rodata.str1.4
	.align	4
.LC26:
	.string	"Himem not available!"
	.section	.text.esp_himem_alloc_map_range,"ax",@progbits
	.literal_position
	.literal .LC23, __FUNCTION__$5319
	.literal .LC24, .LC16
	.literal .LC25, .LC18
	.literal .LC27, .LC26
	.align	4
	.global	esp_himem_alloc_map_range
	.type	esp_himem_alloc_map_range, @function
esp_himem_alloc_map_range:
.LFB38:
	.loc 1 247 0
.LVL49:
	entry	sp, 48
.LCFI8:
	.loc 1 248 0
	call8	esp_log_timestamp
.LVL50:
	l32r	a11, .LC24
	l32r	a8, .LC27
	s32i.n	a8, sp, 0
	l32r	a15, .LC23
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC25
	movi.n	a10, 1
	call8	esp_log_write
.LVL51:
	.loc 1 283 0
	movi	a2, 0x103
.LVL52:
	retw.n
.LFE38:
	.size	esp_himem_alloc_map_range, .-esp_himem_alloc_map_range
	.section	.rodata.str1.4
	.align	4
.LC28:
	.string	"rangeblock_idx_valid(handle->block_start + i)"
	.section	.text.esp_himem_free_map_range,"ax",@progbits
	.literal_position
	.literal .LC29, .LC28
	.literal .LC30, __func__$5335
	.literal .LC31, .LC3
	.literal .LC32, spinlock
	.align	4
	.global	esp_himem_free_map_range
	.type	esp_himem_free_map_range, @function
esp_himem_free_map_range:
.LFB39:
	.loc 1 286 0
.LVL53:
	entry	sp, 32
.LCFI9:
.LVL54:
.LBB23:
	.loc 1 288 0
	l32i.n	a8, a2, 0
	blti	a8, 1, .L33
.LVL55:
	.loc 1 289 0
	l32r	a13, .LC29
	l32r	a12, .LC30
	movi	a11, 0x121
	l32r	a10, .LC31
	call8	__assert_func
.LVL56:
.L33:
.LBE23:
	.loc 1 294 0
	l32r	a10, .LC32
	call8	vTaskEnterCritical
.LVL57:
.LBB24:
	.loc 1 295 0
	movi.n	a9, 0
	j	.L34
.LVL58:
.L35:
	.loc 1 296 0 discriminator 3
	l32i.n	a8, a2, 4
	add.n	a8, a9, a8
	slli	a8, a8, 2
	l32i.n	a11, a8, 0
	movi.n	a10, -2
	and	a10, a11, a10
	s32i.n	a10, a8, 0
	.loc 1 295 0 discriminator 3
	addi.n	a9, a9, 1
.LVL59:
.L34:
	.loc 1 295 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 0
	blt	a9, a8, .L35
.LBE24:
	.loc 1 298 0 is_stmt 1
	l32r	a10, .LC32
	call8	vTaskExitCritical
.LVL60:
	.loc 1 299 0
	mov.n	a10, a2
	call8	free
.LVL61:
	.loc 1 301 0
	movi.n	a2, 0
.LVL62:
	retw.n
.LFE39:
	.size	esp_himem_free_map_range, .-esp_himem_free_map_range
	.section	.text.esp_himem_map,"ax",@progbits
	.literal_position
	.literal .LC33, __FUNCTION__$5356
	.literal .LC34, .LC16
	.literal .LC35, .LC18
	.literal .LC36, .LC26
	.align	4
	.global	esp_himem_map
	.type	esp_himem_map, @function
esp_himem_map:
.LFB40:
	.loc 1 305 0
.LVL63:
	entry	sp, 48
.LCFI10:
.LVL64:
	.loc 1 309 0
	call8	esp_log_timestamp
.LVL65:
	l32r	a11, .LC34
	l32r	a8, .LC36
	s32i.n	a8, sp, 0
	l32r	a15, .LC33
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC35
	movi.n	a10, 1
	call8	esp_log_write
.LVL66:
	.loc 1 340 0
	movi	a2, 0x103
.LVL67:
	retw.n
.LFE40:
	.size	esp_himem_map, .-esp_himem_map
	.section	.rodata.str1.4
	.align	4
.LC42:
	.string	"range offset not block-aligned"
	.align	4
.LC44:
	.string	"map length not block-aligned"
	.align	4
.LC46:
	.string	"range out of bounds for handle"
	.align	4
.LC49:
	.string	"ramblock_idx_valid(ramblock)"
	.section	.text.esp_himem_unmap,"ax",@progbits
	.literal_position
	.literal .LC37, -1069547520
	.literal .LC38, 32767
	.literal .LC39, __FUNCTION__$5378
	.literal .LC40, .LC16
	.literal .LC41, .LC18
	.literal .LC43, .LC42
	.literal .LC45, .LC44
	.literal .LC47, .LC46
	.literal .LC48, spinlock
	.literal .LC50, .LC49
	.literal .LC51, __func__$5381
	.literal .LC52, .LC3
	.align	4
	.global	esp_himem_unmap
	.type	esp_himem_unmap, @function
esp_himem_unmap:
.LFB41:
	.loc 1 343 0
.LVL68:
	entry	sp, 48
.LCFI11:
	.loc 1 347 0
	l32r	a8, .LC37
	add.n	a3, a3, a8
.LVL69:
	.loc 1 348 0
	l32r	a8, .LC38
	add.n	a8, a3, a8
	movgez	a8, a3, a3
	srai	a8, a8, 15
	l32i.n	a5, a2, 4
	sub	a8, a8, a5
.LVL70:
	.loc 1 349 0
	srli	a5, a4, 15
.LVL71:
	.loc 1 350 0
	extui	a3, a3, 0, 15
.LVL72:
	beqz.n	a3, .L38
	.loc 1 350 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL73:
	l32r	a11, .LC40
	l32r	a2, .LC43
.LVL74:
	s32i.n	a2, sp, 0
	l32r	a15, .LC39
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC41
	movi.n	a10, 1
	call8	esp_log_write
.LVL75:
	movi	a2, 0x102
	retw.n
.LVL76:
.L38:
	.loc 1 351 0 is_stmt 1
	extui	a4, a4, 0, 15
.LVL77:
	beqz.n	a4, .L40
	.loc 1 351 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL78:
	l32r	a11, .LC40
	l32r	a2, .LC45
.LVL79:
	s32i.n	a2, sp, 0
	l32r	a15, .LC39
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC41
	movi.n	a10, 1
	call8	esp_log_write
.LVL80:
	movi	a2, 0x102
	retw.n
.LVL81:
.L40:
	.loc 1 352 0 is_stmt 1
	add.n	a8, a8, a5
.LVL82:
	l32i.n	a2, a2, 0
.LVL83:
	bge	a2, a8, .L41
	.loc 1 352 0 is_stmt 0 discriminator 4
	call8	esp_log_timestamp
.LVL84:
	l32r	a11, .LC40
	l32r	a2, .LC47
	s32i.n	a2, sp, 0
	l32r	a15, .LC39
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC41
	movi.n	a10, 1
	call8	esp_log_write
.LVL85:
	movi	a2, 0x102
	retw.n
.LVL86:
.L41:
	.loc 1 354 0 is_stmt 1
	l32r	a10, .LC48
	call8	vTaskEnterCritical
.LVL87:
.LBB25:
	.loc 1 355 0
	movi.n	a2, 0
.LVL88:
	bge	a2, a5, .L48
.LBB26:
	.loc 1 357 0 discriminator 1
	l32r	a13, .LC50
	l32r	a12, .LC51
	movi	a11, 0x165
	l32r	a10, .LC52
	call8	__assert_func
.LVL89:
.L48:
.LBE26:
.LBE25:
	.loc 1 361 0
	call8	esp_spiram_writeback_cache
.LVL90:
	.loc 1 362 0
	l32r	a10, .LC48
	call8	vTaskExitCritical
.LVL91:
	.loc 1 363 0
	movi.n	a2, 0
	.loc 1 364 0
	retw.n
.LFE41:
	.size	esp_himem_unmap, .-esp_himem_unmap
	.section	.rodata.__func__$5381,"a",@progbits
	.align	4
	.type	__func__$5381, @object
	.size	__func__$5381, 16
__func__$5381:
	.string	"esp_himem_unmap"
	.section	.rodata.__FUNCTION__$5378,"a",@progbits
	.align	4
	.type	__FUNCTION__$5378, @object
	.size	__FUNCTION__$5378, 16
__FUNCTION__$5378:
	.string	"esp_himem_unmap"
	.section	.rodata.__func__$5261,"a",@progbits
	.align	4
	.type	__func__$5261, @object
	.size	__func__$5261, 9
__func__$5261:
	.string	"set_bank"
	.section	.rodata.__FUNCTION__$5356,"a",@progbits
	.align	4
	.type	__FUNCTION__$5356, @object
	.size	__FUNCTION__$5356, 14
__FUNCTION__$5356:
	.string	"esp_himem_map"
	.section	.rodata.__func__$5335,"a",@progbits
	.align	4
	.type	__func__$5335, @object
	.size	__func__$5335, 25
__func__$5335:
	.string	"esp_himem_free_map_range"
	.section	.rodata.__FUNCTION__$5319,"a",@progbits
	.align	4
	.type	__FUNCTION__$5319, @object
	.size	__FUNCTION__$5319, 26
__FUNCTION__$5319:
	.string	"esp_himem_alloc_map_range"
	.section	.rodata.__FUNCTION__$5307,"a",@progbits
	.align	4
	.type	__FUNCTION__$5307, @object
	.size	__FUNCTION__$5307, 15
__FUNCTION__$5307:
	.string	"esp_himem_free"
	.section	.rodata.__func__$5306,"a",@progbits
	.align	4
	.type	__func__$5306, @object
	.size	__func__$5306, 15
__func__$5306:
	.string	"esp_himem_free"
	.section	.rodata.__func__$5290,"a",@progbits
	.align	4
	.type	__func__$5290, @object
	.size	__func__$5290, 16
__func__$5290:
	.string	"allocate_blocks"
	.section	.data.spinlock,"aw",@progbits
	.align	4
	.type	spinlock, @object
	.size	spinlock, 8
spinlock:
	.word	-1287651329
	.word	0
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
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI0-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI1-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI2-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI3-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI4-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI5-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI6-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI7-.LFB37
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI8-.LFB38
	.byte	0xe
	.uleb128 0x30
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
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI10-.LFB40
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE22:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_himem.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/cache.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_spiram.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xcb6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xc
	.4byte	.LASF90
	.4byte	.LASF91
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x16
	.4byte	0x3e
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x18
	.4byte	0xb2
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.uleb128 0x6
	.byte	0x8
	.byte	0x6
	.byte	0x82
	.4byte	0xfb
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x6
	.byte	0x8a
	.4byte	0xbd
	.byte	0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x6
	.byte	0x8f
	.4byte	0xbd
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x94
	.4byte	0xda
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa7
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x7
	.byte	0x18
	.4byte	0x117
	.uleb128 0x8
	.byte	0x4
	.4byte	0x11d
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x8
	.byte	0x1
	.byte	0x5e
	.4byte	0x142
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x1
	.byte	0x5f
	.4byte	0x25
	.byte	0
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x1
	.byte	0x60
	.4byte	0x106
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x7
	.byte	0x19
	.4byte	0x14d
	.uleb128 0x8
	.byte	0x4
	.4byte	0x153
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x8
	.byte	0x1
	.byte	0x58
	.4byte	0x178
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x1
	.byte	0x59
	.4byte	0x25
	.byte	0
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x1
	.byte	0x5a
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x37
	.byte	0xc
	.byte	0x1f
	.4byte	0x1a9
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x1
	.byte	0x46
	.4byte	0x1d0
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x1
	.byte	0x47
	.4byte	0x37
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x1
	.byte	0x48
	.4byte	0x37
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x1
	.byte	0x49
	.4byte	0x1a9
	.uleb128 0x6
	.byte	0x4
	.byte	0x1
	.byte	0x4c
	.4byte	0x211
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x1
	.byte	0x4d
	.4byte	0x37
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x1
	.byte	0x4e
	.4byte	0x37
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x1
	.byte	0x4f
	.4byte	0x37
	.byte	0x4
	.byte	0x10
	.byte	0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x1
	.byte	0x50
	.4byte	0x1db
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x1
	.byte	0x5b
	.4byte	0x153
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x1
	.byte	0x61
	.4byte	0x11d
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x1
	.byte	0x65
	.4byte	0x25
	.byte	0x3
	.4byte	0x24e
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x1
	.byte	0x65
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0x6a
	.4byte	0x25
	.byte	0x3
	.4byte	0x26a
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x1
	.byte	0x6a
	.4byte	0x25
	.byte	0
	.uleb128 0xf
	.4byte	.LASF92
	.byte	0x1
	.byte	0xab
	.4byte	0xd3
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f7
	.uleb128 0x10
	.4byte	.LASF21
	.byte	0x1
	.byte	0xab
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x1
	.byte	0xab
	.4byte	0x106
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.byte	0xad
	.4byte	0x25
	.byte	0
	.uleb128 0x13
	.4byte	.LASF48
	.4byte	0x307
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5290
	.uleb128 0x14
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0xb6
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	.LVL4
	.4byte	0xc4b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xb8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5290
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0xa0
	.4byte	0x307
	.uleb128 0x19
	.4byte	0x90
	.byte	0xf
	.byte	0
	.uleb128 0x1a
	.4byte	0x2f7
	.uleb128 0x1b
	.4byte	.LASF93
	.byte	0x1
	.byte	0x6f
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x422
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x1
	.byte	0x6f
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x1
	.byte	0x6f
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x1c
	.string	"ct"
	.byte	0x1
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.byte	0x71
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x13
	.4byte	.LASF48
	.4byte	0x432
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5261
	.uleb128 0x1d
	.4byte	.LVL13
	.4byte	0xc56
	.4byte	0x397
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL15
	.4byte	0xc4b
	.4byte	0x3c6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x73
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5261
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL17
	.4byte	0xc56
	.4byte	0x3f6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL19
	.4byte	0xc4b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x75
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5261
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0xa0
	.4byte	0x432
	.uleb128 0x19
	.4byte	0x90
	.byte	0x8
	.byte	0
	.uleb128 0x1a
	.4byte	0x422
	.uleb128 0x1e
	.4byte	.LASF50
	.byte	0x1
	.byte	0x78
	.4byte	0x2c
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x469
	.uleb128 0x1f
	.4byte	.LASF49
	.byte	0x1
	.byte	0x7a
	.4byte	0x25
	.4byte	0x400000
	.uleb128 0x20
	.4byte	.LVL21
	.4byte	0xc61
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF51
	.byte	0x1
	.byte	0x7e
	.4byte	0x2c
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48f
	.uleb128 0x12
	.string	"ret"
	.byte	0x1
	.byte	0x80
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF94
	.byte	0x1
	.byte	0x87
	.4byte	0x2c
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.4byte	.LASF95
	.byte	0x1
	.byte	0x8c
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e4
	.uleb128 0x23
	.4byte	.LASF52
	.byte	0x1
	.byte	0x8f
	.4byte	0x25
	.uleb128 0x24
	.4byte	.LASF60
	.4byte	0x4f4
	.uleb128 0x23
	.4byte	.LASF49
	.byte	0x1
	.byte	0x98
	.4byte	0x25
	.uleb128 0x23
	.4byte	.LASF53
	.byte	0x1
	.byte	0x99
	.4byte	0x25
	.byte	0
	.uleb128 0x18
	.4byte	0xa0
	.4byte	0x4f4
	.uleb128 0x19
	.4byte	0x90
	.byte	0xe
	.byte	0
	.uleb128 0x1a
	.4byte	0x4e4
	.uleb128 0x25
	.4byte	.LASF57
	.byte	0x1
	.byte	0xc2
	.4byte	0xc8
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ea
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x1
	.byte	0xc2
	.4byte	0x2c
	.4byte	.LLST5
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0x1
	.byte	0xc2
	.4byte	0x5ea
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LASF56
	.byte	0x1
	.byte	0xc7
	.4byte	0x25
	.4byte	.LLST6
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.byte	0xc8
	.4byte	0x5f0
	.4byte	.LLST7
	.uleb128 0x27
	.4byte	.LASF96
	.byte	0x1
	.byte	0xd9
	.4byte	.L16
	.uleb128 0x15
	.string	"ok"
	.byte	0x1
	.byte	0xd1
	.4byte	0x25
	.4byte	.LLST8
	.uleb128 0x1d
	.4byte	.LVL25
	.4byte	0xc6c
	.4byte	0x57b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL27
	.4byte	0xc6c
	.4byte	0x594
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL28
	.4byte	0xc77
	.4byte	0x5a8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL29
	.4byte	0x26a
	.4byte	0x5bc
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL31
	.4byte	0xc82
	.4byte	0x5d0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL34
	.4byte	0xc8d
	.uleb128 0x16
	.4byte	.LVL35
	.4byte	0xc8d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x10c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x227
	.uleb128 0x25
	.4byte	.LASF58
	.byte	0x1
	.byte	0xe1
	.4byte	0xc8
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e2
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x1
	.byte	0xe1
	.4byte	0x10c
	.4byte	.LLST9
	.uleb128 0x13
	.4byte	.LASF48
	.4byte	0x6e2
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5306
	.uleb128 0x13
	.4byte	.LASF60
	.4byte	0x6e7
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5307
	.uleb128 0x28
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x67f
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xe4
	.4byte	0x25
	.byte	0
	.uleb128 0x16
	.4byte	.LVL41
	.4byte	0xc4b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe5
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5306
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0x69a
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0xea
	.4byte	0x25
	.4byte	.LLST10
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL42
	.4byte	0xc77
	.4byte	0x6b1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL45
	.4byte	0xc82
	.4byte	0x6c8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x20
	.4byte	.LVL46
	.4byte	0xc8d
	.uleb128 0x16
	.4byte	.LVL47
	.4byte	0xc8d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	0x4e4
	.uleb128 0x1a
	.4byte	0x4e4
	.uleb128 0x25
	.4byte	.LASF61
	.byte	0x1
	.byte	0xf6
	.4byte	0xc8
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x797
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x1
	.byte	0xf6
	.4byte	0x2c
	.4byte	.LLST11
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0x1
	.byte	0xf6
	.4byte	0x797
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF60
	.4byte	0x7ad
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5319
	.uleb128 0x23
	.4byte	.LASF56
	.byte	0x1
	.byte	0xfa
	.4byte	0x25
	.uleb128 0x29
	.string	"r"
	.byte	0x1
	.byte	0xfb
	.4byte	0x7b2
	.uleb128 0x2a
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x101
	.4byte	0x25
	.uleb128 0x20
	.4byte	.LVL50
	.4byte	0xc98
	.uleb128 0x16
	.4byte	.LVL51
	.4byte	0xca3
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
	.4byte	.LC16
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5319
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x142
	.uleb128 0x18
	.4byte	0xa0
	.4byte	0x7ad
	.uleb128 0x19
	.4byte	0x90
	.byte	0x19
	.byte	0
	.uleb128 0x1a
	.4byte	0x79d
	.uleb128 0x8
	.byte	0x4
	.4byte	0x21c
	.uleb128 0x2b
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x11d
	.4byte	0xc8
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x89a
	.uleb128 0x2c
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x11d
	.4byte	0x142
	.4byte	.LLST12
	.uleb128 0x13
	.4byte	.LASF48
	.4byte	0x8aa
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5335
	.uleb128 0x24
	.4byte	.LASF60
	.4byte	0x8af
	.uleb128 0x28
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.4byte	0x83f
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x120
	.4byte	0x25
	.byte	0
	.uleb128 0x16
	.4byte	.LVL56
	.4byte	0xc4b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x121
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5335
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x85b
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.2byte	0x127
	.4byte	0x25
	.4byte	.LLST13
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL57
	.4byte	0xc77
	.4byte	0x872
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL60
	.4byte	0xc82
	.4byte	0x889
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x16
	.4byte	.LVL61
	.4byte	0xc8d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0xa0
	.4byte	0x8aa
	.uleb128 0x19
	.4byte	0x90
	.byte	0x18
	.byte	0
	.uleb128 0x1a
	.4byte	0x89a
	.uleb128 0x1a
	.4byte	0x89a
	.uleb128 0x2b
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x130
	.4byte	0xc8
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9c8
	.uleb128 0x2c
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x130
	.4byte	0x10c
	.4byte	.LLST14
	.uleb128 0x2f
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x130
	.4byte	0x142
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x130
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2f
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x130
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x30
	.string	"len"
	.byte	0x1
	.2byte	0x130
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2f
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x130
	.4byte	0x25
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2f
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x130
	.4byte	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x132
	.4byte	0x25
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x3f
	.byte	0x25
	.byte	0x9f
	.uleb128 0x31
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x133
	.4byte	0x25
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x3f
	.byte	0x25
	.byte	0x9f
	.uleb128 0x31
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x134
	.4byte	0x25
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x3f
	.byte	0x25
	.byte	0x9f
	.uleb128 0x13
	.4byte	.LASF60
	.4byte	0x9de
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5356
	.uleb128 0x24
	.4byte	.LASF48
	.4byte	0x9e3
	.uleb128 0x20
	.4byte	.LVL65
	.4byte	0xc98
	.uleb128 0x16
	.4byte	.LVL66
	.4byte	0xca3
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
	.4byte	.LC16
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5356
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x97
	.uleb128 0x18
	.4byte	0xa0
	.4byte	0x9de
	.uleb128 0x19
	.4byte	0x90
	.byte	0xd
	.byte	0
	.uleb128 0x1a
	.4byte	0x9ce
	.uleb128 0x1a
	.4byte	0x9ce
	.uleb128 0x2b
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x156
	.4byte	0xc8
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbe5
	.uleb128 0x2c
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x156
	.4byte	0x142
	.4byte	.LLST15
	.uleb128 0x32
	.string	"ptr"
	.byte	0x1
	.2byte	0x156
	.4byte	0x97
	.4byte	.LLST16
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.2byte	0x156
	.4byte	0x2c
	.4byte	.LLST17
	.uleb128 0x33
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x15b
	.4byte	0x25
	.4byte	.LLST18
	.uleb128 0x33
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x15c
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x31
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x15d
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LASF60
	.4byte	0xbe5
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5378
	.uleb128 0x13
	.4byte	.LASF48
	.4byte	0xbea
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5381
	.uleb128 0x28
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0xadc
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.2byte	0x163
	.4byte	0x25
	.4byte	.LLST20
	.uleb128 0x34
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.uleb128 0x2a
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x164
	.4byte	0x25
	.uleb128 0x16
	.4byte	.LVL89
	.4byte	0xc4b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x165
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5381
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL73
	.4byte	0xc98
	.uleb128 0x1d
	.4byte	.LVL75
	.4byte	0xca3
	.4byte	0xb23
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
	.4byte	.LC16
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5378
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL78
	.4byte	0xc98
	.uleb128 0x1d
	.4byte	.LVL80
	.4byte	0xca3
	.4byte	0xb6a
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
	.4byte	.LC16
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5378
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL84
	.4byte	0xc98
	.uleb128 0x1d
	.4byte	.LVL85
	.4byte	0xca3
	.4byte	0xbb1
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
	.4byte	.LC16
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5378
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL87
	.4byte	0xc77
	.4byte	0xbc8
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x20
	.4byte	.LVL90
	.4byte	0xcae
	.uleb128 0x16
	.4byte	.LVL91
	.4byte	0xc82
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	0x2f7
	.uleb128 0x1a
	.4byte	0x2f7
	.uleb128 0x35
	.4byte	.LASF74
	.byte	0x1
	.byte	0x52
	.4byte	0xc01
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1d0
	.uleb128 0x1a
	.4byte	0xbfb
	.uleb128 0x35
	.4byte	.LASF75
	.byte	0x1
	.byte	0x53
	.4byte	0xc18
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x211
	.uleb128 0x1a
	.4byte	0xc12
	.uleb128 0x35
	.4byte	.LASF76
	.byte	0x1
	.byte	0x54
	.4byte	0xc29
	.byte	0
	.uleb128 0x1a
	.4byte	0x25
	.uleb128 0x35
	.4byte	.LASF77
	.byte	0x1
	.byte	0x55
	.4byte	0xc29
	.byte	0
	.uleb128 0x36
	.4byte	.LASF78
	.byte	0x1
	.byte	0x63
	.4byte	0xfb
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.uleb128 0x37
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x8
	.byte	0x29
	.uleb128 0x37
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x9
	.byte	0x70
	.uleb128 0x37
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0xa
	.byte	0x50
	.uleb128 0x37
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0xb
	.byte	0x57
	.uleb128 0x37
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x6
	.byte	0xda
	.uleb128 0x37
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x6
	.byte	0xd9
	.uleb128 0x37
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0xb
	.byte	0x5a
	.uleb128 0x37
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0xc
	.byte	0x57
	.uleb128 0x37
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0xc
	.byte	0x6b
	.uleb128 0x37
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0xa
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x6
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
	.uleb128 0x22
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
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x2a
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
	.uleb128 0x2d
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x5
	.byte	0x72
	.sleb128 -32512
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL24
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x3f
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x3f
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL26
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL39
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL53
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL63
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL68
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x7
	.byte	0x73
	.sleb128 1069547520
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL68
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL77
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL72
	.4byte	.LFE41
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x8
	.byte	0xff
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL70
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL76
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x27
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xc
	.4byte	0x3fbf8001
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x8
	.byte	0xff
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x8
	.byte	0xff
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x3f
	.byte	0x26
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL84-1
	.2byte	0x2a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xc
	.4byte	0x3fbf8001
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x8
	.byte	0xff
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x8
	.byte	0xff
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x3f
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL87-1
	.2byte	0x2a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0xc
	.4byte	0x3fbf8001
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x8
	.byte	0xff
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x8
	.byte	0xff
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x3f
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	0
	.4byte	0
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"block_start"
.LASF35:
	.string	"ESP_LOG_VERBOSE"
.LASF83:
	.string	"vTaskEnterCritical"
.LASF5:
	.string	"size_t"
.LASF36:
	.string	"is_alloced"
.LASF12:
	.string	"sizetype"
.LASF91:
	.string	"/home/raphael/rtone/lcd/build/esp32"
.LASF27:
	.string	"esp_himem_ramdata_t"
.LASF90:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/esp_himem.c"
.LASF37:
	.string	"is_mapped"
.LASF50:
	.string	"esp_himem_get_phys_size"
.LASF96:
	.string	"nomem"
.LASF6:
	.string	"__uint16_t"
.LASF33:
	.string	"ESP_LOG_INFO"
.LASF58:
	.string	"esp_himem_free"
.LASF57:
	.string	"esp_himem_alloc"
.LASF64:
	.string	"esp_himem_map"
.LASF59:
	.string	"handle"
.LASF22:
	.string	"portMUX_TYPE"
.LASF76:
	.string	"s_ramblockcnt"
.LASF74:
	.string	"s_ram_descriptor"
.LASF85:
	.string	"free"
.LASF41:
	.string	"ramblock_idx_valid"
.LASF4:
	.string	"short int"
.LASF28:
	.string	"esp_himem_rangedata_t"
.LASF9:
	.string	"long long int"
.LASF86:
	.string	"esp_log_timestamp"
.LASF40:
	.string	"rangeblock_t"
.LASF11:
	.string	"long int"
.LASF61:
	.string	"esp_himem_alloc_map_range"
.LASF39:
	.string	"ram_block"
.LASF94:
	.string	"esp_himem_reserved_area_size"
.LASF38:
	.string	"ramblock_t"
.LASF43:
	.string	"ramblock_idx"
.LASF84:
	.string	"vTaskExitCritical"
.LASF70:
	.string	"range_block"
.LASF3:
	.string	"unsigned char"
.LASF93:
	.string	"set_bank"
.LASF48:
	.string	"__func__"
.LASF20:
	.string	"owner"
.LASF49:
	.string	"paddr_start"
.LASF67:
	.string	"range_offset"
.LASF89:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF47:
	.string	"phys_bank"
.LASF2:
	.string	"signed char"
.LASF68:
	.string	"flags"
.LASF10:
	.string	"long long unsigned int"
.LASF24:
	.string	"block_ct"
.LASF17:
	.string	"uint32_t"
.LASF56:
	.string	"blocks"
.LASF0:
	.string	"unsigned int"
.LASF95:
	.string	"esp_himem_init"
.LASF15:
	.string	"uint16_t"
.LASF73:
	.string	"ramblock"
.LASF44:
	.string	"rangeblock_idx"
.LASF1:
	.string	"short unsigned int"
.LASF26:
	.string	"esp_himem_rangehandle_t"
.LASF14:
	.string	"char"
.LASF34:
	.string	"ESP_LOG_DEBUG"
.LASF16:
	.string	"int32_t"
.LASF30:
	.string	"ESP_LOG_NONE"
.LASF82:
	.string	"calloc"
.LASF42:
	.string	"rangeblock_idx_valid"
.LASF19:
	.string	"_Bool"
.LASF69:
	.string	"out_ptr"
.LASF77:
	.string	"s_rangeblockcnt"
.LASF75:
	.string	"s_range_descriptor"
.LASF32:
	.string	"ESP_LOG_WARN"
.LASF53:
	.string	"paddr_end"
.LASF92:
	.string	"allocate_blocks"
.LASF88:
	.string	"esp_spiram_writeback_cache"
.LASF13:
	.string	"long unsigned int"
.LASF46:
	.string	"virt_bank"
.LASF66:
	.string	"ram_offset"
.LASF80:
	.string	"cache_sram_mmu_set"
.LASF8:
	.string	"__uint32_t"
.LASF54:
	.string	"size"
.LASF21:
	.string	"count"
.LASF78:
	.string	"spinlock"
.LASF52:
	.string	"maxram"
.LASF7:
	.string	"__int32_t"
.LASF25:
	.string	"block"
.LASF65:
	.string	"range"
.LASF55:
	.string	"handle_out"
.LASF63:
	.string	"esp_himem_free_map_range"
.LASF71:
	.string	"blockcount"
.LASF62:
	.string	"start_free"
.LASF45:
	.string	"blocks_out"
.LASF81:
	.string	"esp_spiram_get_size"
.LASF72:
	.string	"esp_himem_unmap"
.LASF79:
	.string	"__assert_func"
.LASF87:
	.string	"esp_log_write"
.LASF60:
	.string	"__FUNCTION__"
.LASF31:
	.string	"ESP_LOG_ERROR"
.LASF18:
	.string	"esp_err_t"
.LASF51:
	.string	"esp_himem_get_free_size"
.LASF23:
	.string	"esp_himem_handle_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
