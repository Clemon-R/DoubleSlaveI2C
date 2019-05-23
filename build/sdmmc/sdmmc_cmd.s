	.file	"sdmmc_cmd.c"
	.text
.Ltext0:
	.section	.text.sdmmc_send_cmd,"ax",@progbits
	.align	4
	.global	sdmmc_send_cmd
	.type	sdmmc_send_cmd, @function
sdmmc_send_cmd:
.LFB23:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/sdmmc/sdmmc_cmd.c"
	.loc 1 24 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 25 0
	l32i.n	a8, a2, 52
	beqz.n	a8, .L2
	.loc 1 26 0
	s32i.n	a8, a3, 44
	j	.L3
.L2:
	.loc 1 27 0
	l32i.n	a8, a3, 44
	bnez.n	a8, .L3
	.loc 1 28 0
	movi	a8, 0x3e8
	s32i.n	a8, a3, 44
.L3:
.LVL1:
	.loc 1 34 0
	l32i.n	a8, a2, 36
	mov.n	a11, a3
	l32i.n	a10, a2, 4
	callx8	a8
.LVL2:
	.loc 1 35 0
	bnez.n	a10, .L5
.LVL3:
	.loc 1 47 0
	l32i.n	a2, a3, 40
.LVL4:
	retw.n
.LVL5:
.L5:
	.loc 1 37 0
	mov.n	a2, a10
.LVL6:
	.loc 1 48 0
	retw.n
.LFE23:
	.size	sdmmc_send_cmd, .-sdmmc_send_cmd
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"sdmmc_cmd"
	.align	4
.LC3:
	.string	"\033[0;33mW (%d) %s: card doesn't support APP_CMD\033[0m\n"
	.section	.text.sdmmc_send_app_cmd,"ax",@progbits
	.literal_position
	.literal .LC0, 7168
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.align	4
	.global	sdmmc_send_app_cmd
	.type	sdmmc_send_app_cmd, @function
sdmmc_send_app_cmd:
.LFB24:
	.loc 1 51 0
.LVL7:
	entry	sp, 80
.LCFI1:
	.loc 1 52 0
	movi.n	a8, 0
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	s32i.n	a8, sp, 32
	s32i.n	a8, sp, 40
	s32i.n	a8, sp, 44
	movi.n	a8, 0x37
	s32i.n	a8, sp, 0
	.loc 1 55 0
	l16ui	a8, a2, 126
	slli	a8, a8, 16
	.loc 1 52 0
	s32i.n	a8, sp, 4
	l32r	a8, .LC0
	s32i.n	a8, sp, 36
	.loc 1 57 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	sdmmc_send_cmd
.LVL8:
	.loc 1 58 0
	bnez.n	a10, .L9
.LVL9:
.LBB26:
.LBB27:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/sdmmc/sdmmc_common.h"
	.loc 2 122 0
	l32i.n	a8, a2, 0
.LBE27:
.LBE26:
	.loc 1 62 0
	bbsi	a8, 3, .L8
	.loc 1 62 0 is_stmt 0 discriminator 1
	l32i.n	a8, sp, 8
	bbsi	a8, 5, .L8
	.loc 1 63 0 is_stmt 1 discriminator 4
	call8	esp_log_timestamp
.LVL10:
	l32r	a11, .LC2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC4
	movi.n	a10, 2
	call8	esp_log_write
.LVL11:
	.loc 1 64 0 discriminator 4
	movi	a2, 0x106
.LVL12:
	retw.n
.LVL13:
.L8:
	.loc 1 66 0
	mov.n	a11, a3
	mov.n	a10, a2
.LVL14:
	call8	sdmmc_send_cmd
.LVL15:
	mov.n	a2, a10
.LVL16:
	retw.n
.LVL17:
.L9:
	.loc 1 59 0
	mov.n	a2, a10
.LVL18:
	.loc 1 67 0
	retw.n
.LFE24:
	.size	sdmmc_send_app_cmd, .-sdmmc_send_app_cmd
	.section	.text.sdmmc_send_cmd_go_idle_state,"ax",@progbits
	.literal_position
	.literal .LC5, 7168
	.align	4
	.global	sdmmc_send_cmd_go_idle_state
	.type	sdmmc_send_cmd_go_idle_state, @function
sdmmc_send_cmd_go_idle_state:
.LFB25:
	.loc 1 71 0
.LVL19:
	entry	sp, 80
.LCFI2:
	mov.n	a3, a2
	.loc 1 72 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	s32i.n	a8, sp, 32
	s32i.n	a8, sp, 40
	s32i.n	a8, sp, 44
	movi.n	a2, 0x20
.LVL20:
	s32i.n	a2, sp, 36
	.loc 1 76 0
	mov.n	a11, sp
	mov.n	a10, a3
	call8	sdmmc_send_cmd
.LVL21:
	mov.n	a2, a10
.LVL22:
.LBB28:
.LBB29:
	.loc 2 122 0
	l32i.n	a8, a3, 0
.LBE29:
.LBE28:
	.loc 1 77 0
	bbci	a8, 3, .L11
	.loc 1 85 0
	movi.n	a10, 2
	call8	vTaskDelay
.LVL23:
	.loc 1 87 0
	l32r	a2, .LC5
.LVL24:
	l32i.n	a8, sp, 36
	or	a2, a8, a2
	s32i.n	a2, sp, 36
	.loc 1 88 0
	mov.n	a11, sp
	mov.n	a10, a3
	call8	sdmmc_send_cmd
.LVL25:
	mov.n	a2, a10
.LVL26:
.L11:
	.loc 1 90 0
	bnez.n	a2, .L12
	.loc 1 91 0
	movi.n	a10, 2
	call8	vTaskDelay
.LVL27:
.L12:
	.loc 1 94 0
	retw.n
.LFE25:
	.size	sdmmc_send_cmd_go_idle_state, .-sdmmc_send_cmd_go_idle_state
	.section	.text.sdmmc_send_cmd_send_if_cond,"ax",@progbits
	.literal_position
	.literal .LC6, 16744448
	.literal .LC7, 7216
	.align	4
	.global	sdmmc_send_cmd_send_if_cond
	.type	sdmmc_send_cmd_send_if_cond, @function
sdmmc_send_cmd_send_if_cond:
.LFB26:
	.loc 1 98 0
.LVL28:
	entry	sp, 80
.LCFI3:
.LVL29:
	.loc 1 100 0
	movi.n	a8, 0
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	s32i.n	a8, sp, 32
	s32i.n	a8, sp, 40
	s32i.n	a8, sp, 44
	movi.n	a8, 8
	s32i.n	a8, sp, 0
	l32r	a8, .LC6
	bnone	a3, a8, .L16
	movi	a8, 0x1aa
	j	.L14
.L16:
	movi	a8, 0xaa
.L14:
	.loc 1 100 0 is_stmt 0 discriminator 4
	s32i.n	a8, sp, 4
	l32r	a8, .LC7
	s32i.n	a8, sp, 36
	.loc 1 105 0 is_stmt 1 discriminator 4
	mov.n	a11, sp
	mov.n	a10, a2
	call8	sdmmc_send_cmd
.LVL30:
	.loc 1 106 0 discriminator 4
	bnez.n	a10, .L17
	.loc 1 109 0
	l8ui	a8, sp, 8
.LVL31:
	.loc 1 110 0
	movi	a2, 0xaa
.LVL32:
	beq	a8, a2, .L18
	.loc 1 112 0
	movi	a2, 0x108
	retw.n
.LVL33:
.L17:
	.loc 1 107 0
	mov.n	a2, a10
.LVL34:
	retw.n
.LVL35:
.L18:
	.loc 1 114 0
	movi.n	a2, 0
	.loc 1 115 0
	retw.n
.LFE26:
	.size	sdmmc_send_cmd_send_if_cond, .-sdmmc_send_cmd_send_if_cond
	.section	.text.sdmmc_send_cmd_send_op_cond,"ax",@progbits
	.literal_position
	.literal .LC8, 4144
	.literal .LC10, -1610612737
	.literal .LC11, 1073741824
	.align	4
	.global	sdmmc_send_cmd_send_op_cond
	.type	sdmmc_send_cmd_send_op_cond, @function
sdmmc_send_cmd_send_op_cond:
.LFB27:
	.loc 1 118 0
.LVL36:
	entry	sp, 80
.LCFI4:
	.loc 1 121 0
	movi.n	a5, 0
	s32i.n	a5, sp, 8
.LVL37:
	.loc 1 127 0
	movi.n	a6, 3
	.loc 1 126 0
	movi	a5, 0x64
	.loc 1 128 0
	j	.L20
.LVL38:
.L29:
	.loc 1 129 0
	movi.n	a8, 0
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	s32i.n	a8, sp, 32
	s32i.n	a8, sp, 40
	s32i.n	a8, sp, 44
	.loc 1 130 0
	s32i.n	a3, sp, 4
	.loc 1 131 0
	l32r	a8, .LC8
	s32i.n	a8, sp, 36
	.loc 1 132 0
	l32i	a8, a2, 128
	bbsi	a8, 18, .L21
	.loc 1 133 0
	movi.n	a8, 0x29
	s32i.n	a8, sp, 0
	.loc 1 134 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	sdmmc_send_app_cmd
.LVL39:
	j	.L22
.LVL40:
.L21:
	.loc 1 136 0
	l32r	a8, .LC10
	and	a9, a3, a8
	.loc 1 137 0
	l32r	a8, .LC11
	or	a8, a9, a8
	s32i.n	a8, sp, 4
	.loc 1 138 0
	movi.n	a8, 1
	s32i.n	a8, sp, 0
	.loc 1 139 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	sdmmc_send_cmd
.LVL41:
.L22:
	.loc 1 142 0
	beqz.n	a10, .L23
	.loc 1 143 0
	addi.n	a6, a6, -1
.LVL42:
	bnez.n	a6, .L25
	j	.L30
.L23:
.LVL43:
.LBB30:
.LBB31:
	.loc 2 122 0
	l32i.n	a8, a2, 0
.LBE31:
.LBE30:
	.loc 1 153 0
	bbsi	a8, 3, .L26
	.loc 1 154 0
	l32i.n	a8, sp, 8
	bltz	a8, .L27
	.loc 1 154 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L28
	j	.L27
.L26:
	.loc 1 159 0 is_stmt 1
	l32i.n	a8, sp, 8
	bbci	a8, 0, .L27
.L28:
	.loc 1 163 0
	movi.n	a10, 1
.LVL44:
	call8	vTaskDelay
.LVL45:
.L25:
	.loc 1 128 0
	addi.n	a5, a5, -1
.LVL46:
.L20:
	.loc 1 128 0 is_stmt 0 discriminator 1
	bnez.n	a5, .L29
.L27:
	.loc 1 165 0 is_stmt 1
	beqz.n	a5, .L31
	.loc 1 168 0
	beqz.n	a4, .L32
	.loc 1 169 0
	l32i.n	a2, sp, 8
.LVL47:
	s32i.n	a2, a4, 0
	.loc 1 171 0
	movi.n	a2, 0
	retw.n
.LVL48:
.L30:
	.loc 1 145 0
	mov.n	a2, a10
.LVL49:
	retw.n
