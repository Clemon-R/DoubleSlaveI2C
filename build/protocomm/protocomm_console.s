	.file	"protocomm_console.c"
	.text
.Ltext0:
	.section	.text.protocomm_console_remove_endpoint,"ax",@progbits
	.align	4
	.type	protocomm_console_remove_endpoint, @function
protocomm_console_remove_endpoint:
.LFB29:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/src/transports/protocomm_console.c"
	.loc 1 193 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 197 0
	movi.n	a2, 0
.LVL1:
	retw.n
.LFE29:
	.size	protocomm_console_remove_endpoint, .-protocomm_console_remove_endpoint
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	""
	.section	.text.protocomm_console_add_endpoint,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, common_cmd_handler
	.align	4
	.type	protocomm_console_add_endpoint, @function
protocomm_console_add_endpoint:
.LFB28:
	.loc 1 175 0
.LVL2:
	entry	sp, 64
.LCFI1:
	.loc 1 181 0
	movi.n	a8, 0
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 16
	.loc 1 183 0
	s32i.n	a2, sp, 0
	.loc 1 184 0
	l32r	a8, .LC1
	s32i.n	a8, sp, 4
	.loc 1 185 0
	l32r	a8, .LC2
	s32i.n	a8, sp, 12
	.loc 1 187 0
	mov.n	a10, sp
	call8	esp_console_cmd_register
.LVL3:
	.loc 1 190 0
	mov.n	a2, a10
.LVL4:
	retw.n
.LFE28:
	.size	protocomm_console_add_endpoint, .-protocomm_console_add_endpoint
	.section	.rodata.str1.4
	.align	4
.LC3:
	.string	"%2hhx"
	.section	.text.hex2bin,"ax",@progbits
	.literal_position
	.literal .LC4, .LC3
	.align	4
	.type	hex2bin, @function
hex2bin:
.LFB24:
	.loc 1 48 0
.LVL5:
	entry	sp, 32
.LCFI2:
	.loc 1 49 0
	mov.n	a10, a2
	call8	strlen
.LVL6:
	.loc 1 50 0
	srli	a5, a10, 1
.LVL7:
	.loc 1 55 0
	movi.n	a4, 0
	j	.L4
.LVL8:
.L5:
	.loc 1 56 0 discriminator 3
	add.n	a12, a3, a4
	l32r	a11, .LC4
	mov.n	a10, a2
	call8	sscanf
.LVL9:
	.loc 1 57 0 discriminator 3
	addi.n	a2, a2, 2
.LVL10:
	.loc 1 55 0 discriminator 3
	addi.n	a4, a4, 1
.LVL11:
.L4:
	.loc 1 55 0 is_stmt 0 discriminator 1
	blt	a4, a5, .L5
	.loc 1 61 0 is_stmt 1
	mov.n	a2, a5
.LVL12:
	retw.n
.LFE24:
	.size	hex2bin, .-hex2bin
	.section	.rodata.str1.4
	.align	4
.LC7:
	.string	"\r"
	.align	4
.LC9:
	.string	"%02x"
	.section	.text.common_cmd_handler,"ax",@progbits
	.literal_position
	.literal .LC5, session_id
	.literal .LC6, pc_console
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.align	4
	.type	common_cmd_handler, @function
common_cmd_handler:
.LFB27:
	.loc 1 132 0
.LVL13:
	entry	sp, 64
.LCFI3:
	.loc 1 133 0
	blti	a2, 3, .L11
	.loc 1 139 0
	l32i.n	a10, a3, 4
	call8	atoi
.LVL14:
	mov.n	a2, a10
.LVL15:
	.loc 1 141 0
	l32i.n	a5, a3, 8
	mov.n	a10, a5
	call8	strlen
.LVL16:
	call8	malloc
.LVL17:
	mov.n	a4, a10
.LVL18:
	.loc 1 144 0
	mov.n	a11, a10
	mov.n	a10, a5
	call8	hex2bin
.LVL19:
	mov.n	a6, a10
.LVL20:
	.loc 1 146 0
	l32r	a5, .LC5
	l32i.n	a5, a5, 0
	beq	a2, a5, .L8
	.loc 1 147 0
	l32r	a5, .LC6
	l32i.n	a5, a5, 0
	l32i.n	a5, a5, 8
	beqz.n	a5, .L8
	.loc 1 147 0 is_stmt 0 discriminator 1
	l32i.n	a5, a5, 12
	beqz.n	a5, .L8
	.loc 1 148 0 is_stmt 1
	mov.n	a10, a2
	callx8	a5
.LVL21:
	.loc 1 149 0
	bnez.n	a10, .L8
	.loc 1 150 0
	l32r	a5, .LC5
	s32i.n	a2, a5, 0
.LVL22:
.L8:
	.loc 1 155 0
	l32r	a5, .LC6
	l32i.n	a10, a5, 0
	l32i.n	a11, a3, 0
	addi	a3, sp, 20
.LVL23:
	s32i.n	a3, sp, 0
	addi	a15, sp, 16
	mov.n	a14, a6
	mov.n	a13, a4
	mov.n	a12, a2
	call8	protocomm_req_handle
.LVL24:
	mov.n	a2, a10
.LVL25:
	.loc 1 156 0
	mov.n	a10, a4
	call8	free
.LVL26:
	.loc 1 158 0
	bnez.n	a2, .L7
	.loc 1 159 0
	l32r	a10, .LC8
	call8	puts
.LVL27:
	.loc 1 160 0
	j	.L9
.LVL28:
.L10:
	.loc 1 161 0 discriminator 3
	l32i.n	a8, sp, 16
	add.n	a8, a8, a2
	l8ui	a11, a8, 0
	l32r	a10, .LC10
	call8	printf
.LVL29:
	.loc 1 160 0 discriminator 3
	addi.n	a2, a2, 1
