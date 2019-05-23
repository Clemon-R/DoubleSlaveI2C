	.file	"phy_lan8720.c"
	.text
.Ltext0:
	.section	.text.phy_lan8720_check_phy_init,"ax",@progbits
	.literal_position
	.literal .LC0, 4096
	.align	4
	.global	phy_lan8720_check_phy_init
	.type	phy_lan8720_check_phy_init, @function
phy_lan8720_check_phy_init:
.LFB1:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/ethernet/eth_phy/phy_lan8720.c"
	.loc 1 37 0
	entry	sp, 32
.LCFI0:
.LVL0:
.LBB6:
.LBB7:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/ethernet/include/esp_eth.h"
	.loc 2 269 0
	movi.n	a13, 0
	movi.n	a12, 0x20
	mov.n	a11, a12
	movi.n	a10, 1
	call8	esp_eth_smi_wait_value
.LVL1:
.LBE7:
.LBE6:
.LBB8:
.LBB9:
	l32r	a11, .LC0
	movi.n	a13, 0
	mov.n	a12, a11
	movi.n	a10, 0x1f
	call8	esp_eth_smi_wait_value
.LVL2:
	retw.n
.LBE9:
.LBE8:
.LFE1:
	.size	phy_lan8720_check_phy_init, .-phy_lan8720_check_phy_init
	.section	.text.phy_lan8720_get_speed_mode,"ax",@progbits
	.align	4
	.global	phy_lan8720_get_speed_mode
	.type	phy_lan8720_get_speed_mode, @function
phy_lan8720_get_speed_mode:
.LFB2:
	.loc 1 45 0
	entry	sp, 32
.LCFI1:
	.loc 1 46 0
	movi.n	a10, 0x1f
	call8	esp_eth_smi_read
.LVL3:
	movi.n	a8, 8
	and	a10, a10, a8
	extui	a10, a10, 0, 16
	beqz.n	a10, .L4
	.loc 1 48 0
	movi.n	a2, 1
	retw.n
.L4:
	.loc 1 51 0
	movi.n	a2, 0
	.loc 1 53 0
	retw.n
.LFE2:
	.size	phy_lan8720_get_speed_mode, .-phy_lan8720_get_speed_mode
	.section	.text.phy_lan8720_get_duplex_mode,"ax",@progbits
	.align	4
	.global	phy_lan8720_get_duplex_mode
	.type	phy_lan8720_get_duplex_mode, @function
phy_lan8720_get_duplex_mode:
.LFB3:
	.loc 1 56 0
	entry	sp, 32
.LCFI2:
	.loc 1 57 0
	movi.n	a10, 0x1f
	call8	esp_eth_smi_read
.LVL4:
	movi.n	a8, 0x10
	and	a10, a10, a8
	extui	a10, a10, 0, 16
	beqz.n	a10, .L7
	.loc 1 59 0
	movi.n	a2, 1
	retw.n
.L7:
	.loc 1 62 0
	movi.n	a2, 0
	.loc 1 64 0
	retw.n
.LFE3:
	.size	phy_lan8720_get_duplex_mode, .-phy_lan8720_get_duplex_mode
	.section	.text.phy_lan8720_power_enable,"ax",@progbits
	.literal_position
	.literal .LC1, 4608
	.align	4
	.global	phy_lan8720_power_enable
	.type	phy_lan8720_power_enable, @function
phy_lan8720_power_enable:
.LFB4:
	.loc 1 67 0
.LVL5:
	entry	sp, 32
.LCFI3:
	extui	a2, a2, 0, 8
	.loc 1 68 0
	beqz.n	a2, .L8
.LBB10:
	.loc 1 69 0
	movi.n	a10, 0
	call8	esp_eth_smi_read
.LVL6:
	.loc 1 71 0
	l32r	a11, .LC1
	or	a11, a10, a11
	extui	a11, a11, 0, 16
	movi.n	a10, 0
.LVL7:
	call8	esp_eth_smi_write
.LVL8:
	.loc 1 73 0
	call8	phy_mii_enable_flow_ctrl
.LVL9:
.L8:
	retw.n
.LBE10:
.LFE4:
	.size	phy_lan8720_power_enable, .-phy_lan8720_power_enable
	.section	.text.phy_lan8720_init,"ax",@progbits
	.literal_position
	.literal .LC2, 32768
	.literal .LC3, 65535
	.literal .LC4, 65520
	.literal .LC5, 49392
	.literal .LC6, 4608
	.align	4
	.global	phy_lan8720_init
	.type	phy_lan8720_init, @function
