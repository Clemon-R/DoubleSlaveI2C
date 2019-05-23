	.file	"init.c"
	.text
.Ltext0:
	.section	.text.lwip_init,"ax",@progbits
	.align	4
	.global	lwip_init
	.type	lwip_init, @function
lwip_init:
.LFB38:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/core/init.c"
	.loc 1 338 0
	entry	sp, 32
.LCFI0:
.LVL0:
	.loc 1 351 0
	call8	sys_init
.LVL1:
	.loc 1 353 0
	call8	mem_init
.LVL2:
	.loc 1 354 0
	call8	memp_init
.LVL3:
	.loc 1 356 0
	call8	netif_init
.LVL4:
	.loc 1 367 0
	call8	udp_init
.LVL5:
	.loc 1 370 0
	call8	tcp_init
.LVL6:
	.loc 1 373 0
	call8	igmp_init
.LVL7:
	.loc 1 376 0
	call8	dns_init
.LVL8:
	.loc 1 383 0
	call8	sys_timeouts_init
.LVL9:
	retw.n
.LFE38:
	.size	lwip_init, .-lwip_init
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
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI0-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/sys.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/mem.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/memp.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/udp.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/priv/tcp_priv.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/igmp.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/dns.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/timeouts.h"
	.file 11 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x181
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0xc
	.4byte	.LASF22
	.4byte	.LASF23
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0xb
	.byte	0x95
	.4byte	0x3e
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x151
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10a
	.uleb128 0x6
	.string	"a"
	.byte	0x1
	.2byte	0x154
	.4byte	0x3e
	.4byte	.LLST0
	.uleb128 0x7
	.4byte	.LASF26
	.4byte	0x11a
	.uleb128 0x8
	.4byte	.LVL1
	.4byte	0x11f
	.uleb128 0x8
	.4byte	.LVL2
	.4byte	0x12b
	.uleb128 0x8
	.4byte	.LVL3
	.4byte	0x136
	.uleb128 0x8
	.4byte	.LVL4
	.4byte	0x141
	.uleb128 0x8
	.4byte	.LVL5
	.4byte	0x14d
	.uleb128 0x8
	.4byte	.LVL6
	.4byte	0x158
	.uleb128 0x8
	.4byte	.LVL7
	.4byte	0x163
	.uleb128 0x8
	.4byte	.LVL8
	.4byte	0x16e
	.uleb128 0x8
	.4byte	.LVL9
	.4byte	0x179
	.byte	0
	.uleb128 0x9
	.4byte	0x7d
	.4byte	0x11a
	.uleb128 0xa
	.4byte	0x6f
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.4byte	0x10a
	.uleb128 0xc
	.4byte	.LASF12
	.4byte	.LASF12
	.byte	0x2
	.2byte	0x163
	.uleb128 0xd
	.4byte	.LASF13
	.4byte	.LASF13
	.byte	0x3
	.byte	0x58
	.uleb128 0xd
	.4byte	.LASF14
	.4byte	.LASF14
	.byte	0x4
	.byte	0x8d
	.uleb128 0xc
	.4byte	.LASF15
	.4byte	.LASF15
	.byte	0x5
	.2byte	0x17e
	.uleb128 0xd
	.4byte	.LASF16
	.4byte	.LASF16
	.byte	0x6
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x7
	.byte	0x3d
	.uleb128 0xd
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x8
	.byte	0x5a
	.uleb128 0xd
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x9
	.byte	0x69
	.uleb128 0xd
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0xa
	.byte	0x60
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xd
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
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
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
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"long long int"
.LASF1:
	.string	"short unsigned int"
.LASF14:
	.string	"memp_init"
.LASF0:
	.string	"unsigned int"
.LASF21:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF22:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/core/init.c"
.LASF24:
	.string	"ptrdiff_t"
.LASF9:
	.string	"long unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF13:
	.string	"mem_init"
.LASF25:
	.string	"lwip_init"
.LASF20:
	.string	"sys_timeouts_init"
.LASF3:
	.string	"unsigned char"
.LASF23:
	.string	"/home/raphael/rtone/lcd/build/lwip"
.LASF10:
	.string	"char"
.LASF15:
	.string	"netif_init"
.LASF7:
	.string	"long int"
.LASF19:
	.string	"dns_init"
.LASF4:
	.string	"short int"
.LASF11:
	.string	"_Bool"
.LASF26:
	.string	"__func__"
.LASF2:
	.string	"signed char"
.LASF16:
	.string	"udp_init"
.LASF12:
	.string	"sys_init"
.LASF17:
	.string	"tcp_init"
.LASF18:
	.string	"igmp_init"
.LASF8:
	.string	"sizetype"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
