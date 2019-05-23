	.file	"ipc.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"cpuid == xPortGetCoreID()"
	.align	4
.LC3:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/ipc.c"
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$5362
	.literal .LC4, .LC3
	.literal .LC5, s_ipc_sem
	.literal .LC6, s_func
	.literal .LC7, s_func_arg
	.literal .LC8, s_ipc_wait
	.literal .LC9, s_ipc_ack
	.align	4
	.type	ipc_task, @function
ipc_task:
.LFB20:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/ipc.c"
	.loc 1 44 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
.LBB5:
.LBB6:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL2:
#NO_APP
.LBE6:
.LBE5:
	.loc 1 46 0
	beq	a2, a3, .L5
	.loc 1 46 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi.n	a11, 0x2e
	l32r	a10, .LC4
	call8	__assert_func
.LVL3:
.L5:
.LBB7:
	.loc 1 51 0 is_stmt 1
	l32r	a8, .LC5
	addx4	a8, a2, a8
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32i.n	a10, a8, 0
	call8	xQueueGenericReceive
.LVL4:
	beqi	a10, 1, .L3
	.loc 1 53 0
	call8	abort
.LVL5:
.L3:
	.loc 1 56 0
	l32r	a3, .LC6
	memw
	l32i.n	a3, a3, 0
.LVL6:
	.loc 1 57 0
	l32r	a4, .LC7
	memw
	l32i.n	a4, a4, 0
.LVL7:
	.loc 1 59 0
	l32r	a8, .LC8
	memw
	l32i.n	a8, a8, 0
	bnez.n	a8, .L4
	.loc 1 60 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32r	a8, .LC9
	l32i.n	a10, a8, 0
	call8	xQueueGenericSend
.LVL8:
.L4:
	.loc 1 62 0
	mov.n	a10, a4
	callx8	a3
.LVL9:
	.loc 1 63 0
	l32r	a8, .LC8
	memw
	l32i.n	a8, a8, 0
	bnei	a8, 1, .L5
	.loc 1 64 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32r	a3, .LC9
.LVL10:
	l32i.n	a10, a3, 0
	call8	xQueueGenericSend
.LVL11:
	j	.L5
.LBE7:
.LFE20:
	.size	ipc_task, .-ipc_task
	.section	.text.esp_ipc_call_and_wait,"ax",@progbits
	.literal_position
	.literal .LC10, s_ipc_mutex
	.literal .LC11, s_func
	.literal .LC12, s_func_arg
	.literal .LC13, s_ipc_wait
	.literal .LC14, s_ipc_sem
	.literal .LC15, s_ipc_ack
	.align	4
	.type	esp_ipc_call_and_wait, @function
esp_ipc_call_and_wait:
.LFB22:
	.loc 1 102 0
.LVL12:
	entry	sp, 32
.LCFI1:
	.loc 1 103 0
	bgeui	a2, 2, .L8
	.loc 1 106 0
	call8	xTaskGetSchedulerState
.LVL13:
	bnei	a10, 2, .L9
	.loc 1 110 0
	l32r	a6, .LC10
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32i.n	a10, a6, 0
	call8	xQueueGenericReceive
.LVL14:
	.loc 1 112 0
	l32r	a8, .LC11
	memw
	s32i.n	a3, a8, 0
	.loc 1 113 0
	l32r	a3, .LC12
.LVL15:
	memw
	s32i.n	a4, a3, 0
.LVL16:
	.loc 1 114 0
	l32r	a3, .LC13
	memw
	s32i.n	a5, a3, 0
	.loc 1 115 0
	l32r	a3, .LC14
	addx4	a2, a2, a3
.LVL17:
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32i.n	a10, a2, 0
	call8	xQueueGenericSend
.LVL18:
	.loc 1 116 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32r	a2, .LC15
	l32i.n	a10, a2, 0
	call8	xQueueGenericReceive
.LVL19:
	.loc 1 117 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32i.n	a10, a6, 0
	call8	xQueueGenericSend