.LVL50:
.L31:
	.loc 1 166 0
	movi	a2, 0x107
.LVL51:
	retw.n
.LVL52:
.L32:
	.loc 1 171 0
	movi.n	a2, 0
.LVL53:
	.loc 1 172 0
	retw.n
.LFE27:
	.size	sdmmc_send_cmd_send_op_cond, .-sdmmc_send_cmd_send_op_cond
	.section	.rodata.str1.4
	.align	4
.LC12:
	.string	"ocrp"
	.align	4
.LC15:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/sdmmc/sdmmc_cmd.c"
	.section	.text.sdmmc_send_cmd_read_ocr,"ax",@progbits
	.literal_position
	.literal .LC13, .LC12
	.literal .LC14, __func__$5626
	.literal .LC16, .LC15
	.literal .LC17, 5680
	.align	4
	.global	sdmmc_send_cmd_read_ocr
	.type	sdmmc_send_cmd_read_ocr, @function
sdmmc_send_cmd_read_ocr:
.LFB28:
	.loc 1 175 0
.LVL54:
	entry	sp, 80
.LCFI5:
	.loc 1 176 0
	bnez.n	a3, .L34
	.loc 1 176 0 is_stmt 0 discriminator 1
	l32r	a13, .LC13
	l32r	a12, .LC14
	movi	a11, 0xb0
	l32r	a10, .LC16
	call8	__assert_func
.LVL55:
.L34:
	.loc 1 177 0 is_stmt 1
	movi.n	a8, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	s32i.n	a8, sp, 32
	s32i.n	a8, sp, 40
	s32i.n	a8, sp, 44
	movi.n	a8, 0x3a
	s32i.n	a8, sp, 0
	l32r	a8, .LC17
	s32i.n	a8, sp, 36
	.loc 1 181 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	sdmmc_send_cmd
.LVL56:
	.loc 1 182 0
	bnez.n	a10, .L36
	.loc 1 185 0
	l32i.n	a2, sp, 8
.LVL57:
	s32i.n	a2, a3, 0
	.loc 1 186 0
	movi.n	a2, 0
	retw.n
.LVL58:
.L36:
	.loc 1 183 0
	mov.n	a2, a10
.LVL59:
	.loc 1 187 0
	retw.n
.LFE28:
	.size	sdmmc_send_cmd_read_ocr, .-sdmmc_send_cmd_read_ocr
	.section	.rodata.str1.4
	.align	4
.LC18:
	.string	"out_raw_cid"
	.section	.text.sdmmc_send_cmd_all_send_cid,"ax",@progbits
	.literal_position
	.literal .LC19, .LC18
	.literal .LC20, __func__$5633
	.literal .LC21, .LC15
	.literal .LC22, 5680
	.align	4
	.global	sdmmc_send_cmd_all_send_cid
	.type	sdmmc_send_cmd_all_send_cid, @function
sdmmc_send_cmd_all_send_cid:
.LFB29:
	.loc 1 191 0
.LVL60:
	entry	sp, 80
.LCFI6:
	.loc 1 192 0
	bnez.n	a3, .L38
	.loc 1 192 0 is_stmt 0 discriminator 1
	l32r	a13, .LC19
	l32r	a12, .LC20
	movi	a11, 0xc0
	l32r	a10, .LC21
	call8	__assert_func
.LVL61:
.L38:
	.loc 1 193 0 is_stmt 1
	movi.n	a8, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	s32i.n	a8, sp, 32
	s32i.n	a8, sp, 40
	s32i.n	a8, sp, 44
	movi.n	a8, 2
	s32i.n	a8, sp, 0
	l32r	a8, .LC22
	s32i.n	a8, sp, 36
	.loc 1 197 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	sdmmc_send_cmd
.LVL62:
	.loc 1 198 0
	bnez.n	a10, .L40
	.loc 1 201 0
	movi.n	a12, 0x10
	addi.n	a11, sp, 8
	mov.n	a10, a3
.LVL63:
	call8	memcpy
.LVL64:
	.loc 1 202 0
	movi.n	a2, 0
.LVL65:
	retw.n
.LVL66:
.L40:
	.loc 1 199 0
	mov.n	a2, a10
.LVL67:
	.loc 1 203 0
	retw.n
.LFE29:
	.size	sdmmc_send_cmd_all_send_cid, .-sdmmc_send_cmd_all_send_cid
	.section	.rodata.str1.4
	.align	4
.LC23:
	.string	"out_cid"
	.align	4
.LC27:
	.string	"host_is_spi(card) && \"SEND_CID should only be used in SPI mode\""
	.align	4
.LC30:
	.string	"!card->is_mmc && \"MMC cards are not supported in SPI mode\""
	.section	.text.sdmmc_send_cmd_send_cid,"ax",@progbits
	.literal_position
	.literal .LC24, .LC23
	.literal .LC25, __func__$5640
	.literal .LC26, .LC15
	.literal .LC28, .LC27
	.literal .LC31, .LC30
	.align	4
	.global	sdmmc_send_cmd_send_cid
	.type	sdmmc_send_cmd_send_cid, @function
sdmmc_send_cmd_send_cid:
.LFB30:
	.loc 1 206 0
.LVL68:
	entry	sp, 96
.LCFI7:
	.loc 1 207 0
	bnez.n	a3, .L42
	.loc 1 207 0 is_stmt 0 discriminator 1
	l32r	a13, .LC24
	l32r	a12, .LC25
	movi	a11, 0xcf
	l32r	a10, .LC26
	call8	__assert_func
.LVL69:
.L42:
.LBB32:
.LBB33:
	.loc 2 122 0 is_stmt 1
	l32i.n	a8, a2, 0
.LBE33:
.LBE32:
	.loc 1 208 0
	bbsi	a8, 3, .L43
	.loc 1 208 0 is_stmt 0 discriminator 3
	l32r	a13, .LC28
	l32r	a12, .LC25
	movi	a11, 0xd0
	l32r	a10, .LC26
	call8	__assert_func
.LVL70:
.L43:
	.loc 1 209 0 is_stmt 1
	l32i	a8, a2, 128
	bbci	a8, 18, .L44
	.loc 1 209 0 is_stmt 0 discriminator 1
	l32r	a13, .LC31
	l32r	a12, .LC25
	movi	a11, 0xd1
	l32r	a10, .LC26
	call8	__assert_func
.LVL71:
.L44:
	.loc 1 211 0 is_stmt 1
	movi.n	a8, 0
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	s32i.n	a8, sp, 32
	s32i.n	a8, sp, 36
	s32i.n	a8, sp, 48
	s32i.n	a8, sp, 56
	s32i.n	a8, sp, 60
	movi.n	a8, 0xa
	s32i.n	a8, sp, 16
	s32i.n	sp, sp, 40
	movi.n	a8, 0x10
	s32i.n	a8, sp, 44
	movi.n	a8, 0x50
	s32i.n	a8, sp, 52
	.loc 1 218 0
	addi	a11, sp, 16
	mov.n	a10, a2
	call8	sdmmc_send_cmd
.LVL72:
	.loc 1 219 0
	bnez.n	a10, .L46
	.loc 1 222 0
	movi.n	a11, 0x10
	mov.n	a10, sp
.LVL73:
	call8	sdmmc_flip_byte_order
.LVL74:
	.loc 1 223 0
	mov.n	a11, a3
	mov.n	a10, sp
	call8	sdmmc_decode_cid
.LVL75:
	mov.n	a2, a10
.LVL76:
	retw.n
.LVL77:
.L46:
	.loc 1 220 0
	mov.n	a2, a10
.LVL78:
	.loc 1 224 0
	retw.n
.LFE30:
	.size	sdmmc_send_cmd_send_cid, .-sdmmc_send_cmd_send_cid
	.section	.rodata.str1.4
	.align	4
.LC32:
	.string	"out_rca"
	.section	.text.sdmmc_send_cmd_set_relative_addr,"ax",@progbits
	.literal_position
	.literal .LC33, .LC32
	.literal .LC34, __func__$5648
	.literal .LC35, .LC15
	.literal .LC36, 7216
	.literal .LC38, 65536
	.align	4
	.global	sdmmc_send_cmd_set_relative_addr
	.type	sdmmc_send_cmd_set_relative_addr, @function
sdmmc_send_cmd_set_relative_addr:
.LFB31:
	.loc 1 228 0
.LVL79:
	entry	sp, 80
.LCFI8:
	.loc 1 229 0
	bnez.n	a3, .L48
	.loc 1 229 0 is_stmt 0 discriminator 1
	l32r	a13, .LC33
	l32r	a12, .LC34
	movi	a11, 0xe5
	l32r	a10, .LC35
	call8	__assert_func
.LVL80:
.L48:
	.loc 1 230 0 is_stmt 1
	movi.n	a8, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	s32i.n	a8, sp, 32
	s32i.n	a8, sp, 40
	s32i.n	a8, sp, 44
	movi.n	a8, 3
	s32i.n	a8, sp, 0
	l32r	a8, .LC36
	s32i.n	a8, sp, 36
.LVL81:
	.loc 1 239 0
	l32i	a8, a2, 128
	bbci	a8, 18, .L49
	.loc 1 240 0
	l32r	a8, .LC38
	s32i.n	a8, sp, 4
.L49:
	.loc 1 243 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	sdmmc_send_cmd
.LVL82:
	.loc 1 244 0
	bnez.n	a10, .L52
	.loc 1 247 0
	l32i	a2, a2, 128
.LVL83:
	bbsi	a2, 18, .L53
	.loc 1 247 0 is_stmt 0 discriminator 1
	l16ui	a2, sp, 10
	j	.L51
.L53:
	.loc 1 247 0
	movi.n	a2, 1
.L51:
	.loc 1 247 0 discriminator 4
	s16i	a2, a3, 0
	.loc 1 248 0 is_stmt 1 discriminator 4
	movi.n	a2, 0
	retw.n
.LVL84:
.L52:
	.loc 1 245 0
	mov.n	a2, a10
.LVL85:
	.loc 1 249 0
	retw.n
.LFE31:
	.size	sdmmc_send_cmd_set_relative_addr, .-sdmmc_send_cmd_set_relative_addr
	.section	.text.sdmmc_send_cmd_set_blocklen,"ax",@progbits
	.literal_position
	.literal .LC39, 7168
	.align	4
	.global	sdmmc_send_cmd_set_blocklen
	.type	sdmmc_send_cmd_set_blocklen, @function
sdmmc_send_cmd_set_blocklen:
.LFB32:
	.loc 1 252 0
.LVL86:
	entry	sp, 80
.LCFI9:
	.loc 1 253 0
	movi.n	a8, 0
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	s32i.n	a8, sp, 32
	s32i.n	a8, sp, 40
	s32i.n	a8, sp, 44
	movi.n	a8, 0x10
	s32i.n	a8, sp, 0
	.loc 1 255 0
	l32i.n	a8, a3, 12
	.loc 1 253 0
	s32i.n	a8, sp, 4
	l32r	a8, .LC39
	s32i.n	a8, sp, 36
	.loc 1 258 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	sdmmc_send_cmd
.LVL87:
	.loc 1 259 0
	mov.n	a2, a10
.LVL88:
	retw.n