.LVL30:
.L9:
	.loc 1 160 0 is_stmt 0 discriminator 1
	l32i.n	a3, sp, 20
	blt	a2, a3, .L10
	.loc 1 163 0 is_stmt 1
	l32r	a10, .LC8
	call8	puts
.LVL31:
	.loc 1 166 0
	l32i.n	a10, sp, 16
	call8	free
.LVL32:
	.loc 1 168 0
	movi.n	a2, 0
.LVL33:
	retw.n
.LVL34:
.L11:
	.loc 1 134 0
	movi	a2, 0x102
.LVL35:
.L7:
	.loc 1 172 0
	retw.n
.LFE27:
	.size	common_cmd_handler, .-common_cmd_handler
	.section	.text.stopped,"ax",@progbits
	.align	4
	.type	stopped, @function
stopped:
.LFB25:
	.loc 1 64 0
	entry	sp, 48
.LCFI4:
	.loc 1 65 0
	movi.n	a3, 0
	s32i.n	a3, sp, 0
	.loc 1 66 0
	movi.n	a13, 1
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a3
	call8	xTaskNotifyWait
.LVL36:
	.loc 1 67 0
	movi.n	a8, 1
	l32i.n	a2, sp, 0
	movnez	a3, a8, a2
	mov.n	a2, a3
	.loc 1 68 0
	retw.n
.LFE25:
	.size	stopped, .-stopped
	.section	.rodata.str1.4
	.align	4
.LC11:
	.string	"\n>> "
	.align	4
.LC13:
	.string	"\r\n"
	.align	4
.LC15:
	.string	"protocomm_console"
	.align	4
.LC17:
	.string	"\033[0;31mE (%d) %s: Console dispatcher error\n\033[0m\n"
	.align	4
.LC20:
	.string	"\033[0;32mI (%d) %s: Console stopped\033[0m\n"
	.section	.text.protocomm_console_task,"ax",@progbits
	.literal_position
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.literal .LC18, .LC17
	.literal .LC19, pc_console
	.literal .LC21, .LC20
	.align	4
	.type	protocomm_console_task, @function
protocomm_console_task:
.LFB26:
	.loc 1 71 0
.LVL37:
	entry	sp, 320
.LCFI5:
	.loc 1 80 0
	movi.n	a15, 0
	movi	a14, 0x104
	add.n	a14, sp, a14
	movi.n	a13, 8
	mov.n	a12, a15
	movi	a11, 0x100
	mov.n	a10, a2
	call8	uart_driver_install
.LVL38:
	.loc 1 82 0
	movi.n	a3, 0
	s32i	a3, sp, 280
	s32i	a3, sp, 284
	movi	a3, 0x100
	s32i	a3, sp, 272
	movi.n	a3, 8
	s32i	a3, sp, 276
	.loc 1 87 0
	movi	a10, 0x110
	add.n	a10, sp, a10
	call8	esp_console_init
.LVL39:
	.loc 1 88 0
	call8	esp_console_register_help_command
.LVL40:
	.loc 1 90 0
	j	.L15
.L25:
	.loc 1 91 0
	movi.n	a12, 4
	l32r	a11, .LC12
	mov.n	a10, a2
	call8	uart_write_bytes
.LVL41:
	.loc 1 92 0
	movi	a12, 0x100
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL42:
	.loc 1 93 0
	movi.n	a3, 0
.LVL43:
.L23:
	.loc 1 95 0
	movi.n	a13, 0
	movi.n	a12, 1
	movi	a11, 0x108
	add.n	a11, sp, a11
	l32i	a10, sp, 260
	call8	xQueueGenericReceive
.LVL44:
	.loc 1 96 0
	beqi	a10, 1, .L16
	.loc 1 97 0
	call8	stopped
.LVL45:
	bnez.n	a10, .L17
	j	.L18
.LVL46:
.L16:
	.loc 1 103 0
	l32i	a4, sp, 264
	beqz.n	a4, .L19
	j	.L18
.LVL47:
.L22:
	.loc 1 105 0
	add.n	a8, sp, a3
	l8ui	a9, a8, 0
	movi.n	a8, 0xd
	bne	a9, a8, .L20
	.loc 1 106 0
	movi.n	a12, 2
	l32r	a11, .LC14
	mov.n	a10, a2
	call8	uart_write_bytes
.LVL48:
	j	.L21
.L20:
	.loc 1 108 0
	movi.n	a12, 1
	mov.n	a11, a4
	mov.n	a10, a2
	call8	uart_write_bytes
.LVL49:
.L21:
	.loc 1 110 0
	addi.n	a3, a3, 1
.LVL50:
.L19:
	.loc 1 104 0
	add.n	a4, sp, a3
	movi.n	a13, 0
	movi.n	a12, 1
	mov.n	a11, a4
	mov.n	a10, a2
	call8	uart_read_bytes
.LVL51:
	bnez.n	a10, .L22
.L18:
	.loc 1 113 0
	movi	a4, 0xfe
	blt	a4, a3, .L17
	.loc 1 113 0 is_stmt 0 discriminator 1
	addi.n	a4, a3, -1
	add.n	a4, sp, a4
	l8ui	a8, a4, 0
	movi.n	a4, 0xd
	bne	a8, a4, .L23
.L17:
	.loc 1 114 0 is_stmt 1
	call8	stopped
.LVL52:
	bnez.n	a10, .L24
	.loc 1 117 0
	addmi	a11, sp, 0x100
	mov.n	a10, sp
	call8	esp_console_run
.LVL53:
	.loc 1 118 0
	bgez	a10, .L15
	.loc 1 119 0 discriminator 2
	call8	esp_log_timestamp
.LVL54:
	l32r	a11, .LC16
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC18
	movi.n	a10, 1
	call8	esp_log_write
.LVL55:
	.loc 1 120 0 discriminator 2
	j	.L24
