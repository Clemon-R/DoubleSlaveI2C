	.file	"security0.c"
	.text
.Ltext0:
	.section	.text.sec0_session_setup_cleanup,"ax",@progbits
	.align	4
	.type	sec0_session_setup_cleanup, @function
sec0_session_setup_cleanup:
.LFB1:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/src/security/security0.c"
	.loc 1 58 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 59 0
	beqz.n	a3, .L1
	.loc 1 63 0
	l32i.n	a8, a3, 20
	l32i.n	a10, a8, 20
	call8	free
.LVL1:
	.loc 1 64 0
	l32i.n	a10, a3, 20
	call8	free
.LVL2:
.L1:
	retw.n
.LFE1:
	.size	sec0_session_setup_cleanup, .-sec0_session_setup_cleanup
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"security0"
	.align	4
.LC2:
	.string	"\033[0;31mE (%d) %s: Error allocating response\033[0m\n"
	.section	.text.sec0_session_setup,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.align	4
	.type	sec0_session_setup, @function
sec0_session_setup:
.LFB0:
	.loc 1 34 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 35 0
	movi.n	a10, 0x18
	call8	malloc
.LVL4:
	mov.n	a3, a10
.LVL5:
	.loc 1 36 0
	movi.n	a10, 0x10
	call8	malloc
.LVL6:
	mov.n	a5, a10
.LVL7:
	.loc 1 37 0
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a3
	movnez	a8, a10, a5
	or	a8, a8, a9
	beq	a8, a10, .L4
	.loc 1 38 0 discriminator 2
	call8	esp_log_timestamp
.LVL8:
	l32r	a11, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC3
	movi.n	a10, 1
	call8	esp_log_write
.LVL9:
	.loc 1 39 0 discriminator 2
	mov.n	a10, a3
	call8	free
.LVL10:
	.loc 1 40 0 discriminator 2
	mov.n	a10, a5
	call8	free
.LVL11:
	.loc 1 41 0 discriminator 2
	movi	a2, 0x101
.LVL12:
	retw.n
.LVL13:
.L4:
	.loc 1 43 0
	mov.n	a10, a3
	call8	sec0_payload__init
.LVL14:
	.loc 1 44 0
	mov.n	a10, a5
	call8	s0_session_resp__init
.LVL15:
	.loc 1 45 0
	movi.n	a2, 0
.LVL16:
	s32i.n	a2, a5, 12
	.loc 1 47 0
	movi.n	a8, 1
	s32i.n	a8, a3, 12
	.loc 1 48 0
	movi.n	a8, 0x15
	s32i.n	a8, a3, 16
	.loc 1 49 0
	s32i.n	a5, a3, 20
	.loc 1 51 0
	movi.n	a5, 0xa
.LVL17:
	s32i.n	a5, a4, 16
.LVL18:
	.loc 1 52 0
	s32i.n	a3, a4, 20
	.loc 1 55 0
	retw.n
.LFE0:
	.size	sec0_session_setup, .-sec0_session_setup
	.section	.rodata.str1.4
	.align	4
.LC5:
	.string	"\033[0;31mE (%d) %s: Unable to unpack setup_req\033[0m\n"
	.align	4
.LC7:
	.string	"\033[0;31mE (%d) %s: Security version mismatch. Closing connection\033[0m\n"
	.align	4
.LC9:
	.string	"\033[0;31mE (%d) %s: Session setup error %d\033[0m\n"
	.align	4
.LC11:
	.string	"\033[0;31mE (%d) %s: System out of memory\033[0m\n"
	.section	.text.sec0_req_handler,"ax",@progbits
	.literal_position
	.literal .LC4, .LC0
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.literal .LC12, .LC11
	.align	4
	.type	sec0_req_handler, @function
sec0_req_handler:
.LFB2:
	.loc 1 72 0
.LVL19:
	entry	sp, 64
.LCFI2:
	.loc 1 77 0
	mov.n	a12, a4
	mov.n	a11, a5
	movi.n	a10, 0
	call8	session_data__unpack
.LVL20:
	mov.n	a4, a10
.LVL21:
	.loc 1 78 0
	bnez.n	a10, .L7
	.loc 1 79 0 discriminator 2
	call8	esp_log_timestamp
.LVL22:
	l32r	a11, .LC4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC6
	movi.n	a10, 1
	call8	esp_log_write
.LVL23:
	.loc 1 80 0 discriminator 2
	movi	a2, 0x102
.LVL24:
	retw.n
.LVL25:
.L7:
	.loc 1 82 0
	l32i.n	a8, a10, 12
	beqz.n	a8, .L9
	.loc 1 83 0 discriminator 2
	call8	esp_log_timestamp
.LVL26:
	l32r	a11, .LC4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC8
	movi.n	a10, 1
	call8	esp_log_write
.LVL27:
	.loc 1 84 0 discriminator 2
	movi.n	a11, 0
	mov.n	a10, a4
	call8	session_data__free_unpacked
.LVL28:
	.loc 1 85 0 discriminator 2
	movi	a2, 0x102
.LVL29:
	retw.n
.LVL30:
.L9:
	.loc 1 88 0
	mov.n	a10, sp
	call8	session_data__init
.LVL31:
	.loc 1 89 0
	mov.n	a13, a2
	mov.n	a12, sp
	mov.n	a11, a4
	mov.n	a10, a3
	call8	sec0_session_setup
.LVL32:
	mov.n	a2, a10
.LVL33:
	.loc 1 90 0
	beqz.n	a10, .L10
	.loc 1 91 0 discriminator 2
	call8	esp_log_timestamp