phy_lan8720_init:
.LFB5:
	.loc 1 78 0
	entry	sp, 32
.LCFI4:
	.loc 1 82 0
	l32r	a11, .LC2
	movi.n	a10, 0
	call8	esp_eth_smi_write
.LVL10:
	.loc 1 86 0
	movi	a13, 0x3e8
	l32r	a12, .LC3
	movi.n	a11, 7
	movi.n	a10, 2
	call8	esp_eth_smi_wait_value
.LVL11:
	mov.n	a3, a10
.LVL12:
	.loc 1 87 0
	movi	a13, 0x3e8
	l32r	a12, .LC4
	l32r	a11, .LC5
	movi.n	a10, 3
	call8	esp_eth_smi_wait_value
.LVL13:
	mov.n	a2, a10
.LVL14:
	.loc 1 89 0
	movi.n	a10, 0
	call8	esp_eth_smi_read
.LVL15:
	.loc 1 91 0
	l32r	a11, .LC6
	or	a11, a10, a11
	extui	a11, a11, 0, 16
	movi.n	a10, 0
.LVL16:
	call8	esp_eth_smi_write
.LVL17:
	.loc 1 93 0
	movi	a10, 0x12c
	call8	ets_delay_us
.LVL18:
	.loc 1 96 0
	call8	phy_mii_enable_flow_ctrl
.LVL19:
	.loc 1 98 0
	or	a2, a3, a2
.LVL20:
	beqz.n	a2, .L11
	.loc 1 101 0
	movi	a2, 0x107
.L11:
	.loc 1 103 0
	retw.n
.LFE5:
	.size	phy_lan8720_init, .-phy_lan8720_init
	.section	.text.phy_lan8720_dump_registers,"ax",@progbits
	.align	4
	.global	phy_lan8720_dump_registers
	.type	phy_lan8720_dump_registers, @function
phy_lan8720_dump_registers:
.LFB6:
	.loc 1 121 0
	entry	sp, 32
.LCFI5:
	retw.n
.LFE6:
	.size	phy_lan8720_dump_registers, .-phy_lan8720_dump_registers
	.global	phy_lan8720_default_ethernet_config
	.section	.rodata.phy_lan8720_default_ethernet_config,"a",@progbits
	.align	4
	.type	phy_lan8720_default_ethernet_config, @object
	.size	phy_lan8720_default_ethernet_config, 56
