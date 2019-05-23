	.file	"smartconfig_ack.c"
	.text
.Ltext0:
	.section	.text.sc_ack_send_get_errno,"ax",@progbits
	.literal_position
	.literal .LC0, 4103
	.literal .LC1, 4095
	.align	4
	.type	sc_ack_send_get_errno, @function
sc_ack_send_get_errno:
.LFB40:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/smartconfig_ack/smartconfig_ack.c"
	.loc 1 36 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 37 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	.loc 1 38 0
	movi.n	a8, 4
	s32i.n	a8, sp, 4
.LVL1:
.LBB12:
.LBB13:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h"
	.loc 2 573 0
	add.n	a14, sp, a8
	mov.n	a13, sp
.LVL2:
	l32r	a12, .LC0
	l32r	a11, .LC1
	mov.n	a10, a2
	call8	lwip_getsockopt_r
.LVL3:
.LBE13:
.LBE12:
	.loc 1 43 0
	l32i.n	a2, sp, 0
.LVL4:
	retw.n
.LFE40:
	.size	sc_ack_send_get_errno, .-sc_ack_send_get_errno
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC4:
	.string	"smartconfig"
	.align	4
.LC6:
	.string	"\033[0;31mE (%d) %s: Creat udp socket failed\033[0m\n"
	.align	4
.LC9:
	.string	"\033[0;31mE (%d) %s: send failed, errno %d\033[0m\n"
	.section	.text.sc_ack_send_task,"ax",@progbits
	.literal_position
	.literal .LC2, 18266
	.literal .LC3, 10000
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC8, 4095
	.literal .LC10, .LC9
	.literal .LC11, s_sc_ack_send
	.align	4
	.type	sc_ack_send_task, @function
sc_ack_send_task:
.LFB41:
	.loc 1 46 0
.LVL5:
	entry	sp, 80
.LCFI1:
.LVL6:
	.loc 1 50 0
	l8ui	a4, a2, 19
	l8ui	a5, a2, 20
	s8i	a4, sp, 12
	l8ui	a4, a2, 21
	s8i	a5, sp, 13
	l8ui	a3, a2, 22
	s8i	a4, sp, 14
	s8i	a3, sp, 15
	.loc 1 51 0
	l32i.n	a3, a2, 0
	bnez.n	a3, .L18
	l32r	a6, .LC2
	j	.L3
.L18:
	l32r	a6, .LC3
.L3:
.LVL7:
	.loc 1 55 0 discriminator 4
	movi.n	a3, 1
	s32i.n	a3, sp, 32
	.loc 1 57 0 discriminator 4
	l32i.n	a3, a2, 0
	bnez.n	a3, .L19
	.loc 1 57 0 is_stmt 0
	movi.n	a5, 0xb
	j	.L4
.L19:
	movi.n	a5, 7
.L4:
.LVL8:
	.loc 1 62 0 is_stmt 1 discriminator 4
	movi.n	a3, 0
	s32i.n	a3, sp, 16
	s32i.n	a3, sp, 20
	s32i.n	a3, sp, 24
	s32i.n	a3, sp, 28
	.loc 1 63 0 discriminator 4
	movi.n	a4, 2
	s8i	a4, sp, 17
	.loc 1 64 0 discriminator 4
	addi.n	a10, sp, 12
	call8	ipaddr_addr
.LVL9:
	s32i.n	a10, sp, 20
	.loc 1 65 0 discriminator 4
	extui	a10, a6, 0, 16
	call8	lwip_htons
.LVL10:
	s16i	a10, sp, 18
	.loc 1 67 0 discriminator 4
	addi.n	a11, a2, 13
	mov.n	a10, a3
	call8	esp_wifi_get_mac
.LVL11:
	.loc 1 69 0 discriminator 4
	movi.n	a10, 0x14
	call8	vTaskDelay
.LVL12:
	.loc 1 58 0 discriminator 4
	movi.n	a3, 1
	.loc 1 54 0 discriminator 4
	movi.n	a4, -1
	.loc 1 71 0 discriminator 4
	j	.L5
.LVL13:
.L16:
	.loc 1 73 0
	mov.n	a11, sp
	movi.n	a10, 0
	call8	tcpip_adapter_get_ip_info
.LVL14:
	.loc 1 74 0
	bnez.n	a10, .L6
	.loc 1 74 0 is_stmt 0 discriminator 1
	l32i.n	a8, sp, 0
	beqz.n	a8, .L6
	.loc 1 76 0 is_stmt 1
	l32i.n	a4, a2, 0