.LFE32:
	.size	sdmmc_send_cmd_set_blocklen, .-sdmmc_send_cmd_set_blocklen
	.section	.text.sdmmc_send_cmd_send_csd,"ax",@progbits
	.literal_position
	.literal .LC40, 7248
	.literal .LC41, 5632
	.align	4
	.global	sdmmc_send_cmd_send_csd
	.type	sdmmc_send_cmd_send_csd, @function
sdmmc_send_cmd_send_csd:
.LFB33:
	.loc 1 262 0
.LVL89:
	entry	sp, 96
.LCFI10:
.LVL90:
.LBB34:
.LBB35:
	.loc 2 122 0
	l32i.n	a8, a2, 0
	movi.n	a4, 8
	and	a4, a8, a4
.LBE35:
.LBE34:
	.loc 1 268 0
	movi.n	a8, 0
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	s32i.n	a8, sp, 32
	s32i.n	a8, sp, 36
	s32i.n	a8, sp, 48
	s32i.n	a8, sp, 56
	s32i.n	a8, sp, 60
	movi.n	a8, 9
	s32i.n	a8, sp, 16
	bnez.n	a4, .L63
	.loc 1 270 0 discriminator 2
	l16ui	a8, a2, 126
	slli	a8, a8, 16
	j	.L56
.L63:
	.loc 1 268 0
	movi.n	a8, 0
.L56:
	.loc 1 268 0 is_stmt 0 discriminator 4
	s32i.n	a8, sp, 20
	.loc 1 273 0 is_stmt 1 discriminator 4
	beqz.n	a4, .L64
	.loc 1 273 0 is_stmt 0
	mov.n	a8, sp
	j	.L57
.L64:
	movi.n	a8, 0
.L57:
	.loc 1 268 0 is_stmt 1
	s32i.n	a8, sp, 40
	.loc 1 274 0
	beqz.n	a4, .L65
	movi.n	a8, 0x10
	j	.L58
.L65:
	movi.n	a8, 0
.L58:
	.loc 1 268 0
	s32i.n	a8, sp, 44
	.loc 1 271 0
	beqz.n	a4, .L66
	l32r	a8, .LC40
	j	.L59
.L66:
	l32r	a8, .LC41
.L59:
	.loc 1 268 0
	s32i.n	a8, sp, 52
	.loc 1 276 0
	addi	a11, sp, 16
	mov.n	a10, a2
	call8	sdmmc_send_cmd
.LVL91:
	.loc 1 277 0
	bnez.n	a10, .L67
.LVL92:
	.loc 1 281 0
	beqz.n	a4, .L68
	.loc 1 282 0
	movi.n	a11, 0x10
	mov.n	a10, sp
.LVL93:
	call8	sdmmc_flip_byte_order
.LVL94:
	.loc 1 283 0
	mov.n	a10, sp
.LVL95:
	j	.L61
.LVL96:
.L68:
	.loc 1 280 0
	addi	a10, sp, 24
.LVL97:
.L61:
	.loc 1 285 0
	l32i	a2, a2, 128
.LVL98:
	bbci	a2, 18, .L62
	.loc 1 286 0
	mov.n	a11, a3
	addi	a10, sp, 24
.LVL99:
	call8	sdmmc_mmc_decode_csd
.LVL100:
	mov.n	a2, a10
	retw.n
.LVL101:
.L62:
	.loc 1 288 0
	mov.n	a11, a3
	call8	sdmmc_decode_csd
.LVL102:
	mov.n	a2, a10
	retw.n
.LVL103:
.L67:
	.loc 1 278 0
	mov.n	a2, a10
.LVL104:
	.loc 1 291 0
	retw.n
.LFE33:
	.size	sdmmc_send_cmd_send_csd, .-sdmmc_send_cmd_send_csd
	.section	.text.sdmmc_send_cmd_select_card,"ax",@progbits
	.literal_position
	.literal .LC43, 7168
	.align	4
	.global	sdmmc_send_cmd_select_card
	.type	sdmmc_send_cmd_select_card, @function
sdmmc_send_cmd_select_card:
.LFB34:
	.loc 1 294 0
.LVL105:
	entry	sp, 80
.LCFI11:
	mov.n	a10, a2
	.loc 1 296 0
	bnez.n	a3, .L71
	movi.n	a9, 0
	j	.L70
.L71:
	l32r	a9, .LC43
.L70:
.LVL106:
	.loc 1 297 0 discriminator 4
	movi.n	a8, 0
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	s32i.n	a8, sp, 32
	s32i.n	a8, sp, 40
	s32i.n	a8, sp, 44
	movi.n	a8, 7
	s32i.n	a8, sp, 0
	.loc 1 299 0 discriminator 4
	slli	a3, a3, 16
.LVL107:
	.loc 1 297 0 discriminator 4
	s32i.n	a3, sp, 4
	s32i.n	a9, sp, 36
	.loc 1 302 0 discriminator 4
	mov.n	a11, sp
	call8	sdmmc_send_cmd
.LVL108:
	.loc 1 303 0 discriminator 4
	mov.n	a2, a10
.LVL109:
	retw.n
.LFE34:
	.size	sdmmc_send_cmd_select_card, .-sdmmc_send_cmd_select_card
	.section	.text.sdmmc_send_cmd_send_scr,"ax",@progbits
	.literal_position
	.literal .LC44, 7248
	.align	4
	.global	sdmmc_send_cmd_send_scr
	.type	sdmmc_send_cmd_send_scr, @function
sdmmc_send_cmd_send_scr:
.LFB35:
	.loc 1 306 0
.LVL110:
	entry	sp, 80
.LCFI12:
.LVL111:
	.loc 1 308 0
	movi.n	a11, 8
	mov.n	a10, a11
	call8	heap_caps_malloc
.LVL112:
	mov.n	a4, a10
.LVL113:
	.loc 1 309 0
	beqz.n	a10, .L75
	.loc 1 312 0
	movi.n	a8, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 40
	s32i.n	a8, sp, 44
	movi.n	a8, 0x33
	s32i.n	a8, sp, 0
	s32i.n	a10, sp, 24
	movi.n	a8, 8
	s32i.n	a8, sp, 28
	s32i.n	a8, sp, 32
	l32r	a8, .LC44
	s32i.n	a8, sp, 36
	.loc 1 319 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	sdmmc_send_app_cmd
.LVL114:
	mov.n	a2, a10
.LVL115:
	.loc 1 320 0
	bnez.n	a10, .L74
	.loc 1 321 0
	mov.n	a11, a3
	mov.n	a10, a4
	call8	sdmmc_decode_scr
.LVL116:
	mov.n	a2, a10
.LVL117:
.L74:
	.loc 1 323 0
	mov.n	a10, a4
	call8	free
.LVL118:
	.loc 1 324 0
	retw.n
.LVL119:
.L75:
	.loc 1 310 0
	movi	a2, 0x101
.LVL120:
	.loc 1 325 0
	retw.n
.LFE35:
	.size	sdmmc_send_cmd_send_scr, .-sdmmc_send_cmd_send_scr
	.section	.text.sdmmc_send_cmd_set_bus_width,"ax",@progbits
	.literal_position
	.literal .LC45, 7168
	.align	4
	.global	sdmmc_send_cmd_set_bus_width
	.type	sdmmc_send_cmd_set_bus_width, @function
sdmmc_send_cmd_set_bus_width:
.LFB36:
	.loc 1 328 0
.LVL121:
	entry	sp, 80
.LCFI13:
	mov.n	a10, a2
	.loc 1 329 0
	movi.n	a8, 0
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	s32i.n	a8, sp, 32
	s32i.n	a8, sp, 40
	s32i.n	a8, sp, 44
	movi.n	a8, 6
	s32i.n	a8, sp, 0
	bnei	a3, 4, .L78
	movi.n	a8, 2
	j	.L77
.L78:
	movi.n	a8, 0
.L77:
	.loc 1 329 0 is_stmt 0 discriminator 4
	s32i.n	a8, sp, 4
	l32r	a8, .LC45
	s32i.n	a8, sp, 36
	.loc 1 335 0 is_stmt 1 discriminator 4
	mov.n	a11, sp
	call8	sdmmc_send_app_cmd
.LVL122:
	.loc 1 336 0 discriminator 4
	mov.n	a2, a10
.LVL123:
	retw.n
.LFE36:
	.size	sdmmc_send_cmd_set_bus_width, .-sdmmc_send_cmd_set_bus_width
	.section	.rodata.str1.4
	.align	4
.LC46:
	.string	"host_is_spi(card) && \"CRC_ON_OFF can only be used in SPI mode\""
	.section	.text.sdmmc_send_cmd_crc_on_off,"ax",@progbits
	.literal_position
	.literal .LC47, .LC46
	.literal .LC48, __func__$5689
	.literal .LC49, .LC15
	.literal .LC50, 7168
	.align	4
	.global	sdmmc_send_cmd_crc_on_off
	.type	sdmmc_send_cmd_crc_on_off, @function
sdmmc_send_cmd_crc_on_off:
.LFB37:
	.loc 1 339 0
.LVL124:
	entry	sp, 80
.LCFI14:
	extui	a3, a3, 0, 8
.LVL125:
.LBB36:
.LBB37:
	.loc 2 122 0
	l32i.n	a8, a2, 0
.LBE37:
.LBE36:
	.loc 1 340 0
	bbsi	a8, 3, .L80
	.loc 1 340 0 is_stmt 0 discriminator 3
	l32r	a13, .LC47
	l32r	a12, .LC48
	movi	a11, 0x154
	l32r	a10, .LC49
	call8	__assert_func
.LVL126:
.L80:
	.loc 1 341 0 is_stmt 1
	movi.n	a8, 0
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	s32i.n	a8, sp, 32
	s32i.n	a8, sp, 40
	s32i.n	a8, sp, 44
	movi.n	a8, 0x3b
	s32i.n	a8, sp, 0
	s32i.n	a3, sp, 4
	l32r	a3, .LC50
.LVL127:
	s32i.n	a3, sp, 36
	.loc 1 346 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	sdmmc_send_cmd
.LVL128:
	.loc 1 347 0
	mov.n	a2, a10
.LVL129:
	retw.n
.LFE37:
	.size	sdmmc_send_cmd_crc_on_off, .-sdmmc_send_cmd_crc_on_off
	.section	.text.sdmmc_send_cmd_send_status,"ax",@progbits
	.literal_position
	.literal .LC51, 7168
	.align	4
	.global	sdmmc_send_cmd_send_status
	.type	sdmmc_send_cmd_send_status, @function
sdmmc_send_cmd_send_status:
.LFB38:
	.loc 1 350 0
.LVL130:
	entry	sp, 80
.LCFI15:
	.loc 1 351 0
	movi.n	a8, 0
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	s32i.n	a8, sp, 32
	s32i.n	a8, sp, 40
	s32i.n	a8, sp, 44
	movi.n	a8, 0xd
	s32i.n	a8, sp, 0
	.loc 1 353 0
	l16ui	a8, a2, 126
	slli	a8, a8, 16
	.loc 1 351 0
	s32i.n	a8, sp, 4
	l32r	a8, .LC51
	s32i.n	a8, sp, 36
	.loc 1 356 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	sdmmc_send_cmd
