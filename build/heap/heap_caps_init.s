	.file	"heap_caps_init.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"heap_size <= HEAP_SIZE_MAX"
	.align	4
.LC4:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/heap/heap_caps_init.c"
	.section	.text.register_heap,"ax",@progbits
	.literal_position
	.literal .LC0, 4194304
	.literal .LC2, .LC1
	.literal .LC3, __func__$5306
	.literal .LC5, .LC4
	.align	4
	.type	register_heap, @function
register_heap:
.LFB21:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/heap/heap_caps_init.c"
	.loc 1 33 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 34 0
	l32i.n	a11, a2, 16
	l32i.n	a10, a2, 12
	sub	a11, a11, a10
.LVL1:
	.loc 1 35 0
	l32r	a8, .LC0
	bgeu	a8, a11, .L2
	.loc 1 35 0 is_stmt 0 discriminator 1
	l32r	a13, .LC2
	l32r	a12, .LC3
	movi.n	a11, 0x23
.LVL2:
	l32r	a10, .LC5
.LVL3:
	call8	__assert_func
.LVL4:
.L2:
	.loc 1 36 0 is_stmt 1
	call8	multi_heap_register
.LVL5:
	s32i.n	a10, a2, 28
	retw.n
.LFE21:
	.size	register_heap, .-register_heap
	.section	.text.heap_caps_enable_nonos_stack_heaps,"ax",@progbits
	.literal_position
	.literal .LC6, registered_heaps
	.align	4
	.global	heap_caps_enable_nonos_stack_heaps
	.type	heap_caps_enable_nonos_stack_heaps, @function
heap_caps_enable_nonos_stack_heaps:
.LFB22:
	.loc 1 43 0
	entry	sp, 32
.LCFI1:
	.loc 1 45 0
	l32r	a2, .LC6
	l32i.n	a2, a2, 0
.LVL6:
	j	.L4
.L6:
	.loc 1 48 0
	l32i.n	a8, a2, 28
	bnez.n	a8, .L5
	.loc 1 49 0
	mov.n	a10, a2
	call8	register_heap
.LVL7:
	.loc 1 50 0
	l32i.n	a10, a2, 28
	beqz.n	a10, .L5
	.loc 1 51 0
	addi	a11, a2, 20
	call8	multi_heap_set_lock
.LVL8:
.L5:
	.loc 1 45 0 discriminator 2
	l32i.n	a2, a2, 32
.LVL9:
.L4:
	.loc 1 45 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L6
	.loc 1 55 0 is_stmt 1
	retw.n
.LFE22:
	.size	heap_caps_enable_nonos_stack_heaps, .-heap_caps_enable_nonos_stack_heaps
	.section	.rodata.str1.4
	.align	4
.LC7:
	.string	"heap_init"
	.align	4
.LC9:
	.string	"\033[0;32mI (%d) %s: Initializing. RAM available for dynamic allocation:\033[0m\n"
	.align	4
.LC11:
	.string	"heap_idx <= num_heaps"
	.align	4
.LC16:
	.string	"\033[0;32mI (%d) %s: At %08X len %08X (%d KiB): %s\033[0m\n"
	.align	4
.LC18:
	.string	"heap_idx == num_heaps"
	.align	4
.LC21:
	.string	"SLIST_EMPTY(&registered_heaps)"
	.align	4
.LC24:
	.string	"heaps_array != NULL"
	.section	.text.heap_caps_init,"ax",@progbits
	.literal_position
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.literal .LC12, .LC11
	.literal .LC13, __func__$5335
	.literal .LC14, .LC4
	.literal .LC15, soc_memory_types
	.literal .LC17, .LC16
	.literal .LC19, .LC18
	.literal .LC20, registered_heaps
	.literal .LC22, .LC21
	.literal .LC23, 2052
	.literal .LC25, .LC24
	.align	4
	.global	heap_caps_init
	.type	heap_caps_init, @function
heap_caps_init:
.LFB23:
	.loc 1 61 0
	entry	sp, 96
	mov.n	a7, sp
.LCFI2:
	.loc 1 65 0
	call8	soc_get_available_memory_region_max_count
.LVL10:
	.loc 1 66 0
	slli	a10, a10, 4
.LVL11:
	addi	a2, a10, 18
	srli	a2, a2, 4
	slli	a2, a2, 4
	sub	a2, sp, a2
	movsp	sp, a2
	addi	a2, sp, 19
	srli	a2, a2, 2
	slli	a2, a2, 2
	s32i.n	a2, a7, 16
.LVL12:
	.loc 1 67 0
	mov.n	a10, a2
	call8	soc_get_available_memory_regions
.LVL13:
	s32i.n	a10, a7, 36
.LVL14:
.LBB2:
	.loc 1 71 0
	movi.n	a4, 1
	l32i.n	a5, a7, 16
	mov.n	a8, a10
	j	.L8
.LVL15:
.L10:
.LBB3:
	.loc 1 72 0
	addi.n	a3, a4, -1
.LVL16:
	.loc 1 74 0
	slli	a2, a4, 4
	add.n	a2, a5, a2
.LVL17:
	l32i.n	a6, a2, 0
	slli	a2, a3, 4
.LVL18:
	add.n	a2, a5, a2
.LVL19:
	l32i.n	a9, a2, 0
	l32i.n	a2, a2, 4
