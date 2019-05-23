	.file	"esp_event_private.c"
	.text
.Ltext0:
	.section	.text.esp_event_is_handler_registered,"ax",@progbits
	.align	4
	.global	esp_event_is_handler_registered
	.type	esp_event_is_handler_registered, @function
esp_event_is_handler_registered:
.LFB22:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp_event/esp_event_private.c"
	.loc 1 21 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 25 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32i.n	a10, a2, 16
	call8	xQueueGenericReceive
.LVL2:
	.loc 1 28 0
	l32i.n	a10, a2, 24
.LVL3:
	j	.L2
.L9:
.LBB2:
	.loc 1 30 0
	l32i.n	a11, a10, 8
.LVL4:
	j	.L3
.L8:
.LBB3:
	.loc 1 32 0
	l32i.n	a8, a11, 4
.LVL5:
	j	.L4
.L7:
	.loc 1 33 0
	l32i.n	a9, a10, 0
	bne	a9, a3, .L5
	.loc 1 33 0 is_stmt 0 discriminator 1
	l32i.n	a9, a11, 0
	bne	a9, a4, .L5
	.loc 1 33 0 discriminator 2
	l32i.n	a9, a8, 0
	beq	a9, a5, .L10
.L5:
	.loc 1 32 0 is_stmt 1 discriminator 2
	l32i.n	a8, a8, 8
.LVL6:
.L4:
	.loc 1 32 0 is_stmt 0 discriminator 1
	bnez.n	a8, .L7
.LBE3:
	.loc 1 30 0 is_stmt 1 discriminator 2
	l32i.n	a11, a11, 8
.LVL7:
.L3:
	.loc 1 30 0 is_stmt 0 discriminator 1
	bnez.n	a11, .L8
.LBE2:
	.loc 1 28 0 is_stmt 1 discriminator 2
	l32i.n	a10, a10, 12
.LVL8:
.L2:
	.loc 1 28 0 is_stmt 0 discriminator 1
	bnez.n	a10, .L9
	.loc 1 24 0 is_stmt 1
	movi.n	a3, 0
.LVL9:
	j	.L6
.LVL10:
.L10:
.LBB5:
.LBB4:
	.loc 1 34 0
	movi.n	a3, 1
.LVL11:
.L6:
.LBE4:
.LBE5:
	.loc 1 42 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32i.n	a10, a2, 16
.LVL12:
	call8	xQueueGenericSend
.LVL13:
	.loc 1 44 0
	mov.n	a2, a3
.LVL14:
	retw.n
.LFE22:
	.size	esp_event_is_handler_registered, .-esp_event_is_handler_registered
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
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/task.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/queue.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp_event/include/esp_event_base.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp_event/private_include/esp_event_internal.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x435
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0xc
	.4byte	.LASF67
	.4byte	.LASF68
	.4byte	.Ldebug_ranges0+0x30
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
	.byte	0x2
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
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
	.byte	0x3
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x5
	.byte	0x4
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0x7
	.4byte	0xa0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x6f
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x76
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x6e
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x58
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x7
	.byte	0x4f
	.4byte	0xda
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x8
	.byte	0x1b
	.4byte	0xa7
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x8
	.byte	0x1c
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x8
	.byte	0x1d
	.4byte	0x111
	.uleb128 0x6
	.byte	0x4
	.4byte	0x117
	.uleb128 0x8
	.4byte	0x131
	.uleb128 0x9
	.4byte	0x89
	.uleb128 0x9
	.4byte	0xf0
	.uleb128 0x9
	.4byte	0x73
	.uleb128 0x9
	.4byte	0x89
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x9
	.byte	0x20
	.4byte	0x146
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x9
	.byte	0x20
	.4byte	0x177
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0xc
	.byte	0x9
	.byte	0x19
	.4byte	0x177
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x9
	.byte	0x1a
	.4byte	0x106
	.byte	0
	.uleb128 0xd
	.string	"arg"
	.byte	0x9
	.byte	0x1b
	.4byte	0x89
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x9
	.byte	0x20
	.4byte	0x131
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x146
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x9
	.byte	0x21
	.4byte	0x146
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x4
	.byte	0x9
	.byte	0x23
	.4byte	0x1a1
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x9
	.byte	0x23
	.4byte	0x177
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x9
	.byte	0x23
	.4byte	0x188
	.uleb128 0xa
	.byte	0x4
	.byte	0x9
	.byte	0x29
	.4byte	0x1c1
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x9
	.byte	0x29
	.4byte	0x1f1
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0xc
	.byte	0x9
	.byte	0x25
	.4byte	0x1f1
	.uleb128 0xd
	.string	"id"
	.byte	0x9
	.byte	0x26
	.4byte	0x73
	.byte	0
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x9
	.byte	0x27
	.4byte	0x1a1
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x9
	.byte	0x29
	.4byte	0x1ac
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c1
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x9
	.byte	0x2f
	.4byte	0x1c1
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x4
	.byte	0x9
	.byte	0x31
	.4byte	0x21b
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x9
	.byte	0x31
	.4byte	0x1f1
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x9
	.byte	0x31
	.4byte	0x202
	.uleb128 0xa
	.byte	0x4
	.byte	0x9
	.byte	0x39
	.4byte	0x23b
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x9
	.byte	0x39
	.4byte	0x278
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x10
	.byte	0x9
	.byte	0x34
	.4byte	0x278
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x9
	.byte	0x35
	.4byte	0xf0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x9
	.byte	0x36
	.4byte	0x1a1
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x9
	.byte	0x38
	.4byte	0x21b
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x9
	.byte	0x39
	.4byte	0x226
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x23b
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x9
	.byte	0x3e
	.4byte	0x23b
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x4
	.byte	0x9
	.byte	0x40
	.4byte	0x2a2
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x9
	.byte	0x40
	.4byte	0x278
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x9
	.byte	0x40
	.4byte	0x289
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x1c
	.byte	0x9
	.byte	0x43
	.4byte	0x30e
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x9
	.byte	0x44
	.4byte	0xa7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x9
	.byte	0x45
	.4byte	0xda
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x9
	.byte	0x46
	.4byte	0xcf
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x9
	.byte	0x47
	.4byte	0xcf
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x9
	.byte	0x49
	.4byte	0xe5
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x9
	.byte	0x4a
	.4byte	0x1a1
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x9
	.byte	0x4c
	.4byte	0x2a2
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x9
	.byte	0x57
	.4byte	0x2ad
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x1
	.byte	0x14
	.4byte	0xb2
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x408
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x1
	.byte	0x14
	.4byte	0xfb
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x1
	.byte	0x14
	.4byte	0xf0
	.4byte	.LLST1
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x1
	.byte	0x14
	.4byte	0x73
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x1
	.byte	0x14
	.4byte	0x106
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x1
	.byte	0x16
	.4byte	0x408
	.4byte	.LLST2
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x1
	.byte	0x18
	.4byte	0xb2
	.4byte	.LLST3
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x1
	.byte	0x1b
	.4byte	0x40e
	.4byte	.LLST4
	.uleb128 0x12
	.string	"out"
	.byte	0x1
	.byte	0x29
	.4byte	.L6
	.uleb128 0x13
	.4byte	.Ldebug_ranges0+0
	.4byte	0x3d0
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x1
	.byte	0x1d
	.4byte	0x414
	.4byte	.LLST5
	.uleb128 0x14
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x1
	.byte	0x1f
	.4byte	0x41a
	.4byte	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL2
	.4byte	0x420
	.4byte	0x3ee
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL13
	.4byte	0x42c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x30e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x27e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1f7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x17d
	.uleb128 0x18
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x38a
	.uleb128 0x18
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x265
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF35:
	.string	"esp_event_id_instance_t"