.LVL34:
	l32r	a11, .LC4
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC10
	movi.n	a10, 1
	call8	esp_log_write
.LVL35:
	.loc 1 92 0 discriminator 2
	movi.n	a11, 0
	mov.n	a10, a4
	call8	session_data__free_unpacked
.LVL36:
	.loc 1 93 0 discriminator 2
	movi.n	a2, -1
.LVL37:
	retw.n
.LVL38:
.L10:
	.loc 1 96 0
	l32i.n	a2, a4, 12
.LVL39:
	s32i.n	a2, sp, 12
	.loc 1 97 0
	movi.n	a11, 0
	mov.n	a10, a4
.LVL40:
	call8	session_data__free_unpacked
.LVL41:
	.loc 1 99 0
	mov.n	a10, sp
	call8	session_data__get_packed_size
.LVL42:
	s32i.n	a10, a7, 0
	.loc 1 100 0
	call8	malloc
.LVL43:
	s32i.n	a10, a6, 0
	.loc 1 101 0
	bnez.n	a10, .L11
	.loc 1 102 0 discriminator 2
	call8	esp_log_timestamp
.LVL44:
	l32r	a11, .LC4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC12
	movi.n	a10, 1
	call8	esp_log_write
.LVL45:
	.loc 1 103 0 discriminator 2
	movi	a2, 0x101
	retw.n
.L11:
	.loc 1 105 0
	mov.n	a11, a10
	mov.n	a10, sp
	call8	session_data__pack
.LVL46:
	.loc 1 107 0
	mov.n	a11, sp
	mov.n	a10, a3
	call8	sec0_session_setup_cleanup
.LVL47:
	.loc 1 108 0
	movi.n	a2, 0
	.loc 1 109 0
	retw.n
.LFE2:
	.size	sec0_req_handler, .-sec0_req_handler
	.global	protocomm_security0
	.section	.rodata.protocomm_security0,"a",@progbits
	.align	4
	.type	protocomm_security0, @object
	.size	protocomm_security0, 32
