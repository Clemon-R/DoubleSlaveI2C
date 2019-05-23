	.file	"freertos_hooks.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, tick_cb
	.align	4
	.global	esp_vApplicationTickHook
	.type	esp_vApplicationTickHook, @function
esp_vApplicationTickHook:
.LFB19:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/freertos_hooks.c"
	.loc 1 36 0
	entry	sp, 32
.LCFI0:
.LBB11:
.LBB12:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL0:
#NO_APP
.LBE12:
.LBE11:
	.loc 1 39 0
	movi.n	a2, 0
	j	.L2
.LVL1:
.L4:
	.loc 1 40 0
	addx8	a8, a3, a2
	l32r	a9, .LC0
	addx4	a8, a8, a9
	l32i.n	a8, a8, 0
	beqz.n	a8, .L3
	.loc 1 41 0
	callx8	a8
.LVL2:
.L3:
	.loc 1 39 0 discriminator 2
	addi.n	a2, a2, 1
.LVL3:
.L2:
	.loc 1 39 0 is_stmt 0 discriminator 1
	blti	a2, 8, .L4
	.loc 1 44 0 is_stmt 1
	retw.n
.LFE19:
	.size	esp_vApplicationTickHook, .-esp_vApplicationTickHook
	.section	.text.esp_vApplicationIdleHook,"ax",@progbits
	.literal_position
	.literal .LC1, idle_cb
	.align	4
	.global	esp_vApplicationIdleHook
	.type	esp_vApplicationIdleHook, @function
esp_vApplicationIdleHook:
.LFB20:
	.loc 1 47 0
	entry	sp, 32
.LCFI1:
.LVL4:
.LBB13:
.LBB14:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL5:
#NO_APP
.LBE14:
.LBE13:
.LBB15:
	.loc 1 50 0
	movi.n	a2, 0
.LBE15:
	.loc 1 48 0
	movi.n	a4, 1
.LBB16:
	.loc 1 50 0
	j	.L6
.LVL6:
.L8:
	.loc 1 51 0
	addx8	a8, a3, a2
	l32r	a9, .LC1
	addx4	a8, a8, a9
	l32i.n	a10, a8, 0
	beqz.n	a10, .L7
	.loc 1 51 0 discriminator 1
	callx8	a10
.LVL7:
	bnez.n	a10, .L7
	.loc 1 52 0
	movi.n	a4, 0
.LVL8:
.L7:
	.loc 1 50 0 discriminator 2
	addi.n	a2, a2, 1
.LVL9:
.L6:
	.loc 1 50 0 is_stmt 0 discriminator 1
	blti	a2, 8, .L8
.LBE16:
	.loc 1 55 0 is_stmt 1
	beqz.n	a4, .L5
	.loc 1 63 0
	call8	esp_pm_impl_waiti
.LVL10:
.L5:
	retw.n
.LFE20:
	.size	esp_vApplicationIdleHook, .-esp_vApplicationIdleHook
	.section	.text.esp_register_freertos_idle_hook_for_cpu,"ax",@progbits
	.literal_position
	.literal .LC2, hooks_spinlock
	.literal .LC3, idle_cb
	.align	4
	.global	esp_register_freertos_idle_hook_for_cpu
	.type	esp_register_freertos_idle_hook_for_cpu, @function
esp_register_freertos_idle_hook_for_cpu:
.LFB21:
	.loc 1 67 0
.LVL11:
	entry	sp, 32
.LCFI2:
	.loc 1 68 0
	bgeui	a3, 2, .L16
	.loc 1 71 0
	l32r	a10, .LC2
	call8	vTaskEnterCritical
.LVL12:
.LBB17:
	.loc 1 72 0
	movi.n	a9, 0
	j	.L13
.LVL13:
.L15:
	.loc 1 73 0
	addx8	a8, a3, a9
	l32r	a10, .LC3
	addx4	a8, a8, a10
	l32i.n	a8, a8, 0
	bnez.n	a8, .L14
	.loc 1 74 0
	addx8	a3, a3, a9
.LVL14:
	addx4	a3, a3, a10
	s32i.n	a2, a3, 0
	.loc 1 75 0
	l32r	a10, .LC2
	call8	vTaskExitCritical
.LVL15:
	.loc 1 76 0
	movi.n	a2, 0
.LVL16:
	retw.n
.LVL17:
.L14:
	.loc 1 72 0 discriminator 2
	addi.n	a9, a9, 1