.LVL20:
	.loc 1 118 0
	movi.n	a2, 0
	retw.n
.LVL21:
.L8:
	.loc 1 104 0
	movi	a2, 0x102
.LVL22:
	retw.n
.LVL23:
.L9:
	.loc 1 107 0
	movi	a2, 0x103
.LVL24:
	.loc 1 119 0
	retw.n
.LFE22:
	.size	esp_ipc_call_and_wait, .-esp_ipc_call_and_wait
	.section	.rodata.str1.4
	.align	4
.LC18:
	.string	"ipc%d"
	.align	4
.LC22:
	.string	"res == pdTRUE"
	.section	.text.esp_ipc_init,"ax",@progbits
	.literal_position
	.literal .LC16, s_ipc_mutex
	.literal .LC17, s_ipc_ack
	.literal .LC19, .LC18
	.literal .LC20, s_ipc_sem
	.literal .LC21, ipc_task
	.literal .LC23, .LC22
	.literal .LC24, __func__$5372
	.literal .LC25, .LC3
	.align	4
	.type	esp_ipc_init, @function
esp_ipc_init:
.LFB21:
	.loc 1 88 0
	entry	sp, 64
.LCFI2:
	.loc 1 89 0
	movi.n	a10, 1
	call8	xQueueCreateMutex
.LVL25:
	l32r	a2, .LC16
	s32i.n	a10, a2, 0
	.loc 1 90 0
	movi.n	a12, 3
	movi.n	a11, 0
	movi.n	a10, 1
	call8	xQueueGenericCreate
.LVL26:
	l32r	a2, .LC17
	s32i.n	a10, a2, 0
.LVL27:
.LBB8:
	.loc 1 92 0
	movi.n	a2, 0
	j	.L11
.LVL28:
.L13:
.LBB9:
	.loc 1 93 0
	mov.n	a13, a2
	l32r	a12, .LC19
	movi.n	a11, 0xf
	addi	a10, sp, 16
	call8	snprintf
.LVL29:
	.loc 1 94 0
	movi.n	a12, 3
	movi.n	a11, 0
	movi.n	a10, 1
	call8	xQueueGenericCreate
.LVL30:
	l32r	a8, .LC20
	addx4	a8, a2, a8
	s32i.n	a10, a8, 0
	.loc 1 95 0
	s32i.n	a2, sp, 0
	movi.n	a15, 0
	movi.n	a14, 0x18
	mov.n	a13, a2
	movi	a12, 0x400
	addi	a11, sp, 16
	l32r	a10, .LC21
	call8	xTaskCreatePinnedToCore
.LVL31:
	.loc 1 97 0
	beqi	a10, 1, .L12
	.loc 1 97 0 is_stmt 0 discriminator 1
	l32r	a13, .LC23
	l32r	a12, .LC24
	movi	a11, 0x61
	l32r	a10, .LC25
.LVL32:
	call8	__assert_func
.LVL33:
.L12:
.LBE9:
	.loc 1 92 0 is_stmt 1 discriminator 2
	addi.n	a2, a2, 1
.LVL34:
.L11:
	.loc 1 92 0 is_stmt 0 discriminator 1
	blti	a2, 2, .L13
.LBE8:
	.loc 1 99 0 is_stmt 1
	retw.n
.LFE21:
	.size	esp_ipc_init, .-esp_ipc_init
	.section	.ctors,"aw",@progbits
	.align	4
	.word	esp_ipc_init
	.section	.text.esp_ipc_call,"ax",@progbits
	.align	4
	.global	esp_ipc_call
	.type	esp_ipc_call, @function
esp_ipc_call:
.LFB23:
	.loc 1 122 0
.LVL35:
	entry	sp, 32
.LCFI3:
	.loc 1 123 0
	movi.n	a13, 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_ipc_call_and_wait
.LVL36:
	.loc 1 124 0
	mov.n	a2, a10
.LVL37:
	retw.n
