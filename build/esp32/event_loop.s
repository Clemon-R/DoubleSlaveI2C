	.file	"event_loop.c"
	.text
.Ltext0:
	.section	.text.esp_event_post_to_user,"ax",@progbits
	.literal_position
	.literal .LC0, s_event_handler_cb
	.literal .LC1, s_event_ctx
	.align	4
	.type	esp_event_post_to_user, @function
esp_event_post_to_user:
.LFB22:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/event_loop.c"
	.loc 1 42 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 43 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
	beqz.n	a8, .L3
	.loc 1 44 0
	mov.n	a11, a2
	l32r	a2, .LC1
.LVL1:
	l32i.n	a10, a2, 0
	callx8	a8
.LVL2:
	mov.n	a2, a10
	retw.n
.LVL3:
.L3:
	.loc 1 46 0
	movi.n	a2, 0
.LVL4:
	.loc 1 47 0
	retw.n
.LFE22:
	.size	esp_event_post_to_user, .-esp_event_post_to_user
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.string	"event"
	.align	4
.LC5:
	.string	"\033[0;31mE (%d) %s: default event handler failed!\033[0m\n"
	.align	4
.LC7:
	.string	"\033[0;31mE (%d) %s: post event to user fail!\033[0m\n"
	.section	.text.esp_event_loop_task,"ax",@progbits
	.literal_position
	.literal .LC2, s_event_queue
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.align	4
	.type	esp_event_loop_task, @function
esp_event_loop_task:
.LFB23:
	.loc 1 50 0
.LVL5:
	entry	sp, 80
.LCFI1:
.L7:
.LBB2:
	.loc 1 53 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, sp
	l32r	a8, .LC2
	l32i.n	a10, a8, 0
	call8	xQueueGenericReceive
.LVL6:
	bnei	a10, 1, .L7
.LBB3:
	.loc 1 54 0
	mov.n	a10, sp
	call8	esp_event_process_default
.LVL7:
	.loc 1 55 0
	beqz.n	a10, .L6
	.loc 1 56 0 discriminator 2
	call8	esp_log_timestamp
.LVL8:
	l32r	a11, .LC4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC6
	movi.n	a10, 1
	call8	esp_log_write
.LVL9:
.L6:
	.loc 1 58 0
	mov.n	a10, sp
	call8	esp_event_post_to_user
.LVL10:
	.loc 1 59 0
	beqz.n	a10, .L7
	.loc 1 60 0 discriminator 2
	call8	esp_log_timestamp
.LVL11:
	l32r	a11, .LC4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC8
	movi.n	a10, 1
	call8	esp_log_write
.LVL12:
.LBE3:
.LBE2:
	.loc 1 63 0 discriminator 2
	j	.L7
.LFE23:
	.size	esp_event_loop_task, .-esp_event_loop_task
	.section	.text.esp_event_loop_set_cb,"ax",@progbits
	.literal_position
	.literal .LC9, s_event_handler_cb
	.literal .LC10, s_event_ctx
	.align	4
	.global	esp_event_loop_set_cb
	.type	esp_event_loop_set_cb, @function
esp_event_loop_set_cb:
.LFB24:
	.loc 1 67 0
.LVL13:
	entry	sp, 32
.LCFI2:
	.loc 1 68 0
	l32r	a8, .LC9
	l32i.n	a9, a8, 0
.LVL14:
	.loc 1 69 0
	s32i.n	a2, a8, 0
	.loc 1 70 0
	l32r	a8, .LC10
	s32i.n	a3, a8, 0
	.loc 1 72 0
	mov.n	a2, a9
.LVL15:
	retw.n
.LFE24:
	.size	esp_event_loop_set_cb, .-esp_event_loop_set_cb
	.section	.rodata.str1.4
	.align	4
.LC13:
	.string	"\033[0;31mE (%d) %s: Event loop not initialized via esp_event_loop_init, but esp_event_send called\033[0m\n"
	.align	4
.LC16:
	.string	"\033[0;31mE (%d) %s: e=%d f\033[0m\n"
	.align	4
.LC18:
	.string	"\033[0;31mE (%d) %s: e null\033[0m\n"
	.section	.text.esp_event_send,"ax",@progbits
	.literal_position
	.literal .LC11, s_event_queue
	.literal .LC12, .LC3
	.literal .LC14, .LC13
	.literal .LC15, g_mesh_event_cb
	.literal .LC17, .LC16
	.literal .LC19, .LC18
	.align	4
	.global	esp_event_send
	.type	esp_event_send, @function
esp_event_send:
.LFB25:
	.loc 1 75 0
.LVL16:
	entry	sp, 160
.LCFI3:
	.loc 1 76 0
	l32r	a8, .LC11
	l32i.n	a8, a8, 0
	bnez.n	a8, .L10
	.loc 1 77 0 discriminator 2
	call8	esp_log_timestamp
.LVL17:
	l32r	a11, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC14
	movi.n	a10, 1
	call8	esp_log_write
.LVL18:
	.loc 1 78 0 discriminator 2
	movi	a2, 0x103
.LVL19:
	retw.n
.LVL20:
.L10:
	.loc 1 81 0
	l32i.n	a8, a2, 0
	addi	a9, a8, -7
	bgeui	a9, 2, .L12
	.loc 1 82 0
	l32r	a9, .LC15
	l32i.n	a9, a9, 0
	beqz.n	a9, .L12
.LBB4:
	.loc 1 84 0
	bnei	a8, 7, .L13
	.loc 1 85 0
	movi.n	a8, 0x11
	s32i	a8, sp, 64
	.loc 1 86 0
	movi.n	a12, 0x10
	addi.n	a11, a2, 4
	addi	a10, sp, 68
	call8	memcpy
.LVL21:
	j	.L14
.L13:
	.loc 1 88 0
	movi.n	a8, 0x12
	s32i	a8, sp, 64
.L14:
	.loc 1 90 0
	movi.n	a12, 0x34
	addi	a11, sp, 64
	mov.n	a10, sp
	call8	memcpy
.LVL22:
	l32r	a8, .LC15
	l32i.n	a8, a8, 0
	callx8	a8
.LVL23:
.L12:
.LBE4:
	.loc 1 94 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a2
	l32r	a8, .LC11
	l32i.n	a10, a8, 0
	call8	xQueueGenericSend
.LVL24:
	.loc 1 95 0
	beqi	a10, 1, .L16
	.loc 1 96 0
	beqz.n	a2, .L15
	.loc 1 97 0 discriminator 2
	call8	esp_log_timestamp
