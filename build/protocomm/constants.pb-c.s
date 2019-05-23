	.file	"constants.pb-c.c"
	.text
.Ltext0:
	.global	status__descriptor
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"Status"
	.align	4
.LC1:
	.string	""
	.section	.rodata.status__descriptor,"a",@progbits
	.align	4
	.type	status__descriptor, @object
	.size	status__descriptor, 60
status__descriptor:
	.word	289609135
	.word	.LC0
	.word	.LC0
	.word	.LC0
	.word	.LC1
	.word	8
	.word	status__enum_values_by_number
	.word	8
	.word	status__enum_values_by_name
	.word	1
	.word	status__value_ranges
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata.str1.4
	.align	4
.LC2:
	.string	"CryptoError"
	.align	4
.LC3:
	.string	"InternalError"
	.align	4
.LC4:
	.string	"InvalidArgument"
	.align	4
.LC5:
	.string	"InvalidProto"
	.align	4
.LC6:
	.string	"InvalidSecScheme"
	.align	4
.LC7:
	.string	"InvalidSession"
	.align	4
.LC8:
	.string	"Success"
	.align	4
.LC9:
	.string	"TooManySessions"
	.section	.rodata.status__enum_values_by_name,"a",@progbits
	.align	4
	.type	status__enum_values_by_name, @object
	.size	status__enum_values_by_name, 64
status__enum_values_by_name:
	.word	.LC2
	.word	6
	.word	.LC3
	.word	5
	.word	.LC4
	.word	4
	.word	.LC5
	.word	2
	.word	.LC6
	.word	1
	.word	.LC7
	.word	7
	.word	.LC8
	.word	0
	.word	.LC9
	.word	3
	.section	.rodata.status__value_ranges,"a",@progbits
	.align	4
	.type	status__value_ranges, @object
	.size	status__value_ranges, 16
status__value_ranges:
	.word	0
	.word	0
	.word	0
	.word	8
	.section	.rodata.str1.4
	.align	4
.LC10:
	.string	"STATUS__Success"
	.align	4
.LC11:
	.string	"STATUS__InvalidSecScheme"
	.align	4
.LC12:
	.string	"STATUS__InvalidProto"
	.align	4
.LC13:
	.string	"STATUS__TooManySessions"
	.align	4
.LC14:
	.string	"STATUS__InvalidArgument"
	.align	4
.LC15:
	.string	"STATUS__InternalError"
	.align	4
.LC16:
	.string	"STATUS__CryptoError"
	.align	4
.LC17:
	.string	"STATUS__InvalidSession"
	.section	.rodata.status__enum_values_by_number,"a",@progbits
	.align	4
	.type	status__enum_values_by_number, @object
	.size	status__enum_values_by_number, 96
status__enum_values_by_number:
	.word	.LC8
	.word	.LC10
	.word	0
	.word	.LC6
	.word	.LC11
	.word	1
	.word	.LC5
	.word	.LC12
	.word	2
	.word	.LC9
	.word	.LC13
	.word	3
	.word	.LC4
	.word	.LC14
	.word	4
	.word	.LC3
	.word	.LC15
	.word	5
	.word	.LC2
	.word	.LC16
	.word	6
	.word	.LC7
	.word	.LC17
	.word	7
	.text
