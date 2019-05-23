	.file	"session.pb-c.c"
	.text
.Ltext0:
	.section	.text.session_data__init,"ax",@progbits
	.literal_position
	.literal .LC0, session_data__descriptor
	.align	4
	.global	session_data__init
	.type	session_data__init, @function
session_data__init:
.LFB0:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/proto-c/session.pb-c.c"
	.loc 1 12 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 14 0
	l32r	a8, .LC0
	s32i.n	a8, a2, 0
	movi.n	a8, 0
	s32i.n	a8, a2, 4
	s32i.n	a8, a2, 8
	s32i.n	a8, a2, 12
	s32i.n	a8, a2, 16
	s32i.n	a8, a2, 20
	retw.n
.LFE0:
	.size	session_data__init, .-session_data__init
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"message->base.descriptor == &session_data__descriptor"
	.align	4
.LC5:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/proto-c/session.pb-c.c"
	.section	.text.session_data__get_packed_size,"ax",@progbits
	.literal_position
	.literal .LC1, session_data__descriptor
	.literal .LC3, .LC2
	.literal .LC4, __func__$2643
	.literal .LC6, .LC5
	.align	4
	.global	session_data__get_packed_size
	.type	session_data__get_packed_size, @function
session_data__get_packed_size:
.LFB1:
	.loc 1 18 0
.LVL1:
	entry	sp, 32
.LCFI1:
	.loc 1 19 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC1
	beq	a9, a8, .L3
	.loc 1 19 0 is_stmt 0 discriminator 1
	l32r	a13, .LC3
	l32r	a12, .LC4
	movi.n	a11, 0x13
	l32r	a10, .LC6
	call8	__assert_func
.LVL2:
.L3:
	.loc 1 20 0 is_stmt 1
	mov.n	a10, a2
	call8	protobuf_c_message_get_packed_size
.LVL3:
	.loc 1 21 0
	mov.n	a2, a10
.LVL4:
	retw.n
.LFE1:
	.size	session_data__get_packed_size, .-session_data__get_packed_size
	.section	.text.session_data__pack,"ax",@progbits
	.literal_position
	.literal .LC7, session_data__descriptor
	.literal .LC8, .LC2
	.literal .LC9, __func__$2648
	.literal .LC10, .LC5
	.align	4
	.global	session_data__pack
	.type	session_data__pack, @function
session_data__pack:
.LFB2:
	.loc 1 25 0
.LVL5:
	entry	sp, 32
.LCFI2:
	.loc 1 26 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC7
	beq	a9, a8, .L5
	.loc 1 26 0 is_stmt 0 discriminator 1
	l32r	a13, .LC8
	l32r	a12, .LC9
	movi.n	a11, 0x1a
	l32r	a10, .LC10
	call8	__assert_func
.LVL6:
.L5:
	.loc 1 27 0 is_stmt 1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	protobuf_c_message_pack
.LVL7:
	.loc 1 28 0
	mov.n	a2, a10
.LVL8:
	retw.n
.LFE2:
	.size	session_data__pack, .-session_data__pack
	.section	.text.session_data__pack_to_buffer,"ax",@progbits
	.literal_position
	.literal .LC11, session_data__descriptor
	.literal .LC12, .LC2
	.literal .LC13, __func__$2653
	.literal .LC14, .LC5
	.align	4
	.global	session_data__pack_to_buffer
	.type	session_data__pack_to_buffer, @function
session_data__pack_to_buffer:
.LFB3:
	.loc 1 32 0
.LVL9:
	entry	sp, 32
.LCFI3:
	.loc 1 33 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC11
	beq	a9, a8, .L7
	.loc 1 33 0 is_stmt 0 discriminator 1
	l32r	a13, .LC12
	l32r	a12, .LC13
	movi.n	a11, 0x21
	l32r	a10, .LC14
	call8	__assert_func
.LVL10:
.L7:
	.loc 1 34 0 is_stmt 1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	protobuf_c_message_pack_to_buffer
.LVL11:
	.loc 1 35 0
	mov.n	a2, a10
.LVL12:
	retw.n
.LFE3:
	.size	session_data__pack_to_buffer, .-session_data__pack_to_buffer
	.section	.text.session_data__unpack,"ax",@progbits
	.literal_position
	.literal .LC15, session_data__descriptor
	.align	4
	.global	session_data__unpack
	.type	session_data__unpack, @function
session_data__unpack:
.LFB4:
	.loc 1 41 0
.LVL13:
	entry	sp, 32
.LCFI4:
	.loc 1 42 0
	mov.n	a13, a4
	mov.n	a12, a3
	mov.n	a11, a2
	l32r	a10, .LC15
	call8	protobuf_c_message_unpack
.LVL14:
	.loc 1 45 0
	mov.n	a2, a10
.LVL15:
	retw.n
.LFE4:
	.size	session_data__unpack, .-session_data__unpack
	.section	.text.session_data__free_unpacked,"ax",@progbits
	.literal_position
	.literal .LC16, session_data__descriptor
	.literal .LC17, .LC2
	.literal .LC18, __func__$2663
	.literal .LC19, .LC5
	.align	4
	.global	session_data__free_unpacked
	.type	session_data__free_unpacked, @function
session_data__free_unpacked:
.LFB5:
	.loc 1 49 0
.LVL16:
	entry	sp, 32
.LCFI5:
	.loc 1 50 0
	beqz.n	a2, .L9
	.loc 1 52 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC16
	beq	a9, a8, .L11
	.loc 1 52 0 is_stmt 0 discriminator 1
	l32r	a13, .LC17
	l32r	a12, .LC18
	movi.n	a11, 0x34
	l32r	a10, .LC19
	call8	__assert_func
.LVL17:
.L11:
	.loc 1 53 0 is_stmt 1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	protobuf_c_message_free_unpacked
.LVL18:
.L9:
	retw.n