.LVL25:
	l32r	a11, .LC12
	l32i.n	a15, a2, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC17
	movi.n	a10, 1
	call8	esp_log_write
.LVL26:
	.loc 1 101 0 discriminator 2
	movi.n	a2, -1
.LVL27:
	retw.n
.LVL28:
.L15:
	.loc 1 99 0 discriminator 2
	call8	esp_log_timestamp
.LVL29:
	l32r	a11, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC19
	movi.n	a10, 1
	call8	esp_log_write
.LVL30:
	.loc 1 101 0 discriminator 2
	movi.n	a2, -1
.LVL31:
	retw.n
.LVL32:
.L16:
	.loc 1 103 0
	movi.n	a2, 0
.LVL33:
	.loc 1 104 0
	retw.n
.LFE25:
	.size	esp_event_send, .-esp_event_send
	.section	.text.esp_event_loop_get_queue,"ax",@progbits
	.literal_position
	.literal .LC20, s_event_queue
	.align	4
	.global	esp_event_loop_get_queue
	.type	esp_event_loop_get_queue, @function
esp_event_loop_get_queue:
.LFB26:
	.loc 1 107 0
	entry	sp, 32
.LCFI4:
	.loc 1 109 0
	l32r	a8, .LC20
	l32i.n	a2, a8, 0
	retw.n
.LFE26:
	.size	esp_event_loop_get_queue, .-esp_event_loop_get_queue
	.section	.rodata.str1.4
	.align	4
.LC26:
	.string	"eventTask"
	.section	.text.esp_event_loop_init,"ax",@progbits
	.literal_position
	.literal .LC21, s_event_init_flag
	.literal .LC22, s_event_handler_cb
	.literal .LC23, s_event_ctx
	.literal .LC24, s_event_queue
	.literal .LC25, 2816
	.literal .LC27, .LC26
	.literal .LC28, esp_event_loop_task
	.align	4
	.global	esp_event_loop_init
	.type	esp_event_loop_init, @function
esp_event_loop_init:
.LFB27:
	.loc 1 112 0
.LVL34:
	entry	sp, 48
.LCFI5:
	.loc 1 113 0
	l32r	a8, .LC21
	l8ui	a8, a8, 0
	bnez.n	a8, .L20
	.loc 1 116 0
	l32r	a8, .LC22
	s32i.n	a2, a8, 0
	.loc 1 117 0
	l32r	a2, .LC23
.LVL35:
	s32i.n	a3, a2, 0
	.loc 1 118 0
	movi.n	a12, 0
	movi.n	a11, 0x30
	movi.n	a10, 0x20
	call8	xQueueGenericCreate
.LVL36:
	l32r	a2, .LC24
	s32i.n	a10, a2, 0
	.loc 1 120 0
	movi.n	a2, 0
	s32i.n	a2, sp, 0
	mov.n	a15, a2
	movi.n	a14, 0x14
	mov.n	a13, a2
	l32r	a12, .LC25
	l32r	a11, .LC27
	l32r	a10, .LC28
	call8	xTaskCreatePinnedToCore
.LVL37:
	.loc 1 123 0
	movi.n	a8, 1
	l32r	a3, .LC21
.LVL38:
	s8i	a8, a3, 0
	.loc 1 124 0
	retw.n
.LVL39:
.L20:
	.loc 1 114 0
	movi.n	a2, -1
.LVL40:
	.loc 1 125 0
	retw.n
.LFE27:
	.size	esp_event_loop_init, .-esp_event_loop_init
	.section	.bss.s_event_ctx,"aw",@nobits
	.align	4
	.type	s_event_ctx, @object
	.size	s_event_ctx, 4
s_event_ctx:
	.zero	4
	.section	.bss.s_event_handler_cb,"aw",@nobits
	.align	4
	.type	s_event_handler_cb, @object
	.size	s_event_handler_cb, 4
s_event_handler_cb:
	.zero	4
	.section	.bss.s_event_queue,"aw",@nobits
	.align	4
	.type	s_event_queue, @object
	.size	s_event_queue, 4
s_event_queue:
	.zero	4
	.section	.bss.s_event_init_flag,"aw",@nobits
	.type	s_event_init_flag, @object
	.size	s_event_init_flag, 1