protocomm_security0:
	.word	0
	.zero	16
	.word	sec0_req_handler
	.zero	8
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI1-.LFB0
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
	.uleb128 0x40
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/_types.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/include/security/protocomm_security.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protobuf-c/protobuf-c/protobuf-c/protobuf-c.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/proto-c/constants.pb-c.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/proto-c/sec0.pb-c.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/proto-c/sec1.pb-c.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/proto-c/session.pb-c.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf03
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF200
	.byte	0xc
	.4byte	.LASF201
	.4byte	.LASF202
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x12
	.4byte	0x37
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
	.byte	0x2
	.byte	0x16
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x62
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0xd8
	.4byte	0x74
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x37
	.4byte	0x62
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x7
	.4byte	0xb6
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0xcb
	.4byte	0x9d
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x8
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0x18
	.4byte	0xf0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0x9
	.byte	0x1f
	.4byte	0x142
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x8
	.byte	0x8
	.byte	0x1a
	.4byte	0x167
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x8
	.byte	0x1e
	.4byte	0x167
	.byte	0
	.uleb128 0xd
	.string	"len"
	.byte	0x8
	.byte	0x23
	.4byte	0xe5
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x16d
	.uleb128 0x7
	.4byte	0xda
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0x24
	.4byte	0x142
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x20
	.byte	0x8
	.byte	0x2f
	.4byte	0x1ea
	.uleb128 0xd
	.string	"ver"
	.byte	0x8
	.byte	0x33
	.4byte	0x62
	.byte	0
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x8
	.byte	0x39
	.4byte	0x1f5
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x8
	.byte	0x3e
	.4byte	0x1f5
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x8
	.byte	0x43
	.4byte	0x20a
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x8
	.byte	0x48
	.4byte	0x20a
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x8
	.byte	0x4e
	.4byte	0x25a
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x8
	.byte	0x57
	.4byte	0x283
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x8
	.byte	0x5e
	.4byte	0x283
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	0x106
	.4byte	0x1f5
	.uleb128 0xf
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ea
	.uleb128 0x10
	.4byte	0x106
	.4byte	0x20a
	.uleb128 0x11
	.4byte	0xfb
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1fb
	.uleb128 0x10
	.4byte	0x106
	.4byte	0x23d
	.uleb128 0x11
	.4byte	0x23d
	.uleb128 0x11
	.4byte	0xfb
	.uleb128 0x11
	.4byte	0x167
	.uleb128 0x11
	.4byte	0xc8
	.uleb128 0x11
	.4byte	0x248
	.uleb128 0x11
	.4byte	0x254
	.uleb128 0x11
	.4byte	0x94
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x243
	.uleb128 0x7
	.4byte	0x172
	.uleb128 0x6
	.byte	0x4
	.4byte	0x24e
	.uleb128 0x6
	.byte	0x4
	.4byte	0xda
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x210
	.uleb128 0x10
	.4byte	0x106
	.4byte	0x283
	.uleb128 0x11
	.4byte	0xfb
	.uleb128 0x11
	.4byte	0x167
	.uleb128 0x11
	.4byte	0xc8
	.uleb128 0x11
	.4byte	0x24e
	.uleb128 0x11
	.4byte	0x254
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x260
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x8
	.byte	0x61
	.4byte	0x17d
	.uleb128 0x12
	.byte	0x4
	.4byte	0x74
	.byte	0xa
	.2byte	0x112
	.4byte	0x2ba
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0xa
	.2byte	0x128
	.4byte	0x294
	.uleb128 0x12
	.byte	0x4
	.4byte	0x74
	.byte	0xa
	.2byte	0x132
	.4byte	0x33a
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0xa
	.2byte	0x144
	.4byte	0x2c6
	.uleb128 0x12
	.byte	0x4
	.4byte	0x74
	.byte	0xa
	.2byte	0x14e
	.4byte	0x36c
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0xa
	.2byte	0x154
	.4byte	0x346
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0xa
	.2byte	0x167
	.4byte	0x384
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x8
	.byte	0xa
	.2byte	0x192
	.4byte	0x3ac
	.uleb128 0x15
	.string	"len"
	.byte	0xa
	.2byte	0x193
	.4byte	0x89
	.byte	0
	.uleb128 0x16
	.4byte	.LASF29
	.byte	0xa
	.2byte	0x194
	.4byte	0x24e
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0xa
	.2byte	0x16d
	.4byte	0x3b8
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x30
	.byte	0xa
	.2byte	0x230
	.4byte	0x461
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0xa
	.2byte	0x232
	.4byte	0xbd
	.byte	0
	.uleb128 0x15
	.string	"id"
	.byte	0xa
	.2byte	0x235
	.4byte	0xfb
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0xa
	.2byte	0x238
	.4byte	0x2ba
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF73
	.byte	0xa
	.2byte	0x23b
	.4byte	0x33a
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF74
	.byte	0xa
	.2byte	0x242
	.4byte	0x74
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF75
	.byte	0xa
	.2byte	0x248
	.4byte	0x74
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0xa
	.2byte	0x255
	.4byte	0xd3
	.byte	0x18
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0xa
	.2byte	0x258
	.4byte	0xd3
	.byte	0x1c
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0xa
	.2byte	0x25e
	.4byte	0xfb
	.byte	0x20
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0xa
	.2byte	0x261
	.4byte	0x74
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0xa
	.2byte	0x263
	.4byte	0x94
	.byte	0x28
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0xa
	.2byte	0x265
	.4byte	0x94
	.byte	0x2c
	.byte	0
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0xa
	.2byte	0x16e
	.4byte	0x46d
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x8
	.byte	0xa
	.2byte	0x270
	.4byte	0x495
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0xa
	.2byte	0x271
	.4byte	0x62
	.byte	0
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0xa
	.2byte	0x272
	.4byte	0x74
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0xa
	.2byte	0x16f
	.4byte	0x4a1
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0xc
	.byte	0xa
	.2byte	0x289
	.4byte	0x4d6
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0xa
	.2byte	0x28b
	.4byte	0x62f
	.byte	0
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0xa
	.2byte	0x28d
	.4byte	0x74
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF87
	.byte	0xa
	.2byte	0x28f
	.4byte	0x63a
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0xa
	.2byte	0x170
	.4byte	0x4e2
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0x3c
	.byte	0xa
	.2byte	0x295
	.4byte	0x5b3
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0xa
	.2byte	0x297
	.4byte	0xfb
	.byte	0
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0xa
	.2byte	0x29a
	.4byte	0xbd
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0xa
	.2byte	0x29c
	.4byte	0xbd
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0xa
	.2byte	0x29e
	.4byte	0xbd
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0xa
	.2byte	0x2a0
	.4byte	0xbd
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0xa
	.2byte	0x2a6
	.4byte	0x89
	.byte	0x14
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0xa
	.2byte	0x2a9
	.4byte	0x74
	.byte	0x18
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0xa
	.2byte	0x2ab
	.4byte	0x640
	.byte	0x1c
	.uleb128 0x16
	.4byte	.LASF96
	.byte	0xa
	.2byte	0x2ad
	.4byte	0x64b
	.byte	0x20
	.uleb128 0x16
	.4byte	.LASF97
	.byte	0xa
	.2byte	0x2b0
	.4byte	0x74
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF98
	.byte	0xa
	.2byte	0x2b2
	.4byte	0x624
	.byte	0x28
	.uleb128 0x16
	.4byte	.LASF99
	.byte	0xa
	.2byte	0x2b5
	.4byte	0x601
	.byte	0x2c
	.uleb128 0x16
	.4byte	.LASF100
	.byte	0xa
	.2byte	0x2b8
	.4byte	0x94
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0xa
	.2byte	0x2ba
	.4byte	0x94
	.byte	0x34
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0xa
	.2byte	0x2bc
	.4byte	0x94
	.byte	0x38
	.byte	0
	.uleb128 0x13
	.4byte	.LASF101
	.byte	0xa
	.2byte	0x171
	.4byte	0x5bf
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x10
	.byte	0xa
	.2byte	0x2c2
	.4byte	0x601
	.uleb128 0x15
	.string	"tag"
	.byte	0xa
	.2byte	0x2c4
	.4byte	0xfb
	.byte	0
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0xa
	.2byte	0x2c6
	.4byte	0x36c
	.byte	0x4
	.uleb128 0x15
	.string	"len"
	.byte	0xa
	.2byte	0x2c8
	.4byte	0x89
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF29
	.byte	0xa
	.2byte	0x2ca
	.4byte	0x24e
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.4byte	.LASF103
	.byte	0xa
	.2byte	0x17a
	.4byte	0x60d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x613
	.uleb128 0x17
	.4byte	0x61e
	.uleb128 0x11
	.4byte	0x61e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x495
	.uleb128 0x6
	.byte	0x4
	.4byte	0x62a
	.uleb128 0x7
	.4byte	0x461
	.uleb128 0x6
	.byte	0x4
	.4byte	0x635
	.uleb128 0x7
	.4byte	0x4d6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5b3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x646
	.uleb128 0x7
	.4byte	0x3ac
	.uleb128 0x6
	.byte	0x4
	.4byte	0x651
	.uleb128 0x7
	.4byte	0x74
	.uleb128 0x18
	.4byte	.LASF123
	.byte	0x4
	.4byte	0x74
	.byte	0xb
	.byte	0x1a
	.4byte	0x6a0
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF106
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF107
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF108
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF109
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF111
	.byte	0x7
	.uleb128 0x19
	.4byte	.LASF112
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0xb
	.byte	0x24
	.4byte	0x656
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0xc
	.byte	0x13
	.4byte	0x6b6
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0xc
	.byte	0xc
	.byte	0x28
	.4byte	0x6cf
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0xc
	.byte	0x2a
	.4byte	0x495
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF117
	.byte	0xc
	.byte	0x14
	.4byte	0x6da
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x10
	.byte	0xc
	.byte	0x34
	.4byte	0x6ff
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0xc
	.byte	0x36
	.4byte	0x495
	.byte	0
	.uleb128 0xc
	.4byte	.LASF119
	.byte	0xc
	.byte	0x37
	.4byte	0x6a0
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF120
	.byte	0xc
	.byte	0x15
	.4byte	0x70a
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0x18
	.byte	0xc
	.byte	0x48
	.4byte	0x741
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0xc
	.byte	0x4a
	.4byte	0x495
	.byte	0
	.uleb128 0xd
	.string	"msg"
	.byte	0xc
	.byte	0x4e
	.4byte	0x767
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF122
	.byte	0xc
	.byte	0x4f
	.4byte	0x79a
	.byte	0x10
	.uleb128 0x1a
	.4byte	0x7a5
	.byte	0x14
	.byte	0
	.uleb128 0x18
	.4byte	.LASF124
	.byte	0x4
	.4byte	0x74
	.byte	0xc
	.byte	0x1d
	.4byte	0x767
	.uleb128 0xa
	.4byte	.LASF125
	.byte	0
	.uleb128 0xa
	.4byte	.LASF126
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF127
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0xc
	.byte	0x21
	.4byte	0x741
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0xc
	.byte	0x3e
	.4byte	0x79a
	.uleb128 0xa
	.4byte	.LASF129
	.byte	0
	.uleb128 0xa
	.4byte	.LASF130
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF131
	.byte	0x15
	.uleb128 0x19
	.4byte	.LASF132
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF133
	.byte	0xc
	.byte	0x43
	.4byte	0x772
	.uleb128 0x1b
	.byte	0x4
	.byte	0xc
	.byte	0x50
	.4byte	0x7c2
	.uleb128 0x1c
	.string	"sc"
	.byte	0xc
	.byte	0x54
	.4byte	0x7c2
	.uleb128 0x1c
	.string	"sr"
	.byte	0xc
	.byte	0x58
	.4byte	0x7c8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6ab
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6cf
	.uleb128 0x3
	.4byte	.LASF134
	.byte	0xd
	.byte	0x13
	.4byte	0x7d9
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x14
	.byte	0xd
	.byte	0x2c
	.4byte	0x7fe
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0xd
	.byte	0x2e
	.4byte	0x495
	.byte	0
	.uleb128 0xc
	.4byte	.LASF136
	.byte	0xd
	.byte	0x2f
	.4byte	0x378
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF137
	.byte	0xd
	.byte	0x14
	.4byte	0x809
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0x18
	.byte	0xd
	.byte	0x39
	.4byte	0x83a
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0xd
	.byte	0x3b
	.4byte	0x495
	.byte	0
	.uleb128 0xc
	.4byte	.LASF119
	.byte	0xd
	.byte	0x3c
	.4byte	0x6a0
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF139
	.byte	0xd
	.byte	0x3d
	.4byte	0x378
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF140
	.byte	0xd
	.byte	0x15
	.4byte	0x845
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0x14
	.byte	0xd
	.byte	0x47
	.4byte	0x86a
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0xd
	.byte	0x49
	.4byte	0x495
	.byte	0
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0xd
	.byte	0x4a
	.4byte	0x378
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF143
	.byte	0xd
	.byte	0x16
	.4byte	0x875
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0x20
	.byte	0xd
	.byte	0x54
	.4byte	0x8b2
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0xd
	.byte	0x56
	.4byte	0x495
	.byte	0
	.uleb128 0xc
	.4byte	.LASF119
	.byte	0xd
	.byte	0x57
	.4byte	0x6a0
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0xd
	.byte	0x58
	.4byte	0x378
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF146
	.byte	0xd
	.byte	0x59
	.4byte	0x378
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF147
	.byte	0xd
	.byte	0x17
	.4byte	0x8bd
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0x18
	.byte	0xd
	.byte	0x6c
	.4byte	0x8f4
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0xd
	.byte	0x6e
	.4byte	0x495
	.byte	0
	.uleb128 0xd
	.string	"msg"
	.byte	0xd
	.byte	0x72
	.4byte	0x926
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF122
	.byte	0xd
	.byte	0x73
	.4byte	0x965
	.byte	0x10
	.uleb128 0x1a
	.4byte	0x970
	.byte	0x14
	.byte	0
	.uleb128 0x18
	.4byte	.LASF149
	.byte	0x4
	.4byte	0x74
	.byte	0xd
	.byte	0x1f
	.4byte	0x926
	.uleb128 0xa
	.4byte	.LASF150
	.byte	0
	.uleb128 0xa
	.4byte	.LASF151
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF152
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF153
	.byte	0x3
	.uleb128 0x19
	.4byte	.LASF154
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF155
	.byte	0xd
	.byte	0x25
	.4byte	0x8f4
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0xd
	.byte	0x60
	.4byte	0x965
	.uleb128 0xa
	.4byte	.LASF156
	.byte	0
	.uleb128 0xa
	.4byte	.LASF157
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF158
	.byte	0x15
	.uleb128 0xa
	.4byte	.LASF159
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF160
	.byte	0x17
	.uleb128 0x19
	.4byte	.LASF161
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF162
	.byte	0xd
	.byte	0x67
	.4byte	0x931
	.uleb128 0x1b
	.byte	0x4
	.byte	0xd
	.byte	0x74
	.4byte	0x9a5
	.uleb128 0x1c
	.string	"sc0"
	.byte	0xd
	.byte	0x78
	.4byte	0x9a5
	.uleb128 0x1c
	.string	"sr0"
	.byte	0xd
	.byte	0x7c
	.4byte	0x9ab
	.uleb128 0x1c
	.string	"sc1"
	.byte	0xd
	.byte	0x80
	.4byte	0x9b1
	.uleb128 0x1c
	.string	"sr1"
	.byte	0xd
	.byte	0x84
	.4byte	0x9b7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x83a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x86a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7ce
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7fe
	.uleb128 0x3
	.4byte	.LASF163
	.byte	0xe
	.byte	0x14
	.4byte	0x9c8
	.uleb128 0xb
	.4byte	.LASF164
	.byte	0x18
	.byte	0xe
	.byte	0x36
	.4byte	0x9ff
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0xe
	.byte	0x38
	.4byte	0x495
	.byte	0
	.uleb128 0xc
	.4byte	.LASF165
	.byte	0xe
	.byte	0x3c
	.4byte	0xa25
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF166
	.byte	0xe
	.byte	0x3d
	.4byte	0xa58
	.byte	0x10
	.uleb128 0x1a
	.4byte	0xa63
	.byte	0x14
	.byte	0
	.uleb128 0x18
	.4byte	.LASF167
	.byte	0x4
	.4byte	0x74
	.byte	0xe
	.byte	0x1d
	.4byte	0xa25
	.uleb128 0xa
	.4byte	.LASF168
	.byte	0
	.uleb128 0xa
	.4byte	.LASF169
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF170
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF171
	.byte	0xe
	.byte	0x27
	.4byte	0x9ff
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0xe
	.byte	0x2b
	.4byte	0xa58
	.uleb128 0xa
	.4byte	.LASF172
	.byte	0
	.uleb128 0xa
	.4byte	.LASF173
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF174
	.byte	0xb
	.uleb128 0x19
	.4byte	.LASF175
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF176
	.byte	0xe
	.byte	0x30
	.4byte	0xa30
	.uleb128 0x1b
	.byte	0x4
	.byte	0xe
	.byte	0x3e
	.4byte	0xa82
	.uleb128 0x1d
	.4byte	.LASF177
	.byte	0xe
	.byte	0x42
	.4byte	0xa82
	.uleb128 0x1d
	.4byte	.LASF178
	.byte	0xe
	.byte	0x46
	.4byte	0xa88
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6ff
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8b2
	.uleb128 0x1e
	.4byte	.LASF203
	.byte	0x1
	.byte	0x39
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad0
	.uleb128 0x1f
	.4byte	.LASF179
	.byte	0x1
	.byte	0x39
	.4byte	0xfb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF180
	.byte	0x1
	.byte	0x39
	.4byte	0xad0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LVL1
	.4byte	0xe8d
	.uleb128 0x20
	.4byte	.LVL2
	.4byte	0xe8d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9bd
	.uleb128 0x21
	.4byte	.LASF182
	.byte	0x1
	.byte	0x1f
	.4byte	0x106
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbef
	.uleb128 0x22
	.4byte	.LASF179
	.byte	0x1
	.byte	0x1f
	.4byte	0xfb
	.4byte	.LLST0
	.uleb128 0x23
	.string	"req"
	.byte	0x1
	.byte	0x20
	.4byte	0xad0
	.4byte	.LLST1
	.uleb128 0x1f
	.4byte	.LASF180
	.byte	0x1
	.byte	0x20
	.4byte	0xad0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.string	"pop"
	.byte	0x1
	.byte	0x21
	.4byte	0x23d
	.4byte	.LLST2
	.uleb128 0x24
	.string	"out"
	.byte	0x1
	.byte	0x23
	.4byte	0xa82
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.LASF181
	.byte	0x1
	.byte	0x24
	.4byte	0x7c8
	.4byte	.LLST3
	.uleb128 0x26
	.4byte	.LVL4
	.4byte	0xe98
	.4byte	0xb58
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x26
	.4byte	.LVL6
	.4byte	0xe98
	.4byte	0xb6b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x20
	.4byte	.LVL8
	.4byte	0xea3
	.uleb128 0x26
	.4byte	.LVL9
	.4byte	0xeae
	.4byte	0xba2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL10
	.4byte	0xe8d
	.4byte	0xbb6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL11
	.4byte	0xe8d
	.4byte	0xbca
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL14
	.4byte	0xeb9
	.4byte	0xbde
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL15
	.4byte	0xec4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF183
	.byte	0x1
	.byte	0x44
	.4byte	0x106
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe60
	.uleb128 0x23
	.string	"pop"
	.byte	0x1
	.byte	0x44
	.4byte	0x23d
	.4byte	.LLST4
	.uleb128 0x1f
	.4byte	.LASF179
	.byte	0x1
	.byte	0x44
	.4byte	0xfb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF184
	.byte	0x1
	.byte	0x45
	.4byte	0x167
	.4byte	.LLST5
	.uleb128 0x1f
	.4byte	.LASF185
	.byte	0x1
	.byte	0x45
	.4byte	0xc8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1f
	.4byte	.LASF186
	.byte	0x1
	.byte	0x46
	.4byte	0x248
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1f
	.4byte	.LASF187
	.byte	0x1
	.byte	0x46
	.4byte	0x254
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1f
	.4byte	.LASF188
	.byte	0x1
	.byte	0x47
	.4byte	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"req"
	.byte	0x1
	.byte	0x49
	.4byte	0xad0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.4byte	.LASF180
	.byte	0x1
	.byte	0x4a
	.4byte	0x9bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.string	"ret"
	.byte	0x1
	.byte	0x4b
	.4byte	0x106
	.4byte	.LLST6
	.uleb128 0x26
	.4byte	.LVL20
	.4byte	0xecf
	.4byte	0xcb1
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL22
	.4byte	0xea3
	.uleb128 0x26
	.4byte	.LVL23
	.4byte	0xeae
	.4byte	0xce8
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL26
	.4byte	0xea3
	.uleb128 0x26
	.4byte	.LVL27
	.4byte	0xeae
	.4byte	0xd1f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL28
	.4byte	0xeda
	.4byte	0xd38
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL31
	.4byte	0xee5
	.4byte	0xd4c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x26
	.4byte	.LVL32
	.4byte	0xad6
	.4byte	0xd72
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL34
	.4byte	0xea3
	.uleb128 0x26
	.4byte	.LVL35
	.4byte	0xeae
	.4byte	0xdaf
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL36
	.4byte	0xeda
	.4byte	0xdc8
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL41
	.4byte	0xeda
	.4byte	0xde1
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL42
	.4byte	0xef0
	.4byte	0xdf5
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x20
	.4byte	.LVL43
	.4byte	0xe98
	.uleb128 0x20
	.4byte	.LVL44
	.4byte	0xea3
	.uleb128 0x26
	.4byte	.LVL45
	.4byte	0xeae
	.4byte	0xe35
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL46
	.4byte	0xefb
	.4byte	0xe49
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x28
	.4byte	.LVL47
	.4byte	0xa8e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x24
	.string	"TAG"
	.byte	0x1
	.byte	0x1d
	.4byte	0xe72
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xbd
	.uleb128 0x2b
	.4byte	.LASF204
	.byte	0x1
	.byte	0x6f
	.4byte	0xe88
	.uleb128 0x5
	.byte	0x3
	.4byte	protocomm_security0
	.uleb128 0x7
	.4byte	0x289
	.uleb128 0x2c
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0xf
	.byte	0x5a
	.uleb128 0x2c
	.4byte	.LASF190
	.4byte	.LASF190
	.byte	0xf
	.byte	0x65
	.uleb128 0x2c
	.4byte	.LASF191
	.4byte	.LASF191
	.byte	0x9
	.byte	0x57
	.uleb128 0x2c
	.4byte	.LASF192
	.4byte	.LASF192
	.byte	0x9
	.byte	0x6b
	.uleb128 0x2c
	.4byte	.LASF193
	.4byte	.LASF193
	.byte	0xc
	.byte	0x87
	.uleb128 0x2c
	.4byte	.LASF194
	.4byte	.LASF194
	.byte	0xc
	.byte	0x74
	.uleb128 0x2c
	.4byte	.LASF195
	.4byte	.LASF195
	.byte	0xe
	.byte	0x5a
	.uleb128 0x2c
	.4byte	.LASF196
	.4byte	.LASF196
	.byte	0xe
	.byte	0x5e
	.uleb128 0x2c
	.4byte	.LASF197
	.4byte	.LASF197
	.byte	0xe
	.byte	0x4f
	.uleb128 0x2c
	.4byte	.LASF198
	.4byte	.LASF198
	.byte	0xe
	.byte	0x51
	.uleb128 0x2c
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0xe
	.byte	0x53
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.4byte	.LVL3
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
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL7
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x73
	.sleb128 20
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL21
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF77:
	.string	"default_value"
