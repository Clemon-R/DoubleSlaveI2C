	.file	"ethip6.c"
	.text
.Ltext0:
	.section	.text.ethip6_output,"ax",@progbits
	.literal_position
	.literal .LC0, 34525
	.align	4
	.global	ethip6_output
	.type	ethip6_output, @function
ethip6_output:
.LFB20:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/core/ipv6/ethip6.c"
	.loc 1 80 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 86 0
	l8ui	a9, a4, 0
	movi	a8, 0xff
	bne	a9, a8, .L2
	.loc 1 88 0
	movi.n	a8, 0x33
	s8i	a8, sp, 0
	.loc 1 89 0
	s8i	a8, sp, 1
	.loc 1 90 0
	l8ui	a8, a4, 12
	s8i	a8, sp, 2
	.loc 1 91 0
	l8ui	a8, a4, 13
	s8i	a8, sp, 3
	.loc 1 92 0
	l8ui	a8, a4, 14
	s8i	a8, sp, 4
	.loc 1 93 0
	l8ui	a4, a4, 15
.LVL1:
	s8i	a4, sp, 5
	.loc 1 96 0
	l32r	a14, .LC0
	mov.n	a13, sp
	movi	a12, 0xb7
	add.n	a12, a2, a12
	mov.n	a11, a3
	mov.n	a10, a2
	call8	ethernet_output
.LVL2:
	extui	a2, a10, 0, 8
.LVL3:
	retw.n
.LVL4:
.L2:
	.loc 1 103 0
	addi.n	a13, sp, 8
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	nd6_get_next_hop_addr_or_queue
.LVL5:
	extui	a10, a10, 0, 8
.LVL6:
	.loc 1 104 0
	bnez.n	a10, .L4
	.loc 1 109 0
	l32i.n	a11, sp, 8
	beqz.n	a11, .L5
	.loc 1 114 0
	movi.n	a12, 6
	mov.n	a10, sp
.LVL7:
	call8	memcpy
.LVL8:
	.loc 1 115 0
	l32r	a14, .LC0
	mov.n	a13, sp
	movi	a12, 0xb7
	add.n	a12, a2, a12
	mov.n	a11, a3
	mov.n	a10, a2
	call8	ethernet_output
.LVL9:
	extui	a2, a10, 0, 8
.LVL10:
	retw.n
.LVL11:
.L4:
	.loc 1 105 0
	mov.n	a2, a10
.LVL12:
	retw.n
.LVL13:
.L5:
	.loc 1 110 0
	movi.n	a2, 0
.LVL14:
	.loc 1 116 0
	retw.n