.LFE5:
	.size	session_data__free_unpacked, .-session_data__free_unpacked
	.section	.rodata.__func__$2663,"a",@progbits
	.align	4
	.type	__func__$2663, @object
	.size	__func__$2663, 28
__func__$2663:
	.string	"session_data__free_unpacked"
	.section	.rodata.__func__$2653,"a",@progbits
	.align	4
	.type	__func__$2653, @object
	.size	__func__$2653, 29
__func__$2653:
	.string	"session_data__pack_to_buffer"
	.section	.rodata.__func__$2648,"a",@progbits
	.align	4
	.type	__func__$2648, @object
	.size	__func__$2648, 19
__func__$2648:
	.string	"session_data__pack"
	.section	.rodata.__func__$2643,"a",@progbits
	.align	4
	.type	__func__$2643, @object
	.size	__func__$2643, 30
__func__$2643:
	.string	"session_data__get_packed_size"
	.global	sec_scheme_version__descriptor
	.section	.rodata.str1.4
	.align	4
.LC20:
	.string	"SecSchemeVersion"
	.align	4
.LC21:
	.string	""
	.section	.rodata.sec_scheme_version__descriptor,"a",@progbits
	.align	4
	.type	sec_scheme_version__descriptor, @object
	.size	sec_scheme_version__descriptor, 60
sec_scheme_version__descriptor:
	.word	289609135
	.word	.LC20
	.word	.LC20
	.word	.LC20
	.word	.LC21
	.word	2
	.word	sec_scheme_version__enum_values_by_number
	.word	2
	.word	sec_scheme_version__enum_values_by_name
	.word	1
	.word	sec_scheme_version__value_ranges
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata.str1.4
	.align	4
.LC22:
	.string	"SecScheme0"
	.align	4
.LC23:
	.string	"SecScheme1"
	.section	.rodata.sec_scheme_version__enum_values_by_name,"a",@progbits
	.align	4
	.type	sec_scheme_version__enum_values_by_name, @object
	.size	sec_scheme_version__enum_values_by_name, 16
sec_scheme_version__enum_values_by_name:
	.word	.LC22
	.word	0
	.word	.LC23
	.word	1
	.section	.rodata.sec_scheme_version__value_ranges,"a",@progbits
	.align	4
	.type	sec_scheme_version__value_ranges, @object
	.size	sec_scheme_version__value_ranges, 16
sec_scheme_version__value_ranges:
	.word	0
	.word	0
	.word	0
	.word	2
	.section	.rodata.str1.4
	.align	4
.LC24:
	.string	"SEC_SCHEME_VERSION__SecScheme0"
	.align	4
.LC25:
	.string	"SEC_SCHEME_VERSION__SecScheme1"
	.section	.rodata.sec_scheme_version__enum_values_by_number,"a",@progbits
	.align	4
	.type	sec_scheme_version__enum_values_by_number, @object
	.size	sec_scheme_version__enum_values_by_number, 24
sec_scheme_version__enum_values_by_number:
	.word	.LC22
	.word	.LC24
	.word	0
	.word	.LC23
	.word	.LC25
	.word	1
	.global	session_data__descriptor
	.section	.rodata.str1.4
	.align	4
.LC26:
	.string	"SessionData"
	.section	.rodata.session_data__descriptor,"a",@progbits
	.align	4
	.type	session_data__descriptor, @object
	.size	session_data__descriptor, 60
session_data__descriptor:
	.word	682290937
	.word	.LC26
	.word	.LC26
	.word	.LC26
	.word	.LC21
	.word	24
	.word	3
	.word	session_data__field_descriptors
	.word	session_data__field_indices_by_name
	.word	2
	.word	session_data__number_ranges
	.word	session_data__init
	.word	0
	.word	0
	.word	0
	.section	.rodata.session_data__number_ranges,"a",@progbits
	.align	4
	.type	session_data__number_ranges, @object
	.size	session_data__number_ranges, 24
session_data__number_ranges:
	.word	2
	.word	0
	.word	10
	.word	1
	.word	0
	.word	3
	.section	.rodata.session_data__field_indices_by_name,"a",@progbits
	.align	4
	.type	session_data__field_indices_by_name, @object
	.size	session_data__field_indices_by_name, 12
session_data__field_indices_by_name:
	.word	1
	.word	2
	.word	0
	.section	.rodata.str1.4
	.align	4
.LC27:
	.string	"sec_ver"
	.align	4
.LC28:
	.string	"sec0"
	.align	4
.LC29:
	.string	"sec1"
	.section	.rodata.session_data__field_descriptors,"a",@progbits
	.align	4
	.type	session_data__field_descriptors, @object
	.size	session_data__field_descriptors, 144