s_event_init_flag:
	.zero	1
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
	.uleb128 0x20
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
	.uleb128 0x50
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
	.uleb128 0x20
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
	.uleb128 0xa0
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI4-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI5-.LFB27
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/queue.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_wifi_types.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_event_legacy.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_event_loop.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_mesh.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf73
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF230
	.byte	0xc
	.4byte	.LASF231
	.4byte	.LASF232
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
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0x11
	.4byte	0x45
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
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
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x16
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x7
	.4byte	0xab
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x14
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x21
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x18
	.4byte	0xde
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF22
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0x76
	.4byte	0xe9
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x6
	.byte	0x58
	.4byte	0xa2
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x38
	.4byte	0x15e
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x7
	.byte	0x40
	.4byte	0x127
	.uleb128 0xa
	.4byte	0xc8
	.4byte	0x179
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	0xc8
	.4byte	0x189
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.4byte	0xb2
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x4
	.byte	0x8
	.byte	0x33
	.4byte	0x1a7
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x8
	.byte	0x34
	.4byte	0xe9
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x8
	.byte	0x39
	.4byte	0x18e
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x10
	.byte	0x9
	.byte	0x3a
	.4byte	0x1cb
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x9
	.byte	0x3b
	.4byte	0x1cb
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xe9
	.4byte	0x1db
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x9
	.byte	0x3f
	.4byte	0x1b2
	.uleb128 0xe
	.byte	0xc
	.byte	0xa
	.byte	0x46
	.4byte	0x211
	.uleb128 0xf
	.string	"ip"
	.byte	0xa
	.byte	0x47
	.4byte	0x1a7
	.byte	0
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0xa
	.byte	0x48
	.4byte	0x1a7
	.byte	0x4
	.uleb128 0xf
	.string	"gw"
	.byte	0xa
	.byte	0x49
	.4byte	0x1a7
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0xa
	.byte	0x4a
	.4byte	0x1e6
	.uleb128 0xe
	.byte	0x10
	.byte	0xa
	.byte	0x4c
	.4byte	0x230
	.uleb128 0xf
	.string	"ip"
	.byte	0xa
	.byte	0x4d
	.4byte	0x1db
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0xa
	.byte	0x4e
	.4byte	0x21c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x67
	.4byte	0x260
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0xa
	.byte	0x6c
	.4byte	0x23b
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x1d
	.4byte	0x314
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x15
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x17
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x19
	.byte	0
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0xb
	.byte	0x38
	.4byte	0x26b
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x3f
	.4byte	0x33e
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0xb
	.byte	0x43
	.4byte	0x31f
	.uleb128 0xe
	.byte	0x8
	.byte	0xb
	.byte	0x44
	.4byte	0x376
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0xb
	.byte	0x45
	.4byte	0xe9
	.byte	0
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0xb
	.byte	0x46
	.4byte	0xc8
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0xb
	.byte	0x47
	.4byte	0xc8
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0xb
	.byte	0x48
	.4byte	0x349
	.uleb128 0xe
	.byte	0x2c
	.byte	0xb
	.byte	0x4a
	.4byte	0x3c6
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0xb
	.byte	0x4b
	.4byte	0x179
	.byte	0
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0xb
	.byte	0x4c
	.4byte	0xc8
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0xb
	.byte	0x4d
	.4byte	0x169
	.byte	0x21
	.uleb128 0xd
	.4byte	.LASF85
	.byte	0xb
	.byte	0x4e
	.4byte	0xc8
	.byte	0x27
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0xb
	.byte	0x4f
	.4byte	0x15e
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0xb
	.byte	0x50
	.4byte	0x381
	.uleb128 0xe
	.byte	0x28
	.byte	0xb
	.byte	0x52
	.4byte	0x40a
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0xb
	.byte	0x53
	.4byte	0x179
	.byte	0
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0xb
	.byte	0x54
	.4byte	0xc8
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0xb
	.byte	0x55
	.4byte	0x169
	.byte	0x21
	.uleb128 0xd
	.4byte	.LASF88
	.byte	0xb
	.byte	0x56
	.4byte	0xc8
	.byte	0x27
	.byte	0
	.uleb128 0x4
	.4byte	.LASF89
	.byte	0xb
	.byte	0x57
	.4byte	0x3d1
	.uleb128 0xe
	.byte	0x8
	.byte	0xb
	.byte	0x59
	.4byte	0x436
	.uleb128 0xd
	.4byte	.LASF90
	.byte	0xb
	.byte	0x5a
	.4byte	0x15e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF91
	.byte	0xb
	.byte	0x5b
	.4byte	0x15e
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF92
	.byte	0xb
	.byte	0x5c
	.4byte	0x415
	.uleb128 0xe
	.byte	0x10
	.byte	0xb
	.byte	0x5e
	.4byte	0x462
	.uleb128 0xd
	.4byte	.LASF93
	.byte	0xb
	.byte	0x5f
	.4byte	0x211
	.byte	0
	.uleb128 0xd
	.4byte	.LASF94
	.byte	0xb
	.byte	0x60
	.4byte	0xff
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF95
	.byte	0xb
	.byte	0x61
	.4byte	0x441
	.uleb128 0xe
	.byte	0x8
	.byte	0xb
	.byte	0x63
	.4byte	0x482
	.uleb128 0xd
	.4byte	.LASF96
	.byte	0xb
	.byte	0x64
	.4byte	0x482
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xc8
	.4byte	0x492
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF97
	.byte	0xb
	.byte	0x65
	.4byte	0x46d
	.uleb128 0xe
	.byte	0x14
	.byte	0xb
	.byte	0x67
	.4byte	0x4be
	.uleb128 0xd
	.4byte	.LASF98
	.byte	0xb
	.byte	0x68
	.4byte	0x260
	.byte	0
	.uleb128 0xd
	.4byte	.LASF99
	.byte	0xb
	.byte	0x69
	.4byte	0x230
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF100
	.byte	0xb
	.byte	0x6a
	.4byte	0x49d
	.uleb128 0xe
	.byte	0x7
	.byte	0xb
	.byte	0x6c
	.4byte	0x4ea
	.uleb128 0xf
	.string	"mac"
	.byte	0xb
	.byte	0x6d
	.4byte	0x169
	.byte	0
	.uleb128 0xf
	.string	"aid"
	.byte	0xb
	.byte	0x6e
	.4byte	0xc8
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF101
	.byte	0xb
	.byte	0x6f
	.4byte	0x4c9
	.uleb128 0xe
	.byte	0x7
	.byte	0xb
	.byte	0x71
	.4byte	0x516
	.uleb128 0xf
	.string	"mac"
	.byte	0xb
	.byte	0x72
	.4byte	0x169
	.byte	0
	.uleb128 0xf
	.string	"aid"
	.byte	0xb
	.byte	0x73
	.4byte	0xc8
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF102
	.byte	0xb
	.byte	0x74
	.4byte	0x4f5
	.uleb128 0xe
	.byte	0xc
	.byte	0xb
	.byte	0x76
	.4byte	0x542
	.uleb128 0xd
	.4byte	.LASF103
	.byte	0xb
	.byte	0x77
	.4byte	0x25
	.byte	0
	.uleb128 0xf
	.string	"mac"
	.byte	0xb
	.byte	0x78
	.4byte	0x169
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF104
	.byte	0xb
	.byte	0x79
	.4byte	0x521
	.uleb128 0x10
	.byte	0x2c
	.byte	0xb
	.byte	0x7b
	.4byte	0x5cf
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0xb
	.byte	0x7c
	.4byte	0x3c6
	.uleb128 0x11
	.4byte	.LASF106
	.byte	0xb
	.byte	0x7d
	.4byte	0x40a
	.uleb128 0x11
	.4byte	.LASF107
	.byte	0xb
	.byte	0x7e
	.4byte	0x376
	.uleb128 0x11
	.4byte	.LASF108
	.byte	0xb
	.byte	0x7f
	.4byte	0x436
	.uleb128 0x11
	.4byte	.LASF109
	.byte	0xb
	.byte	0x80
	.4byte	0x462
	.uleb128 0x11
	.4byte	.LASF110
	.byte	0xb
	.byte	0x81
	.4byte	0x492
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0xb
	.byte	0x82
	.4byte	0x33e
	.uleb128 0x11
	.4byte	.LASF112
	.byte	0xb
	.byte	0x83
	.4byte	0x4ea
	.uleb128 0x11
	.4byte	.LASF113
	.byte	0xb
	.byte	0x84
	.4byte	0x516
	.uleb128 0x11
	.4byte	.LASF114
	.byte	0xb
	.byte	0x85
	.4byte	0x542
	.uleb128 0x11
	.4byte	.LASF115
	.byte	0xb
	.byte	0x86
	.4byte	0x4be
	.byte	0
	.uleb128 0x4
	.4byte	.LASF116
	.byte	0xb
	.byte	0x87
	.4byte	0x54d
	.uleb128 0xe
	.byte	0x30
	.byte	0xb
	.byte	0x89
	.4byte	0x5fb
	.uleb128 0xd
	.4byte	.LASF117
	.byte	0xb
	.byte	0x8a
	.4byte	0x314
	.byte	0
	.uleb128 0xd
	.4byte	.LASF118
	.byte	0xb
	.byte	0x8b
	.4byte	0x5cf
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF119
	.byte	0xb
	.byte	0x8c
	.4byte	0x5da
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5fb
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0xc
	.byte	0x27
	.4byte	0x617
	.uleb128 0x6
	.byte	0x4
	.4byte	0x61d
	.uleb128 0x12
	.4byte	0xf4
	.4byte	0x631
	.uleb128 0x13
	.4byte	0xa2
	.uleb128 0x13
	.4byte	0x606
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xd
	.byte	0x9f
	.4byte	0x6e0
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF128
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF129
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF135
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF136
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF137
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF138
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF139
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF140
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF141
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF142
	.byte	0x15
	.uleb128 0x9
	.4byte	.LASF143
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF144
	.byte	0x17
	.uleb128 0x9
	.4byte	.LASF145
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF146
	.byte	0x19
	.uleb128 0x9
	.4byte	.LASF147
	.byte	0x1a
	.byte	0
	.uleb128 0x4
	.4byte	.LASF148
	.byte	0xd
	.byte	0xc4
	.4byte	0x631
	.uleb128 0x14
	.byte	0x6
	.byte	0xd
	.2byte	0x103
	.4byte	0x70f
	.uleb128 0x15
	.string	"ip4"
	.byte	0xd
	.2byte	0x104
	.4byte	0x1a7
	.byte	0
	.uleb128 0x16
	.4byte	.LASF149
	.byte	0xd
	.2byte	0x105
	.4byte	0xd3
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.4byte	.LASF150
	.byte	0xd
	.2byte	0x106
	.4byte	0x6eb
	.uleb128 0x18
	.byte	0x6
	.byte	0xd
	.2byte	0x10b
	.4byte	0x73d
	.uleb128 0x19
	.4byte	.LASF37
	.byte	0xd
	.2byte	0x10c
	.4byte	0x169
	.uleb128 0x1a
	.string	"mip"
	.byte	0xd
	.2byte	0x10d
	.4byte	0x70f
	.byte	0
	.uleb128 0x17
	.4byte	.LASF151
	.byte	0xd
	.2byte	0x10e
	.4byte	0x71b
	.uleb128 0x14
	.byte	0x1
	.byte	0xd
	.2byte	0x113
	.4byte	0x760
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0xd
	.2byte	0x114
	.4byte	0xc8
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF152
	.byte	0xd
	.2byte	0x115
	.4byte	0x749
	.uleb128 0x14
	.byte	0x30
	.byte	0xd
	.2byte	0x11a
	.4byte	0x790
	.uleb128 0x16
	.4byte	.LASF105
	.byte	0xd
	.2byte	0x11b
	.4byte	0x3c6
	.byte	0
	.uleb128 0x16
	.4byte	.LASF153
	.byte	0xd
	.2byte	0x11c
	.4byte	0xc8
	.byte	0x2c
	.byte	0
	.uleb128 0x17
	.4byte	.LASF154
	.byte	0xd
	.2byte	0x11d
	.4byte	0x76c
	.uleb128 0x14
	.byte	0x4
	.byte	0xd
	.2byte	0x122
	.4byte	0x7b3
	.uleb128 0x16
	.4byte	.LASF155
	.byte	0xd
	.2byte	0x123
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF156
	.byte	0xd
	.2byte	0x124
	.4byte	0x79c
	.uleb128 0x14
	.byte	0x1
	.byte	0xd
	.2byte	0x129
	.4byte	0x7d6
	.uleb128 0x16
	.4byte	.LASF157
	.byte	0xd
	.2byte	0x12a
	.4byte	0xc8
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF158
	.byte	0xd
	.2byte	0x12b
	.4byte	0x7bf
	.uleb128 0x1b
	.byte	0x4
	.4byte	0x2c
	.byte	0xd
	.2byte	0x130
	.4byte	0x7fc
	.uleb128 0x9
	.4byte	.LASF159
	.byte	0
	.uleb128 0x9
	.4byte	.LASF160
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.4byte	.LASF161
	.byte	0xd
	.2byte	0x133
	.4byte	0x7e2
	.uleb128 0x14
	.byte	0x10
	.byte	0xd
	.2byte	0x138
	.4byte	0x839
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0xd
	.2byte	0x139
	.4byte	0x25
	.byte	0
	.uleb128 0x16
	.4byte	.LASF162
	.byte	0xd
	.2byte	0x13a
	.4byte	0x25
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF163
	.byte	0xd
	.2byte	0x13b
	.4byte	0x73d
	.byte	0x8
	.byte	0
	.uleb128 0x17
	.4byte	.LASF164
	.byte	0xd
	.2byte	0x13c
	.4byte	0x808
	.uleb128 0x14
	.byte	0x7
	.byte	0xd
	.2byte	0x141
	.4byte	0x869
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0xd
	.2byte	0x142
	.4byte	0xc8
	.byte	0
	.uleb128 0x16
	.4byte	.LASF165
	.byte	0xd
	.2byte	0x143
	.4byte	0x169
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.4byte	.LASF166
	.byte	0xd
	.2byte	0x144
	.4byte	0x845
	.uleb128 0x17
	.4byte	.LASF167
	.byte	0xd
	.2byte	0x149
	.4byte	0x462
	.uleb128 0x17
	.4byte	.LASF168
	.byte	0xd
	.2byte	0x14e
	.4byte	0x73d
	.uleb128 0x17
	.4byte	.LASF169
	.byte	0xd
	.2byte	0x153
	.4byte	0x40a
	.uleb128 0x17
	.4byte	.LASF170
	.byte	0xd
	.2byte	0x158
	.4byte	0x4ea
	.uleb128 0x17
	.4byte	.LASF171
	.byte	0xd
	.2byte	0x15d
	.4byte	0x516
	.uleb128 0x14
	.byte	0xc
	.byte	0xd
	.2byte	0x162
	.4byte	0x8d5
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0xd
	.2byte	0x163
	.4byte	0x25
	.byte	0
	.uleb128 0x16
	.4byte	.LASF163
	.byte	0xd
	.2byte	0x164
	.4byte	0x73d
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.4byte	.LASF172
	.byte	0xd
	.2byte	0x165
	.4byte	0x8b1
	.uleb128 0x14
	.byte	0xa
	.byte	0xd
	.2byte	0x16a
	.4byte	0x912
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0xd
	.2byte	0x16b
	.4byte	0xbd
	.byte	0
	.uleb128 0x16
	.4byte	.LASF173
	.byte	0xd
	.2byte	0x16c
	.4byte	0xd3
	.byte	0x2
	.uleb128 0x16
	.4byte	.LASF37
	.byte	0xd
	.2byte	0x16d
	.4byte	0x169
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.4byte	.LASF174
	.byte	0xd
	.2byte	0x16e
	.4byte	0x8e1
	.uleb128 0x14
	.byte	0x4
	.byte	0xd
	.2byte	0x173
	.4byte	0x942
	.uleb128 0x16
	.4byte	.LASF175
	.byte	0xd
	.2byte	0x174
	.4byte	0xd3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF176
	.byte	0xd
	.2byte	0x175
	.4byte	0xd3
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.4byte	.LASF177
	.byte	0xd
	.2byte	0x176
	.4byte	0x91e
	.uleb128 0x14
	.byte	0x1
	.byte	0xd
	.2byte	0x17b
	.4byte	0x965
	.uleb128 0x16
	.4byte	.LASF178
	.byte	0xd
	.2byte	0x17c
	.4byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF179
	.byte	0xd
	.2byte	0x17d
	.4byte	0x94e
	.uleb128 0x14
	.byte	0x1
	.byte	0xd
	.2byte	0x182
	.4byte	0x988
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0xd
	.2byte	0x183
	.4byte	0xc8
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF180
	.byte	0xd
	.2byte	0x184
	.4byte	0x971
	.uleb128 0x14
	.byte	0x1
	.byte	0xd
	.2byte	0x189
	.4byte	0x9ab
	.uleb128 0x16
	.4byte	.LASF181
	.byte	0xd
	.2byte	0x18a
	.4byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF182
	.byte	0xd
	.2byte	0x18b
	.4byte	0x994
	.uleb128 0x17
	.4byte	.LASF183
	.byte	0xd
	.2byte	0x190
	.4byte	0x3c6
	.uleb128 0x18
	.byte	0x30
	.byte	0xd
	.2byte	0x195
	.4byte	0xab1
	.uleb128 0x19
	.4byte	.LASF184
	.byte	0xd
	.2byte	0x196
	.4byte	0x760
	.uleb128 0x19
	.4byte	.LASF185
	.byte	0xd
	.2byte	0x197
	.4byte	0x899
	.uleb128 0x19
	.4byte	.LASF186
	.byte	0xd
	.2byte	0x198
	.4byte	0x8a5
	.uleb128 0x19
	.4byte	.LASF187
	.byte	0xd
	.2byte	0x199
	.4byte	0x942
	.uleb128 0x19
	.4byte	.LASF105
	.byte	0xd
	.2byte	0x19a
	.4byte	0x790
	.uleb128 0x19
	.4byte	.LASF106
	.byte	0xd
	.2byte	0x19b
	.4byte	0x88d
	.uleb128 0x19
	.4byte	.LASF188
	.byte	0xd
	.2byte	0x19c
	.4byte	0x7b3
	.uleb128 0x19
	.4byte	.LASF189
	.byte	0xd
	.2byte	0x19d
	.4byte	0x7d6
	.uleb128 0x19
	.4byte	.LASF190
	.byte	0xd
	.2byte	0x19e
	.4byte	0x7fc
	.uleb128 0x19
	.4byte	.LASF191
	.byte	0xd
	.2byte	0x1a2
	.4byte	0x839
	.uleb128 0x19
	.4byte	.LASF109
	.byte	0xd
	.2byte	0x1a3
	.4byte	0x875
	.uleb128 0x19
	.4byte	.LASF192
	.byte	0xd
	.2byte	0x1a4
	.4byte	0x881
	.uleb128 0x19
	.4byte	.LASF193
	.byte	0xd
	.2byte	0x1a5
	.4byte	0x8d5
	.uleb128 0x19
	.4byte	.LASF194
	.byte	0xd
	.2byte	0x1a6
	.4byte	0x912
	.uleb128 0x19
	.4byte	.LASF195
	.byte	0xd
	.2byte	0x1a7
	.4byte	0x965
	.uleb128 0x19
	.4byte	.LASF107
	.byte	0xd
	.2byte	0x1a8
	.4byte	0x988
	.uleb128 0x19
	.4byte	.LASF196
	.byte	0xd
	.2byte	0x1a9
	.4byte	0x9ab
	.uleb128 0x19
	.4byte	.LASF197
	.byte	0xd
	.2byte	0x1aa
	.4byte	0x869
	.uleb128 0x19
	.4byte	.LASF198
	.byte	0xd
	.2byte	0x1ab
	.4byte	0x9b7
	.byte	0
	.uleb128 0x17
	.4byte	.LASF199
	.byte	0xd
	.2byte	0x1ac
	.4byte	0x9c3
	.uleb128 0x14
	.byte	0x34
	.byte	0xd
	.2byte	0x1b1
	.4byte	0xae0
	.uleb128 0x15
	.string	"id"
	.byte	0xd
	.2byte	0x1b2
	.4byte	0x6e0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF200
	.byte	0xd
	.2byte	0x1b3
	.4byte	0xab1
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.4byte	.LASF201
	.byte	0xd
	.2byte	0x1b4
	.4byte	0xabd
	.uleb128 0x17
	.4byte	.LASF202
	.byte	0xd
	.2byte	0x1bb
	.4byte	0xaf8
	.uleb128 0x6
	.byte	0x4
	.4byte	0xafe
	.uleb128 0x1c
	.4byte	0xb09
	.uleb128 0x13
	.4byte	0xae0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF203
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x1f
	.4byte	0xb41
	.uleb128 0x9
	.4byte	.LASF204
	.byte	0
	.uleb128 0x9
	.4byte	.LASF205
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF206
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF207
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF208
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF209
	.byte	0x5
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF210
	.byte	0x1
	.byte	0x29
	.4byte	0xf4
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb77
	.uleb128 0x1e
	.4byte	.LASF212
	.byte	0x1
	.byte	0x29
	.4byte	0x606
	.4byte	.LLST0
	.uleb128 0x1f
	.4byte	.LVL2
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF211
	.byte	0x1
	.byte	0x31
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc80
	.uleb128 0x22
	.4byte	.LASF213
	.byte	0x1
	.byte	0x31
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x24
	.string	"evt"
	.byte	0x1
	.byte	0x34
	.4byte	0x5fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0xc62
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.byte	0x36
	.4byte	0xf4
	.4byte	.LLST1
	.uleb128 0x27
	.4byte	.LVL7
	.4byte	0xf1c
	.4byte	0xbe2
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x28
	.4byte	.LVL8
	.4byte	0xf27
	.uleb128 0x27
	.4byte	.LVL9
	.4byte	0xf32
	.4byte	0xc19
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x27
	.4byte	.LVL10
	.4byte	0xb41
	.4byte	0xc2e
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x28
	.4byte	.LVL11
	.4byte	0xf27
	.uleb128 0x29
	.4byte	.LVL12
	.4byte	0xf32
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL6
	.4byte	0xf3d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF215
	.byte	0x1
	.byte	0x42
	.4byte	0x60c
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcc2
	.uleb128 0x2b
	.string	"cb"
	.byte	0x1
	.byte	0x42
	.4byte	0x60c
	.4byte	.LLST2
	.uleb128 0x2c
	.string	"ctx"
	.byte	0x1
	.byte	0x42
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LASF214
	.byte	0x1
	.byte	0x44
	.4byte	0x60c
	.uleb128 0x1
	.byte	0x59
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF216
	.byte	0x1
	.byte	0x4a
	.4byte	0xf4
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe14
	.uleb128 0x1e
	.4byte	.LASF212
	.byte	0x1
	.byte	0x4a
	.4byte	0x606
	.4byte	.LLST3
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.byte	0x5e
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x25
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0xd54
	.uleb128 0x2d
	.4byte	.LASF217
	.byte	0x1
	.byte	0x53
	.4byte	0xae0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.4byte	.LVL21
	.4byte	0xf49
	.4byte	0xd35
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x29
	.4byte	.LVL22
	.4byte	0xf49
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL17
	.4byte	0xf27
	.uleb128 0x27
	.4byte	.LVL18
	.4byte	0xf32
	.4byte	0xd8b
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x27
	.4byte	.LVL24
	.4byte	0xf52
	.4byte	0xda9
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL25
	.4byte	0xf27
	.uleb128 0x27
	.4byte	.LVL26
	.4byte	0xf32
	.4byte	0xde0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x28
	.4byte	.LVL29
	.4byte	0xf27
	.uleb128 0x29
	.4byte	.LVL30
	.4byte	0xf32
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF233
	.byte	0x1
	.byte	0x6a
	.4byte	0x11c
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF218
	.byte	0x1
	.byte	0x6f
	.4byte	0xf4
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeba
	.uleb128 0x2b
	.string	"cb"
	.byte	0x1
	.byte	0x6f
	.4byte	0x60c
	.4byte	.LLST5
	.uleb128 0x2b
	.string	"ctx"
	.byte	0x1
	.byte	0x6f
	.4byte	0xa2
	.4byte	.LLST6
	.uleb128 0x27
	.4byte	.LVL36
	.4byte	0xf5e
	.4byte	0xe7e
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL37
	.4byte	0xf6a
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_event_loop_task
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xb00
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.string	"TAG"
	.byte	0x1
	.byte	0x23
	.4byte	0x189
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC3
	.byte	0x9f
	.uleb128 0x2d
	.4byte	.LASF219
	.byte	0x1
	.byte	0x24
	.4byte	0xff
	.uleb128 0x5
	.byte	0x3
	.4byte	s_event_init_flag
	.uleb128 0x2d
	.4byte	.LASF220
	.byte	0x1
	.byte	0x25
	.4byte	0x11c
	.uleb128 0x5
	.byte	0x3
	.4byte	s_event_queue
	.uleb128 0x2d
	.4byte	.LASF221
	.byte	0x1
	.byte	0x26
	.4byte	0x60c
	.uleb128 0x5
	.byte	0x3
	.4byte	s_event_handler_cb
	.uleb128 0x2d
	.4byte	.LASF222
	.byte	0x1
	.byte	0x27
	.4byte	0xa2
	.uleb128 0x5
	.byte	0x3
	.4byte	s_event_ctx
	.uleb128 0x30
	.4byte	.LASF234
	.byte	0xd
	.2byte	0x223
	.4byte	0xaec
	.uleb128 0x31
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0xb
	.byte	0xa9
	.uleb128 0x31
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0xe
	.byte	0x57
	.uleb128 0x31
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0xe
	.byte	0x6b
	.uleb128 0x32
	.4byte	.LASF226
	.4byte	.LASF226
	.byte	0x6
	.2byte	0x38a
	.uleb128 0x33
	.4byte	.LASF235
	.4byte	.LASF235
	.uleb128 0x32
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0x6
	.2byte	0x265
	.uleb128 0x32
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0x6
	.2byte	0x5d0
	.uleb128 0x32
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0xf
	.2byte	0x151
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
	.uleb128 0xe
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
	.uleb128 0x17
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
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x16
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
	.uleb128 0x18
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
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
	.uleb128 0x1a
	.uleb128 0xd
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
	.uleb128 0x1b
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x5
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE24
	.2byte	0x5
	.byte	0x3
	.4byte	s_event_handler_cb
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL20
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
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x5
	.byte	0x3
	.4byte	s_event_handler_cb
	.4byte	.LVL36-1
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL34
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF232:
	.string	"/home/raphael/rtone/lcd/build/esp32"