.LFE20:
	.size	ethip6_output, .-ethip6_output
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
	.uleb128 0x30
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/err.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/pbuf.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/prot/ethernet.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/netif/ethernet.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/nd6.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7a6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0xc
	.4byte	.LASF113
	.4byte	.LASF114
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
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0x11
	.4byte	0x45
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x12
	.4byte	0x57
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa6
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb4
	.uleb128 0x8
	.4byte	0xa7
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x14
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x21
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x6
	.byte	0x4
	.4byte	0xeb
	.uleb128 0x9
	.4byte	0xf6
	.uleb128 0xa
	.4byte	0x97
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.uleb128 0xb
	.4byte	0x97
	.4byte	0x10d
	.uleb128 0xc
	.4byte	0x90
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x39
	.4byte	0xb9
	.uleb128 0xd
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.byte	0x3d
	.4byte	0x18b
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0
	.uleb128 0xf
	.4byte	.LASF22
	.sleb128 -1
	.uleb128 0xf
	.4byte	.LASF23
	.sleb128 -2
	.uleb128 0xf
	.4byte	.LASF24
	.sleb128 -3
	.uleb128 0xf
	.4byte	.LASF25
	.sleb128 -4
	.uleb128 0xf
	.4byte	.LASF26
	.sleb128 -5
	.uleb128 0xf
	.4byte	.LASF27
	.sleb128 -6
	.uleb128 0xf
	.4byte	.LASF28
	.sleb128 -7
	.uleb128 0xf
	.4byte	.LASF29
	.sleb128 -8
	.uleb128 0xf
	.4byte	.LASF30
	.sleb128 -9
	.uleb128 0xf
	.4byte	.LASF31
	.sleb128 -10
	.uleb128 0xf
	.4byte	.LASF32
	.sleb128 -11
	.uleb128 0xf
	.4byte	.LASF33
	.sleb128 -12
	.uleb128 0xf
	.4byte	.LASF34
	.sleb128 -13
	.uleb128 0xf
	.4byte	.LASF35
	.sleb128 -14
	.uleb128 0xf
	.4byte	.LASF36
	.sleb128 -15
	.uleb128 0xf
	.4byte	.LASF37
	.sleb128 -16
	.byte	0
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x18
	.byte	0x5
	.byte	0x8e
	.4byte	0x204
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x5
	.byte	0x90
	.4byte	0x204
	.byte	0
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x5
	.byte	0x93
	.4byte	0x97
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x5
	.byte	0x9c
	.4byte	0xcf
	.byte	0x8
	.uleb128 0x12
	.string	"len"
	.byte	0x5
	.byte	0x9f
	.4byte	0xcf
	.byte	0xa
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x5
	.byte	0xa2
	.4byte	0xc4
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x5
	.byte	0xa5
	.4byte	0xc4
	.byte	0xd
	.uleb128 0x12
	.string	"ref"
	.byte	0x5
	.byte	0xac
	.4byte	0xcf
	.byte	0xe
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x5
	.byte	0xaf
	.4byte	0x3a2
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x5
	.byte	0xb0
	.4byte	0x97
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x18b
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0xf0
	.byte	0x6
	.byte	0xeb
	.4byte	0x3a2
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x6
	.byte	0xed
	.4byte	0x3a2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x6
	.byte	0xf1
	.4byte	0x444
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x6
	.byte	0xf2
	.4byte	0x444
	.byte	0x18
	.uleb128 0x12
	.string	"gw"
	.byte	0x6
	.byte	0xf3
	.4byte	0x444
	.byte	0x2c
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x6
	.byte	0xf7
	.4byte	0x57f
	.byte	0x40
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0x6
	.byte	0xfa
	.4byte	0x58f
	.byte	0x7c
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x6
	.byte	0xfc
	.4byte	0x5af
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x102
	.4byte	0x46c
	.byte	0x84
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x108
	.4byte	0x491
	.byte	0x88
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x10d
	.4byte	0x4fb
	.byte	0x8c
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x113
	.4byte	0x4c6
	.byte	0x90
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x125
	.4byte	0x97
	.byte	0x94
	.uleb128 0x13
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x127
	.4byte	0xfd
	.byte	0x98
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x12b
	.4byte	0x5ba
	.byte	0xa4
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x12c
	.4byte	0x574
	.byte	0xa8
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x131
	.4byte	0xc4
	.byte	0xac
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x135
	.4byte	0xc4
	.byte	0xad
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x139
	.4byte	0xae
	.byte	0xb0
	.uleb128 0x14
	.string	"mtu"
	.byte	0x6
	.2byte	0x13f
	.4byte	0xcf
	.byte	0xb4
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x141
	.4byte	0xc4
	.byte	0xb6
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x143
	.4byte	0x5c0
	.byte	0xb7
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x145
	.4byte	0xc4
	.byte	0xbd
	.uleb128 0x13
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x147
	.4byte	0x5d0
	.byte	0xbe
	.uleb128 0x14
	.string	"num"
	.byte	0x6
	.2byte	0x149
	.4byte	0xc4
	.byte	0xc0
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x157
	.4byte	0x520
	.byte	0xc4
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x15c
	.4byte	0x54a
	.byte	0xc8
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x163
	.4byte	0x204
	.byte	0xcc
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x164
	.4byte	0x204
	.byte	0xd0
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x166
	.4byte	0xcf
	.byte	0xd4
	.uleb128 0x13
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x16b
	.4byte	0xe5
	.byte	0xd8
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x16c
	.4byte	0x444
	.byte	0xdc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x20a
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x10
	.byte	0x7
	.byte	0x3a
	.4byte	0x3c1
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x7
	.byte	0x3b
	.4byte	0x3c1
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xda
	.4byte	0x3d1
	.uleb128 0xc
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0x7
	.byte	0x3f
	.4byte	0x3a8
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0x4
	.byte	0x8
	.byte	0x33
	.4byte	0x3f5
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x8
	.byte	0x34
	.4byte	0xda
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0x8
	.byte	0x39
	.4byte	0x3dc
	.uleb128 0x15
	.byte	0x10
	.byte	0x9
	.byte	0x46
	.4byte	0x41f
	.uleb128 0x16
	.string	"ip6"
	.byte	0x9
	.byte	0x47
	.4byte	0x3d1
	.uleb128 0x16
	.string	"ip4"
	.byte	0x9
	.byte	0x48
	.4byte	0x3f5
	.byte	0
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x14
	.byte	0x9
	.byte	0x45
	.4byte	0x444
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x9
	.byte	0x49
	.4byte	0x400
	.byte	0
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x9
	.byte	0x4b
	.4byte	0xc4
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0x9
	.byte	0x4c
	.4byte	0x41f
	.uleb128 0x17
	.4byte	.LASF89
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x94
	.4byte	0x46c
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x6
	.byte	0xa7
	.4byte	0x477
	.uleb128 0x6
	.byte	0x4
	.4byte	0x47d
	.uleb128 0x18
	.4byte	0x10d
	.4byte	0x491
	.uleb128 0xa
	.4byte	0x204
	.uleb128 0xa
	.4byte	0x3a2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0x6
	.byte	0xb2
	.4byte	0x49c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4a2
	.uleb128 0x18
	.4byte	0x10d
	.4byte	0x4bb
	.uleb128 0xa
	.4byte	0x3a2
	.uleb128 0xa
	.4byte	0x204
	.uleb128 0xa
	.4byte	0x4bb
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c1
	.uleb128 0x8
	.4byte	0x3f5
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0x6
	.byte	0xbf
	.4byte	0x4d1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4d7
	.uleb128 0x18
	.4byte	0x10d
	.4byte	0x4f0
	.uleb128 0xa
	.4byte	0x3a2
	.uleb128 0xa
	.4byte	0x204
	.uleb128 0xa
	.4byte	0x4f0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4f6
	.uleb128 0x8
	.4byte	0x3d1
	.uleb128 0x4
	.4byte	.LASF84
	.byte	0x6
	.byte	0xc9
	.4byte	0x506
	.uleb128 0x6
	.byte	0x4
	.4byte	0x50c
	.uleb128 0x18
	.4byte	0x10d
	.4byte	0x520
	.uleb128 0xa
	.4byte	0x3a2
	.uleb128 0xa
	.4byte	0x204
	.byte	0
	.uleb128 0x4
	.4byte	.LASF85
	.byte	0x6
	.byte	0xce
	.4byte	0x52b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x531
	.uleb128 0x18
	.4byte	0x10d
	.4byte	0x54a
	.uleb128 0xa
	.4byte	0x3a2
	.uleb128 0xa
	.4byte	0x4bb
	.uleb128 0xa
	.4byte	0x44f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF86
	.byte	0x6
	.byte	0xd3
	.4byte	0x555
	.uleb128 0x6
	.byte	0x4
	.4byte	0x55b
	.uleb128 0x18
	.4byte	0x10d
	.4byte	0x574
	.uleb128 0xa
	.4byte	0x3a2
	.uleb128 0xa
	.4byte	0x4f0
	.uleb128 0xa
	.4byte	0x44f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0x6
	.byte	0xe5
	.4byte	0xa0
	.uleb128 0xb
	.4byte	0x444
	.4byte	0x58f
	.uleb128 0xc
	.4byte	0x90
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0xc4
	.4byte	0x59f
	.uleb128 0xc
	.4byte	0x90
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x5af
	.uleb128 0xa
	.4byte	0x3a2
	.uleb128 0xa
	.4byte	0xc4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x59f
	.uleb128 0x19
	.4byte	.LASF115
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5b5
	.uleb128 0xb
	.4byte	0xc4
	.4byte	0x5d0
	.uleb128 0xc
	.4byte	0x90
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	0xa7
	.4byte	0x5e0
	.uleb128 0xc
	.4byte	0x90
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x6
	.byte	0xa
	.byte	0x3a
	.4byte	0x5f9
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0xa
	.byte	0x3b
	.4byte	0x5c0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0x4
	.4byte	0x25
	.byte	0xa
	.byte	0x6c
	.4byte	0x67a
	.uleb128 0x1a
	.4byte	.LASF91
	.2byte	0x800
	.uleb128 0x1a
	.4byte	.LASF92
	.2byte	0x806
	.uleb128 0x1a
	.4byte	.LASF93
	.2byte	0x842
	.uleb128 0x1a
	.4byte	.LASF94
	.2byte	0x8035
	.uleb128 0x1a
	.4byte	.LASF95
	.2byte	0x8100
	.uleb128 0x1a
	.4byte	.LASF96
	.2byte	0x86dd
	.uleb128 0x1a
	.4byte	.LASF97
	.2byte	0x8863
	.uleb128 0x1a
	.4byte	.LASF98
	.2byte	0x8864
	.uleb128 0x1a
	.4byte	.LASF99
	.2byte	0x8870
	.uleb128 0x1a
	.4byte	.LASF100
	.2byte	0x8892
	.uleb128 0x1a
	.4byte	.LASF101
	.2byte	0x88a4
	.uleb128 0x1a
	.4byte	.LASF102
	.2byte	0x88cc
	.uleb128 0x1a
	.4byte	.LASF103
	.2byte	0x88cd
	.uleb128 0x1a
	.4byte	.LASF104
	.2byte	0x88e3
	.uleb128 0x1a
	.4byte	.LASF105
	.2byte	0x88f7
	.uleb128 0x1a
	.4byte	.LASF106
	.2byte	0x9100
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF116
	.byte	0x1
	.byte	0x4f
	.4byte	0x10d
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x77f
	.uleb128 0x1c
	.4byte	.LASF46
	.byte	0x1
	.byte	0x4f
	.4byte	0x3a2
	.4byte	.LLST0
	.uleb128 0x1d
	.string	"q"
	.byte	0x1
	.byte	0x4f
	.4byte	0x204
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF107
	.byte	0x1
	.byte	0x4f
	.4byte	0x4f0
	.4byte	.LLST1
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x1
	.byte	0x51
	.4byte	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.4byte	.LASF64
	.byte	0x1
	.byte	0x52
	.4byte	0x77f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.4byte	.LASF109
	.byte	0x1
	.byte	0x53
	.4byte	0x10d
	.4byte	.LLST2
	.uleb128 0x20
	.4byte	.LVL2
	.4byte	0x78a
	.4byte	0x715
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x72
	.sleb128 183
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0xa
	.2byte	0x86dd
	.byte	0
	.uleb128 0x20
	.4byte	.LVL5
	.4byte	0x795
	.4byte	0x73b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x20
	.4byte	.LVL8
	.4byte	0x7a0
	.4byte	0x754
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x22
	.4byte	.LVL9
	.4byte	0x78a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x72
	.sleb128 183
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0xa
	.2byte	0x86dd
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x785
	.uleb128 0x8
	.4byte	0xc4
	.uleb128 0x23
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0xb
	.byte	0x43
	.uleb128 0x23
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0xc
	.byte	0x44
	.uleb128 0x24
	.4byte	.LASF117
	.4byte	.LASF117
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
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF85:
	.string	"netif_igmp_mac_filter_fn"