.LVL131:
	.loc 1 357 0
	bnez.n	a10, .L83
	.loc 1 360 0
	beqz.n	a3, .L84
	.loc 1 361 0
	l32i.n	a2, sp, 8
.LVL132:
	s32i.n	a2, a3, 0
	.loc 1 363 0
	movi.n	a2, 0
	retw.n
.LVL133:
.L83:
	.loc 1 358 0
	mov.n	a2, a10
.LVL134:
	retw.n
.LVL135:
.L84:
	.loc 1 363 0
	movi.n	a2, 0
.LVL136:
	.loc 1 364 0
	retw.n
.LFE38:
	.size	sdmmc_send_cmd_send_status, .-sdmmc_send_cmd_send_status
	.section	.rodata.str1.4
	.align	4
.LC57:
	.string	"\033[0;31mE (%d) %s: %s: sdmmc_send_cmd returned 0x%x\033[0m\n"
	.section	.text.sdmmc_write_sectors_dma,"ax",@progbits
	.literal_position
	.literal .LC52, 7184
	.literal .LC53, 5000
	.literal .LC55, __func__$5721
	.literal .LC56, .LC1
	.literal .LC58, .LC57
	.align	4
	.global	sdmmc_write_sectors_dma
	.type	sdmmc_write_sectors_dma, @function
sdmmc_write_sectors_dma:
.LFB40:
	.loc 1 399 0
.LVL137:
	entry	sp, 112
.LCFI16:
	.loc 1 400 0
	add.n	a8, a4, a5
	l32i	a9, a2, 96
	bltu	a9, a8, .L94
	.loc 1 403 0
	l32i	a9, a2, 100
.LVL138:
	.loc 1 404 0
	movi.n	a8, 0
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	s32i.n	a8, sp, 32
	s32i.n	a8, sp, 36
	s32i.n	a8, sp, 56
	s32i.n	a3, sp, 40
	.loc 1 408 0
	mull	a3, a5, a9
.LVL139:
	.loc 1 404 0
	s32i.n	a3, sp, 44
	s32i.n	a9, sp, 48
	l32r	a3, .LC52
	s32i.n	a3, sp, 52
	l32r	a3, .LC53
	s32i.n	a3, sp, 60
	.loc 1 411 0
	bnei	a5, 1, .L87
	.loc 1 412 0
	movi.n	a3, 0x18
	s32i.n	a3, sp, 16
	j	.L88
.L87:
	.loc 1 414 0
	movi.n	a3, 0x19
	s32i.n	a3, sp, 16
.L88:
	.loc 1 416 0
	l32i.n	a3, a2, 56
	bbci	a3, 30, .L89
	.loc 1 417 0
	s32i.n	a4, sp, 20
	j	.L90
.L89:
	.loc 1 419 0
	mull	a4, a4, a9
.LVL140:
	s32i.n	a4, sp, 20
.L90:
	.loc 1 421 0
	addi	a11, sp, 16
	mov.n	a10, a2
	call8	sdmmc_send_cmd
.LVL141:
	mov.n	a3, a10
.LVL142:
	.loc 1 422 0
	beqz.n	a10, .L91
	.loc 1 423 0 discriminator 2
	call8	esp_log_timestamp
.LVL143:
	l32r	a11, .LC56
	s32i.n	a3, sp, 0
	l32r	a15, .LC55
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC58
	movi.n	a10, 1
	call8	esp_log_write
.LVL144:
	.loc 1 424 0 discriminator 2
	mov.n	a2, a3
.LVL145:
	retw.n
.LVL146:
.L91:
	.loc 1 426 0
	movi.n	a3, 0
.LVL147:
	s32i	a3, sp, 64
.LVL148:
	.loc 1 428 0
	j	.L92
.LVL149:
.L93:
	.loc 1 430 0
	addi	a11, sp, 64
	mov.n	a10, a2
.LVL150:
	call8	sdmmc_send_cmd_send_status
.LVL151:
	.loc 1 431 0
	bnez.n	a10, .L95
.LVL152:
.L92:
.LBB38:
.LBB39:
	.loc 2 122 0
	l32i.n	a3, a2, 0
.LBE39:
.LBE38:
	.loc 1 428 0
	bbsi	a3, 3, .L96
	.loc 1 428 0 is_stmt 0 discriminator 1
	l32i	a3, sp, 64
	bbci	a3, 8, .L93
	.loc 1 438 0 is_stmt 1
	movi.n	a2, 0
.LVL153:
	retw.n
.LVL154:
.L94:
	.loc 1 401 0
	movi	a2, 0x104
.LVL155:
	retw.n
.LVL156:
.L95:
	.loc 1 432 0
	mov.n	a2, a10
.LVL157:
	retw.n
.LVL158:
.L96:
	.loc 1 438 0
	movi.n	a2, 0
.LVL159:
	.loc 1 439 0
	retw.n
.LFE40:
	.size	sdmmc_write_sectors_dma, .-sdmmc_write_sectors_dma
	.section	.text.sdmmc_write_sectors,"ax",@progbits
	.literal_position
	.literal .LC59, -1073405952
	.literal .LC60, 335871
	.align	4
	.global	sdmmc_write_sectors
	.type	sdmmc_write_sectors, @function
sdmmc_write_sectors:
.LFB39:
	.loc 1 368 0
.LVL160:
	entry	sp, 48
.LCFI17:
	s32i.n	a4, sp, 4
	s32i.n	a5, sp, 0
.LVL161:
	.loc 1 370 0
	l32i	a7, a2, 100
.LVL162:
.LBB40:
.LBB41:
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/soc_memory_layout.h"
	.loc 3 144 0
	l32r	a4, .LC59
.LVL163:
	add.n	a4, a3, a4
.LBE41:
.LBE40:
	.loc 1 371 0
	l32r	a5, .LC60
.LVL164:
	bltu	a5, a4, .L98
	.loc 1 371 0 is_stmt 0 discriminator 1
	extui	a4, a3, 0, 2
	bnez.n	a4, .L98
	.loc 1 372 0 is_stmt 1
	l32i.n	a13, sp, 0
	l32i.n	a12, sp, 4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	sdmmc_write_sectors_dma
.LVL165:
	mov.n	a2, a10
.LVL166:
	retw.n
.LVL167:
.L98:
.LBB42:
	.loc 1 377 0
	movi.n	a11, 8
	mov.n	a10, a7
	call8	heap_caps_malloc
.LVL168:
	mov.n	a6, a10
.LVL169:
	.loc 1 378 0
	beqz.n	a10, .L103
	movi.n	a4, 0
	mov.n	a5, a4
	j	.L100
.LVL170:
.L102:
.LBB43:
	.loc 1 383 0
	mov.n	a12, a7
	mov.n	a11, a3
	mov.n	a10, a6
	call8	memcpy
.LVL171:
	.loc 1 384 0
	add.n	a3, a3, a7
.LVL172:
	.loc 1 385 0
	movi.n	a13, 1
	l32i.n	a5, sp, 4
.LVL173:
	add.n	a12, a4, a5
	mov.n	a11, a6
	mov.n	a10, a2
	call8	sdmmc_write_sectors_dma
.LVL174:
	mov.n	a5, a10
.LVL175:
	.loc 1 386 0
	bnez.n	a10, .L101
	.loc 1 382 0 discriminator 2
	addi.n	a4, a4, 1
.LVL176:
.L100:
	.loc 1 382 0 is_stmt 0 discriminator 1
	l32i.n	a8, sp, 0
	bltu	a4, a8, .L102
.L101:
.LBE43:
	.loc 1 392 0 is_stmt 1
	mov.n	a10, a6
	call8	free
.LVL177:
	mov.n	a2, a5
.LVL178:
	retw.n
.LVL179:
.L103:
	.loc 1 379 0
	movi	a2, 0x101
.LVL180:
.LBE42:
	.loc 1 395 0
	retw.n
.LFE39:
	.size	sdmmc_write_sectors, .-sdmmc_write_sectors
	.section	.text.sdmmc_read_sectors_dma,"ax",@progbits
	.literal_position
	.literal .LC61, 7248
	.literal .LC63, __func__$5751
	.literal .LC64, .LC1
	.literal .LC65, .LC57
	.align	4
	.global	sdmmc_read_sectors_dma
	.type	sdmmc_read_sectors_dma, @function
sdmmc_read_sectors_dma:
.LFB42:
	.loc 1 474 0
.LVL181:
	entry	sp, 112
.LCFI18:
	.loc 1 475 0
	add.n	a8, a4, a5
	l32i	a9, a2, 96
	bltu	a9, a8, .L113
	.loc 1 478 0
	l32i	a9, a2, 100
.LVL182:
	.loc 1 479 0
	movi.n	a8, 0
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	s32i.n	a8, sp, 32
	s32i.n	a8, sp, 36
	s32i.n	a8, sp, 56
	s32i.n	a8, sp, 60
	s32i.n	a3, sp, 40
	.loc 1 483 0
	mull	a3, a5, a9
.LVL183:
	.loc 1 479 0
	s32i.n	a3, sp, 44
	s32i.n	a9, sp, 48
	l32r	a3, .LC61
	s32i.n	a3, sp, 52
	.loc 1 485 0
	bnei	a5, 1, .L106
	.loc 1 486 0
	movi.n	a3, 0x11
	s32i.n	a3, sp, 16
	j	.L107
.L106:
	.loc 1 488 0
	movi.n	a3, 0x12
	s32i.n	a3, sp, 16
.L107:
	.loc 1 490 0
	l32i.n	a3, a2, 56
	bbci	a3, 30, .L108
	.loc 1 491 0
	s32i.n	a4, sp, 20
	j	.L109
.L108:
	.loc 1 493 0
	mull	a4, a4, a9
.LVL184:
	s32i.n	a4, sp, 20
.L109:
	.loc 1 495 0
	addi	a11, sp, 16
	mov.n	a10, a2
	call8	sdmmc_send_cmd
.LVL185:
	mov.n	a3, a10
.LVL186:
	.loc 1 496 0
	beqz.n	a10, .L110
	.loc 1 497 0 discriminator 2
	call8	esp_log_timestamp
.LVL187:
	l32r	a11, .LC64
	s32i.n	a3, sp, 0
	l32r	a15, .LC63
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC65
	movi.n	a10, 1
	call8	esp_log_write
.LVL188:
	.loc 1 498 0 discriminator 2
	mov.n	a2, a3
.LVL189:
	retw.n
.LVL190:
.L110:
	.loc 1 500 0
	movi.n	a3, 0
.LVL191:
	s32i	a3, sp, 64
.LVL192:
	.loc 1 502 0
	j	.L111
.LVL193:
.L112:
	.loc 1 504 0
	addi	a11, sp, 64
	mov.n	a10, a2
.LVL194:
	call8	sdmmc_send_cmd_send_status
.LVL195:
	.loc 1 505 0
	bnez.n	a10, .L114
.LVL196:
.L111:
.LBB44:
.LBB45:
	.loc 2 122 0
	l32i.n	a3, a2, 0
.LBE45:
.LBE44:
	.loc 1 502 0
	bbsi	a3, 3, .L115
	.loc 1 502 0 is_stmt 0 discriminator 1
	l32i	a3, sp, 64
	bbci	a3, 8, .L112
	.loc 1 512 0 is_stmt 1
	movi.n	a2, 0