session_data__field_descriptors:
	.word	.LC27
	.word	2
	.word	3
	.word	13
	.word	0
	.word	12
	.word	sec_scheme_version__descriptor
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	.LC28
	.word	10
	.word	3
	.word	16
	.word	16
	.word	20
	.word	sec0_payload__descriptor
	.word	0
	.word	4
	.word	0
	.word	0
	.word	0
	.word	.LC29
	.word	11
	.word	3
	.word	16
	.word	16
	.word	20
	.word	sec1_payload__descriptor
	.word	0
	.word	4
	.word	0
	.word	0
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
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
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protobuf-c/protobuf-c/protobuf-c/protobuf-c.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/proto-c/constants.pb-c.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/proto-c/sec0.pb-c.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/proto-c/sec1.pb-c.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/proto-c/session.pb-c.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf7f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF203
	.byte	0xc
	.4byte	.LASF204
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0xd8
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x53
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9e
	.uleb128 0x7
	.4byte	0x91
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa9
	.uleb128 0x8
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0x15
	.4byte	0x48
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2d
	.4byte	0x61
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0xff
	.4byte	0xdf
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.2byte	0x112
	.4byte	0x105
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x128
	.4byte	0xdf
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.2byte	0x132
	.4byte	0x185
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x5
	.2byte	0x144
	.4byte	0x111
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.2byte	0x14e
	.4byte	0x1b7
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x5
	.2byte	0x154
	.4byte	0x191
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x5
	.2byte	0x166
	.4byte	0x1cf
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0xc
	.byte	0x5
	.2byte	0x180
	.4byte	0x204
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x5
	.2byte	0x182
	.4byte	0x63d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x5
	.2byte	0x185
	.4byte	0x653
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x5
	.2byte	0x188
	.4byte	0x88
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x5
	.2byte	0x167
	.4byte	0x210
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x8
	.byte	0x5
	.2byte	0x192
	.4byte	0x238
	.uleb128 0xf
	.string	"len"
	.byte	0x5
	.2byte	0x193
	.4byte	0x21
	.byte	0
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x5
	.2byte	0x194
	.4byte	0x659
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x5
	.2byte	0x168
	.4byte	0x244
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x4
	.byte	0x5
	.2byte	0x1ba
	.4byte	0x25f
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x5
	.2byte	0x1bc
	.4byte	0x685
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x16a
	.4byte	0x26b
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x3c
	.byte	0x5
	.2byte	0x1ef
	.4byte	0x33c
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x1f1
	.4byte	0xb5
	.byte	0
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x1f4
	.4byte	0x98
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x1f6
	.4byte	0x98
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x1f8
	.4byte	0x98
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x1fa
	.4byte	0x98
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x1fd
	.4byte	0x2c
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x1ff
	.4byte	0x691
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x202
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x204
	.4byte	0x69c
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x207
	.4byte	0x2c
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x209
	.4byte	0x6a7
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x20c
	.4byte	0x88
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x20e
	.4byte	0x88
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x210
	.4byte	0x88
	.byte	0x34
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x212
	.4byte	0x88
	.byte	0x38
	.byte	0
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x16b
	.4byte	0x348
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0xc
	.byte	0x5
	.2byte	0x218
	.4byte	0x37d
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x21a
	.4byte	0x98
	.byte	0
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x21d
	.4byte	0x98
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x220
	.4byte	0x3a
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x16c
	.4byte	0x389
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x8
	.byte	0x5
	.2byte	0x226
	.4byte	0x3b1
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x228
	.4byte	0x98
	.byte	0
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x22a
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x16d
	.4byte	0x3bd
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x30
	.byte	0x5
	.2byte	0x230
	.4byte	0x466
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x232
	.4byte	0x98
	.byte	0
	.uleb128 0xf
	.string	"id"
	.byte	0x5
	.2byte	0x235
	.4byte	0xb5
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x238
	.4byte	0x105
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x23b
	.4byte	0x185
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x242
	.4byte	0x2c
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x248
	.4byte	0x2c
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x255
	.4byte	0xa3
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x258
	.4byte	0xa3
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x25e
	.4byte	0xb5
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x261
	.4byte	0x2c
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x263
	.4byte	0x88
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x265
	.4byte	0x88
	.byte	0x2c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x16e
	.4byte	0x472
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0x8
	.byte	0x5
	.2byte	0x270
	.4byte	0x49a
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x271
	.4byte	0x3a
	.byte	0
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x272
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x16f
	.4byte	0x4a6
	.uleb128 0xd
	.4byte	.LASF87
	.byte	0xc
	.byte	0x5
	.2byte	0x289
	.4byte	0x4db
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x28b
	.4byte	0x6b2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x28d
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x28f
	.4byte	0x6bd
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x170
	.4byte	0x4e7
	.uleb128 0xd
	.4byte	.LASF90
	.byte	0x3c
	.byte	0x5
	.2byte	0x295
	.4byte	0x5b8
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x297
	.4byte	0xb5
	.byte	0
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x29a
	.4byte	0x98
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x29c
	.4byte	0x98
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x29e
	.4byte	0x98
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x2a0
	.4byte	0x98
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x2a6
	.4byte	0x21
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x2a9
	.4byte	0x2c
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x2ab
	.4byte	0x6c3
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x2ad
	.4byte	0x6ce
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x2b0
	.4byte	0x2c
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x2b2
	.4byte	0x6a7
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x2b5
	.4byte	0x606
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x2b8
	.4byte	0x88
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x2ba
	.4byte	0x88
	.byte	0x34
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x2bc
	.4byte	0x88
	.byte	0x38
	.byte	0
	.uleb128 0xc
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x171
	.4byte	0x5c4
	.uleb128 0xd
	.4byte	.LASF98
	.byte	0x10
	.byte	0x5
	.2byte	0x2c2
	.4byte	0x606
	.uleb128 0xf
	.string	"tag"
	.byte	0x5
	.2byte	0x2c4
	.4byte	0xb5
	.byte	0
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x2c6
	.4byte	0x1b7
	.byte	0x4
	.uleb128 0xf
	.string	"len"
	.byte	0x5
	.2byte	0x2c8
	.4byte	0x21
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x5
	.2byte	0x2ca
	.4byte	0x659
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x17a
	.4byte	0x612
	.uleb128 0x6
	.byte	0x4
	.4byte	0x618
	.uleb128 0x10
	.4byte	0x623
	.uleb128 0x11
	.4byte	0x623
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x49a
	.uleb128 0x12
	.4byte	0x88
	.4byte	0x63d
	.uleb128 0x11
	.4byte	0x88
	.uleb128 0x11
	.4byte	0x21
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x629
	.uleb128 0x10
	.4byte	0x653
	.uleb128 0x11
	.4byte	0x88
	.uleb128 0x11
	.4byte	0x88
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x643
	.uleb128 0x6
	.byte	0x4
	.4byte	0xaa
	.uleb128 0x10
	.4byte	0x674
	.uleb128 0x11
	.4byte	0x674
	.uleb128 0x11
	.4byte	0x21
	.uleb128 0x11
	.4byte	0x67a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x238
	.uleb128 0x6
	.byte	0x4
	.4byte	0x680
	.uleb128 0x7
	.4byte	0xaa
	.uleb128 0x6
	.byte	0x4
	.4byte	0x65f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x697
	.uleb128 0x7
	.4byte	0x33c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6a2
	.uleb128 0x7
	.4byte	0x37d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6ad
	.uleb128 0x7
	.4byte	0x466
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6b8
	.uleb128 0x7
	.4byte	0x4db
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5b8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6c9
	.uleb128 0x7
	.4byte	0x3b1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6d4
	.uleb128 0x7
	.4byte	0x2c
	.uleb128 0x13
	.4byte	.LASF120
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x1a
	.4byte	0x723
	.uleb128 0xa
	.4byte	.LASF101
	.byte	0
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF107
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF108
	.byte	0x7
	.uleb128 0x14
	.4byte	.LASF109
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0x6
	.byte	0x24
	.4byte	0x6d9
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0x7
	.byte	0x13
	.4byte	0x739
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0xc
	.byte	0x7
	.byte	0x28
	.4byte	0x752
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x7
	.byte	0x2a
	.4byte	0x49a
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0x7
	.byte	0x14
	.4byte	0x75d
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x10
	.byte	0x7
	.byte	0x34
	.4byte	0x782
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x7
	.byte	0x36
	.4byte	0x49a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x7
	.byte	0x37
	.4byte	0x723
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0x7
	.byte	0x15
	.4byte	0x78d
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x18
	.byte	0x7
	.byte	0x48
	.4byte	0x7c4
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x7
	.byte	0x4a
	.4byte	0x49a
	.byte	0
	.uleb128 0x17
	.string	"msg"
	.byte	0x7
	.byte	0x4e
	.4byte	0x7ea
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF119
	.byte	0x7
	.byte	0x4f
	.4byte	0x81d
	.byte	0x10
	.uleb128 0x18
	.4byte	0x828
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.4byte	.LASF121
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x1d
	.4byte	0x7ea
	.uleb128 0xa
	.4byte	.LASF122
	.byte	0
	.uleb128 0xa
	.4byte	.LASF123
	.byte	0x1
	.uleb128 0x14
	.4byte	.LASF124
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0x7
	.byte	0x21
	.4byte	0x7c4
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x3e
	.4byte	0x81d
	.uleb128 0xa
	.4byte	.LASF126
	.byte	0
	.uleb128 0xa
	.4byte	.LASF127
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF128
	.byte	0x15
	.uleb128 0x14
	.4byte	.LASF129
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0x7
	.byte	0x43
	.4byte	0x7f5
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.byte	0x50
	.4byte	0x845
	.uleb128 0x1a
	.string	"sc"
	.byte	0x7
	.byte	0x54
	.4byte	0x845
	.uleb128 0x1a
	.string	"sr"
	.byte	0x7
	.byte	0x58
	.4byte	0x84b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x72e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x752
	.uleb128 0x2
	.4byte	.LASF131
	.byte	0x8
	.byte	0x13
	.4byte	0x85c
	.uleb128 0x15
	.4byte	.LASF132
	.byte	0x14
	.byte	0x8
	.byte	0x2c
	.4byte	0x881
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x8
	.byte	0x2e
	.4byte	0x49a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF133
	.byte	0x8
	.byte	0x2f
	.4byte	0x204
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF134
	.byte	0x8
	.byte	0x14
	.4byte	0x88c
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0x18
	.byte	0x8
	.byte	0x39
	.4byte	0x8bd
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x8
	.byte	0x3b
	.4byte	0x49a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x8
	.byte	0x3c
	.4byte	0x723
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF136
	.byte	0x8
	.byte	0x3d
	.4byte	0x204
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x8
	.byte	0x15
	.4byte	0x8c8
	.uleb128 0x15
	.4byte	.LASF138
	.byte	0x14
	.byte	0x8
	.byte	0x47
	.4byte	0x8ed
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x8
	.byte	0x49
	.4byte	0x49a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF139
	.byte	0x8
	.byte	0x4a
	.4byte	0x204
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF140
	.byte	0x8
	.byte	0x16
	.4byte	0x8f8
	.uleb128 0x15
	.4byte	.LASF141
	.byte	0x20
	.byte	0x8
	.byte	0x54
	.4byte	0x935
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x8
	.byte	0x56
	.4byte	0x49a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x8
	.byte	0x57
	.4byte	0x723
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF142
	.byte	0x8
	.byte	0x58
	.4byte	0x204
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF143
	.byte	0x8
	.byte	0x59
	.4byte	0x204
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.4byte	.LASF144
	.byte	0x8
	.byte	0x17
	.4byte	0x940
	.uleb128 0x15
	.4byte	.LASF145
	.byte	0x18
	.byte	0x8
	.byte	0x6c
	.4byte	0x977
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x8
	.byte	0x6e
	.4byte	0x49a
	.byte	0
	.uleb128 0x17
	.string	"msg"
	.byte	0x8
	.byte	0x72
	.4byte	0x9a9
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF119
	.byte	0x8
	.byte	0x73
	.4byte	0x9e8
	.byte	0x10
	.uleb128 0x18
	.4byte	0x9f3
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.4byte	.LASF146
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x1f
	.4byte	0x9a9
	.uleb128 0xa
	.4byte	.LASF147
	.byte	0
	.uleb128 0xa
	.4byte	.LASF148
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF149
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF150
	.byte	0x3
	.uleb128 0x14
	.4byte	.LASF151
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF152
	.byte	0x8
	.byte	0x25
	.4byte	0x977
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x60
	.4byte	0x9e8
	.uleb128 0xa
	.4byte	.LASF153
	.byte	0
	.uleb128 0xa
	.4byte	.LASF154
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF155
	.byte	0x15
	.uleb128 0xa
	.4byte	.LASF156
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF157
	.byte	0x17
	.uleb128 0x14
	.4byte	.LASF158
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF159
	.byte	0x8
	.byte	0x67
	.4byte	0x9b4
	.uleb128 0x19
	.byte	0x4
	.byte	0x8
	.byte	0x74
	.4byte	0xa28
	.uleb128 0x1a
	.string	"sc0"
	.byte	0x8
	.byte	0x78
	.4byte	0xa28
	.uleb128 0x1a
	.string	"sr0"
	.byte	0x8
	.byte	0x7c
	.4byte	0xa2e
	.uleb128 0x1a
	.string	"sc1"
	.byte	0x8
	.byte	0x80
	.4byte	0xa34
	.uleb128 0x1a
	.string	"sr1"
	.byte	0x8
	.byte	0x84
	.4byte	0xa3a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8bd
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8ed
	.uleb128 0x6
	.byte	0x4
	.4byte	0x851
	.uleb128 0x6
	.byte	0x4
	.4byte	0x881
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0x9
	.byte	0x14
	.4byte	0xa4b
	.uleb128 0x15
	.4byte	.LASF161
	.byte	0x18
	.byte	0x9
	.byte	0x36
	.4byte	0xa82
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x9
	.byte	0x38
	.4byte	0x49a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF162
	.byte	0x9
	.byte	0x3c
	.4byte	0xaa8
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF163
	.byte	0x9
	.byte	0x3d
	.4byte	0xadb
	.byte	0x10
	.uleb128 0x18
	.4byte	0xae6
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.4byte	.LASF164
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0x1d
	.4byte	0xaa8
	.uleb128 0xa
	.4byte	.LASF165
	.byte	0
	.uleb128 0xa
	.4byte	.LASF166
	.byte	0x1
	.uleb128 0x14
	.4byte	.LASF167
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF168
	.byte	0x9
	.byte	0x27
	.4byte	0xa82
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0x2b
	.4byte	0xadb
	.uleb128 0xa
	.4byte	.LASF169
	.byte	0
	.uleb128 0xa
	.4byte	.LASF170
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF171
	.byte	0xb
	.uleb128 0x14
	.4byte	.LASF172
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF173
	.byte	0x9
	.byte	0x30
	.4byte	0xab3
	.uleb128 0x19
	.byte	0x4
	.byte	0x9
	.byte	0x3e
	.4byte	0xb05
	.uleb128 0x1b
	.4byte	.LASF174
	.byte	0x9
	.byte	0x42
	.4byte	0xb05
	.uleb128 0x1b
	.4byte	.LASF175
	.byte	0x9
	.byte	0x46
	.4byte	0xb0b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x782
	.uleb128 0x6
	.byte	0x4
	.4byte	0x935
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb17
	.uleb128 0x7
	.4byte	0xa40
	.uleb128 0x1c
	.4byte	.LASF185
	.byte	0x1
	.byte	0xa
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb4a
	.uleb128 0x1d
	.4byte	.LASF176
	.byte	0x1
	.byte	0xb
	.4byte	0xb4a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF177
	.byte	0x1
	.byte	0xd
	.4byte	0xb17
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa40
	.uleb128 0x1f
	.4byte	.LASF179
	.byte	0x1
	.byte	0x10
	.4byte	0x21
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc6
	.uleb128 0x20
	.4byte	.LASF176
	.byte	0x1
	.byte	0x11
	.4byte	0xb11
	.4byte	.LLST0
	.uleb128 0x21
	.4byte	.LASF178
	.4byte	0xbd6
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2643
	.uleb128 0x22
	.4byte	.LVL2
	.4byte	0xf3b
	.4byte	0xbb5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2643
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x24
	.4byte	.LVL3
	.4byte	0xf46
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	0x91
	.4byte	0xbd6
	.uleb128 0x26
	.4byte	0x81
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.4byte	0xbc6
	.uleb128 0x1f
	.4byte	.LASF180
	.byte	0x1
	.byte	0x16
	.4byte	0x21
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc64
	.uleb128 0x20
	.4byte	.LASF176
	.byte	0x1
	.byte	0x17
	.4byte	0xb11
	.4byte	.LLST1
	.uleb128 0x27
	.string	"out"
	.byte	0x1
	.byte	0x18
	.4byte	0x659
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF178
	.4byte	0xc74
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2648
	.uleb128 0x22
	.4byte	.LVL6
	.4byte	0xf3b
	.4byte	0xc4d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x4a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2648
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x24
	.4byte	.LVL7
	.4byte	0xf52
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	0x91
	.4byte	0xc74
	.uleb128 0x26
	.4byte	0x81
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.4byte	0xc64
	.uleb128 0x1f
	.4byte	.LASF181
	.byte	0x1
	.byte	0x1d
	.4byte	0x21
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd03
	.uleb128 0x20
	.4byte	.LASF176
	.byte	0x1
	.byte	0x1e
	.4byte	0xb11
	.4byte	.LLST2
	.uleb128 0x1d
	.4byte	.LASF182
	.byte	0x1
	.byte	0x1f
	.4byte	0x674
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF178
	.4byte	0xd13
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2653
	.uleb128 0x22
	.4byte	.LVL10
	.4byte	0xf3b
	.4byte	0xcec
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2653
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x24
	.4byte	.LVL11
	.4byte	0xf5e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	0x91
	.4byte	0xd13
	.uleb128 0x26
	.4byte	0x81
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.4byte	0xd03
	.uleb128 0x1f
	.4byte	.LASF183
	.byte	0x1
	.byte	0x25
	.4byte	0xb4a
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd80
	.uleb128 0x20
	.4byte	.LASF184
	.byte	0x1
	.byte	0x26
	.4byte	0x68b
	.4byte	.LLST3
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.byte	0x27
	.4byte	0x21
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF52
	.byte	0x1
	.byte	0x28
	.4byte	0x67a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	.LVL14
	.4byte	0xf6a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	session_data__descriptor
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF186
	.byte	0x1
	.byte	0x2e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe04
	.uleb128 0x1d
	.4byte	.LASF176
	.byte	0x1
	.byte	0x2f
	.4byte	0xb4a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF184
	.byte	0x1
	.byte	0x30
	.4byte	0x68b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF178
	.4byte	0xe14
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2663
	.uleb128 0x22
	.4byte	.LVL17
	.4byte	0xf3b
	.4byte	0xded
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x34
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2663
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x24
	.4byte	.LVL18
	.4byte	0xf76
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	0x91
	.4byte	0xe14
	.uleb128 0x26
	.4byte	0x81
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.4byte	0xe04
	.uleb128 0x25
	.4byte	0x3b1
	.4byte	0xe29
	.uleb128 0x26
	.4byte	0x81
	.byte	0x2
	.byte	0
	.uleb128 0x28
	.4byte	.LASF187
	.byte	0x1
	.byte	0x37
	.4byte	0xe3a
	.uleb128 0x5
	.byte	0x3
	.4byte	session_data__field_descriptors
	.uleb128 0x7
	.4byte	0xe19
	.uleb128 0x25
	.4byte	0x2c
	.4byte	0xe4f
	.uleb128 0x26
	.4byte	0x81
	.byte	0x2
	.byte	0
	.uleb128 0x28
	.4byte	.LASF188
	.byte	0x1
	.byte	0x5e
	.4byte	0xe60
	.uleb128 0x5
	.byte	0x3
	.4byte	session_data__field_indices_by_name
	.uleb128 0x7
	.4byte	0xe3f
	.uleb128 0x25
	.4byte	0x466
	.4byte	0xe75
	.uleb128 0x26
	.4byte	0x81
	.byte	0x2
	.byte	0
	.uleb128 0x28
	.4byte	.LASF189
	.byte	0x1
	.byte	0x63
	.4byte	0xe86
	.uleb128 0x5
	.byte	0x3
	.4byte	session_data__number_ranges
	.uleb128 0x7
	.4byte	0xe65
	.uleb128 0x25
	.4byte	0x33c
	.4byte	0xe9b
	.uleb128 0x26
	.4byte	0x81
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.4byte	.LASF190
	.byte	0x1
	.byte	0x78
	.4byte	0xeac
	.uleb128 0x5
	.byte	0x3
	.4byte	sec_scheme_version__enum_values_by_number
	.uleb128 0x7
	.4byte	0xe8b
	.uleb128 0x25
	.4byte	0x466
	.4byte	0xec1
	.uleb128 0x26
	.4byte	0x81
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.4byte	.LASF191
	.byte	0x1
	.byte	0x7d
	.4byte	0xed2
	.uleb128 0x5
	.byte	0x3
	.4byte	sec_scheme_version__value_ranges
	.uleb128 0x7
	.4byte	0xeb1
	.uleb128 0x25
	.4byte	0x37d
	.4byte	0xee7
	.uleb128 0x26
	.4byte	0x81
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.4byte	.LASF192
	.byte	0x1
	.byte	0x80
	.4byte	0xef8
	.uleb128 0x5
	.byte	0x3
	.4byte	sec_scheme_version__enum_values_by_name
	.uleb128 0x7
	.4byte	0xed7
	.uleb128 0x29
	.4byte	.LASF193
	.byte	0x7
	.byte	0xad
	.4byte	0x6b8
	.uleb128 0x2a
	.4byte	.LASF194
	.byte	0x8
	.2byte	0x107
	.4byte	0x6b8
	.uleb128 0x2b
	.4byte	.LASF195
	.byte	0x1
	.byte	0x85
	.4byte	0xf25
	.uleb128 0x5
	.byte	0x3
	.4byte	sec_scheme_version__descriptor
	.uleb128 0x7
	.4byte	0x25f
	.uleb128 0x2b
	.4byte	.LASF196
	.byte	0x1
	.byte	0x69
	.4byte	0x6b8
	.uleb128 0x5
	.byte	0x3
	.4byte	session_data__descriptor
	.uleb128 0x2c
	.4byte	.LASF197
	.4byte	.LASF197
	.byte	0xa
	.byte	0x29
	.uleb128 0x2d
	.4byte	.LASF198
	.4byte	.LASF198
	.byte	0x5
	.2byte	0x37f
	.uleb128 0x2d
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0x5
	.2byte	0x393
	.uleb128 0x2d
	.4byte	.LASF200
	.4byte	.LASF200
	.byte	0x5
	.2byte	0x3a4
	.uleb128 0x2d
	.4byte	.LASF201
	.4byte	.LASF201
	.byte	0x5
	.2byte	0x3bb
	.uleb128 0x2d
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0x5
	.2byte	0x3cf
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
	.uleb128 0xc
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x2d
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
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF73:
	.string	"ProtobufCEnumValueIndex"