.LVL15:
	bnez.n	a4, .L7
	.loc 1 77 0
	l8ui	a6, sp, 0
	s8i	a6, a2, 19
	l8ui	a6, sp, 1
	s8i	a6, a2, 20
	l8ui	a6, sp, 2
	s8i	a6, a2, 21
	l8ui	a6, sp, 3
	s8i	a6, a2, 22
.L7:
.LVL16:
.LBB14:
.LBB15:
	.loc 2 593 0
	movi.n	a12, 0
	movi.n	a11, 2
	mov.n	a10, a11
.LVL17:
	call8	lwip_socket
.LVL18:
	mov.n	a4, a10
.LBE15:
.LBE14:
	.loc 1 82 0
	addi	a6, a10, -54
	movi.n	a8, 9
	bgeu	a8, a6, .L8
	.loc 1 83 0 discriminator 2
	call8	esp_log_timestamp
.LVL19:
	l32r	a11, .LC5
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC7
	movi.n	a10, 1
	call8	esp_log_write
.LVL20:
	.loc 1 84 0 discriminator 2
	j	.L9
.L8:
.LVL21:
.LBB16:
.LBB17:
	.loc 2 571 0
	movi.n	a14, 4
	addi	a13, sp, 32
.LVL22:
	movi.n	a12, 0x24
	l32r	a11, .LC8
	call8	lwip_setsockopt_r
.LVL23:
	j	.L10
.L14:
.LBE17:
.LBE16:
	.loc 1 91 0
	movi.n	a10, 0xa
	call8	vTaskDelay
.LVL24:
.LBB18:
.LBB19:
	.loc 2 591 0
	movi.n	a15, 0x10
	add.n	a14, sp, a15
	movi.n	a13, 0
	mov.n	a12, a5
	addi.n	a11, a2, 12
.LVL25:
	mov.n	a10, a4
	call8	lwip_sendto_r
.LVL26:
.LBE19:
.LBE18:
	.loc 1 94 0
	blti	a10, 1, .L11
	.loc 1 96 0
	addi.n	a8, a3, 1
	extui	a8, a8, 0, 8
.LVL27:
	movi.n	a9, 0x1d
	bgeu	a9, a3, .L12
	.loc 1 97 0
	l32i.n	a3, a2, 4
	beqz.n	a3, .L13
	.loc 1 98 0
	movi.n	a5, 1
.LVL28:
	s8i	a5, a3, 0
.L13:
	.loc 1 100 0
	l32i.n	a3, a2, 8
	beqz.n	a3, .L9
	.loc 1 101 0
	addi.n	a11, sp, 12
	movi.n	a10, 4
	callx8	a3
.LVL29:
	j	.L9
.LVL30:
.L11:
	.loc 1 107 0
	mov.n	a10, a4
	call8	sc_ack_send_get_errno
.LVL31:
	mov.n	a6, a10
.LVL32:
	.loc 1 108 0
	addi	a8, a10, -11
	bltui	a8, 2, .L20
	.loc 1 112 0 discriminator 2
	call8	esp_log_timestamp
.LVL33:
	l32r	a11, .LC5
	mov.n	a15, a6
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC10
	movi.n	a10, 1
	call8	esp_log_write
.LVL34:
	.loc 1 113 0 discriminator 2
	j	.L9
.L20:
	mov.n	a8, a3
.LVL35:
.L12:
	mov.n	a3, a8
.LVL36:
.L10:
	.loc 1 89 0
	l32r	a8, .LC11
	l8ui	a8, a8, 0
	bnez.n	a8, .L14
	j	.L5
.LVL37:
.L6:
	.loc 1 118 0
	movi.n	a10, 0xa
.LVL38:
	call8	vTaskDelay
.LVL39:
.L5:
	.loc 1 71 0
	l32r	a8, .LC11
	l8ui	a8, a8, 0
	bnez.n	a8, .L16
.LVL40:
.L9:
	.loc 1 123 0
	addi	a3, a4, -54
	movi.n	a5, 9
	bltu	a5, a3, .L17
	.loc 1 124 0
	mov.n	a10, a4
	call8	close
.LVL41:
.L17:
	.loc 1 126 0
	mov.n	a10, a2
	call8	free
.LVL42:
	.loc 1 127 0
	movi.n	a10, 0
	call8	vTaskDelete
.LVL43:
	retw.n
.LFE41:
	.size	sc_ack_send_task, .-sc_ack_send_task
	.section	.rodata.str1.4
	.align	4
