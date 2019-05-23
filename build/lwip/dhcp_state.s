	.file	"dhcp_state.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"dhcp_state"
	.section	.text.dhcp_ip_addr_restore,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, interface_key
	.literal .LC3, restored_ip_addr
	.align	4
	.global	dhcp_ip_addr_restore
	.type	dhcp_ip_addr_restore, @function
dhcp_ip_addr_restore:
.LFB22:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/port/esp32/netif/dhcp_state.c"
	.loc 1 35 0
.LVL0:
	entry	sp, 48
.LCFI0:
.LVL1:
	.loc 1 39 0
	l32i	a3, a2, 152
.LVL2:
	.loc 1 40 0
	mov.n	a10, a2
	call8	tcpip_adapter_get_esp_if
.LVL3:
	mov.n	a2, a10
.LVL4:
	.loc 1 42 0
	movi.n	a10, 1
	bltui	a2, 3, .L2
	movi.n	a10, 0
.L2:
	addi.n	a9, a2, -1
	movi.n	a8, 0
	movi.n	a11, 1
	movnez	a8, a11, a9
	bnone	a8, a10, .L5
.LBB2:
	.loc 1 43 0
	addi	a4, a3, 56
.LVL5:
	.loc 1 44 0
	mov.n	a12, sp
	movi.n	a11, 0
	l32r	a10, .LC1
	call8	nvs_open
.LVL6:
	bnez.n	a10, .L6
	.loc 1 45 0
	l32r	a8, .LC2
	addx4	a8, a2, a8
	mov.n	a12, a4
	l32i.n	a11, a8, 0
	l32i.n	a10, sp, 0
	call8	nvs_get_u32
.LVL7:
	bnez.n	a10, .L7
	.loc 1 46 0
	l32i.n	a3, a3, 56
.LVL8:
	l32r	a4, .LC3
.LVL9:
	addx4	a2, a2, a4
.LVL10:
	s32i.n	a3, a2, 0
.LVL11:
	.loc 1 47 0
	movi.n	a2, 1
	j	.L4
.LVL12:
.L7:
.LBE2:
	.loc 1 37 0
	movi.n	a2, 0
.LVL13:
.L4:
.LBB3:
	.loc 1 49 0
	l32i.n	a10, sp, 0
	call8	nvs_close
.LVL14:
	retw.n
.LVL15:
.L5:
.LBE3:
	.loc 1 37 0
	movi.n	a2, 0
.LVL16:
	retw.n
.LVL17:
.L6:
	movi.n	a2, 0
.LVL18:
	.loc 1 53 0
	retw.n
.LFE22:
	.size	dhcp_ip_addr_restore, .-dhcp_ip_addr_restore
	.section	.text.dhcp_ip_addr_store,"ax",@progbits
	.literal_position
	.literal .LC4, restored_ip_addr
	.literal .LC5, .LC0
	.literal .LC6, interface_key
	.align	4
	.global	dhcp_ip_addr_store
	.type	dhcp_ip_addr_store, @function
dhcp_ip_addr_store:
.LFB23:
	.loc 1 56 0
.LVL19:
	entry	sp, 48
.LCFI1:
.LVL20:
	.loc 1 59 0
	l32i	a3, a2, 152
.LVL21:
	.loc 1 60 0
	l32i.n	a3, a3, 56
.LVL22:
	.loc 1 61 0
	mov.n	a10, a2
	call8	tcpip_adapter_get_esp_if
.LVL23:
	mov.n	a2, a10
.LVL24:
	.loc 1 63 0
	movi.n	a10, 1
	bltui	a2, 3, .L9
	movi.n	a10, 0
.L9:
	addi.n	a9, a2, -1
	movi.n	a8, 0
	movi.n	a11, 1
	movnez	a8, a11, a9
	bnone	a8, a10, .L8
	.loc 1 64 0
	l32r	a8, .LC4
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	beq	a3, a8, .L8
	.loc 1 65 0
	mov.n	a12, sp
	l32r	a10, .LC5
	call8	nvs_open
.LVL25:
	bnez.n	a10, .L8
	.loc 1 66 0
	l32r	a8, .LC6
	addx4	a2, a2, a8
.LVL26:
	mov.n	a12, a3
	l32i.n	a11, a2, 0
	l32i.n	a10, sp, 0
	call8	nvs_set_u32
.LVL27:
	.loc 1 67 0
	l32i.n	a10, sp, 0
	call8	nvs_commit
