	.file	"ctrl_sock.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"127.0.0.1"
	.section	.text.cs_create_ctrl_sock,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.global	cs_create_ctrl_sock
	.type	cs_create_ctrl_sock, @function
cs_create_ctrl_sock:
.LFB38:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp_http_server/src/util/ctrl_sock.c"
	.loc 1 28 0
.LVL0:
	entry	sp, 48
.LCFI0:
	mov.n	a3, a2
.LVL1:
.LBB10:
.LBB11:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h"
	.loc 2 593 0
	movi.n	a12, 0x11
	movi.n	a11, 2
	mov.n	a10, a11
	call8	lwip_socket
.LVL2:
	mov.n	a2, a10
.LVL3:
.LBE11:
.LBE10:
	.loc 1 30 0
	bltz	a10, .L3
	.loc 1 36 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	.loc 1 37 0
	movi.n	a8, 2
	s8i	a8, sp, 1
	.loc 1 38 0
	extui	a10, a3, 0, 16
	call8	lwip_htons
.LVL4:
	s16i	a10, sp, 2
	.loc 1 39 0
	addi.n	a11, sp, 4
	l32r	a10, .LC1
	call8	ip4addr_aton
.LVL5:
.LBB12:
.LBB13:
	.loc 2 563 0
	movi.n	a12, 0x10
	mov.n	a11, sp
.LVL6:
	mov.n	a10, a2
	call8	lwip_bind_r
.LVL7:
.LBE13:
.LBE12:
	.loc 1 41 0
	bgez	a10, .L2
	.loc 1 42 0
	mov.n	a10, a2
	call8	close
.LVL8:
	.loc 1 43 0
	movi.n	a2, -1
.LVL9:
	retw.n
.LVL10:
.L3:
	.loc 1 31 0
	movi.n	a2, -1
.L2:
	.loc 1 46 0
	retw.n
.LFE38:
	.size	cs_create_ctrl_sock, .-cs_create_ctrl_sock
	.section	.text.cs_free_ctrl_sock,"ax",@progbits
	.align	4
	.global	cs_free_ctrl_sock
	.type	cs_free_ctrl_sock, @function
cs_free_ctrl_sock:
.LFB39:
	.loc 1 49 0
.LVL11:
	entry	sp, 32
.LCFI1:
	.loc 1 50 0
	mov.n	a10, a2
	call8	close
.LVL12:
	retw.n
.LFE39:
	.size	cs_free_ctrl_sock, .-cs_free_ctrl_sock
	.section	.text.cs_send_to_ctrl_sock,"ax",@progbits
	.literal_position
	.literal .LC2, .LC0
	.align	4
	.global	cs_send_to_ctrl_sock
	.type	cs_send_to_ctrl_sock, @function
cs_send_to_ctrl_sock:
.LFB40:
	.loc 1 54 0
.LVL13:
	entry	sp, 48
.LCFI2:
	.loc 1 57 0
	movi.n	a8, 2
	s8i	a8, sp, 1
	.loc 1 58 0
	extui	a10, a3, 0, 16
	call8	lwip_htons
.LVL14:
	s16i	a10, sp, 2
	.loc 1 59 0
	addi.n	a11, sp, 4
	l32r	a10, .LC2
	call8	ip4addr_aton
.LVL15:
.LBB14:
.LBB15:
	.loc 2 591 0
	movi.n	a15, 0x10
	mov.n	a14, sp
.LVL16:
	movi.n	a13, 0
	mov.n	a12, a5
	mov.n	a11, a4
	mov.n	a10, a2
	call8	lwip_sendto_r
.LVL17:
.LBE15:
.LBE14:
	.loc 1 62 0
	bgez	a10, .L6
	.loc 1 63 0
	movi.n	a10, -1
.L6:
	.loc 1 66 0
	mov.n	a2, a10
.LVL18:
	retw.n
.LFE40:
	.size	cs_send_to_ctrl_sock, .-cs_send_to_ctrl_sock
	.section	.text.cs_recv_from_ctrl_sock,"ax",@progbits
	.align	4
	.global	cs_recv_from_ctrl_sock
	.type	cs_recv_from_ctrl_sock, @function