.LC13:
	.string	"\033[0;31mE (%d) %s: Smart config ack parameter error\033[0m\n"
	.align	4
.LC15:
	.string	"\033[0;31mE (%d) %s: Smart config ack parameter malloc fail\033[0m\n"
	.align	4
.LC19:
	.string	"sc_ack_send_task"
	.align	4
.LC23:
	.string	"\033[0;31mE (%d) %s: Create sending smartconfig ACK task fail\033[0m\n"
	.section	.text.sc_ack_send,"ax",@progbits
	.literal_position
	.literal .LC12, .LC4
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.literal .LC17, s_sc_ack_send
	.literal .LC18, 2048
	.literal .LC20, .LC19
	.literal .LC21, sc_ack_send_task
	.literal .LC22, 2147483647
	.literal .LC24, .LC23
	.align	4
	.global	sc_ack_send
	.type	sc_ack_send, @function
sc_ack_send:
.LFB42:
	.loc 1 131 0
.LVL44:
	entry	sp, 48
.LCFI2:
.LVL45:
	.loc 1 134 0
	bnez.n	a2, .L22
	.loc 1 135 0 discriminator 2
	call8	esp_log_timestamp
.LVL46:
	l32r	a11, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC14
	movi.n	a10, 1
	call8	esp_log_write
.LVL47:
	.loc 1 136 0 discriminator 2
	retw.n
.L22:
	.loc 1 139 0
	movi.n	a10, 0x18
	call8	malloc
.LVL48:
	mov.n	a3, a10
.LVL49:
	.loc 1 140 0
	bnez.n	a10, .L24
	.loc 1 141 0 discriminator 2
	call8	esp_log_timestamp
.LVL50:
	l32r	a11, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC16
	movi.n	a10, 1
	call8	esp_log_write
.LVL51:
	.loc 1 142 0 discriminator 2
	retw.n
.L24:
	.loc 1 144 0
	movi.n	a12, 0x18
	mov.n	a11, a2
	call8	memcpy
.LVL52:
	.loc 1 146 0
	movi.n	a8, 1
	l32r	a2, .LC17
.LVL53:
	s8i	a8, a2, 0
.LVL54:
.LBB20:
.LBB21:
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/task.h"
	.loc 3 440 0
	l32r	a2, .LC22
	s32i.n	a2, sp, 0
	movi.n	a15, 0
	movi.n	a14, 2
	mov.n	a13, a3
	l32r	a12, .LC18
	l32r	a11, .LC20
	l32r	a10, .LC21
	call8	xTaskCreatePinnedToCore
.LVL55:
.LBE21:
.LBE20:
	.loc 1 148 0
	beqi	a10, 1, .L21
	.loc 1 149 0 discriminator 2
	call8	esp_log_timestamp
.LVL56:
	l32r	a11, .LC12
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC24
	movi.n	a10, 1
	call8	esp_log_write
.LVL57:
	.loc 1 150 0 discriminator 2
	mov.n	a10, a3
	call8	free
.LVL58:
.L21:
	retw.n
.LFE42:
	.size	sc_ack_send, .-sc_ack_send
	.section	.text.sc_ack_send_stop,"ax",@progbits
	.literal_position
	.literal .LC25, s_sc_ack_send
	.align	4
	.global	sc_ack_send_stop
	.type	sc_ack_send_stop, @function
sc_ack_send_stop:
.LFB43:
	.loc 1 155 0
	entry	sp, 32
.LCFI3:
	.loc 1 156 0
	movi.n	a9, 0
	l32r	a8, .LC25
	s8i	a9, a8, 0
	retw.n
.LFE43:
	.size	sc_ack_send_stop, .-sc_ack_send_stop
	.section	.bss.s_sc_ack_send,"aw",@nobits
	.type	s_sc_ack_send, @object
	.size	s_sc_ack_send, 1