.LVL18:
.L13:
	.loc 1 72 0 is_stmt 0 discriminator 1
	blti	a9, 8, .L15
.LBE17:
	.loc 1 79 0 is_stmt 1
	l32r	a10, .LC2
	call8	vTaskExitCritical
.LVL19:
	.loc 1 80 0
	movi	a2, 0x101
.LVL20:
	retw.n
.LVL21:
.L16:
	.loc 1 69 0
	movi	a2, 0x102
.LVL22:
	.loc 1 81 0
	retw.n
.LFE21:
	.size	esp_register_freertos_idle_hook_for_cpu, .-esp_register_freertos_idle_hook_for_cpu
	.section	.text.esp_register_freertos_idle_hook,"ax",@progbits
	.align	4
	.global	esp_register_freertos_idle_hook
	.type	esp_register_freertos_idle_hook, @function
esp_register_freertos_idle_hook:
.LFB22:
	.loc 1 84 0
.LVL23:
	entry	sp, 32
.LCFI3:
	mov.n	a10, a2
.LBB18:
.LBB19:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a11
 extui a11,a11,13,1
# 0 "" 2
.LVL24:
#NO_APP
.LBE19:
.LBE18:
	.loc 1 85 0
	call8	esp_register_freertos_idle_hook_for_cpu
.LVL25:
	.loc 1 86 0
	mov.n	a2, a10
.LVL26:
	retw.n
.LFE22:
	.size	esp_register_freertos_idle_hook, .-esp_register_freertos_idle_hook
	.section	.text.esp_register_freertos_tick_hook_for_cpu,"ax",@progbits
	.literal_position
	.literal .LC4, hooks_spinlock
	.literal .LC5, tick_cb
	.align	4
	.global	esp_register_freertos_tick_hook_for_cpu
	.type	esp_register_freertos_tick_hook_for_cpu, @function
esp_register_freertos_tick_hook_for_cpu:
.LFB23:
	.loc 1 89 0
.LVL27:
	entry	sp, 32
.LCFI4:
	.loc 1 90 0
	bgeui	a3, 2, .L23
	.loc 1 93 0
	l32r	a10, .LC4
	call8	vTaskEnterCritical
.LVL28:
.LBB20:
	.loc 1 94 0
	movi.n	a9, 0
	j	.L20
.LVL29:
.L22:
	.loc 1 95 0
	addx8	a8, a3, a9
	l32r	a10, .LC5
	addx4	a8, a8, a10
	l32i.n	a8, a8, 0
	bnez.n	a8, .L21
	.loc 1 96 0
	addx8	a3, a3, a9
.LVL30:
	addx4	a3, a3, a10
	s32i.n	a2, a3, 0
	.loc 1 97 0
	l32r	a10, .LC4
	call8	vTaskExitCritical
.LVL31:
	.loc 1 98 0
	movi.n	a2, 0
.LVL32:
	retw.n
.LVL33:
.L21:
	.loc 1 94 0 discriminator 2
	addi.n	a9, a9, 1
.LVL34:
.L20:
	.loc 1 94 0 is_stmt 0 discriminator 1
	blti	a9, 8, .L22
.LBE20:
	.loc 1 101 0 is_stmt 1
	l32r	a10, .LC4
	call8	vTaskExitCritical
.LVL35:
	.loc 1 102 0
	movi	a2, 0x101
.LVL36:
	retw.n
.LVL37:
.L23:
	.loc 1 91 0
	movi	a2, 0x102
.LVL38:
	.loc 1 103 0
	retw.n
.LFE23:
	.size	esp_register_freertos_tick_hook_for_cpu, .-esp_register_freertos_tick_hook_for_cpu
	.section	.text.esp_register_freertos_tick_hook,"ax",@progbits
	.align	4
	.global	esp_register_freertos_tick_hook
	.type	esp_register_freertos_tick_hook, @function
esp_register_freertos_tick_hook:
.LFB24:
	.loc 1 106 0
.LVL39:
	entry	sp, 32
.LCFI5:
	mov.n	a10, a2
.LBB21:
.LBB22:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a11
 extui a11,a11,13,1
# 0 "" 2
.LVL40:
#NO_APP
.LBE22:
.LBE21:
	.loc 1 107 0
	call8	esp_register_freertos_tick_hook_for_cpu
