	.file	"heap_caps.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, registered_heaps
	.align	4
	.type	find_containing_heap, @function
find_containing_heap:
.LFB29:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/heap/heap_caps.c"
	.loc 1 241 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 244 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
.LVL2:
	j	.L2
.L5:
	.loc 1 245 0
	l32i.n	a9, a8, 28
	beqz.n	a9, .L3
	.loc 1 245 0 discriminator 1
	l32i.n	a9, a8, 12
	blt	a2, a9, .L3
	.loc 1 245 0 is_stmt 0 discriminator 2
	l32i.n	a9, a8, 16
	blt	a2, a9, .L6
.L3:
	.loc 1 244 0 is_stmt 1 discriminator 2
	l32i.n	a8, a8, 32
.LVL3:
.L2:
	.loc 1 244 0 is_stmt 0 discriminator 1
	bnez.n	a8, .L5
	.loc 1 249 0 is_stmt 1
	movi.n	a2, 0
.LVL4:
	retw.n
.LVL5:
.L6:
	.loc 1 246 0
	mov.n	a2, a8
.LVL6:
	.loc 1 250 0
	retw.n
.LFE29:
	.size	find_containing_heap, .-find_containing_heap
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.string	"esp_ptr_in_diram_dram((void *)dstart)"
	.align	4
.LC6:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/heap/heap_caps.c"
	.align	4
.LC9:
	.string	"esp_ptr_in_diram_dram((void *)dend)"
	.align	4
.LC11:
	.string	"(dstart & 3) == 0"
	.align	4
.LC13:
	.string	"(dend & 3) == 0"
	.section	.iram1
	.literal_position
	.literal .LC1, -1073610752
	.literal .LC2, 131067
	.literal .LC4, .LC3
	.literal .LC5, __func__$5044
	.literal .LC7, .LC6
	.literal .LC8, -1073610756
	.literal .LC10, .LC9
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.literal .LC15, -2146828292
	.align	4
	.type	dram_alloc_to_iram_addr, @function
dram_alloc_to_iram_addr:
.LFB20:
	.loc 1 40 0
.LVL7:
	entry	sp, 32
.LCFI1:
.LVL8:
	.loc 1 42 0
	add.n	a3, a2, a3
.LVL9:
	addi	a10, a3, -4
.LVL10:
.LBB30:
.LBB31:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/soc_memory_layout.h"
	.loc 2 194 0
	l32r	a9, .LC1
	add.n	a9, a2, a9
.LBE31:
.LBE30:
	.loc 1 43 0
	l32r	a8, .LC2
	bgeu	a8, a9, .L8
	.loc 1 43 0 is_stmt 0 discriminator 1
	l32r	a13, .LC4
	l32r	a12, .LC5
	movi.n	a11, 0x2b
	l32r	a10, .LC7
.LVL11:
	call8	__assert_func
.LVL12:
.L8:
.LBB32:
.LBB33:
	.loc 2 194 0 is_stmt 1
	l32r	a9, .LC8
	add.n	a3, a3, a9
.LBE33:
.LBE32:
	.loc 1 44 0
	l32r	a8, .LC2
	bgeu	a8, a3, .L9
	.loc 1 44 0 is_stmt 0 discriminator 1
	l32r	a13, .LC10
	l32r	a12, .LC5
	movi.n	a11, 0x2c
	l32r	a10, .LC7
.LVL13:
	call8	__assert_func
.LVL14:
.L9:
	.loc 1 45 0 is_stmt 1
	extui	a3, a2, 0, 2
	beqz.n	a3, .L10
	.loc 1 45 0 is_stmt 0 discriminator 1
	l32r	a13, .LC12
	l32r	a12, .LC5
	movi.n	a11, 0x2d
	l32r	a10, .LC7
.LVL15:
	call8	__assert_func
.LVL16:
.L10:
	.loc 1 46 0 is_stmt 1
	extui	a3, a10, 0, 2
	beqz.n	a3, .L11
	.loc 1 46 0 is_stmt 0 discriminator 1
	l32r	a13, .LC14
	l32r	a12, .LC5
	movi.n	a11, 0x2e
	l32r	a10, .LC7
.LVL17:
	call8	__assert_func
.LVL18:
.L11:
	.loc 1 47 0 is_stmt 1
	l32r	a8, .LC15
	sub	a8, a8, a10
.LVL19:
	.loc 1 49 0
	s32i.n	a2, a8, 0
	.loc 1 51 0
	addi.n	a2, a8, 4
.LVL20:
	retw.n
.LFE20:
	.size	dram_alloc_to_iram_addr, .-dram_alloc_to_iram_addr
	.section	.text.heap_caps_match,"ax",@progbits
	.align	4
	.global	heap_caps_match
	.type	heap_caps_match, @function
heap_caps_match:
.LFB21:
	.loc 1 54 0
.LVL21:
	entry	sp, 32
.LCFI2:
	.loc 1 55 0
	l32i.n	a8, a2, 28
	.loc 1 55 0
	beqz.n	a8, .L17
.LVL22:
.LBB34:
.LBB35:
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/heap/heap_private.h"
	.loc 3 56 0
	beqz.n	a8, .L18
	movi.n	a8, 0
	mov.n	a9, a8
	j	.L15
.LVL23:
.L16:
.LBB36:
	.loc 3 61 0
	addx4	a10, a8, a2
	l32i.n	a10, a10, 0
	or	a9, a9, a10
.LVL24:
	.loc 3 60 0
	addi.n	a8, a8, 1
.LVL25:
.L15:
	blti	a8, 3, .L16
	j	.L14
.LVL26:
.L18:
.LBE36:
	.loc 3 57 0
	movi.n	a9, 0
.L14:
.LBE35:
.LBE34:
	.loc 1 55 0
	and	a9, a3, a9
	bne	a3, a9, .L19
	movi.n	a2, 1
.LVL27:
	retw.n
.LVL28:
.L17:
	movi.n	a2, 0
.LVL29:
	retw.n
.LVL30:
.L19:
	movi.n	a2, 0
.LVL31:
	.loc 1 56 0
	retw.n
.LFE21:
	.size	heap_caps_match, .-heap_caps_match
	.section	.iram1
	.literal_position
	.literal .LC16, 4194304
	.literal .LC17, registered_heaps
	.literal .LC18, -1073610752
	.literal .LC19, 131067
	.align	4
	.global	heap_caps_malloc
	.type	heap_caps_malloc, @function
heap_caps_malloc:
.LFB22:
	.loc 1 62 0
.LVL32:
	entry	sp, 32
.LCFI3:
.LVL33:
	.loc 1 65 0
	l32r	a4, .LC16
	bltu	a4, a2, .L33
	.loc 1 71 0
	bbci	a3, 0, .L22
	.loc 1 76 0
	movi.n	a4, 0xc
	bany	a3, a4, .L34
	.loc 1 79 0
	movi.n	a4, 2
	or	a3, a3, a4
.LVL34:
.L22:
	.loc 1 82 0
	bbci	a3, 1, .L23
	.loc 1 86 0
	addi.n	a2, a2, 3
.LVL35:
	movi.n	a4, -4
	and	a2, a2, a4
.LVL36:
.L23:
.LBB37:
	.loc 1 89 0
	movi.n	a5, 0
	j	.L24
.LVL37:
.L32:
.LBB38:
	.loc 1 92 0
	l32r	a4, .LC17
	l32i.n	a4, a4, 0
.LVL38:
	j	.L25
.L31:
	.loc 1 93 0
	l32i.n	a10, a4, 28
	beqz.n	a10, .L26
	.loc 1 96 0
	addx4	a8, a5, a4
	l32i.n	a8, a8, 0
	bnone	a3, a8, .L26
.LVL39:
.LBB39:
.LBB40:
	.loc 3 56 0
	beqz.n	a10, .L35
	movi.n	a8, 0
	mov.n	a9, a8
	j	.L28
.LVL40:
.L29:
.LBB41:
	.loc 3 61 0
	addx4	a11, a8, a4
	l32i.n	a11, a11, 0
	or	a9, a9, a11
.LVL41:
	.loc 3 60 0
	addi.n	a8, a8, 1
.LVL42:
.L28:
	blti	a8, 3, .L29
	j	.L27
.LVL43:
.L35:
.LBE41:
	.loc 3 57 0
	movi.n	a9, 0
.L27:
.LBE40:
.LBE39:
	.loc 1 99 0
	and	a9, a3, a9
	bne	a3, a9, .L26
	.loc 1 101 0
	bbci	a3, 0, .L30
	.loc 1 101 0 is_stmt 0 discriminator 1
	l32i.n	a9, a4, 12
.LVL44:
.LBB42:
.LBB43:
	.loc 2 194 0 is_stmt 1 discriminator 1
	l32r	a8, .LC18
	add.n	a8, a9, a8
.LBE43:
.LBE42:
	.loc 1 101 0 discriminator 1
	l32r	a9, .LC19
.LVL45:
	bltu	a9, a8, .L30
	.loc 1 105 0
	addi.n	a6, a2, 4
	mov.n	a11, a6
	call8	multi_heap_malloc
.LVL46:
	.loc 1 106 0
	beqz.n	a10, .L26
	.loc 1 107 0
	mov.n	a11, a6
	call8	dram_alloc_to_iram_addr
.LVL47:
	mov.n	a2, a10
.LVL48:
	retw.n
.LVL49:
.L30:
	.loc 1 111 0
	mov.n	a11, a2
	call8	multi_heap_malloc
.LVL50:
	.loc 1 112 0
	bnez.n	a10, .L36
.LVL51:
.L26:
	.loc 1 92 0 discriminator 2
	l32i.n	a4, a4, 32
.LVL52:
.L25:
	.loc 1 92 0 is_stmt 0 discriminator 1
	bnez.n	a4, .L31