.LVL56:
.L15:
	.loc 1 90 0
	call8	stopped
.LVL57:
	beqz.n	a10, .L25
.L24:
	.loc 1 124 0
	movi.n	a2, 0
.LVL58:
	l32r	a3, .LC19
	s32i.n	a2, a3, 0
	.loc 1 125 0
	call8	esp_console_deinit
.LVL59:
	.loc 1 127 0
	call8	esp_log_timestamp
.LVL60:
	l32r	a11, .LC16
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC21
	movi.n	a10, 3
	call8	esp_log_write
.LVL61:
	.loc 1 128 0
	mov.n	a10, a2
	call8	vTaskDelete
.LVL62:
	retw.n
.LFE26:
	.size	protocomm_console_task, .-protocomm_console_task
	.section	.rodata.str1.4
	.align	4
.LC24:
	.string	"\033[0;31mE (%d) %s: Incorrect stop request\033[0m\n"
	.align	4
.LC26:
	.string	"\033[0;32mI (%d) %s: Stopping console...\033[0m\n"
	.section	.text.protocomm_console_stop,"ax",@progbits
	.literal_position
	.literal .LC22, pc_console
	.literal .LC23, .LC15
	.literal .LC25, .LC24
	.literal .LC27, .LC26
	.literal .LC28, console_task
	.align	4
	.global	protocomm_console_stop
	.type	protocomm_console_stop, @function
protocomm_console_stop:
.LFB23:
	.loc 1 36 0
.LVL63:
	entry	sp, 32
.LCFI6:
	.loc 1 37 0
	l32r	a8, .LC22
	l32i.n	a8, a8, 0
	beq	a8, a2, .L27
	.loc 1 38 0 discriminator 2
	call8	esp_log_timestamp
.LVL64:
	l32r	a11, .LC23
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC25
	movi.n	a10, 1
	call8	esp_log_write
.LVL65:
	.loc 1 39 0 discriminator 2
	movi	a2, 0x102
.LVL66:
	retw.n
.LVL67:
.L27:
	.loc 1 42 0 discriminator 9
	call8	esp_log_timestamp
.LVL68:
	l32r	a11, .LC23
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC27
	movi.n	a10, 3
	call8	esp_log_write
.LVL69:
	.loc 1 43 0 discriminator 9
	movi.n	a12, 2
	movi.n	a11, 0
	l32r	a2, .LC28
.LVL70:
	l32i.n	a10, a2, 0
	call8	xTaskNotify
.LVL71:
	.loc 1 44 0 discriminator 9
	movi.n	a2, 0
	.loc 1 45 0 discriminator 9
	retw.n
.LFE23:
	.size	protocomm_console_stop, .-protocomm_console_stop
	.section	.text.protocomm_console_start,"ax",@progbits
	.literal_position
	.literal .LC29, pc_console
	.literal .LC30, console_task
	.literal .LC31, .LC15
	.literal .LC32, protocomm_console_task
	.literal .LC33, 2147483647
	.literal .LC34, protocomm_console_add_endpoint
	.literal .LC35, protocomm_console_remove_endpoint
	.align	4
	.global	protocomm_console_start
	.type	protocomm_console_start, @function
protocomm_console_start:
.LFB30:
	.loc 1 200 0
.LVL72:
	entry	sp, 48
.LCFI7:
	.loc 1 201 0
	beqz.n	a2, .L32
	.loc 1 205 0
	l32r	a8, .LC29
	l32i.n	a8, a8, 0
	beqz.n	a8, .L31
	.loc 1 206 0
	bne	a2, a8, .L33
	.loc 1 207 0
	movi	a2, 0x103
.LVL73:
	retw.n
.LVL74:
.L31:
	.loc 1 215 0
	l32i.n	a12, a3, 0
	l32i.n	a14, a3, 4
.LVL75:
.LBB4:
.LBB5:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/task.h"
	.loc 2 440 0
	l32r	a3, .LC33
.LVL76:
	s32i.n	a3, sp, 0
	l32r	a15, .LC30
	movi.n	a13, 0
	l32r	a11, .LC31
	l32r	a10, .LC32
	call8	xTaskCreatePinnedToCore
.LVL77:
.LBE5:
.LBE4:
	.loc 1 215 0
	bnei	a10, 1, .L34
	.loc 1 220 0
	l32r	a3, .LC34
	s32i.n	a3, a2, 0
	.loc 1 221 0
	l32r	a3, .LC35
	s32i.n	a3, a2, 4
	.loc 1 222 0
	l32r	a3, .LC29
	s32i.n	a2, a3, 0
	.loc 1 223 0
	movi.n	a2, 0
.LVL78:
	retw.n
.LVL79:
.L32:
	.loc 1 202 0
	movi	a2, 0x102
.LVL80:
	retw.n
.LVL81:
.L33:
	.loc 1 210 0
	movi	a2, 0x106
.LVL82:
	retw.n
.LVL83:
.L34:
	.loc 1 217 0
	movi.n	a2, -1
.LVL84:
	.loc 1 224 0
	retw.n
.LFE30:
	.size	protocomm_console_start, .-protocomm_console_start
	.section	.bss.console_task,"aw",@nobits
	.align	4
	.type	console_task, @object
	.size	console_task, 4
console_task:
	.zero	4
	.section	.bss.pc_console,"aw",@nobits
	.align	4
	.type	pc_console, @object
	.size	pc_console, 4
pc_console:
	.zero	4
	.section	.data.session_id,"aw",@progbits
	.align	4
	.type	session_id, @object
	.size	session_id, 4