.LFE23:
	.size	esp_ipc_call, .-esp_ipc_call
	.section	.text.esp_ipc_call_blocking,"ax",@progbits
	.align	4
	.global	esp_ipc_call_blocking
	.type	esp_ipc_call_blocking, @function
esp_ipc_call_blocking:
.LFB24:
	.loc 1 127 0
.LVL38:
	entry	sp, 32
.LCFI4:
	.loc 1 128 0
	movi.n	a13, 1
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_ipc_call_and_wait
.LVL39:
	.loc 1 129 0
	mov.n	a2, a10
.LVL40:
	retw.n
.LFE24:
	.size	esp_ipc_call_blocking, .-esp_ipc_call_blocking
	.section	.rodata.__func__$5362,"a",@progbits
	.align	4
	.type	__func__$5362, @object
	.size	__func__$5362, 9
__func__$5362:
	.string	"ipc_task"
	.section	.rodata.__func__$5372,"a",@progbits
	.align	4
	.type	__func__$5372, @object
	.size	__func__$5372, 13
__func__$5372:
	.string	"esp_ipc_init"
	.section	.bss.s_ipc_wait,"aw",@nobits
	.align	4
	.type	s_ipc_wait, @object
	.size	s_ipc_wait, 4
s_ipc_wait:
	.zero	4
	.section	.bss.s_func_arg,"aw",@nobits
	.align	4
	.type	s_func_arg, @object
	.size	s_func_arg, 4
s_func_arg:
	.zero	4
	.section	.bss.s_func,"aw",@nobits
	.align	4
	.type	s_func, @object
	.size	s_func, 4
s_func:
	.zero	4
	.section	.bss.s_ipc_ack,"aw",@nobits
	.align	4
	.type	s_ipc_ack, @object
	.size	s_ipc_ack, 4
s_ipc_ack:
	.zero	4
	.section	.bss.s_ipc_sem,"aw",@nobits
	.align	4
	.type	s_ipc_sem, @object
	.size	s_ipc_sem, 8
s_ipc_sem:
	.zero	8
	.section	.bss.s_ipc_mutex,"aw",@nobits
	.align	4
	.type	s_ipc_mutex, @object
	.size	s_ipc_mutex, 4