.LASF187:
	.string	"outlen"
.LASF157:
	.string	"SEC1_PAYLOAD__PAYLOAD_SC0"
.LASF159:
	.string	"SEC1_PAYLOAD__PAYLOAD_SC1"
.LASF163:
	.string	"SessionData"
.LASF54:
	.string	"PROTOBUF_C_TYPE_UINT64"
.LASF200:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF41:
	.string	"PROTOBUF_C_LABEL_REQUIRED"
.LASF123:
	.string	"_Status"
.LASF79:
	.string	"reserved_flags"
.LASF61:
	.string	"PROTOBUF_C_TYPE_BYTES"
.LASF78:
	.string	"flags"
.LASF51:
	.string	"PROTOBUF_C_TYPE_SFIXED64"
.LASF57:
	.string	"PROTOBUF_C_TYPE_DOUBLE"
.LASF35:
	.string	"new_transport_session"
.LASF65:
	.string	"PROTOBUF_C_WIRE_TYPE_64BIT"
.LASF8:
	.string	"unsigned int"
.LASF113:
	.string	"Status"
.LASF37:
	.string	"security_req_handler"
.LASF93:
	.string	"sizeof_message"
.LASF162:
	.string	"Sec1Payload__PayloadCase"
.LASF6:
	.string	"__int32_t"