.LVL20:
	add.n	a2, a9, a2
	bne	a6, a2, .L9
	.loc 1 74 0 is_stmt 0 discriminator 1
	slli	a2, a4, 4
	add.n	a2, a5, a2
.LVL21:
	l32i.n	a6, a2, 8
	slli	a2, a3, 4
.LVL22:
	add.n	a2, a5, a2
.LVL23:
	l32i.n	a2, a2, 8
.LVL24:
	bne	a6, a2, .L9
	.loc 1 75 0 is_stmt 1
	slli	a3, a3, 4
.LVL25:
	add.n	a3, a5, a3
.LVL26:
	movi.n	a2, -1
	s32i.n	a2, a3, 8
	.loc 1 76 0
	l32i.n	a6, a3, 0
	slli	a2, a4, 4
	add.n	a2, a5, a2
.LVL27:
	s32i.n	a6, a2, 0
	.loc 1 77 0
	l32i.n	a3, a3, 4
.LVL28:
	l32i.n	a6, a2, 4
	add.n	a3, a6, a3
	s32i.n	a3, a2, 4
.LVL29:
.L9:
.LBE3:
	.loc 1 71 0 discriminator 2
	addi.n	a4, a4, 1
.LVL30:
.L8:
	.loc 1 71 0 is_stmt 0 discriminator 1
	bltu	a4, a8, .L10
	movi.n	a2, 0
	s32i.n	a2, a7, 40
	mov.n	a4, a2
.LVL31:
	l32i.n	a6, a7, 16
	l32i.n	a5, a7, 36
	j	.L11
.LVL32:
.L13:
.LBE2:
.LBB4:
	.loc 1 84 0 is_stmt 1
	slli	a3, a2, 4
	add.n	a3, a6, a3
	l32i.n	a3, a3, 8
	beqi	a3, -1, .L12
	.loc 1 85 0
	addi.n	a4, a4, 1
.LVL33:
.L12:
	.loc 1 83 0 discriminator 2
	addi.n	a2, a2, 1
.LVL34:
.L11:
	.loc 1 83 0 is_stmt 0 discriminator 1
	bltu	a2, a5, .L13
	s32i.n	a4, a7, 40
.LVL35:
.LBE4:
	.loc 1 93 0 is_stmt 1
	addx8	a2, a4, a4
.LVL36:
	slli	a2, a2, 2
	s32i.n	a2, a7, 44
	s32i.n	a2, a7, 52
	addi	a2, a2, 18
	srli	a2, a2, 4
	slli	a2, a2, 4
	sub	a2, sp, a2
	movsp	sp, a2
	addi	a2, sp, 19
	srli	a2, a2, 2
	slli	a2, a2, 2
	s32i.n	a2, a7, 48
.LVL37:
	.loc 1 96 0
	call8	esp_log_timestamp
.LVL38:
	l32r	a12, .LC8
	mov.n	a11, a10
	l32r	a10, .LC10
	call8	ets_printf
.LVL39:
.LBB5:
	.loc 1 97 0
	movi.n	a6, 0
.LBE5:
	.loc 1 94 0
	mov.n	a5, a6
	l32i.n	a4, a7, 48
.LVL40:
.LBB7:
	.loc 1 97 0
	j	.L14
.LVL41:
.L19:
.LBB6:
	.loc 1 99 0
	slli	a2, a6, 4
	l32i.n	a3, a7, 16
	add.n	a2, a3, a2
.LVL42:
	l32i.n	a2, a2, 8
.LVL43:
	.loc 1 100 0
	addx8	a8, a5, a5
	slli	a3, a8, 2
	add.n	a3, a4, a3
	s32i.n	a3, a7, 32
.LVL44:
	.loc 1 101 0
	beqi	a2, -1, .L15
	.loc 1 104 0
	addi.n	a3, a5, 1
.LVL45:
	s32i.n	a3, a7, 20
.LVL46:
	.loc 1 105 0
	l32i.n	a8, a7, 40
	bgeu	a8, a3, .L16
	.loc 1 105 0 is_stmt 0 discriminator 1
	l32r	a13, .LC12
	l32r	a12, .LC13
	movi	a11, 0x69
	l32r	a10, .LC14
	call8	__assert_func
.LVL47:
.L16:
	.loc 1 107 0 is_stmt 1
	slli	a3, a5, 3
.LVL48:
	s32i.n	a3, a7, 24
	add.n	a8, a3, a5
	slli	a3, a8, 2
	add.n	a3, a4, a3
	slli	a8, a2, 2
	add.n	a8, a8, a2
	slli	a9, a8, 2
	l32r	a8, .LC15
	add.n	a8, a9, a8
	s32i.n	a8, a7, 28
	movi.n	a12, 0xc
	addi.n	a11, a8, 4
	mov.n	a10, a3
	call8	memcpy
.LVL49:
	.loc 1 108 0
	slli	a8, a6, 4
	l32i.n	a9, a7, 16
	add.n	a8, a9, a8
	l32i.n	a9, a8, 0
	s32i.n	a9, a3, 12
	.loc 1 109 0
	l32i.n	a9, a8, 0
	l32i.n	a8, a8, 4
	add.n	a8, a9, a8
	s32i.n	a8, a3, 16
	.loc 1 110 0
	l32i.n	a8, a7, 24
	add.n	a3, a8, a5
	slli	a10, a3, 2
	addi	a10, a10, 16
	add.n	a10, a4, a10
	addi.n	a10, a10, 4
	call8	vPortCPUInitializeMutex
