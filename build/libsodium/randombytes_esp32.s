	.file	"randombytes_esp32.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"esp32"
	.section	.text.randombytes_esp32_implementation_name,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.type	randombytes_esp32_implementation_name, @function
randombytes_esp32_implementation_name:
.LFB6:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/libsodium/port/randombytes_esp32.c"
	.loc 1 18 0
	entry	sp, 32
.LCFI0:
	.loc 1 20 0
	l32r	a2, .LC1
	retw.n
.LFE6:
	.size	randombytes_esp32_implementation_name, .-randombytes_esp32_implementation_name
	.global	randombytes_esp32_implementation
	.section	.rodata.randombytes_esp32_implementation,"a",@progbits
	.align	4
	.type	randombytes_esp32_implementation, @object
	.size	randombytes_esp32_implementation, 24
randombytes_esp32_implementation:
	.word	randombytes_esp32_implementation_name
	.word	esp_random
	.word	0
	.word	0
	.word	esp_fill_random
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI0-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x18d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0xc
	.4byte	.LASF21
	.4byte	.LASF22
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x4
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x18
	.byte	0x5
	.byte	0x13
	.4byte	0xf1
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x5
	.byte	0x14
	.4byte	0x101
	.byte	0
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x5
	.byte	0x15
	.4byte	0x10c
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x5
	.byte	0x16
	.4byte	0x113
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x5
	.byte	0x17
	.4byte	0x12d
	.byte	0xc
	.uleb128 0x8
	.string	"buf"
	.byte	0x5
	.byte	0x18
	.4byte	0x14d
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0x19
	.4byte	0x158
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.4byte	0xf6
	.uleb128 0xa
	.byte	0x4
	.4byte	0xfc
	.uleb128 0xb
	.4byte	0x95
	.uleb128 0xa
	.byte	0x4
	.4byte	0xf1
	.uleb128 0x9
	.4byte	0x73
	.uleb128 0xa
	.byte	0x4
	.4byte	0x107
	.uleb128 0xc
	.uleb128 0xa
	.byte	0x4
	.4byte	0x112
	.uleb128 0xd
	.4byte	0x73
	.4byte	0x128
	.uleb128 0xe
	.4byte	0x128
	.byte	0
	.uleb128 0xb
	.4byte	0x73
	.uleb128 0xa
	.byte	0x4
	.4byte	0x119
	.uleb128 0xf
	.4byte	0x143
	.uleb128 0xe
	.4byte	0x143
	.uleb128 0xe
	.4byte	0x148
	.byte	0
	.uleb128 0xb
	.4byte	0x8c
	.uleb128 0xb
	.4byte	0x2c
	.uleb128 0xa
	.byte	0x4
	.4byte	0x133
	.uleb128 0x9
	.4byte	0x25
	.uleb128 0xa
	.byte	0x4
	.4byte	0x153
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0x11
	.4byte	0xf6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1d
	.4byte	0x18b
	.uleb128 0x5
	.byte	0x3
	.4byte	randombytes_esp32_implementation
	.uleb128 0xb
	.4byte	0x9c
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
	.uleb128 0x9
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"unsigned int"
.LASF14:
	.string	"implementation_name"
.LASF16:
	.string	"stir"
.LASF21:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/libsodium/port/randombytes_esp32.c"
.LASF5:
	.string	"size_t"
.LASF20:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF12:
	.string	"long unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF17:
	.string	"uniform"
.LASF3:
	.string	"unsigned char"
.LASF13:
	.string	"char"
.LASF9:
	.string	"uint32_t"
.LASF10:
	.string	"long int"
.LASF24:
	.string	"randombytes_esp32_implementation_name"
.LASF19:
	.string	"_Bool"
.LASF25:
	.string	"randombytes_esp32_implementation"
.LASF6:
	.string	"__uint32_t"
.LASF1:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF23:
	.string	"randombytes_implementation"
.LASF4:
	.string	"short int"
.LASF22:
	.string	"/home/raphael/rtone/lcd/build/libsodium"
.LASF18:
	.string	"close"
.LASF11:
	.string	"sizetype"
.LASF15:
	.string	"random"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