.LVL197:
	retw.n
.LVL198:
.L113:
	.loc 1 476 0
	movi	a2, 0x104
.LVL199:
	retw.n
.LVL200:
.L114:
	.loc 1 506 0
	mov.n	a2, a10
.LVL201:
	retw.n
.LVL202:
.L115:
	.loc 1 512 0
	movi.n	a2, 0
.LVL203:
	.loc 1 513 0
	retw.n
.LFE42:
	.size	sdmmc_read_sectors_dma, .-sdmmc_read_sectors_dma
	.section	.text.sdmmc_read_sectors,"ax",@progbits
	.literal_position
	.literal .LC66, -1073405952
	.literal .LC67, 335871
	.align	4
	.global	sdmmc_read_sectors
	.type	sdmmc_read_sectors, @function
sdmmc_read_sectors:
.LFB41:
	.loc 1 443 0
.LVL204:
	entry	sp, 48
.LCFI19:
	s32i.n	a4, sp, 4
	s32i.n	a5, sp, 0
.LVL205:
	.loc 1 445 0
	l32i	a7, a2, 100
.LVL206:
.LBB46:
.LBB47:
	.loc 3 144 0
	l32r	a4, .LC66
.LVL207:
	add.n	a4, a3, a4
.LBE47:
.LBE46:
	.loc 1 446 0
	l32r	a5, .LC67
.LVL208:
	bltu	a5, a4, .L117
	.loc 1 446 0 is_stmt 0 discriminator 1
	extui	a4, a3, 0, 2
	bnez.n	a4, .L117
	.loc 1 447 0 is_stmt 1
	l32i.n	a13, sp, 0
	l32i.n	a12, sp, 4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	sdmmc_read_sectors_dma
.LVL209:
	mov.n	a2, a10
.LVL210:
	retw.n
.LVL211:
.L117:
.LBB48:
	.loc 1 452 0
	movi.n	a11, 8
	mov.n	a10, a7
	call8	heap_caps_malloc
.LVL212:
	mov.n	a6, a10
.LVL213:
	.loc 1 453 0
	beqz.n	a10, .L122
	movi.n	a4, 0
	mov.n	a5, a4
	j	.L119
.LVL214:
.L121:
.LBB49:
	.loc 1 458 0
	movi.n	a13, 1
	l32i.n	a5, sp, 4
.LVL215:
	add.n	a12, a4, a5
	mov.n	a11, a6
	mov.n	a10, a2
	call8	sdmmc_read_sectors_dma
.LVL216:
	mov.n	a5, a10
.LVL217:
	.loc 1 459 0
	bnez.n	a10, .L120
	.loc 1 464 0 discriminator 2
	mov.n	a12, a7
	mov.n	a11, a6
	mov.n	a10, a3
	call8	memcpy
.LVL218:
	.loc 1 465 0 discriminator 2
	add.n	a3, a3, a7
.LVL219:
	.loc 1 457 0 discriminator 2
	addi.n	a4, a4, 1
.LVL220:
.L119:
	.loc 1 457 0 is_stmt 0 discriminator 1
	l32i.n	a8, sp, 0
	bltu	a4, a8, .L121
.L120:
.LBE49:
	.loc 1 467 0 is_stmt 1
	mov.n	a10, a6
	call8	free
.LVL221:
	mov.n	a2, a5
.LVL222:
	retw.n
.LVL223:
.L122:
	.loc 1 454 0
	movi	a2, 0x101
.LVL224:
.LBE48:
	.loc 1 470 0
	retw.n
.LFE41:
	.size	sdmmc_read_sectors, .-sdmmc_read_sectors
	.section	.rodata.__func__$5751,"a",@progbits
	.align	4
	.type	__func__$5751, @object
	.size	__func__$5751, 23
__func__$5751:
	.string	"sdmmc_read_sectors_dma"
	.section	.rodata.__func__$5721,"a",@progbits
	.align	4
	.type	__func__$5721, @object
	.size	__func__$5721, 24
__func__$5721:
	.string	"sdmmc_write_sectors_dma"
	.section	.rodata.__func__$5689,"a",@progbits
	.align	4
	.type	__func__$5689, @object
	.size	__func__$5689, 26
__func__$5689:
	.string	"sdmmc_send_cmd_crc_on_off"
	.section	.rodata.__func__$5648,"a",@progbits
	.align	4
	.type	__func__$5648, @object
	.size	__func__$5648, 33
__func__$5648:
	.string	"sdmmc_send_cmd_set_relative_addr"
	.section	.rodata.__func__$5640,"a",@progbits
	.align	4
	.type	__func__$5640, @object
	.size	__func__$5640, 24
__func__$5640:
	.string	"sdmmc_send_cmd_send_cid"
	.section	.rodata.__func__$5633,"a",@progbits
	.align	4
	.type	__func__$5633, @object
	.size	__func__$5633, 28
__func__$5633:
	.string	"sdmmc_send_cmd_all_send_cid"
	.section	.rodata.__func__$5626,"a",@progbits
	.align	4
	.type	__func__$5626, @object
	.size	__func__$5626, 24
__func__$5626:
	.string	"sdmmc_send_cmd_read_ocr"
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI0-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI1-.LFB24
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI2-.LFB25
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI3-.LFB26
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI4-.LFB27
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI5-.LFB28
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI6-.LFB29
	.byte	0xe
	.uleb128 0x50
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
	.uleb128 0x60
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI8-.LFB31
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI9-.LFB32
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI10-.LFB33
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI11-.LFB34
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI12-.LFB35
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI13-.LFB36
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI14-.LFB37
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI15-.LFB38
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI16-.LFB40
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI17-.LFB39
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI18-.LFB42
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI19-.LFB41
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE38:
	.text
