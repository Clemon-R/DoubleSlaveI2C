	.file	"emac_dev.c"
	.text
.Ltext0:
	.section	.text.emac_enable_flowctrl,"ax",@progbits
	.literal_position
	.literal .LC0, 1073127448
	.literal .LC1, 373817344
	.align	4
	.global	emac_enable_flowctrl
	.type	emac_enable_flowctrl, @function
emac_enable_flowctrl:
.LFB18:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/ethernet/emac_dev.c"
	.loc 1 36 0
	entry	sp, 32
.LCFI0:
.LBB6:
	.loc 1 37 0
	l32r	a8, .LC0
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 2
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE6:
.LBB7:
	.loc 1 38 0
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 4
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE7:
.LBB8:
	.loc 1 39 0
	memw
	l32i.n	a10, a8, 0
	movi	a9, -0x81
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE8:
.LBB9:
.LBB10:
	.loc 1 40 0
	memw
	l32i.n	a9, a8, 0
.LBE10:
	extui	a10, a9, 0, 16
	l32r	a9, .LC1
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE9:
.LBB11:
.LBB12:
	.loc 1 41 0
	memw
	l32i.n	a10, a8, 0
.LBE12:
	movi	a9, -0x31
	and	a10, a10, a9
	movi.n	a9, 0x10
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LBE11:
.LFE18:
	.size	emac_enable_flowctrl, .-emac_enable_flowctrl
	.section	.text.emac_disable_flowctrl,"ax",@progbits
	.literal_position
	.literal .LC2, 1073127448
	.align	4
	.global	emac_disable_flowctrl
	.type	emac_disable_flowctrl, @function
emac_disable_flowctrl:
.LFB19:
	.loc 1 45 0
	entry	sp, 32
.LCFI1:
.LBB13:
	.loc 1 46 0
	l32r	a8, .LC2
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, -3
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE13:
.LBB14:
	.loc 1 47 0
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, -5
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE14:
.LBB15:
	.loc 1 48 0
	memw
	l32i.n	a10, a8, 0
	movi	a9, -0x81
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE15:
.LBB16:
.LBB17:
	.loc 1 49 0
	memw
	l32i.n	a9, a8, 0
.LBE17:
	extui	a9, a9, 0, 16
	memw
	s32i.n	a9, a8, 0
.LBE16:
.LBB18:
.LBB19:
	.loc 1 50 0
	memw
	l32i.n	a10, a8, 0
.LBE19:
	movi	a9, -0x31
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LBE18:
.LFE19:
	.size	emac_disable_flowctrl, .-emac_disable_flowctrl
	.section	.text.emac_enable_dma_tx,"ax",@progbits
	.literal_position
	.literal .LC3, 1073123352
	.literal .LC4, 8192
	.align	4
	.global	emac_enable_dma_tx
	.type	emac_enable_dma_tx, @function
emac_enable_dma_tx:
.LFB20:
	.loc 1 54 0
	entry	sp, 32
.LCFI2:
.LBB20:
	.loc 1 55 0
	l32r	a9, .LC3
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC4
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LBE20:
.LFE20:
	.size	emac_enable_dma_tx, .-emac_enable_dma_tx
	.section	.text.emac_enable_dma_rx,"ax",@progbits
	.literal_position
	.literal .LC5, 1073123352
	.align	4
	.global	emac_enable_dma_rx
	.type	emac_enable_dma_rx, @function
emac_enable_dma_rx:
.LFB21:
	.loc 1 59 0
	entry	sp, 32
.LCFI3:
.LBB21:
	.loc 1 60 0
	l32r	a9, .LC5
	memw
	l32i.n	a10, a9, 0
	movi.n	a8, 2
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LBE21:
.LFE21:
	.size	emac_enable_dma_rx, .-emac_enable_dma_rx
	.section	.text.emac_disable_dma_tx,"ax",@progbits
	.literal_position
	.literal .LC6, 1073123352
	.literal .LC7, -8193
	.align	4
	.global	emac_disable_dma_tx
	.type	emac_disable_dma_tx, @function
emac_disable_dma_tx:
.LFB22:
	.loc 1 64 0
	entry	sp, 32
.LCFI4:
.LBB22:
	.loc 1 65 0
	l32r	a9, .LC6
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC7
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LBE22:
.LFE22:
	.size	emac_disable_dma_tx, .-emac_disable_dma_tx
	.section	.text.emac_disable_dma_rx,"ax",@progbits
	.literal_position
	.literal .LC8, 1073123352
	.align	4
	.global	emac_disable_dma_rx
	.type	emac_disable_dma_rx, @function
