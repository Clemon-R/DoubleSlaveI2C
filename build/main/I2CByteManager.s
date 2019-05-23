	.file	"I2CByteManager.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"%02x "
	.section	.text.displayerBuffer,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.global	displayerBuffer
	.type	displayerBuffer, @function
displayerBuffer:
.LFB20:
	.file 1 "/home/raphael/rtone/lcd/main/I2CByteManager.c"
	.loc 1 5 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 8 0
	movi.n	a4, 0
	j	.L2
.LVL2:
.L4:
	.loc 1 9 0
	add.n	a8, a2, a4
	l8ui	a11, a8, 0
	l32r	a10, .LC1
	call8	printf
.LVL3:
	.loc 1 10 0
	addi.n	a4, a4, 1
.LVL4:
	extui	a8, a4, 0, 4
	bnez.n	a8, .L2
	.loc 1 11 0
	movi.n	a10, 0xa
	call8	putchar
.LVL5:
.L2:
	.loc 1 8 0 discriminator 1
	blt	a4, a3, .L4
	.loc 1 14 0
	movi.n	a10, 0xa
	call8	putchar
.LVL6:
	retw.n
.LFE20:
	.size	displayerBuffer, .-displayerBuffer
	.section	.text.readBytes,"ax",@progbits
	.align	4
	.global	readBytes
	.type	readBytes, @function
readBytes:
.LFB21:
	.loc 1 20 0
.LVL7:
	entry	sp, 32
.LCFI1:
	extui	a3, a3, 0, 8
	.loc 1 21 0
	movi.n	a6, 1
	movi.n	a9, 0
	mov.n	a8, a9
	moveqz	a8, a6, a5
	movnez	a6, a9, a4
	or	a6, a6, a8
	bne	a6, a9, .L8
	.loc 1 24 0
	call8	i2c_cmd_link_create
.LVL8:
	mov.n	a6, a10
.LVL9:
	.loc 1 25 0
	call8	i2c_master_start
.LVL10:
	.loc 1 26 0
	slli	a3, a3, 1
.LVL11:
	movi.n	a11, 1
	or	a11, a3, a11
	movi.n	a12, 1
	extui	a11, a11, 0, 8
	mov.n	a10, a6
	call8	i2c_master_write_byte
.LVL12:
	.loc 1 27 0
	bltui	a5, 2, .L7
	.loc 1 28 0
	movi.n	a13, 0
	addi.n	a12, a5, -1
	mov.n	a11, a4
	mov.n	a10, a6
	call8	i2c_master_read
.LVL13:
.L7:
	.loc 1 30 0
	addi.n	a11, a5, -1
	movi.n	a12, 1
	add.n	a11, a4, a11
	mov.n	a10, a6
	call8	i2c_master_read_byte
.LVL14:
	.loc 1 31 0
	mov.n	a10, a6
	call8	i2c_master_stop
.LVL15:
	.loc 1 32 0
	movi.n	a12, 0
	mov.n	a11, a6
	mov.n	a10, a2
	call8	i2c_master_cmd_begin
.LVL16:
	mov.n	a2, a10
.LVL17:
	.loc 1 33 0
	mov.n	a10, a6
	call8	i2c_cmd_link_delete
.LVL18:
	.loc 1 34 0
	retw.n
.LVL19:
.L8:
	.loc 1 22 0
	movi.n	a2, -1
.LVL20:
	.loc 1 35 0
	retw.n
.LFE21:
	.size	readBytes, .-readBytes
	.section	.text.readByte,"ax",@progbits
	.align	4
	.global	readByte
	.type	readByte, @function
readByte:
.LFB22:
	.loc 1 38 0
.LVL21:
	entry	sp, 32
.LCFI2:
	extui	a3, a3, 0, 8
	.loc 1 39 0
	beqz.n	a4, .L11
	.loc 1 42 0
	call8	i2c_cmd_link_create
.LVL22:
	mov.n	a5, a10
.LVL23:
	.loc 1 43 0
	call8	i2c_master_start
.LVL24:
	.loc 1 44 0
	slli	a3, a3, 1
.LVL25:
	movi.n	a11, 1
	or	a11, a3, a11
	movi.n	a12, 1
	extui	a11, a11, 0, 8
	mov.n	a10, a5
	call8	i2c_master_write_byte
.LVL26:
	.loc 1 45 0
	movi.n	a12, 1
	mov.n	a11, a4
	mov.n	a10, a5
	call8	i2c_master_read_byte