.Letext0:
	.file 4 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/driver/include/driver/sdmmc_types.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/task.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/heap/include/esp_heap_caps.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x17dd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0xc
	.4byte	.LASF147
	.4byte	.LASF148
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
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x5
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x31
	.4byte	0x25
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x7
	.4byte	0xb6
	.uleb128 0x8
	.4byte	0xb6
	.4byte	0xd8
	.uleb128 0x9
	.4byte	0xa6
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0xa9
	.4byte	0x94
	.uleb128 0x6
	.byte	0x4
	.4byte	0x115
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x4
	.4byte	0x37
	.byte	0xa
	.byte	0x1f
	.4byte	0x147
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0x18
	.4byte	0xee
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF29
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0x76
	.4byte	0xf9
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe3
	.uleb128 0x7
	.4byte	0xbd
	.uleb128 0xd
	.byte	0x1c
	.byte	0x9
	.byte	0x1d
	.4byte	0x1cc
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x9
	.byte	0x1e
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x9
	.byte	0x1f
	.4byte	0x25
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x9
	.byte	0x20
	.4byte	0x25
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x9
	.byte	0x21
	.4byte	0x25
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x9
	.byte	0x22
	.4byte	0x25
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x9
	.byte	0x23
	.4byte	0x25
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x9
	.byte	0x24
	.4byte	0x25
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x9
	.byte	0x25
	.4byte	0x16f
	.uleb128 0xd
	.byte	0x1c
	.byte	0x9
	.byte	0x2a
	.4byte	0x228
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x9
	.byte	0x2b
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x9
	.byte	0x2c
	.4byte	0x25
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x9
	.byte	0x2d
	.4byte	0xc8
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x9
	.byte	0x2e
	.4byte	0x25
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x9
	.byte	0x2f
	.4byte	0x25
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x9
	.byte	0x30
	.4byte	0x25
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x9
	.byte	0x31
	.4byte	0x1d7
	.uleb128 0xd
	.byte	0x8
	.byte	0x9
	.byte	0x36
	.4byte	0x254
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x9
	.byte	0x37
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x9
	.byte	0x38
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x9
	.byte	0x39
	.4byte	0x233
	.uleb128 0xd
	.byte	0x1
	.byte	0x9
	.byte	0x3e
	.4byte	0x274
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x9
	.byte	0x3f
	.4byte	0xd8
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x9
	.byte	0x40
	.4byte	0x25f
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x9
	.byte	0x45
	.4byte	0x28a
	.uleb128 0x8
	.4byte	0xf9
	.4byte	0x29a
	.uleb128 0x9
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.byte	0x30
	.byte	0x9
	.byte	0x51
	.4byte	0x30f
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x9
	.byte	0x52
	.4byte	0xf9
	.byte	0
	.uleb128 0xf
	.string	"arg"
	.byte	0x9
	.byte	0x53
	.4byte	0xf9
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x9
	.byte	0x54
	.4byte	0x27f
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x9
	.byte	0x55
	.4byte	0xad
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x9
	.byte	0x56
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x9
	.byte	0x57
	.4byte	0x2c
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x9
	.byte	0x58
	.4byte	0x25
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x9
	.byte	0x74
	.4byte	0x147
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x9
	.byte	0x75
	.4byte	0x25
	.byte	0x2c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x9
	.byte	0x76
	.4byte	0x29a
	.uleb128 0xd
	.byte	0x38
	.byte	0x9
	.byte	0x7e
	.4byte	0x3cb
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x9
	.byte	0x7f
	.4byte	0xf9
	.byte	0
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x9
	.byte	0x85
	.4byte	0x25
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x9
	.byte	0x86
	.4byte	0x25
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x9
	.byte	0x8c
	.4byte	0x3cb
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x9
	.byte	0x8d
	.4byte	0x3d7
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x9
	.byte	0x8e
	.4byte	0x3f1
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x9
	.byte	0x8f
	.4byte	0x406
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x9
	.byte	0x90
	.4byte	0x420
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x9
	.byte	0x91
	.4byte	0x43a
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x9
	.byte	0x92
	.4byte	0x45a
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x9
	.byte	0x93
	.4byte	0x3d7
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x9
	.byte	0x94
	.4byte	0x46f
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x9
	.byte	0x95
	.4byte	0x489
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x9
	.byte	0x96
	.4byte	0x25
	.byte	0x34
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF74
	.uleb128 0x10
	.4byte	0x147
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3d2
	.uleb128 0x11
	.4byte	0x147
	.4byte	0x3f1
	.uleb128 0x12
	.4byte	0x25
	.uleb128 0x12
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3dd
	.uleb128 0x11
	.4byte	0x2c
	.4byte	0x406
	.uleb128 0x12
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3f7
	.uleb128 0x11
	.4byte	0x147
	.4byte	0x420
	.uleb128 0x12
	.4byte	0x25
	.uleb128 0x12
	.4byte	0x152
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x40c
	.uleb128 0x11
	.4byte	0x147
	.4byte	0x43a
	.uleb128 0x12
	.4byte	0x25
	.uleb128 0x12
	.4byte	0xf9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x426
	.uleb128 0x11
	.4byte	0x147
	.4byte	0x454
	.uleb128 0x12
	.4byte	0x25
	.uleb128 0x12
	.4byte	0x454
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x30f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x440
	.uleb128 0x11
	.4byte	0x147
	.4byte	0x46f
	.uleb128 0x12
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x460
	.uleb128 0x11
	.4byte	0x147
	.4byte	0x489
	.uleb128 0x12
	.4byte	0x25
	.uleb128 0x12
	.4byte	0x159
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x475
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x9
	.byte	0x97
	.4byte	0x31a
	.uleb128 0xd
	.byte	0x88
	.byte	0x9
	.byte	0x9c
	.4byte	0x56c
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0x9
	.byte	0x9d
	.4byte	0x48f
	.byte	0
	.uleb128 0xf
	.string	"ocr"
	.byte	0x9
	.byte	0x9e
	.4byte	0xf9
	.byte	0x38
	.uleb128 0xf
	.string	"cid"
	.byte	0x9
	.byte	0x9f
	.4byte	0x228
	.byte	0x3c
	.uleb128 0xf
	.string	"csd"
	.byte	0x9
	.byte	0xa0
	.4byte	0x1cc
	.byte	0x58
	.uleb128 0xf
	.string	"scr"
	.byte	0x9
	.byte	0xa1
	.4byte	0x254
	.byte	0x74
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x9
	.byte	0xa2
	.4byte	0x274
	.byte	0x7c
	.uleb128 0xf
	.string	"rca"
	.byte	0x9
	.byte	0xa3
	.4byte	0xe3
	.byte	0x7e
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x9
	.byte	0xa4
	.4byte	0xe3
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x9
	.byte	0xa5
	.4byte	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x9
	.byte	0xa6
	.4byte	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x9
	.byte	0xa7
	.4byte	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x9
	.byte	0xa8
	.4byte	0xf9
	.byte	0x4
	.byte	0x3
	.byte	0xa
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x9
	.byte	0xa9
	.4byte	0xf9
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x9
	.byte	0xaa
	.4byte	0xf9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x9
	.byte	0xab
	.4byte	0xf9
	.byte	0x4
	.byte	0x17
	.byte	0x9
	.byte	0x84
	.byte	0
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x9
	.byte	0xac
	.4byte	0x49a
	.uleb128 0x14
	.4byte	.LASF86
	.byte	0x2
	.byte	0x78
	.4byte	0x152
	.byte	0x3
	.4byte	0x593
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x2
	.byte	0x78
	.4byte	0x593
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x599
	.uleb128 0x7
	.4byte	0x56c
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x3
	.byte	0x8e
	.4byte	0x152
	.byte	0x3
	.4byte	0x5b8
	.uleb128 0x16
	.string	"p"
	.byte	0x3
	.byte	0x8e
	.4byte	0x10f
	.byte	0
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0x1
	.byte	0x17
	.4byte	0x147
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x625
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x1
	.byte	0x17
	.4byte	0x625
	.4byte	.LLST0
	.uleb128 0x19
	.string	"cmd"
	.byte	0x1
	.byte	0x17
	.4byte	0x454
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF61
	.byte	0x1
	.byte	0x1f
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x1b
	.string	"err"
	.byte	0x1
	.byte	0x22
	.4byte	0x147
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1a
	.4byte	.LASF89
	.byte	0x1
	.byte	0x27
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x1c
	.4byte	.LVL2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x56c
	.uleb128 0x17
	.4byte	.LASF91
	.byte	0x1
	.byte	0x32
	.4byte	0x147
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x704
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x1
	.byte	0x32
	.4byte	0x625
	.4byte	.LLST3
	.uleb128 0x19
	.string	"cmd"
	.byte	0x1
	.byte	0x32
	.4byte	0x454
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF92
	.byte	0x1
	.byte	0x34
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x39
	.4byte	0x147
	.4byte	.LLST4
	.uleb128 0x20
	.4byte	0x577
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.byte	0x3e
	.4byte	0x69b
	.uleb128 0x21
	.4byte	0x587
	.4byte	.LLST5
	.byte	0
	.uleb128 0x22
	.4byte	.LVL8
	.4byte	0x5b8
	.4byte	0x6b6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x23
	.4byte	.LVL10
	.4byte	0x175d
	.uleb128 0x22
	.4byte	.LVL11
	.4byte	0x1768
	.4byte	0x6ed
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x24
	.4byte	.LVL15
	.4byte	0x5b8
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF93
	.byte	0x1
	.byte	0x46
	.4byte	0x147
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7be
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x1
	.byte	0x46
	.4byte	0x625
	.4byte	.LLST6
	.uleb128 0x1b
	.string	"cmd"
	.byte	0x1
	.byte	0x48
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x4c
	.4byte	0x147
	.4byte	.LLST7
	.uleb128 0x20
	.4byte	0x577
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.byte	0x4d
	.4byte	0x765
	.uleb128 0x25
	.4byte	0x587
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x22
	.4byte	.LVL21
	.4byte	0x5b8
	.4byte	0x780
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x22
	.4byte	.LVL23
	.4byte	0x1773
	.4byte	0x793
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x22
	.4byte	.LVL25
	.4byte	0x5b8
	.4byte	0x7ae
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x24
	.4byte	.LVL27
	.4byte	0x1773
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF94
	.byte	0x1
	.byte	0x61
	.4byte	0x147
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x84c
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x1
	.byte	0x61
	.4byte	0x625
	.4byte	.LLST8
	.uleb128 0x19
	.string	"ocr"
	.byte	0x1
	.byte	0x61
	.4byte	0xf9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LASF95
	.byte	0x1
	.byte	0x63
	.4byte	0x84c
	.sleb128 -86
	.uleb128 0x1b
	.string	"cmd"
	.byte	0x1
	.byte	0x64
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.string	"err"
	.byte	0x1
	.byte	0x69
	.4byte	0x147
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1a
	.4byte	.LASF53
	.byte	0x1
	.byte	0x6d
	.4byte	0xd8
	.4byte	.LLST9
	.uleb128 0x27
	.4byte	.LASF100
	.4byte	0x861
	.uleb128 0x24
	.4byte	.LVL30
	.4byte	0x5b8
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xd8
	.uleb128 0x8
	.4byte	0xb6
	.4byte	0x861
	.uleb128 0x9
	.4byte	0xa6
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.4byte	0x851
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0x1
	.byte	0x75
	.4byte	0x147
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x950
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x1
	.byte	0x75
	.4byte	0x625
	.4byte	.LLST10
	.uleb128 0x19
	.string	"ocr"
	.byte	0x1
	.byte	0x75
	.4byte	0xf9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	.LASF97
	.byte	0x1
	.byte	0x75
	.4byte	0x950
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x77
	.4byte	0x147
	.4byte	.LLST11
	.uleb128 0x1b
	.string	"cmd"
	.byte	0x1
	.byte	0x79
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.4byte	.LASF98
	.byte	0x1
	.byte	0x7e
	.4byte	0x25
	.4byte	.LLST12
	.uleb128 0x1a
	.4byte	.LASF99
	.byte	0x1
	.byte	0x7f
	.4byte	0x25
	.4byte	.LLST13
	.uleb128 0x27
	.4byte	.LASF100
	.4byte	0x956
	.uleb128 0x20
	.4byte	0x577
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.byte	0x99
	.4byte	0x90a
	.uleb128 0x21
	.4byte	0x587
	.4byte	.LLST14
	.byte	0
	.uleb128 0x22
	.4byte	.LVL39
	.4byte	0x62b
	.4byte	0x925
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x22
	.4byte	.LVL41
	.4byte	0x5b8
	.4byte	0x940
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x24
	.4byte	.LVL45
	.4byte	0x1773
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf9
	.uleb128 0x7
	.4byte	0x851
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x1
	.byte	0xae
	.4byte	0x147
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa02
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x1
	.byte	0xae
	.4byte	0x625
	.4byte	.LLST15
	.uleb128 0x28
	.4byte	.LASF97
	.byte	0x1
	.byte	0xae
	.4byte	0x950
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	.LASF100
	.4byte	0xa12
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5626
	.uleb128 0x1b
	.string	"cmd"
	.byte	0x1
	.byte	0xb1
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.string	"err"
	.byte	0x1
	.byte	0xb5
	.4byte	0x147
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x22
	.4byte	.LVL55
	.4byte	0x177f
	.4byte	0x9ea
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xb0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5626
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.uleb128 0x24
	.4byte	.LVL56
	.4byte	0x5b8
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xb6
	.4byte	0xa12
	.uleb128 0x9
	.4byte	0xa6
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.4byte	0xa02
	.uleb128 0x17
	.4byte	.LASF102
	.byte	0x1
	.byte	0xbe
	.4byte	0x147
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae0
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x1
	.byte	0xbe
	.4byte	0x625
	.4byte	.LLST16
	.uleb128 0x28
	.4byte	.LASF103
	.byte	0x1
	.byte	0xbe
	.4byte	0xae0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	.LASF100
	.4byte	0xae6
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5633
	.uleb128 0x1b
	.string	"cmd"
	.byte	0x1
	.byte	0xc1
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0xc5
	.4byte	0x147
	.4byte	.LLST17
	.uleb128 0x22
	.4byte	.LVL61
	.4byte	0x177f
	.4byte	0xaa8
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5633
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.uleb128 0x22
	.4byte	.LVL62
	.4byte	0x5b8
	.4byte	0xac3
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x24
	.4byte	.LVL64
	.4byte	0x178a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x27f
	.uleb128 0x7
	.4byte	0x851
	.uleb128 0x17
	.4byte	.LASF104
	.byte	0x1
	.byte	0xcd
	.4byte	0x147
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc53
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x1
	.byte	0xcd
	.4byte	0x625
	.4byte	.LLST18
	.uleb128 0x28
	.4byte	.LASF105
	.byte	0x1
	.byte	0xcd
	.4byte	0xc53
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	.LASF100
	.4byte	0xc59
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5640
	.uleb128 0x1b
	.string	"buf"
	.byte	0x1
	.byte	0xd2
	.4byte	0x27f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.string	"cmd"
	.byte	0x1
	.byte	0xd3
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0xda
	.4byte	0x147
	.4byte	.LLST19
	.uleb128 0x20
	.4byte	0x577
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.byte	0xd0
	.4byte	0xb79
	.uleb128 0x21
	.4byte	0x587
	.4byte	.LLST20
	.byte	0
	.uleb128 0x22
	.4byte	.LVL69
	.4byte	0x177f
	.4byte	0xba8
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xcf
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5640
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x22
	.4byte	.LVL70
	.4byte	0x177f
	.4byte	0xbd7
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xd0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5640
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.uleb128 0x22
	.4byte	.LVL71
	.4byte	0x177f
	.4byte	0xc06
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xd1
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5640
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.uleb128 0x22
	.4byte	.LVL72
	.4byte	0x5b8
	.4byte	0xc21
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x22
	.4byte	.LVL74
	.4byte	0x1793
	.4byte	0xc3b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x24
	.4byte	.LVL75
	.4byte	0x179e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x228
	.uleb128 0x7
	.4byte	0xa02
	.uleb128 0x17
	.4byte	.LASF106
	.byte	0x1
	.byte	0xe3
	.4byte	0x147
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd11
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x1
	.byte	0xe3
	.4byte	0x625
	.4byte	.LLST21
	.uleb128 0x28
	.4byte	.LASF107
	.byte	0x1
	.byte	0xe3
	.4byte	0x164
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	.LASF100
	.4byte	0xd21
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5648
	.uleb128 0x1b
	.string	"cmd"
	.byte	0x1
	.byte	0xe6
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.4byte	.LASF108
	.byte	0x1
	.byte	0xee
	.4byte	0xe3
	.byte	0x1
	.uleb128 0x1b
	.string	"err"
	.byte	0x1
	.byte	0xf3
	.4byte	0x147
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x22
	.4byte	.LVL80
	.4byte	0x177f
	.4byte	0xcf9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe5
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5648
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.byte	0
	.uleb128 0x24
	.4byte	.LVL82
	.4byte	0x5b8
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xb6
	.4byte	0xd21
	.uleb128 0x9
	.4byte	0xa6
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.4byte	0xd11
	.uleb128 0x17
	.4byte	.LASF109
	.byte	0x1
	.byte	0xfb
	.4byte	0x147
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd82
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x1
	.byte	0xfb
	.4byte	0x625
	.4byte	.LLST22
	.uleb128 0x19
	.string	"csd"
	.byte	0x1
	.byte	0xfb
	.4byte	0xd82
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.string	"cmd"
	.byte	0x1
	.byte	0xfd
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.4byte	.LVL87
	.4byte	0x5b8
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1cc
	.uleb128 0x2b
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x105
	.4byte	0x147
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe8b
	.uleb128 0x2c
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x105
	.4byte	0x625
	.4byte	.LLST23
	.uleb128 0x2d
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x105
	.4byte	0xd82
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x10a
	.4byte	0x27f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x10b
	.4byte	0xe8b
	.uleb128 0x30
	.string	"cmd"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.string	"err"
	.byte	0x1
	.2byte	0x114
	.4byte	0x147
	.4byte	.LLST24
	.uleb128 0x31
	.string	"ptr"
	.byte	0x1
	.2byte	0x118
	.4byte	0x950
	.4byte	.LLST25
	.uleb128 0x32
	.4byte	0x577
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.2byte	0x10b
	.4byte	0xe2a
	.uleb128 0x21
	.4byte	0x587
	.4byte	.LLST26
	.byte	0
	.uleb128 0x22
	.4byte	.LVL91
	.4byte	0x5b8
	.4byte	0xe45
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x22
	.4byte	.LVL94
	.4byte	0x1793
	.4byte	0xe5f
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x22
	.4byte	.LVL100
	.4byte	0x17a9
	.4byte	0xe7a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL102
	.4byte	0x17b4
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x152
	.uleb128 0x2b
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x125
	.4byte	0x147
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xefc
	.uleb128 0x2c
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x125
	.4byte	0x625
	.4byte	.LLST27
	.uleb128 0x33
	.string	"rca"
	.byte	0x1
	.2byte	0x125
	.4byte	0xf9
	.4byte	.LLST28
	.uleb128 0x34
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x128
	.4byte	0xf9
	.4byte	.LLST29
	.uleb128 0x30
	.string	"cmd"
	.byte	0x1
	.2byte	0x129
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.4byte	.LVL108
	.4byte	0x5b8
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x131
	.4byte	0x147
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfcd
	.uleb128 0x2c
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x131
	.4byte	0x625
	.4byte	.LLST30
	.uleb128 0x2d
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x131
	.4byte	0xfcd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x35
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x133
	.4byte	0x2c
	.byte	0x8
	.uleb128 0x30
	.string	"buf"
	.byte	0x1
	.2byte	0x134
	.4byte	0x950
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x30
	.string	"cmd"
	.byte	0x1
	.2byte	0x138
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.string	"err"
	.byte	0x1
	.2byte	0x13f
	.4byte	0x147
	.4byte	.LLST31
	.uleb128 0x22
	.4byte	.LVL112
	.4byte	0x17bf
	.4byte	0xf87
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x22
	.4byte	.LVL114
	.4byte	0x62b
	.4byte	0xfa2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x22
	.4byte	.LVL116
	.4byte	0x17ca
	.4byte	0xfbc
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL118
	.4byte	0x17d5
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x254
	.uleb128 0x2b
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x147
	.4byte	0x147
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x102d
	.uleb128 0x2c
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x147
	.4byte	0x625
	.4byte	.LLST32
	.uleb128 0x2d
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x147
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.string	"cmd"
	.byte	0x1
	.2byte	0x149
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.4byte	.LVL122
	.4byte	0x62b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x152
	.4byte	0x147
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10ec
	.uleb128 0x2c
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x152
	.4byte	0x625
	.4byte	.LLST33
	.uleb128 0x2c
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x152
	.4byte	0x152
	.4byte	.LLST34
	.uleb128 0x29
	.4byte	.LASF100
	.4byte	0x10fc
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5689
	.uleb128 0x30
	.string	"cmd"
	.byte	0x1
	.2byte	0x155
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.4byte	0x577
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x1
	.2byte	0x154
	.4byte	0x10a4
	.uleb128 0x21
	.4byte	0x587
	.4byte	.LLST35
	.byte	0
	.uleb128 0x22
	.4byte	.LVL126
	.4byte	0x177f
	.4byte	0x10d4
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x154
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5689
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.byte	0
	.uleb128 0x24
	.4byte	.LVL128
	.4byte	0x5b8
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xb6
	.4byte	0x10fc
	.uleb128 0x9
	.4byte	0xa6
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.4byte	0x10ec
	.uleb128 0x2b
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x15d
	.4byte	0x147
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x116f
	.uleb128 0x2c
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x15d
	.4byte	0x625
	.4byte	.LLST36
	.uleb128 0x2d
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x15d
	.4byte	0x950
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.string	"cmd"
	.byte	0x1
	.2byte	0x15f
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.string	"err"
	.byte	0x1
	.2byte	0x164
	.4byte	0x147
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x24
	.4byte	.LVL131
	.4byte	0x5b8
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x18d
	.4byte	0x147
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12bc
	.uleb128 0x2c
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x18d
	.4byte	0x625
	.4byte	.LLST37
	.uleb128 0x33
	.string	"src"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x10f
	.4byte	.LLST38
	.uleb128 0x2c
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x18e
	.4byte	0x2c
	.4byte	.LLST39
	.uleb128 0x2d
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x18e
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x34
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x193
	.4byte	0x2c
	.4byte	.LLST40
	.uleb128 0x30
	.string	"cmd"
	.byte	0x1
	.2byte	0x194
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.string	"err"
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x147
	.4byte	.LLST41
	.uleb128 0x29
	.4byte	.LASF100
	.4byte	0x12bc
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5721
	.uleb128 0x2e
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x1aa
	.4byte	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x2c
	.4byte	.LLST42
	.uleb128 0x32
	.4byte	0x577
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x1243
	.uleb128 0x21
	.4byte	0x587
	.4byte	.LLST43
	.byte	0
	.uleb128 0x22
	.4byte	.LVL141
	.4byte	0x5b8
	.4byte	0x125e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x23
	.4byte	.LVL143
	.4byte	0x175d
	.uleb128 0x22
	.4byte	.LVL144
	.4byte	0x1768
	.4byte	0x12a5
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC57
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5721
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL151
	.4byte	0x1101
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xa02
	.uleb128 0x2b
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x16e
	.4byte	0x147
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x143a
	.uleb128 0x2c
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x16e
	.4byte	0x625
	.4byte	.LLST44
	.uleb128 0x33
	.string	"src"
	.byte	0x1
	.2byte	0x16e
	.4byte	0x10f
	.4byte	.LLST45
	.uleb128 0x2c
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x16f
	.4byte	0x2c
	.4byte	.LLST46
	.uleb128 0x2c
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x16f
	.4byte	0x2c
	.4byte	.LLST47
	.uleb128 0x31
	.string	"err"
	.byte	0x1
	.2byte	0x171
	.4byte	0x147
	.4byte	.LLST48
	.uleb128 0x2e
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x172
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x27
	.4byte	.LASF100
	.4byte	0x144a
	.uleb128 0x32
	.4byte	0x59e
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x1
	.2byte	0x173
	.4byte	0x1360
	.uleb128 0x21
	.4byte	0x5ae
	.4byte	.LLST49
	.byte	0
	.uleb128 0x36
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.4byte	0x1415
	.uleb128 0x2e
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x179
	.4byte	0xad
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x34
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x17d
	.4byte	0x144f
	.4byte	.LLST50
	.uleb128 0x36
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.4byte	0x13eb
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.2byte	0x17e
	.4byte	0x2c
	.4byte	.LLST51
	.uleb128 0x22
	.4byte	.LVL171
	.4byte	0x178a
	.4byte	0x13c6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL174
	.4byte	0x116f
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL168
	.4byte	0x17bf
	.4byte	0x1404
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x24
	.4byte	.LVL177
	.4byte	0x17d5
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL165
	.4byte	0x116f
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xb6
	.4byte	0x144a
	.uleb128 0x9
	.4byte	0xa6
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0x143a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x84c
	.uleb128 0x2b
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x147
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15a2
	.uleb128 0x2c
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x625
	.4byte	.LLST52
	.uleb128 0x33
	.string	"dst"
	.byte	0x1
	.2byte	0x1d8
	.4byte	0xad
	.4byte	.LLST53
	.uleb128 0x2c
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x2c
	.4byte	.LLST54
	.uleb128 0x2d
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x34
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x1de
	.4byte	0x2c
	.4byte	.LLST55
	.uleb128 0x30
	.string	"cmd"
	.byte	0x1
	.2byte	0x1df
	.4byte	0x30f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.string	"err"
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x147
	.4byte	.LLST56
	.uleb128 0x29
	.4byte	.LASF100
	.4byte	0x15b2
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5751
	.uleb128 0x2e
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x1f4
	.4byte	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x1f5
	.4byte	0x2c
	.4byte	.LLST57
	.uleb128 0x32
	.4byte	0x577
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.byte	0x1
	.2byte	0x1f6
	.4byte	0x1529
	.uleb128 0x21
	.4byte	0x587
	.4byte	.LLST58
	.byte	0
	.uleb128 0x22
	.4byte	.LVL185
	.4byte	0x5b8
	.4byte	0x1544
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x23
	.4byte	.LVL187
	.4byte	0x175d
	.uleb128 0x22
	.4byte	.LVL188
	.4byte	0x1768
	.4byte	0x158b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC57
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5751
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL195
	.4byte	0x1101
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xb6
	.4byte	0x15b2
	.uleb128 0x9
	.4byte	0xa6
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.4byte	0x15a2
	.uleb128 0x2b
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x147
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1730
	.uleb128 0x2c
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x625
	.4byte	.LLST59
	.uleb128 0x33
	.string	"dst"
	.byte	0x1
	.2byte	0x1b9
	.4byte	0xad
	.4byte	.LLST60
	.uleb128 0x2c
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x2c
	.4byte	.LLST61
	.uleb128 0x2c
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x2c
	.4byte	.LLST62
	.uleb128 0x31
	.string	"err"
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x147
	.4byte	.LLST63
	.uleb128 0x2e
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x27
	.4byte	.LASF100
	.4byte	0x1740
	.uleb128 0x32
	.4byte	0x59e
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.byte	0x1
	.2byte	0x1be
	.4byte	0x1656
	.uleb128 0x21
	.4byte	0x5ae
	.4byte	.LLST64
	.byte	0
	.uleb128 0x36
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.4byte	0x170b
	.uleb128 0x2e
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x1c4
	.4byte	0xad
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x34
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x1745
	.4byte	.LLST65
	.uleb128 0x36
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.4byte	0x16e1
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.2byte	0x1c9
	.4byte	0x2c
	.4byte	.LLST66
	.uleb128 0x22
	.4byte	.LVL216
	.4byte	0x1455
	.4byte	0x16c4
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x24
	.4byte	.LVL218
	.4byte	0x178a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL212
	.4byte	0x17bf
	.4byte	0x16fa
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x24
	.4byte	.LVL221
	.4byte	0x17d5
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL209
	.4byte	0x1455
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xb6
	.4byte	0x1740
	.uleb128 0x9
	.4byte	0xa6
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.4byte	0x1730
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd8
	.uleb128 0x1b
	.string	"TAG"
	.byte	0x1
	.byte	0x14
	.4byte	0x16a
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC1
	.byte	0x9f
	.uleb128 0x37
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0xa
	.byte	0x57
	.uleb128 0x37
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0xa
	.byte	0x6b
	.uleb128 0x38
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0xb
	.2byte	0x32b
	.uleb128 0x37
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xc
	.byte	0x29
	.uleb128 0x39
	.4byte	.LASF149
	.4byte	.LASF149
	.uleb128 0x37
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x2
	.byte	0x85
	.uleb128 0x37
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x2
	.byte	0x4e
	.uleb128 0x37
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x2
	.byte	0x60
	.uleb128 0x37
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x2
	.byte	0x4f
	.uleb128 0x37
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xd
	.byte	0x37
	.uleb128 0x37
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x2
	.byte	0x50
	.uleb128 0x37
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xe
	.byte	0x5a
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x10
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x5
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
	.uleb128 0x2c
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x8
	.byte	0x73
	.sleb128 8
	.byte	0x6
	.byte	0x39
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
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
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
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
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL35
	.4byte	.LFE26
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL36
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL60
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL68
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL69
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL79
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL89
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL103
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL101
	.4byte	.LVL102-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL90
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL105
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL107
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL106
	.4byte	.LVL108-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL110
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
	.4byte	.LVL119
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL115
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL124
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL129
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL124
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL127
	.4byte	.LVL128-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL128-1
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL125
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL129
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL136
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL137
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL159
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL137
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL139
	.4byte	.LVL141-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL141-1
	.4byte	.LVL154
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL156
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL137
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL140
	.4byte	.LVL154
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL156
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL138
	.4byte	.LVL141-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL142
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL147
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL151
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL156
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL149
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL159
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL160
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL180
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL160
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL170
	.4byte	.LVL179
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL160
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL163
	.4byte	.LFE39
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL160
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL164
	.4byte	.LFE39
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL161
	.4byte	.LVL166
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL170
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL170
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL175
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL179
	.4byte	.LFE39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL162
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL170
	.4byte	.LVL179
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL170
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL170
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL181
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL190
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL197
	.4byte	.LVL198
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL200
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL203
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL181
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL183
	.4byte	.LVL185-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL185-1
	.4byte	.LVL198
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL200
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL181
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL184
	.4byte	.LVL198
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL200
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL182
	.4byte	.LVL185-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL186
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL191
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL195
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL200
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL193
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL197
	.4byte	.LVL198
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL200
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL203
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL204
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL210
	.4byte	.LVL211
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL211
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL222
	.4byte	.LVL223
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL223
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL224
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL204
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL214
	.4byte	.LVL223
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL223
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL204
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL207
	.4byte	.LFE41
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL204
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL208
	.4byte	.LFE41
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL205
	.4byte	.LVL210
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL211
	.4byte	.LVL214
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL214
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL217
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL223
	.4byte	.LFE41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL206
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL214
	.4byte	.LVL223
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL223
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL214
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL214
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xb4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF128:
	.string	"count"