.LASF31:
	.string	"ERR_ISCONN"
.LASF55:
	.string	"output_ip6"
.LASF45:
	.string	"pbuf"
.LASF61:
	.string	"rs_count"
.LASF21:
	.string	"ERR_OK"
.LASF4:
	.string	"__uint8_t"
.LASF41:
	.string	"type"
.LASF10:
	.string	"long long unsigned int"
.LASF58:
	.string	"dhcps_pcb"
.LASF73:
	.string	"addr"
.LASF50:
	.string	"ip6_addr_state"
.LASF101:
	.string	"ETHTYPE_ETHERCAT"
.LASF3:
	.string	"__int8_t"
.LASF98:
	.string	"ETHTYPE_PPPOE"
.LASF111:
	.string	"nd6_get_next_hop_addr_or_queue"
.LASF38:
	.string	"next"
.LASF92:
	.string	"ETHTYPE_ARP"
.LASF79:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF94:
	.string	"ETHTYPE_RARP"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF29:
	.string	"ERR_USE"
.LASF67:
	.string	"mld_mac_filter"
.LASF64:
	.string	"hwaddr"
.LASF24:
	.string	"ERR_TIMEOUT"
.LASF56:
	.string	"state"
.LASF62:
	.string	"hostname"
.LASF11:
	.string	"long int"