.LBE38:
	.loc 1 89 0 is_stmt 1 discriminator 2
	addi.n	a5, a5, 1
.LVL53:
.L24:
	.loc 1 89 0 is_stmt 0 discriminator 1
	blti	a5, 3, .L32
.LBE37:
	.loc 1 121 0 is_stmt 1
	movi.n	a2, 0
.LVL54:
.LBB45:
	retw.n
.LVL55:
.L33:
.LBE45:
	.loc 1 68 0
	movi.n	a2, 0
.LVL56:
	retw.n
.LVL57:
.L34:
	.loc 1 77 0
	movi.n	a2, 0
.LVL58:
	retw.n
.LVL59:
.L36:
.LBB46:
.LBB44:
	.loc 1 113 0
	mov.n	a2, a10
.LVL60:
.LBE44:
.LBE46:
	.loc 1 122 0
	retw.n
.LFE22:
	.size	heap_caps_malloc, .-heap_caps_malloc
	.section	.text.heap_caps_malloc_extmem_enable,"ax",@progbits
	.literal_position
	.literal .LC20, malloc_alwaysinternal_limit
	.align	4
	.global	heap_caps_malloc_extmem_enable
	.type	heap_caps_malloc_extmem_enable, @function
heap_caps_malloc_extmem_enable:
.LFB23:
	.loc 1 130 0
.LVL61:
	entry	sp, 32
.LCFI4:
	.loc 1 131 0
	l32r	a8, .LC20
	s32i.n	a2, a8, 0
	retw.n
.LFE23:
	.size	heap_caps_malloc_extmem_enable, .-heap_caps_malloc_extmem_enable
	.section	.iram1
	.literal_position
	.literal .LC21, malloc_alwaysinternal_limit
	.literal .LC22, 6144
	.literal .LC23, 5120
	.literal .LC24, 4096
	.align	4
	.global	heap_caps_malloc_default
	.type	heap_caps_malloc_default, @function
heap_caps_malloc_default:
.LFB24:
	.loc 1 138 0
.LVL62:
	entry	sp, 32
.LCFI5:
	.loc 1 139 0
	l32r	a8, .LC21
	l32i.n	a8, a8, 0
	bnei	a8, -1, .L39
	.loc 1 140 0
	l32r	a11, .LC22
	mov.n	a10, a2
	call8	heap_caps_malloc
.LVL63:
	mov.n	a2, a10
.LVL64:
	retw.n
.LVL65:
.L39:
.LBB47:
	.loc 1 143 0
	bltu	a8, a2, .L41
	.loc 1 144 0
	l32r	a11, .LC22
	mov.n	a10, a2
	call8	heap_caps_malloc
.LVL66:
	j	.L42
.LVL67:
.L41:
	.loc 1 146 0
	l32r	a11, .LC23
	mov.n	a10, a2
	call8	heap_caps_malloc
.LVL68:
.L42:
	.loc 1 148 0
	bnez.n	a10, .L43
	.loc 1 150 0
	l32r	a11, .LC24
	mov.n	a10, a2
.LVL69:
	call8	heap_caps_malloc
.LVL70:
	mov.n	a2, a10
.LVL71:
	retw.n
.LVL72:
.L43:
	mov.n	a2, a10
.LVL73:
.LBE47:
	.loc 1 154 0
	retw.n
.LFE24:
	.size	heap_caps_malloc_default, .-heap_caps_malloc_default
	.align	4
	.global	heap_caps_malloc_prefer
	.type	heap_caps_malloc_prefer, @function
heap_caps_malloc_prefer:
.LFB26:
	.loc 1 183 0
.LVL74:
	entry	sp, 80
.LCFI6:
	.loc 1 185 0
	s32i.n	a4, sp, 24
	s32i.n	a5, sp, 28
	s32i.n	a6, sp, 32
	s32i.n	a7, sp, 36
	.loc 1 185 0
	addi	a4, sp, 16
	s32i.n	a4, sp, 4
	addi	a4, sp, 48
	s32i.n	a4, sp, 0
	movi.n	a4, 8
	s32i.n	a4, sp, 8
.LVL75:
	.loc 1 186 0
	movi.n	a10, 0
	.loc 1 187 0
	j	.L45
.LVL76:
.L50:
.LBB48:
	.loc 1 188 0
	l32i.n	a8, sp, 8
	addi.n	a3, a8, 4
	s32i.n	a3, sp, 8
	movi.n	a9, 0x18
	blt	a9, a3, .L46
	.loc 1 188 0 is_stmt 0 discriminator 2
	l32i.n	a3, sp, 4
	j	.L47
.L46:
	.loc 1 188 0 discriminator 1
	movi.n	a3, 0x18
	blt	a3, a8, .L48
	.loc 1 188 0 discriminator 5
	movi.n	a3, 0x24
	s32i.n	a3, sp, 8
.L48:
	.loc 1 188 0 discriminator 6
	l32i.n	a3, sp, 0
.L47:
	.loc 1 188 0 discriminator 7
	l32i.n	a8, sp, 8
	addi	a8, a8, -4
	add.n	a8, a3, a8
.LVL77:
	.loc 1 189 0 is_stmt 1 discriminator 7
	l32i.n	a11, a8, 0
	mov.n	a10, a2
.LVL78:
	call8	heap_caps_malloc
.LVL79:
.LBE48:
	.loc 1 187 0 discriminator 7
	mov.n	a3, a4
.LBB49:
	.loc 1 190 0 discriminator 7
	bnez.n	a10, .L49
.LVL80:
.L45:
.LBE49:
	.loc 1 187 0
	addi.n	a4, a3, -1
.LVL81:
	bnez.n	a3, .L50
.L49:
	.loc 1 196 0
	mov.n	a2, a10
.LVL82:
	retw.n
.LFE26:
	.size	heap_caps_malloc_prefer, .-heap_caps_malloc_prefer
	.section	.rodata.str1.4
	.align	4
.LC27:
	.string	"heap != NULL && \"free() target pointer is outside heap areas\""
	.section	.iram1
	.literal_position
	.literal .LC25, -1074397184
	.literal .LC26, 131067
	.literal .LC28, .LC27
	.literal .LC29, __func__$5123
	.literal .LC30, .LC6
	.align	4
	.global	heap_caps_free
	.type	heap_caps_free, @function
heap_caps_free:
.LFB30:
	.loc 1 253 0
.LVL83:
	entry	sp, 32
.LCFI7:
	.loc 1 254 0
	beqz.n	a2, .L51
.LVL84:
.LBB50:
.LBB51:
	.loc 2 198 0
	l32r	a8, .LC25
	add.n	a8, a2, a8
.LBE51:
.LBE50:
	.loc 1 258 0
	l32r	a9, .LC26
	bltu	a9, a8, .L53
.LVL85:
.LBB52:
	.loc 1 263 0
	addi	a2, a2, -4
.LVL86:
	l32i.n	a2, a2, 0
.LVL87:
.L53:
.LBE52:
	.loc 1 266 0
	mov.n	a10, a2
	call8	find_containing_heap
.LVL88:
	.loc 1 267 0
	bnez.n	a10, .L54
	.loc 1 267 0 is_stmt 0 discriminator 1
	l32r	a13, .LC28
	l32r	a12, .LC29
	movi	a11, 0x10b
	l32r	a10, .LC30
.LVL89:
	call8	__assert_func
.LVL90:
.L54:
	.loc 1 268 0 is_stmt 1
	mov.n	a11, a2
	l32i.n	a10, a10, 28
.LVL91:
	call8	multi_heap_free
.LVL92:
.L51:
	retw.n
.LFE30:
	.size	heap_caps_free, .-heap_caps_free
	.section	.rodata.str1.4
	.align	4
.LC32:
	.string	"heap != NULL && \"realloc() pointer is outside heap areas\""
	.align	4
.LC36:
	.string	"old_size > 0"
	.section	.iram1
	.literal_position
	.literal .LC31, 4194304
	.literal .LC33, .LC32
	.literal .LC34, __func__$5130
	.literal .LC35, .LC6
	.literal .LC37, .LC36
	.align	4
	.global	heap_caps_realloc
	.type	heap_caps_realloc, @function
heap_caps_realloc:
.LFB31:
	.loc 1 272 0
.LVL93:
	entry	sp, 32
.LCFI8:
	.loc 1 273 0
	bnez.n	a2, .L56
	.loc 1 274 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	heap_caps_malloc
.LVL94:
	mov.n	a2, a10
.LVL95:
	retw.n
.LVL96:
.L56:
	.loc 1 277 0
	bnez.n	a3, .L58
	.loc 1 278 0
	mov.n	a10, a2
	call8	heap_caps_free
.LVL97:
	.loc 1 279 0
	movi.n	a2, 0
.LVL98:
	retw.n
.LVL99:
.L58:
	.loc 1 282 0
	l32r	a5, .LC31
	bltu	a5, a3, .L65
	.loc 1 286 0
	mov.n	a10, a2
	call8	find_containing_heap
.LVL100:
	mov.n	a5, a10
.LVL101:
	.loc 1 288 0
	bnez.n	a10, .L59
	.loc 1 288 0 is_stmt 0 discriminator 1
	l32r	a13, .LC33
	l32r	a12, .LC34
	movi	a11, 0x120
	l32r	a10, .LC35
	call8	__assert_func
.LVL102:
.L59:
.LBB53:
.LBB54:
	.loc 3 56 0 is_stmt 1
	l32i.n	a10, a10, 28
	beqz.n	a10, .L66
	movi.n	a8, 0
	mov.n	a9, a8
	j	.L61
.LVL103:
.L62:
.LBB55:
	.loc 3 61 0
	addx4	a11, a8, a5
	l32i.n	a11, a11, 0
	or	a9, a9, a11
