	.file	"hw_random.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, 1610830148
	.literal .LC1, last_ccount$2907
	.align	4
	.global	esp_random
	.type	esp_random, @function
esp_random:
.LFB3:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/hw_random.c"
	.loc 1 27 0
	entry	sp, 32
.LCFI0:
	.loc 1 46 0
	call8	esp_clk_cpu_freq
.LVL0:
	mov.n	a2, a10
	call8	esp_clk_apb_freq
.LVL1:
	quos	a10, a2, a10
.LVL2:
	.loc 1 50 0
	movi.n	a9, 0
.LVL3:
.L2:
.LBB2:
	.loc 1 52 0 discriminator 1
#APP
# 52 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/hw_random.c" 1
	rsr.ccount a8
# 0 "" 2
.LVL4:
#NO_APP
.LBE2:
	mov.n	a2, a8
.LVL5:
.LBB3:
	.loc 1 53 0 discriminator 1
	l32r	a11, .LC0
	memw
	l32i.n	a11, a11, 0
.LBE3:
	xor	a9, a9, a11
.LVL6:
	.loc 1 54 0 discriminator 1
	l32r	a11, .LC1
	l32i.n	a11, a11, 0
	sub	a8, a8, a11
.LVL7:
	slli	a11, a10, 4
	bltu	a8, a11, .L2
	.loc 1 55 0
	l32r	a8, .LC1
	s32i.n	a2, a8, 0
.LBB4:
	.loc 1 56 0
	l32r	a2, .LC0
.LVL8:
	memw
	l32i.n	a2, a2, 0
.LBE4:
	.loc 1 57 0
	xor	a2, a9, a2
	retw.n
.LFE3:
	.size	esp_random, .-esp_random
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"buf != NULL"
	.align	4
.LC5:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/hw_random.c"
	.section	.text.esp_fill_random,"ax",@progbits
	.literal_position
	.literal .LC3, .LC2
	.literal .LC4, __func__$2921
	.literal .LC6, .LC5
	.align	4
	.global	esp_fill_random
	.type	esp_fill_random, @function
esp_fill_random:
.LFB4:
	.loc 1 60 0
.LVL9:
	entry	sp, 48
.LCFI1:
	.loc 1 61 0
	bnez.n	a2, .L4
	.loc 1 61 0 is_stmt 0 discriminator 1
	l32r	a13, .LC3
	l32r	a12, .LC4
	movi.n	a11, 0x3d
	l32r	a10, .LC6
	call8	__assert_func
.LVL10:
.L5:
.LBB5:
	.loc 1 64 0 is_stmt 1
	call8	esp_random
.LVL11:
	s32i.n	a10, sp, 0
	.loc 1 65 0
	movi.n	a4, 4
	minu	a4, a3, a4
.LVL12:
	.loc 1 66 0
	mov.n	a12, a4
	mov.n	a11, sp
	mov.n	a10, a2
	call8	memcpy
.LVL13:
	.loc 1 67 0
	add.n	a2, a2, a4
.LVL14:
	.loc 1 68 0
	sub	a3, a3, a4
.LVL15:
.L4:
.LBE5:
	.loc 1 63 0
	bnez.n	a3, .L5
	.loc 1 70 0
	retw.n
.LFE4:
	.size	esp_fill_random, .-esp_fill_random
	.section	.rodata.__func__$2921,"a",@progbits
	.align	4
	.type	__func__$2921, @object
	.size	__func__$2921, 16
__func__$2921:
	.string	"esp_fill_random"
	.section	.bss.last_ccount$2907,"aw",@nobits
	.align	4
	.type	last_ccount$2907, @object
	.size	last_ccount$2907, 4
last_ccount$2907:
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI1-.LFB4
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_clk.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x25e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0xc
	.4byte	.LASF28
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x12
	.4byte	0x33
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1a
	.4byte	0x5a
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
	.byte	0x15
	.4byte	0x28
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2d
	.4byte	0x4f
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0xd8
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x1
	.byte	0x1a
	.4byte	0x7a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13c
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0x2e
	.4byte	0x7a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0x30
	.4byte	0x7a
	.uleb128 0x5
	.byte	0x3
	.4byte	last_ccount$2907
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x31
	.4byte	0x7a
	.4byte	.LLST0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x32
	.4byte	0x7a
	.4byte	.LLST1
	.uleb128 0x9
	.4byte	.LASF30
	.4byte	0x14c
	.uleb128 0xa
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x129
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x34
	.4byte	0x48
	.4byte	.LLST2
	.byte	0
	.uleb128 0xb
	.4byte	.LVL0
	.4byte	0x237
	.uleb128 0xb
	.4byte	.LVL1
	.4byte	0x242
	.byte	0
	.uleb128 0xc
	.4byte	0xa7
	.4byte	0x14c
	.uleb128 0xd
	.4byte	0x97
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.4byte	0x13c
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x1
	.byte	0x3b
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21c
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.byte	0x3b
	.4byte	0x9e
	.4byte	.LLST3
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0x3b
	.4byte	0x85
	.4byte	.LLST4
	.uleb128 0x11
	.4byte	.LASF30
	.4byte	0x22c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2921
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x1
	.byte	0x3e
	.4byte	0x231
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xa
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x1f0
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x1
	.byte	0x40
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x41
	.4byte	0x7a
	.4byte	.LLST5
	.uleb128 0xb
	.4byte	.LVL11
	.4byte	0xae
	.uleb128 0x12
	.4byte	.LVL13
	.4byte	0x24d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL10
	.4byte	0x256
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x3d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2921
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xa7
	.4byte	0x22c
	.uleb128 0xd
	.4byte	0x97
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.4byte	0x21c
	.uleb128 0x14
	.byte	0x4
	.4byte	0x6f
	.uleb128 0x15
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x5
	.byte	0x34
	.uleb128 0x15
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x5
	.byte	0x3f
	.uleb128 0x16
	.4byte	.LASF32
	.4byte	.LASF32
	.uleb128 0x15
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x6
	.byte	0x29
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE3
	.2byte	0x5
	.byte	0x3
	.4byte	last_ccount$2907
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE3
	.2byte	0x5
	.byte	0x3
	.4byte	last_ccount$2907
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"word"
.LASF4:
	.string	"__uint8_t"
.LASF17:
	.string	"last_ccount"
.LASF9:
	.string	"uint8_t"
.LASF23:
	.string	"to_copy"
.LASF27:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF30:
	.string	"__func__"
.LASF29:
	.string	"esp_random"
.LASF1:
	.string	"unsigned char"
.LASF14:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF11:
	.string	"size_t"
.LASF20:
	.string	"__ccount"
.LASF5:
	.string	"__uint32_t"
.LASF28:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/hw_random.c"
.LASF19:
	.string	"result"
.LASF26:
	.string	"__assert_func"
.LASF6:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF31:
	.string	"esp_fill_random"
.LASF21:
	.string	"buf_bytes"
.LASF18:
	.string	"ccount"
.LASF13:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF25:
	.string	"esp_clk_apb_freq"
.LASF32:
	.string	"memcpy"
.LASF24:
	.string	"esp_clk_cpu_freq"
.LASF2:
	.string	"short int"
.LASF10:
	.string	"uint32_t"
.LASF12:
	.string	"long int"
.LASF15:
	.string	"char"
.LASF0:
	.string	"signed char"
.LASF16:
	.string	"cpu_to_apb_freq_ratio"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