.LASF154:
	.string	"SEC1_PAYLOAD__PAYLOAD_SC0"
.LASF156:
	.string	"SEC1_PAYLOAD__PAYLOAD_SC1"
.LASF160:
	.string	"SessionData"
.LASF32:
	.string	"PROTOBUF_C_TYPE_UINT64"
.LASF203:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF19:
	.string	"PROTOBUF_C_LABEL_REQUIRED"
.LASF120:
	.string	"_Status"
.LASF195:
	.string	"sec_scheme_version__descriptor"
.LASF83:
	.string	"reserved_flags"
.LASF39:
	.string	"PROTOBUF_C_TYPE_BYTES"
.LASF201:
	.string	"protobuf_c_message_unpack"
.LASF176:
	.string	"message"
.LASF182:
	.string	"buffer"
.LASF82:
	.string	"flags"
.LASF29:
	.string	"PROTOBUF_C_TYPE_SFIXED64"
.LASF197:
	.string	"__assert_func"
.LASF35:
	.string	"PROTOBUF_C_TYPE_DOUBLE"
.LASF152:
	.string	"Sec1MsgType"
.LASF43:
	.string	"PROTOBUF_C_WIRE_TYPE_64BIT"
.LASF0:
	.string	"unsigned int"
.LASF193:
	.string	"sec0_payload__descriptor"