.LVL41:
	.loc 1 108 0
	mov.n	a2, a10
.LVL42:
	retw.n
.LFE24:
	.size	esp_register_freertos_tick_hook, .-esp_register_freertos_tick_hook
	.section	.text.esp_deregister_freertos_idle_hook_for_cpu,"ax",@progbits
	.literal_position
	.literal .LC6, hooks_spinlock
	.literal .LC7, idle_cb
	.align	4
	.global	esp_deregister_freertos_idle_hook_for_cpu
	.type	esp_deregister_freertos_idle_hook_for_cpu, @function
esp_deregister_freertos_idle_hook_for_cpu:
.LFB25:
	.loc 1 111 0
.LVL43:
	entry	sp, 32
.LCFI6:
	.loc 1 112 0
	l32r	a10, .LC6
	call8	vTaskEnterCritical
.LVL44:
	.loc 1 113 0
	bgeui	a3, 2, .L25
	movi.n	a9, 0
	j	.L27
.LVL45:
.L29:
.LBB23:
	.loc 1 117 0
	addx8	a8, a3, a9
	l32r	a10, .LC7
	addx4	a8, a8, a10
	l32i.n	a8, a8, 0
	bne	a8, a2, .L28
	.loc 1 117 0 is_stmt 0 discriminator 1
	addx8	a8, a3, a9
	addx4	a8, a8, a10
	movi.n	a10, 0
	s32i.n	a10, a8, 0
.L28:
	.loc 1 116 0 is_stmt 1 discriminator 2
	addi.n	a9, a9, 1
.LVL46:
.L27:
	.loc 1 116 0 is_stmt 0 discriminator 1
	blti	a9, 8, .L29
.LBE23:
	.loc 1 119 0 is_stmt 1
	l32r	a10, .LC6
	call8	vTaskExitCritical
.LVL47:
.L25:
	retw.n
.LFE25:
	.size	esp_deregister_freertos_idle_hook_for_cpu, .-esp_deregister_freertos_idle_hook_for_cpu
	.section	.text.esp_deregister_freertos_idle_hook,"ax",@progbits
	.literal_position
	.literal .LC8, hooks_spinlock
	.align	4
	.global	esp_deregister_freertos_idle_hook
	.type	esp_deregister_freertos_idle_hook, @function
esp_deregister_freertos_idle_hook:
.LFB26:
	.loc 1 123 0
.LVL48:
	entry	sp, 32
.LCFI7:
	.loc 1 124 0
	l32r	a10, .LC8
	call8	vTaskEnterCritical
.LVL49:
.LBB24:
	.loc 1 125 0
	movi.n	a3, 0
	j	.L31
.LVL50:
.L32:
	.loc 1 126 0 discriminator 3
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_deregister_freertos_idle_hook_for_cpu
.LVL51:
	.loc 1 125 0 discriminator 3
	addi.n	a3, a3, 1
.LVL52:
.L31:
	.loc 1 125 0 is_stmt 0 discriminator 1
	blti	a3, 2, .L32
.LBE24:
	.loc 1 128 0 is_stmt 1
	l32r	a10, .LC8
	call8	vTaskExitCritical
.LVL53:
	retw.n
.LFE26:
	.size	esp_deregister_freertos_idle_hook, .-esp_deregister_freertos_idle_hook
	.section	.text.esp_deregister_freertos_tick_hook_for_cpu,"ax",@progbits
	.literal_position
	.literal .LC9, hooks_spinlock
	.literal .LC10, tick_cb
	.align	4
	.global	esp_deregister_freertos_tick_hook_for_cpu
	.type	esp_deregister_freertos_tick_hook_for_cpu, @function
esp_deregister_freertos_tick_hook_for_cpu:
.LFB27:
	.loc 1 132 0
.LVL54:
	entry	sp, 32
.LCFI8:
	.loc 1 133 0
	l32r	a10, .LC9
	call8	vTaskEnterCritical
.LVL55:
	.loc 1 134 0
	bgeui	a3, 2, .L33
	movi.n	a9, 0
	j	.L35
.LVL56:
.L37:
.LBB25:
	.loc 1 138 0
	addx8	a8, a3, a9
	l32r	a10, .LC10
	addx4	a8, a8, a10
	l32i.n	a8, a8, 0
	bne	a8, a2, .L36
	.loc 1 138 0 is_stmt 0 discriminator 1
	addx8	a8, a3, a9
	addx4	a8, a8, a10
	movi.n	a10, 0
	s32i.n	a10, a8, 0