phy_lan8720_default_ethernet_config:
	.word	0
	.word	0
	.word	0
	.zero	4
	.word	phy_lan8720_init
	.word	phy_mii_check_link_status
	.word	phy_lan8720_check_phy_init
	.word	phy_lan8720_get_speed_mode
	.word	phy_lan8720_get_duplex_mode
	.zero	4
	.byte	1
	.zero	3
	.word	phy_mii_get_partner_pause_enable
	.word	phy_lan8720_power_enable
	.word	1000
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI2-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI3-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI4-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI5-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/ethernet/include/eth_phy/phy.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x700
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x16
	.4byte	0x45
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x19
	.4byte	0x57
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x1a
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x21
	.4byte	0x3a
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbc
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xca
	.uleb128 0x8
	.4byte	0xbd
	.uleb128 0x9
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.byte	0x1f
	.4byte	0x100
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x18
	.4byte	0x89
	.uleb128 0x9
	.byte	0x4
	.4byte	0x69
	.byte	0x2
	.byte	0x1d
	.4byte	0x124
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x2
	.byte	0x20
	.4byte	0x10b
	.uleb128 0x9
	.byte	0x4
	.4byte	0x69
	.byte	0x2
	.byte	0x26
	.4byte	0x154
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x2
	.byte	0x2b
	.4byte	0x12f
	.uleb128 0x9
	.byte	0x4
	.4byte	0x69
	.byte	0x2
	.byte	0x31
	.4byte	0x178
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x2
	.byte	0x34
	.4byte	0x15f
	.uleb128 0x9
	.byte	0x4
	.4byte	0x69
	.byte	0x2
	.byte	0x3a
	.4byte	0x19c
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x2
	.byte	0x3d
	.4byte	0x183
	.uleb128 0x9
	.byte	0x4
	.4byte	0x69
	.byte	0x2
	.byte	0x43
	.4byte	0x274
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x11
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x12
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x13
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x15
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x17
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x19
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x1a
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x1b
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x1d
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x1e
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x2
	.byte	0x64
	.4byte	0x1a7
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x2
	.byte	0x66
	.4byte	0x28a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x290
	.uleb128 0xb
	.4byte	0x295
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF72
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x2
	.byte	0x67
	.4byte	0xb6
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x2
	.byte	0x68
	.4byte	0x2b2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2b8
	.uleb128 0xb
	.4byte	0x178
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x2
	.byte	0x69
	.4byte	0x2c8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2ce
	.uleb128 0xb
	.4byte	0x19c
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x2
	.byte	0x6a
	.4byte	0x2de
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2e4
	.uleb128 0xb
	.4byte	0x100
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x2
	.byte	0x6b
	.4byte	0x2f4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2fa
	.uleb128 0xc
	.4byte	0x100
	.4byte	0x313
	.uleb128 0xd
	.4byte	0x9f
	.uleb128 0xd
	.4byte	0x7e
	.uleb128 0xd
	.4byte	0x9f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x2
	.byte	0x6c
	.4byte	0xb6
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x2
	.byte	0x6d
	.4byte	0x28a
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0x2
	.byte	0x6e
	.4byte	0x334
	.uleb128 0x6
	.byte	0x4
	.4byte	0x33a
	.uleb128 0xe
	.4byte	0x345
	.uleb128 0xd
	.4byte	0x295
	.byte	0
	.uleb128 0xf
	.byte	0x38
	.byte	0x2
	.byte	0x74
	.4byte	0x3f6
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x2
	.byte	0x75
	.4byte	0x274
	.byte	0
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x2
	.byte	0x76
	.4byte	0x124
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x2
	.byte	0x77
	.4byte	0x154
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x2
	.byte	0x78
	.4byte	0x2e9
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF85
	.byte	0x2
	.byte	0x79
	.4byte	0x2d3
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF86
	.byte	0x2
	.byte	0x7a
	.4byte	0x27f
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0x2
	.byte	0x7b
	.4byte	0x29c
	.byte	0x18
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x2
	.byte	0x7c
	.4byte	0x2a7
	.byte	0x1c
	.uleb128 0x10
	.4byte	.LASF89
	.byte	0x2
	.byte	0x7d
	.4byte	0x2bd
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF90
	.byte	0x2
	.byte	0x7e
	.4byte	0x313
	.byte	0x24
	.uleb128 0x10
	.4byte	.LASF91
	.byte	0x2
	.byte	0x7f
	.4byte	0x295
	.byte	0x28
	.uleb128 0x10
	.4byte	.LASF92
	.byte	0x2
	.byte	0x80
	.4byte	0x31e
	.byte	0x2c
	.uleb128 0x10
	.4byte	.LASF93
	.byte	0x2
	.byte	0x81
	.4byte	0x329
	.byte	0x30
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x2
	.byte	0x82
	.4byte	0x94
	.byte	0x34
	.byte	0
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0x2
	.byte	0x83
	.4byte	0x345
	.uleb128 0x11
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x10b
	.4byte	0x100
	.byte	0x3
	.4byte	0x437
	.uleb128 0x12
	.4byte	.LASF96
	.byte	0x2
	.2byte	0x10b
	.4byte	0x94
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x2
	.2byte	0x10b
	.4byte	0x7e
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x2
	.2byte	0x10b
	.4byte	0x57
	.byte	0
	.uleb128 0x13
	.4byte	.LASF101
	.byte	0x1
	.byte	0x24
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d8
	.uleb128 0x14
	.4byte	0x401
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x28
	.4byte	0x492
	.uleb128 0x15
	.4byte	0x42a
	.byte	0
	.uleb128 0x15
	.4byte	0x41e
	.byte	0x20
	.uleb128 0x15
	.4byte	0x412
	.byte	0x1
	.uleb128 0x16
	.4byte	.LVL1
	.4byte	0x6bf
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x401
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x29
	.uleb128 0x15
	.4byte	0x42a
	.byte	0
	.uleb128 0x19
	.4byte	0x41e
	.2byte	0x1000
	.uleb128 0x15
	.4byte	0x412
	.byte	0x1f
	.uleb128 0x16
	.4byte	.LVL2
	.4byte	0x6bf
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF99
	.byte	0x1
	.byte	0x2c
	.4byte	0x178
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x501
	.uleb128 0x16
	.4byte	.LVL3
	.4byte	0x6ca
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4f
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF100
	.byte	0x1
	.byte	0x37
	.4byte	0x19c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52a
	.uleb128 0x16
	.4byte	.LVL4
	.4byte	0x6ca
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4f
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF102
	.byte	0x1
	.byte	0x42
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x595
	.uleb128 0x1b
	.4byte	.LASF116
	.byte	0x1
	.byte	0x42
	.4byte	0x295
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x1d
	.4byte	.LASF104
	.byte	0x1
	.byte	0x45
	.4byte	0x94
	.4byte	.LLST0
	.uleb128 0x1e
	.4byte	.LVL6
	.4byte	0x6ca
	.4byte	0x577
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL8
	.4byte	0x6d5
	.4byte	0x58a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL9
	.4byte	0x6e0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF103
	.byte	0x1
	.byte	0x4d
	.4byte	0x100
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x686
	.uleb128 0x20
	.4byte	.LASF105
	.byte	0x1
	.byte	0x54
	.4byte	0x100
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF106
	.byte	0x1
	.byte	0x54
	.4byte	0x100
	.4byte	.LLST1
	.uleb128 0x1d
	.4byte	.LASF104
	.byte	0x1
	.byte	0x59
	.4byte	0x94
	.4byte	.LLST2
	.uleb128 0x1e
	.4byte	.LVL10
	.4byte	0x6d5
	.4byte	0x5f3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x8000
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL11
	.4byte	0x6bf
	.4byte	0x619
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xffff
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL13
	.4byte	0x6bf
	.4byte	0x641
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc0f0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfff0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL15
	.4byte	0x6ca
	.4byte	0x654
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL17
	.4byte	0x6d5
	.4byte	0x667
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL18
	.4byte	0x6eb
	.4byte	0x67c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x12c
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL19
	.4byte	0x6e0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF117
	.byte	0x1
	.byte	0x78
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.string	"TAG"
	.byte	0x1
	.byte	0x22
	.4byte	0xc4
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1783
	.sleb128 0
	.uleb128 0x23
	.4byte	.LASF118
	.byte	0x1
	.byte	0x69
	.4byte	0x6ba
	.uleb128 0x5
	.byte	0x3
	.4byte	phy_lan8720_default_ethernet_config
	.uleb128 0x8
	.4byte	0x3f6
	.uleb128 0x24
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0x2
	.byte	0xfe
	.uleb128 0x24
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x2
	.byte	0xf0
	.uleb128 0x24
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0x2
	.byte	0xe5
	.uleb128 0x24
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x7
	.byte	0x38
	.uleb128 0x25
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x8
	.2byte	0x17f
	.uleb128 0x26
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x8
	.byte	0x6c
	.byte	0x61
	.byte	0x6e
	.byte	0x38
	.byte	0x37
	.byte	0x32
	.byte	0x30
	.byte	0
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
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
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
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0xb
	.byte	0x7a
	.sleb128 0
	.byte	0xa
	.2byte	0x1200
	.byte	0x21
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL14
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0xb
	.byte	0x7a
	.sleb128 0
	.byte	0xa
	.2byte	0x1200
	.byte	0x21
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF58:
	.string	"PHY20"