.LASF110:
	.string	"Status"
.LASF91:
	.string	"sizeof_message"
.LASF159:
	.string	"Sec1Payload__PayloadCase"
.LASF179:
	.string	"session_data__get_packed_size"
.LASF137:
	.string	"SessionCmd0"
.LASF131:
	.string	"SessionCmd1"
.LASF97:
	.string	"message_init"
.LASF204:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/proto-c/session.pb-c.c"
.LASF42:
	.string	"PROTOBUF_C_WIRE_TYPE_VARINT"
.LASF115:
	.string	"_S0SessionResp"
.LASF173:
	.string	"SessionData__ProtoCase"
.LASF21:
	.string	"PROTOBUF_C_LABEL_REPEATED"
.LASF165:
	.string	"SEC_SCHEME_VERSION__SecScheme0"
.LASF166:
	.string	"SEC_SCHEME_VERSION__SecScheme1"
.LASF69:
	.string	"reserved3"
.LASF87:
	.string	"ProtobufCMessage"
.LASF190:
	.string	"sec_scheme_version__enum_values_by_number"
.LASF33:
	.string	"PROTOBUF_C_TYPE_FIXED64"
.LASF55:
	.string	"ProtobufCEnumDescriptor"
.LASF15:
	.string	"uint32_t"