.LVL28:
	.loc 1 68 0
	l32i.n	a10, sp, 0
	call8	nvs_close
.LVL29:
.L8:
	retw.n
.LFE23:
	.size	dhcp_ip_addr_store, .-dhcp_ip_addr_store
	.section	.text.dhcp_ip_addr_erase,"ax",@progbits
	.literal_position
	.literal .LC7, .LC0
	.literal .LC8, interface_key
	.align	4
	.global	dhcp_ip_addr_erase
	.type	dhcp_ip_addr_erase, @function
dhcp_ip_addr_erase:
.LFB24:
	.loc 1 75 0
.LVL30:
	entry	sp, 48
.LCFI2:
.LVL31:
	.loc 1 78 0
	mov.n	a10, a2
	call8	tcpip_adapter_get_esp_if
.LVL32:
	mov.n	a2, a10
.LVL33:
	.loc 1 80 0
	movi.n	a10, 1
	bltui	a2, 3, .L12
	movi.n	a10, 0
.L12:
	addi.n	a9, a2, -1
	movi.n	a8, 0
	movi.n	a11, 1
	movnez	a8, a11, a9
	bnone	a8, a10, .L11
	.loc 1 81 0
	mov.n	a12, sp
	l32r	a10, .LC7
	call8	nvs_open
.LVL34:
	bnez.n	a10, .L11
	.loc 1 82 0
	l32r	a8, .LC8
	addx4	a2, a2, a8
.LVL35:
	l32i.n	a11, a2, 0
	l32i.n	a10, sp, 0
	call8	nvs_erase_key
.LVL36:
	.loc 1 83 0
	l32i.n	a10, sp, 0
	call8	nvs_commit
.LVL37:
	.loc 1 84 0
	l32i.n	a10, sp, 0
	call8	nvs_close
.LVL38:
.L11:
	retw.n
.LFE24:
	.size	dhcp_ip_addr_erase, .-dhcp_ip_addr_erase
	.section	.rodata.str1.4
	.align	4
.LC9:
	.string	"IF_STA"
	.align	4
.LC10:
	.string	"IF_AP"
	.align	4
.LC11:
	.string	"IF_ETH"
	.section	.rodata.interface_key,"a",@progbits
	.align	4
	.type	interface_key, @object
	.size	interface_key, 12
interface_key:
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.section	.bss.restored_ip_addr,"aw",@nobits
	.align	4
	.type	restored_ip_addr, @object
	.size	restored_ip_addr, 12