.LVL27:
	.loc 1 46 0
	mov.n	a10, a5
	call8	i2c_master_stop
.LVL28:
	.loc 1 47 0
	movi.n	a12, 0
	mov.n	a11, a5
	mov.n	a10, a2
	call8	i2c_master_cmd_begin
.LVL29:
	mov.n	a2, a10
.LVL30:
	.loc 1 48 0
	mov.n	a10, a5
	call8	i2c_cmd_link_delete
.LVL31:
	.loc 1 49 0
	retw.n
.LVL32:
.L11:
	.loc 1 40 0
	movi.n	a2, 0
.LVL33:
	.loc 1 50 0
	retw.n
.LFE22:
	.size	readByte, .-readByte
	.section	.text.writeByte,"ax",@progbits
	.align	4
	.global	writeByte
	.type	writeByte, @function
writeByte:
.LFB23:
	.loc 1 55 0
.LVL34:
	entry	sp, 32
.LCFI3:
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 56 0
	call8	i2c_cmd_link_create
.LVL35:
	mov.n	a6, a10
.LVL36:
	.loc 1 57 0
	call8	i2c_master_start
.LVL37:
	.loc 1 58 0
	slli	a3, a3, 1
.LVL38:
	extui	a11, a3, 0, 8
	movi.n	a12, 1
	mov.n	a10, a6
	call8	i2c_master_write_byte
.LVL39:
	.loc 1 59 0
	movi.n	a12, 1
	mov.n	a11, a4
	mov.n	a10, a6
	call8	i2c_master_write_byte
.LVL40:
	.loc 1 60 0
	beqz.n	a5, .L13
	.loc 1 61 0
	movi.n	a12, 1
	l8ui	a11, a5, 0
	mov.n	a10, a6
	call8	i2c_master_write_byte
.LVL41:
.L13:
	.loc 1 63 0
	mov.n	a10, a6
	call8	i2c_master_stop
.LVL42:
	.loc 1 64 0
	movi.n	a12, 0
	mov.n	a11, a6
	mov.n	a10, a2
	call8	i2c_master_cmd_begin
.LVL43:
	mov.n	a2, a10
.LVL44:
	.loc 1 65 0
	mov.n	a10, a6
	call8	i2c_cmd_link_delete
.LVL45:
	.loc 1 67 0
	retw.n
.LFE23:
	.size	writeByte, .-writeByte
	.section	.text.writeBytes,"ax",@progbits
	.align	4
	.global	writeBytes
	.type	writeBytes, @function
writeBytes:
.LFB24:
	.loc 1 70 0
.LVL46:
	entry	sp, 32
.LCFI4:
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 71 0
	call8	i2c_cmd_link_create
.LVL47:
	mov.n	a7, a10
.LVL48:
	.loc 1 72 0
	call8	i2c_master_start
.LVL49:
	.loc 1 73 0
	slli	a3, a3, 1
.LVL50:
	extui	a11, a3, 0, 8
	movi.n	a12, 1
	mov.n	a10, a7
	call8	i2c_master_write_byte
.LVL51:
	.loc 1 74 0
	movi.n	a12, 1
	mov.n	a11, a4
	mov.n	a10, a7
	call8	i2c_master_write_byte
.LVL52:
	.loc 1 75 0
	movi.n	a3, 1
	movi.n	a4, 0
.LVL53:
	mov.n	a8, a4
	movnez	a8, a3, a6
	moveqz	a3, a4, a5
	bnone	a3, a8, .L15
	.loc 1 76 0
	movi.n	a13, 1
	mov.n	a12, a6
	mov.n	a11, a5
	mov.n	a10, a7
	call8	i2c_master_write
.LVL54:
.L15:
	.loc 1 78 0
	mov.n	a10, a7
	call8	i2c_master_stop
.LVL55:
	.loc 1 79 0
	movi.n	a12, 0
	mov.n	a11, a7
	mov.n	a10, a2
	call8	i2c_master_cmd_begin
.LVL56:
	mov.n	a2, a10
.LVL57:
	.loc 1 80 0
	mov.n	a10, a7
	call8	i2c_cmd_link_delete
.LVL58:
	.loc 1 82 0
	retw.n