.LASF85:
	.string	"start_value"
.LASF94:
	.string	"fields_sorted_by_name"
.LASF54:
	.string	"append"
.LASF113:
	.string	"base"
.LASF74:
	.string	"index"
.LASF180:
	.string	"session_data__pack"
.LASF9:
	.string	"long long unsigned int"
.LASF41:
	.string	"ProtobufCType"
.LASF92:
	.string	"n_fields"
.LASF136:
	.string	"device_verify_data"
.LASF96:
	.string	"field_ranges"
.LASF108:
	.string	"STATUS__InvalidSession"
.LASF124:
	.string	"_SEC0_MSG_TYPE_IS_INT_SIZE"
.LASF117:
	.string	"Sec0Payload"
.LASF72:
	.string	"value"
.LASF109:
	.string	"_STATUS_IS_INT_SIZE"
.LASF145:
	.string	"_Sec1Payload"
.LASF3:
	.string	"size_t"
.LASF64:
	.string	"values_by_name"
.LASF98:
	.string	"ProtobufCMessageUnknownField"
.LASF79:
	.string	"offset"
.LASF141:
	.string	"_SessionResp0"
.LASF100:
	.string	"ProtobufCMessageInit"
.LASF139:
	.string	"client_pubkey"
.LASF183:
	.string	"session_data__unpack"