session_id:
	.word	-1
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
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI0-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI1-.LFB28
	.byte	0xe
	.uleb128 0x40
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
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI3-.LFB27
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI4-.LFB25
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI5-.LFB26
	.byte	0xe
	.uleb128 0x140
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI6-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI7-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/_types.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/console/esp_console.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/projdefs.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/queue.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/driver/include/driver/uart.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/include/security/protocomm_security.h"
	.file 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/include/common/protocomm.h"
	.file 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/src/common/protocomm_priv.h"
	.file 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/include/transports/protocomm_console.h"
	.file 19 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/string.h"
	.file 20 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdio.h"
	.file 21 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.file 22 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe8d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0xc
	.4byte	.LASF152
	.4byte	.LASF153
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
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
	.byte	0x3
	.byte	0x16
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x19
	.4byte	0x62
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
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
	.byte	0x4
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
	.byte	0x5
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbc
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc9
	.uleb128 0x7
	.4byte	0xbc
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0xcb
	.4byte	0x9d
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x7
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x7
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x7
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x7
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x6
	.byte	0x4
	.4byte	0x10b
	.uleb128 0x8
	.4byte	0x116
	.uleb128 0x9
	.4byte	0x94
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0xc
	.byte	0x1f
	.4byte	0x147
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x8
	.byte	0x18
	.4byte	0xef
	.uleb128 0xc
	.byte	0x10
	.byte	0x9
	.byte	0x1e
	.4byte	0x18b
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x9
	.byte	0x1f
	.4byte	0x89
	.byte	0
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x9
	.byte	0x20
	.4byte	0x89
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x9
	.byte	0x21
	.4byte	0x62
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x9
	.byte	0x22
	.4byte	0x62
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x9
	.byte	0x23
	.4byte	0x152
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x9
	.byte	0x40
	.4byte	0x1a1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1a7
	.uleb128 0xe
	.4byte	0x62
	.4byte	0x1bb
	.uleb128 0x9
	.4byte	0x62
	.uleb128 0x9
	.4byte	0x1bb
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb6
	.uleb128 0xc
	.byte	0x14
	.byte	0x9
	.byte	0x45
	.4byte	0x206
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x9
	.byte	0x4a
	.4byte	0xc3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x9
	.byte	0x50
	.4byte	0xc3
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x9
	.byte	0x56
	.4byte	0xc3
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x9
	.byte	0x5a
	.4byte	0x196
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x9
	.byte	0x61
	.4byte	0x94
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x9
	.byte	0x62
	.4byte	0x1c1
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0xa
	.byte	0x4d
	.4byte	0x105
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF42
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0xb
	.byte	0x6f
	.4byte	0x62
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0xb
	.byte	0x70
	.4byte	0x74
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0xb
	.byte	0x76
	.4byte	0xfa
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x2
	.byte	0x6e
	.4byte	0x94
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0x2
	.byte	0x82
	.4byte	0x27a
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	0xc3
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0xd
	.byte	0x58
	.4byte	0x94
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0xe
	.byte	0x89
	.4byte	0x2cd
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x7
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0xe
	.byte	0x93
	.4byte	0x28a
	.uleb128 0xc
	.byte	0x8
	.byte	0xe
	.byte	0x98
	.4byte	0x2f9
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0xe
	.byte	0x99
	.4byte	0x2cd
	.byte	0
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0xe
	.byte	0x9a
	.4byte	0x89
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xe
	.byte	0x9b
	.4byte	0x2d8
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x8
	.byte	0xf
	.byte	0x1a
	.4byte	0x329
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0xf
	.byte	0x1e
	.4byte	0x329
	.byte	0
	.uleb128 0x10
	.string	"len"
	.byte	0xf
	.byte	0x23
	.4byte	0xe4
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x32f
	.uleb128 0x7
	.4byte	0xd9
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0xf
	.byte	0x24
	.4byte	0x304
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x20
	.byte	0xf
	.byte	0x2f
	.4byte	0x3ac
	.uleb128 0x10
	.string	"ver"
	.byte	0xf
	.byte	0x33
	.4byte	0x62
	.byte	0
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0xf
	.byte	0x39
	.4byte	0x3b7
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0xf
	.byte	0x3e
	.4byte	0x3b7
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0xf
	.byte	0x43
	.4byte	0x3cc
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0xf
	.byte	0x48
	.4byte	0x3cc
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0xf
	.byte	0x4e
	.4byte	0x41c
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0xf
	.byte	0x57
	.4byte	0x445
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0xf
	.byte	0x5e
	.4byte	0x445
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.4byte	0x147
	.4byte	0x3b7
	.uleb128 0x12
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3ac
	.uleb128 0xe
	.4byte	0x147
	.4byte	0x3cc
	.uleb128 0x9
	.4byte	0xfa
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3bd
	.uleb128 0xe
	.4byte	0x147
	.4byte	0x3ff
	.uleb128 0x9
	.4byte	0x3ff
	.uleb128 0x9
	.4byte	0xfa
	.uleb128 0x9
	.4byte	0x329
	.uleb128 0x9
	.4byte	0xce
	.uleb128 0x9
	.4byte	0x40a
	.uleb128 0x9
	.4byte	0x416
	.uleb128 0x9
	.4byte	0x94
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x405
	.uleb128 0x7
	.4byte	0x334
	.uleb128 0x6
	.byte	0x4
	.4byte	0x410
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x6
	.byte	0x4
	.4byte	0xce
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3d2
	.uleb128 0xe
	.4byte	0x147
	.4byte	0x445
	.uleb128 0x9
	.4byte	0xfa
	.uleb128 0x9
	.4byte	0x329
	.uleb128 0x9
	.4byte	0xce
	.uleb128 0x9
	.4byte	0x410
	.uleb128 0x9
	.4byte	0x416
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x422
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0xf
	.byte	0x61
	.4byte	0x33f
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x10
	.byte	0x1b
	.4byte	0x461
	.uleb128 0x6
	.byte	0x4
	.4byte	0x467
	.uleb128 0xe
	.4byte	0x147
	.4byte	0x48f
	.uleb128 0x9
	.4byte	0xfa
	.uleb128 0x9
	.4byte	0x329
	.uleb128 0x9
	.4byte	0xce
	.uleb128 0x9
	.4byte	0x40a
	.uleb128 0x9
	.4byte	0x416
	.uleb128 0x9
	.4byte	0x94
	.byte	0
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x10
	.byte	0x2b
	.4byte	0x49a
	.uleb128 0xf
	.4byte	.LASF80
	.byte	0x1c
	.byte	0x11
	.byte	0x37
	.4byte	0x4fb
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0x11
	.byte	0x3a
	.4byte	0x5bd
	.byte	0
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0x11
	.byte	0x3e
	.4byte	0x5d2
	.byte	0x4
	.uleb128 0x10
	.string	"sec"
	.byte	0x11
	.byte	0x42
	.4byte	0x5d8
	.byte	0x8
	.uleb128 0x10
	.string	"pop"
	.byte	0x11
	.byte	0x45
	.4byte	0x5e3
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0x11
	.byte	0x48
	.4byte	0x58b
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0x11
	.byte	0x4b
	.4byte	0x94
	.byte	0x14
	.uleb128 0x10
	.string	"ver"
	.byte	0x11
	.byte	0x4e
	.4byte	0xc3
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x12
	.byte	0x1f
	.4byte	0x51c
	.uleb128 0xd
	.4byte	.LASF85
	.byte	0x12
	.byte	0x20
	.4byte	0x89
	.byte	0
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0x12
	.byte	0x21
	.4byte	0x74
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x12
	.byte	0x22
	.4byte	0x4fb
	.uleb128 0xc
	.byte	0x4
	.byte	0x11
	.byte	0x2d
	.4byte	0x53c
	.uleb128 0xd
	.4byte	.LASF88
	.byte	0x11
	.byte	0x2d
	.4byte	0x585
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF89
	.byte	0x14
	.byte	0x11
	.byte	0x22
	.4byte	0x585
	.uleb128 0xd
	.4byte	.LASF90
	.byte	0x11
	.byte	0x23
	.4byte	0xc3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF91
	.byte	0x11
	.byte	0x24
	.4byte	0x456
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF92
	.byte	0x11
	.byte	0x28
	.4byte	0x94
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF93
	.byte	0x11
	.byte	0x2a
	.4byte	0xfa
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF94
	.byte	0x11
	.byte	0x2d
	.4byte	0x527
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x53c
	.uleb128 0xf
	.4byte	.LASF95
	.byte	0x4
	.byte	0x11
	.byte	0x48
	.4byte	0x5a4
	.uleb128 0xd
	.4byte	.LASF96
	.byte	0x11
	.byte	0x48
	.4byte	0x585
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x62
	.4byte	0x5bd
	.uleb128 0x9
	.4byte	0xc3
	.uleb128 0x9
	.4byte	0x456
	.uleb128 0x9
	.4byte	0x94
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5a4
	.uleb128 0xe
	.4byte	0x62
	.4byte	0x5d2
	.uleb128 0x9
	.4byte	0xc3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5c3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5de
	.uleb128 0x7
	.4byte	0x44b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x334
	.uleb128 0x13
	.4byte	.LASF154
	.byte	0x2
	.2byte	0x1b0
	.4byte	0x223
	.byte	0x3
	.4byte	0x643
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x2
	.2byte	0x1b1
	.4byte	0x211
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x2
	.2byte	0x1b2
	.4byte	0x27a
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x2
	.2byte	0x1b3
	.4byte	0x643
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x2
	.2byte	0x1b4
	.4byte	0x648
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x2
	.2byte	0x1b5
	.4byte	0x22e
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x2
	.2byte	0x1b6
	.4byte	0x653
	.byte	0
	.uleb128 0x7
	.4byte	0xfa
	.uleb128 0x7
	.4byte	0x94
	.uleb128 0x6
	.byte	0x4
	.4byte	0x244
	.uleb128 0x7
	.4byte	0x64d
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x1
	.byte	0xc0
	.4byte	0x147
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x681
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x1
	.byte	0xc0
	.4byte	0xc3
	.4byte	.LLST0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x1
	.byte	0xae
	.4byte	0x147
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ef
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x1
	.byte	0xae
	.4byte	0xc3
	.4byte	.LLST1
	.uleb128 0x17
	.4byte	.LASF91
	.byte	0x1
	.byte	0xae
	.4byte	0x456
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LASF92
	.byte	0x1
	.byte	0xae
	.4byte	0x94
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.string	"ret"
	.byte	0x1
	.byte	0xb3
	.4byte	0x147
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x18
	.string	"cmd"
	.byte	0x1
	.byte	0xb4
	.4byte	0x206
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.4byte	.LVL3
	.4byte	0xd7e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x1
	.byte	0x2f
	.4byte	0xce
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x795
	.uleb128 0x16
	.4byte	.LASF106
	.byte	0x1
	.byte	0x2f
	.4byte	0xc3
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.LASF107
	.byte	0x1
	.byte	0x2f
	.4byte	0x410
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF108
	.byte	0x1
	.byte	0x31
	.4byte	0x89
	.4byte	.LLST3
	.uleb128 0x1c
	.4byte	.LASF109
	.byte	0x1
	.byte	0x32
	.4byte	0xce
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.4byte	.LASF110
	.byte	0x1
	.byte	0x34
	.4byte	0x62
	.4byte	.LLST4
	.uleb128 0x1d
	.string	"pos"
	.byte	0x1
	.byte	0x35
	.4byte	0xc3
	.4byte	.LLST5
	.uleb128 0x1e
	.4byte	.LVL6
	.4byte	0xd89
	.4byte	0x772
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL9
	.4byte	0xd94
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x1
	.byte	0x83
	.4byte	0x62
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x914
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x1
	.byte	0x83
	.4byte	0x62
	.4byte	.LLST6
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x1
	.byte	0x83
	.4byte	0x1bb
	.4byte	.LLST7
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0x89
	.4byte	0x62
	.4byte	.LLST8
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1
	.byte	0x89
	.4byte	0x62
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	.LASF114
	.byte	0x1
	.byte	0x8b
	.4byte	0xfa
	.4byte	.LLST10
	.uleb128 0x1d
	.string	"buf"
	.byte	0x1
	.byte	0x8d
	.4byte	0x410
	.4byte	.LLST11
	.uleb128 0x1c
	.4byte	.LASF115
	.byte	0x1
	.byte	0x8e
	.4byte	0x410
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.4byte	.LASF116
	.byte	0x1
	.byte	0x8f
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.byte	0x90
	.4byte	0xce
	.4byte	.LLST12
	.uleb128 0x1f
	.4byte	.LVL14
	.4byte	0xd9f
	.uleb128 0x1e
	.4byte	.LVL16
	.4byte	0xd89
	.4byte	0x84e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL17
	.4byte	0xdaa
	.uleb128 0x1e
	.4byte	.LVL19
	.4byte	0x6ef
	.4byte	0x871
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL21
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x884
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL24
	.4byte	0xdb5
	.4byte	0x8b1
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL26
	.4byte	0xdc0
	.4byte	0x8c5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL27
	.4byte	0xdcb
	.4byte	0x8dc
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL29
	.4byte	0xdda
	.4byte	0x8f3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL31
	.4byte	0xdcb
	.4byte	0x90a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL32
	.4byte	0xdc0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x1
	.byte	0x3f
	.4byte	0x21c
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x95d
	.uleb128 0x1c
	.4byte	.LASF93
	.byte	0x1
	.byte	0x41
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	.LVL36
	.4byte	0xde5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF155
	.byte	0x1
	.byte	0x46
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc0
	.uleb128 0x22
	.string	"arg"
	.byte	0x1
	.byte	0x46
	.4byte	0x94
	.4byte	.LLST13
	.uleb128 0x23
	.4byte	.LASF156
	.byte	0x1
	.byte	0x48
	.4byte	0x62
	.uleb128 0x1c
	.4byte	.LASF118
	.byte	0x1
	.byte	0x49
	.4byte	0xbc0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0x4a
	.4byte	0x62
	.4byte	.LLST14
	.uleb128 0x1c
	.4byte	.LASF119
	.byte	0x1
	.byte	0x4a
	.4byte	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1
	.byte	0x4b
	.4byte	0x147
	.4byte	.LLST15
	.uleb128 0x1c
	.4byte	.LASF120
	.byte	0x1
	.byte	0x4c
	.4byte	0x27f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1c
	.4byte	.LASF121
	.byte	0x1
	.byte	0x4d
	.4byte	0x2f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.4byte	.LASF122
	.byte	0x1
	.byte	0x52
	.4byte	0x18b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.4byte	.LVL38
	.4byte	0xdf1
	.4byte	0xa1f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL39
	.4byte	0xdfd
	.4byte	0xa33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL40
	.4byte	0xe08
	.uleb128 0x1e
	.4byte	.LVL41
	.4byte	0xe13
	.4byte	0xa5e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL42
	.4byte	0xe1f
	.4byte	0xa7f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL44
	.4byte	0xe28
	.4byte	0xa9d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL45
	.4byte	0x914
	.uleb128 0x1e
	.4byte	.LVL48
	.4byte	0xe13
	.4byte	0xac8
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL49
	.4byte	0xe13
	.4byte	0xae7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL51
	.4byte	0xe34
	.4byte	0xb0b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL52
	.4byte	0x914
	.uleb128 0x1e
	.4byte	.LVL53
	.4byte	0xe40
	.4byte	0xb2f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL54
	.4byte	0xe4b
	.uleb128 0x1e
	.4byte	.LVL55
	.4byte	0xe56
	.4byte	0xb66
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL57
	.4byte	0x914
	.uleb128 0x1f
	.4byte	.LVL59
	.4byte	0xe61
	.uleb128 0x1f
	.4byte	.LVL60
	.4byte	0xe4b
	.uleb128 0x1e
	.4byte	.LVL61
	.4byte	0xe56
	.4byte	0xbaf
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x19
	.4byte	.LVL62
	.4byte	0xe6c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0xd9
	.4byte	0xbd0
	.uleb128 0x25
	.4byte	0xa8
	.byte	0xff
	.byte	0
	.uleb128 0x26
	.4byte	.LASF123
	.byte	0x1
	.byte	0x23
	.4byte	0x147
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc7a
	.uleb128 0x22
	.string	"pc"
	.byte	0x1
	.byte	0x23
	.4byte	0xc7a
	.4byte	.LLST16
	.uleb128 0x1f
	.4byte	.LVL64
	.4byte	0xe4b
	.uleb128 0x1e
	.4byte	.LVL65
	.4byte	0xe56
	.4byte	0xc2e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL68
	.4byte	0xe4b
	.uleb128 0x1e
	.4byte	.LVL69
	.4byte	0xe56
	.4byte	0xc65
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x19
	.4byte	.LVL71
	.4byte	0xe78
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x48f
	.uleb128 0x26
	.4byte	.LASF124
	.byte	0x1
	.byte	0xc7
	.4byte	0x147
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd2e
	.uleb128 0x22
	.string	"pc"
	.byte	0x1
	.byte	0xc7
	.4byte	0xc7a
	.4byte	.LLST17
	.uleb128 0x16
	.4byte	.LASF125
	.byte	0x1
	.byte	0xc7
	.4byte	0xd2e
	.4byte	.LLST18
	.uleb128 0x27
	.4byte	0x5e9
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0xd7
	.uleb128 0x28
	.4byte	0x636
	.4byte	.LLST19
	.uleb128 0x28
	.4byte	0x62a
	.4byte	.LLST20
	.uleb128 0x28
	.4byte	0x61e
	.4byte	.LLST21
	.uleb128 0x28
	.4byte	0x612
	.4byte	.LLST22
	.uleb128 0x28
	.4byte	0x606
	.4byte	.LLST23
	.uleb128 0x28
	.4byte	0x5fa
	.4byte	.LLST24
	.uleb128 0x19
	.4byte	.LVL77
	.4byte	0xe84
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	protocomm_console_task
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	console_task
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd34
	.uleb128 0x7
	.4byte	0x51c
	.uleb128 0x18
	.string	"TAG"
	.byte	0x1
	.byte	0x1d
	.4byte	0x27a
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC15
	.byte	0x9f
	.uleb128 0x1c
	.4byte	.LASF126
	.byte	0x1
	.byte	0x1f
	.4byte	0xfa
	.uleb128 0x5
	.byte	0x3
	.4byte	session_id
	.uleb128 0x1c
	.4byte	.LASF127
	.byte	0x1
	.byte	0x20
	.4byte	0xc7a
	.uleb128 0x5
	.byte	0x3
	.4byte	pc_console
	.uleb128 0x1c
	.4byte	.LASF128
	.byte	0x1
	.byte	0x21
	.4byte	0x244
	.uleb128 0x5
	.byte	0x3
	.4byte	console_task
	.uleb128 0x29
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x9
	.byte	0x6b
	.uleb128 0x29
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0x13
	.byte	0x21
	.uleb128 0x29
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x14
	.byte	0xb6
	.uleb128 0x29
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0x15
	.byte	0x4e
	.uleb128 0x29
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0x15
	.byte	0x65
	.uleb128 0x29
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0x10
	.byte	0x90
	.uleb128 0x29
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x15
	.byte	0x5a
	.uleb128 0x2a
	.4byte	.LASF157
	.4byte	.LASF158
	.byte	0x16
	.byte	0
	.4byte	.LASF157
	.uleb128 0x29
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x14
	.byte	0xb2
	.uleb128 0x2b
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x2
	.2byte	0x781
	.uleb128 0x2b
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xe
	.2byte	0x215
	.uleb128 0x29
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x9
	.byte	0x2d
	.uleb128 0x29
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x9
	.byte	0xbc
	.uleb128 0x2b
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0xe
	.2byte	0x250
	.uleb128 0x2c
	.4byte	.LASF159
	.4byte	.LASF159
	.uleb128 0x2b
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0xd
	.2byte	0x38a
	.uleb128 0x2b
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xe
	.2byte	0x274
	.uleb128 0x29
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x9
	.byte	0x78
	.uleb128 0x29
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xc
	.byte	0x57
	.uleb128 0x29
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xc
	.byte	0x6b
	.uleb128 0x29
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x9
	.byte	0x37
	.uleb128 0x2b
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x2
	.2byte	0x2fb
	.uleb128 0x2b
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x2
	.2byte	0x6e2
	.uleb128 0x2b
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x2
	.2byte	0x151
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x18
	.byte	0
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL15
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL18
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL20
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL37
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL44
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x5
	.byte	0x3
	.4byte	pc_console
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL72
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL76
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL83
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL75
	.4byte	.LVL79
	.2byte	0x6
	.byte	0x3
	.4byte	console_task
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LFE30
	.2byte	0x6
	.byte	0x3
	.4byte	console_task
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL75
	.4byte	.LVL77-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL75
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LFE30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL75
	.4byte	.LVL77-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL75
	.4byte	.LVL79
	.2byte	0x6
	.byte	0x3
	.4byte	.LC15
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LFE30
	.2byte	0x6
	.byte	0x3
	.4byte	.LC15
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL75
	.4byte	.LVL79
	.2byte	0x6
	.byte	0x3
	.4byte	protocomm_console_task
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LFE30
	.2byte	0x6
	.byte	0x3
	.4byte	protocomm_console_task
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF136:
	.string	"printf"