.LASF144:
	.string	"sdmmc_decode_scr"
.LASF36:
	.string	"card_command_class"
.LASF130:
	.string	"tmp_buf"
.LASF86:
	.string	"host_is_spi"
.LASF3:
	.string	"size_t"
.LASF124:
	.string	"start_block"
.LASF4:
	.string	"__uint8_t"
.LASF42:
	.string	"revision"
.LASF103:
	.string	"out_raw_cid"
.LASF33:
	.string	"capacity"
.LASF64:
	.string	"init"
.LASF13:
	.string	"long int"
.LASF105:
	.string	"out_cid"
.LASF67:
	.string	"set_bus_ddr_mode"
.LASF50:
	.string	"sdmmc_ext_csd_t"
.LASF11:
	.string	"long long unsigned int"
.LASF98:
	.string	"nretries"
.LASF136:
	.string	"esp_log_write"
.LASF141:
	.string	"sdmmc_mmc_decode_csd"
.LASF145:
	.string	"free"
.LASF106:
	.string	"sdmmc_send_cmd_set_relative_addr"
.LASF53:
	.string	"response"
.LASF26:
	.string	"ESP_LOG_DEBUG"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF65:
	.string	"set_bus_width"
.LASF137:
	.string	"vTaskDelay"
.LASF117:
	.string	"sdmmc_send_cmd_set_bus_width"