.LFE24:
	.size	writeBytes, .-writeBytes
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
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI1-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI2-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI3-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI4-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/driver/include/driver/i2c.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdio.h"
	.file 8 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6ba
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0xc
	.4byte	.LASF48
	.4byte	.LASF49
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x19
	.4byte	0x57
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0xd8
	.4byte	0x5e
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x18
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x3c
	.4byte	0xe3
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x40
	.4byte	0xc4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x48
	.4byte	0x113
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x6
	.byte	0x4d
	.4byte	0xee
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x65
	.4byte	0x7e
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x1
	.byte	0x4
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19f
	.uleb128 0x9
	.string	"buf"
	.byte	0x1
	.byte	0x4
	.4byte	0x19f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.string	"len"
	.byte	0x1
	.byte	0x4
	.4byte	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x6
	.4byte	0x57
	.4byte	.LLST0
	.uleb128 0xb
	.4byte	.LVL3
	.4byte	0x63a
	.4byte	0x17c
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL5
	.4byte	0x645
	.4byte	0x18f
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0xd
	.4byte	.LVL6
	.4byte	0x645
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9c
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x1
	.byte	0x13
	.4byte	0xb2
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d7
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0x13
	.4byte	0xe3
	.4byte	.LLST1
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0x13
	.4byte	0x9c
	.4byte	.LLST2
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x1
	.byte	0x13
	.4byte	0x19f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x1
	.byte	0x13
	.4byte	0x73
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xa
	.string	"cmd"
	.byte	0x1
	.byte	0x18
	.4byte	0x11e
	.4byte	.LLST3
	.uleb128 0xa
	.string	"ret"
	.byte	0x1
	.byte	0x20
	.4byte	0xb2
	.4byte	.LLST4
	.uleb128 0x12
	.4byte	.LVL8
	.4byte	0x654
	.uleb128 0xb
	.4byte	.LVL10
	.4byte	0x65f
	.4byte	0x231
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL12
	.4byte	0x66a
	.4byte	0x24a
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xb
	.4byte	.LVL13
	.4byte	0x676
	.4byte	0x26f
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 -1
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.4byte	.LVL14
	.4byte	0x682
	.4byte	0x293
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xb
	.4byte	.LVL15
	.4byte	0x68e
	.4byte	0x2a7
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL16
	.4byte	0x69a
	.4byte	0x2c6
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xd
	.4byte	.LVL18
	.4byte	0x6a6
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0x25
	.4byte	0xb2
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d2
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0x25
	.4byte	0xe3
	.4byte	.LLST5
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0x25
	.4byte	0x9c
	.4byte	.LLST6
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x1
	.byte	0x25
	.4byte	0x19f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xa
	.string	"cmd"
	.byte	0x1
	.byte	0x2a
	.4byte	0x11e
	.4byte	.LLST7
	.uleb128 0xa
	.string	"ret"
	.byte	0x1
	.byte	0x2f
	.4byte	0xb2
	.4byte	.LLST8
	.uleb128 0x12
	.4byte	.LVL22
	.4byte	0x654
	.uleb128 0xb
	.4byte	.LVL24
	.4byte	0x65f
	.4byte	0x356
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL26
	.4byte	0x66a
	.4byte	0x36f
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xb
	.4byte	.LVL27
	.4byte	0x682
	.4byte	0x38e
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xb
	.4byte	.LVL28
	.4byte	0x68e
	.4byte	0x3a2
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL29
	.4byte	0x69a
	.4byte	0x3c1
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xd
	.4byte	.LVL31
	.4byte	0x6a6
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x1
	.byte	0x36
	.4byte	0xb2
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f8
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0x36
	.4byte	0xe3
	.4byte	.LLST9
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0x36
	.4byte	0x9c
	.4byte	.LLST10
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x1
	.byte	0x36
	.4byte	0x9c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x1
	.byte	0x36
	.4byte	0x19f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.string	"cmd"
	.byte	0x1
	.byte	0x38
	.4byte	0x11e
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x13
	.string	"ret"
	.byte	0x1
	.byte	0x40
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	.LVL35
	.4byte	0x654
	.uleb128 0xb
	.4byte	.LVL37
	.4byte	0x65f
	.4byte	0x45a
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL39
	.4byte	0x66a
	.4byte	0x47c
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xb
	.4byte	.LVL40
	.4byte	0x66a
	.4byte	0x49b
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xb
	.4byte	.LVL41
	.4byte	0x66a
	.4byte	0x4b4
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xb
	.4byte	.LVL42
	.4byte	0x68e
	.4byte	0x4c8
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL43
	.4byte	0x69a
	.4byte	0x4e7
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xd
	.4byte	.LVL45
	.4byte	0x6a6
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x1
	.byte	0x45
	.4byte	0xb2
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x63a
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0x45
	.4byte	0xe3
	.4byte	.LLST11
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0x45
	.4byte	0x9c
	.4byte	.LLST12
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0x45
	.4byte	0x9c
	.4byte	.LLST13
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x1
	.byte	0x45
	.4byte	0x19f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x1
	.byte	0x45
	.4byte	0x73
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x13
	.string	"cmd"
	.byte	0x1
	.byte	0x47
	.4byte	0x11e
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x13
	.string	"ret"
	.byte	0x1
	.byte	0x4f
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	.LVL47
	.4byte	0x654
	.uleb128 0xb
	.4byte	.LVL49
	.4byte	0x65f
	.4byte	0x58f
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL51
	.4byte	0x66a
	.4byte	0x5b1
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xb
	.4byte	.LVL52
	.4byte	0x66a
	.4byte	0x5d0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xb
	.4byte	.LVL54
	.4byte	0x6b1
	.4byte	0x5f5
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xb
	.4byte	.LVL55
	.4byte	0x68e
	.4byte	0x609
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL56
	.4byte	0x69a
	.4byte	0x629
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL58
	.4byte	0x6a6
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x7
	.byte	0xb2
	.uleb128 0x15
	.4byte	.LASF51
	.4byte	.LASF52
	.byte	0x8
	.byte	0
	.4byte	.LASF51
	.uleb128 0x14
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x6
	.byte	0xe3
	.uleb128 0x14
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x6
	.byte	0xfd
	.uleb128 0x16
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x10d
	.uleb128 0x16
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x145
	.uleb128 0x16
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x132
	.uleb128 0x16
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x153
	.uleb128 0x16
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x169
	.uleb128 0x14
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x6
	.byte	0xef
	.uleb128 0x16
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x120
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL21
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL23
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL34
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL34
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL46
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL46
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL46
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL53
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF44:
	.string	"i2c_master_cmd_begin"