s_sc_ack_send:
	.zero	1
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
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI0-.LFB40
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI1-.LFB41
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI2-.LFB42
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI3-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 4 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/projdefs.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/inet.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_interface.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_smartconfig.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/smartconfig_ack/include/smartconfig_ack.h"
	.file 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/def.h"
	.file 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_wifi.h"
	.file 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/unistd.h"
	.file 19 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc4f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0xc
	.4byte	.LASF124
	.4byte	.LASF125
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x4
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
	.byte	0x5
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
	.byte	0x5
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x5
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
	.byte	0x4
	.4byte	0xad
	.uleb128 0x7
	.4byte	0xa0
	.uleb128 0x8
	.4byte	0xa0
	.4byte	0xc2
	.uleb128 0x9
	.4byte	0x90
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x6
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe9
	.uleb128 0xa
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf0
	.uleb128 0xb
	.4byte	0xfb
	.uleb128 0xc
	.4byte	0x97
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x7
	.byte	0x4d
	.4byte	0xea
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x8
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x8
	.byte	0x70
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x8
	.byte	0x76
	.4byte	0xd8
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x3
	.byte	0x6e
	.4byte	0x97
	.uleb128 0x7
	.4byte	0xa7
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x4
	.byte	0x9
	.byte	0x33
	.4byte	0x157
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x9
	.byte	0x34
	.4byte	0xd8
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x9
	.byte	0x39
	.4byte	0x13e
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0xa
	.byte	0x37
	.4byte	0xd8
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x4
	.byte	0xa
	.byte	0x3a
	.4byte	0x186
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0xa
	.byte	0x3b
	.4byte	0x162
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x2
	.byte	0x3a
	.4byte	0xc2
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x2
	.byte	0x3f
	.4byte	0xcd
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x10
	.byte	0x2
	.byte	0x44
	.4byte	0x1e5
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x2
	.byte	0x45
	.4byte	0xc2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x2
	.byte	0x46
	.4byte	0x186
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x2
	.byte	0x47
	.4byte	0x191
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x2
	.byte	0x48
	.4byte	0x16d
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x2
	.byte	0x4a
	.4byte	0xb2
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x10
	.byte	0x2
	.byte	0x59
	.4byte	0x216
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x2
	.byte	0x5a
	.4byte	0xc2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x2
	.byte	0x5b
	.4byte	0x186
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x2
	.byte	0x5c
	.4byte	0x216
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0xa0
	.4byte	0x226
	.uleb128 0x9
	.4byte	0x90
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x2
	.byte	0x6c
	.4byte	0xd8
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.byte	0xc
	.byte	0x19
	.4byte	0x256
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc2
	.uleb128 0x8
	.4byte	0xc2
	.4byte	0x26c
	.uleb128 0x9
	.4byte	0x90
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	0xc2
	.4byte	0x27c
	.uleb128 0x9
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.byte	0xc
	.byte	0xb
	.byte	0x46
	.4byte	0x2a7
	.uleb128 0x12
	.string	"ip"
	.byte	0xb
	.byte	0x47
	.4byte	0x157
	.byte	0
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0xb
	.byte	0x48
	.4byte	0x157
	.byte	0x4
	.uleb128 0x12
	.string	"gw"
	.byte	0xb
	.byte	0x49
	.4byte	0x157
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0xb
	.byte	0x4a
	.4byte	0x27c
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.byte	0xb
	.byte	0x67
	.4byte	0x2d7
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.byte	0xd
	.byte	0x1f
	.4byte	0x308
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.byte	0xe
	.byte	0x1a
	.4byte	0x333
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0xe
	.byte	0x20
	.4byte	0x308
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xe
	.byte	0x33
	.4byte	0x349
	.uleb128 0x6
	.byte	0x4
	.4byte	0x34f
	.uleb128 0xb
	.4byte	0x35f
	.uleb128 0xc
	.4byte	0x333
	.uleb128 0xc
	.4byte	0x97
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.byte	0xf
	.byte	0x24
	.4byte	0x378
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xf
	.byte	0x27
	.4byte	0x35f
	.uleb128 0x11
	.byte	0xb
	.byte	0xf
	.byte	0x30
	.4byte	0x3af
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0xf
	.byte	0x31
	.4byte	0xc2
	.byte	0
	.uleb128 0x12
	.string	"mac"
	.byte	0xf
	.byte	0x32
	.4byte	0x25c
	.byte	0x1
	.uleb128 0x12
	.string	"ip"
	.byte	0xf
	.byte	0x33
	.4byte	0x26c
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x18
	.byte	0xf
	.byte	0x2c
	.4byte	0x3eb
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0xf
	.byte	0x2d
	.4byte	0x378
	.byte	0
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0xf
	.byte	0x2e
	.4byte	0x256
	.byte	0x4
	.uleb128 0x12
	.string	"cb"
	.byte	0xf
	.byte	0x2f
	.4byte	0x33e
	.byte	0x8
	.uleb128 0x12
	.string	"ctx"
	.byte	0xf
	.byte	0x34
	.4byte	0x383
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xf
	.byte	0x35
	.4byte	0x3af
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x23c
	.4byte	0x25
	.byte	0x3
	.4byte	0x442
	.uleb128 0x14
	.string	"s"
	.byte	0x2
	.2byte	0x23c
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x23c
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x23c
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x23c
	.4byte	0x97
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x2
	.2byte	0x23c
	.4byte	0x442
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x226
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x250
	.4byte	0x25
	.byte	0x3
	.4byte	0x47e
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x2
	.2byte	0x250
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x2
	.2byte	0x250
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x250
	.4byte	0x25
	.byte	0
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x23a
	.4byte	0x25
	.byte	0x3
	.4byte	0x4ca
	.uleb128 0x14
	.string	"s"
	.byte	0x2
	.2byte	0x23a
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x23a
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x23a
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x23a
	.4byte	0xe3
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x2
	.2byte	0x23a
	.4byte	0x226
	.byte	0
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x24e
	.4byte	0x25
	.byte	0x3
	.4byte	0x521
	.uleb128 0x14
	.string	"s"
	.byte	0x2
	.2byte	0x24e
	.4byte	0x25
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x24e
	.4byte	0xe3
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x24e
	.4byte	0x2c
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x2
	.2byte	0x24e
	.4byte	0x25
	.uleb128 0x14
	.string	"to"
	.byte	0x2
	.2byte	0x24e
	.4byte	0x521
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x24e
	.4byte	0x226
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x527
	.uleb128 0x7
	.4byte	0x1e5
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x3
	.2byte	0x1b0
	.4byte	0x10d
	.byte	0x3
	.4byte	0x586
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0x3
	.2byte	0x1b1
	.4byte	0xfb
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0x3
	.2byte	0x1b2
	.4byte	0x139
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x3
	.2byte	0x1b3
	.4byte	0x586
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x3
	.2byte	0x1b4
	.4byte	0x58b
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x3
	.2byte	0x1b5
	.4byte	0x118
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x3
	.2byte	0x1b6
	.4byte	0x596
	.byte	0
	.uleb128 0x7
	.4byte	0xd8
	.uleb128 0x7
	.4byte	0x97
	.uleb128 0x6
	.byte	0x4
	.4byte	0x12e
	.uleb128 0x7
	.4byte	0x590
	.uleb128 0x16
	.4byte	.LASF126
	.byte	0x1
	.byte	0x23
	.4byte	0x25
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x642
	.uleb128 0x17
	.string	"fd"
	.byte	0x1
	.byte	0x23
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x1
	.byte	0x25
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.4byte	.LASF77
	.byte	0x1
	.byte	0x26
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.4byte	0x3f6
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x28
	.uleb128 0x1a
	.4byte	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x9f
	.uleb128 0x1b
	.4byte	0x429
	.4byte	.LLST1
	.uleb128 0x1c
	.4byte	0x41d
	.2byte	0x1007
	.uleb128 0x1c
	.4byte	0x411
	.2byte	0xfff
	.uleb128 0x1b
	.4byte	0x407
	.4byte	.LLST2
	.uleb128 0x1d
	.4byte	.LVL3
	.4byte	0xb90
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfff
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1007
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0x1
	.byte	0x2d
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9c1
	.uleb128 0x20
	.4byte	.LASF92
	.byte	0x1
	.byte	0x2d
	.4byte	0x97
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.string	"ack"
	.byte	0x1
	.byte	0x2f
	.4byte	0x9c1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x1
	.byte	0x30
	.4byte	0x2a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x1
	.byte	0x31
	.4byte	0x26c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x22
	.4byte	.LASF98
	.byte	0x1
	.byte	0x33
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x1
	.byte	0x34
	.4byte	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.4byte	.LASF100
	.byte	0x1
	.byte	0x35
	.4byte	0x226
	.byte	0x10
	.uleb128 0x22
	.4byte	.LASF101
	.byte	0x1
	.byte	0x36
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x1
	.byte	0x37
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.4byte	.LASF128
	.byte	0x1
	.byte	0x38
	.4byte	0x25
	.uleb128 0x22
	.4byte	.LASF103
	.byte	0x1
	.byte	0x39
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x22
	.4byte	.LASF104
	.byte	0x1
	.byte	0x3a
	.4byte	0xc2
	.4byte	.LLST6
	.uleb128 0x25
	.string	"err"
	.byte	0x1
	.byte	0x3b
	.4byte	0x25
	.4byte	.LLST7
	.uleb128 0x25
	.string	"ret"
	.byte	0x1
	.byte	0x3c
	.4byte	0x25
	.4byte	.LLST8
	.uleb128 0x26
	.4byte	.LASF129
	.byte	0x1
	.byte	0x7a
	.4byte	.L9
	.uleb128 0x27
	.4byte	0x448
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.byte	0x51
	.4byte	0x76f
	.uleb128 0x1b
	.4byte	0x471
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	0x465
	.4byte	.LLST10
	.uleb128 0x1b
	.4byte	0x459
	.4byte	.LLST10
	.uleb128 0x1d
	.4byte	.LVL18
	.4byte	0xb9c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0x47e
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0x57
	.4byte	0x7d8
	.uleb128 0x1b
	.4byte	0x4bd
	.4byte	.LLST12
	.uleb128 0x1b
	.4byte	0x4b1
	.4byte	.LLST13
	.uleb128 0x1b
	.4byte	0x4a5
	.4byte	.LLST14
	.uleb128 0x1b
	.4byte	0x499
	.4byte	.LLST15
	.uleb128 0x1b
	.4byte	0x48f
	.4byte	.LLST16
	.uleb128 0x1d
	.4byte	.LVL23
	.4byte	0xba8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfff
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0x4ca
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0x5d
	.4byte	0x84e
	.uleb128 0x1b
	.4byte	0x514
	.4byte	.LLST17
	.uleb128 0x1b
	.4byte	0x509
	.4byte	.LLST18
	.uleb128 0x1b
	.4byte	0x4fd
	.4byte	.LLST19
	.uleb128 0x1b
	.4byte	0x4f1
	.4byte	.LLST20
	.uleb128 0x1b
	.4byte	0x4e5
	.4byte	.LLST21
	.uleb128 0x1b
	.4byte	0x4db
	.4byte	.LLST22
	.uleb128 0x1d
	.4byte	.LVL26
	.4byte	0xbb4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 12
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL9
	.4byte	0xbc0
	.4byte	0x863
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x28
	.4byte	.LVL10
	.4byte	0xbcb
	.4byte	0x87b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x28
	.4byte	.LVL11
	.4byte	0xbd6
	.4byte	0x895
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 13
	.byte	0
	.uleb128 0x28
	.4byte	.LVL12
	.4byte	0xbe2
	.4byte	0x8a8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x28
	.4byte	.LVL14
	.4byte	0xbee
	.4byte	0x8c2
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x29
	.4byte	.LVL19
	.4byte	0xbfa
	.uleb128 0x28
	.4byte	.LVL20
	.4byte	0xc05
	.4byte	0x8f9
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x28
	.4byte	.LVL24
	.4byte	0xbe2
	.4byte	0x90c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL29
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x925
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x28
	.4byte	.LVL31
	.4byte	0x59b
	.4byte	0x939
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL33
	.4byte	0xbfa
	.uleb128 0x28
	.4byte	.LVL34
	.4byte	0xc05
	.4byte	0x976
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL39
	.4byte	0xbe2
	.4byte	0x989
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x28
	.4byte	.LVL41
	.4byte	0xc10
	.4byte	0x99d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL42
	.4byte	0xc1b
	.4byte	0x9b1
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL43
	.4byte	0xc26
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3eb
	.uleb128 0x2b
	.4byte	.LASF130
	.byte	0x1
	.byte	0x82
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5c
	.uleb128 0x2c
	.4byte	.LASF105
	.byte	0x1
	.byte	0x82
	.4byte	0x9c1
	.4byte	.LLST23
	.uleb128 0x25
	.string	"ack"
	.byte	0x1
	.byte	0x84
	.4byte	0x9c1
	.4byte	.LLST24
	.uleb128 0x27
	.4byte	0x52c
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0x94
	.4byte	0xa7a
	.uleb128 0x2d
	.4byte	0x579
	.byte	0
	.uleb128 0x2d
	.4byte	0x56d
	.byte	0x2
	.uleb128 0x1a
	.4byte	0x561
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	0x555
	.2byte	0x800
	.uleb128 0x1a
	.4byte	0x549
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC19
	.byte	0x9f
	.uleb128 0x1a
	.4byte	0x53d
	.uleb128 0x6
	.byte	0x3
	.4byte	sc_ack_send_task
	.byte	0x9f
	.uleb128 0x1d
	.4byte	.LVL55
	.4byte	0xc32
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	sc_ack_send_task
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x800
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL46
	.4byte	0xbfa
	.uleb128 0x28
	.4byte	.LVL47
	.4byte	0xc05
	.4byte	0xab1
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x28
	.4byte	.LVL48
	.4byte	0xc3e
	.4byte	0xac4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x29
	.4byte	.LVL50
	.4byte	0xbfa
	.uleb128 0x28
	.4byte	.LVL51
	.4byte	0xc05
	.4byte	0xafb
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x28
	.4byte	.LVL52
	.4byte	0xc49
	.4byte	0xb14
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x29
	.4byte	.LVL56
	.4byte	0xbfa
	.uleb128 0x28
	.4byte	.LVL57
	.4byte	0xc05
	.4byte	0xb4b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL58
	.4byte	0xc1b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF131
	.byte	0x1
	.byte	0x9a
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.string	"TAG"
	.byte	0x1
	.byte	0x1e
	.4byte	0x139
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x1
	.byte	0x21
	.4byte	0x106
	.uleb128 0x5
	.byte	0x3
	.4byte	s_sc_ack_send
	.uleb128 0x2f
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0x2
	.2byte	0x21a
	.uleb128 0x2f
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x2
	.2byte	0x228
	.uleb128 0x2f
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x21b
	.uleb128 0x2f
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x2
	.2byte	0x226
	.uleb128 0x30
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x9
	.byte	0xd7
	.uleb128 0x30
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0x10
	.byte	0x55
	.uleb128 0x2f
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x11
	.2byte	0x288
	.uleb128 0x2f
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0x3
	.2byte	0x32b
	.uleb128 0x2f
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0xb
	.2byte	0x122
	.uleb128 0x30
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0xd
	.byte	0x57
	.uleb128 0x30
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0xd
	.byte	0x6b
	.uleb128 0x30
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0x12
	.byte	0x1e
	.uleb128 0x30
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0x13
	.byte	0x5a
	.uleb128 0x2f
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0x3
	.2byte	0x2fb
	.uleb128 0x2f
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x3
	.2byte	0x151
	.uleb128 0x30
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0x13
	.byte	0x65
	.uleb128 0x31
	.4byte	.LASF132
	.4byte	.LASF132
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL3-1
	.4byte	.LFE40
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL37
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL30
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL30
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL21
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL23-1
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL21
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x8
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL21
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xa
	.2byte	0xfff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL21
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL24
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL24
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL24
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL30
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x72
	.sleb128 12
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26-1
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x72
	.sleb128 12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL24
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL44
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x53
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
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF95:
	.string	"sock_errno"