.LASF204:
	.string	"protocomm_security0"
.LASF39:
	.string	"decrypt"
.LASF140:
	.string	"SessionCmd0"
.LASF134:
	.string	"SessionCmd1"
.LASF99:
	.string	"message_init"
.LASF64:
	.string	"PROTOBUF_C_WIRE_TYPE_VARINT"
.LASF191:
	.string	"esp_log_timestamp"
.LASF118:
	.string	"_S0SessionResp"
.LASF43:
	.string	"PROTOBUF_C_LABEL_REPEATED"
.LASF40:
	.string	"protocomm_security_t"
.LASF168:
	.string	"SEC_SCHEME_VERSION__SecScheme0"
.LASF169:
	.string	"SEC_SCHEME_VERSION__SecScheme1"
.LASF81:
	.string	"reserved3"
.LASF85:
	.string	"ProtobufCMessage"
.LASF55:
	.string	"PROTOBUF_C_TYPE_FIXED64"
.LASF21:
	.string	"uint32_t"
.LASF83:
	.string	"start_value"
.LASF96:
	.string	"fields_sorted_by_name"
.LASF198:
	.string	"session_data__get_packed_size"
.LASF190:
	.string	"malloc"
.LASF116:
	.string	"base"
.LASF199:
	.string	"session_data__pack"
