	.file	"platform.c"
	.text
.Ltext0:
	.section	.text.mbedtls_calloc,"ax",@progbits
	.literal_position
	.literal .LC0, mbedtls_calloc_func
	.align	4
	.global	mbedtls_calloc
	.type	mbedtls_calloc, @function
mbedtls_calloc:
.LFB0:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/mbedtls/mbedtls/library/platform.c"
	.loc 1 58 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 59 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL1:
	.loc 1 60 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LFE0:
	.size	mbedtls_calloc, .-mbedtls_calloc
	.section	.text.mbedtls_free,"ax",@progbits
	.literal_position
	.literal .LC1, mbedtls_free_func
	.align	4
	.global	mbedtls_free
	.type	mbedtls_free, @function
mbedtls_free:
.LFB1:
	.loc 1 63 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 64 0
	l32r	a8, .LC1
	l32i.n	a8, a8, 0
	mov.n	a10, a2
	callx8	a8
.LVL4:
	retw.n
.LFE1:
	.size	mbedtls_free, .-mbedtls_free
	.section	.text.mbedtls_platform_set_calloc_free,"ax",@progbits
	.literal_position
	.literal .LC2, mbedtls_calloc_func
	.literal .LC3, mbedtls_free_func
	.align	4
	.global	mbedtls_platform_set_calloc_free
	.type	mbedtls_platform_set_calloc_free, @function
mbedtls_platform_set_calloc_free:
.LFB2:
	.loc 1 69 0
.LVL5:
	entry	sp, 32
.LCFI2:
	.loc 1 70 0
	l32r	a8, .LC2
	s32i.n	a2, a8, 0
	.loc 1 71 0
	l32r	a8, .LC3
	s32i.n	a3, a8, 0
	.loc 1 73 0
	movi.n	a2, 0
.LVL6:
	retw.n
.LFE2:
	.size	mbedtls_platform_set_calloc_free, .-mbedtls_platform_set_calloc_free
	.section	.text.mbedtls_platform_setup,"ax",@progbits
	.align	4
	.global	mbedtls_platform_setup
	.type	mbedtls_platform_setup, @function
mbedtls_platform_setup:
.LFB3:
	.loc 1 324 0
.LVL7:
	entry	sp, 32
.LCFI3:
	.loc 1 328 0
	movi.n	a2, 0
.LVL8:
	retw.n
.LFE3:
	.size	mbedtls_platform_setup, .-mbedtls_platform_setup
	.section	.text.mbedtls_platform_teardown,"ax",@progbits
	.align	4
	.global	mbedtls_platform_teardown
	.type	mbedtls_platform_teardown, @function
mbedtls_platform_teardown:
.LFB4:
	.loc 1 334 0
.LVL9:
	entry	sp, 32
.LCFI4:
	retw.n
.LFE4:
	.size	mbedtls_platform_teardown, .-mbedtls_platform_teardown
	.section	.data.mbedtls_free_func,"aw",@progbits
	.align	4
	.type	mbedtls_free_func, @object
	.size	mbedtls_free_func, 4
mbedtls_free_func:
	.word	esp_mbedtls_mem_free
	.section	.data.mbedtls_calloc_func,"aw",@progbits
	.align	4
	.type	mbedtls_calloc_func, @object
	.size	mbedtls_calloc_func, 4
mbedtls_calloc_func:
	.word	esp_mbedtls_mem_calloc
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1fa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0xc
	.4byte	.LASF25
	.4byte	.LASF26
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF11
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0x3
	.2byte	0x13e
	.4byte	0xa1
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x3
	.2byte	0x140
	.4byte	0x7f
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x3
	.2byte	0x142
	.4byte	0x86
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x39
	.4byte	0x76
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf5
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x1
	.byte	0x39
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x39
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.4byte	.LVL1
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0x3e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x124
	.uleb128 0xf
	.string	"ptr"
	.byte	0x1
	.byte	0x3e
	.4byte	0x76
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xc
	.4byte	.LVL4
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x43
	.4byte	0x3e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15a
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x1
	.byte	0x43
	.4byte	0x16e
	.4byte	.LLST1
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x44
	.4byte	0x17f
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x10
	.4byte	0x76
	.4byte	0x16e
	.uleb128 0x11
	.4byte	0x25
	.uleb128 0x11
	.4byte	0x25
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0x15a
	.uleb128 0x13
	.4byte	0x17f
	.uleb128 0x11
	.4byte	0x76
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0x174
	.uleb128 0x14
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x143
	.4byte	0x3e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b0
	.uleb128 0x15
	.string	"ctx"
	.byte	0x1
	.2byte	0x143
	.4byte	0x1b0
	.4byte	.LLST2
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0xa1
	.uleb128 0x16
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x14d
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1db
	.uleb128 0x17
	.string	"ctx"
	.byte	0x1
	.2byte	0x14d
	.4byte	0x1b0
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x18
	.4byte	.LASF22
	.byte	0x1
	.byte	0x36
	.4byte	0x16e
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_calloc_func
	.uleb128 0x18
	.4byte	.LASF23
	.byte	0x1
	.byte	0x37
	.4byte	0x17f
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_free_func
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE2
	.2byte	0x5
	.byte	0x3
	.4byte	mbedtls_calloc_func
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE3
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"/home/raphael/rtone/lcd/build/mbedtls"
.LASF17:
	.string	"calloc_func"
.LASF11:
	.string	"size_t"
.LASF1:
	.string	"short unsigned int"
.LASF13:
	.string	"nmemb"
.LASF24:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF23:
	.string	"mbedtls_free_func"
.LASF14:
	.string	"size"
.LASF16:
	.string	"mbedtls_platform_set_calloc_free"
.LASF9:
	.string	"long unsigned int"
.LASF20:
	.string	"mbedtls_free"
.LASF3:
	.string	"unsigned char"
.LASF0:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF8:
	.string	"sizetype"
.LASF19:
	.string	"mbedtls_platform_setup"
.LASF5:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF18:
	.string	"free_func"
.LASF4:
	.string	"short int"
.LASF15:
	.string	"mbedtls_calloc"
.LASF27:
	.string	"dummy"
.LASF25:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/mbedtls/mbedtls/library/platform.c"
.LASF7:
	.string	"long int"
.LASF21:
	.string	"mbedtls_platform_teardown"
.LASF2:
	.string	"signed char"
.LASF12:
	.string	"mbedtls_platform_context"
.LASF22:
	.string	"mbedtls_calloc_func"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