emac_disable_dma_rx:
.LFB23:
	.loc 1 69 0
	entry	sp, 32
.LCFI5:
.LBB23:
	.loc 1 70 0
	l32r	a9, .LC8
	memw
	l32i.n	a10, a9, 0
	movi.n	a8, -3
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LBE23:
.LFE23:
	.size	emac_disable_dma_rx, .-emac_disable_dma_rx
	.section	.text.emac_enable_clk,"ax",@progbits
	.literal_position
	.literal .LC9, 1072693452
	.literal .LC10, 16384
	.literal .LC11, -16385
	.align	4
	.global	emac_enable_clk
	.type	emac_enable_clk, @function
emac_enable_clk:
.LFB24:
	.loc 1 74 0
.LVL0:
	entry	sp, 32
.LCFI6:
	extui	a2, a2, 0, 8
	.loc 1 75 0
	beqz.n	a2, .L8
.LVL1:
.LBB24:
.LBB25:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 79 0
	l32r	a3, .LC9
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL2:
.LBE25:
.LBE24:
	.loc 1 76 0
	l32r	a2, .LC10
.LVL3:
	or	a10, a10, a2
	memw
	s32i.n	a10, a3, 0
	retw.n
.LVL4:
.L8:
.LBB26:
.LBB27:
	.loc 2 79 0
	l32r	a2, .LC9
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL5:
.LBE27:
.LBE26:
	.loc 1 78 0
	l32r	a8, .LC11
	and	a10, a10, a8
	memw
	s32i.n	a10, a2, 0
	retw.n
.LFE24:
	.size	emac_enable_clk, .-emac_enable_clk
	.section	.text.emac_dma_init,"ax",@progbits
	.literal_position
	.literal .LC12, 1073123352
	.literal .LC13, 1073123328
	.literal .LC14, -16129
	.align	4
	.global	emac_dma_init
	.type	emac_dma_init, @function
emac_dma_init:
.LFB25:
	.loc 1 83 0
	entry	sp, 32
.LCFI7:
.LBB28:
	.loc 1 84 0
	l32r	a8, .LC12
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 0x40
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE28:
.LBB29:
	.loc 1 85 0
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 4
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE29:
.LBB30:
.LBB31:
	.loc 1 86 0
	l32r	a10, .LC13
	memw
	l32i.n	a9, a10, 0
.LBE31:
	l32r	a8, .LC14
	and	a9, a9, a8
	movi	a8, 0x400
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 0
	retw.n
.LBE30:
.LFE25:
	.size	emac_dma_init, .-emac_dma_init
	.section	.text.emac_mac_enable_txrx,"ax",@progbits
	.literal_position
	.literal .LC15, 1073127424
	.align	4
	.global	emac_mac_enable_txrx
	.type	emac_mac_enable_txrx, @function
emac_mac_enable_txrx:
.LFB26:
	.loc 1 90 0
	entry	sp, 32
.LCFI8:
.LBB32:
	.loc 1 91 0
	l32r	a8, .LC15
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 4
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE32:
.LBB33:
	.loc 1 92 0
	memw
	l32i.n	a10, a8, 0
	movi.n	a9, 8
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LBE33:
.LFE26:
	.size	emac_mac_enable_txrx, .-emac_mac_enable_txrx
	.section	.text.emac_mac_init,"ax",@progbits
	.literal_position
	.literal .LC16, 1073127424
	.literal .LC17, 2048
	.literal .LC18, 32768
	.literal .LC19, -16385
	.literal .LC20, 1073127428
	.align	4
	.global	emac_mac_init
	.type	emac_mac_init, @function
emac_mac_init:
.LFB27:
	.loc 1 96 0
	entry	sp, 32