.LASF75:
	.string	"ip4_addr"
.LASF113:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/core/ipv6/ethip6.c"
.LASF87:
	.string	"dhcp_event_fn"
.LASF33:
	.string	"ERR_IF"
.LASF17:
	.string	"uint16_t"
.LASF63:
	.string	"hwaddr_len"
.LASF48:
	.string	"netmask"
.LASF84:
	.string	"netif_linkoutput_fn"
.LASF8:
	.string	"__uint32_t"
.LASF116:
	.string	"ethip6_output"
.LASF90:
	.string	"eth_type"
.LASF0:
	.string	"unsigned int"
.LASF72:
	.string	"last_ip_addr"
.LASF83:
	.string	"netif_output_ip6_fn"
.LASF53:
	.string	"output"
.LASF30:
	.string	"ERR_ALREADY"
.LASF65:
	.string	"name"
.LASF44:
	.string	"l2_buf"
.LASF1:
	.string	"short unsigned int"
.LASF76:
	.string	"ip4_addr_t"
.LASF99:
	.string	"ETHTYPE_JUMBO"
.LASF51:
	.string	"ipv6_addr_cb"
.LASF89:
	.string	"netif_mac_filter_action"
.LASF107:
	.string	"ip6addr"
.LASF95:
	.string	"ETHTYPE_VLAN"
