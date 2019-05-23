	.file	"bootloader_random.c"
	.text
.Ltext0:
	.section	.text.bootloader_fill_random,"ax",@progbits
	.align	4
	.global	bootloader_fill_random
	.type	bootloader_fill_random, @function
bootloader_fill_random:
.LFB14:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/src/bootloader_random.c"
	.loc 1 28 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 29 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_fill_random
.LVL1:
	retw.n
.LFE14:
	.size	bootloader_fill_random, .-bootloader_fill_random
	.section	.text.bootloader_random_enable,"ax",@progbits
	.literal_position
	.literal .LC0, 1072693452
	.literal .LC1, 32768
	.literal .LC2, 1072988328
	.literal .LC3, 1073741823
	.literal .LC4, -2147483648
	.literal .LC5, 536870912
	.literal .LC6, 1072990252
	.literal .LC7, 1072693440
	.literal .LC8, 1073111084
	.literal .LC9, -1381126739
	.literal .LC10, 1073111088
	.literal .LC11, 1073111092
	.literal .LC12, 1073111096
	.literal .LC13, 1072990220
	.literal .LC14, 786432
	.literal .LC15, 1072990208
	.literal .LC16, 134217728
	.literal .LC17, 1072990352
	.literal .LC18, 268435456
	.literal .LC19, 1073111056
	.literal .LC20, -32641
	.literal .LC21, 1073111064
	.literal .LC22, -16711681
	.literal .LC23, 655360
	.literal .LC24, -33554433
	.literal .LC25, 1073017008
	.literal .LC26, -4033
	.literal .LC27, 67108864
	.literal .LC28, 1073017000
	.literal .LC29, 1073016840
	.align	4
	.global	bootloader_random_enable
	.type	bootloader_random_enable, @function
bootloader_random_enable:
.LFB15:
	.loc 1 64 0
	entry	sp, 32
.LCFI1:
.LVL2:
.LBB121:
.LBB122:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 172 0
	l32r	a3, .LC0
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL3:
.LBE122:
.LBE121:
	.loc 1 68 0
	l32r	a2, .LC1
	or	a10, a10, a2
	memw
	s32i.n	a10, a3, 0
.LBB123:
.LBB124:
	.loc 1 76 0
	l32r	a2, .LC2
	memw
	l32i.n	a8, a2, 0
.LBE124:
	l32r	a3, .LC3
	and	a8, a8, a3
	l32r	a3, .LC4
	or	a3, a8, a3
	memw
	s32i.n	a3, a2, 0
.LBE123:
.LBB125:
.LBB126:
	.loc 1 77 0
	memw
	l32i.n	a4, a2, 0
.LBE126:
	l32r	a3, .LC5
	or	a3, a4, a3
	memw
	s32i.n	a3, a2, 0
.LBE125:
.LBB127:
.LBB128:
	.loc 1 78 0
	l32r	a2, .LC6
	memw
	l32i.n	a8, a2, 0
.LBE128:
	movi.n	a3, 0x10
	or	a8, a8, a3
	memw
	s32i.n	a8, a2, 0
.LVL4:
.LBE127:
.LBB129:
.LBB130:
	.loc 2 172 0
	l32r	a4, .LC7
	mov.n	a10, a4
	call8	esp_dport_access_reg_read
.LVL5:
.LBE130:
.LBE129:
	.loc 1 80 0
	or	a10, a10, a3
	memw
	s32i.n	a10, a4, 0
.LBB131:
.LBB132:
	.loc 1 81 0
	memw
	l32i.n	a4, a2, 0
.LBE132:
	movi	a8, -0x101
	and	a8, a4, a8
	memw
	s32i.n	a8, a2, 0
.LBE131:
.LBB133:
.LBB134:
	.loc 1 82 0
	memw
	l32i.n	a4, a2, 0
.LBE134:
	movi	a8, -0x201
	and	a8, a4, a8
	memw
	s32i.n	a8, a2, 0
.LBE133:
.LBB135:
	.loc 1 87 0
	l32r	a2, .LC9
	l32r	a4, .LC8
	memw
	s32i.n	a2, a4, 0
.LBE135:
.LBB136:
	.loc 1 88 0
	l32r	a4, .LC10
	memw
	s32i.n	a2, a4, 0
.LBE136:
.LBB137:
	.loc 1 89 0
	l32r	a4, .LC11
	memw
	s32i.n	a2, a4, 0
.LBE137:
.LBB138:
	.loc 1 90 0
	l32r	a4, .LC12
	memw
	s32i.n	a2, a4, 0
.LBE138:
.LBB139:
.LBB140:
	.loc 1 92 0
	l32r	a8, .LC13
	memw
	l32i.n	a4, a8, 0