.LVL104:
	.loc 3 60 0
	addi.n	a8, a8, 1
.LVL105:
.L61:
	blti	a8, 3, .L62
	j	.L60
.LVL106:
.L66:
.LBE55:
	.loc 3 57 0
	movi.n	a9, 0
.L60:
.LBE54:
.LBE53:
	.loc 1 292 0
	and	a9, a4, a9
.LVL107:
	.loc 1 294 0
	bne	a4, a9, .L63
.LBB56:
	.loc 1 297 0
	mov.n	a12, a3
	mov.n	a11, a2
	call8	multi_heap_realloc
.LVL108:
	.loc 1 298 0
	bnez.n	a10, .L67
.LVL109:
.L63:
.LBE56:
	.loc 1 305 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	heap_caps_malloc
.LVL110:
	mov.n	a4, a10
.LVL111:
	.loc 1 306 0
	beqz.n	a10, .L68
.LBB57:
	.loc 1 307 0
	mov.n	a11, a2
	l32i.n	a10, a5, 28
	call8	multi_heap_get_allocated_size
.LVL112:
	.loc 1 308 0
	bnez.n	a10, .L64
	.loc 1 308 0 is_stmt 0 discriminator 1
	l32r	a13, .LC37
	l32r	a12, .LC34
	movi	a11, 0x134
	l32r	a10, .LC35
.LVL113:
	call8	__assert_func
.LVL114:
.L64:
	.loc 1 309 0 is_stmt 1
	minu	a12, a3, a10
	mov.n	a11, a2
	mov.n	a10, a4
.LVL115:
	call8	memcpy
.LVL116:
	.loc 1 310 0
	mov.n	a10, a2
	call8	heap_caps_free
.LVL117:
	.loc 1 311 0
	mov.n	a2, a4
.LVL118:
	retw.n
.LVL119:
.L65:
.LBE57:
	.loc 1 283 0
	movi.n	a2, 0
.LVL120:
	retw.n
.LVL121:
.L67:
.LBB58:
	.loc 1 299 0
	mov.n	a2, a10
.LVL122:
	retw.n
.LVL123:
.L68:
.LBE58:
	.loc 1 313 0
	movi.n	a2, 0
.LVL124:
	.loc 1 314 0
	retw.n
.LFE31:
	.size	heap_caps_realloc, .-heap_caps_realloc
	.literal_position
	.literal .LC38, malloc_alwaysinternal_limit
	.literal .LC39, 6144
	.literal .LC40, 5120
	.literal .LC41, 4096
	.align	4
	.global	heap_caps_realloc_default
	.type	heap_caps_realloc_default, @function
heap_caps_realloc_default:
.LFB25:
	.loc 1 161 0
.LVL125:
	entry	sp, 32
.LCFI9:
	.loc 1 162 0
	l32r	a8, .LC38
	l32i.n	a8, a8, 0
	bnei	a8, -1, .L70
	.loc 1 163 0
	l32r	a12, .LC39
	mov.n	a11, a3
	mov.n	a10, a2
	call8	heap_caps_realloc
.LVL126:
	mov.n	a2, a10
.LVL127:
	retw.n
.LVL128:
.L70:
.LBB59:
	.loc 1 166 0
	bltu	a8, a3, .L72
	.loc 1 167 0
	l32r	a12, .LC39
	mov.n	a11, a3
	mov.n	a10, a2
	call8	heap_caps_realloc
.LVL129:
	j	.L73
.LVL130:
.L72:
	.loc 1 169 0
	l32r	a12, .LC40
	mov.n	a11, a3
	mov.n	a10, a2
	call8	heap_caps_realloc
.LVL131:
.L73:
	.loc 1 171 0
	movi.n	a8, 1
	movi.n	a9, 0
	mov.n	a11, a9
	moveqz	a11, a8, a10
	.loc 1 171 0
	moveqz	a8, a9, a3
	.loc 1 171 0
	bnone	a8, a11, .L74
	.loc 1 173 0
	l32r	a12, .LC41
	mov.n	a11, a3
	mov.n	a10, a2
.LVL132:
	call8	heap_caps_realloc
.LVL133:
	mov.n	a2, a10
.LVL134:
	retw.n
.LVL135:
.L74:
	mov.n	a2, a10
.LVL136:
.LBE59:
	.loc 1 177 0
	retw.n
.LFE25:
	.size	heap_caps_realloc_default, .-heap_caps_realloc_default
	.align	4
	.global	heap_caps_realloc_prefer
	.type	heap_caps_realloc_prefer, @function
heap_caps_realloc_prefer:
.LFB27:
	.loc 1 202 0
.LVL137:
	entry	sp, 80
.LCFI10:
	.loc 1 204 0
	s32i.n	a5, sp, 28
	s32i.n	a6, sp, 32
	s32i.n	a7, sp, 36
	.loc 1 204 0
	addi	a5, sp, 16
	s32i.n	a5, sp, 4
	addi	a5, sp, 48
	s32i.n	a5, sp, 0
	movi.n	a5, 0xc
	s32i.n	a5, sp, 8
.LVL138:
	.loc 1 205 0
	movi.n	a10, 0
	.loc 1 206 0
	j	.L76
.LVL139:
.L81:
.LBB60:
	.loc 1 207 0
	l32i.n	a8, sp, 8
	addi.n	a4, a8, 4
	s32i.n	a4, sp, 8
	movi.n	a9, 0x18
	blt	a9, a4, .L77
	.loc 1 207 0 is_stmt 0 discriminator 2
	l32i.n	a4, sp, 4
	j	.L78
.L77:
	.loc 1 207 0 discriminator 1
	movi.n	a4, 0x18
	blt	a4, a8, .L79
	.loc 1 207 0 discriminator 5
	movi.n	a4, 0x24
	s32i.n	a4, sp, 8
.L79:
	.loc 1 207 0 discriminator 6
	l32i.n	a4, sp, 0
.L78:
	.loc 1 207 0 discriminator 7
	l32i.n	a8, sp, 8
	addi	a8, a8, -4
	add.n	a8, a4, a8
.LVL140:
	.loc 1 208 0 is_stmt 1 discriminator 7
	l32i.n	a12, a8, 0
	mov.n	a11, a3
	mov.n	a10, a2
.LVL141:
	call8	heap_caps_realloc
.LVL142:
	.loc 1 209 0 discriminator 7
	movi.n	a8, 1
	movi.n	a4, 0
	mov.n	a9, a4
	movnez	a9, a8, a10
	.loc 1 209 0 discriminator 7
	movnez	a8, a4, a3
	or	a8, a8, a9
.LBE60:
	.loc 1 206 0 discriminator 7
	mov.n	a4, a5
.LBB61:
	.loc 1 209 0 discriminator 7
	bnez.n	a8, .L80
.LVL143:
.L76:
.LBE61:
	.loc 1 206 0
	addi.n	a5, a4, -1
.LVL144:
	bnez.n	a4, .L81
.L80:
	.loc 1 215 0
	mov.n	a2, a10
.LVL145:
	retw.n
.LFE27:
	.size	heap_caps_realloc_prefer, .-heap_caps_realloc_prefer
	.align	4
	.global	heap_caps_calloc
	.type	heap_caps_calloc, @function
heap_caps_calloc:
.LFB32:
	.loc 1 317 0
.LVL146:
	entry	sp, 32
.LCFI11:
	.loc 1 321 0
	movi.n	a8, 0
	mull	a5, a2, a3
	muluh	a3, a2, a3
.LVL147:
	beq	a3, a8, .L83
	movi.n	a8, 1
.L83:
.LVL148:
	bnez.n	a8, .L86
	.loc 1 325 0
	mov.n	a11, a4
	mov.n	a10, a5
	call8	heap_caps_malloc
.LVL149:
	mov.n	a2, a10
.LVL150:
	.loc 1 326 0
	beqz.n	a10, .L85
	.loc 1 327 0
	mov.n	a12, a5
	movi.n	a11, 0
	call8	memset
.LVL151:
	retw.n
.LVL152:
.L86:
	.loc 1 322 0
	movi.n	a2, 0
.LVL153:
.L85:
	.loc 1 330 0
	retw.n
.LFE32:
	.size	heap_caps_calloc, .-heap_caps_calloc
	.align	4
	.global	heap_caps_calloc_prefer
	.type	heap_caps_calloc_prefer, @function
heap_caps_calloc_prefer:
.LFB28:
	.loc 1 221 0
.LVL154:
	entry	sp, 80
.LCFI12:
	.loc 1 223 0
	s32i.n	a5, sp, 28
	s32i.n	a6, sp, 32
	s32i.n	a7, sp, 36
	.loc 1 223 0
	addi	a5, sp, 16
	s32i.n	a5, sp, 4
	addi	a5, sp, 48
	s32i.n	a5, sp, 0
	movi.n	a5, 0xc
	s32i.n	a5, sp, 8
.LVL155:
	.loc 1 224 0
	movi.n	a10, 0
	.loc 1 225 0
	j	.L89
.LVL156:
.L94:
.LBB62:
	.loc 1 226 0
	l32i.n	a8, sp, 8
	addi.n	a4, a8, 4
	s32i.n	a4, sp, 8
	movi.n	a9, 0x18
	blt	a9, a4, .L90
	.loc 1 226 0 is_stmt 0 discriminator 2
	l32i.n	a4, sp, 4
	j	.L91
.L90:
	.loc 1 226 0 discriminator 1
	movi.n	a4, 0x18
	blt	a4, a8, .L92
	.loc 1 226 0 discriminator 5
	movi.n	a4, 0x24
	s32i.n	a4, sp, 8
.L92:
	.loc 1 226 0 discriminator 6
	l32i.n	a4, sp, 0