.LVL50:
	.loc 1 111 0
	l32i.n	a9, a7, 28
	l8ui	a3, a9, 17
	beqz.n	a3, .L17
	.loc 1 113 0
	addx8	a8, a5, a5
	slli	a3, a8, 2
	add.n	a3, a4, a3
	movi.n	a8, 0
	s32i.n	a8, a3, 28
	j	.L18
.L17:
	.loc 1 115 0
	l32i.n	a10, a7, 32
	call8	register_heap
.LVL51:
.L18:
	.loc 1 117 0
	addx8	a5, a5, a5
	slli	a3, a5, 2
	add.n	a3, a4, a3
	movi.n	a5, 0
	s32i.n	a5, a3, 32
	.loc 1 119 0
	call8	esp_log_timestamp
.LVL52:
	slli	a3, a6, 4
	l32i.n	a5, a7, 16
	add.n	a3, a5, a3
	l32i.n	a14, a3, 4
	addx4	a2, a2, a2
.LVL53:
	slli	a5, a2, 2
	l32r	a2, .LC15
	add.n	a5, a2, a5
	l32i.n	a2, a5, 0
	s32i.n	a2, sp, 0
.LVL54:
	srli	a15, a14, 10
	l32i.n	a13, a3, 0
	l32r	a12, .LC8
	mov.n	a11, a10
	l32r	a10, .LC17
	call8	ets_printf
.LVL55:
	.loc 1 104 0
	l32i.n	a5, a7, 20
.L15:
.LVL56:
.LBE6:
	.loc 1 97 0 discriminator 2
	addi.n	a6, a6, 1
.LVL57:
.L14:
	.loc 1 97 0 is_stmt 0 discriminator 1
	l32i.n	a2, a7, 36
	bltu	a6, a2, .L19
.LBE7:
	.loc 1 123 0 is_stmt 1
	l32i.n	a3, a7, 40
	beq	a3, a5, .L20
	.loc 1 123 0 is_stmt 0 discriminator 1
	l32r	a13, .LC19
	l32r	a12, .LC13
	movi	a11, 0x7b
	l32r	a10, .LC14
	call8	__assert_func
.LVL58:
.L20:
	.loc 1 128 0 is_stmt 1
	l32r	a2, .LC20
	l32i.n	a2, a2, 0
	.loc 1 128 0
	beqz.n	a2, .L31
	.loc 1 128 0 is_stmt 0 discriminator 1
	l32r	a13, .LC22
	l32r	a12, .LC13
	movi	a11, 0x80
	l32r	a10, .LC14
	call8	__assert_func
.LVL59:
.L24:
.LBB8:
	.loc 1 132 0 is_stmt 1
	addx8	a8, a2, a2
	slli	a10, a8, 2
	l32r	a11, .LC23
	add.n	a10, a4, a10
	call8	heap_caps_match
.LVL60:
	beqz.n	a10, .L22
	.loc 1 134 0
	addx8	a8, a2, a2
	slli	a3, a8, 2
.LVL61:
	add.n	a3, a4, a3
	mov.n	a11, a6
	l32i.n	a10, a3, 28
	call8	multi_heap_malloc
.LVL62:
	mov.n	a3, a10
.LVL63:
	.loc 1 135 0
	bnez.n	a10, .L23
.L22:
	.loc 1 131 0 discriminator 2
	addi.n	a2, a2, 1
.LVL64:
	j	.L21
.LVL65:
.L31:
.LBE8:
	movi.n	a2, 0
	mov.n	a3, a2
	l32i.n	a5, a7, 40
.LVL66:
	l32i.n	a6, a7, 52
.LVL67:
	l32i.n	a4, a7, 48
.L21:
.LVL68:
.LBB9:
	.loc 1 131 0 is_stmt 0 discriminator 1
	bltu	a2, a5, .L24
.L23:
.LBE9:
	.loc 1 140 0 is_stmt 1
	bnez.n	a3, .L25
	.loc 1 140 0 is_stmt 0 discriminator 1
	l32r	a13, .LC25
	l32r	a12, .LC13
	movi	a11, 0x8c
	l32r	a10, .LC14
	call8	__assert_func
.LVL69:
.L25:
	.loc 1 142 0 is_stmt 1
	l32i.n	a12, a7, 44
	l32i.n	a11, a7, 48
	mov.n	a10, a3
	call8	memcpy
.LVL70:
.LBB10:
	.loc 1 145 0
	movi.n	a4, 0
	l32i.n	a6, a7, 40
	j	.L26
.LVL71:
.L30:
	.loc 1 146 0
	addx8	a5, a4, a4
	slli	a2, a5, 2
	add.n	a5, a3, a2
	l32i.n	a10, a5, 28
	beqz.n	a10, .L27
	.loc 1 147 0
	addi	a11, a5, 20
	call8	multi_heap_set_lock
.LVL72:
.L27:
	.loc 1 149 0
	bnez.n	a4, .L28
	.loc 1 150 0
	l32r	a2, .LC20
	l32i.n	a5, a2, 0
	s32i.n	a5, a3, 32
	s32i.n	a3, a2, 0
	j	.L29
.L28:
	.loc 1 152 0
	addi	a2, a2, -36
	add.n	a2, a3, a2
	l32i.n	a8, a2, 32
	s32i.n	a8, a5, 32
	s32i.n	a5, a2, 32