cs_recv_from_ctrl_sock:
.LFB41:
	.loc 1 69 0
.LVL19:
	entry	sp, 32
.LCFI3:
.LVL20:
.LBB16:
.LBB17:
	.loc 2 585 0
	movi.n	a15, 0
	mov.n	a14, a15
	mov.n	a13, a15
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	lwip_recvfrom_r
.LVL21:
.LBE17:
.LBE16:
	.loc 1 73 0
	bgez	a10, .L8
	.loc 1 74 0
	movi.n	a10, -1
.L8:
	.loc 1 77 0
	mov.n	a2, a10
.LVL22:
	retw.n
.LFE41:
	.size	cs_recv_from_ctrl_sock, .-cs_recv_from_ctrl_sock
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
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI1-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI2-.LFB40
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI3-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 3 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/inet.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/def.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/unistd.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x65a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0xc
	.4byte	.LASF69
	.4byte	.LASF70
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x12
	.4byte	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.4byte	0xa0
	.4byte	0xb7
	.uleb128 0x7
	.4byte	0x90
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbd
	.uleb128 0x9
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF18
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.byte	0x6
	.byte	0x33
	.4byte	0xff
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x6
	.byte	0x34
	.4byte	0xd4
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x39
	.4byte	0xe6
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x7
	.byte	0x37
	.4byte	0xd4
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x4
	.byte	0x7
	.byte	0x3a
	.4byte	0x12e
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x7
	.byte	0x3b
	.4byte	0x10a
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x2
	.byte	0x3a
	.4byte	0xbe
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x2
	.byte	0x3f
	.4byte	0xc9
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x10
	.byte	0x2
	.byte	0x44
	.4byte	0x18d
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x2
	.byte	0x45
	.4byte	0xbe
	.byte	0
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x2
	.byte	0x46
	.4byte	0x12e
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x2
	.byte	0x47
	.4byte	0x139
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x2
	.byte	0x48
	.4byte	0x115
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x2
	.byte	0x4a
	.4byte	0xa7
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x10
	.byte	0x2
	.byte	0x59
	.4byte	0x1be
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x2
	.byte	0x5a
	.4byte	0xbe
	.byte	0
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x2
	.byte	0x5b
	.4byte	0x12e
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x2
	.byte	0x5c
	.4byte	0x1be
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	0xa0
	.4byte	0x1ce
	.uleb128 0x7
	.4byte	0x90
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x2
	.byte	0x6c
	.4byte	0xd4
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x2
	.2byte	0x250
	.4byte	0x25
	.byte	0x3
	.4byte	0x20f
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x250
	.4byte	0x25
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x2
	.2byte	0x250
	.4byte	0x25
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x2
	.2byte	0x250
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x2
	.2byte	0x232
	.4byte	0x25
	.byte	0x3
	.4byte	0x243
	.uleb128 0xe
	.string	"s"
	.byte	0x2
	.2byte	0x232
	.4byte	0x25
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x2
	.2byte	0x232
	.4byte	0x243
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x2
	.2byte	0x232
	.4byte	0x1ce
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x249
	.uleb128 0xf
	.4byte	0x18d
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x2
	.2byte	0x24e
	.4byte	0x25
	.byte	0x3
	.4byte	0x2a5
	.uleb128 0xe
	.string	"s"
	.byte	0x2
	.2byte	0x24e
	.4byte	0x25
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x2
	.2byte	0x24e
	.4byte	0xb7
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x2
	.2byte	0x24e
	.4byte	0x2c
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x2
	.2byte	0x24e
	.4byte	0x25
	.uleb128 0xe
	.string	"to"
	.byte	0x2
	.2byte	0x24e
	.4byte	0x243
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x2
	.2byte	0x24e
	.4byte	0x1ce
	.byte	0
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x2
	.2byte	0x248
	.4byte	0x25
	.byte	0x3
	.4byte	0x2fd
	.uleb128 0xe
	.string	"s"
	.byte	0x2
	.2byte	0x248
	.4byte	0x25
	.uleb128 0xe
	.string	"mem"
	.byte	0x2
	.2byte	0x248
	.4byte	0x97
	.uleb128 0xe
	.string	"len"
	.byte	0x2
	.2byte	0x248
	.4byte	0x2c
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x2
	.2byte	0x248
	.4byte	0x25
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x2
	.2byte	0x248
	.4byte	0x2fd
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x2
	.2byte	0x248
	.4byte	0x303
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x18d
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1ce
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x1
	.byte	0x1b
	.4byte	0x25
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x423
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x1
	.byte	0x1b
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x12
	.string	"fd"
	.byte	0x1
	.byte	0x1d
	.4byte	0x25
	.uleb128 0x12
	.string	"ret"
	.byte	0x1
	.byte	0x22
	.4byte	0x25
	.uleb128 0x13
	.4byte	.LASF23
	.byte	0x1
	.byte	0x23
	.4byte	0x144
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.4byte	0x1d9
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.byte	0x1d
	.4byte	0x393
	.uleb128 0x15
	.4byte	0x202
	.byte	0x11
	.uleb128 0x15
	.4byte	0x1f6
	.byte	0x2
	.uleb128 0x15
	.4byte	0x1ea
	.byte	0x2
	.uleb128 0x16
	.4byte	.LVL2
	.4byte	0x60c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x41
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x20f
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x28
	.4byte	0x3dd
	.uleb128 0x18
	.4byte	0x236
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	0x22a
	.4byte	.LLST2
	.uleb128 0x18
	.4byte	0x220
	.4byte	.LLST3
	.uleb128 0x16
	.4byte	.LVL7
	.4byte	0x618
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL4
	.4byte	0x624
	.4byte	0x3f5
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x19
	.4byte	.LVL5
	.4byte	0x62f
	.4byte	0x412
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x16
	.4byte	.LVL8
	.4byte	0x63a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF71
	.byte	0x1
	.byte	0x30
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x455
	.uleb128 0x1b
	.string	"fd"
	.byte	0x1
	.byte	0x30
	.4byte	0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LVL12
	.4byte	0x63a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x1
	.byte	0x35
	.4byte	0x25
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55b
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0x1
	.byte	0x35
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x1c
	.4byte	.LASF53
	.byte	0x1
	.byte	0x35
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0x1
	.byte	0x35
	.4byte	0x97
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LASF58
	.byte	0x1
	.byte	0x35
	.4byte	0x37
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x12
	.string	"ret"
	.byte	0x1
	.byte	0x37
	.4byte	0x25
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0x1
	.byte	0x38
	.4byte	0x144
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.4byte	0x24e
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.byte	0x3c
	.4byte	0x529
	.uleb128 0x15
	.4byte	0x298
	.byte	0x10
	.uleb128 0x18
	.4byte	0x28d
	.4byte	.LLST5
	.uleb128 0x15
	.4byte	0x281
	.byte	0
	.uleb128 0x1d
	.4byte	0x275
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1d
	.4byte	0x269
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	0x25f
	.4byte	.LLST6
	.uleb128 0x16
	.4byte	.LVL17
	.4byte	0x645
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL14
	.4byte	0x624
	.4byte	0x541
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x16
	.4byte	.LVL15
	.4byte	0x62f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x1
	.byte	0x44
	.4byte	0x25
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x60c
	.uleb128 0x1e
	.string	"fd"
	.byte	0x1
	.byte	0x44
	.4byte	0x25
	.4byte	.LLST7
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0x1
	.byte	0x44
	.4byte	0x97
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF58
	.byte	0x1
	.byte	0x44
	.4byte	0x37
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.string	"ret"
	.byte	0x1
	.byte	0x46
	.4byte	0x25
	.uleb128 0x1f
	.4byte	0x2a5
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0x47
	.uleb128 0x15
	.4byte	0x2f0
	.byte	0
	.uleb128 0x15
	.4byte	0x2e4
	.byte	0
	.uleb128 0x15
	.4byte	0x2d8
	.byte	0
	.uleb128 0x1d
	.4byte	0x2cc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	0x2c0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	0x2b6
	.4byte	.LLST8
	.uleb128 0x16
	.4byte	.LVL21
	.4byte	0x651
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x2
	.2byte	0x228
	.uleb128 0x20
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x2
	.2byte	0x216
	.uleb128 0x21
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x8
	.byte	0x55
	.uleb128 0x21
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x6
	.byte	0xd8
	.uleb128 0x21
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x9
	.byte	0x1e
	.uleb128 0x20
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x2
	.2byte	0x226
	.uleb128 0x20
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x2
	.2byte	0x222
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7-1
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL17-1
	.4byte	.LFE40
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF65:
	.string	"close"