.LASF122:
	.string	"malloc"
.LASF3:
	.string	"size_t"
.LASF36:
	.string	"sin_addr"
.LASF52:
	.string	"TCPIP_ADAPTER_IF_MAX"
.LASF131:
	.string	"sc_ack_send_stop"
.LASF109:
	.string	"lwip_setsockopt_r"
.LASF64:
	.string	"smartconfig_status_t"
.LASF118:
	.string	"close"
.LASF4:
	.string	"__uint8_t"
.LASF71:
	.string	"type"
.LASF73:
	.string	"sc_ack_t"
.LASF10:
	.string	"long long unsigned int"
.LASF25:
	.string	"in_addr_t"
.LASF28:
	.string	"addr"
.LASF75:
	.string	"optname"
.LASF115:
	.string	"tcpip_adapter_get_ip_info"
.LASF119:
	.string	"free"
.LASF78:
	.string	"getsockopt"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF62:
	.string	"SC_STATUS_LINK"
.LASF42:
	.string	"socklen_t"
.LASF114:
	.string	"vTaskDelay"
.LASF121:
	.string	"xTaskCreatePinnedToCore"
.LASF11:
	.string	"long int"
.LASF26:
	.string	"ip4_addr"
.LASF117:
	.string	"esp_log_write"
.LASF23:
	.string	"TaskHandle_t"