.LASF147:
	.string	"SEC1_MSG_TYPE__Session_Command0"
.LASF149:
	.string	"SEC1_MSG_TYPE__Session_Command1"
.LASF140:
	.string	"SessionResp0"
.LASF134:
	.string	"SessionResp1"
.LASF16:
	.string	"PROTOBUF_C_FIELD_FLAG_PACKED"
.LASF49:
	.string	"free"
.LASF101:
	.string	"STATUS__Success"
.LASF80:
	.string	"descriptor"
.LASF192:
	.string	"sec_scheme_version__enum_values_by_name"
.LASF119:
	.string	"payload_case"
.LASF185:
	.string	"session_data__init"
.LASF114:
	.string	"S0SessionResp"
.LASF47:
	.string	"ProtobufCAllocator"
.LASF61:
	.string	"n_values"
.LASF13:
	.string	"char"
.LASF174:
	.string	"sec0"
.LASF175:
	.string	"sec1"
.LASF168:
	.string	"SecSchemeVersion"
.LASF93:
	.string	"fields"
.LASF153:
	.string	"SEC1_PAYLOAD__PAYLOAD__NOT_SET"
.LASF142:
	.string	"device_pubkey"
.LASF52:
	.string	"data"
.LASF89:
	.string	"unknown_fields"
.LASF177:
	.string	"init_value"
.LASF130:
	.string	"Sec0Payload__PayloadCase"
.LASF14:
	.string	"uint8_t"
.LASF116:
	.string	"status"
.LASF40:
	.string	"PROTOBUF_C_TYPE_MESSAGE"
.LASF95:
	.string	"n_field_ranges"
.LASF90:
	.string	"ProtobufCMessageDescriptor"
.LASF170:
	.string	"SESSION_DATA__PROTO_SEC0"
.LASF171:
	.string	"SESSION_DATA__PROTO_SEC1"
.LASF143:
	.string	"device_random"
.LASF18:
	.string	"PROTOBUF_C_FIELD_FLAG_ONEOF"
.LASF44:
	.string	"PROTOBUF_C_WIRE_TYPE_LENGTH_PREFIXED"
.LASF37:
	.string	"PROTOBUF_C_TYPE_ENUM"
.LASF162:
	.string	"sec_ver"
.LASF8:
	.string	"long long int"
.LASF63:
	.string	"n_value_names"
.LASF88:
	.string	"n_unknown_fields"
.LASF196:
	.string	"session_data__descriptor"
.LASF23:
	.string	"ProtobufCLabel"
.LASF59:
	.string	"c_name"
.LASF148:
	.string	"SEC1_MSG_TYPE__Session_Response0"
.LASF58:
	.string	"short_name"
.LASF133:
	.string	"client_verify_data"
.LASF169:
	.string	"SESSION_DATA__PROTO__NOT_SET"
.LASF103:
	.string	"STATUS__InvalidProto"