.LASF59:
	.string	"PHY21"
.LASF60:
	.string	"PHY22"
.LASF61:
	.string	"PHY23"
.LASF38:
	.string	"PHY0"
.LASF63:
	.string	"PHY25"
.LASF40:
	.string	"PHY2"
.LASF41:
	.string	"PHY3"
.LASF42:
	.string	"PHY4"
.LASF90:
	.string	"gpio_config"
.LASF44:
	.string	"PHY6"
.LASF45:
	.string	"PHY7"
.LASF46:
	.string	"PHY8"
.LASF47:
	.string	"PHY9"
.LASF22:
	.string	"ESP_LOG_VERBOSE"
.LASF62:
	.string	"PHY24"
.LASF115:
	.string	"esp_eth_smi_wait_set"
.LASF64:
	.string	"PHY26"
.LASF65:
	.string	"PHY27"
.LASF73:
	.string	"eth_phy_check_init_func"
.LASF66:
	.string	"PHY28"
.LASF29:
	.string	"ETH_CLOCK_GPIO16_OUT"
.LASF67:
	.string	"PHY29"
.LASF101:
	.string	"phy_lan8720_check_phy_init"
.LASF94:
	.string	"reset_timeout_ms"
.LASF111:
	.string	"ets_delay_us"
.LASF114:
	.string	"/home/raphael/rtone/lcd/build/ethernet"
.LASF113:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/ethernet/eth_phy/phy_lan8720.c"
.LASF6:
	.string	"__uint32_t"
.LASF78:
	.string	"eth_gpio_config_func"
.LASF4:
	.string	"__uint16_t"
.LASF97:
	.string	"value_mask"
.LASF2:
	.string	"short int"
.LASF15:
	.string	"long unsigned int"
.LASF107:
	.string	"esp_eth_smi_wait_value"