.LASF4:
	.string	"__uint8_t"
.LASF9:
	.string	"size_t"
.LASF22:
	.string	"I2C_MASTER_ACK"
.LASF39:
	.string	"i2c_master_start"
.LASF5:
	.string	"__int32_t"
.LASF50:
	.string	"displayerBuffer"
.LASF3:
	.string	"short unsigned int"
.LASF6:
	.string	"unsigned int"
.LASF32:
	.string	"readBytes"
.LASF47:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF33:
	.string	"readByte"
.LASF30:
	.string	"data"
.LASF8:
	.string	"long long unsigned int"
.LASF21:
	.string	"i2c_port_t"
.LASF1:
	.string	"unsigned char"
.LASF20:
	.string	"I2C_NUM_MAX"
.LASF46:
	.string	"i2c_master_write"
.LASF12:
	.string	"long unsigned int"
.LASF28:
	.string	"i2c_num"
.LASF51:
	.string	"putchar"
.LASF43:
	.string	"i2c_master_stop"
.LASF40:
	.string	"i2c_master_write_byte"
.LASF16:
	.string	"esp_err_t"
.LASF35:
	.string	"registerId"
.LASF45:
	.string	"i2c_cmd_link_delete"
.LASF38:
	.string	"i2c_cmd_link_create"
.LASF25:
	.string	"I2C_MASTER_ACK_MAX"
.LASF48:
	.string	"/home/raphael/rtone/lcd/main/I2CByteManager.c"
.LASF29:
	.string	"address"
.LASF13:
	.string	"char"
.LASF14:
	.string	"uint8_t"
.LASF36:
	.string	"writeBytes"
.LASF27:
	.string	"i2c_cmd_handle_t"
.LASF26:
	.string	"i2c_ack_type_t"
.LASF15:
	.string	"int32_t"
.LASF11:
	.string	"sizetype"
.LASF41:
	.string	"i2c_master_read"
.LASF7:
	.string	"long long int"
.LASF52:
	.string	"__builtin_putchar"
.LASF49:
	.string	"/home/raphael/rtone/lcd/build/main"
.LASF37:
	.string	"printf"
.LASF34:
	.string	"writeByte"
.LASF2:
	.string	"short int"
.LASF42:
	.string	"i2c_master_read_byte"
.LASF23:
	.string	"I2C_MASTER_NACK"
.LASF10:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF18:
	.string	"I2C_NUM_0"
.LASF19:
	.string	"I2C_NUM_1"
.LASF31:
	.string	"size"
.LASF17:
	.string	"_Bool"
.LASF24:
	.string	"I2C_MASTER_LAST_NACK"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