.LASF132:
	.string	"memcpy"
.LASF128:
	.string	"sendlen"
.LASF89:
	.string	"pvTaskCode"
.LASF16:
	.string	"uint16_t"
.LASF20:
	.string	"BaseType_t"
.LASF47:
	.string	"netmask"
.LASF61:
	.string	"SC_STATUS_GETTING_SSID_PSWD"
.LASF91:
	.string	"usStackDepth"
.LASF8:
	.string	"__uint32_t"
.LASF37:
	.string	"sin_zero"
.LASF0:
	.string	"unsigned int"
.LASF29:
	.string	"s_addr"
.LASF113:
	.string	"esp_wifi_get_mac"
.LASF103:
	.string	"ack_len"
.LASF13:
	.string	"long unsigned int"
.LASF130:
	.string	"sc_ack_send"
.LASF92:
	.string	"pvParameters"
.LASF100:
	.string	"sin_size"
.LASF74:
	.string	"level"
.LASF85:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF49:
	.string	"TCPIP_ADAPTER_IF_STA"
.LASF68:
	.string	"sc_ack_type_t"
.LASF87:
	.string	"tolen"
.LASF129:
	.string	"_end"
.LASF48:
	.string	"tcpip_adapter_ip_info_t"
.LASF66:
	.string	"SC_ACK_TYPE_ESPTOUCH"