.LASF22:
	.string	"PROTOBUF_C_LABEL_NONE"
.LASF144:
	.string	"Sec1Payload"
.LASF38:
	.string	"PROTOBUF_C_TYPE_STRING"
.LASF65:
	.string	"n_value_ranges"
.LASF135:
	.string	"_SessionResp1"
.LASF202:
	.string	"protobuf_c_message_free_unpacked"
.LASF99:
	.string	"wire_type"
.LASF104:
	.string	"STATUS__TooManySessions"
.LASF62:
	.string	"values"
.LASF75:
	.string	"ProtobufCFieldDescriptor"
.LASF121:
	.string	"_Sec0MsgType"
.LASF51:
	.string	"ProtobufCBinaryData"
.LASF34:
	.string	"PROTOBUF_C_TYPE_FLOAT"
.LASF105:
	.string	"STATUS__InvalidArgument"
.LASF102:
	.string	"STATUS__InvalidSecScheme"
.LASF25:
	.string	"PROTOBUF_C_TYPE_SINT32"
.LASF46:
	.string	"ProtobufCWireType"
.LASF150:
	.string	"SEC1_MSG_TYPE__Session_Response1"
.LASF86:
	.string	"orig_index"
.LASF178:
	.string	"__func__"
.LASF161:
	.string	"_SessionData"
.LASF48:
	.string	"alloc"
.LASF6:
	.string	"short int"
.LASF191:
	.string	"sec_scheme_version__value_ranges"
.LASF184:
	.string	"allocator"
.LASF10:
	.string	"long int"
.LASF189:
	.string	"session_data__number_ranges"
.LASF129:
	.string	"_SEC0_PAYLOAD__PAYLOAD_IS_INT_SIZE"
.LASF60:
	.string	"package_name"
.LASF194:
	.string	"sec1_payload__descriptor"
.LASF17:
	.string	"PROTOBUF_C_FIELD_FLAG_DEPRECATED"
.LASF20:
	.string	"PROTOBUF_C_LABEL_OPTIONAL"
.LASF71:
	.string	"ProtobufCEnumValue"
.LASF111:
	.string	"S0SessionCmd"
.LASF107:
	.string	"STATUS__CryptoError"
.LASF50:
	.string	"allocator_data"
.LASF67:
	.string	"reserved1"
.LASF68:
	.string	"reserved2"
.LASF4:
	.string	"__uint8_t"
.LASF70:
	.string	"reserved4"
.LASF151:
	.string	"_SEC1_MSG_TYPE_IS_INT_SIZE"
.LASF57:
	.string	"name"
.LASF122:
	.string	"SEC0_MSG_TYPE__S0_Session_Command"
.LASF132:
	.string	"_SessionCmd1"
.LASF24:
	.string	"PROTOBUF_C_TYPE_INT32"
.LASF36:
	.string	"PROTOBUF_C_TYPE_BOOL"
.LASF56:
	.string	"magic"
.LASF181:
	.string	"session_data__pack_to_buffer"
.LASF84:
	.string	"ProtobufCIntRange"
.LASF158:
	.string	"_SEC1_PAYLOAD__PAYLOAD_IS_INT_SIZE"
.LASF187:
	.string	"session_data__field_descriptors"
.LASF11:
	.string	"sizetype"
.LASF12:
	.string	"long unsigned int"
.LASF78:
	.string	"quantifier_offset"
.LASF163:
	.string	"proto_case"
.LASF167:
	.string	"_SEC_SCHEME_VERSION_IS_INT_SIZE"
.LASF81:
	.string	"default_value"
.LASF30:
	.string	"PROTOBUF_C_TYPE_UINT32"
.LASF77:
	.string	"type"
.LASF125:
	.string	"Sec0MsgType"
.LASF5:
	.string	"unsigned char"
.LASF7:
	.string	"__uint32_t"
.LASF188:
	.string	"session_data__field_indices_by_name"
.LASF66:
	.string	"value_ranges"
.LASF28:
	.string	"PROTOBUF_C_TYPE_SINT64"
.LASF126:
	.string	"SEC0_PAYLOAD__PAYLOAD__NOT_SET"
.LASF146:
	.string	"_Sec1MsgType"
.LASF26:
	.string	"PROTOBUF_C_TYPE_SFIXED32"
.LASF123:
	.string	"SEC0_MSG_TYPE__S0_Session_Response"
.LASF200:
	.string	"protobuf_c_message_pack_to_buffer"
.LASF186:
	.string	"session_data__free_unpacked"
.LASF76:
	.string	"label"
.LASF199:
	.string	"protobuf_c_message_pack"
.LASF198:
	.string	"protobuf_c_message_get_packed_size"
.LASF164:
	.string	"_SecSchemeVersion"
.LASF2:
	.string	"signed char"
.LASF1:
	.string	"short unsigned int"
.LASF127:
	.string	"SEC0_PAYLOAD__PAYLOAD_SC"
.LASF118:
	.string	"_Sec0Payload"
.LASF112:
	.string	"_S0SessionCmd"
.LASF128:
	.string	"SEC0_PAYLOAD__PAYLOAD_SR"
.LASF53:
	.string	"ProtobufCBuffer"
.LASF106:
	.string	"STATUS__InternalError"
.LASF138:
	.string	"_SessionCmd0"
.LASF27:
	.string	"PROTOBUF_C_TYPE_INT64"
.LASF45:
	.string	"PROTOBUF_C_WIRE_TYPE_32BIT"
.LASF172:
	.string	"_SESSION_DATA__PROTO_IS_INT_SIZE"
.LASF155:
	.string	"SEC1_PAYLOAD__PAYLOAD_SR0"
.LASF157:
	.string	"SEC1_PAYLOAD__PAYLOAD_SR1"
.LASF31:
	.string	"PROTOBUF_C_TYPE_FIXED32"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