.L36:
	.loc 1 137 0 is_stmt 1 discriminator 2
	addi.n	a9, a9, 1
.LVL57:
.L35:
	.loc 1 137 0 is_stmt 0 discriminator 1
	blti	a9, 8, .L37
.LBE25:
	.loc 1 140 0 is_stmt 1
	l32r	a10, .LC9
	call8	vTaskExitCritical
.LVL58:
.L33:
	retw.n
.LFE27:
	.size	esp_deregister_freertos_tick_hook_for_cpu, .-esp_deregister_freertos_tick_hook_for_cpu
	.section	.text.esp_deregister_freertos_tick_hook,"ax",@progbits
	.literal_position
	.literal .LC11, hooks_spinlock
	.align	4
	.global	esp_deregister_freertos_tick_hook
	.type	esp_deregister_freertos_tick_hook, @function
esp_deregister_freertos_tick_hook:
.LFB28:
	.loc 1 144 0
.LVL59:
	entry	sp, 32
.LCFI9:
	.loc 1 145 0
	l32r	a10, .LC11
	call8	vTaskEnterCritical
.LVL60:
.LBB26:
	.loc 1 146 0
	movi.n	a3, 0
	j	.L39
.LVL61:
.L40:
	.loc 1 147 0 discriminator 3
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_deregister_freertos_tick_hook_for_cpu
.LVL62:
	.loc 1 146 0 discriminator 3
	addi.n	a3, a3, 1
.LVL63:
.L39:
	.loc 1 146 0 is_stmt 0 discriminator 1
	blti	a3, 2, .L40
.LBE26:
	.loc 1 149 0 is_stmt 1
	l32r	a10, .LC11
	call8	vTaskExitCritical
.LVL64:
	retw.n
.LFE28:
	.size	esp_deregister_freertos_tick_hook, .-esp_deregister_freertos_tick_hook
	.section	.bss.tick_cb,"aw",@nobits
	.align	4
	.type	tick_cb, @object
	.size	tick_cb, 64
tick_cb:
	.zero	64
	.section	.bss.idle_cb,"aw",@nobits
	.align	4
	.type	idle_cb, @object
	.size	idle_cb, 64
idle_cb:
	.zero	64
	.section	.data.hooks_spinlock,"aw",@progbits
	.align	4
	.type	hooks_spinlock, @object
	.size	hooks_spinlock, 8