.L29:
	.loc 1 145 0 discriminator 2
	addi.n	a4, a4, 1
.LVL73:
.L26:
	.loc 1 145 0 is_stmt 0 discriminator 1
	bltu	a4, a6, .L30
.LBE10:
	.loc 1 155 0 is_stmt 1
	retw.n
.LFE23:
	.size	heap_caps_init, .-heap_caps_init
	.section	.text.heap_caps_add_region_with_caps,"ax",@progbits
	.literal_position
	.literal .LC26, registered_heaps
	.literal .LC27, 2052
	.literal .LC28, registered_heaps_write_lock$5370
	.align	4
	.global	heap_caps_add_region_with_caps
	.type	heap_caps_add_region_with_caps, @function
heap_caps_add_region_with_caps:
.LFB25:
	.loc 1 176 0
.LVL74:
	entry	sp, 32
.LCFI3:
.LVL75:
	.loc 1 178 0
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a2
	.loc 1 178 0
	movnez	a8, a10, a3
	or	a8, a8, a9
	.loc 1 178 0
	bne	a8, a10, .L40
	.loc 1 178 0 discriminator 1
	movi.n	a8, 1
	mov.n	a9, a10
	moveqz	a9, a8, a4
	extui	a9, a9, 0, 8
	bge	a3, a4, .L34
	movi.n	a8, 0
.L34:
	extui	a8, a8, 0, 8
	bnez.n	a9, .L41
	bnez.n	a8, .L41
	.loc 1 204 0
	l32r	a5, .LC26
	l32i.n	a8, a5, 0
.LVL76:
	j	.L35
.L38:
	.loc 1 205 0
	l32i.n	a9, a8, 12
	blt	a9, a3, .L36
	.loc 1 205 0 is_stmt 0 discriminator 1
	blt	a9, a4, .L42
.L36:
	.loc 1 206 0 is_stmt 1
	l32i.n	a9, a8, 16
	bge	a3, a9, .L37
	.loc 1 206 0 is_stmt 0 discriminator 1
	blt	a9, a4, .L43
.L37:
	.loc 1 204 0 is_stmt 1 discriminator 2
	l32i.n	a8, a8, 32
.LVL77:
.L35:
	.loc 1 204 0 is_stmt 0 discriminator 1
	bnez.n	a8, .L38
	.loc 1 211 0 is_stmt 1
	l32r	a11, .LC27
	movi.n	a10, 0x24
	call8	heap_caps_malloc
.LVL78:
	mov.n	a5, a10
.LVL79:
	.loc 1 212 0
	beqz.n	a10, .L44
	.loc 1 216 0
	movi.n	a12, 0xc
	mov.n	a11, a2
	call8	memcpy
.LVL80:
	.loc 1 217 0
	s32i.n	a3, a5, 12
	.loc 1 218 0
	s32i.n	a4, a5, 16
	.loc 1 219 0
	addi	a2, a5, 20
.LVL81:
	mov.n	a10, a2
	call8	vPortCPUInitializeMutex
.LVL82:
	.loc 1 220 0
	sub	a11, a4, a3
	mov.n	a10, a3
	call8	multi_heap_register
.LVL83:
	s32i.n	a10, a5, 28
	.loc 1 221 0
	movi.n	a3, 0
.LVL84:
	s32i.n	a3, a5, 32
	.loc 1 222 0
	beq	a10, a3, .L45
	.loc 1 226 0
	mov.n	a11, a2
	call8	multi_heap_set_lock
.LVL85:
	.loc 1 232 0
	l32r	a2, .LC28
	mov.n	a10, a2
	call8	_lock_acquire
.LVL86:
	.loc 1 233 0
	l32r	a3, .LC26
	l32i.n	a4, a3, 0
.LVL87:
	s32i.n	a4, a5, 32
	s32i.n	a5, a3, 0
	.loc 1 234 0
	mov.n	a10, a2
	call8	_lock_release
.LVL88:
	.loc 1 236 0
	movi.n	a2, 0
	j	.L39
.LVL89:
.L44:
	.loc 1 213 0
	movi	a2, 0x101
.LVL90:
	j	.L39
.LVL91:
.L45:
	.loc 1 223 0
	movi	a2, 0x104
.LVL92:
.L39:
	.loc 1 239 0
	beqz.n	a2, .L33
	.loc 1 240 0
	mov.n	a10, a5
	call8	free
.LVL93:
	retw.n
.LVL94:
.L40:
	.loc 1 179 0
	movi	a2, 0x102
.LVL95:
	retw.n
.LVL96:
.L41:
	movi	a2, 0x102
.LVL97:
	retw.n
.LVL98:
.L42:
	.loc 1 207 0
	movi.n	a2, -1
.LVL99:
	retw.n
.LVL100:
.L43:
	movi.n	a2, -1
.LVL101:
.L33:
	.loc 1 243 0
	retw.n
.LFE25:
	.size	heap_caps_add_region_with_caps, .-heap_caps_add_region_with_caps
	.section	.text.heap_caps_add_region,"ax",@progbits
	.literal_position
	.literal .LC29, soc_memory_regions
	.literal .LC30, soc_memory_types
	.literal .LC31, soc_memory_region_count
	.align	4
	.global	heap_caps_add_region
	.type	heap_caps_add_region, @function
heap_caps_add_region:
.LFB24:
	.loc 1 158 0
.LVL102:
	entry	sp, 32