restored_ip_addr:
	.zero	12
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
	.uleb128 0x30
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
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/nvs_flash/include/nvs.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/err.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/pbuf.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/memp.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/udp.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/dhcp.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_interface.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbbe
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0xc
	.4byte	.LASF154
	.4byte	.LASF155
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x11
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x12
	.4byte	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x16
	.4byte	0x5b
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x74
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa6
	.uleb128 0x7
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb4
	.uleb128 0x8
	.4byte	0xa7
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x14
	.4byte	0x25
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x15
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x3
	.byte	0x21
	.4byte	0x50
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0x1d
	.4byte	0xda
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0x4
	.byte	0x3f
	.4byte	0x109
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x10f
	.uleb128 0xb
	.4byte	0x11a
	.uleb128 0xc
	.4byte	0x89
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF22
	.uleb128 0xd
	.4byte	0xda
	.4byte	0x131
	.uleb128 0xe
	.4byte	0x92
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	0x89
	.4byte	0x141
	.uleb128 0xe
	.4byte	0x92
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x5
	.byte	0x39
	.4byte	0xb9
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x4
	.byte	0x6
	.byte	0x33
	.4byte	0x165
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x6
	.byte	0x34
	.4byte	0xda
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x6
	.byte	0x39
	.4byte	0x14c
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x10
	.byte	0x7
	.byte	0x3a
	.4byte	0x189
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x7
	.byte	0x3b
	.4byte	0x189
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0xda
	.4byte	0x199
	.uleb128 0xe
	.4byte	0x92
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x7
	.byte	0x3f
	.4byte	0x170
	.uleb128 0x11
	.byte	0x10
	.byte	0x8
	.byte	0x46
	.4byte	0x1c3
	.uleb128 0x12
	.string	"ip6"
	.byte	0x8
	.byte	0x47
	.4byte	0x199
	.uleb128 0x12
	.string	"ip4"
	.byte	0x8
	.byte	0x48
	.4byte	0x165
	.byte	0
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x14
	.byte	0x8
	.byte	0x45
	.4byte	0x1e8
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x8
	.byte	0x49
	.4byte	0x1a4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x8
	.byte	0x4b
	.4byte	0xc4
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x8
	.byte	0x4c
	.4byte	0x1c3
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x18
	.byte	0x9
	.byte	0x8e
	.4byte	0x26c
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x9
	.byte	0x90
	.4byte	0x26c
	.byte	0
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x9
	.byte	0x93
	.4byte	0x89
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x9
	.byte	0x9c
	.4byte	0xcf
	.byte	0x8
	.uleb128 0x13
	.string	"len"
	.byte	0x9
	.byte	0x9f
	.4byte	0xcf
	.byte	0xa
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x9
	.byte	0xa2
	.4byte	0xc4
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x9
	.byte	0xa5
	.4byte	0xc4
	.byte	0xd
	.uleb128 0x13
	.string	"ref"
	.byte	0x9
	.byte	0xac
	.4byte	0xcf
	.byte	0xe
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x9
	.byte	0xaf
	.4byte	0x40a
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0x9
	.byte	0xb0
	.4byte	0x89
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1f3
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0xf0
	.byte	0xa
	.byte	0xeb
	.4byte	0x40a
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0xa
	.byte	0xed
	.4byte	0x40a
	.byte	0
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0xa
	.byte	0xf1
	.4byte	0x1e8
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0xa
	.byte	0xf2
	.4byte	0x1e8
	.byte	0x18
	.uleb128 0x13
	.string	"gw"
	.byte	0xa
	.byte	0xf3
	.4byte	0x1e8
	.byte	0x2c
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0xa
	.byte	0xf7
	.4byte	0x5f9
	.byte	0x40
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0xa
	.byte	0xfa
	.4byte	0x609
	.byte	0x7c
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0xa
	.byte	0xfc
	.4byte	0x629
	.byte	0x80
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0xa
	.2byte	0x102
	.4byte	0x4d5
	.byte	0x84
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0xa
	.2byte	0x108
	.4byte	0x4fa
	.byte	0x88
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0xa
	.2byte	0x10d
	.4byte	0x564
	.byte	0x8c
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0xa
	.2byte	0x113
	.4byte	0x52f
	.byte	0x90
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0xa
	.2byte	0x125
	.4byte	0x89
	.byte	0x94
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0xa
	.2byte	0x127
	.4byte	0x131
	.byte	0x98
	.uleb128 0x14
	.4byte	.LASF50
	.byte	0xa
	.2byte	0x12b
	.4byte	0x6d8
	.byte	0xa4
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0xa
	.2byte	0x12c
	.4byte	0x5ee
	.byte	0xa8
	.uleb128 0x14
	.4byte	.LASF52
	.byte	0xa
	.2byte	0x131
	.4byte	0xc4
	.byte	0xac
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0xa
	.2byte	0x135
	.4byte	0xc4
	.byte	0xad
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0xa
	.2byte	0x139
	.4byte	0xae
	.byte	0xb0
	.uleb128 0x15
	.string	"mtu"
	.byte	0xa
	.2byte	0x13f
	.4byte	0xcf
	.byte	0xb4
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0xa
	.2byte	0x141
	.4byte	0xc4
	.byte	0xb6
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0xa
	.2byte	0x143
	.4byte	0x6de
	.byte	0xb7
	.uleb128 0x14
	.4byte	.LASF37
	.byte	0xa
	.2byte	0x145
	.4byte	0xc4
	.byte	0xbd
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0xa
	.2byte	0x147
	.4byte	0x6ee
	.byte	0xbe
	.uleb128 0x15
	.string	"num"
	.byte	0xa
	.2byte	0x149
	.4byte	0xc4
	.byte	0xc0
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0xa
	.2byte	0x157
	.4byte	0x59a
	.byte	0xc4
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0xa
	.2byte	0x15c
	.4byte	0x5c4
	.byte	0xc8
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0xa
	.2byte	0x163
	.4byte	0x26c
	.byte	0xcc
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0xa
	.2byte	0x164
	.4byte	0x26c
	.byte	0xd0
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0xa
	.2byte	0x166
	.4byte	0xcf
	.byte	0xd4
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0xa
	.2byte	0x16b
	.4byte	0x109
	.byte	0xd8
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0xa
	.2byte	0x16c
	.4byte	0x1e8
	.byte	0xdc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x272
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0xb
	.byte	0x34
	.4byte	0x48f
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x11
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x12
	.byte	0
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0x4
	.4byte	0x74
	.byte	0xa
	.byte	0x70
	.4byte	0x4b8
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x4
	.4byte	0x74
	.byte	0xa
	.byte	0x94
	.4byte	0x4d5
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0xa
	.byte	0xa7
	.4byte	0x4e0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4e6
	.uleb128 0x17
	.4byte	0x141
	.4byte	0x4fa
	.uleb128 0xc
	.4byte	0x26c
	.uleb128 0xc
	.4byte	0x40a
	.byte	0
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0xa
	.byte	0xb2
	.4byte	0x505
	.uleb128 0x6
	.byte	0x4
	.4byte	0x50b
	.uleb128 0x17
	.4byte	0x141
	.4byte	0x524
	.uleb128 0xc
	.4byte	0x40a
	.uleb128 0xc
	.4byte	0x26c
	.uleb128 0xc
	.4byte	0x524
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x52a
	.uleb128 0x8
	.4byte	0x165
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0xa
	.byte	0xbf
	.4byte	0x53a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x540
	.uleb128 0x17
	.4byte	0x141
	.4byte	0x559
	.uleb128 0xc
	.4byte	0x40a
	.uleb128 0xc
	.4byte	0x26c
	.uleb128 0xc
	.4byte	0x559
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x55f
	.uleb128 0x8
	.4byte	0x199
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0xa
	.byte	0xc9
	.4byte	0x56f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x575
	.uleb128 0x17
	.4byte	0x141
	.4byte	0x589
	.uleb128 0xc
	.4byte	0x40a
	.uleb128 0xc
	.4byte	0x26c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x58f
	.uleb128 0xb
	.4byte	0x59a
	.uleb128 0xc
	.4byte	0x40a
	.byte	0
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0xa
	.byte	0xce
	.4byte	0x5a5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5ab
	.uleb128 0x17
	.4byte	0x141
	.4byte	0x5c4
	.uleb128 0xc
	.4byte	0x40a
	.uleb128 0xc
	.4byte	0x524
	.uleb128 0xc
	.4byte	0x4b8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0xa
	.byte	0xd3
	.4byte	0x5cf
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5d5
	.uleb128 0x17
	.4byte	0x141
	.4byte	0x5ee
	.uleb128 0xc
	.4byte	0x40a
	.uleb128 0xc
	.4byte	0x559
	.uleb128 0xc
	.4byte	0x4b8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0xa
	.byte	0xe5
	.4byte	0xa0
	.uleb128 0xd
	.4byte	0x1e8
	.4byte	0x609
	.uleb128 0xe
	.4byte	0x92
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	0xc4
	.4byte	0x619
	.uleb128 0xe
	.4byte	0x92
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x629
	.uleb128 0xc
	.4byte	0x40a
	.uleb128 0xc
	.4byte	0xc4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x619
	.uleb128 0xf
	.4byte	.LASF99
	.byte	0x58
	.byte	0xc
	.byte	0x51
	.4byte	0x6d8
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0xc
	.byte	0x53
	.4byte	0x1e8
	.byte	0
	.uleb128 0x10
	.4byte	.LASF101
	.byte	0xc
	.byte	0x53
	.4byte	0x1e8
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF102
	.byte	0xc
	.byte	0x53
	.4byte	0xc4
	.byte	0x28
	.uleb128 0x13
	.string	"tos"
	.byte	0xc
	.byte	0x53
	.4byte	0xc4
	.byte	0x29
	.uleb128 0x13
	.string	"ttl"
	.byte	0xc
	.byte	0x53
	.4byte	0xc4
	.byte	0x2a
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0xc
	.byte	0x57
	.4byte	0x6d8
	.byte	0x2c
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0xc
	.byte	0x59
	.4byte	0xc4
	.byte	0x30
	.uleb128 0x10
	.4byte	.LASF103
	.byte	0xc
	.byte	0x5b
	.4byte	0xcf
	.byte	0x32
	.uleb128 0x10
	.4byte	.LASF104
	.byte	0xc
	.byte	0x5b
	.4byte	0xcf
	.byte	0x34
	.uleb128 0x10
	.4byte	.LASF105
	.byte	0xc
	.byte	0x5f
	.4byte	0x1e8
	.byte	0x38
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0xc
	.byte	0x61
	.4byte	0xc4
	.byte	0x4c
	.uleb128 0x10
	.4byte	.LASF107
	.byte	0xc
	.byte	0x6a
	.4byte	0x6fe
	.byte	0x50
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0xc
	.byte	0x6c
	.4byte	0x89
	.byte	0x54
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x62f
	.uleb128 0xd
	.4byte	0xc4
	.4byte	0x6ee
	.uleb128 0xe
	.4byte	0x92
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.4byte	0xa7
	.4byte	0x6fe
	.uleb128 0xe
	.4byte	0x92
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xc
	.byte	0x4d
	.4byte	0x709
	.uleb128 0x6
	.byte	0x4
	.4byte	0x70f
	.uleb128 0xb
	.4byte	0x72e
	.uleb128 0xc
	.4byte	0x89
	.uleb128 0xc
	.4byte	0x6d8
	.uleb128 0xc
	.4byte	0x26c
	.uleb128 0xc
	.4byte	0x72e
	.uleb128 0xc
	.4byte	0xcf
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x734
	.uleb128 0x8
	.4byte	0x1e8
	.uleb128 0xf
	.4byte	.LASF110
	.byte	0x54
	.byte	0xd
	.byte	0x47
	.4byte	0x865
	.uleb128 0x13
	.string	"xid"
	.byte	0xd
	.byte	0x4a
	.4byte	0xda
	.byte	0
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0xd
	.byte	0x4c
	.4byte	0x86a
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0xd
	.byte	0x4e
	.4byte	0xc4
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0xd
	.byte	0x50
	.4byte	0xc4
	.byte	0x9
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0xd
	.byte	0x52
	.4byte	0xc4
	.byte	0xa
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0xd
	.byte	0x56
	.4byte	0xc4
	.byte	0xb
	.uleb128 0x10
	.4byte	.LASF115
	.byte	0xd
	.byte	0x58
	.4byte	0x26c
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF116
	.byte	0xd
	.byte	0x59
	.4byte	0x86a
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF117
	.byte	0xd
	.byte	0x5a
	.4byte	0xcf
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0xd
	.byte	0x5b
	.4byte	0xcf
	.byte	0x16
	.uleb128 0x10
	.4byte	.LASF119
	.byte	0xd
	.byte	0x5c
	.4byte	0xcf
	.byte	0x18
	.uleb128 0x10
	.4byte	.LASF120
	.byte	0xd
	.byte	0x5d
	.4byte	0xcf
	.byte	0x1a
	.uleb128 0x10
	.4byte	.LASF121
	.byte	0xd
	.byte	0x5e
	.4byte	0xcf
	.byte	0x1c
	.uleb128 0x10
	.4byte	.LASF122
	.byte	0xd
	.byte	0x5f
	.4byte	0xcf
	.byte	0x1e
	.uleb128 0x10
	.4byte	.LASF123
	.byte	0xd
	.byte	0x60
	.4byte	0xcf
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF124
	.byte	0xd
	.byte	0x61
	.4byte	0xcf
	.byte	0x22
	.uleb128 0x10
	.4byte	.LASF125
	.byte	0xd
	.byte	0x62
	.4byte	0x1e8
	.byte	0x24
	.uleb128 0x10
	.4byte	.LASF126
	.byte	0xd
	.byte	0x63
	.4byte	0x165
	.byte	0x38
	.uleb128 0x10
	.4byte	.LASF127
	.byte	0xd
	.byte	0x64
	.4byte	0x165
	.byte	0x3c
	.uleb128 0x10
	.4byte	.LASF128
	.byte	0xd
	.byte	0x65
	.4byte	0x165
	.byte	0x40
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0xd
	.byte	0x67
	.4byte	0xda
	.byte	0x44
	.uleb128 0x10
	.4byte	.LASF130
	.byte	0xd
	.byte	0x68
	.4byte	0xda
	.byte	0x48
	.uleb128 0x10
	.4byte	.LASF131
	.byte	0xd
	.byte	0x69
	.4byte	0xda
	.byte	0x4c
	.uleb128 0x13
	.string	"cb"
	.byte	0xd
	.byte	0x71
	.4byte	0x589
	.byte	0x50
	.byte	0
	.uleb128 0x18
	.4byte	.LASF156
	.uleb128 0x6
	.byte	0x4
	.4byte	0x865
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0xe
	.byte	0x19
	.4byte	0x895
	.uleb128 0xa
	.4byte	.LASF132
	.byte	0
	.uleb128 0xa
	.4byte	.LASF133
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF134
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF135
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0xe
	.byte	0x1e
	.4byte	0x870
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0xf
	.byte	0x67
	.4byte	0x8c5
	.uleb128 0xa
	.4byte	.LASF137
	.byte	0
	.uleb128 0xa
	.4byte	.LASF138
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF139
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF140
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.4byte	.LASF157
	.byte	0x1
	.byte	0x22
	.4byte	0x11a
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9af
	.uleb128 0x1a
	.4byte	.LASF40
	.byte	0x1
	.byte	0x22
	.4byte	0x89
	.4byte	.LLST0
	.uleb128 0x1b
	.string	"nvs"
	.byte	0x1
	.byte	0x24
	.4byte	0xe5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"err"
	.byte	0x1
	.byte	0x25
	.4byte	0x11a
	.4byte	.LLST1
	.uleb128 0x1c
	.string	"net"
	.byte	0x1
	.byte	0x26
	.4byte	0x40a
	.4byte	.LLST2
	.uleb128 0x1d
	.4byte	.LASF110
	.byte	0x1
	.byte	0x27
	.4byte	0x9af
	.4byte	.LLST3
	.uleb128 0x1d
	.4byte	.LASF141
	.byte	0x1
	.byte	0x28
	.4byte	0x895
	.4byte	.LLST4
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0
	.4byte	0x99e
	.uleb128 0x1d
	.4byte	.LASF29
	.byte	0x1
	.byte	0x2b
	.4byte	0x9b5
	.4byte	.LLST5
	.uleb128 0x1f
	.4byte	.LVL6
	.4byte	0xb70
	.4byte	0x971
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL7
	.4byte	0xb7b
	.4byte	0x994
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xb
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	interface_key
	.byte	0x22
	.byte	0x6
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL14
	.4byte	0xb86
	.byte	0
	.uleb128 0x22
	.4byte	.LVL3
	.4byte	0xb92
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x739
	.uleb128 0x6
	.byte	0x4
	.4byte	0xda
	.uleb128 0x23
	.4byte	.LASF142
	.byte	0x1
	.byte	0x37
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa8b
	.uleb128 0x1a
	.4byte	.LASF40
	.byte	0x1
	.byte	0x37
	.4byte	0x89
	.4byte	.LLST6
	.uleb128 0x1b
	.string	"nvs"
	.byte	0x1
	.byte	0x39
	.4byte	0xe5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"net"
	.byte	0x1
	.byte	0x3a
	.4byte	0x40a
	.4byte	.LLST7
	.uleb128 0x1d
	.4byte	.LASF110
	.byte	0x1
	.byte	0x3b
	.4byte	0x9af
	.4byte	.LLST8
	.uleb128 0x24
	.4byte	.LASF29
	.byte	0x1
	.byte	0x3c
	.4byte	0xda
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF141
	.byte	0x1
	.byte	0x3d
	.4byte	0x895
	.4byte	.LLST9
	.uleb128 0x1f
	.4byte	.LVL23
	.4byte	0xb92
	.4byte	0xa3b
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL25
	.4byte	0xb70
	.4byte	0xa5d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL27
	.4byte	0xb9e
	.4byte	0xa78
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL28
	.4byte	0xba9
	.uleb128 0x21
	.4byte	.LVL29
	.4byte	0xb86
	.byte	0
	.uleb128 0x23
	.4byte	.LASF143
	.byte	0x1
	.byte	0x4a
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb39
	.uleb128 0x1a
	.4byte	.LASF40
	.byte	0x1
	.byte	0x4a
	.4byte	0x89
	.4byte	.LLST10
	.uleb128 0x1b
	.string	"nvs"
	.byte	0x1
	.byte	0x4c
	.4byte	0xe5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"net"
	.byte	0x1
	.byte	0x4d
	.4byte	0x40a
	.4byte	.LLST11
	.uleb128 0x1d
	.4byte	.LASF141
	.byte	0x1
	.byte	0x4e
	.4byte	0x895
	.4byte	.LLST12
	.uleb128 0x1f
	.4byte	.LVL32
	.4byte	0xb92
	.4byte	0xaef
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL34
	.4byte	0xb70
	.4byte	0xb11
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL36
	.4byte	0xbb5
	.4byte	0xb26
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x21
	.4byte	.LVL37
	.4byte	0xba9
	.uleb128 0x21
	.4byte	.LVL38
	.4byte	0xb86
	.byte	0
	.uleb128 0x24
	.4byte	.LASF144
	.byte	0x1
	.byte	0x1c
	.4byte	0x121
	.uleb128 0x5
	.byte	0x3
	.4byte	restored_ip_addr
	.uleb128 0xd
	.4byte	0xae
	.4byte	0xb5a
	.uleb128 0xe
	.4byte	0x92
	.byte	0x2
	.byte	0
	.uleb128 0x24
	.4byte	.LASF145
	.byte	0x1
	.byte	0x1d
	.4byte	0xb6b
	.uleb128 0x5
	.byte	0x3
	.4byte	interface_key
	.uleb128 0x8
	.4byte	0xb4a
	.uleb128 0x25
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0x4
	.byte	0x5f
	.uleb128 0x25
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x4
	.byte	0xed
	.uleb128 0x26
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x4
	.2byte	0x170
	.uleb128 0x26
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0xf
	.2byte	0x23a
	.uleb128 0x25
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x4
	.byte	0x9f
	.uleb128 0x26
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0x4
	.2byte	0x163
	.uleb128 0x26
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0x4
	.2byte	0x142
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
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
	.4byte	.LVL1
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
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
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x74
	.sleb128 -56
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x3
	.byte	0x72
	.sleb128 152
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"short int"
.LASF149:
	.string	"tcpip_adapter_get_esp_if"