.LASF31:
	.string	"in_port_t"
.LASF112:
	.string	"lwip_htons"
.LASF70:
	.string	"sc_ack"
.LASF102:
	.string	"optval"
.LASF104:
	.string	"packet_count"
.LASF56:
	.string	"ESP_LOG_INFO"
.LASF39:
	.string	"sa_len"
.LASF34:
	.string	"sin_family"
.LASF106:
	.string	"s_sc_ack_send"
.LASF12:
	.string	"sizetype"
.LASF126:
	.string	"sc_ack_send_get_errno"
.LASF88:
	.string	"xTaskCreate"
.LASF22:
	.string	"TickType_t"
.LASF76:
	.string	"opval"
.LASF105:
	.string	"param"
.LASF101:
	.string	"send_sock"
.LASF33:
	.string	"sin_len"
.LASF107:
	.string	"lwip_getsockopt_r"
.LASF57:
	.string	"ESP_LOG_DEBUG"
.LASF35:
	.string	"sin_port"
.LASF40:
	.string	"sa_family"
.LASF69:
	.string	"token"
.LASF94:
	.string	"pvCreatedTask"
.LASF81:
	.string	"protocol"
.LASF19:
	.string	"_Bool"
.LASF5:
	.string	"unsigned char"
.LASF96:
	.string	"local_ip"