.LCFI4:
	.loc 1 159 0
	beqz.n	a2, .L52
	movi.n	a9, 0
	j	.L49
.LVL103:
.L51:
.LBB11:
.LBB12:
	.loc 1 166 0
	slli	a8, a9, 4
	l32r	a10, .LC29
	add.n	a8, a10, a8
.LVL104:
	l32i.n	a10, a8, 0
	blt	a2, a10, .L50
	.loc 1 166 0 is_stmt 0 discriminator 1
	slli	a8, a9, 4
.LVL105:
	l32r	a11, .LC29
	add.n	a8, a11, a8
.LVL106:
	l32i.n	a8, a8, 4
.LVL107:
	add.n	a10, a10, a8
	bgeu	a2, a10, .L50
.LBB13:
	.loc 1 167 0 is_stmt 1
	slli	a9, a9, 4
.LVL108:
	add.n	a9, a11, a9
.LVL109:
	l32i.n	a8, a9, 8
	addx4	a8, a8, a8
	slli	a10, a8, 2
	l32r	a8, .LC30
	add.n	a10, a10, a8
.LVL110:
	.loc 1 168 0
	mov.n	a12, a3
	mov.n	a11, a2
	addi.n	a10, a10, 4
.LVL111:
	call8	heap_caps_add_region_with_caps
.LVL112:
	mov.n	a2, a10
.LVL113:
	retw.n
.LVL114:
.L50:
.LBE13:
.LBE12:
	.loc 1 163 0 discriminator 2
	addi.n	a9, a9, 1
.LVL115:
.L49:
	.loc 1 163 0 is_stmt 0 discriminator 1
	l32r	a8, .LC31
	l32i.n	a8, a8, 0
	bltu	a9, a8, .L51
.LBE11:
	.loc 1 172 0 is_stmt 1
	movi	a2, 0x105
.LVL116:
.LBB14:
	retw.n
.LVL117:
.L52:
.LBE14:
	.loc 1 160 0
	movi	a2, 0x102
.LVL118:
	.loc 1 173 0
	retw.n
.LFE24:
	.size	heap_caps_add_region, .-heap_caps_add_region
	.section	.bss.registered_heaps_write_lock$5370,"aw",@nobits
	.align	4
	.type	registered_heaps_write_lock$5370, @object
	.size	registered_heaps_write_lock$5370, 4
registered_heaps_write_lock$5370:
	.zero	4
	.section	.rodata.__func__$5335,"a",@progbits
	.align	4
	.type	__func__$5335, @object
	.size	__func__$5335, 15
__func__$5335:
	.string	"heap_caps_init"
	.section	.rodata.__func__$5306,"a",@progbits
	.align	4
	.type	__func__$5306, @object
	.size	__func__$5306, 14