.LASF110:
	.string	"count"
.LASF126:
	.string	"session_id"
.LASF133:
	.string	"malloc"
.LASF91:
	.string	"req_handler"
.LASF123:
	.string	"protocomm_console_stop"
.LASF72:
	.string	"new_transport_session"
.LASF140:
	.string	"esp_console_register_help_command"
.LASF11:
	.string	"size_t"
.LASF39:
	.string	"argtable"
.LASF138:
	.string	"uart_driver_install"
.LASF3:
	.string	"__uint8_t"
.LASF109:
	.string	"bytesLen"
.LASF17:
	.string	"ssize_t"
.LASF63:
	.string	"type"
.LASF70:
	.string	"init"
.LASF65:
	.string	"uart_event_t"
.LASF62:
	.string	"uart_event_type_t"
.LASF10:
	.string	"long long unsigned int"
.LASF120:
	.string	"uart_queue"
.LASF146:
	.string	"esp_log_write"
.LASF66:
	.string	"data"
.LASF53:
	.string	"UART_DATA"
.LASF52:
	.string	"QueueHandle_t"
.LASF46:
	.string	"TaskHandle_t"
.LASF117:
	.string	"stopped"
.LASF122:
	.string	"console_config"
.LASF114:
	.string	"cur_session_id"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF139:
	.string	"esp_console_init"