.LASF154:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/port/esp32/netif/dhcp_state.c"
.LASF96:
	.string	"netif_igmp_mac_filter_fn"
.LASF76:
	.string	"MEMP_SYS_TIMEOUT"
.LASF47:
	.string	"output_ip6"
.LASF33:
	.string	"pbuf"
.LASF53:
	.string	"rs_count"
.LASF140:
	.string	"TCPIP_ADAPTER_IF_MAX"
.LASF77:
	.string	"MEMP_NETDB"
.LASF1:
	.string	"__uint8_t"
.LASF112:
	.string	"pcb_allocated"
.LASF123:
	.string	"lease_used"
.LASF31:
	.string	"type"
.LASF86:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MLD6"
.LASF10:
	.string	"long long unsigned int"
.LASF50:
	.string	"dhcps_pcb"
.LASF27:
	.string	"addr"
.LASF42:
	.string	"ip6_addr_state"
.LASF69:
	.string	"MEMP_TCP_SEG"
.LASF0:
	.string	"__int8_t"
.LASF34:
	.string	"next"
.LASF90:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF144:
	.string	"restored_ip_addr"
.LASF141:
	.string	"netif_id"
.LASF151:
	.string	"nvs_commit"
.LASF103:
	.string	"local_port"
.LASF128:
	.string	"offered_gw_addr"