.LASF173:
	.string	"capacity"
.LASF199:
	.string	"mesh_event_info_t"
.LASF134:
	.string	"MESH_EVENT_VOTE_STOPPED"
.LASF64:
	.string	"SYSTEM_EVENT_AP_STAIPASSIGNED"
.LASF45:
	.string	"TCPIP_ADAPTER_IF_MAX"
.LASF196:
	.string	"network_state"
.LASF63:
	.string	"SYSTEM_EVENT_AP_STADISCONNECTED"
.LASF62:
	.string	"SYSTEM_EVENT_AP_STACONNECTED"
.LASF135:
	.string	"MESH_EVENT_ROOT_ADDRESS"
.LASF156:
	.string	"mesh_event_no_parent_found_t"
.LASF153:
	.string	"self_layer"
.LASF4:
	.string	"__uint8_t"
.LASF96:
	.string	"pin_code"
.LASF118:
	.string	"event_info"
.LASF115:
	.string	"got_ip6"
.LASF165:
	.string	"router_bssid"
.LASF77:
	.string	"system_event_sta_wps_fail_reason_t"
.LASF123:
	.string	"MESH_EVENT_CHANNEL_SWITCH"
.LASF179:
	.string	"mesh_event_root_fixed_t"
.LASF89:
	.string	"system_event_sta_disconnected_t"