.LCFI9:
.LBB34:
	.loc 1 97 0
	l32r	a8, .LC16
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC17
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE34:
.LBB35:
	.loc 1 98 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC18
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE35:
.LBB36:
	.loc 1 99 0
	memw
	l32i.n	a10, a8, 0
	l32r	a9, .LC19
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE36:
.LBB37:
	.loc 1 100 0
	l32r	a9, .LC20
	memw
	l32i.n	a10, a9, 0
	movi.n	a8, 0x10
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LBE37:
.LFE27:
	.size	emac_mac_init, .-emac_mac_init
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI0-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI1-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI2-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI3-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI4-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI5-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI6-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI7-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI8-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI9-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_dport_access.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2c9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0xc
	.4byte	.LASF26
	.4byte	.LASF27
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x1a
	.4byte	0x53
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
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
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2d
	.4byte	0x48
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x2
	.byte	0x4a
	.4byte	0x84
	.byte	0x3
	.4byte	0xb2
	.uleb128 0x6
	.string	"reg"
	.byte	0x2
	.byte	0x4a
	.4byte	0x84
	.byte	0
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x1
	.byte	0x23
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd1
	.uleb128 0x8
	.4byte	.LASF16
	.4byte	0xe1
	.byte	0
	.uleb128 0x9
	.4byte	0x7d
	.4byte	0xe1
	.uleb128 0xa
	.4byte	0x6f
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.4byte	0xd1
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0x2c
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x105
	.uleb128 0x8
	.4byte	.LASF16
	.4byte	0x115
	.byte	0
	.uleb128 0x9
	.4byte	0x7d
	.4byte	0x115
	.uleb128 0xa
	.4byte	0x6f
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.4byte	0x105
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0x35
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x139
	.uleb128 0x8
	.4byte	.LASF16
	.4byte	0x149
	.byte	0
	.uleb128 0x9
	.4byte	0x7d
	.4byte	0x149
	.uleb128 0xa
	.4byte	0x6f
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.4byte	0x139
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0x3a
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16d
	.uleb128 0x8
	.4byte	.LASF16
	.4byte	0x16d
	.byte	0
	.uleb128 0xb
	.4byte	0x139
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x1
	.byte	0x3f
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x191
	.uleb128 0x8
	.4byte	.LASF16
	.4byte	0x1a1
	.byte	0
	.uleb128 0x9
	.4byte	0x7d
	.4byte	0x1a1
	.uleb128 0xa
	.4byte	0x6f
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.4byte	0x191
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x1
	.byte	0x44
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c5
	.uleb128 0x8
	.4byte	.LASF16
	.4byte	0x1c5
	.byte	0
	.uleb128 0xb
	.4byte	0x191
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x1
	.byte	0x49
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x245
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0x49
	.4byte	0x8f
	.4byte	.LLST0
	.uleb128 0xd
	.4byte	0x96
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0x4c
	.4byte	0x21b
	.uleb128 0xe
	.4byte	0xa6
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LVL2
	.4byte	0x2c1
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x96
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.byte	0x4e
	.uleb128 0x12
	.4byte	0xa6
	.4byte	0x3ff000cc
	.uleb128 0xf
	.4byte	.LVL5
	.4byte	0x2c1
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x1
	.byte	0x52
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x264
	.uleb128 0x8
	.4byte	.LASF16
	.4byte	0x274
	.byte	0
	.uleb128 0x9
	.4byte	0x7d
	.4byte	0x274
	.uleb128 0xa
	.4byte	0x6f
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.4byte	0x264
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x1
	.byte	0x59
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x298
	.uleb128 0x8
	.4byte	.LASF16
	.4byte	0x298
	.byte	0
	.uleb128 0xb
	.4byte	0xd1
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x1
	.byte	0x5f
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2bc
	.uleb128 0x8
	.4byte	.LASF16
	.4byte	0x2bc
	.byte	0
	.uleb128 0xb
	.4byte	0x264
	.uleb128 0x13
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x5
	.byte	0x1e
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff000cc
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
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
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
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
.LASF15:
	.string	"emac_disable_flowctrl"
.LASF3:
	.string	"short unsigned int"
.LASF29:
	.string	"enable"
.LASF16:
	.string	"__func__"
.LASF1:
	.string	"unsigned char"
.LASF30:
	.string	"esp_dport_access_reg_read"
.LASF9:
	.string	"long unsigned int"
.LASF23:
	.string	"emac_mac_enable_txrx"
.LASF26:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/ethernet/emac_dev.c"
.LASF11:
	.string	"__uint32_t"
.LASF4:
	.string	"unsigned int"
.LASF27:
	.string	"/home/raphael/rtone/lcd/build/ethernet"
.LASF6:
	.string	"long long unsigned int"
.LASF21:
	.string	"emac_enable_clk"
.LASF25:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF20:
	.string	"emac_disable_dma_rx"
.LASF8:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF24:
	.string	"emac_mac_init"
.LASF10:
	.string	"char"
.LASF19:
	.string	"emac_disable_dma_tx"
.LASF2:
	.string	"short int"
.LASF14:
	.string	"emac_enable_flowctrl"
.LASF22:
	.string	"emac_dma_init"
.LASF18:
	.string	"emac_enable_dma_rx"
.LASF12:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF28:
	.string	"DPORT_REG_READ"
.LASF17:
	.string	"emac_enable_dma_tx"
.LASF0:
	.string	"signed char"
.LASF13:
	.string	"_Bool"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