.LASF103:
	.string	"ETHTYPE_SERCOS"
.LASF78:
	.string	"ip_addr_t"
.LASF20:
	.string	"err_t"
.LASF12:
	.string	"sizetype"
.LASF70:
	.string	"loop_cnt_current"
.LASF46:
	.string	"netif"
.LASF97:
	.string	"ETHTYPE_PPPOEDISC"
.LASF66:
	.string	"igmp_mac_filter"
.LASF39:
	.string	"payload"
.LASF47:
	.string	"ip_addr"
.LASF114:
	.string	"/home/raphael/rtone/lcd/build/lwip"
.LASF108:
	.string	"dest"
.LASF81:
	.string	"netif_input_fn"
.LASF26:
	.string	"ERR_INPROGRESS"
.LASF43:
	.string	"l2_owner"
.LASF27:
	.string	"ERR_VAL"
.LASF106:
	.string	"ETHTYPE_QINQ"
.LASF32:
	.string	"ERR_CONN"
.LASF19:
	.string	"_Bool"
.LASF5:
	.string	"unsigned char"
.LASF37:
	.string	"ERR_ARG"
.LASF88:
	.string	"eth_addr"
.LASF112:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF6:
	.string	"short int"
.LASF110:
	.string	"ethernet_output"
.LASF82:
	.string	"netif_output_fn"
.LASF105:
	.string	"ETHTYPE_PTP"
.LASF59:
	.string	"dhcp_event"
.LASF52:
	.string	"input"
.LASF86:
	.string	"netif_mld_mac_filter_fn"
.LASF34:
	.string	"ERR_ABRT"
.LASF80:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF35:
	.string	"ERR_RST"
.LASF18:
	.string	"uint32_t"
.LASF91:
	.string	"ETHTYPE_IP"
.LASF49:
	.string	"ip6_addr"
.LASF13:
	.string	"long unsigned int"
.LASF93:
	.string	"ETHTYPE_WOL"
.LASF14:
	.string	"char"
.LASF7:
	.string	"__uint16_t"
.LASF22:
	.string	"ERR_MEM"
.LASF69:
	.string	"loop_last"
.LASF68:
	.string	"loop_first"
.LASF117:
	.string	"memcpy"
.LASF57:
	.string	"client_data"
.LASF36:
	.string	"ERR_CLSD"
.LASF25:
	.string	"ERR_RTE"
.LASF15:
	.string	"int8_t"
.LASF40:
	.string	"tot_len"
.LASF23:
	.string	"ERR_BUF"
.LASF74:
	.string	"ip6_addr_t"
.LASF77:
	.string	"u_addr"
.LASF96:
	.string	"ETHTYPE_IPV6"
.LASF16:
	.string	"uint8_t"
.LASF42:
	.string	"flags"
.LASF115:
	.string	"udp_pcb"
.LASF28:
	.string	"ERR_WOULDBLOCK"
.LASF71:
	.string	"l2_buffer_free_notify"
.LASF60:
	.string	"ip6_autoconfig_enabled"
.LASF54:
	.string	"linkoutput"
.LASF104:
	.string	"ETHTYPE_MRP"
.LASF102:
	.string	"ETHTYPE_LLDP"
.LASF100:
	.string	"ETHTYPE_PROFINET"
.LASF109:
	.string	"result"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