__func__$5306:
	.string	"register_heap"
	.comm	registered_heaps,4,4
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI0-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI1-.LFB22
	.byte	0xe
	.uleb128 0x20
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
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x60
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
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI4-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/lock.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/heap/include/multi_heap.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/soc_memory_layout.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/heap/heap_private.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/heap/include/esp_heap_caps.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa05
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xc
	.4byte	.LASF83
	.4byte	.LASF84
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
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
	.byte	0x3
	.byte	0x19
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
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
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x3
	.byte	0x31
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0xb
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
	.4byte	0xa9
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x5
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa9
	.4byte	0x7e
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x6
	.byte	0x18
	.4byte	0xbb
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x7
	.byte	0x1e
	.4byte	0xf2
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf8
	.uleb128 0x7
	.4byte	.LASF85
	.uleb128 0x8
	.byte	0x14
	.byte	0x8
	.byte	0x3b
	.4byte	0x136
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x8
	.byte	0x3c
	.4byte	0xb0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x8
	.byte	0x3d
	.4byte	0x136
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x8
	.byte	0x3e
	.4byte	0x146
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x8
	.byte	0x3f
	.4byte	0x146
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.4byte	0xc6
	.4byte	0x146
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF25
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x8
	.byte	0x40
	.4byte	0xfd
	.uleb128 0x8
	.byte	0x10
	.byte	0x8
	.byte	0x48
	.4byte	0x191
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x8
	.byte	0x4a
	.4byte	0xd1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x8
	.byte	0x4b
	.4byte	0x25
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x8
	.byte	0x4c
	.4byte	0x25
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x8
	.byte	0x4d
	.4byte	0xd1
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x8
	.byte	0x4e
	.4byte	0x158
	.uleb128 0x8
	.byte	0x8
	.byte	0x9
	.byte	0x82
	.4byte	0x1bd
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x9
	.byte	0x8a
	.4byte	0xc6
	.byte	0
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x9
	.byte	0x8f
	.4byte	0xc6
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x9
	.byte	0x94
	.4byte	0x19c
	.uleb128 0x8
	.byte	0x4
	.byte	0xa
	.byte	0x28
	.4byte	0x1dd
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0xa
	.byte	0x28
	.4byte	0x232
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x24
	.byte	0xa
	.byte	0x22
	.4byte	0x232
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0xa
	.byte	0x23
	.4byte	0x136
	.byte	0
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0xa
	.byte	0x24
	.4byte	0xd1
	.byte	0xc
	.uleb128 0xd
	.string	"end"
	.byte	0xa
	.byte	0x25
	.4byte	0xd1
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0xa
	.byte	0x26
	.4byte	0x1bd
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0xa
	.byte	0x27
	.4byte	0xe7
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0xa
	.byte	0x28
	.4byte	0x1c8
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1dd
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0xa
	.byte	0x29
	.4byte	0x1dd
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x4
	.byte	0xa
	.byte	0x31
	.4byte	0x25c
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0xa
	.byte	0x31
	.4byte	0x232
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x30
	.byte	0xc
	.byte	0x1f
	.4byte	0x28d
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.4byte	0xb0
	.uleb128 0x10
	.4byte	.LASF86
	.byte	0x1
	.byte	0x20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30b
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x1
	.byte	0x20
	.4byte	0x30b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x1
	.byte	0x22
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x13
	.4byte	.LASF57
	.4byte	0x321
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5306
	.uleb128 0x14
	.4byte	.LVL4
	.4byte	0x965
	.4byte	0x301
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5306
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x16
	.4byte	.LVL5
	.4byte	0x970
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x238
	.uleb128 0xa
	.4byte	0xa9
	.4byte	0x321
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.4byte	0x311
	.uleb128 0x17
	.4byte	.LASF50
	.byte	0x1
	.byte	0x2a
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x36d
	.uleb128 0x18
	.4byte	.LASF37
	.byte	0x1
	.byte	0x2c
	.4byte	0x30b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LVL7
	.4byte	0x292
	.4byte	0x35c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL8
	.4byte	0x97b
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 20
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF51
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b8
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0x1
	.byte	0x41
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x1a
	.4byte	0x6cb
	.4byte	.LLST2
	.uleb128 0x12
	.4byte	.LASF53
	.byte	0x1
	.byte	0x42
	.4byte	0x6b8
	.4byte	.LLST3
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0x1
	.byte	0x52
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x1a
	.4byte	0x6e3
	.4byte	.LLST5
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0x1
	.byte	0x5d
	.4byte	0x6d0
	.4byte	.LLST6
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x1
	.byte	0x5e
	.4byte	0x25
	.4byte	.LLST7
	.uleb128 0x13
	.4byte	.LASF57
	.4byte	0x6f8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5335
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x1
	.byte	0x82
	.4byte	0x30b
	.4byte	.LLST8
	.uleb128 0x1b
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x43c
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x47
	.4byte	0x3e
	.4byte	.LLST9
	.uleb128 0x1d
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x1c
	.string	"a"
	.byte	0x1
	.byte	0x48
	.4byte	0x6fd
	.4byte	.LLST10
	.uleb128 0x1c
	.string	"b"
	.byte	0x1
	.byte	0x49
	.4byte	0x6fd
	.4byte	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x457
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x53
	.4byte	0x3e
	.4byte	.LLST12
	.byte	0
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0
	.4byte	0x54f
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x61
	.4byte	0x3e
	.4byte	.LLST13
	.uleb128 0x1d
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x1
	.byte	0x62
	.4byte	0x6fd
	.4byte	.LLST14
	.uleb128 0x1f
	.4byte	.LASF29
	.byte	0x1
	.byte	0x63
	.4byte	0x703
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x64
	.4byte	0x30b
	.4byte	.LLST15
	.uleb128 0x14
	.4byte	.LVL47
	.4byte	0x965
	.4byte	0x4ce
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5335
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x14
	.4byte	.LVL49
	.4byte	0x986
	.4byte	0x4f1
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x14
	.4byte	.LVL50
	.4byte	0x98f
	.4byte	0x50c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x14
	.4byte	.LVL51
	.4byte	0x292
	.4byte	0x521
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.4byte	.LVL52
	.4byte	0x99a
	.uleb128 0x19
	.4byte	.LVL55
	.4byte	0x9a5
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x15
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x59b
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x83
	.4byte	0x3e
	.4byte	.LLST16
	.uleb128 0x14
	.4byte	.LVL60
	.4byte	0x9b0
	.4byte	0x58a
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xc
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x804
	.byte	0
	.uleb128 0x19
	.4byte	.LVL62
	.4byte	0x9bb
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x5c6
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x91
	.4byte	0x3e
	.4byte	.LLST17
	.uleb128 0x19
	.4byte	.LVL72
	.4byte	0x97b
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 20
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL10
	.4byte	0x9c6
	.uleb128 0x14
	.4byte	.LVL13
	.4byte	0x9d1
	.4byte	0x5e3
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL38
	.4byte	0x99a
	.uleb128 0x14
	.4byte	.LVL39
	.4byte	0x9a5
	.4byte	0x60c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x14
	.4byte	.LVL58
	.4byte	0x965
	.4byte	0x63b
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7b
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5335
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.uleb128 0x14
	.4byte	.LVL59
	.4byte	0x965
	.4byte	0x66a
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5335
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.uleb128 0x14
	.4byte	.LVL69
	.4byte	0x965
	.4byte	0x699
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x8c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5335
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.uleb128 0x19
	.4byte	.LVL70
	.4byte	0x986
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x191
	.4byte	0x6cb
	.uleb128 0x20
	.4byte	0x9b
	.4byte	0x391
	.byte	0
	.uleb128 0x6
	.4byte	0x9b
	.uleb128 0xa
	.4byte	0x238
	.4byte	0x6e3
	.uleb128 0x20
	.4byte	0x9b
	.4byte	0x3b8
	.byte	0
	.uleb128 0x6
	.4byte	0x9b
	.uleb128 0xa
	.4byte	0xa9
	.4byte	0x6f8
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.4byte	0x6e8
	.uleb128 0x5
	.byte	0x4
	.4byte	0x191
	.uleb128 0x5
	.byte	0x4
	.4byte	0x709
	.uleb128 0x6
	.4byte	0x14d
	.uleb128 0x21
	.4byte	.LASF62
	.byte	0x1
	.byte	0xaf
	.4byte	0xdc
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x855
	.uleb128 0x22
	.4byte	.LASF22
	.byte	0x1
	.byte	0xaf
	.4byte	0x855
	.4byte	.LLST18
	.uleb128 0x22
	.4byte	.LASF27
	.byte	0x1
	.byte	0xaf
	.4byte	0xd1
	.4byte	.LLST19
	.uleb128 0x23
	.string	"end"
	.byte	0x1
	.byte	0xaf
	.4byte	0xd1
	.4byte	.LLST20
	.uleb128 0x1c
	.string	"err"
	.byte	0x1
	.byte	0xb1
	.4byte	0xdc
	.4byte	.LLST21
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0xcb
	.4byte	0x30b
	.4byte	.LLST22
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0x1
	.byte	0xd3
	.4byte	0x30b
	.4byte	.LLST23
	.uleb128 0x24
	.4byte	.LASF87
	.byte	0x1
	.byte	0xee
	.4byte	.L39
	.uleb128 0x18
	.4byte	.LASF61
	.byte	0x1
	.byte	0xe7
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	registered_heaps_write_lock$5370
	.uleb128 0x14
	.4byte	.LVL78
	.4byte	0x9dc
	.4byte	0x7b8
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x804
	.byte	0
	.uleb128 0x14
	.4byte	.LVL80
	.4byte	0x986
	.4byte	0x7d7
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x14
	.4byte	.LVL82
	.4byte	0x98f
	.4byte	0x7eb
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL83
	.4byte	0x970
	.4byte	0x808
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0
	.uleb128 0x14
	.4byte	.LVL85
	.4byte	0x97b
	.4byte	0x81c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL86
	.4byte	0x9e7
	.4byte	0x830
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL88
	.4byte	0x9f2
	.4byte	0x844
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL93
	.4byte	0x9fd
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x85b
	.uleb128 0x6
	.4byte	0xc6
	.uleb128 0x21
	.4byte	.LASF63
	.byte	0x1
	.byte	0x9d
	.4byte	0xdc
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f1
	.uleb128 0x22
	.4byte	.LASF27
	.byte	0x1
	.byte	0x9d
	.4byte	0xd1
	.4byte	.LLST24
	.uleb128 0x25
	.string	"end"
	.byte	0x1
	.byte	0x9d
	.4byte	0xd1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0xa3
	.4byte	0x3e
	.4byte	.LLST25
	.uleb128 0x1d
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x1
	.byte	0xa4
	.4byte	0x8f1
	.4byte	.LLST26
	.uleb128 0x1d
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.byte	0xa7
	.4byte	0x855
	.4byte	.LLST27
	.uleb128 0x19
	.4byte	.LVL112
	.4byte	0x70e
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8f7
	.uleb128 0x6
	.4byte	0x191
	.uleb128 0x27
	.string	"TAG"
	.byte	0x1
	.byte	0x1b
	.4byte	0x28d
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC7
	.byte	0x9f
	.uleb128 0xa
	.4byte	0x14d
	.4byte	0x919
	.uleb128 0x28
	.byte	0
	.uleb128 0x29
	.4byte	.LASF64
	.byte	0x8
	.byte	0x43
	.4byte	0x924
	.uleb128 0x6
	.4byte	0x90e
	.uleb128 0xa
	.4byte	0x191
	.4byte	0x934
	.uleb128 0x28
	.byte	0
	.uleb128 0x29
	.4byte	.LASF65
	.byte	0x8
	.byte	0x50
	.4byte	0x93f
	.uleb128 0x6
	.4byte	0x929
	.uleb128 0x29
	.4byte	.LASF66
	.byte	0x8
	.byte	0x51
	.4byte	0x94f
	.uleb128 0x6
	.4byte	0x25
	.uleb128 0x2a
	.4byte	.LASF67
	.byte	0x1
	.byte	0x1e
	.4byte	0x243
	.uleb128 0x5
	.byte	0x3
	.4byte	registered_heaps
	.uleb128 0x2b
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0xb
	.byte	0x29
	.uleb128 0x2b
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x7
	.byte	0x57
	.uleb128 0x2b
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x7
	.byte	0x65
	.uleb128 0x2c
	.4byte	.LASF88
	.4byte	.LASF88
	.uleb128 0x2b
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x9
	.byte	0xcb
	.uleb128 0x2b
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0xc
	.byte	0x57
	.uleb128 0x2b
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0xd
	.byte	0xde
	.uleb128 0x2b
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0xa
	.byte	0x33
	.uleb128 0x2b
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x7
	.byte	0x29
	.uleb128 0x2b
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x8
	.byte	0x8c
	.uleb128 0x2b
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x8
	.byte	0x86
	.uleb128 0x2b
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0xe
	.byte	0x37
	.uleb128 0x2b
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x4
	.byte	0x20
	.uleb128 0x2b
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x4
	.byte	0x24
	.uleb128 0x2b
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0xf
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xd
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
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x21
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
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
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x7
	.byte	0x72
	.sleb128 16
	.byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x8
	.byte	0x72
	.sleb128 16
	.byte	0x6
	.byte	0x72
	.sleb128 12
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38-1
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL15
	.4byte	.LVL41
	.2byte	0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL32
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL35
	.4byte	.LVL40
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x6
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL41
	.4byte	.LFE23
	.2byte	0x6
	.byte	0x71
	.sleb128 19
	.byte	0x32
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL68
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x8
	.byte	0x74
	.sleb128 -1
	.byte	0x34
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x8
	.byte	0x74
	.sleb128 -1
	.byte	0x34
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL27
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0xa
	.byte	0x76
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL54
	.2byte	0xa
	.byte	0x76
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL59
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL74
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL90
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
	.4byte	.LVL100
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL74
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL84
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL101
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL74
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL101
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL75
	.4byte	.LVL88
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL92
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LVL101
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL76
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL98
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL79
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL102
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
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL103
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL114
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL109
	.4byte	.LVL112-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x3
	.byte	0x7a
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL112-1
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	0
	.4byte	0
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF78:
	.string	"heap_caps_malloc"