.LASF38:
	.string	"domain"
.LASF57:
	.string	"data"
.LASF34:
	.string	"sa_len"
.LASF66:
	.string	"lwip_sendto_r"
.LASF6:
	.string	"short int"
.LASF3:
	.string	"size_t"
.LASF12:
	.string	"sizetype"
.LASF61:
	.string	"lwip_socket"
.LASF8:
	.string	"__uint32_t"
.LASF7:
	.string	"__uint16_t"
.LASF15:
	.string	"uint8_t"
.LASF29:
	.string	"sin_family"
.LASF17:
	.string	"uint32_t"
.LASF28:
	.string	"sin_len"
.LASF45:
	.string	"sendto"
.LASF40:
	.string	"protocol"
.LASF44:
	.string	"namelen"
.LASF9:
	.string	"long long int"
.LASF55:
	.string	"cs_send_to_ctrl_sock"
.LASF11:
	.string	"long int"
.LASF70:
	.string	"/home/raphael/rtone/lcd/build/esp_http_server"
.LASF64:
	.string	"ip4addr_aton"
.LASF23:
	.string	"addr"
.LASF54:
	.string	"cs_create_ctrl_sock"
.LASF4:
	.string	"__uint8_t"
.LASF58:
	.string	"data_len"
.LASF31:
	.string	"sin_addr"