.LASF45:
	.string	"ESP_IF_ETH"
.LASF123:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF6:
	.string	"short int"
.LASF116:
	.string	"esp_log_timestamp"
.LASF54:
	.string	"ESP_LOG_ERROR"
.LASF18:
	.string	"TaskFunction_t"
.LASF50:
	.string	"TCPIP_ADAPTER_IF_AP"
.LASF53:
	.string	"ESP_LOG_NONE"
.LASF17:
	.string	"uint32_t"
.LASF46:
	.string	"ESP_IF_MAX"
.LASF59:
	.string	"SC_STATUS_WAIT"
.LASF108:
	.string	"lwip_socket"
.LASF14:
	.string	"char"
.LASF58:
	.string	"ESP_LOG_VERBOSE"
.LASF43:
	.string	"ESP_IF_WIFI_STA"
.LASF60:
	.string	"SC_STATUS_FIND_CHANNEL"
.LASF84:
	.string	"dataptr"
.LASF83:
	.string	"sendto"
.LASF7:
	.string	"__uint16_t"
.LASF120:
	.string	"vTaskDelete"
.LASF125:
	.string	"/home/raphael/rtone/lcd/build/smartconfig_ack"
.LASF67:
	.string	"SC_ACK_TYPE_AIRKISS"
.LASF44:
	.string	"ESP_IF_WIFI_AP"
.LASF77:
	.string	"optlen"
.LASF99:
	.string	"server_addr"
.LASF124:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/smartconfig_ack/smartconfig_ack.c"
.LASF24:
	.string	"ip4_addr_t"
.LASF30:
	.string	"sa_family_t"
.LASF72:
	.string	"link_flag"
.LASF63:
	.string	"SC_STATUS_LINK_OVER"
.LASF55:
	.string	"ESP_LOG_WARN"
.LASF98:
	.string	"remote_port"
.LASF127:
	.string	"sc_ack_send_task"
.LASF38:
	.string	"sockaddr"
.LASF82:
	.string	"setsockopt"
.LASF32:
	.string	"sockaddr_in"
.LASF15:
	.string	"uint8_t"
.LASF110:
	.string	"lwip_sendto_r"
.LASF65:
	.string	"sc_callback_t"
.LASF86:
	.string	"flags"
.LASF80:
	.string	"domain"
.LASF41:
	.string	"sa_data"
.LASF79:
	.string	"socket"
.LASF51:
	.string	"TCPIP_ADAPTER_IF_ETH"
.LASF93:
	.string	"uxPriority"
.LASF111:
	.string	"ipaddr_addr"
.LASF90:
	.string	"pcName"
.LASF97:
	.string	"remote_ip"
.LASF21:
	.string	"UBaseType_t"
.LASF27:
	.string	"in_addr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