.LASF17:
	.string	"uint32_t"
.LASF61:
	.string	"registered_heaps_write_lock"
.LASF52:
	.string	"num_regions"
.LASF48:
	.string	"ESP_LOG_VERBOSE"
.LASF59:
	.string	"region"
.LASF38:
	.string	"next"
.LASF4:
	.string	"short int"
.LASF5:
	.string	"size_t"
.LASF13:
	.string	"sizetype"
.LASF67:
	.string	"registered_heaps"
.LASF76:
	.string	"soc_get_available_memory_region_max_count"
.LASF7:
	.string	"__uint32_t"
.LASF86:
	.string	"register_heap"
.LASF11:
	.string	"_lock_t"
.LASF88:
	.string	"memcpy"
.LASF35:
	.string	"sle_next"
.LASF69:
	.string	"multi_heap_register"
.LASF10:
	.string	"__intptr_t"
.LASF87:
	.string	"done"
.LASF80:
	.string	"_lock_release"
.LASF26:
	.string	"soc_memory_type_desc_t"
.LASF37:
	.string	"heap"
.LASF81:
	.string	"free"
.LASF62:
	.string	"heap_caps_add_region_with_caps"
.LASF79:
	.string	"_lock_acquire"
.LASF64:
	.string	"soc_memory_types"