.LASF43:
	.string	"name"
.LASF69:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp_http_server/src/util/ctrl_sock.c"
.LASF25:
	.string	"sa_family_t"
.LASF5:
	.string	"unsigned char"
.LASF37:
	.string	"socklen_t"
.LASF2:
	.string	"signed char"
.LASF48:
	.string	"flags"
.LASF10:
	.string	"long long unsigned int"
.LASF39:
	.string	"type"
.LASF0:
	.string	"unsigned int"
.LASF16:
	.string	"uint16_t"
.LASF24:
	.string	"s_addr"
.LASF63:
	.string	"lwip_htons"
.LASF36:
	.string	"sa_data"
.LASF1:
	.string	"short unsigned int"
.LASF14:
	.string	"char"
.LASF71:
	.string	"cs_free_ctrl_sock"
.LASF52:
	.string	"fromlen"
.LASF50:
	.string	"recvfrom"
.LASF42:
	.string	"bind"
.LASF18:
	.string	"_Bool"
.LASF20:
	.string	"in_addr_t"
.LASF21:
	.string	"ip4_addr"
.LASF62:
	.string	"lwip_bind_r"
.LASF59:
	.string	"to_addr"
.LASF53:
	.string	"port"
.LASF13:
	.string	"long unsigned int"
.LASF22:
	.string	"in_addr"
.LASF32:
	.string	"sin_zero"
.LASF19:
	.string	"ip4_addr_t"
.LASF47:
	.string	"size"
.LASF30:
	.string	"sin_port"
.LASF35:
	.string	"sa_family"
.LASF41:
	.string	"socket"
.LASF56:
	.string	"send_fd"
.LASF26:
	.string	"in_port_t"
.LASF67:
	.string	"lwip_recvfrom_r"
.LASF46:
	.string	"dataptr"
.LASF49:
	.string	"tolen"
.LASF68:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF27:
	.string	"sockaddr_in"
.LASF51:
	.string	"from"
.LASF33:
	.string	"sockaddr"
.LASF60:
	.string	"cs_recv_from_ctrl_sock"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