.LASF89:
	.string	"state"
.LASF119:
	.string	"sdmmc_send_cmd_crc_on_off"
.LASF121:
	.string	"sdmmc_send_cmd_send_status"
.LASF91:
	.string	"sdmmc_send_app_cmd"
.LASF96:
	.string	"sdmmc_send_cmd_send_op_cond"
.LASF38:
	.string	"sdmmc_csd_t"
.LASF69:
	.string	"do_transaction"
.LASF18:
	.string	"uint16_t"
.LASF88:
	.string	"card"
.LASF87:
	.string	"esp_ptr_dma_capable"
.LASF143:
	.string	"heap_caps_malloc"
.LASF39:
	.string	"mfg_id"
.LASF93:
	.string	"sdmmc_send_cmd_go_idle_state"
.LASF9:
	.string	"__uint32_t"
.LASF12:
	.string	"__intptr_t"
.LASF122:
	.string	"out_status"
.LASF84:
	.string	"reserved"
.LASF90:
	.string	"sdmmc_send_cmd"
.LASF45:
	.string	"sdmmc_cid_t"
.LASF104:
	.string	"sdmmc_send_cmd_send_cid"
.LASF76:
	.string	"host"
.LASF0:
	.string	"unsigned int"
.LASF126:
	.string	"block_size"
.LASF109:
	.string	"sdmmc_send_cmd_set_blocklen"
.LASF132:
	.string	"sdmmc_read_sectors_dma"
.LASF68:
	.string	"set_card_clk"
.LASF81:
	.string	"num_io_functions"
.LASF114:
	.string	"sdmmc_send_cmd_select_card"
.LASF147:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/sdmmc/sdmmc_cmd.c"
.LASF92:
	.string	"app_cmd"
.LASF41:
	.string	"name"
.LASF118:
	.string	"width"
.LASF54:
	.string	"data"
.LASF71:
	.string	"io_int_enable"
.LASF1:
	.string	"short unsigned int"
.LASF44:
	.string	"date"
.LASF99:
	.string	"err_cnt"
.LASF111:
	.string	"out_csd"
.LASF94:
	.string	"sdmmc_send_cmd_send_if_cond"
.LASF116:
	.string	"out_scr"
.LASF61:
	.string	"slot"
.LASF21:
	.string	"intptr_t"
.LASF73:
	.string	"command_timeout_ms"
.LASF35:
	.string	"read_block_len"
.LASF25:
	.string	"ESP_LOG_INFO"
.LASF78:
	.string	"is_mem"
.LASF102:
	.string	"sdmmc_send_cmd_all_send_cid"
.LASF56:
	.string	"blklen"
.LASF48:
	.string	"sdmmc_scr_t"
.LASF14:
	.string	"sizetype"
.LASF134:
	.string	"cur_dst"
.LASF40:
	.string	"oem_id"
.LASF129:
	.string	"sdmmc_write_sectors"
.LASF30:
	.string	"TickType_t"
.LASF37:
	.string	"tr_speed"
.LASF32:
	.string	"mmc_ver"
.LASF79:
	.string	"is_sdio"
.LASF75:
	.string	"sdmmc_host_t"
.LASF107:
	.string	"out_rca"
.LASF95:
	.string	"pattern"
.LASF97:
	.string	"ocrp"
.LASF125:
	.string	"block_count"
.LASF58:
	.string	"error"
.LASF55:
	.string	"datalen"
.LASF59:
	.string	"timeout_ms"
.LASF123:
	.string	"sdmmc_write_sectors_dma"
.LASF34:
	.string	"sector_size"
.LASF80:
	.string	"is_mmc"
.LASF110:
	.string	"sdmmc_send_cmd_send_csd"
.LASF131:
	.string	"cur_src"
.LASF29:
	.string	"_Bool"
.LASF19:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF115:
	.string	"sdmmc_send_cmd_send_scr"
.LASF140:
	.string	"sdmmc_decode_cid"
.LASF6:
	.string	"short int"
.LASF135:
	.string	"esp_log_timestamp"
.LASF23:
	.string	"ESP_LOG_ERROR"
.LASF120:
	.string	"crc_enable"
.LASF100:
	.string	"__func__"
.LASF31:
	.string	"csd_ver"
.LASF148:
	.string	"/home/raphael/rtone/lcd/build/sdmmc"
.LASF70:
	.string	"deinit"
.LASF85:
	.string	"sdmmc_card_t"
.LASF51:
	.string	"sdmmc_response_t"
.LASF15:
	.string	"long unsigned int"
.LASF16:
	.string	"char"
.LASF27:
	.string	"ESP_LOG_VERBOSE"
.LASF112:
	.string	"spi_buf"
.LASF7:
	.string	"__uint16_t"
.LASF22:
	.string	"ESP_LOG_NONE"
.LASF8:
	.string	"__int32_t"
.LASF60:
	.string	"sdmmc_command_t"
.LASF149:
	.string	"memcpy"
.LASF82:
	.string	"log_bus_width"
.LASF113:
	.string	"is_spi"
.LASF133:
	.string	"sdmmc_read_sectors"
.LASF20:
	.string	"uint32_t"
.LASF24:
	.string	"ESP_LOG_WARN"
.LASF63:
	.string	"io_voltage"
.LASF127:
	.string	"status"
.LASF49:
	.string	"power_class"
.LASF28:
	.string	"esp_err_t"
.LASF101:
	.string	"sdmmc_send_cmd_read_ocr"
.LASF17:
	.string	"uint8_t"
.LASF57:
	.string	"flags"
.LASF74:
	.string	"float"
.LASF43:
	.string	"serial"
.LASF77:
	.string	"ext_csd"
.LASF72:
	.string	"io_int_wait"
.LASF138:
	.string	"__assert_func"
.LASF146:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF139:
	.string	"sdmmc_flip_byte_order"
.LASF47:
	.string	"bus_width"
.LASF62:
	.string	"max_freq_khz"
.LASF66:
	.string	"get_bus_width"
.LASF46:
	.string	"sd_spec"
.LASF108:
	.string	"mmc_rca"
.LASF142:
	.string	"sdmmc_decode_csd"
.LASF52:
	.string	"opcode"
.LASF83:
	.string	"is_ddr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