.L91:
	.loc 1 226 0 discriminator 7
	l32i.n	a8, sp, 8
	addi	a8, a8, -4
	add.n	a8, a4, a8
.LVL157:
	.loc 1 227 0 is_stmt 1 discriminator 7
	l32i.n	a12, a8, 0
	mov.n	a11, a3
	mov.n	a10, a2
.LVL158:
	call8	heap_caps_calloc
.LVL159:
.LBE62:
	.loc 1 225 0 discriminator 7
	mov.n	a4, a5
.LBB63:
	.loc 1 228 0 discriminator 7
	bnez.n	a10, .L93
.LVL160:
.L89:
.LBE63:
	.loc 1 225 0
	addi.n	a5, a4, -1
.LVL161:
	bnez.n	a4, .L94
.L93:
	.loc 1 232 0
	mov.n	a2, a10
.LVL162:
	retw.n
.LFE28:
	.size	heap_caps_calloc_prefer, .-heap_caps_calloc_prefer
	.section	.text.heap_caps_get_free_size,"ax",@progbits
	.literal_position
	.literal .LC42, registered_heaps
	.align	4
	.global	heap_caps_get_free_size
	.type	heap_caps_get_free_size, @function
heap_caps_get_free_size:
.LFB33:
	.loc 1 333 0
.LVL163:
	entry	sp, 32
.LCFI13:
.LVL164:
	.loc 1 336 0
	l32r	a3, .LC42
	l32i.n	a3, a3, 0
.LVL165:
	.loc 1 334 0
	movi.n	a4, 0
	.loc 1 336 0
	j	.L96
.LVL166:
.L98:
	.loc 1 337 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	heap_caps_match
.LVL167:
	beqz.n	a10, .L97
	.loc 1 338 0
	l32i.n	a10, a3, 28
	call8	multi_heap_free_size
.LVL168:
	add.n	a4, a4, a10
.LVL169:
.L97:
	.loc 1 336 0 discriminator 2
	l32i.n	a3, a3, 32
.LVL170:
.L96:
	.loc 1 336 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L98
	.loc 1 342 0 is_stmt 1
	mov.n	a2, a4
.LVL171:
	retw.n
.LFE33:
	.size	heap_caps_get_free_size, .-heap_caps_get_free_size
	.section	.text.heap_caps_get_minimum_free_size,"ax",@progbits
	.literal_position
	.literal .LC43, registered_heaps
	.align	4
	.global	heap_caps_get_minimum_free_size
	.type	heap_caps_get_minimum_free_size, @function
heap_caps_get_minimum_free_size:
.LFB34:
	.loc 1 345 0
.LVL172:
	entry	sp, 32
.LCFI14:
.LVL173:
	.loc 1 348 0
	l32r	a3, .LC43
	l32i.n	a3, a3, 0
.LVL174:
	.loc 1 346 0
	movi.n	a4, 0
	.loc 1 348 0
	j	.L100
.LVL175:
.L102:
	.loc 1 349 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	heap_caps_match
.LVL176:
	beqz.n	a10, .L101
	.loc 1 350 0
	l32i.n	a10, a3, 28
	call8	multi_heap_minimum_free_size
.LVL177:
	add.n	a4, a4, a10
.LVL178:
.L101:
	.loc 1 348 0 discriminator 2
	l32i.n	a3, a3, 32
.LVL179:
.L100:
	.loc 1 348 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L102
	.loc 1 354 0 is_stmt 1
	mov.n	a2, a4
.LVL180:
	retw.n
.LFE34:
	.size	heap_caps_get_minimum_free_size, .-heap_caps_get_minimum_free_size
	.section	.text.heap_caps_get_info,"ax",@progbits
	.literal_position
	.literal .LC44, registered_heaps
	.align	4
	.global	heap_caps_get_info
	.type	heap_caps_get_info, @function
heap_caps_get_info:
.LFB36:
	.loc 1 364 0
.LVL181:
	entry	sp, 64
.LCFI15:
	.loc 1 365 0
	movi.n	a12, 0x1c
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL182:
	.loc 1 368 0
	l32r	a4, .LC44
	l32i.n	a4, a4, 0
.LVL183:
	j	.L104
.L106:
	.loc 1 369 0
	mov.n	a11, a3
	mov.n	a10, a4
	call8	heap_caps_match
.LVL184:
	beqz.n	a10, .L105
.LBB64:
	.loc 1 371 0
	mov.n	a11, sp
	l32i.n	a10, a4, 28
	call8	multi_heap_get_info
.LVL185:
	.loc 1 373 0
	l32i.n	a9, a2, 0
	l32i.n	a8, sp, 0
	add.n	a8, a9, a8
	s32i.n	a8, a2, 0
	.loc 1 374 0
	l32i.n	a9, a2, 4
	l32i.n	a8, sp, 4
	add.n	a8, a9, a8
	s32i.n	a8, a2, 4
	.loc 1 375 0
	l32i.n	a8, a2, 8
	l32i.n	a9, sp, 8
	maxu	a8, a9, a8
	s32i.n	a8, a2, 8
	.loc 1 377 0
	l32i.n	a9, a2, 12
	l32i.n	a8, sp, 12
	add.n	a8, a9, a8
	s32i.n	a8, a2, 12
	.loc 1 378 0
	l32i.n	a9, a2, 16
	l32i.n	a8, sp, 16
	add.n	a8, a9, a8
	s32i.n	a8, a2, 16
	.loc 1 379 0
	l32i.n	a9, a2, 20
	l32i.n	a8, sp, 20
	add.n	a8, a9, a8
	s32i.n	a8, a2, 20
	.loc 1 380 0
	l32i.n	a9, a2, 24
	l32i.n	a8, sp, 24
	add.n	a8, a9, a8
	s32i.n	a8, a2, 24
.L105:
.LBE64:
	.loc 1 368 0 discriminator 2
	l32i.n	a4, a4, 32
.LVL186:
.L104:
	.loc 1 368 0 is_stmt 0 discriminator 1
	bnez.n	a4, .L106
	.loc 1 383 0 is_stmt 1
	retw.n
.LFE36:
	.size	heap_caps_get_info, .-heap_caps_get_info
	.section	.text.heap_caps_get_largest_free_block,"ax",@progbits
	.align	4
	.global	heap_caps_get_largest_free_block
	.type	heap_caps_get_largest_free_block, @function
heap_caps_get_largest_free_block:
.LFB35:
	.loc 1 357 0
.LVL187:
	entry	sp, 64
.LCFI16:
	.loc 1 359 0
	mov.n	a11, a2
	mov.n	a10, sp
	call8	heap_caps_get_info
.LVL188:
	.loc 1 361 0
	l32i.n	a2, sp, 8
.LVL189:
	retw.n
.LFE35:
	.size	heap_caps_get_largest_free_block, .-heap_caps_get_largest_free_block
	.section	.rodata.str1.4
	.align	4
.LC45:
	.string	"Heap summary for capabilities 0x%08X:\n"
	.align	4
.LC48:
	.string	"  At 0x%08x len %d free %d allocated %d min_free %d\n"
	.align	4
.LC50:
	.string	"    largest_free_block %d alloc_blocks %d free_blocks %d total_blocks %d\n"
	.align	4
.LC52:
	.string	"  Totals:"
	.align	4
.LC54:
	.string	"    free %d allocated %d min_free %d largest_free_block %d\n"
	.section	.text.heap_caps_print_heap_info,"ax",@progbits
	.literal_position
	.literal .LC46, .LC45
	.literal .LC47, registered_heaps
	.literal .LC49, .LC48
	.literal .LC51, .LC50
	.literal .LC53, .LC52
	.literal .LC55, .LC54
	.align	4
	.global	heap_caps_print_heap_info
	.type	heap_caps_print_heap_info, @function
heap_caps_print_heap_info:
.LFB37:
	.loc 1 386 0
.LVL190:
	entry	sp, 64
.LCFI17:
	.loc 1 388 0
	mov.n	a11, a2
	l32r	a10, .LC46
	call8	printf
.LVL191:
	.loc 1 390 0
	l32r	a3, .LC47
	l32i.n	a3, a3, 0
.LVL192:
	j	.L109
.L111:
	.loc 1 391 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	heap_caps_match
.LVL193:
	beqz.n	a10, .L110
	.loc 1 392 0
	mov.n	a11, sp
	l32i.n	a10, a3, 28
	call8	multi_heap_get_info
.LVL194:
	.loc 1 395 0
	l32i.n	a12, a3, 16
	l32i.n	a11, a3, 12
	.loc 1 394 0
	l32i.n	a15, sp, 12
	l32i.n	a14, sp, 4
	l32i.n	a13, sp, 0
	sub	a12, a12, a11
	l32r	a10, .LC49
	call8	printf
.LVL195:
	.loc 1 396 0
	l32i.n	a14, sp, 24
	l32i.n	a13, sp, 20
	l32i.n	a12, sp, 16
	l32i.n	a11, sp, 8
	l32r	a10, .LC51
	call8	printf
.LVL196:
.L110:
	.loc 1 390 0 discriminator 2
	l32i.n	a3, a3, 32
.LVL197:
.L109:
	.loc 1 390 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L111
	.loc 1 401 0 is_stmt 1
	l32r	a10, .LC53
	call8	puts
.LVL198:
	.loc 1 402 0
	mov.n	a11, a2
	mov.n	a10, sp
	call8	heap_caps_get_info
.LVL199:
	.loc 1 404 0
	l32i.n	a14, sp, 8
	l32i.n	a13, sp, 12
	l32i.n	a12, sp, 4
	l32i.n	a11, sp, 0
	l32r	a10, .LC55
	call8	printf
.LVL200:
	retw.n