.LBE140:
	l32r	a2, .LC14
	or	a2, a4, a2
	memw
	s32i.n	a2, a8, 0
.LBE139:
.LBB141:
.LBB142:
	.loc 1 93 0
	l32r	a8, .LC15
	memw
	l32i.n	a4, a8, 0
.LBE142:
	l32r	a2, .LC16
	or	a2, a4, a2
	memw
	s32i.n	a2, a8, 0
.LBE141:
.LBB143:
.LBB144:
	.loc 1 94 0
	l32r	a8, .LC17
	memw
	l32i.n	a4, a8, 0
.LBE144:
	l32r	a2, .LC18
	or	a2, a4, a2
	memw
	s32i.n	a2, a8, 0
.LBE143:
.LBB145:
.LBB146:
	.loc 1 95 0
	l32r	a8, .LC19
	memw
	l32i.n	a4, a8, 0
.LBE146:
	movi.n	a2, 4
	or	a2, a4, a2
	memw
	s32i.n	a2, a8, 0
.LBE145:
.LBB147:
.LBB148:
	.loc 1 96 0
	memw
	l32i.n	a9, a8, 0
.LBE148:
	l32r	a2, .LC20
	and	a9, a9, a2
	movi	a2, 0x200
	or	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
.LBE147:
.LBB149:
.LBB150:
	.loc 1 98 0
	l32r	a10, .LC21
	memw
	l32i.n	a4, a10, 0
.LBE150:
	movi	a2, -0x100
	and	a2, a4, a2
	movi.n	a9, 8
	or	a2, a2, a9
	memw
	s32i.n	a2, a10, 0
.LBE149:
.LBB151:
.LBB152:
	.loc 1 99 0
	memw
	l32i.n	a11, a10, 0
.LBE152:
	l32r	a2, .LC22
	and	a11, a11, a2
	l32r	a2, .LC23
	or	a2, a11, a2
	memw
	s32i.n	a2, a10, 0
.LBE151:
.LBB153:
.LBB154:
	.loc 1 100 0
	memw
	l32i.n	a4, a8, 0
.LBE154:
	movi.n	a2, -0x19
	and	a2, a4, a2
	memw
	s32i.n	a2, a8, 0
.LBE153:
.LBB155:
.LBB156:
	.loc 1 101 0
	memw
	l32i.n	a10, a8, 0
.LBE156:
	movi.n	a2, 0x20
	or	a10, a10, a2
	memw
	s32i.n	a10, a8, 0
.LBE155:
.LBB157:
.LBB158:
	.loc 1 102 0
	memw
	l32i.n	a4, a8, 0
.LBE158:
	l32r	a10, .LC24
	and	a10, a4, a10
	memw
	s32i.n	a10, a8, 0
.LBE157:
.LBB159:
.LBB160:
	.loc 1 104 0
	l32r	a12, .LC25
	memw
	l32i.n	a11, a12, 0
.LBE160:
	l32r	a10, .LC26
	and	a11, a11, a10
	movi	a10, 0x500
	or	a10, a11, a10
	memw
	s32i.n	a10, a12, 0
.LBE159:
.LBB161:
.LBB162:
	.loc 1 106 0
	memw
	l32i.n	a4, a8, 0
.LBE162:
	l32r	a10, .LC27
	or	a10, a4, a10
	memw
	s32i.n	a10, a8, 0
.LBE161:
.LBB163:
.LBB164:
	.loc 1 108 0
	l32r	a8, .LC28
	memw
	l32i.n	a4, a8, 0
.LBE164:
	movi.n	a10, -2
	and	a10, a4, a10
	memw
	s32i.n	a10, a8, 0
.LBE163:
.LBB165:
.LBB166:
	.loc 1 109 0
	memw
	l32i.n	a10, a8, 0
.LBE166:
	or	a10, a10, a2
	memw
	s32i.n	a10, a8, 0
.LBE165:
.LBB167:
.LBB168:
	.loc 1 110 0
	memw
	l32i.n	a4, a8, 0
.LBE168:
	or	a3, a4, a3
	memw
	s32i.n	a3, a8, 0
.LBE167:
.LBB169:
.LBB170:
	.loc 1 111 0
	memw
	l32i.n	a3, a8, 0
.LBE170:
	or	a9, a3, a9
	memw
	s32i.n	a9, a8, 0
.LBE169:
.LBB171:
.LBB172:
	.loc 1 112 0
	l32r	a3, .LC29
	memw
	l32i.n	a4, a3, 0
.LBE172:
	or	a2, a4, a2
	memw
	s32i.n	a2, a3, 0
	retw.n