.LASF10:
	.string	"long long unsigned int"
.LASF34:
	.string	"cleanup"
.LASF63:
	.string	"ProtobufCType"
.LASF194:
	.string	"s0_session_resp__init"
.LASF94:
	.string	"n_fields"
.LASF139:
	.string	"device_verify_data"
.LASF98:
	.string	"field_ranges"
.LASF4:
	.string	"__uint16_t"
.LASF111:
	.string	"STATUS__InvalidSession"
.LASF188:
	.string	"priv_data"
.LASF127:
	.string	"_SEC0_MSG_TYPE_IS_INT_SIZE"
.LASF25:
	.string	"ESP_LOG_WARN"
.LASF88:
	.string	"ProtobufCMessageDescriptor"
.LASF112:
	.string	"_STATUS_IS_INT_SIZE"
.LASF148:
	.string	"_Sec1Payload"
.LASF11:
	.string	"size_t"
.LASF176:
	.string	"SessionData__ProtoCase"
.LASF101:
	.string	"ProtobufCMessageUnknownField"
.LASF75:
	.string	"offset"
.LASF103:
	.string	"ProtobufCMessageInit"
.LASF142:
	.string	"client_pubkey"
.LASF195:
	.string	"session_data__unpack"
.LASF150:
	.string	"SEC1_MSG_TYPE__Session_Command0"