.LASF59:
	.string	"mld_mac_filter"
.LASF56:
	.string	"hwaddr"
.LASF131:
	.string	"offered_t2_rebind"
.LASF36:
	.string	"tot_len"
.LASF79:
	.string	"MEMP_IP6_REASSDATA"
.LASF48:
	.string	"state"
.LASF54:
	.string	"hostname"
.LASF11:
	.string	"long int"
.LASF65:
	.string	"MEMP_RAW_PCB"
.LASF25:
	.string	"ip4_addr"
.LASF146:
	.string	"nvs_open"
.LASF98:
	.string	"dhcp_event_fn"
.LASF87:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF17:
	.string	"uint16_t"
.LASF55:
	.string	"hwaddr_len"
.LASF66:
	.string	"MEMP_UDP_PCB"
.LASF147:
	.string	"nvs_get_u32"
.LASF41:
	.string	"netmask"
.LASF129:
	.string	"offered_t0_lease"
.LASF95:
	.string	"netif_linkoutput_fn"
.LASF75:
	.string	"MEMP_IGMP_GROUP"
.LASF7:
	.string	"__uint32_t"
.LASF145:
	.string	"interface_key"
.LASF142:
	.string	"dhcp_ip_addr_store"
.LASF121:
	.string	"t1_renew_time"