s_ipc_mutex:
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI0-.LFB20
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI2-.LFB21
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI3-.LFB23
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
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_ipc.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/queue.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/task.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x687
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0xc
	.4byte	.LASF54
	.4byte	.LASF55
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x3
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
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
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
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x18
	.4byte	0xa7
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x6
	.byte	0x18
	.4byte	0xd3
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x7
	.4byte	0xe4
	.uleb128 0x8
	.4byte	0x8c
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x7
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x7
	.byte	0x70
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x7
	.byte	0x76
	.4byte	0xb2
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x8
	.byte	0x58
	.4byte	0x8c
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x9
	.byte	0x4f
	.4byte	0x10c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0x1
	.byte	0x22
	.4byte	0x13b
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x1
	.byte	0x25
	.4byte	0x122
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x2
	.byte	0xce
	.4byte	0xb2
	.byte	0x3
	.4byte	0x161
	.uleb128 0xc
	.string	"id"
	.byte	0x2
	.byte	0xcf
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2b
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x289
	.uleb128 0xe
	.string	"arg"
	.byte	0x1
	.byte	0x2b
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x2d
	.4byte	0x289
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.4byte	.LASF28
	.4byte	0x29e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5362
	.uleb128 0x11
	.4byte	0x146
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.byte	0x1
	.byte	0x2e
	.4byte	0x1c6
	.uleb128 0x12
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x13
	.4byte	0x156
	.4byte	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x25d
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.byte	0x38
	.4byte	0xc8
	.4byte	.LLST1
	.uleb128 0x16
	.string	"arg"
	.byte	0x1
	.byte	0x39
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LVL4
	.4byte	0x620
	.4byte	0x20d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL5
	.4byte	0x62c
	.uleb128 0x17
	.4byte	.LVL8
	.4byte	0x637
	.4byte	0x233
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL9
	.4byte	0x243
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL11
	.4byte	0x637
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL3
	.4byte	0x643
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5362
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0xb2
	.uleb128 0x1d
	.4byte	0x95
	.4byte	0x29e
	.uleb128 0x1e
	.4byte	0x85
	.byte	0x8
	.byte	0
	.uleb128 0x1c
	.4byte	0x28e
	.uleb128 0x1f
	.4byte	.LASF32
	.byte	0x1
	.byte	0x65
	.4byte	0xbd
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x370
	.uleb128 0x20
	.4byte	.LASF33
	.byte	0x1
	.byte	0x65
	.4byte	0xb2
	.4byte	.LLST2
	.uleb128 0x20
	.4byte	.LASF30
	.byte	0x1
	.byte	0x65
	.4byte	0xc8
	.4byte	.LLST3
	.uleb128 0xe
	.string	"arg"
	.byte	0x1
	.byte	0x65
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.4byte	.LASF34
	.byte	0x1
	.byte	0x65
	.4byte	0x13b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL13
	.4byte	0x64e
	.uleb128 0x17
	.4byte	.LVL14
	.4byte	0x620
	.4byte	0x31b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL18
	.4byte	0x637
	.4byte	0x338
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL19
	.4byte	0x620
	.4byte	0x356
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL20
	.4byte	0x637
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF57
	.byte	0x1
	.byte	0x57
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ae
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x1
	.byte	0x5b
	.4byte	0x4ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.4byte	.LASF28
	.4byte	0x4ce
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5372
	.uleb128 0x14
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x481
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0x5c
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x12
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x23
	.string	"res"
	.byte	0x1
	.byte	0x5f
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x17
	.4byte	.LVL29
	.4byte	0x65a
	.4byte	0x3fc
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL30
	.4byte	0x666
	.4byte	0x419
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x17
	.4byte	.LVL31
	.4byte	0x672
	.4byte	0x454
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	ipc_task
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL33
	.4byte	0x643
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x61
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5372
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL25
	.4byte	0x67e
	.4byte	0x494
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL26
	.4byte	0x666
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x95
	.4byte	0x4be
	.uleb128 0x1e
	.4byte	0x85
	.byte	0xe
	.byte	0
	.uleb128 0x1d
	.4byte	0x95
	.4byte	0x4ce
	.uleb128 0x1e
	.4byte	0x85
	.byte	0xc
	.byte	0
	.uleb128 0x1c
	.4byte	0x4be
	.uleb128 0x24
	.4byte	.LASF36
	.byte	0x1
	.byte	0x79
	.4byte	0xbd
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x537
	.uleb128 0x20
	.4byte	.LASF33
	.byte	0x1
	.byte	0x79
	.4byte	0xb2
	.4byte	.LLST6
	.uleb128 0x21
	.4byte	.LASF30
	.byte	0x1
	.byte	0x79
	.4byte	0xc8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.string	"arg"
	.byte	0x1
	.byte	0x79
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LVL36
	.4byte	0x2a3
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF37
	.byte	0x1
	.byte	0x7e
	.4byte	0xbd
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x59b
	.uleb128 0x20
	.4byte	.LASF33
	.byte	0x1
	.byte	0x7e
	.4byte	0xb2
	.4byte	.LLST7
	.uleb128 0x21
	.4byte	.LASF30
	.byte	0x1
	.byte	0x7e
	.4byte	0xc8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.string	"arg"
	.byte	0x1
	.byte	0x7e
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LVL39
	.4byte	0x2a3
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x1
	.byte	0x1c
	.4byte	0x117
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ipc_mutex
	.uleb128 0x1d
	.4byte	0x117
	.4byte	0x5bc
	.uleb128 0x1e
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x1
	.byte	0x1d
	.4byte	0x5ac
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ipc_sem
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x1e
	.4byte	0x117
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ipc_ack
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x1
	.byte	0x20
	.4byte	0x5ef
	.uleb128 0x5
	.byte	0x3
	.4byte	s_func
	.uleb128 0x25
	.4byte	0xc8
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x1
	.byte	0x21
	.4byte	0x605
	.uleb128 0x5
	.byte	0x3
	.4byte	s_func_arg
	.uleb128 0x25
	.4byte	0x8c
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0x27
	.4byte	0x61b
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ipc_wait
	.uleb128 0x25
	.4byte	0x13b
	.uleb128 0x26
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x8
	.2byte	0x38a
	.uleb128 0x27
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0xa
	.byte	0x47
	.uleb128 0x26
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x8
	.2byte	0x265
	.uleb128 0x27
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0xb
	.byte	0x29
	.uleb128 0x26
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0xc
	.2byte	0x8bb
	.uleb128 0x26
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0xd
	.2byte	0x10c
	.uleb128 0x26
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x8
	.2byte	0x5d0
	.uleb128 0x26
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0xc
	.2byte	0x151
	.uleb128 0x26
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x8
	.2byte	0x578
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
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
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x5
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
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
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x5
	.byte	0x3
	.4byte	s_func
	.4byte	.LVL16
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"long long int"
.LASF39:
	.string	"s_ipc_sem"