.LBE171:
.LFE15:
	.size	bootloader_random_enable, .-bootloader_random_enable
	.section	.text.bootloader_random_disable,"ax",@progbits
	.literal_position
	.literal .LC30, 1072693440
	.literal .LC31, 1073017000
	.literal .LC32, 1073016840
	.literal .LC33, 1072990208
	.literal .LC34, -134217729
	.literal .LC35, 1072990352
	.literal .LC36, -268435457
	.literal .LC37, 1072990252
	.literal .LC38, 1073111056
	.literal .LC39, -67108901
	.literal .LC40, 1072990220
	.literal .LC41, -786433
	.literal .LC42, 1073111064
	.literal .LC43, -16711681
	.literal .LC44, 524288
	.literal .LC45, 1072693444
	.literal .LC46, 1072988328
	.literal .LC47, -536870913
	.literal .LC48, 1073741823
	.align	4
	.global	bootloader_random_disable
	.type	bootloader_random_disable, @function
bootloader_random_disable:
.LFB16:
	.loc 1 116 0
	entry	sp, 32
.LCFI2:
.LVL6:
.LBB173:
.LBB174:
	.loc 2 172 0
	l32r	a3, .LC30
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL7:
.LBE174:
.LBE173:
	.loc 1 118 0
	movi.n	a2, -0x11
	and	a10, a10, a2
	memw
	s32i.n	a10, a3, 0
.LBB175:
.LBB176:
	.loc 1 123 0
	l32r	a8, .LC31
	memw
	l32i.n	a9, a8, 0
.LBE176:
	movi.n	a3, -2
	and	a3, a9, a3
	memw
	s32i.n	a3, a8, 0
.LBE175:
.LBB177:
.LBB178:
	.loc 1 124 0
	memw
	l32i.n	a9, a8, 0
.LBE178:
	movi	a3, -0x21
	and	a9, a9, a3
	memw
	s32i.n	a9, a8, 0
.LBE177:
.LBB179:
.LBB180:
	.loc 1 125 0
	memw
	l32i.n	a10, a8, 0
.LBE180:
	movi.n	a9, -9
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE179:
.LBB181:
.LBB182:
	.loc 1 126 0
	memw
	l32i.n	a9, a8, 0
.LBE182:
	and	a9, a9, a2
	memw
	s32i.n	a9, a8, 0
.LBE181:
.LBB183:
.LBB184:
	.loc 1 127 0
	l32r	a8, .LC32
	memw
	l32i.n	a9, a8, 0
.LBE184:
	and	a3, a9, a3
	memw
	s32i.n	a3, a8, 0
.LBE183:
.LBB185:
.LBB186:
	.loc 1 130 0
	l32r	a8, .LC33
	memw
	l32i.n	a9, a8, 0
.LBE186:
	l32r	a3, .LC34
	and	a3, a9, a3
	memw
	s32i.n	a3, a8, 0
.LBE185:
.LBB187:
.LBB188:
	.loc 1 131 0
	l32r	a8, .LC35
	memw
	l32i.n	a9, a8, 0
.LBE188:
	l32r	a3, .LC36
	and	a3, a9, a3
	memw
	s32i.n	a3, a8, 0
.LBE187:
.LBB189:
.LBB190:
	.loc 1 134 0
	l32r	a8, .LC37
	memw
	l32i.n	a3, a8, 0
.LBE190:
	and	a3, a3, a2
	memw
	s32i.n	a3, a8, 0
.LBE189:
.LBB191:
.LBB192:
	.loc 1 135 0
	l32r	a8, .LC38
	memw
	l32i.n	a9, a8, 0
.LBE192:
	l32r	a3, .LC39
	and	a3, a9, a3
	memw
	s32i.n	a3, a8, 0
.LBE191:
.LBB193:
.LBB194:
	.loc 1 137 0
	l32r	a8, .LC40
	memw
	l32i.n	a9, a8, 0
.LBE194:
	l32r	a3, .LC41
	and	a3, a9, a3
	memw
	s32i.n	a3, a8, 0
.LBE193:
.LBB195:
.LBB196:
	.loc 1 138 0
	l32r	a9, .LC42
	memw
	l32i.n	a8, a9, 0
.LBE196:
	l32r	a3, .LC43
	and	a8, a8, a3
	l32r	a3, .LC44
	or	a3, a8, a3
	memw
	s32i.n	a3, a9, 0
.LVL8:
.LBE195:
.LBB197:
.LBB198:
	.loc 2 172 0
	l32r	a3, .LC45
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL9:
.LBE198:
.LBE197:
	.loc 1 141 0
	movi.n	a8, 0x10
	or	a10, a10, a8
	memw
	s32i.n	a10, a3, 0
.LVL10:
.LBB199:
.LBB200:
	.loc 2 172 0
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL11:
.LBE200:
.LBE199:
	.loc 1 142 0
	and	a10, a10, a2
	memw
	s32i.n	a10, a3, 0