.LASF148:
	.string	"mesh_event_id_t"
.LASF225:
	.string	"esp_log_write"
.LASF37:
	.string	"addr"
.LASF97:
	.string	"system_event_sta_wps_er_pin_t"
.LASF213:
	.string	"pvParameters"
.LASF128:
	.string	"MESH_EVENT_PARENT_CONNECTED"
.LASF143:
	.string	"MESH_EVENT_NETWORK_STATE"
.LASF214:
	.string	"old_cb"
.LASF218:
	.string	"esp_event_loop_init"
.LASF103:
	.string	"rssi"
.LASF49:
	.string	"SYSTEM_EVENT_STA_START"
.LASF208:
	.string	"ESP_LOG_DEBUG"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF136:
	.string	"MESH_EVENT_ROOT_SWITCH_REQ"
.LASF137:
	.string	"MESH_EVENT_ROOT_SWITCH_ACK"
.LASF167:
	.string	"mesh_event_root_got_ip_t"
.LASF175:
	.string	"rt_size_new"
.LASF11:
	.string	"long long unsigned int"
.LASF44:
	.string	"TCPIP_ADAPTER_IF_ETH"
.LASF3:
	.string	"__int8_t"
.LASF58:
	.string	"SYSTEM_EVENT_STA_WPS_ER_TIMEOUT"