.LASF152:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/src/transports/protocomm_console.c"
.LASF150:
	.string	"xTaskCreatePinnedToCore"
.LASF12:
	.string	"long int"
.LASF36:
	.string	"help"
.LASF58:
	.string	"UART_PARITY_ERR"
.LASF48:
	.string	"eSetBits"
.LASF38:
	.string	"func"
.LASF158:
	.string	"__builtin_puts"
.LASF142:
	.string	"xQueueGenericReceive"
.LASF141:
	.string	"uart_write_bytes"
.LASF97:
	.string	"pvTaskCode"
.LASF19:
	.string	"uint16_t"
.LASF43:
	.string	"BaseType_t"
.LASF74:
	.string	"security_req_handler"
.LASF88:
	.string	"sle_next"
.LASF34:
	.string	"esp_console_cmd_func_t"
.LASF127:
	.string	"pc_console"
.LASF107:
	.string	"bytes"
.LASF99:
	.string	"usStackDepth"
.LASF31:
	.string	"hint_color"
.LASF7:
	.string	"__uint32_t"
.LASF68:
	.string	"protocomm_security_pop"
.LASF144:
	.string	"esp_console_run"
.LASF156:
	.string	"uart_num"
.LASF8:
	.string	"unsigned int"
.LASF130:
	.string	"strlen"