.LASF152:
	.string	"SEC1_MSG_TYPE__Session_Command1"
.LASF143:
	.string	"SessionResp0"
.LASF137:
	.string	"SessionResp1"
.LASF189:
	.string	"free"
.LASF104:
	.string	"STATUS__Success"
.LASF36:
	.string	"close_transport_session"
.LASF23:
	.string	"ESP_LOG_NONE"
.LASF197:
	.string	"session_data__init"
.LASF117:
	.string	"S0SessionResp"
.LASF179:
	.string	"session_id"
.LASF185:
	.string	"inlen"
.LASF202:
	.string	"/home/raphael/rtone/lcd/build/protocomm"
.LASF16:
	.string	"char"
.LASF177:
	.string	"sec0"
.LASF178:
	.string	"sec1"
.LASF171:
	.string	"SecSchemeVersion"
.LASF95:
	.string	"fields"
.LASF156:
	.string	"SEC1_PAYLOAD__PAYLOAD__NOT_SET"
.LASF145:
	.string	"device_pubkey"
.LASF29:
	.string	"data"
.LASF87:
	.string	"unknown_fields"
.LASF17:
	.string	"ssize_t"
.LASF133:
	.string	"Sec0Payload__PayloadCase"
.LASF18:
	.string	"uint8_t"
.LASF119:
	.string	"status"
.LASF62:
	.string	"PROTOBUF_C_TYPE_MESSAGE"
.LASF76:
	.string	"descriptor"
.LASF184:
	.string	"inbuf"
.LASF97:
	.string	"n_field_ranges"
.LASF173:
	.string	"SESSION_DATA__PROTO_SEC0"
.LASF174:
	.string	"SESSION_DATA__PROTO_SEC1"
.LASF146:
	.string	"device_random"
.LASF66:
	.string	"PROTOBUF_C_WIRE_TYPE_LENGTH_PREFIXED"
.LASF59:
	.string	"PROTOBUF_C_TYPE_ENUM"
.LASF9:
	.string	"long long int"
.LASF86:
	.string	"n_unknown_fields"
.LASF45:
	.string	"ProtobufCLabel"
.LASF91:
	.string	"c_name"
.LASF151:
	.string	"SEC1_MSG_TYPE__Session_Response0"
.LASF90:
	.string	"short_name"
.LASF38:
	.string	"encrypt"
.LASF136:
	.string	"client_verify_data"
.LASF172:
	.string	"SESSION_DATA__PROTO__NOT_SET"
.LASF31:
	.string	"protocomm_security_pop"
.LASF106:
	.string	"STATUS__InvalidProto"
.LASF201:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/src/security/security0.c"
.LASF44:
	.string	"PROTOBUF_C_LABEL_NONE"
.LASF147:
	.string	"Sec1Payload"
.LASF60:
	.string	"PROTOBUF_C_TYPE_STRING"
.LASF144:
	.string	"_SessionResp0"