.LASF192:
	.string	"root_addr"
.LASF87:
	.string	"system_event_sta_connected_t"
.LASF109:
	.string	"got_ip"
.LASF222:
	.string	"s_event_ctx"
.LASF132:
	.string	"MESH_EVENT_TODS_STATE"
.LASF229:
	.string	"xTaskCreatePinnedToCore"
.LASF12:
	.string	"long int"
.LASF177:
	.string	"mesh_event_routing_table_change_t"
.LASF35:
	.string	"ip4_addr"
.LASF91:
	.string	"new_mode"
.LASF33:
	.string	"wifi_auth_mode_t"
.LASF26:
	.string	"WIFI_AUTH_OPEN"
.LASF235:
	.string	"memcpy"
.LASF50:
	.string	"SYSTEM_EVENT_STA_STOP"
.LASF142:
	.string	"MESH_EVENT_SCAN_DONE"
.LASF98:
	.string	"if_index"
.LASF18:
	.string	"uint16_t"
.LASF178:
	.string	"is_fixed"
.LASF38:
	.string	"ip6_addr_t"
.LASF23:
	.string	"BaseType_t"
.LASF39:
	.string	"netmask"
.LASF80:
	.string	"scan_id"
.LASF152:
	.string	"mesh_event_channel_switch_t"