.LASF60:
	.string	"result"
.LASF31:
	.string	"esp_event_handler_instances_t"
.LASF2:
	.string	"short int"
.LASF29:
	.string	"esp_event_handler_instances"
.LASF12:
	.string	"sizetype"
.LASF53:
	.string	"event_bases"
.LASF18:
	.string	"TaskHandle_t"
.LASF49:
	.string	"task"
.LASF41:
	.string	"event_ids"
.LASF46:
	.string	"esp_event_loop_instance"
.LASF69:
	.string	"esp_event_is_handler_registered"
.LASF5:
	.string	"__uint32_t"
.LASF55:
	.string	"event_loop"
.LASF25:
	.string	"handler"
.LASF38:
	.string	"esp_event_base_instance"
.LASF28:
	.string	"esp_event_handler_instance"
.LASF56:
	.string	"event_base"
.LASF24:
	.string	"sle_next"
.LASF45:
	.string	"esp_event_base_instances_t"
.LASF0:
	.string	"signed char"
.LASF54:
	.string	"esp_event_loop_instance_t"
.LASF21:
	.string	"esp_event_base_t"
.LASF7:
	.string	"long long int"
.LASF17:
	.string	"TickType_t"
.LASF40:
	.string	"base_handlers"
.LASF11:
	.string	"long int"
.LASF19:
	.string	"QueueHandle_t"
.LASF48:
	.string	"queue"
.LASF47:
	.string	"name"
.LASF20:
	.string	"SemaphoreHandle_t"
.LASF1:
	.string	"unsigned char"
.LASF36:
	.string	"esp_event_id_instances"
.LASF61:
	.string	"base_it"
.LASF58:
	.string	"event_handler"
.LASF8:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF33:
	.string	"handlers"
.LASF6:
	.string	"unsigned int"
.LASF43:
	.string	"esp_event_base_instance_t"
.LASF16:
	.string	"BaseType_t"
.LASF30:
	.string	"slh_first"
.LASF51:
	.string	"mutex"
.LASF3:
	.string	"short unsigned int"
.LASF67:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp_event/esp_event_private.c"
.LASF32:
	.string	"esp_event_id_instance"
.LASF14:
	.string	"char"
.LASF42:
	.string	"event_base_entry"
.LASF9:
	.string	"int32_t"
.LASF22:
	.string	"esp_event_loop_handle_t"
.LASF15:
	.string	"_Bool"
.LASF64:
	.string	"xQueueGenericReceive"
.LASF27:
	.string	"esp_event_handler_instance_t"
.LASF13:
	.string	"long unsigned int"
.LASF63:
	.string	"handler_it"
.LASF57:
	.string	"event_id"
.LASF37:
	.string	"esp_event_id_instances_t"
.LASF52:
	.string	"loop_handlers"
.LASF34:
	.string	"event_id_entry"
.LASF4:
	.string	"__int32_t"
.LASF50:
	.string	"running_task"
.LASF62:
	.string	"event_it"
.LASF65:
	.string	"xQueueGenericSend"
.LASF59:
	.string	"loop"
.LASF44:
	.string	"esp_event_base_instances"
.LASF23:
	.string	"esp_event_handler_t"
.LASF39:
	.string	"base"
.LASF66:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF26:
	.string	"handler_entry"
.LASF68:
	.string	"/home/raphael/rtone/lcd/build/esp_event"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