.LASF35:
	.string	"command"
.LASF50:
	.string	"eSetValueWithOverwrite"
.LASF79:
	.string	"protocomm_t"
.LASF15:
	.string	"long unsigned int"
.LASF56:
	.string	"UART_FIFO_OVF"
.LASF100:
	.string	"pvParameters"
.LASF75:
	.string	"encrypt"
.LASF105:
	.string	"hex2bin"
.LASF121:
	.string	"event"
.LASF64:
	.string	"size"
.LASF5:
	.string	"short unsigned int"
.LASF67:
	.string	"protocomm_security_pop_t"
.LASF55:
	.string	"UART_BUFFER_FULL"
.LASF69:
	.string	"protocomm_security"
.LASF104:
	.string	"protocomm_console_add_endpoint"
.LASF143:
	.string	"uart_read_bytes"
.LASF134:
	.string	"protocomm_req_handle"
.LASF2:
	.string	"short int"
.LASF90:
	.string	"ep_name"
.LASF159:
	.string	"memset"
.LASF147:
	.string	"esp_console_deinit"
.LASF49:
	.string	"eIncrement"
.LASF25:
	.string	"ESP_LOG_INFO"
.LASF157:
	.string	"puts"
.LASF95:
	.string	"eptable_t"
.LASF86:
	.string	"task_priority"