.LASF18:
	.string	"intptr_t"
.LASF8:
	.string	"long long int"
.LASF84:
	.string	"/home/raphael/rtone/lcd/build/heap"
.LASF49:
	.string	"heap_size"
.LASF12:
	.string	"long int"
.LASF65:
	.string	"soc_memory_regions"
.LASF46:
	.string	"ESP_LOG_INFO"
.LASF74:
	.string	"heap_caps_match"
.LASF30:
	.string	"iram_address"
.LASF21:
	.string	"name"
.LASF22:
	.string	"caps"
.LASF3:
	.string	"unsigned char"
.LASF56:
	.string	"heap_idx"
.LASF53:
	.string	"regions"
.LASF57:
	.string	"__func__"
.LASF32:
	.string	"owner"
.LASF50:
	.string	"heap_caps_enable_nonos_stack_heaps"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF29:
	.string	"type"
.LASF54:
	.string	"num_heaps"
.LASF0:
	.string	"unsigned int"
.LASF41:
	.string	"registered_heap_ll"
.LASF66:
	.string	"soc_memory_region_count"
.LASF42:
	.string	"slh_first"
.LASF27:
	.string	"start"
.LASF1:
	.string	"short unsigned int"
.LASF73:
	.string	"ets_printf"
.LASF23:
	.string	"aliased_iram"
.LASF40:
	.string	"heap_t_"
.LASF15:
	.string	"char"
.LASF60:
	.string	"p_new"
.LASF47:
	.string	"ESP_LOG_DEBUG"
.LASF16:
	.string	"int32_t"
.LASF43:
	.string	"ESP_LOG_NONE"
.LASF25:
	.string	"_Bool"
.LASF70:
	.string	"multi_heap_set_lock"
.LASF71:
	.string	"vPortCPUInitializeMutex"
.LASF24:
	.string	"startup_stack"
.LASF75:
	.string	"multi_heap_malloc"
.LASF51:
	.string	"heap_caps_init"
.LASF83:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/heap/heap_caps_init.c"
.LASF20:
	.string	"multi_heap_handle_t"
.LASF63:
	.string	"heap_caps_add_region"
.LASF45:
	.string	"ESP_LOG_WARN"
.LASF14:
	.string	"long unsigned int"
.LASF31:
	.string	"soc_memory_region_t"
.LASF28:
	.string	"size"
.LASF55:
	.string	"temp_heaps"
.LASF33:
	.string	"count"
.LASF6:
	.string	"__int32_t"
.LASF77:
	.string	"soc_get_available_memory_regions"
.LASF34:
	.string	"portMUX_TYPE"
.LASF72:
	.string	"esp_log_timestamp"
.LASF58:
	.string	"heaps_array"
.LASF68:
	.string	"__assert_func"
.LASF39:
	.string	"heap_t"
.LASF36:
	.string	"heap_mux"
.LASF82:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF44:
	.string	"ESP_LOG_ERROR"
.LASF19:
	.string	"esp_err_t"
.LASF85:
	.string	"multi_heap_info"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