.Letext0:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protobuf-c/protobuf-c/protobuf-c/protobuf-c.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/proto-c/constants.pb-c.c"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2bc
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0xc
	.4byte	.LASF40
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
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x1
	.byte	0x1a
	.4byte	0x19
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
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x4
	.4byte	0x80
	.uleb128 0x7
	.4byte	0x73
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0x2d
	.4byte	0x43
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x3
	.2byte	0x16a
	.4byte	0x9c
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x3c
	.byte	0x3
	.2byte	0x1ef
	.4byte	0x16d
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x3
	.2byte	0x1f1
	.4byte	0x85
	.byte	0
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x3
	.2byte	0x1f4
	.4byte	0x7a
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x3
	.2byte	0x1f6
	.4byte	0x7a
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x1f8
	.4byte	0x7a
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x1fa
	.4byte	0x7a
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x3
	.2byte	0x1fd
	.4byte	0x19
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x3
	.2byte	0x1ff
	.4byte	0x216
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x3
	.2byte	0x202
	.4byte	0x19
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x3
	.2byte	0x204
	.4byte	0x221
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x3
	.2byte	0x207
	.4byte	0x19
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x3
	.2byte	0x209
	.4byte	0x22c
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x3
	.2byte	0x20c
	.4byte	0x6a
	.byte	0x2c
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x3
	.2byte	0x20e
	.4byte	0x6a
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x3
	.2byte	0x210
	.4byte	0x6a
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x3
	.2byte	0x212
	.4byte	0x6a
	.byte	0x38
	.byte	0
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x3
	.2byte	0x16b
	.4byte	0x179
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0xc
	.byte	0x3
	.2byte	0x218
	.4byte	0x1ae
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x3
	.2byte	0x21a
	.4byte	0x7a
	.byte	0
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x21d
	.4byte	0x7a
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x3
	.2byte	0x220
	.4byte	0x27
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x3
	.2byte	0x16c
	.4byte	0x1ba
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x8
	.byte	0x3
	.2byte	0x226
	.4byte	0x1e2
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x3
	.2byte	0x228
	.4byte	0x7a
	.byte	0
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x3
	.2byte	0x22a
	.4byte	0x19
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x3
	.2byte	0x16e
	.4byte	0x1ee
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x8
	.byte	0x3
	.2byte	0x270
	.4byte	0x216
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x3
	.2byte	0x271
	.4byte	0x27
	.byte	0
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x3
	.2byte	0x272
	.4byte	0x19
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x21c
	.uleb128 0x7
	.4byte	0x16d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x227
	.uleb128 0x7
	.4byte	0x1ae
	.uleb128 0x6
	.byte	0x4
	.4byte	0x232
	.uleb128 0x7
	.4byte	0x1e2
	.uleb128 0xb
	.4byte	0x16d
	.4byte	0x247
	.uleb128 0xc
	.4byte	0x63
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x4
	.byte	0xa
	.4byte	0x258
	.uleb128 0x5
	.byte	0x3
	.4byte	status__enum_values_by_number
	.uleb128 0x7
	.4byte	0x237
	.uleb128 0xb
	.4byte	0x1e2
	.4byte	0x26d
	.uleb128 0xc
	.4byte	0x63
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x4
	.byte	0x15
	.4byte	0x27e
	.uleb128 0x5
	.byte	0x3
	.4byte	status__value_ranges
	.uleb128 0x7
	.4byte	0x25d
	.uleb128 0xb
	.4byte	0x1ae
	.4byte	0x293
	.uleb128 0xc
	.4byte	0x63
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x4
	.byte	0x18
	.4byte	0x2a4
	.uleb128 0x5
	.byte	0x3
	.4byte	status__enum_values_by_name
	.uleb128 0x7
	.4byte	0x283
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x4
	.byte	0x23
	.4byte	0x2ba
	.uleb128 0x5
	.byte	0x3
	.4byte	status__descriptor
	.uleb128 0x7
	.4byte	0x90
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xe
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
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"char"
.LASF24:
	.string	"value_ranges"
.LASF30:
	.string	"value"
.LASF13:
	.string	"ProtobufCEnumDescriptor"
.LASF39:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF23:
	.string	"n_value_ranges"
.LASF14:
	.string	"magic"
.LASF34:
	.string	"start_value"
.LASF26:
	.string	"reserved2"
.LASF9:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF35:
	.string	"orig_index"
.LASF3:
	.string	"unsigned char"
.LASF37:
	.string	"status__value_ranges"
.LASF11:
	.string	"__uint32_t"
.LASF36:
	.string	"status__enum_values_by_number"
.LASF21:
	.string	"n_value_names"
.LASF0:
	.string	"unsigned int"
.LASF29:
	.string	"ProtobufCEnumValue"
.LASF6:
	.string	"long long unsigned int"
.LASF19:
	.string	"n_values"
.LASF18:
	.string	"package_name"
.LASF8:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF38:
	.string	"status__enum_values_by_name"
.LASF20:
	.string	"values"
.LASF32:
	.string	"index"
.LASF22:
	.string	"values_by_name"
.LASF28:
	.string	"reserved4"
.LASF31:
	.string	"ProtobufCEnumValueIndex"
.LASF4:
	.string	"short int"
.LASF40:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/proto-c/constants.pb-c.c"
.LASF41:
	.string	"status__descriptor"
.LASF12:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF33:
	.string	"ProtobufCIntRange"
.LASF17:
	.string	"c_name"
.LASF2:
	.string	"signed char"
.LASF25:
	.string	"reserved1"
.LASF16:
	.string	"short_name"
.LASF27:
	.string	"reserved3"
.LASF15:
	.string	"name"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