.LASF151:
	.string	"mesh_addr_t"
.LASF215:
	.string	"esp_event_loop_set_cb"
.LASF201:
	.string	"mesh_event_t"
.LASF133:
	.string	"MESH_EVENT_VOTE_STARTED"
.LASF9:
	.string	"__uint32_t"
.LASF145:
	.string	"MESH_EVENT_FIND_NETWORK"
.LASF211:
	.string	"esp_event_loop_task"
.LASF32:
	.string	"WIFI_AUTH_MAX"
.LASF127:
	.string	"MESH_EVENT_ROUTING_TABLE_REMOVE"
.LASF112:
	.string	"sta_connected"
.LASF191:
	.string	"vote_started"
.LASF226:
	.string	"xQueueGenericReceive"
.LASF29:
	.string	"WIFI_AUTH_WPA2_PSK"
.LASF131:
	.string	"MESH_EVENT_LAYER_CHANGE"
.LASF172:
	.string	"mesh_event_root_switch_req_t"
.LASF130:
	.string	"MESH_EVENT_NO_PARENT_FOUND"
.LASF99:
	.string	"ip6_info"
.LASF0:
	.string	"unsigned int"
.LASF82:
	.string	"ssid"
.LASF69:
	.string	"SYSTEM_EVENT_ETH_CONNECTED"
.LASF116:
	.string	"system_event_info_t"
.LASF14:
	.string	"long unsigned int"
.LASF28:
	.string	"WIFI_AUTH_WPA_PSK"
.LASF194:
	.string	"root_conflict"
.LASF110:
	.string	"sta_er_pin"
.LASF86:
	.string	"authmode"
.LASF101:
	.string	"system_event_ap_staconnected_t"
.LASF227:
	.string	"xQueueGenericSend"
.LASF212:
	.string	"event"
.LASF111:
	.string	"sta_er_fail_reason"
.LASF1:
	.string	"short unsigned int"
.LASF144:
	.string	"MESH_EVENT_STOP_RECONNECTION"
.LASF42:
	.string	"TCPIP_ADAPTER_IF_STA"
.LASF149:
	.string	"port"
.LASF71:
	.string	"SYSTEM_EVENT_ETH_GOT_IP"
.LASF182:
	.string	"mesh_event_network_state_t"
.LASF219:
	.string	"s_event_init_flag"
.LASF79:
	.string	"number"
.LASF147:
	.string	"MESH_EVENT_MAX"
.LASF40:
	.string	"tcpip_adapter_ip_info_t"
.LASF158:
	.string	"mesh_event_layer_change_t"
.LASF231:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/event_loop.c"
.LASF220:
	.string	"s_event_queue"
.LASF169:
	.string	"mesh_event_disconnected_t"
.LASF117:
	.string	"event_id"
.LASF161:
	.string	"mesh_event_toDS_state_t"
.LASF83:
	.string	"ssid_len"
.LASF166:
	.string	"mesh_event_find_network_t"
.LASF119:
	.string	"system_event_t"
.LASF30:
	.string	"WIFI_AUTH_WPA_WPA2_PSK"
.LASF197:
	.string	"find_network"
.LASF100:
	.string	"system_event_got_ip6_t"
.LASF207:
	.string	"ESP_LOG_INFO"
.LASF139:
	.string	"MESH_EVENT_ROOT_LOST_IP"
.LASF31:
	.string	"WIFI_AUTH_WPA2_ENTERPRISE"
.LASF16:
	.string	"int8_t"
.LASF74:
	.string	"WPS_FAIL_REASON_NORMAL"
.LASF124:
	.string	"MESH_EVENT_CHILD_CONNECTED"
.LASF13:
	.string	"sizetype"
.LASF55:
	.string	"SYSTEM_EVENT_STA_LOST_IP"
.LASF155:
	.string	"scan_times"
.LASF121:
	.string	"MESH_EVENT_STARTED"