.LASF116:
	.string	"enable"
.LASF79:
	.string	"eth_phy_get_partner_pause_enable_func"
.LASF33:
	.string	"ETH_SPEED_MODE_100M"
.LASF71:
	.string	"eth_phy_check_link_func"
.LASF68:
	.string	"PHY30"
.LASF69:
	.string	"PHY31"
.LASF77:
	.string	"eth_tcpip_input_func"
.LASF83:
	.string	"clock_mode"
.LASF8:
	.string	"long long int"
.LASF70:
	.string	"eth_phy_base_t"
.LASF16:
	.string	"char"
.LASF91:
	.string	"flow_ctrl_enable"
.LASF89:
	.string	"phy_get_duplex_mode"
.LASF14:
	.string	"sizetype"
.LASF20:
	.string	"ESP_LOG_INFO"
.LASF108:
	.string	"esp_eth_smi_read"
.LASF82:
	.string	"mac_mode"
.LASF25:
	.string	"ETH_MODE_MII"
.LASF30:
	.string	"ETH_CLOCK_GPIO17_OUT"
.LASF100:
	.string	"phy_lan8720_get_duplex_mode"
.LASF1:
	.string	"unsigned char"
.LASF80:
	.string	"eth_phy_power_enable_func"
.LASF85:
	.string	"phy_init"
.LASF26:
	.string	"eth_mode_t"
.LASF36:
	.string	"ETH_MODE_FULLDUPLEX"
.LASF49:
	.string	"PHY11"
.LASF75:
	.string	"eth_phy_get_duplex_mode_func"
.LASF0:
	.string	"signed char"
.LASF102:
	.string	"phy_lan8720_power_enable"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF7:
	.string	"unsigned int"
.LASF18:
	.string	"ESP_LOG_ERROR"
.LASF10:
	.string	"uint16_t"
.LASF32:
	.string	"ETH_SPEED_MODE_10M"
.LASF109:
	.string	"esp_eth_smi_write"
.LASF88:
	.string	"phy_get_speed_mode"
.LASF37:
	.string	"eth_duplex_mode_t"
.LASF95:
	.string	"eth_config_t"
.LASF3:
	.string	"short unsigned int"
.LASF99:
	.string	"phy_lan8720_get_speed_mode"
.LASF92:
	.string	"phy_get_partner_pause_enable"
.LASF35:
	.string	"ETH_MODE_HALFDUPLEX"
.LASF39:
	.string	"PHY1"
.LASF13:
	.string	"long int"
.LASF21:
	.string	"ESP_LOG_DEBUG"
.LASF11:
	.string	"int32_t"
.LASF17:
	.string	"ESP_LOG_NONE"
.LASF43:
	.string	"PHY5"
.LASF31:
	.string	"eth_clock_mode_t"
.LASF72:
	.string	"_Bool"
.LASF28:
	.string	"ETH_CLOCK_GPIO0_OUT"
.LASF34:
	.string	"eth_speed_mode_t"
.LASF104:
	.string	"data"
.LASF19:
	.string	"ESP_LOG_WARN"
.LASF48:
	.string	"PHY10"
.LASF98:
	.string	"timeout_ms"
.LASF50:
	.string	"PHY12"
.LASF51:
	.string	"PHY13"
.LASF52:
	.string	"PHY14"
.LASF53:
	.string	"PHY15"
.LASF54:
	.string	"PHY16"
.LASF55:
	.string	"PHY17"
.LASF56:
	.string	"PHY18"
.LASF57:
	.string	"PHY19"
.LASF76:
	.string	"eth_phy_func"
.LASF81:
	.string	"phy_addr"
.LASF86:
	.string	"phy_check_link"
.LASF27:
	.string	"ETH_CLOCK_GPIO0_IN"
.LASF93:
	.string	"phy_power_enable"
.LASF5:
	.string	"__int32_t"
.LASF96:
	.string	"reg_num"
.LASF117:
	.string	"phy_lan8720_dump_registers"
.LASF118:
	.string	"phy_lan8720_default_ethernet_config"
.LASF24:
	.string	"ETH_MODE_RMII"
.LASF105:
	.string	"res1"
.LASF106:
	.string	"res2"
.LASF103:
	.string	"phy_lan8720_init"
.LASF112:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF74:
	.string	"eth_phy_get_speed_mode_func"
.LASF110:
	.string	"phy_mii_enable_flow_ctrl"
.LASF87:
	.string	"phy_check_init"
.LASF23:
	.string	"esp_err_t"
.LASF84:
	.string	"tcpip_input"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"