.LFE37:
	.size	heap_caps_print_heap_info, .-heap_caps_print_heap_info
	.section	.text.heap_caps_check_integrity,"ax",@progbits
	.literal_position
	.literal .LC56, -2147483648
	.literal .LC57, registered_heaps
	.align	4
	.global	heap_caps_check_integrity
	.type	heap_caps_check_integrity, @function
heap_caps_check_integrity:
.LFB38:
	.loc 1 408 0
.LVL201:
	entry	sp, 32
.LCFI18:
	mov.n	a5, a2
	extui	a3, a3, 0, 8
	.loc 1 409 0
	l32r	a6, .LC56
	and	a6, a2, a6
.LVL202:
	.loc 1 413 0
	l32r	a2, .LC57
.LVL203:
	l32i.n	a4, a2, 0
.LVL204:
	.loc 1 410 0
	movi.n	a2, 1
	.loc 1 413 0
	j	.L113
.LVL205:
.L120:
	.loc 1 414 0
	l32i.n	a10, a4, 28
	beqz.n	a10, .L114
	.loc 1 415 0
	bnez.n	a6, .L115
.LVL206:
.LBB65:
.LBB66:
	.loc 3 56 0
	beqz.n	a10, .L121
	movi.n	a8, 0
	mov.n	a9, a8
	j	.L117
.LVL207:
.L118:
.LBB67:
	.loc 3 61 0
	addx4	a11, a8, a4
	l32i.n	a11, a11, 0
	or	a9, a9, a11
.LVL208:
	.loc 3 60 0
	addi.n	a8, a8, 1
.LVL209:
.L117:
	blti	a8, 3, .L118
	j	.L116
.LVL210:
.L121:
.LBE67:
	.loc 3 57 0
	mov.n	a9, a6
.L116:
.LBE66:
.LBE65:
	.loc 1 415 0
	and	a9, a5, a9
	bne	a5, a9, .L114
.LVL211:
.L115:
	.loc 1 416 0
	mov.n	a11, a3
	call8	multi_heap_check
.LVL212:
	beqz.n	a10, .L122
	.loc 1 416 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L123
	j	.L114
.L122:
	.loc 1 416 0
	movi.n	a2, 0
.LVL213:
	j	.L114
.LVL214:
.L123:
	movi.n	a2, 1
.LVL215:
.L114:
	.loc 1 413 0 is_stmt 1 discriminator 2
	l32i.n	a4, a4, 32
.LVL216:
.L113:
	.loc 1 413 0 is_stmt 0 discriminator 1
	bnez.n	a4, .L120
	.loc 1 421 0 is_stmt 1
	retw.n
.LFE38:
	.size	heap_caps_check_integrity, .-heap_caps_check_integrity
	.section	.text.heap_caps_check_integrity_all,"ax",@progbits
	.literal_position
	.literal .LC58, -2147483648
	.align	4
	.global	heap_caps_check_integrity_all
	.type	heap_caps_check_integrity_all, @function
heap_caps_check_integrity_all:
.LFB39:
	.loc 1 424 0
.LVL217:
	entry	sp, 32
.LCFI19:
	.loc 1 425 0
	extui	a11, a2, 0, 8
	l32r	a10, .LC58
	call8	heap_caps_check_integrity
.LVL218:
	.loc 1 426 0
	mov.n	a2, a10
.LVL219:
	retw.n
.LFE39:
	.size	heap_caps_check_integrity_all, .-heap_caps_check_integrity_all
	.section	.text.heap_caps_check_integrity_addr,"ax",@progbits
	.align	4
	.global	heap_caps_check_integrity_addr
	.type	heap_caps_check_integrity_addr, @function
heap_caps_check_integrity_addr:
.LFB40:
	.loc 1 429 0
.LVL220:
	entry	sp, 32
.LCFI20:
	extui	a3, a3, 0, 8
	.loc 1 430 0
	mov.n	a10, a2
	call8	find_containing_heap
.LVL221:
	.loc 1 431 0
	beqz.n	a10, .L127
	.loc 1 434 0
	mov.n	a11, a3
	l32i.n	a10, a10, 28
.LVL222:
	call8	multi_heap_check
.LVL223:
	mov.n	a2, a10
.LVL224:
	retw.n
.LVL225:
.L127:
	.loc 1 432 0
	movi.n	a2, 0
.LVL226:
	.loc 1 435 0
	retw.n
.LFE40:
	.size	heap_caps_check_integrity_addr, .-heap_caps_check_integrity_addr
	.section	.text.heap_caps_dump,"ax",@progbits
	.literal_position
	.literal .LC59, -2147483648
	.literal .LC60, registered_heaps
	.align	4
	.global	heap_caps_dump
	.type	heap_caps_dump, @function
heap_caps_dump:
.LFB41:
	.loc 1 438 0
.LVL227:
	entry	sp, 32
.LCFI21:
	.loc 1 439 0
	l32r	a4, .LC59
	and	a4, a2, a4
.LVL228:
	.loc 1 441 0
	l32r	a3, .LC60
	l32i.n	a3, a3, 0
.LVL229:
	j	.L129
.L135:
	.loc 1 442 0
	l32i.n	a10, a3, 28
	beqz.n	a10, .L130
	.loc 1 443 0
	bnez.n	a4, .L131
.LVL230:
.LBB68:
.LBB69:
	.loc 3 56 0
	beqz.n	a10, .L136
	movi.n	a8, 0
	mov.n	a9, a8
	j	.L133
.LVL231:
.L134:
.LBB70:
	.loc 3 61 0
	addx4	a11, a8, a3
	l32i.n	a11, a11, 0
	or	a9, a9, a11
.LVL232:
	.loc 3 60 0
	addi.n	a8, a8, 1
.LVL233:
.L133:
	blti	a8, 3, .L134
	j	.L132
.LVL234:
.L136:
.LBE70:
	.loc 3 57 0
	mov.n	a9, a4
.L132:
.LBE69:
.LBE68:
	.loc 1 443 0
	and	a9, a2, a9
	bne	a2, a9, .L130
.LVL235:
.L131:
	.loc 1 444 0
	call8	multi_heap_dump
.LVL236:
.L130:
	.loc 1 441 0 discriminator 2
	l32i.n	a3, a3, 32
.LVL237:
.L129:
	.loc 1 441 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L135
	.loc 1 447 0 is_stmt 1
	retw.n
.LFE41:
	.size	heap_caps_dump, .-heap_caps_dump
	.section	.text.heap_caps_dump_all,"ax",@progbits
	.literal_position
	.literal .LC61, -2147483648
	.align	4
	.global	heap_caps_dump_all
	.type	heap_caps_dump_all, @function
heap_caps_dump_all:
.LFB42:
	.loc 1 450 0
	entry	sp, 32
.LCFI22:
	.loc 1 451 0
	l32r	a10, .LC61
	call8	heap_caps_dump
.LVL238:
	retw.n
.LFE42:
	.size	heap_caps_dump_all, .-heap_caps_dump_all
	.section	.rodata.__func__$5130,"a",@progbits
	.align	4
	.type	__func__$5130, @object
	.size	__func__$5130, 18
__func__$5130:
	.string	"heap_caps_realloc"
	.section	.rodata.__func__$5123,"a",@progbits
	.align	4
	.type	__func__$5123, @object
	.size	__func__$5123, 15
__func__$5123:
	.string	"heap_caps_free"
	.section	.rodata.__func__$5044,"a",@progbits
	.align	4
	.type	__func__$5044, @object
	.size	__func__$5044, 24
__func__$5044:
	.string	"dram_alloc_to_iram_addr"
	.section	.data.malloc_alwaysinternal_limit,"aw",@progbits
	.align	4
	.type	malloc_alwaysinternal_limit, @object
	.size	malloc_alwaysinternal_limit, 4
malloc_alwaysinternal_limit:
	.word	-1
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
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI0-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI1-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI2-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI3-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI4-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI5-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI6-.LFB26
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI7-.LFB30
	.byte	0xe
	.uleb128 0x20
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
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI9-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI10-.LFB27
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI11-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI12-.LFB28
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI13-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI14-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI15-.LFB36
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI16-.LFB35
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI17-.LFB37
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI18-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI19-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI20-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI21-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI22-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
	.text