.LASF106:
	.string	"disconnected"
.LASF24:
	.string	"TickType_t"
.LASF114:
	.string	"ap_probereqrecved"
.LASF53:
	.string	"SYSTEM_EVENT_STA_AUTHMODE_CHANGE"
.LASF75:
	.string	"WPS_FAIL_REASON_RECV_M2D"
.LASF92:
	.string	"system_event_sta_authmode_change_t"
.LASF157:
	.string	"new_layer"
.LASF48:
	.string	"SYSTEM_EVENT_SCAN_DONE"
.LASF102:
	.string	"system_event_ap_stadisconnected_t"
.LASF180:
	.string	"mesh_event_scan_done_t"
.LASF66:
	.string	"SYSTEM_EVENT_GOT_IP6"
.LASF46:
	.string	"tcpip_adapter_if_t"
.LASF176:
	.string	"rt_size_change"
.LASF104:
	.string	"system_event_ap_probe_req_rx_t"
.LASF234:
	.string	"g_mesh_event_cb"
.LASF138:
	.string	"MESH_EVENT_ROOT_GOT_IP"
.LASF203:
	.string	"float"
.LASF84:
	.string	"bssid"
.LASF188:
	.string	"no_parent"
.LASF122:
	.string	"MESH_EVENT_STOPPED"
.LASF94:
	.string	"ip_changed"
.LASF73:
	.string	"system_event_id_t"
.LASF22:
	.string	"_Bool"
.LASF19:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF190:
	.string	"toDS_state"
.LASF113:
	.string	"sta_disconnected"
.LASF93:
	.string	"ip_info"
.LASF120:
	.string	"system_event_cb_t"
.LASF216:
	.string	"esp_event_send"
.LASF6:
	.string	"short int"
.LASF200:
	.string	"info"
.LASF217:
	.string	"mevent"
.LASF224:
	.string	"esp_log_timestamp"
.LASF159:
	.string	"MESH_TODS_UNREACHABLE"
.LASF90:
	.string	"old_mode"
.LASF59:
	.string	"SYSTEM_EVENT_STA_WPS_ER_PIN"
.LASF228:
	.string	"xQueueGenericCreate"
.LASF95:
	.string	"system_event_sta_got_ip_t"
.LASF43:
	.string	"TCPIP_ADAPTER_IF_AP"
.LASF88:
	.string	"reason"
.LASF125:
	.string	"MESH_EVENT_CHILD_DISCONNECTED"
.LASF85:
	.string	"channel"
.LASF108:
	.string	"auth_change"
.LASF72:
	.string	"SYSTEM_EVENT_MAX"
.LASF25:
	.string	"QueueHandle_t"
.LASF233:
	.string	"esp_event_loop_get_queue"
.LASF20:
	.string	"uint32_t"
.LASF68:
	.string	"SYSTEM_EVENT_ETH_STOP"
.LASF223:
	.string	"esp_event_process_default"
.LASF171:
	.string	"mesh_event_child_disconnected_t"
.LASF202:
	.string	"mesh_event_cb_t"
.LASF36:
	.string	"ip6_addr"
.LASF198:
	.string	"router_switch"
.LASF15:
	.string	"char"
.LASF209:
	.string	"ESP_LOG_VERBOSE"
.LASF51:
	.string	"SYSTEM_EVENT_STA_CONNECTED"
.LASF61:
	.string	"SYSTEM_EVENT_AP_STOP"
.LASF7:
	.string	"__uint16_t"
.LASF107:
	.string	"scan_done"
.LASF204:
	.string	"ESP_LOG_NONE"
.LASF129:
	.string	"MESH_EVENT_PARENT_DISCONNECTED"
.LASF8:
	.string	"__int32_t"
.LASF70:
	.string	"SYSTEM_EVENT_ETH_DISCONNECTED"
.LASF57:
	.string	"SYSTEM_EVENT_STA_WPS_ER_FAILED"
.LASF56:
	.string	"SYSTEM_EVENT_STA_WPS_ER_SUCCESS"
.LASF221:
	.string	"s_event_handler_cb"
.LASF174:
	.string	"mesh_event_root_conflict_t"
.LASF183:
	.string	"mesh_event_router_switch_t"
.LASF181:
	.string	"is_rootless"
.LASF205:
	.string	"ESP_LOG_ERROR"
.LASF34:
	.string	"ip4_addr_t"
.LASF185:
	.string	"child_connected"
.LASF105:
	.string	"connected"
.LASF187:
	.string	"routing_table"
.LASF41:
	.string	"tcpip_adapter_ip6_info_t"
.LASF206:
	.string	"ESP_LOG_WARN"
.LASF47:
	.string	"SYSTEM_EVENT_WIFI_READY"
.LASF141:
	.string	"MESH_EVENT_ROOT_FIXED"
.LASF78:
	.string	"status"
.LASF150:
	.string	"mip_t"
.LASF21:
	.string	"esp_err_t"
.LASF164:
	.string	"mesh_event_vote_started_t"
.LASF52:
	.string	"SYSTEM_EVENT_STA_DISCONNECTED"
.LASF67:
	.string	"SYSTEM_EVENT_ETH_START"
.LASF17:
	.string	"uint8_t"
.LASF186:
	.string	"child_disconnected"
.LASF193:
	.string	"switch_req"
.LASF162:
	.string	"attempts"
.LASF170:
	.string	"mesh_event_child_connected_t"
.LASF230:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF126:
	.string	"MESH_EVENT_ROUTING_TABLE_ADD"
.LASF195:
	.string	"root_fixed"
.LASF210:
	.string	"esp_event_post_to_user"
.LASF76:
	.string	"WPS_FAIL_REASON_MAX"
.LASF189:
	.string	"layer_change"
.LASF140:
	.string	"MESH_EVENT_ROOT_ASKED_YIELD"
.LASF154:
	.string	"mesh_event_connected_t"
.LASF184:
	.string	"channel_switch"
.LASF81:
	.string	"system_event_sta_scan_done_t"
.LASF54:
	.string	"SYSTEM_EVENT_STA_GOT_IP"
.LASF65:
	.string	"SYSTEM_EVENT_AP_PROBEREQRECVED"
.LASF160:
	.string	"MESH_TODS_REACHABLE"
.LASF163:
	.string	"rc_addr"
.LASF146:
	.string	"MESH_EVENT_ROUTER_SWITCH"
.LASF60:
	.string	"SYSTEM_EVENT_AP_START"
.LASF27:
	.string	"WIFI_AUTH_WEP"
.LASF168:
	.string	"mesh_event_root_address_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