.LASF103:
	.string	"protocomm_console_remove_endpoint"
.LASF14:
	.string	"sizetype"
.LASF131:
	.string	"sscanf"
.LASF154:
	.string	"xTaskCreate"
.LASF45:
	.string	"TickType_t"
.LASF33:
	.string	"esp_console_config_t"
.LASF119:
	.string	"cmd_ret"
.LASF30:
	.string	"max_cmdline_args"
.LASF71:
	.string	"cleanup"
.LASF57:
	.string	"UART_FRAME_ERR"
.LASF84:
	.string	"priv"
.LASF92:
	.string	"priv_data"
.LASF87:
	.string	"protocomm_console_config_t"
.LASF101:
	.string	"uxPriority"
.LASF32:
	.string	"hint_bold"
.LASF111:
	.string	"common_cmd_handler"
.LASF102:
	.string	"pvCreatedTask"
.LASF73:
	.string	"close_transport_session"
.LASF132:
	.string	"atoi"
.LASF42:
	.string	"_Bool"
.LASF20:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF151:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF82:
	.string	"remove_endpoint"
.LASF89:
	.string	"protocomm_ep"
.LASF145:
	.string	"esp_log_timestamp"
.LASF23:
	.string	"ESP_LOG_ERROR"
.LASF54:
	.string	"UART_BREAK"
.LASF93:
	.string	"flag"
.LASF41:
	.string	"TaskFunction_t"
.LASF59:
	.string	"UART_DATA_BREAK"
.LASF108:
	.string	"hexstrLen"
.LASF60:
	.string	"UART_PATTERN_DET"
.LASF106:
	.string	"hexstr"
.LASF77:
	.string	"protocomm_security_t"
.LASF78:
	.string	"protocomm_req_handler_t"
.LASF129:
	.string	"esp_console_cmd_register"
.LASF128:
	.string	"console_task"
.LASF37:
	.string	"hint"
.LASF16:
	.string	"char"
.LASF27:
	.string	"ESP_LOG_VERBOSE"
.LASF6:
	.string	"__int32_t"
.LASF125:
	.string	"config"
.LASF4:
	.string	"__uint16_t"
.LASF148:
	.string	"vTaskDelete"
.LASF22:
	.string	"ESP_LOG_NONE"
.LASF61:
	.string	"UART_EVENT_MAX"
.LASF18:
	.string	"uint8_t"
.LASF135:
	.string	"free"
.LASF76:
	.string	"decrypt"
.LASF115:
	.string	"outbuf"
.LASF155:
	.string	"protocomm_console_task"
.LASF24:
	.string	"ESP_LOG_WARN"
.LASF124:
	.string	"protocomm_console_start"
.LASF28:
	.string	"esp_err_t"
.LASF51:
	.string	"eSetValueWithoutOverwrite"
.LASF137:
	.string	"xTaskNotifyWait"
.LASF13:
	.string	"_ssize_t"
.LASF47:
	.string	"eNoAction"
.LASF85:
	.string	"stack_size"
.LASF83:
	.string	"endpoints"
.LASF96:
	.string	"slh_first"
.LASF81:
	.string	"add_endpoint"
.LASF112:
	.string	"argc"
.LASF94:
	.string	"next"
.LASF116:
	.string	"outlen"
.LASF26:
	.string	"ESP_LOG_DEBUG"
.LASF44:
	.string	"UBaseType_t"
.LASF98:
	.string	"pcName"
.LASF113:
	.string	"argv"
.LASF153:
	.string	"/home/raphael/rtone/lcd/build/protocomm"
.LASF118:
	.string	"linebuf"
.LASF40:
	.string	"esp_console_cmd_t"
.LASF149:
	.string	"xTaskNotify"
.LASF21:
	.string	"uint32_t"
.LASF80:
	.string	"protocomm"
.LASF29:
	.string	"max_cmdline_length"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