.LASF5:
	.string	"__uint8_t"
.LASF57:
	.string	"esp_ipc_init"
.LASF40:
	.string	"s_ipc_ack"
.LASF22:
	.string	"TickType_t"
.LASF50:
	.string	"xQueueGenericCreate"
.LASF6:
	.string	"__int32_t"
.LASF49:
	.string	"snprintf"
.LASF1:
	.string	"short unsigned int"
.LASF23:
	.string	"QueueHandle_t"
.LASF4:
	.string	"short int"
.LASF33:
	.string	"cpu_id"
.LASF28:
	.string	"__func__"
.LASF34:
	.string	"wait_for"
.LASF9:
	.string	"long long unsigned int"
.LASF55:
	.string	"/home/raphael/rtone/lcd/build/esp32"
.LASF3:
	.string	"unsigned char"
.LASF52:
	.string	"xQueueCreateMutex"
.LASF42:
	.string	"s_func_arg"
.LASF12:
	.string	"long unsigned int"
.LASF44:
	.string	"xQueueGenericReceive"
.LASF18:
	.string	"esp_ipc_func_t"
.LASF16:
	.string	"uint32_t"
.LASF35:
	.string	"task_name"
.LASF17:
	.string	"esp_err_t"
.LASF48:
	.string	"xTaskGetSchedulerState"
.LASF24:
	.string	"SemaphoreHandle_t"
.LASF7:
	.string	"__uint32_t"
.LASF47:
	.string	"__assert_func"
.LASF29:
	.string	"cpuid"
.LASF0:
	.string	"unsigned int"
.LASF51:
	.string	"xTaskCreatePinnedToCore"
.LASF13:
	.string	"char"
.LASF14:
	.string	"uint8_t"
.LASF30:
	.string	"func"
.LASF37:
	.string	"esp_ipc_call_blocking"
.LASF21:
	.string	"UBaseType_t"
.LASF41:
	.string	"s_func"
.LASF15:
	.string	"int32_t"
.LASF11:
	.string	"sizetype"
.LASF27:
	.string	"esp_ipc_wait_t"
.LASF26:
	.string	"IPC_WAIT_FOR_END"
.LASF53:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF56:
	.string	"xPortGetCoreID"
.LASF36:
	.string	"esp_ipc_call"
.LASF31:
	.string	"ipc_task"
.LASF46:
	.string	"xQueueGenericSend"
.LASF38:
	.string	"s_ipc_mutex"
.LASF54:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/ipc.c"
.LASF25:
	.string	"IPC_WAIT_FOR_START"
.LASF10:
	.string	"long int"
.LASF32:
	.string	"esp_ipc_call_and_wait"
.LASF45:
	.string	"abort"
.LASF2:
	.string	"signed char"
.LASF19:
	.string	"_Bool"
.LASF20:
	.string	"BaseType_t"
.LASF43:
	.string	"s_ipc_wait"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