.Letext0:
	.file 4 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 6 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h"
	.file 7 "<built-in>"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/heap/include/multi_heap.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x12b0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0xc
	.4byte	.LASF109
	.4byte	.LASF110
	.4byte	.Ldebug_ranges0+0x98
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x4
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
	.byte	0x5
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x5
	.byte	0x31
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x5
	.byte	0x32
	.4byte	0x37
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0x7
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x6
	.byte	0x28
	.4byte	0xb9
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0xc
	.byte	0x7
	.byte	0
	.4byte	0xea
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x7
	.byte	0
	.4byte	0x97
	.byte	0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x7
	.byte	0
	.4byte	0x97
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x7
	.byte	0
	.4byte	0x25
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x8
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x8
	.byte	0xa9
	.4byte	0x73
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x8
	.byte	0xaa
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x9
	.byte	0x1e
	.4byte	0x116
	.uleb128 0x6
	.byte	0x4
	.4byte	0x11c
	.uleb128 0xa
	.4byte	.LASF111
	.uleb128 0xb
	.byte	0x1c
	.byte	0x9
	.byte	0x96
	.4byte	0x17e
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x9
	.byte	0x97
	.4byte	0x2c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x9
	.byte	0x98
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x9
	.byte	0x99
	.4byte	0x2c
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x9
	.byte	0x9a
	.4byte	0x2c
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x9
	.byte	0x9b
	.4byte	0x2c
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x9
	.byte	0x9c
	.4byte	0x2c
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x9
	.byte	0x9d
	.4byte	0x2c
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x9
	.byte	0x9e
	.4byte	0x121
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x6
	.byte	0x62
	.4byte	0xae
	.uleb128 0xc
	.4byte	0xea
	.4byte	0x1a4
	.uleb128 0xd
	.4byte	0x90
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF32
	.uleb128 0xb
	.byte	0x8
	.byte	0xa
	.byte	0x82
	.4byte	0x1cc
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0xa
	.byte	0x8a
	.4byte	0xea
	.byte	0
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0xa
	.byte	0x8f
	.4byte	0xea
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0xa
	.byte	0x94
	.4byte	0x1ab
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.byte	0x28
	.4byte	0x1ec
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x3
	.byte	0x28
	.4byte	0x241
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x24
	.byte	0x3
	.byte	0x22
	.4byte	0x241
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x3
	.byte	0x23
	.4byte	0x194
	.byte	0
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x3
	.byte	0x24
	.4byte	0xf5
	.byte	0xc
	.uleb128 0xe
	.string	"end"
	.byte	0x3
	.byte	0x25
	.4byte	0xf5
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x3
	.byte	0x26
	.4byte	0x1cc
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x3
	.byte	0x27
	.4byte	0x10b
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x3
	.byte	0x28
	.4byte	0x1d7
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ec
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x3
	.byte	0x29
	.4byte	0x1ec
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x4
	.byte	0x3
	.byte	0x31
	.4byte	0x26b
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x3
	.byte	0x31
	.4byte	0x241
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x2
	.byte	0xc1
	.4byte	0x1a4
	.byte	0x3
	.4byte	0x285
	.uleb128 0x10
	.string	"p"
	.byte	0x2
	.byte	0xc1
	.4byte	0xa7
	.byte	0
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x3
	.byte	0x36
	.4byte	0xea
	.byte	0x3
	.4byte	0x2b9
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x3
	.byte	0x36
	.4byte	0x2b9
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x3
	.byte	0x3b
	.4byte	0xea
	.uleb128 0x13
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0x3
	.byte	0x3c
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2bf
	.uleb128 0x14
	.4byte	0x247
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x2
	.byte	0xc5
	.4byte	0x1a4
	.byte	0x3
	.4byte	0x2de
	.uleb128 0x10
	.string	"p"
	.byte	0x2
	.byte	0xc5
	.4byte	0xa7
	.byte	0
	.uleb128 0x15
	.4byte	.LASF52
	.byte	0x1
	.byte	0xf0
	.4byte	0x321
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x321
	.uleb128 0x16
	.string	"ptr"
	.byte	0x1
	.byte	0xf0
	.4byte	0x97
	.4byte	.LLST0
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.byte	0xf2
	.4byte	0xf5
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	.LASF42
	.byte	0x1
	.byte	0xf3
	.4byte	0x321
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x247
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0x1
	.byte	0x27
	.4byte	0x97
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x498
	.uleb128 0x19
	.4byte	.LASF54
	.byte	0x1
	.byte	0x27
	.4byte	0x97
	.4byte	.LLST2
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.byte	0x27
	.4byte	0x2c
	.4byte	.LLST3
	.uleb128 0x1a
	.4byte	.LASF55
	.byte	0x1
	.byte	0x29
	.4byte	0x100
	.4byte	.LLST4
	.uleb128 0x1a
	.4byte	.LASF56
	.byte	0x1
	.byte	0x2a
	.4byte	0x100
	.4byte	.LLST5
	.uleb128 0x1b
	.4byte	.LASF57
	.4byte	0x4a8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5044
	.uleb128 0x18
	.4byte	.LASF58
	.byte	0x1
	.byte	0x2f
	.4byte	0xea
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x18
	.4byte	.LASF59
	.byte	0x1
	.byte	0x30
	.4byte	0x4ad
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1c
	.4byte	0x26b
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.byte	0x2b
	.4byte	0x3c2
	.uleb128 0x1d
	.4byte	0x27b
	.4byte	.LLST6
	.byte	0
	.uleb128 0x1c
	.4byte	0x26b
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.byte	0x2c
	.4byte	0x3df
	.uleb128 0x1d
	.4byte	0x27b
	.4byte	.LLST7
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL12
	.4byte	0x1219
	.4byte	0x40e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5044
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL14
	.4byte	0x1219
	.4byte	0x43d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5044
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL16
	.4byte	0x1219
	.4byte	0x46c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5044
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x20
	.4byte	.LVL18
	.4byte	0x1219
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5044
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xa0
	.4byte	0x4a8
	.uleb128 0xd
	.4byte	0x90
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.4byte	0x498
	.uleb128 0x6
	.byte	0x4
	.4byte	0xea
	.uleb128 0x21
	.4byte	.LASF60
	.byte	0x1
	.byte	0x35
	.4byte	0x1a4
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x528
	.uleb128 0x19
	.4byte	.LASF42
	.byte	0x1
	.byte	0x35
	.4byte	0x2b9
	.4byte	.LLST8
	.uleb128 0x22
	.4byte	.LASF39
	.byte	0x1
	.byte	0x35
	.4byte	0xea
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	0x285
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.byte	0x37
	.uleb128 0x1d
	.4byte	0x295
	.4byte	.LLST9
	.uleb128 0x24
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.uleb128 0x25
	.4byte	0x2a0
	.4byte	.LLST10
	.uleb128 0x24
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.uleb128 0x25
	.4byte	0x2ac
	.4byte	.LLST11
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF61
	.byte	0x1
	.byte	0x3d
	.4byte	0x97
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x631
	.uleb128 0x19
	.4byte	.LASF62
	.byte	0x1
	.byte	0x3d
	.4byte	0x2c
	.4byte	.LLST12
	.uleb128 0x19
	.4byte	.LASF39
	.byte	0x1
	.byte	0x3d
	.4byte	0xea
	.4byte	.LLST13
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.byte	0x3f
	.4byte	0x97
	.4byte	.LLST14
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1a
	.4byte	.LASF50
	.byte	0x1
	.byte	0x59
	.4byte	0x25
	.4byte	.LLST15
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0x20
	.uleb128 0x1a
	.4byte	.LASF42
	.byte	0x1
	.byte	0x5b
	.4byte	0x321
	.4byte	.LLST16
	.uleb128 0x1c
	.4byte	0x285
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.byte	0x1
	.byte	0x63
	.4byte	0x5d9
	.uleb128 0x1d
	.4byte	0x295
	.4byte	.LLST17
	.uleb128 0x24
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.uleb128 0x25
	.4byte	0x2a0
	.4byte	.LLST18
	.uleb128 0x24
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.uleb128 0x25
	.4byte	0x2ac
	.4byte	.LLST19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0x26b
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.byte	0x65
	.4byte	0x5f6
	.uleb128 0x1d
	.4byte	0x27b
	.4byte	.LLST20
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL46
	.4byte	0x1224
	.4byte	0x60a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL47
	.4byte	0x327
	.4byte	0x61e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL50
	.4byte	0x1224
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF67
	.byte	0x1
	.byte	0x81
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x654
	.uleb128 0x22
	.4byte	.LASF63
	.byte	0x1
	.byte	0x81
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x21
	.4byte	.LASF64
	.byte	0x1
	.byte	0x89
	.4byte	0x97
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6fc
	.uleb128 0x19
	.4byte	.LASF62
	.byte	0x1
	.byte	0x89
	.4byte	0x2c
	.4byte	.LLST21
	.uleb128 0x28
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.4byte	0x6e4
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.byte	0x8e
	.4byte	0x97
	.4byte	.LLST22
	.uleb128 0x1e
	.4byte	.LVL66
	.4byte	0x528
	.4byte	0x6b1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1800
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL68
	.4byte	0x528
	.4byte	0x6cc
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1400
	.byte	0
	.uleb128 0x20
	.4byte	.LVL70
	.4byte	0x528
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL63
	.4byte	0x528
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1800
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF65
	.byte	0x1
	.byte	0xb6
	.4byte	0x97
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x776
	.uleb128 0x19
	.4byte	.LASF62
	.byte	0x1
	.byte	0xb6
	.4byte	0x2c
	.4byte	.LLST23
	.uleb128 0x16
	.string	"num"
	.byte	0x1
	.byte	0xb6
	.4byte	0x2c
	.4byte	.LLST24
	.uleb128 0x29
	.uleb128 0x18
	.4byte	.LASF66
	.byte	0x1
	.byte	0xb8
	.4byte	0x189
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.byte	0xba
	.4byte	0x97
	.4byte	.LLST25
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0x38
	.uleb128 0x1a
	.4byte	.LASF39
	.byte	0x1
	.byte	0xbc
	.4byte	0xea
	.4byte	.LLST26
	.uleb128 0x20
	.4byte	.LVL79
	.4byte	0x528
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF68
	.byte	0x1
	.byte	0xfc
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x84a
	.uleb128 0x16
	.string	"ptr"
	.byte	0x1
	.byte	0xfc
	.4byte	0x97
	.4byte	.LLST27
	.uleb128 0x2a
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x10a
	.4byte	0x321
	.4byte	.LLST28
	.uleb128 0x1b
	.4byte	.LASF57
	.4byte	0x85a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5123
	.uleb128 0x2b
	.4byte	0x2c4
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.byte	0x1
	.2byte	0x102
	.4byte	0x7d7
	.uleb128 0x1d
	.4byte	0x2d4
	.4byte	.LLST29
	.byte	0
	.uleb128 0x28
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.4byte	0x7f5
	.uleb128 0x2a
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x106
	.4byte	0x4ad
	.4byte	.LLST30
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL88
	.4byte	0x2de
	.4byte	0x809
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL90
	.4byte	0x1219
	.4byte	0x839
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x10b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5123
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.uleb128 0x20
	.4byte	.LVL92
	.4byte	0x122f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xa0
	.4byte	0x85a
	.uleb128 0xd
	.4byte	0x90
	.byte	0xe
	.byte	0
	.uleb128 0x14
	.4byte	0x84a
	.uleb128 0x2c
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x10f
	.4byte	0x97
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa6d
	.uleb128 0x2d
	.string	"ptr"
	.byte	0x1
	.2byte	0x10f
	.4byte	0x97
	.4byte	.LLST31
	.uleb128 0x2e
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x10f
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x10f
	.4byte	0x25
	.4byte	.LLST32
	.uleb128 0x2a
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x11e
	.4byte	0x321
	.4byte	.LLST33
	.uleb128 0x1b
	.4byte	.LASF57
	.4byte	0xa7d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5130
	.uleb128 0x2a
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x124
	.4byte	0x1a4
	.4byte	.LLST34
	.uleb128 0x2a
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x131
	.4byte	0x97
	.4byte	.LLST35
	.uleb128 0x2b
	.4byte	0x285
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.byte	0x1
	.2byte	0x124
	.4byte	0x92a
	.uleb128 0x1d
	.4byte	0x295
	.4byte	.LLST36
	.uleb128 0x24
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.uleb128 0x25
	.4byte	0x2a0
	.4byte	.LLST37
	.uleb128 0x24
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.uleb128 0x25
	.4byte	0x2ac
	.4byte	.LLST38
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0x50
	.4byte	0x958
	.uleb128 0x31
	.string	"r"
	.byte	0x1
	.2byte	0x129
	.4byte	0x97
	.4byte	.LLST39
	.uleb128 0x20
	.4byte	.LVL108
	.4byte	0x123a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.4byte	0x9e4
	.uleb128 0x2a
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x133
	.4byte	0x2c
	.4byte	.LLST40
	.uleb128 0x1e
	.4byte	.LVL112
	.4byte	0x1245
	.4byte	0x989
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL114
	.4byte	0x1219
	.4byte	0x9b9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x134
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5130
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL116
	.4byte	0x1250
	.4byte	0x9d3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL117
	.4byte	0x776
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL94
	.4byte	0x528
	.4byte	0x9fe
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL97
	.4byte	0x776
	.4byte	0xa12
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL100
	.4byte	0x2de
	.4byte	0xa26
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL102
	.4byte	0x1219
	.4byte	0xa56
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x120
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5130
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.byte	0
	.uleb128 0x20
	.4byte	.LVL110
	.4byte	0x528
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xa0
	.4byte	0xa7d
	.uleb128 0xd
	.4byte	0x90
	.byte	0x11
	.byte	0
	.uleb128 0x14
	.4byte	0xa6d
	.uleb128 0x21
	.4byte	.LASF74
	.byte	0x1
	.byte	0xa0
	.4byte	0x97
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb4f
	.uleb128 0x16
	.string	"ptr"
	.byte	0x1
	.byte	0xa0
	.4byte	0x97
	.4byte	.LLST41
	.uleb128 0x22
	.4byte	.LASF62
	.byte	0x1
	.byte	0xa0
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.4byte	0xb31
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.byte	0xa5
	.4byte	0x97
	.4byte	.LLST42
	.uleb128 0x1e
	.4byte	.LVL129
	.4byte	0x85f
	.4byte	0xaf2
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1800
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL131
	.4byte	0x85f
	.4byte	0xb13
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1400
	.byte	0
	.uleb128 0x20
	.4byte	.LVL133
	.4byte	0x85f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL126
	.4byte	0x85f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1800
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF75
	.byte	0x1
	.byte	0xc9
	.4byte	0x97
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbdc
	.uleb128 0x16
	.string	"ptr"
	.byte	0x1
	.byte	0xc9
	.4byte	0x97
	.4byte	.LLST43
	.uleb128 0x22
	.4byte	.LASF62
	.byte	0x1
	.byte	0xc9
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.string	"num"
	.byte	0x1
	.byte	0xc9
	.4byte	0x2c
	.4byte	.LLST44
	.uleb128 0x29
	.uleb128 0x18
	.4byte	.LASF66
	.byte	0x1
	.byte	0xcb
	.4byte	0x189
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.byte	0xcd
	.4byte	0x97
	.4byte	.LLST45
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0x68
	.uleb128 0x1a
	.4byte	.LASF39
	.byte	0x1
	.byte	0xcf
	.4byte	0xea
	.4byte	.LLST46
	.uleb128 0x20
	.4byte	.LVL142
	.4byte	0x85f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x13c
	.4byte	0x97
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc78
	.uleb128 0x2d
	.string	"n"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x2c
	.4byte	.LLST47
	.uleb128 0x2f
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x13c
	.4byte	0x2c
	.4byte	.LLST48
	.uleb128 0x2e
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x13c
	.4byte	0xea
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2a
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x13e
	.4byte	0x97
	.4byte	.LLST49
	.uleb128 0x2a
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x13f
	.4byte	0x2c
	.4byte	.LLST50
	.uleb128 0x1e
	.4byte	.LVL149
	.4byte	0x528
	.4byte	0xc5c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL151
	.4byte	0x1259
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF79
	.byte	0x1
	.byte	0xdc
	.4byte	0x97
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd03
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.byte	0xdc
	.4byte	0x2c
	.4byte	.LLST51
	.uleb128 0x22
	.4byte	.LASF62
	.byte	0x1
	.byte	0xdc
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.string	"num"
	.byte	0x1
	.byte	0xdc
	.4byte	0x2c
	.4byte	.LLST52
	.uleb128 0x29
	.uleb128 0x18
	.4byte	.LASF66
	.byte	0x1
	.byte	0xde
	.4byte	0x189
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.byte	0xe0
	.4byte	0x97
	.4byte	.LLST53
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0x80
	.uleb128 0x1a
	.4byte	.LASF39
	.byte	0x1
	.byte	0xe2
	.4byte	0xea
	.4byte	.LLST54
	.uleb128 0x20
	.4byte	.LVL159
	.4byte	0xbdc
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x14c
	.4byte	0x2c
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd6f
	.uleb128 0x2f
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x14c
	.4byte	0xea
	.4byte	.LLST55
	.uleb128 0x31
	.string	"ret"
	.byte	0x1
	.2byte	0x14e
	.4byte	0x2c
	.4byte	.LLST56
	.uleb128 0x32
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x14f
	.4byte	0x321
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LVL167
	.4byte	0x4b3
	.4byte	0xd65
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL168
	.4byte	0x1262
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x158
	.4byte	0x2c
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xddb
	.uleb128 0x2f
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x158
	.4byte	0xea
	.4byte	.LLST57
	.uleb128 0x31
	.string	"ret"
	.byte	0x1
	.2byte	0x15a
	.4byte	0x2c
	.4byte	.LLST58
	.uleb128 0x32
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x15b
	.4byte	0x321
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LVL176
	.4byte	0x4b3
	.4byte	0xdd1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL177
	.4byte	0x126d
	.byte	0
	.uleb128 0x34
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x16b
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe7d
	.uleb128 0x2e
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x16b
	.4byte	0xe7d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2e
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x16b
	.4byte	0xea
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x32
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x16f
	.4byte	0x321
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x28
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.4byte	0xe48
	.uleb128 0x32
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x172
	.4byte	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.4byte	.LVL185
	.4byte	0x1278
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL182
	.4byte	0x1259
	.4byte	0xe66
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.uleb128 0x20
	.4byte	.LVL184
	.4byte	0x4b3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x17e
	.uleb128 0x2c
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x164
	.4byte	0x2c
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xed3
	.uleb128 0x2f
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x164
	.4byte	0xea
	.4byte	.LLST59
	.uleb128 0x32
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x166
	.4byte	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.4byte	.LVL188
	.4byte	0xddb
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x181
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfd2
	.uleb128 0x2e
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x181
	.4byte	0xea
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x32
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x183
	.4byte	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x185
	.4byte	0x321
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LVL191
	.4byte	0x1283
	.4byte	0xf31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL193
	.4byte	0x4b3
	.4byte	0xf4b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL194
	.4byte	0x1278
	.4byte	0xf5f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL195
	.4byte	0x1283
	.4byte	0xf76
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL196
	.4byte	0x1283
	.4byte	0xf8d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL198
	.4byte	0x128e
	.4byte	0xfa4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL199
	.4byte	0xddb
	.4byte	0xfbe
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL200
	.4byte	0x1283
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x197
	.4byte	0x1a4
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x108f
	.uleb128 0x2f
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x197
	.4byte	0xea
	.4byte	.LLST60
	.uleb128 0x2e
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x197
	.4byte	0x1a4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x32
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x199
	.4byte	0x1a4
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uleb128 0x2a
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x19a
	.4byte	0x1a4
	.4byte	.LLST61
	.uleb128 0x32
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x19c
	.4byte	0x321
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2b
	.4byte	0x285
	.4byte	.LBB65
	.4byte	.LBE65-.LBB65
	.byte	0x1
	.2byte	0x19f
	.4byte	0x107e
	.uleb128 0x1d
	.4byte	0x295
	.4byte	.LLST62
	.uleb128 0x24
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.uleb128 0x25
	.4byte	0x2a0
	.4byte	.LLST63
	.uleb128 0x24
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.uleb128 0x25
	.4byte	0x2ac
	.4byte	.LLST64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL212
	.4byte	0x129d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x1a7
	.4byte	0x1a4
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10d5
	.uleb128 0x2f
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x1a7
	.4byte	0x1a4
	.4byte	.LLST65
	.uleb128 0x20
	.4byte	.LVL218
	.4byte	0xfd2
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x1a4
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1142
	.uleb128 0x2f
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x1ac
	.4byte	0xf5
	.4byte	.LLST66
	.uleb128 0x2e
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x1a4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x321
	.4byte	.LLST67
	.uleb128 0x1e
	.4byte	.LVL221
	.4byte	0x2de
	.4byte	0x1131
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL223
	.4byte	0x129d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x1b5
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11d4
	.uleb128 0x2e
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x1b5
	.4byte	0xea
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x32
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x1a4
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uleb128 0x32
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x321
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.4byte	0x285
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x11ca
	.uleb128 0x1d
	.4byte	0x295
	.4byte	.LLST68
	.uleb128 0x24
	.4byte	.LBB69
	.4byte	.LBE69-.LBB69
	.uleb128 0x25
	.4byte	0x2a0
	.4byte	.LLST69
	.uleb128 0x24
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.uleb128 0x25
	.4byte	0x2ac
	.4byte	.LLST70
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL236
	.4byte	0x12a8
	.byte	0
	.uleb128 0x35
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x1c1
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11fd
	.uleb128 0x20
	.4byte	.LVL238
	.4byte	0x1142
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x1
	.byte	0x7f
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	malloc_alwaysinternal_limit
	.uleb128 0x36
	.4byte	.LASF113
	.byte	0x3
	.byte	0x31
	.4byte	0x252
	.uleb128 0x37
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0xb
	.byte	0x29
	.uleb128 0x37
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x9
	.byte	0x29
	.uleb128 0x37
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x9
	.byte	0x32
	.uleb128 0x37
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x9
	.byte	0x3e
	.uleb128 0x37
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x9
	.byte	0x49
	.uleb128 0x38
	.4byte	.LASF100
	.4byte	.LASF100
	.uleb128 0x38
	.4byte	.LASF101
	.4byte	.LASF101
	.uleb128 0x37
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x9
	.byte	0x87
	.uleb128 0x37
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x9
	.byte	0x93
	.uleb128 0x37
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x9
	.byte	0xa7
	.uleb128 0x37
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0xc
	.byte	0xb2
	.uleb128 0x39
	.4byte	.LASF114
	.4byte	.LASF115
	.byte	0x7
	.byte	0
	.4byte	.LASF114
	.uleb128 0x37
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0x9
	.byte	0x79
	.uleb128 0x37
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0x9
	.byte	0x6d
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
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x2117
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
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x73
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x7
	.byte	0x73
	.sleb128 1073610752
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x7
	.byte	0x73
	.sleb128 1073610752
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL28
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
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x72
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x3
	.byte	0x76
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL59
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL38
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL59
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL39
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL59
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x2
	.byte	0x74
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL65
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
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL74
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL76
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL81
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL77
	.4byte	.LVL79-1
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL83
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88-1
	.2byte	0x7
	.byte	0x78
	.sleb128 1074397184
	.byte	0x9f
	.4byte	.LVL88-1
	.4byte	.LVL92
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL93
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
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL93
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL111
	.4byte	.LVL119
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL123
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL101
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL121
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL107
	.4byte	.LVL108-1
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL111
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL123
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL102
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL121
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL103
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL103
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL125
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
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL135
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL137
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL145
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL137
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL139
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL144
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL142
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL140
	.4byte	.LVL142-1
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL146
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL150
	.4byte	.LVL152
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL153
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL147
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL150
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL148
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL154
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL162
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL154
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL156
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL161
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL156
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL159
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL157
	.4byte	.LVL159-1
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL163
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL171
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL164
	.4byte	.LVL166
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL166
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL172
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL180
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL173
	.4byte	.LVL175
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL175
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL187
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL189
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL201
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL203
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL202
	.4byte	.LVL205
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL214
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL206
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL207
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL207
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL217
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL219
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL220
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL224
	.4byte	.LVL225
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL225
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL226
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL221
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL225
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL230
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL231
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL231
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xcc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
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
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	0
	.4byte	0
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	0
	.4byte	0
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	0
	.4byte	0
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	0
	.4byte	0
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	0
	.4byte	0
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	0
	.4byte	0
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB35
	.4byte	.LFE35
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
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF61:
	.string	"heap_caps_malloc"