.LASF133:
	.string	"ESP_IF_WIFI_AP"
.LASF8:
	.string	"unsigned int"
.LASF109:
	.string	"udp_recv_fn"
.LASF64:
	.string	"last_ip_addr"
.LASF94:
	.string	"netif_output_ip6_fn"
.LASF81:
	.string	"MEMP_PBUF"
.LASF157:
	.string	"dhcp_ip_addr_restore"
.LASF45:
	.string	"output"
.LASF114:
	.string	"subnet_mask_given"
.LASF107:
	.string	"recv"
.LASF57:
	.string	"name"
.LASF39:
	.string	"l2_buf"
.LASF67:
	.string	"MEMP_TCP_PCB"
.LASF130:
	.string	"offered_t1_renew"
.LASF6:
	.string	"short unsigned int"
.LASF24:
	.string	"ip4_addr_t"
.LASF78:
	.string	"MEMP_ND6_QUEUE"
.LASF137:
	.string	"TCPIP_ADAPTER_IF_STA"
.LASF148:
	.string	"nvs_close"
.LASF150:
	.string	"nvs_set_u32"
.LASF108:
	.string	"recv_arg"
.LASF43:
	.string	"ipv6_addr_cb"
.LASF106:
	.string	"mcast_ttl"
.LASF117:
	.string	"options_out_len"