hooks_spinlock:
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI0-.LFB19
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
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI6-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI7-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI8-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI9-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_freertos_hooks.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/pm_impl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x648
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0xc
	.4byte	.LASF47
	.4byte	.LASF48
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x1a
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x2d
	.4byte	0x53
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
	.4byte	0xac
	.uleb128 0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x18
	.4byte	0x73
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x70
	.4byte	0x5e
	.uleb128 0x7
	.byte	0x8
	.byte	0x6
	.byte	0x82
	.4byte	0xea
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x6
	.byte	0x8a
	.4byte	0x7e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x6
	.byte	0x8f
	.4byte	0x7e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x94
	.4byte	0xc9
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x7
	.byte	0x1d
	.4byte	0x100
	.uleb128 0x9
	.byte	0x4
	.4byte	0x106
	.uleb128 0xa
	.4byte	0xb7
	.4byte	0x111
	.uleb128 0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0x1e
	.4byte	0x11c
	.uleb128 0x9
	.byte	0x4
	.4byte	0xa5
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x2
	.byte	0xce
	.4byte	0x7e
	.byte	0x3
	.4byte	0x13d
	.uleb128 0xc
	.string	"id"
	.byte	0x2
	.byte	0xcf
	.4byte	0x4c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x23
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18e
	.uleb128 0xe
	.string	"n"
	.byte	0x1
	.byte	0x25
	.4byte	0x4c
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x1
	.byte	0x26
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	0x122
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.byte	0x1
	.byte	0x26
	.uleb128 0x11
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x12
	.4byte	0x132
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0x2e
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x205
	.uleb128 0x13
	.4byte	.LASF26
	.byte	0x1
	.byte	0x30
	.4byte	0xb7
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x1
	.byte	0x31
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.4byte	0x122
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.byte	0x1
	.byte	0x31
	.4byte	0x1e4
	.uleb128 0x11
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x12
	.4byte	0x132
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.Ldebug_ranges0+0
	.4byte	0x1fb
	.uleb128 0xe
	.string	"n"
	.byte	0x1
	.byte	0x32
	.4byte	0x4c
	.4byte	.LLST2
	.byte	0
	.uleb128 0x16
	.4byte	.LVL10
	.4byte	0x62a
	.byte	0
	.uleb128 0x17
	.4byte	.LASF29
	.byte	0x1
	.byte	0x42
	.4byte	0xac
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x295
	.uleb128 0x18
	.4byte	.LASF27
	.byte	0x1
	.byte	0x42
	.4byte	0xf5
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LASF28
	.byte	0x1
	.byte	0x42
	.4byte	0xbe
	.4byte	.LLST4
	.uleb128 0x19
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x26a
	.uleb128 0xe
	.string	"n"
	.byte	0x1
	.byte	0x48
	.4byte	0x4c
	.4byte	.LLST5
	.uleb128 0x1a
	.4byte	.LVL15
	.4byte	0x635
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL12
	.4byte	0x640
	.4byte	0x281
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL19
	.4byte	0x635
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF30
	.byte	0x1
	.byte	0x53
	.4byte	0xac
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f5
	.uleb128 0x18
	.4byte	.LASF27
	.byte	0x1
	.byte	0x53
	.4byte	0xf5
	.4byte	.LLST6
	.uleb128 0x14
	.4byte	0x122
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0x55
	.4byte	0x2e4
	.uleb128 0x11
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x1d
	.4byte	0x132
	.4byte	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL25
	.4byte	0x205
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF31
	.byte	0x1
	.byte	0x58
	.4byte	0xac
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x385
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x1
	.byte	0x58
	.4byte	0x111
	.4byte	.LLST8
	.uleb128 0x18
	.4byte	.LASF28
	.byte	0x1
	.byte	0x58
	.4byte	0xbe
	.4byte	.LLST9
	.uleb128 0x19
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x35a
	.uleb128 0xe
	.string	"n"
	.byte	0x1
	.byte	0x5e
	.4byte	0x4c
	.4byte	.LLST10
	.uleb128 0x1a
	.4byte	.LVL31
	.4byte	0x635
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL28
	.4byte	0x640
	.4byte	0x371
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL35
	.4byte	0x635
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF33
	.byte	0x1
	.byte	0x69
	.4byte	0xac
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e5
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x1
	.byte	0x69
	.4byte	0x111
	.4byte	.LLST11
	.uleb128 0x14
	.4byte	0x122
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.byte	0x1
	.byte	0x6b
	.4byte	0x3d4
	.uleb128 0x11
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x1d
	.4byte	0x132
	.4byte	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL41
	.4byte	0x2f5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF34
	.byte	0x1
	.byte	0x6e
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x45a
	.uleb128 0x1f
	.4byte	.LASF35
	.byte	0x1
	.byte	0x6e
	.4byte	0xf5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF28
	.byte	0x1
	.byte	0x6e
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.4byte	0x42f
	.uleb128 0xe
	.string	"n"
	.byte	0x1
	.byte	0x74
	.4byte	0x4c
	.4byte	.LLST13
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL44
	.4byte	0x640
	.4byte	0x446
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL47
	.4byte	0x635
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF36
	.byte	0x1
	.byte	0x7a
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d8
	.uleb128 0x1f
	.4byte	.LASF35
	.byte	0x1
	.byte	0x7a
	.4byte	0xf5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x4ad
	.uleb128 0xe
	.string	"m"
	.byte	0x1
	.byte	0x7d
	.4byte	0x4c
	.4byte	.LLST14
	.uleb128 0x1a
	.4byte	.LVL51
	.4byte	0x3e5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL49
	.4byte	0x640
	.4byte	0x4c4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL53
	.4byte	0x635
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF37
	.byte	0x1
	.byte	0x83
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54d
	.uleb128 0x1f
	.4byte	.LASF38
	.byte	0x1
	.byte	0x83
	.4byte	0x111
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF28
	.byte	0x1
	.byte	0x83
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0x522
	.uleb128 0xe
	.string	"n"
	.byte	0x1
	.byte	0x89
	.4byte	0x4c
	.4byte	.LLST15
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL55
	.4byte	0x640
	.4byte	0x539
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL58
	.4byte	0x635
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF39
	.byte	0x1
	.byte	0x8f
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5cb
	.uleb128 0x1f
	.4byte	.LASF38
	.byte	0x1
	.byte	0x8f
	.4byte	0x111
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.4byte	0x5a0
	.uleb128 0xe
	.string	"m"
	.byte	0x1
	.byte	0x92
	.4byte	0x4c
	.4byte	.LLST16
	.uleb128 0x1a
	.4byte	.LVL62
	.4byte	0x4d8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL60
	.4byte	0x640
	.4byte	0x5b7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL64
	.4byte	0x635
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x1f
	.4byte	0xea
	.uleb128 0x5
	.byte	0x3
	.4byte	hooks_spinlock
	.uleb128 0x20
	.4byte	0xf5
	.4byte	0x5f2
	.uleb128 0x21
	.4byte	0x90
	.byte	0x1
	.uleb128 0x21
	.4byte	0x90
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x1
	.byte	0x20
	.4byte	0x5dc
	.uleb128 0x5
	.byte	0x3
	.4byte	idle_cb
	.uleb128 0x20
	.4byte	0x111
	.4byte	0x619
	.uleb128 0x21
	.4byte	0x90
	.byte	0x1
	.uleb128 0x21
	.4byte	0x90
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x1
	.byte	0x21
	.4byte	0x603
	.uleb128 0x5
	.byte	0x3
	.4byte	tick_cb
	.uleb128 0x22
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x8
	.byte	0x6e
	.uleb128 0x22
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x6
	.byte	0xd9
	.uleb128 0x22
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x6
	.byte	0xda
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x18
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL17
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL27
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
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
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL33
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL45
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL56
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x53
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
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
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	0
	.4byte	0
	.4byte	.LFB19
	.4byte	.LFE19
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
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"can_go_idle"
.LASF38:
	.string	"old_tick_cb"