.LASF88:
	.string	"print_errors"
.LASF90:
	.string	"valid"
.LASF77:
	.string	"result"
.LASF54:
	.string	"addr"
.LASF44:
	.string	"heap_t"
.LASF75:
	.string	"heap_caps_realloc_prefer"
.LASF97:
	.string	"multi_heap_free"
.LASF43:
	.string	"next"
.LASF47:
	.string	"esp_ptr_in_diram_dram"
.LASF74:
	.string	"heap_caps_realloc_default"
.LASF5:
	.string	"size_t"
.LASF12:
	.string	"sizetype"
.LASF113:
	.string	"registered_heaps"
.LASF53:
	.string	"dram_alloc_to_iram_addr"
.LASF18:
	.string	"__va_ndx"
.LASF58:
	.string	"istart"
.LASF6:
	.string	"__uint32_t"
.LASF51:
	.string	"esp_ptr_in_diram_iram"
.LASF73:
	.string	"old_size"
.LASF31:
	.string	"va_list"
.LASF37:
	.string	"__va_list_tag"
.LASF65:
	.string	"heap_caps_malloc_prefer"
.LASF25:
	.string	"largest_free_block"
.LASF104:
	.string	"multi_heap_get_info"
.LASF100:
	.string	"memcpy"
.LASF67:
	.string	"heap_caps_malloc_extmem_enable"