.LASF89:
	.string	"netif_mac_filter_action"
.LASF118:
	.string	"request_timeout"
.LASF152:
	.string	"nvs_erase_key"
.LASF153:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF83:
	.string	"MEMP_MAX"
.LASF32:
	.string	"ip_addr_t"
.LASF19:
	.string	"nvs_handle"
.LASF23:
	.string	"err_t"
.LASF12:
	.string	"sizetype"
.LASF62:
	.string	"loop_cnt_current"
.LASF124:
	.string	"t0_timeout"
.LASF119:
	.string	"t1_timeout"
.LASF40:
	.string	"netif"
.LASF80:
	.string	"MEMP_MLD6_GROUP"
.LASF58:
	.string	"igmp_mac_filter"
.LASF35:
	.string	"payload"
.LASF29:
	.string	"ip_addr"
.LASF155:
	.string	"/home/raphael/rtone/lcd/build/lwip"
.LASF13:
	.string	"long unsigned int"
.LASF111:
	.string	"msg_in"
.LASF92:
	.string	"netif_input_fn"
.LASF38:
	.string	"l2_owner"
.LASF105:
	.string	"multicast_ip"
.LASF22:
	.string	"_Bool"
.LASF3:
	.string	"unsigned char"
.LASF113:
	.string	"tries"