.LASF27:
	.string	"new_idle_cb"
.LASF34:
	.string	"esp_deregister_freertos_idle_hook_for_cpu"
.LASF35:
	.string	"old_idle_cb"
.LASF44:
	.string	"vTaskExitCritical"
.LASF20:
	.string	"portMUX_TYPE"
.LASF24:
	.string	"esp_vApplicationTickHook"
.LASF4:
	.string	"__int32_t"
.LASF22:
	.string	"esp_freertos_tick_cb_t"
.LASF25:
	.string	"esp_vApplicationIdleHook"
.LASF30:
	.string	"esp_register_freertos_idle_hook"
.LASF46:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF39:
	.string	"esp_deregister_freertos_tick_hook"
.LASF48:
	.string	"/home/raphael/rtone/lcd/build/esp32"
.LASF1:
	.string	"unsigned char"
.LASF13:
	.string	"long unsigned int"
.LASF37:
	.string	"esp_deregister_freertos_tick_hook_for_cpu"
.LASF3:
	.string	"short unsigned int"
.LASF42:
	.string	"tick_cb"
.LASF31:
	.string	"esp_register_freertos_tick_hook_for_cpu"
.LASF43:
	.string	"esp_pm_impl_waiti"
.LASF15:
	.string	"esp_err_t"
.LASF5:
	.string	"__uint32_t"
.LASF45:
	.string	"vTaskEnterCritical"
.LASF18:
	.string	"owner"
.LASF28:
	.string	"cpuid"
.LASF6:
	.string	"unsigned int"
.LASF33:
	.string	"esp_register_freertos_tick_hook"
.LASF14:
	.string	"char"
.LASF47:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/freertos_hooks.c"
.LASF21:
	.string	"esp_freertos_idle_cb_t"
.LASF40:
	.string	"hooks_spinlock"
.LASF17:
	.string	"UBaseType_t"
.LASF32:
	.string	"new_tick_cb"
.LASF9:
	.string	"int32_t"
.LASF12:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF29:
	.string	"esp_register_freertos_idle_hook_for_cpu"
.LASF49:
	.string	"xPortGetCoreID"
.LASF41:
	.string	"idle_cb"
.LASF19:
	.string	"count"
.LASF2:
	.string	"short int"
.LASF10:
	.string	"uint32_t"
.LASF11:
	.string	"long int"
.LASF36:
	.string	"esp_deregister_freertos_idle_hook"
.LASF23:
	.string	"core"
.LASF0:
	.string	"signed char"
.LASF16:
	.string	"_Bool"
.LASF8:
	.string	"long long unsigned int"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