.LASF9:
	.string	"__intptr_t"
.LASF21:
	.string	"uintptr_t"
.LASF102:
	.string	"multi_heap_free_size"
.LASF94:
	.string	"malloc_alwaysinternal_limit"
.LASF42:
	.string	"heap"
.LASF78:
	.string	"size_bytes"
.LASF4:
	.string	"short int"
.LASF20:
	.string	"intptr_t"
.LASF24:
	.string	"total_allocated_bytes"
.LASF7:
	.string	"long long int"
.LASF28:
	.string	"free_blocks"
.LASF59:
	.string	"iptr"
.LASF63:
	.string	"limit"
.LASF68:
	.string	"heap_caps_free"
.LASF48:
	.string	"get_all_caps"
.LASF101:
	.string	"memset"
.LASF11:
	.string	"long int"
.LASF55:
	.string	"dstart"
.LASF82:
	.string	"heap_caps_get_info"
.LASF105:
	.string	"printf"
.LASF60:
	.string	"heap_caps_match"
.LASF107:
	.string	"multi_heap_dump"
.LASF86:
	.string	"heap_caps_print_heap_info"
.LASF3:
	.string	"unsigned char"
.LASF39:
	.string	"caps"
.LASF81:
	.string	"heap_caps_get_minimum_free_size"
.LASF98:
	.string	"multi_heap_realloc"
.LASF106:
	.string	"multi_heap_check"
.LASF57:
	.string	"__func__"
.LASF33:
	.string	"owner"
.LASF23:
	.string	"total_free_bytes"
.LASF103:
	.string	"multi_heap_minimum_free_size"
.LASF108:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF87:
	.string	"heap_caps_check_integrity"
.LASF2:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF99:
	.string	"multi_heap_get_allocated_size"
.LASF112:
	.string	"heap_caps_dump_all"
.LASF35:
	.string	"portMUX_TYPE"
.LASF70:
	.string	"heap_caps_realloc"
.LASF0:
	.string	"unsigned int"
.LASF49:
	.string	"all_caps"
.LASF66:
	.string	"argp"
.LASF45:
	.string	"registered_heap_ll"
.LASF76:
	.string	"heap_caps_calloc"
.LASF69:
	.string	"dramAddrPtr"
.LASF114:
	.string	"puts"
.LASF46:
	.string	"slh_first"
.LASF16:
	.string	"__va_stk"
.LASF40:
	.string	"start"
.LASF1:
	.string	"short unsigned int"
.LASF62:
	.string	"size"
.LASF38:
	.string	"heap_t_"
.LASF14:
	.string	"char"
.LASF109:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/heap/heap_caps.c"
.LASF26:
	.string	"minimum_free_bytes"
.LASF56:
	.string	"dend"
.LASF93:
	.string	"heap_caps_dump"
.LASF84:
	.string	"hinfo"
.LASF32:
	.string	"_Bool"
.LASF30:
	.string	"multi_heap_info_t"
.LASF96:
	.string	"multi_heap_malloc"
.LASF22:
	.string	"multi_heap_handle_t"
.LASF19:
	.string	"uint32_t"
.LASF41:
	.string	"heap_mux"
.LASF13:
	.string	"long unsigned int"
.LASF10:
	.string	"__uintptr_t"
.LASF27:
	.string	"allocated_blocks"
.LASF79:
	.string	"heap_caps_calloc_prefer"
.LASF36:
	.string	"sle_next"
.LASF29:
	.string	"total_blocks"
.LASF34:
	.string	"count"
.LASF83:
	.string	"info"
.LASF72:
	.string	"new_p"
.LASF52:
	.string	"find_containing_heap"
.LASF110:
	.string	"/home/raphael/rtone/lcd/build/heap"
.LASF15:
	.string	"__gnuc_va_list"
.LASF17:
	.string	"__va_reg"
.LASF64:
	.string	"heap_caps_malloc_default"
.LASF115:
	.string	"__builtin_puts"
.LASF91:
	.string	"heap_caps_check_integrity_all"
.LASF95:
	.string	"__assert_func"
.LASF89:
	.string	"all_heaps"
.LASF71:
	.string	"compatible_caps"
.LASF92:
	.string	"heap_caps_check_integrity_addr"
.LASF50:
	.string	"prio"
.LASF111:
	.string	"multi_heap_info"
.LASF80:
	.string	"heap_caps_get_free_size"
.LASF85:
	.string	"heap_caps_get_largest_free_block"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