.LBB201:
.LBB202:
	.loc 1 145 0
	l32r	a2, .LC46
	memw
	l32i.n	a8, a2, 0
.LBE202:
	l32r	a3, .LC47
	and	a3, a8, a3
	memw
	s32i.n	a3, a2, 0
.LBE201:
.LBB203:
.LBB204:
	.loc 1 146 0
	memw
	l32i.n	a8, a2, 0
.LBE204:
	l32r	a3, .LC48
	and	a3, a8, a3
	memw
	s32i.n	a3, a2, 0
	retw.n
.LBE203:
.LFE16:
	.size	bootloader_random_disable, .-bootloader_random_disable
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI0-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI1-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 3 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_system.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_dport_access.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x259
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0xc
	.4byte	.LASF24
	.4byte	.LASF25
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x4
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x5
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF14
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x2
	.byte	0xa7
	.4byte	0x73
	.byte	0x3
	.4byte	0xbf
	.uleb128 0x7
	.string	"reg"
	.byte	0x2
	.byte	0xa7
	.4byte	0x73
	.byte	0
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1b
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x105
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1b
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1b
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xa
	.4byte	.LVL1
	.4byte	0x246
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x3f
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17a
	.uleb128 0xc
	.4byte	.LASF20
	.4byte	0x18a
	.uleb128 0xd
	.4byte	0xa3
	.4byte	.LBB121
	.4byte	.LBE121-.LBB121
	.byte	0x1
	.byte	0x44
	.4byte	0x150
	.uleb128 0xe
	.4byte	0xb3
	.4byte	0x3ff000cc
	.uleb128 0xa
	.4byte	.LVL3
	.4byte	0x251
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0xa3
	.4byte	.LBB129
	.4byte	.LBE129-.LBB129
	.byte	0x1
	.byte	0x50
	.uleb128 0xe
	.4byte	0xb3
	.4byte	0x3ff000c0
	.uleb128 0xa
	.4byte	.LVL5
	.4byte	0x251
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x95
	.4byte	0x18a
	.uleb128 0x11
	.4byte	0x85
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.4byte	0x17a
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x73
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x231
	.uleb128 0xc
	.4byte	.LASF20
	.4byte	0x241
	.uleb128 0xd
	.4byte	0xa3
	.4byte	.LBB173
	.4byte	.LBE173-.LBB173
	.byte	0x1
	.byte	0x76
	.4byte	0x1da
	.uleb128 0xe
	.4byte	0xb3
	.4byte	0x3ff000c0
	.uleb128 0xa
	.4byte	.LVL7
	.4byte	0x251
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0xa3
	.4byte	.LBB197
	.4byte	.LBE197-.LBB197
	.byte	0x1
	.byte	0x8d
	.4byte	0x207
	.uleb128 0xe
	.4byte	0xb3
	.4byte	0x3ff000c4
	.uleb128 0xa
	.4byte	.LVL9
	.4byte	0x251
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0xa3
	.4byte	.LBB199
	.4byte	.LBE199-.LBB199
	.byte	0x1
	.byte	0x8e
	.uleb128 0xe
	.4byte	0xb3
	.4byte	0x3ff000c4
	.uleb128 0xa
	.4byte	.LVL11
	.4byte	0x251
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x95
	.4byte	0x241
	.uleb128 0x11
	.4byte	0x85
	.byte	0x19
	.byte	0
	.uleb128 0x12
	.4byte	0x231
	.uleb128 0x13
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x6
	.byte	0xb1
	.uleb128 0x13
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x7
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"bootloader_random_enable"
.LASF0:
	.string	"unsigned int"
.LASF19:
	.string	"bootloader_random_disable"
.LASF5:
	.string	"size_t"
.LASF23:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF22:
	.string	"esp_dport_access_reg_read"
.LASF12:
	.string	"long unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF16:
	.string	"length"
.LASF3:
	.string	"unsigned char"
.LASF20:
	.string	"__func__"
.LASF21:
	.string	"esp_fill_random"
.LASF13:
	.string	"char"
.LASF9:
	.string	"uint32_t"
.LASF25:
	.string	"/home/raphael/rtone/lcd/build/bootloader_support"
.LASF14:
	.string	"_Bool"
.LASF7:
	.string	"long long int"
.LASF6:
	.string	"__uint32_t"
.LASF24:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/bootloader_support/src/bootloader_random.c"
.LASF1:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF10:
	.string	"long int"
.LASF26:
	.string	"DPORT_READ_PERI_REG"
.LASF4:
	.string	"short int"
.LASF15:
	.string	"buffer"
.LASF17:
	.string	"bootloader_fill_random"
.LASF11:
	.string	"sizetype"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