.LASF100:
	.string	"local_ip"
.LASF134:
	.string	"ESP_IF_ETH"
.LASF85:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF93:
	.string	"netif_output_fn"
.LASF20:
	.string	"NVS_READONLY"
.LASF51:
	.string	"dhcp_event"
.LASF138:
	.string	"TCPIP_ADAPTER_IF_AP"
.LASF44:
	.string	"input"
.LASF84:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF97:
	.string	"netif_mld_mac_filter_fn"
.LASF126:
	.string	"offered_ip_addr"
.LASF18:
	.string	"uint32_t"
.LASF135:
	.string	"ESP_IF_MAX"
.LASF26:
	.string	"ip6_addr"
.LASF72:
	.string	"MEMP_TCPIP_MSG_API"
.LASF14:
	.string	"char"
.LASF132:
	.string	"ESP_IF_WIFI_STA"
.LASF116:
	.string	"msg_out"
.LASF70:
	.string	"MEMP_NETBUF"
.LASF5:
	.string	"__uint16_t"
.LASF68:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF71:
	.string	"MEMP_NETCONN"
.LASF82:
	.string	"MEMP_PBUF_POOL"
.LASF156:
	.string	"dhcp_msg"
.LASF74:
	.string	"MEMP_ARP_QUEUE"
.LASF61:
	.string	"loop_last"
.LASF120:
	.string	"t2_timeout"
.LASF122:
	.string	"t2_rebind_time"
.LASF127:
	.string	"offered_sn_mask"
.LASF60:
	.string	"loop_first"
.LASF136:
	.string	"esp_interface_t"
.LASF102:
	.string	"so_options"
.LASF15:
	.string	"int8_t"
.LASF28:
	.string	"ip6_addr_t"
.LASF88:
	.string	"lwip_internal_netif_client_data_index"
.LASF30:
	.string	"u_addr"
.LASF104:
	.string	"remote_port"
.LASF91:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF16:
	.string	"uint8_t"
.LASF125:
	.string	"server_ip_addr"
.LASF110:
	.string	"dhcp"
.LASF37:
	.string	"flags"
.LASF99:
	.string	"udp_pcb"
.LASF63:
	.string	"l2_buffer_free_notify"
.LASF52:
	.string	"ip6_autoconfig_enabled"
.LASF49:
	.string	"client_data"
.LASF115:
	.string	"p_out"
.LASF139:
	.string	"TCPIP_ADAPTER_IF_ETH"
.LASF46:
	.string	"linkoutput"
.LASF21:
	.string	"NVS_READWRITE"
.LASF101:
	.string	"remote_ip"
.LASF143:
	.string	"dhcp_ip_addr_erase"
.LASF73:
	.string	"MEMP_TCPIP_MSG_INPKT"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