.LASF138:
	.string	"_SessionResp1"
.LASF26:
	.string	"ESP_LOG_INFO"
.LASF102:
	.string	"wire_type"
.LASF107:
	.string	"STATUS__TooManySessions"
.LASF165:
	.string	"sec_ver"
.LASF70:
	.string	"ProtobufCFieldDescriptor"
.LASF124:
	.string	"_Sec0MsgType"
.LASF69:
	.string	"ProtobufCBinaryData"
.LASF120:
	.string	"Sec0Payload"
.LASF56:
	.string	"PROTOBUF_C_TYPE_FLOAT"
.LASF19:
	.string	"uint16_t"
.LASF32:
	.string	"protocomm_security"
.LASF108:
	.string	"STATUS__InvalidArgument"
.LASF105:
	.string	"STATUS__InvalidSecScheme"
.LASF47:
	.string	"PROTOBUF_C_TYPE_SINT32"
.LASF68:
	.string	"ProtobufCWireType"
.LASF153:
	.string	"SEC1_MSG_TYPE__Session_Response1"
.LASF84:
	.string	"orig_index"
.LASF164:
	.string	"_SessionData"
.LASF2:
	.string	"short int"
.LASF186:
	.string	"outbuf"
.LASF12:
	.string	"long int"
.LASF132:
	.string	"_SEC0_PAYLOAD__PAYLOAD_IS_INT_SIZE"
.LASF92:
	.string	"package_name"
.LASF53:
	.string	"PROTOBUF_C_TYPE_FIXED32"
.LASF183:
	.string	"sec0_req_handler"
.LASF42:
	.string	"PROTOBUF_C_LABEL_OPTIONAL"
.LASF114:
	.string	"S0SessionCmd"
.LASF110:
	.string	"STATUS__CryptoError"
.LASF100:
	.string	"reserved1"
.LASF80:
	.string	"reserved2"
.LASF3:
	.string	"__uint8_t"
.LASF154:
	.string	"_SEC1_MSG_TYPE_IS_INT_SIZE"
.LASF71:
	.string	"name"
.LASF125:
	.string	"SEC0_MSG_TYPE__S0_Session_Command"
.LASF135:
	.string	"_SessionCmd1"
.LASF46:
	.string	"PROTOBUF_C_TYPE_INT32"
.LASF58:
	.string	"PROTOBUF_C_TYPE_BOOL"
.LASF89:
	.string	"magic"
.LASF82:
	.string	"ProtobufCIntRange"
.LASF203:
	.string	"sec0_session_setup_cleanup"
.LASF33:
	.string	"init"
.LASF161:
	.string	"_SEC1_PAYLOAD__PAYLOAD_IS_INT_SIZE"
.LASF14:
	.string	"sizetype"
.LASF15:
	.string	"long unsigned int"
.LASF28:
	.string	"ESP_LOG_VERBOSE"
.LASF155:
	.string	"Sec1MsgType"
.LASF20:
	.string	"int32_t"
.LASF74:
	.string	"quantifier_offset"
.LASF166:
	.string	"proto_case"
.LASF170:
	.string	"_SEC_SCHEME_VERSION_IS_INT_SIZE"
.LASF182:
	.string	"sec0_session_setup"
.LASF52:
	.string	"PROTOBUF_C_TYPE_UINT32"
.LASF73:
	.string	"type"
.LASF128:
	.string	"Sec0MsgType"
.LASF1:
	.string	"unsigned char"
.LASF7:
	.string	"__uint32_t"
.LASF50:
	.string	"PROTOBUF_C_TYPE_SINT64"
.LASF129:
	.string	"SEC0_PAYLOAD__PAYLOAD__NOT_SET"
.LASF149:
	.string	"_Sec1MsgType"
.LASF30:
	.string	"protocomm_security_pop_t"
.LASF48:
	.string	"PROTOBUF_C_TYPE_SFIXED32"
.LASF22:
	.string	"esp_err_t"
.LASF126:
	.string	"SEC0_MSG_TYPE__S0_Session_Response"
.LASF196:
	.string	"session_data__free_unpacked"
.LASF72:
	.string	"label"
.LASF27:
	.string	"ESP_LOG_DEBUG"
.LASF181:
	.string	"s0resp"
.LASF167:
	.string	"_SecSchemeVersion"
.LASF13:
	.string	"_ssize_t"
.LASF0:
	.string	"signed char"
.LASF5:
	.string	"short unsigned int"
.LASF130:
	.string	"SEC0_PAYLOAD__PAYLOAD_SC"
.LASF121:
	.string	"_Sec0Payload"
.LASF115:
	.string	"_S0SessionCmd"
.LASF192:
	.string	"esp_log_write"
.LASF131:
	.string	"SEC0_PAYLOAD__PAYLOAD_SR"
.LASF180:
	.string	"resp"
.LASF109:
	.string	"STATUS__InternalError"
.LASF141:
	.string	"_SessionCmd0"
.LASF193:
	.string	"sec0_payload__init"
.LASF49:
	.string	"PROTOBUF_C_TYPE_INT64"
.LASF67:
	.string	"PROTOBUF_C_WIRE_TYPE_32BIT"
.LASF122:
	.string	"payload_case"
.LASF175:
	.string	"_SESSION_DATA__PROTO_IS_INT_SIZE"
.LASF158:
	.string	"SEC1_PAYLOAD__PAYLOAD_SR0"
.LASF160:
	.string	"SEC1_PAYLOAD__PAYLOAD_SR1"
.LASF24:
	.string	"ESP_LOG_ERROR"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
