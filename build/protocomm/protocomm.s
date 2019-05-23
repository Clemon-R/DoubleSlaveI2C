	.file	"protocomm.c"
	.text
.Ltext0:
	.section	.text.protocomm_common_security_handler,"ax",@progbits
	.align	4
	.type	protocomm_common_security_handler, @function
protocomm_common_security_handler:
.LFB7:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/src/common/protocomm.c"
	.loc 1 252 0
.LVL0:
	entry	sp, 48
.LCFI0:
.LVL1:
	.loc 1 255 0
	l32i.n	a8, a7, 8
	beqz.n	a8, .L3
	.loc 1 255 0 is_stmt 0 discriminator 1
	l32i.n	a8, a8, 20
	beqz.n	a8, .L4
	.loc 1 256 0 is_stmt 1
	l32i.n	a10, a7, 12
	s32i.n	a7, sp, 0
	mov.n	a15, a6
	mov.n	a14, a5
	mov.n	a13, a4
	mov.n	a12, a3
	mov.n	a11, a2
	callx8	a8
.LVL2:
	mov.n	a2, a10
.LVL3:
	retw.n
.LVL4:
.L3:
	.loc 1 262 0
	movi.n	a2, 0
.LVL5:
	retw.n
.LVL6:
.L4:
	movi.n	a2, 0
.LVL7:
	.loc 1 263 0
	retw.n
.LFE7:
	.size	protocomm_common_security_handler, .-protocomm_common_security_handler
	.section	.text.search_endpoint,"ax",@progbits
	.align	4
	.type	search_endpoint, @function
search_endpoint:
.LFB2:
	.loc 1 72 0
.LVL8:
	entry	sp, 32
.LCFI1:
	.loc 1 74 0
	l32i.n	a2, a2, 16
.LVL9:
	j	.L6
.L8:
	.loc 1 75 0
	mov.n	a11, a3
	l32i.n	a10, a2, 0
	call8	strcmp
.LVL10:
	beqz.n	a10, .L7
	.loc 1 74 0 discriminator 2
	l32i.n	a2, a2, 16
.LVL11:
.L6:
	.loc 1 74 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L8
.L7:
	.loc 1 80 0 is_stmt 1
	retw.n
.LFE2:
	.size	search_endpoint, .-search_endpoint
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"protocomm"
	.align	4
.LC2:
	.string	"\033[0;31mE (%d) %s: Endpoint with this name already exists\033[0m\n"
	.align	4
.LC4:
	.string	"\033[0;31mE (%d) %s: Error adding endpoint\033[0m\n"
	.align	4
.LC6:
	.string	"\033[0;31mE (%d) %s: Error allocating endpoint resource\033[0m\n"
	.section	.text.protocomm_add_endpoint_internal,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.align	4
	.type	protocomm_add_endpoint_internal, @function
protocomm_add_endpoint_internal:
.LFB3:
	.loc 1 85 0
.LVL12:
	entry	sp, 32
.LCFI2:
	.loc 1 86 0
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a2
	.loc 1 86 0
	movnez	a8, a10, a3
	or	a8, a8, a9
	.loc 1 86 0
	bne	a8, a10, .L15
	.loc 1 86 0 discriminator 1
	beq	a4, a10, .L16
	.loc 1 93 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	search_endpoint
.LVL13:
	.loc 1 94 0
	beqz.n	a10, .L12
	.loc 1 95 0 discriminator 2
	call8	esp_log_timestamp
.LVL14:
	l32r	a11, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC3
	movi.n	a10, 1
	call8	esp_log_write
.LVL15:
	.loc 1 96 0 discriminator 2
	movi.n	a2, -1
.LVL16:
	retw.n
.LVL17:
.L12:
	.loc 1 99 0
	l32i.n	a7, a2, 0
	beqz.n	a7, .L13
	.loc 1 100 0
	mov.n	a12, a5
	mov.n	a11, a4
	mov.n	a10, a3
.LVL18:
	callx8	a7
.LVL19:
	mov.n	a7, a10
.LVL20:
	.loc 1 101 0
	beqz.n	a10, .L13
	.loc 1 102 0 discriminator 2
	call8	esp_log_timestamp
.LVL21:
	l32r	a11, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC5
	movi.n	a10, 1
	call8	esp_log_write
.LVL22:
	.loc 1 103 0 discriminator 2
	mov.n	a2, a7
.LVL23:
	retw.n
.LVL24:
.L13:
	.loc 1 107 0
	movi.n	a11, 0x14
	movi.n	a10, 1
	call8	calloc
.LVL25:
	.loc 1 108 0
	bnez.n	a10, .L14
	.loc 1 109 0 discriminator 2
	call8	esp_log_timestamp
.LVL26:
	l32r	a11, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC7
	movi.n	a10, 1
	call8	esp_log_write
.LVL27:
	.loc 1 110 0 discriminator 2
	movi	a2, 0x101
.LVL28:
	retw.n
.LVL29:
.L14:
	.loc 1 114 0
	s32i.n	a3, a10, 0
	.loc 1 115 0
	s32i.n	a4, a10, 4
	.loc 1 116 0
	s32i.n	a5, a10, 8
	.loc 1 117 0
	s32i.n	a6, a10, 12
	.loc 1 120 0
	l32i.n	a3, a2, 16
.LVL30:
	s32i.n	a3, a10, 16
	s32i.n	a10, a2, 16
.LVL31:
	.loc 1 122 0
	movi.n	a2, 0
.LVL32:
	retw.n
.LVL33:
.L15:
	.loc 1 87 0
	movi	a2, 0x102
.LVL34:
	retw.n
.LVL35:
.L16:
	movi	a2, 0x102
.LVL36:
	.loc 1 123 0
	retw.n
.LFE3:
	.size	protocomm_add_endpoint_internal, .-protocomm_add_endpoint_internal
	.section	.rodata.str1.4
	.align	4
.LC9:
	.string	"\033[0;31mE (%d) %s: Failed to allocate memory for version response\033[0m\n"
	.section	.text.protocomm_version_handler,"ax",@progbits
	.literal_position
	.literal .LC8, .LC0
	.literal .LC10, .LC9
	.align	4
	.type	protocomm_version_handler, @function
protocomm_version_handler:
.LFB10:
	.loc 1 335 0
.LVL37:
	entry	sp, 32
.LCFI3:
.LVL38:
	.loc 1 337 0
	l32i.n	a10, a7, 24
	bnez.n	a10, .L18
	.loc 1 338 0
	movi.n	a2, 0
.LVL39:
	s32i.n	a2, a6, 0
	.loc 1 339 0
	s32i.n	a2, a5, 0
	.loc 1 340 0
	retw.n
.LVL40:
.L18:
	.loc 1 344 0
	call8	strlen
.LVL41:
	s32i.n	a10, a6, 0
	.loc 1 345 0
	call8	malloc
.LVL42:
	s32i.n	a10, a5, 0
	.loc 1 346 0
	bnez.n	a5, .L20
	.loc 1 347 0 discriminator 2
	call8	esp_log_timestamp
.LVL43:
	l32r	a11, .LC8
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC10
	movi.n	a10, 1
	call8	esp_log_write
.LVL44:
	.loc 1 348 0 discriminator 2
	movi	a2, 0x101
.LVL45:
	retw.n
.LVL46:
.L20:
	.loc 1 351 0
	l32i.n	a12, a6, 0
	l32i.n	a11, a7, 24
	call8	memcpy
.LVL47:
	.loc 1 352 0
	movi.n	a2, 0
.LVL48:
	.loc 1 353 0
	retw.n
.LFE10:
	.size	protocomm_version_handler, .-protocomm_version_handler
	.section	.rodata.str1.4
	.align	4
.LC12:
	.string	"\033[0;31mE (%d) %s: Error allocating protocomm\033[0m\n"
	.section	.text.protocomm_new,"ax",@progbits
	.literal_position
	.literal .LC11, .LC0
	.literal .LC13, .LC12
	.align	4
	.global	protocomm_new
	.type	protocomm_new, @function
protocomm_new:
.LFB0:
	.loc 1 30 0
	entry	sp, 32
.LCFI4:
	.loc 1 33 0
	movi.n	a11, 0x1c
	movi.n	a10, 1
	call8	calloc
.LVL49:
	.loc 1 34 0
	bnez.n	a10, .L22
	.loc 1 35 0 discriminator 2
	call8	esp_log_timestamp
.LVL50:
	l32r	a11, .LC11
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC13
	movi.n	a10, 1
	call8	esp_log_write
.LVL51:
	.loc 1 36 0 discriminator 2
	movi.n	a2, 0
	retw.n
.LVL52:
.L22:
	.loc 1 38 0
	movi.n	a2, 0
	s32i.n	a2, a10, 16
	.loc 1 40 0
	mov.n	a2, a10
	.loc 1 41 0
	retw.n
.LFE0:
	.size	protocomm_new, .-protocomm_new
	.section	.text.protocomm_delete,"ax",@progbits
	.align	4
	.global	protocomm_delete
	.type	protocomm_delete, @function
protocomm_delete:
.LFB1:
	.loc 1 44 0
.LVL53:
	entry	sp, 32
.LCFI5:
	.loc 1 45 0
	beqz.n	a2, .L24
	.loc 1 51 0
	l32i.n	a10, a2, 16
.LVL54:
.L27:
	.loc 1 51 0 is_stmt 0 discriminator 1
	beqz.n	a10, .L26
	.loc 1 51 0 discriminator 3
	l32i.n	a3, a10, 16
.LVL55:
	.loc 1 52 0 is_stmt 1 discriminator 3
	call8	free
.LVL56:
	.loc 1 51 0 discriminator 3
	mov.n	a10, a3
	j	.L27
.LVL57:
.L26:
	.loc 1 56 0
	l32i.n	a10, a2, 24
.LVL58:
	beqz.n	a10, .L28
	.loc 1 57 0
	call8	free
.LVL59:
.L28:
	.loc 1 61 0
	l32i.n	a3, a2, 8
	beqz.n	a3, .L29
	.loc 1 61 0 is_stmt 0 discriminator 1
	l32i.n	a10, a3, 8
	beqz.n	a10, .L29
	.loc 1 62 0 is_stmt 1
	callx8	a10
.LVL60:
.L29:
	.loc 1 64 0
	l32i.n	a10, a2, 12
	beqz.n	a10, .L30
	.loc 1 65 0
	call8	free
.LVL61:
.L30:
	.loc 1 68 0
	mov.n	a10, a2
	call8	free
.LVL62:
.L24:
	retw.n
.LFE1:
	.size	protocomm_delete, .-protocomm_delete
	.section	.text.protocomm_add_endpoint,"ax",@progbits
	.align	4
	.global	protocomm_add_endpoint
	.type	protocomm_add_endpoint, @function
protocomm_add_endpoint:
.LFB4:
	.loc 1 127 0
.LVL63:
	entry	sp, 32
.LCFI6:
	.loc 1 128 0
	movi.n	a14, 1
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	protocomm_add_endpoint_internal
.LVL64:
	.loc 1 129 0
	mov.n	a2, a10
.LVL65:
	retw.n
.LFE4:
	.size	protocomm_add_endpoint, .-protocomm_add_endpoint
	.section	.text.protocomm_remove_endpoint,"ax",@progbits
	.align	4
	.global	protocomm_remove_endpoint
	.type	protocomm_remove_endpoint, @function
protocomm_remove_endpoint:
.LFB5:
	.loc 1 132 0
.LVL66:
	entry	sp, 32
.LCFI7:
	mov.n	a6, a2
	.loc 1 133 0
	movi.n	a2, 1
.LVL67:
	movi.n	a5, 0
	mov.n	a4, a5
	moveqz	a4, a2, a6
	.loc 1 133 0
	movnez	a2, a5, a3
	or	a2, a2, a4
	.loc 1 133 0
	bne	a2, a5, .L39
	.loc 1 137 0
	l32i.n	a2, a6, 4
	beq	a2, a5, .L34
	.loc 1 138 0
	mov.n	a10, a3
	callx8	a2
.LVL68:
.L34:
	.loc 1 142 0
	l32i.n	a7, a6, 16
.LVL69:
	mov.n	a4, a7
	j	.L35
.LVL70:
.L38:
	.loc 1 144 0
	bne	a4, a7, .L36
	.loc 1 144 0 is_stmt 0 discriminator 1
	l32i.n	a3, a7, 16
.LVL71:
	s32i.n	a3, a6, 16
	j	.L37
.LVL72:
.L40:
.LBB2:
	.loc 1 144 0
	mov.n	a7, a3
.LVL73:
.L36:
	.loc 1 144 0 discriminator 3
	l32i.n	a3, a7, 16
	bne	a4, a3, .L40
	.loc 1 144 0 discriminator 6
	l32i.n	a3, a3, 16
	s32i.n	a3, a7, 16
.LVL74:
.L37:
.LBE2:
	.loc 1 145 0 is_stmt 1
	mov.n	a10, a4
	call8	free
.LVL75:
	.loc 1 146 0
	retw.n
.LVL76:
.L35:
	.loc 1 142 0 discriminator 1
	beqz.n	a4, .L41
	.loc 1 142 0 is_stmt 0 discriminator 3
	l32i.n	a5, a4, 16
.LVL77:
	.loc 1 143 0 is_stmt 1 discriminator 3
	l32i.n	a11, a4, 0
	mov.n	a10, a3
	call8	strcmp
.LVL78:
	mov.n	a2, a10
	beqz.n	a10, .L38
	.loc 1 142 0
	mov.n	a4, a5
.LVL79:
	j	.L35
.LVL80:
.L39:
	.loc 1 134 0
	movi	a2, 0x102
	retw.n
.LVL81:
.L41:
	.loc 1 149 0
	movi	a2, 0x105
	.loc 1 150 0
	retw.n
.LFE5:
	.size	protocomm_remove_endpoint, .-protocomm_remove_endpoint
	.section	.rodata.str1.4
	.align	4
.LC15:
	.string	"\033[0;31mE (%d) %s: Invalid params %p %p\033[0m\n"
	.align	4
.LC17:
	.string	"\033[0;31mE (%d) %s: No registered endpoint for %s\033[0m\n"
	.align	4
.LC19:
	.string	"\033[0;31mE (%d) %s: Failed to allocate decrypt buf len %d\033[0m\n"
	.align	4
.LC21:
	.string	"\033[0;31mE (%d) %s: Decryption of response failed for endpoint %s\033[0m\n"
	.align	4
.LC23:
	.string	"\033[0;31mE (%d) %s: Request handler for %s failed\033[0m\n"
	.align	4
.LC25:
	.string	"\033[0;31mE (%d) %s: Encryption of response failed for endpoint %s\033[0m\n"
	.section	.text.protocomm_req_handle,"ax",@progbits
	.literal_position
	.literal .LC14, .LC0
	.literal .LC16, .LC15
	.literal .LC18, .LC17
	.literal .LC20, .LC19
	.literal .LC22, .LC21
	.literal .LC24, .LC23
	.literal .LC26, .LC25
	.align	4
	.global	protocomm_req_handle
	.type	protocomm_req_handle, @function
protocomm_req_handle:
.LFB6:
	.loc 1 155 0
.LVL82:
	entry	sp, 80
.LCFI8:
	s32i.n	a5, sp, 32
	.loc 1 156 0
	movi.n	a5, 1
.LVL83:
	movi.n	a9, 0
	mov.n	a8, a9
	moveqz	a8, a5, a2
	movnez	a5, a9, a3
	or	a5, a5, a8
	bne	a5, a9, .L43
	.loc 1 156 0 is_stmt 0 discriminator 1
	movi.n	a5, 1
	mov.n	a8, a9
	moveqz	a8, a5, a7
	extui	a8, a8, 0, 8
	l32i	a10, sp, 80
	movnez	a5, a9, a10
	extui	a5, a5, 0, 8
	bne	a8, a9, .L43
	beq	a5, a9, .L44
.L43:
	.loc 1 157 0 is_stmt 1 discriminator 2
	call8	esp_log_timestamp
.LVL84:
	l32r	a11, .LC14
	s32i.n	a3, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC16
	movi.n	a10, 1
	call8	esp_log_write
.LVL85:
	.loc 1 158 0 discriminator 2
	movi	a2, 0x102
.LVL86:
	retw.n
.LVL87:
.L44:
	.loc 1 161 0
	movi.n	a5, 0
	s32i.n	a5, a7, 0
	.loc 1 162 0
	l32i	a8, sp, 80
	s32i.n	a5, a8, 0
	.loc 1 164 0
	mov.n	a11, a3
	mov.n	a10, a2
.LVL88:
	call8	search_endpoint
.LVL89:
	s32i.n	a10, sp, 36
.LVL90:
	.loc 1 165 0
	bne	a10, a5, .L47
	.loc 1 166 0 discriminator 2
	call8	esp_log_timestamp
.LVL91:
	l32r	a11, .LC14
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC18
	movi.n	a10, 1
	call8	esp_log_write
.LVL92:
	.loc 1 167 0 discriminator 2
	movi	a2, 0x105
.LVL93:
	retw.n
.LVL94:
.L47:
	.loc 1 171 0
	l32i.n	a10, sp, 36
.LVL95:
	l32i.n	a5, a10, 12
	bbci	a5, 1, .L48
	.loc 1 173 0
	l32i.n	a2, a10, 4
.LVL96:
	l32i.n	a15, a10, 8
	l32i	a14, sp, 80
	mov.n	a13, a7
	mov.n	a12, a6
	l32i.n	a11, sp, 32
	mov.n	a10, a4
	callx8	a2
.LVL97:
	mov.n	a2, a10
.LVL98:
	retw.n
.LVL99:
.L48:
	.loc 1 175 0
	bbci	a5, 0, .L49
	.loc 1 176 0
	l32i.n	a5, a2, 8
	beqz.n	a5, .L50
	.loc 1 176 0 is_stmt 0 discriminator 1
	l32i.n	a5, a5, 28
	beqz.n	a5, .L50
.LBB3:
	.loc 1 178 0 is_stmt 1
	mov.n	a10, a6
	call8	malloc
.LVL100:
	s32i.n	a10, sp, 40
.LVL101:
	.loc 1 179 0
	bnez.n	a10, .L51
	.loc 1 180 0 discriminator 2
	call8	esp_log_timestamp
.LVL102:
	l32r	a11, .LC14
	mov.n	a15, a6
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC20
	movi.n	a10, 1
	call8	esp_log_write
.LVL103:
	.loc 1 181 0 discriminator 2
	movi	a2, 0x101
.LVL104:
	retw.n
.LVL105:
.L51:
	.loc 1 184 0
	s32i.n	a6, sp, 28
	.loc 1 185 0
	addi	a14, sp, 28
	l32i.n	a13, sp, 40
	mov.n	a12, a6
	l32i.n	a11, sp, 32
	mov.n	a10, a4
.LVL106:
	callx8	a5
.LVL107:
	mov.n	a5, a10
.LVL108:
	.loc 1 186 0
	beqz.n	a10, .L53
	.loc 1 187 0 discriminator 2
	call8	esp_log_timestamp
.LVL109:
	l32r	a11, .LC14
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC22
	movi.n	a10, 1
	call8	esp_log_write
.LVL110:
	.loc 1 188 0 discriminator 2
	l32i.n	a10, sp, 40
	call8	free
.LVL111:
	.loc 1 189 0 discriminator 2
	mov.n	a2, a5
.LVL112:
	retw.n
.LVL113:
.L53:
	.loc 1 193 0
	movi.n	a5, 0
.LVL114:
	s32i.n	a5, sp, 24
	.loc 1 194 0
	s32i.n	a5, sp, 20
	.loc 1 195 0
	l32i.n	a8, sp, 36
	l32i.n	a5, a8, 4
	l32i.n	a15, a8, 8
	addi	a14, sp, 20
	addi	a13, sp, 24
	l32i.n	a12, sp, 28
	l32i.n	a11, sp, 40
	mov.n	a10, a4
.LVL115:
	callx8	a5
.LVL116:
	mov.n	a5, a10
.LVL117:
	.loc 1 199 0
	beqz.n	a10, .L54
	.loc 1 200 0 discriminator 2
	call8	esp_log_timestamp
.LVL118:
	l32r	a11, .LC14
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC24
	movi.n	a10, 1
	call8	esp_log_write
.LVL119:
	.loc 1 201 0 discriminator 2
	l32i.n	a10, sp, 24
	call8	free
.LVL120:
	.loc 1 202 0 discriminator 2
	l32i.n	a10, sp, 40
	call8	free
.LVL121:
	.loc 1 203 0 discriminator 2
	mov.n	a2, a5
.LVL122:
	retw.n
.LVL123:
.L54:
	.loc 1 206 0
	l32i.n	a10, sp, 40
	call8	free
.LVL124:
	.loc 1 209 0
	l32i.n	a10, sp, 20
	call8	malloc
.LVL125:
	mov.n	a5, a10
.LVL126:
	.loc 1 210 0
	bnez.n	a10, .L55
	.loc 1 211 0 discriminator 2
	call8	esp_log_timestamp
.LVL127:
	l32r	a11, .LC14
	mov.n	a15, a6
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC20
	movi.n	a10, 1
	call8	esp_log_write
.LVL128:
	.loc 1 212 0 discriminator 2
	l32i.n	a10, sp, 24
	call8	free
.LVL129:
	.loc 1 213 0 discriminator 2
	movi	a2, 0x101
.LVL130:
	retw.n
.LVL131:
.L55:
	.loc 1 216 0
	l32i.n	a12, sp, 20
	s32i.n	a12, sp, 16
	.loc 1 217 0
	l32i.n	a2, a2, 8
.LVL132:
	l32i.n	a2, a2, 24
	addi	a14, sp, 16
	mov.n	a13, a10
	l32i.n	a11, sp, 24
	mov.n	a10, a4
	callx8	a2
.LVL133:
	mov.n	a2, a10
.LVL134:
	.loc 1 220 0
	beqz.n	a10, .L56
	.loc 1 221 0 discriminator 2
	call8	esp_log_timestamp
.LVL135:
	l32r	a11, .LC14
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC26
	movi.n	a10, 1
	call8	esp_log_write
.LVL136:
	.loc 1 222 0 discriminator 2
	mov.n	a10, a5
	call8	free
.LVL137:
	.loc 1 223 0 discriminator 2
	l32i.n	a10, sp, 24
	call8	free
.LVL138:
	.loc 1 224 0 discriminator 2
	retw.n
.L56:
	.loc 1 228 0
	l32i.n	a10, sp, 24
	call8	free
.LVL139:
	.loc 1 231 0
	s32i.n	a5, a7, 0
	.loc 1 232 0
	l32i.n	a3, sp, 16
.LVL140:
	l32i	a10, sp, 80
	s32i.n	a3, a10, 0
.LBE3:
	.loc 1 176 0
	retw.n
.LVL141:
.L50:
	.loc 1 235 0
	l32i.n	a3, sp, 36
.LVL142:
	l32i.n	a2, a3, 4
.LVL143:
	l32i.n	a15, a3, 8
	l32i	a14, sp, 80
	mov.n	a13, a7
	mov.n	a12, a6
	l32i.n	a11, sp, 32
	mov.n	a10, a4
	callx8	a2
.LVL144:
	mov.n	a2, a10
.LVL145:
	retw.n
.LVL146:
.L49:
	.loc 1 241 0
	bbci	a5, 2, .L57
	.loc 1 242 0
	l32i.n	a5, sp, 36
	l32i.n	a2, a5, 4
.LVL147:
	l32i.n	a15, a5, 8
	l32i	a14, sp, 80
	mov.n	a13, a7
	mov.n	a12, a6
	l32i.n	a11, sp, 32
	mov.n	a10, a4
	callx8	a2
.LVL148:
	mov.n	a2, a10
.LVL149:
	retw.n
.LVL150:
.L57:
	.loc 1 170 0
	movi.n	a2, -1
.LVL151:
	.loc 1 246 0
	retw.n
.LFE6:
	.size	protocomm_req_handle, .-protocomm_req_handle
	.section	.rodata.str1.4
	.align	4
.LC29:
	.string	"\033[0;31mE (%d) %s: Error adding security endpoint\033[0m\n"
	.align	4
.LC31:
	.string	"\033[0;31mE (%d) %s: Error initializing security\033[0m\n"
	.align	4
.LC33:
	.string	"\033[0;31mE (%d) %s: Error allocating Proof of Possession\033[0m\n"
	.section	.text.protocomm_set_security,"ax",@progbits
	.literal_position
	.literal .LC27, protocomm_common_security_handler
	.literal .LC28, .LC0
	.literal .LC30, .LC29
	.literal .LC32, .LC31
	.literal .LC34, .LC33
	.align	4
	.global	protocomm_set_security
	.type	protocomm_set_security, @function
protocomm_set_security:
.LFB8:
	.loc 1 268 0
.LVL152:
	entry	sp, 32
.LCFI9:
	.loc 1 269 0
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a2
	.loc 1 269 0
	movnez	a8, a10, a3
	or	a8, a8, a9
	.loc 1 269 0
	bne	a8, a10, .L64
	.loc 1 269 0 discriminator 1
	beq	a4, a10, .L65
	.loc 1 273 0
	l32i.n	a6, a2, 8
	bne	a6, a10, .L66
	.loc 1 277 0
	movi.n	a14, 2
	mov.n	a13, a2
	l32r	a12, .LC27
	mov.n	a11, a3
	mov.n	a10, a2
	call8	protocomm_add_endpoint_internal
.LVL153:
	mov.n	a6, a10
.LVL154:
	.loc 1 280 0
	beqz.n	a10, .L60
	.loc 1 281 0 discriminator 2
	call8	esp_log_timestamp
.LVL155:
	l32r	a11, .LC28
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC30
	movi.n	a10, 1
	call8	esp_log_write
.LVL156:
	.loc 1 282 0 discriminator 2
	mov.n	a2, a6
.LVL157:
	retw.n
.LVL158:
.L60:
	.loc 1 285 0
	l32i.n	a10, a4, 4
	beqz.n	a10, .L61
	.loc 1 286 0
	callx8	a10
.LVL159:
	mov.n	a6, a10
.LVL160:
	.loc 1 287 0
	beqz.n	a10, .L61
	.loc 1 288 0 discriminator 2
	call8	esp_log_timestamp
.LVL161:
	l32r	a11, .LC28
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC32
	movi.n	a10, 1
	call8	esp_log_write
.LVL162:
	.loc 1 289 0 discriminator 2
	mov.n	a11, a3
	mov.n	a10, a2
	call8	protocomm_remove_endpoint
.LVL163:
	.loc 1 290 0 discriminator 2
	mov.n	a2, a6
.LVL164:
	retw.n
.LVL165:
.L61:
	.loc 1 293 0
	s32i.n	a4, a2, 8
	.loc 1 295 0
	beqz.n	a5, .L67
	.loc 1 296 0
	movi.n	a10, 8
	call8	malloc
.LVL166:
	s32i.n	a10, a2, 12
	.loc 1 297 0
	bnez.n	a10, .L62
	.loc 1 298 0 discriminator 2
	call8	esp_log_timestamp
.LVL167:
	l32r	a11, .LC28
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC34
	movi.n	a10, 1
	call8	esp_log_write
.LVL168:
	.loc 1 299 0 discriminator 2
	l32i.n	a4, a2, 8
.LVL169:
	beqz.n	a4, .L63
	.loc 1 299 0 is_stmt 0 discriminator 1
	l32i.n	a10, a4, 8
	beqz.n	a10, .L63
	.loc 1 300 0 is_stmt 1
	callx8	a10
.LVL170:
	.loc 1 301 0
	movi.n	a4, 0
	s32i.n	a4, a2, 8
.L63:
	.loc 1 304 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	protocomm_remove_endpoint
.LVL171:
	.loc 1 305 0
	movi	a2, 0x101
.LVL172:
	retw.n
.LVL173:
.L62:
	.loc 1 307 0
	movi.n	a12, 8
	mov.n	a11, a5
	call8	memcpy
.LVL174:
	.loc 1 309 0
	movi.n	a2, 0
.LVL175:
	retw.n
.LVL176:
.L64:
	.loc 1 270 0
	movi	a2, 0x102
.LVL177:
	retw.n
.LVL178:
.L65:
	movi	a2, 0x102
.LVL179:
	retw.n
.LVL180:
.L66:
	.loc 1 274 0
	movi	a2, 0x103
.LVL181:
	retw.n
.LVL182:
.L67:
	.loc 1 309 0
	movi.n	a2, 0
.LVL183:
	.loc 1 310 0
	retw.n
.LFE8:
	.size	protocomm_set_security, .-protocomm_set_security
	.section	.text.protocomm_unset_security,"ax",@progbits
	.align	4
	.global	protocomm_unset_security
	.type	protocomm_unset_security, @function
protocomm_unset_security:
.LFB9:
	.loc 1 313 0
.LVL184:
	entry	sp, 32
.LCFI10:
	.loc 1 314 0
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a2
	.loc 1 314 0
	movnez	a8, a10, a3
	or	a8, a8, a9
	.loc 1 314 0
	bne	a8, a10, .L72
	.loc 1 318 0
	l32i.n	a8, a2, 8
	beq	a8, a10, .L70
	.loc 1 318 0 is_stmt 0 discriminator 1
	l32i.n	a10, a8, 8
	beqz.n	a10, .L70
	.loc 1 319 0 is_stmt 1
	callx8	a10
.LVL185:
	.loc 1 320 0
	movi.n	a8, 0
	s32i.n	a8, a2, 8
.L70:
	.loc 1 323 0
	l32i.n	a10, a2, 12
	beqz.n	a10, .L71
	.loc 1 324 0
	call8	free
.LVL186:
	.loc 1 325 0
	movi.n	a8, 0
	s32i.n	a8, a2, 12
.L71:
	.loc 1 328 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	protocomm_remove_endpoint
.LVL187:
	mov.n	a2, a10
.LVL188:
	retw.n
.LVL189:
.L72:
	.loc 1 315 0
	movi.n	a2, -1
.LVL190:
	.loc 1 329 0
	retw.n
.LFE9:
	.size	protocomm_unset_security, .-protocomm_unset_security
	.section	.rodata.str1.4
	.align	4
.LC36:
	.string	"\033[0;31mE (%d) %s: Error allocating version string\033[0m\n"
	.align	4
.LC39:
	.string	"\033[0;31mE (%d) %s: Error adding version endpoint\033[0m\n"
	.section	.text.protocomm_set_version,"ax",@progbits
	.literal_position
	.literal .LC35, .LC0
	.literal .LC37, .LC36
	.literal .LC38, protocomm_version_handler
	.literal .LC40, .LC39
	.align	4
	.global	protocomm_set_version
	.type	protocomm_set_version, @function
protocomm_set_version:
.LFB11:
	.loc 1 356 0
.LVL191:
	entry	sp, 32
.LCFI11:
	.loc 1 357 0
	movi.n	a8, 1
	movi.n	a11, 0
	mov.n	a9, a11
	moveqz	a9, a8, a2
	.loc 1 357 0
	movnez	a8, a11, a3
	or	a8, a8, a9
	.loc 1 357 0
	bne	a8, a11, .L76
	.loc 1 357 0 discriminator 1
	beq	a4, a11, .L77
	.loc 1 361 0
	l32i.n	a8, a2, 24
	bne	a8, a11, .L78
	.loc 1 365 0
	mov.n	a10, a4
	call8	strdup
.LVL192:
	s32i.n	a10, a2, 24
	.loc 1 366 0
	bnez.n	a10, .L75
	.loc 1 367 0 discriminator 2
	call8	esp_log_timestamp
.LVL193:
	l32r	a11, .LC35
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC37
	movi.n	a10, 1
	call8	esp_log_write
.LVL194:
	.loc 1 368 0 discriminator 2
	movi	a2, 0x101
.LVL195:
	retw.n
.LVL196:
.L75:
	.loc 1 371 0
	movi.n	a14, 4
	mov.n	a13, a2
	l32r	a12, .LC38
	mov.n	a11, a3
	mov.n	a10, a2
	call8	protocomm_add_endpoint_internal
.LVL197:
	mov.n	a2, a10
.LVL198:
	.loc 1 374 0
	beqz.n	a10, .L79
	.loc 1 375 0 discriminator 2
	call8	esp_log_timestamp
.LVL199:
	l32r	a11, .LC35
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC40
	movi.n	a10, 1
	call8	esp_log_write
.LVL200:
	.loc 1 376 0 discriminator 2
	retw.n
.LVL201:
.L76:
	.loc 1 358 0
	movi	a2, 0x102
.LVL202:
	retw.n
.LVL203:
.L77:
	movi	a2, 0x102
.LVL204:
	retw.n
.LVL205:
.L78:
	.loc 1 362 0
	movi	a2, 0x103
.LVL206:
	retw.n
.LVL207:
.L79:
	.loc 1 378 0
	movi.n	a2, 0
.LVL208:
	.loc 1 379 0
	retw.n
.LFE11:
	.size	protocomm_set_version, .-protocomm_set_version
	.section	.text.protocomm_unset_version,"ax",@progbits
	.align	4
	.global	protocomm_unset_version
	.type	protocomm_unset_version, @function
protocomm_unset_version:
.LFB12:
	.loc 1 382 0
.LVL209:
	entry	sp, 32
.LCFI12:
	.loc 1 383 0
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a2
	.loc 1 383 0
	movnez	a8, a10, a3
	or	a8, a8, a9
	.loc 1 383 0
	bne	a8, a10, .L83
	.loc 1 387 0
	l32i.n	a10, a2, 24
	beqz.n	a10, .L82
	.loc 1 388 0
	call8	free
.LVL210:
	.loc 1 389 0
	movi.n	a8, 0
	s32i.n	a8, a2, 24
.L82:
	.loc 1 392 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	protocomm_remove_endpoint
.LVL211:
	mov.n	a2, a10
.LVL212:
	retw.n
.LVL213:
.L83:
	.loc 1 384 0
	movi	a2, 0x102
.LVL214:
	.loc 1 393 0
	retw.n
.LFE12:
	.size	protocomm_unset_version, .-protocomm_unset_version
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI0-.LFB7
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI2-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI3-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI4-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI5-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI6-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI7-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI8-.LFB6
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI9-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI10-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI11-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI12-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/_types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/include/security/protocomm_security.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/include/common/protocomm.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/src/common/protocomm_priv.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/string.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x112f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0xc
	.4byte	.LASF92
	.4byte	.LASF93
	.4byte	.Ldebug_ranges0+0
	.4byte	0
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
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x19
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x37
	.4byte	0x33
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x7
	.4byte	0xab
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0xcb
	.4byte	0x90
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x6
	.byte	0x18
	.4byte	0xd3
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0xb
	.byte	0x1f
	.4byte	0x130
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x8
	.byte	0x7
	.byte	0x1a
	.4byte	0x155
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x7
	.byte	0x1e
	.4byte	0x155
	.byte	0
	.uleb128 0xc
	.string	"len"
	.byte	0x7
	.byte	0x23
	.4byte	0xc8
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x15b
	.uleb128 0x7
	.4byte	0xbd
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x7
	.byte	0x24
	.4byte	0x130
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x20
	.byte	0x7
	.byte	0x2f
	.4byte	0x1d8
	.uleb128 0xc
	.string	"ver"
	.byte	0x7
	.byte	0x33
	.4byte	0x33
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x7
	.byte	0x39
	.4byte	0x1e3
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x7
	.byte	0x3e
	.4byte	0x1e3
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x7
	.byte	0x43
	.4byte	0x1f8
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x7
	.byte	0x48
	.4byte	0x1f8
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x7
	.byte	0x4e
	.4byte	0x248
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x7
	.byte	0x57
	.4byte	0x271
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x7
	.byte	0x5e
	.4byte	0x271
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.4byte	0xf4
	.4byte	0x1e3
	.uleb128 0xe
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1d8
	.uleb128 0xf
	.4byte	0xf4
	.4byte	0x1f8
	.uleb128 0x10
	.4byte	0xde
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e9
	.uleb128 0xf
	.4byte	0xf4
	.4byte	0x22b
	.uleb128 0x10
	.4byte	0x22b
	.uleb128 0x10
	.4byte	0xde
	.uleb128 0x10
	.4byte	0x155
	.uleb128 0x10
	.4byte	0xe9
	.uleb128 0x10
	.4byte	0x236
	.uleb128 0x10
	.4byte	0x242
	.uleb128 0x10
	.4byte	0xa2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x231
	.uleb128 0x7
	.4byte	0x160
	.uleb128 0x6
	.byte	0x4
	.4byte	0x23c
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbd
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1fe
	.uleb128 0xf
	.4byte	0xf4
	.4byte	0x271
	.uleb128 0x10
	.4byte	0xde
	.uleb128 0x10
	.4byte	0x155
	.uleb128 0x10
	.4byte	0xe9
	.uleb128 0x10
	.4byte	0x23c
	.uleb128 0x10
	.4byte	0x242
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x24e
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x7
	.byte	0x61
	.4byte	0x16b
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x8
	.byte	0x1b
	.4byte	0x28d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x293
	.uleb128 0xf
	.4byte	0xf4
	.4byte	0x2bb
	.uleb128 0x10
	.4byte	0xde
	.uleb128 0x10
	.4byte	0x155
	.uleb128 0x10
	.4byte	0xe9
	.uleb128 0x10
	.4byte	0x236
	.uleb128 0x10
	.4byte	0x242
	.uleb128 0x10
	.4byte	0xa2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x8
	.byte	0x2b
	.4byte	0x2c6
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x1c
	.byte	0x9
	.byte	0x37
	.4byte	0x327
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x9
	.byte	0x3a
	.4byte	0x3c8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x9
	.byte	0x3e
	.4byte	0x3dd
	.byte	0x4
	.uleb128 0xc
	.string	"sec"
	.byte	0x9
	.byte	0x42
	.4byte	0x3e3
	.byte	0x8
	.uleb128 0xc
	.string	"pop"
	.byte	0x9
	.byte	0x45
	.4byte	0x3ee
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x9
	.byte	0x48
	.4byte	0x396
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x9
	.byte	0x4b
	.4byte	0xa2
	.byte	0x14
	.uleb128 0xc
	.string	"ver"
	.byte	0x9
	.byte	0x4e
	.4byte	0xb2
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.byte	0x9
	.byte	0x2d
	.4byte	0x33c
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x9
	.byte	0x2d
	.4byte	0x385
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x14
	.byte	0x9
	.byte	0x22
	.4byte	0x385
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x9
	.byte	0x23
	.4byte	0xb2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x9
	.byte	0x24
	.4byte	0x282
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x9
	.byte	0x28
	.4byte	0xa2
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x9
	.byte	0x2a
	.4byte	0xde
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x9
	.byte	0x2d
	.4byte	0x327
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x33c
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x9
	.byte	0x2e
	.4byte	0x33c
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x4
	.byte	0x9
	.byte	0x48
	.4byte	0x3af
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x9
	.byte	0x48
	.4byte	0x385
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x33
	.4byte	0x3c8
	.uleb128 0x10
	.4byte	0xb2
	.uleb128 0x10
	.4byte	0x282
	.uleb128 0x10
	.4byte	0xa2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3af
	.uleb128 0xf
	.4byte	0x33
	.4byte	0x3dd
	.uleb128 0x10
	.4byte	0xb2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3ce
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e9
	.uleb128 0x7
	.4byte	0x277
	.uleb128 0x6
	.byte	0x4
	.4byte	0x160
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x1
	.byte	0xf8
	.4byte	0x33
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x495
	.uleb128 0x13
	.4byte	.LASF57
	.byte	0x1
	.byte	0xf8
	.4byte	0xde
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x1
	.byte	0xf9
	.4byte	0x155
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x1
	.byte	0xf9
	.4byte	0xe9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x1
	.byte	0xfa
	.4byte	0x236
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x1
	.byte	0xfa
	.4byte	0x242
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0x1
	.byte	0xfb
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x15
	.string	"pc"
	.byte	0x1
	.byte	0xfd
	.4byte	0x495
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x16
	.4byte	.LVL2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2bb
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x1
	.byte	0x47
	.4byte	0x4ec
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ec
	.uleb128 0x18
	.string	"pc"
	.byte	0x1
	.byte	0x47
	.4byte	0x495
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x1
	.byte	0x47
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.string	"it"
	.byte	0x1
	.byte	0x49
	.4byte	0x4ec
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.4byte	.LVL10
	.4byte	0x10d1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x38b
	.uleb128 0x12
	.4byte	.LASF64
	.byte	0x1
	.byte	0x52
	.4byte	0xf4
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65d
	.uleb128 0x18
	.string	"pc"
	.byte	0x1
	.byte	0x52
	.4byte	0x495
	.4byte	.LLST2
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x1
	.byte	0x52
	.4byte	0xb2
	.4byte	.LLST3
	.uleb128 0x1a
	.string	"h"
	.byte	0x1
	.byte	0x53
	.4byte	0x282
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0x1
	.byte	0x53
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.4byte	.LASF52
	.byte	0x1
	.byte	0x54
	.4byte	0xde
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1b
	.string	"ep"
	.byte	0x1
	.byte	0x5a
	.4byte	0x4ec
	.4byte	.LLST4
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x5b
	.4byte	0xf4
	.4byte	.LLST5
	.uleb128 0x1c
	.4byte	.LVL13
	.4byte	0x49b
	.4byte	0x584
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
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL14
	.4byte	0x10dc
	.uleb128 0x1c
	.4byte	.LVL15
	.4byte	0x10e7
	.4byte	0x5bb
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL19
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.4byte	0x5da
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
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
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL21
	.4byte	0x10dc
	.uleb128 0x1c
	.4byte	.LVL22
	.4byte	0x10e7
	.4byte	0x611
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL25
	.4byte	0x10f2
	.4byte	0x629
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL26
	.4byte	0x10dc
	.uleb128 0x19
	.4byte	.LVL27
	.4byte	0x10e7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x14b
	.4byte	0x33
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x72d
	.uleb128 0x20
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x14b
	.4byte	0xde
	.4byte	.LLST6
	.uleb128 0x21
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x14c
	.4byte	0x155
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x14c
	.4byte	0xe9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x14d
	.4byte	0x236
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x21
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x14d
	.4byte	0x242
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x21
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x14e
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x22
	.string	"pc"
	.byte	0x1
	.2byte	0x150
	.4byte	0x495
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1d
	.4byte	.LVL41
	.4byte	0x10fd
	.uleb128 0x1d
	.4byte	.LVL42
	.4byte	0x1108
	.uleb128 0x1d
	.4byte	.LVL43
	.4byte	0x10dc
	.uleb128 0x1c
	.4byte	.LVL44
	.4byte	0x10e7
	.4byte	0x723
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL47
	.4byte	0x1113
	.byte	0
	.uleb128 0x23
	.4byte	.LASF66
	.byte	0x1
	.byte	0x1d
	.4byte	0x495
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a0
	.uleb128 0x1b
	.string	"pc"
	.byte	0x1
	.byte	0x1f
	.4byte	0x495
	.4byte	.LLST7
	.uleb128 0x1c
	.4byte	.LVL49
	.4byte	0x10f2
	.4byte	0x76c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL50
	.4byte	0x10dc
	.uleb128 0x19
	.4byte	.LVL51
	.4byte	0x10e7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF67
	.byte	0x1
	.byte	0x2b
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x80a
	.uleb128 0x1a
	.string	"pc"
	.byte	0x1
	.byte	0x2b
	.4byte	0x495
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.string	"it"
	.byte	0x1
	.byte	0x31
	.4byte	0x4ec
	.4byte	.LLST8
	.uleb128 0x1b
	.string	"tmp"
	.byte	0x1
	.byte	0x31
	.4byte	0x4ec
	.4byte	.LLST9
	.uleb128 0x1d
	.4byte	.LVL56
	.4byte	0x111c
	.uleb128 0x1d
	.4byte	.LVL59
	.4byte	0x111c
	.uleb128 0x1d
	.4byte	.LVL61
	.4byte	0x111c
	.uleb128 0x19
	.4byte	.LVL62
	.4byte	0x111c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF68
	.byte	0x1
	.byte	0x7d
	.4byte	0xf4
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x87e
	.uleb128 0x18
	.string	"pc"
	.byte	0x1
	.byte	0x7d
	.4byte	0x495
	.4byte	.LLST10
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x1
	.byte	0x7d
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.string	"h"
	.byte	0x1
	.byte	0x7e
	.4byte	0x282
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0x1
	.byte	0x7e
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL64
	.4byte	0x4f2
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
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF69
	.byte	0x1
	.byte	0x83
	.4byte	0xf4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x926
	.uleb128 0x18
	.string	"pc"
	.byte	0x1
	.byte	0x83
	.4byte	0x495
	.4byte	.LLST11
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x1
	.byte	0x83
	.4byte	0xb2
	.4byte	.LLST12
	.uleb128 0x1b
	.string	"it"
	.byte	0x1
	.byte	0x8d
	.4byte	0x4ec
	.4byte	.LLST13
	.uleb128 0x1b
	.string	"tmp"
	.byte	0x1
	.byte	0x8d
	.4byte	0x4ec
	.4byte	.LLST14
	.uleb128 0x26
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x8ee
	.uleb128 0x27
	.4byte	.LASF70
	.byte	0x1
	.byte	0x90
	.4byte	0x385
	.4byte	.LLST15
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL68
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x901
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL75
	.4byte	0x111c
	.4byte	0x915
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL78
	.4byte	0x10d1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF71
	.byte	0x1
	.byte	0x98
	.4byte	0xf4
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd75
	.uleb128 0x18
	.string	"pc"
	.byte	0x1
	.byte	0x98
	.4byte	0x495
	.4byte	.LLST16
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x1
	.byte	0x98
	.4byte	0xb2
	.4byte	.LLST17
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x1
	.byte	0x98
	.4byte	0xde
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0x1
	.byte	0x99
	.4byte	0x155
	.4byte	.LLST18
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x1
	.byte	0x99
	.4byte	0xe9
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x1
	.byte	0x9a
	.4byte	0x236
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x1
	.byte	0x9a
	.4byte	0x242
	.4byte	.LLST19
	.uleb128 0x1b
	.string	"ep"
	.byte	0x1
	.byte	0xa4
	.4byte	0x4ec
	.4byte	.LLST20
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0xaa
	.4byte	0xf4
	.4byte	.LLST21
	.uleb128 0x26
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0xc56
	.uleb128 0x27
	.4byte	.LASF72
	.byte	0x1
	.byte	0xb2
	.4byte	0x23c
	.4byte	.LLST22
	.uleb128 0x28
	.4byte	.LASF73
	.byte	0x1
	.byte	0xb8
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.4byte	.LASF74
	.byte	0x1
	.byte	0xc1
	.4byte	0x23c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.4byte	.LASF75
	.byte	0x1
	.byte	0xc2
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.4byte	.LASF76
	.byte	0x1
	.byte	0xd1
	.4byte	0x23c
	.4byte	.LLST23
	.uleb128 0x28
	.4byte	.LASF77
	.byte	0x1
	.byte	0xd8
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.4byte	.LVL100
	.4byte	0x1108
	.4byte	0xa35
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL102
	.4byte	0x10dc
	.uleb128 0x1c
	.4byte	.LVL103
	.4byte	0x10e7
	.4byte	0xa72
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL107
	.4byte	0xa9c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL109
	.4byte	0x10dc
	.uleb128 0x1c
	.4byte	.LVL110
	.4byte	0x10e7
	.4byte	0xad9
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL111
	.4byte	0x111c
	.4byte	0xaee
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL116
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0xb14
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL118
	.4byte	0x10dc
	.uleb128 0x1c
	.4byte	.LVL119
	.4byte	0x10e7
	.4byte	0xb51
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL120
	.4byte	0x111c
	.uleb128 0x1c
	.4byte	.LVL121
	.4byte	0x111c
	.4byte	0xb6f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL124
	.4byte	0x111c
	.4byte	0xb84
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL125
	.4byte	0x1108
	.uleb128 0x1d
	.4byte	.LVL127
	.4byte	0x10dc
	.uleb128 0x1c
	.4byte	.LVL128
	.4byte	0x10e7
	.4byte	0xbca
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL129
	.4byte	0x111c
	.uleb128 0x1e
	.4byte	.LVL133
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.4byte	0xbf2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL135
	.4byte	0x10dc
	.uleb128 0x1c
	.4byte	.LVL136
	.4byte	0x10e7
	.4byte	0xc2f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL137
	.4byte	0x111c
	.4byte	0xc43
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL138
	.4byte	0x111c
	.uleb128 0x1d
	.4byte	.LVL139
	.4byte	0x111c
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL84
	.4byte	0x10dc
	.uleb128 0x1c
	.4byte	.LVL85
	.4byte	0x10e7
	.4byte	0xc9a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL89
	.4byte	0x49b
	.4byte	0xcb4
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
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL91
	.4byte	0x10dc
	.uleb128 0x1c
	.4byte	.LVL92
	.4byte	0x10e7
	.4byte	0xcf1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL97
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.4byte	0xd1e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL144
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.4byte	0xd4b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL148
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x109
	.4byte	0xf4
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf0a
	.uleb128 0x2c
	.string	"pc"
	.byte	0x1
	.2byte	0x109
	.4byte	0x495
	.4byte	.LLST24
	.uleb128 0x21
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x109
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.string	"sec"
	.byte	0x1
	.2byte	0x10a
	.4byte	0x3e3
	.4byte	.LLST25
	.uleb128 0x2d
	.string	"pop"
	.byte	0x1
	.2byte	0x10b
	.4byte	0x22b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2e
	.string	"ret"
	.byte	0x1
	.2byte	0x115
	.4byte	0xf4
	.4byte	.LLST26
	.uleb128 0x1c
	.4byte	.LVL153
	.4byte	0x4f2
	.4byte	0xe08
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
	.uleb128 0x5
	.byte	0x3
	.4byte	protocomm_common_security_handler
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL155
	.4byte	0x10dc
	.uleb128 0x1c
	.4byte	.LVL156
	.4byte	0x10e7
	.4byte	0xe3f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL161
	.4byte	0x10dc
	.uleb128 0x1c
	.4byte	.LVL162
	.4byte	0x10e7
	.4byte	0xe76
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL163
	.4byte	0x87e
	.4byte	0xe90
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
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL166
	.4byte	0x1108
	.4byte	0xea3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL167
	.4byte	0x10dc
	.uleb128 0x1c
	.4byte	.LVL168
	.4byte	0x10e7
	.4byte	0xeda
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL171
	.4byte	0x87e
	.4byte	0xef4
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
	.byte	0
	.uleb128 0x19
	.4byte	.LVL174
	.4byte	0x1113
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x138
	.4byte	0xf4
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf61
	.uleb128 0x2c
	.string	"pc"
	.byte	0x1
	.2byte	0x138
	.4byte	0x495
	.4byte	.LLST27
	.uleb128 0x21
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x138
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LVL186
	.4byte	0x111c
	.uleb128 0x19
	.4byte	.LVL187
	.4byte	0x87e
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
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x163
	.4byte	0xf4
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1063
	.uleb128 0x2c
	.string	"pc"
	.byte	0x1
	.2byte	0x163
	.4byte	0x495
	.4byte	.LLST28
	.uleb128 0x21
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x163
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x163
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2e
	.string	"ret"
	.byte	0x1
	.2byte	0x173
	.4byte	0xf4
	.4byte	.LLST29
	.uleb128 0x1c
	.4byte	.LVL192
	.4byte	0x1127
	.4byte	0xfca
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL193
	.4byte	0x10dc
	.uleb128 0x1c
	.4byte	.LVL194
	.4byte	0x10e7
	.4byte	0x1001
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL197
	.4byte	0x4f2
	.4byte	0x102f
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
	.uleb128 0x5
	.byte	0x3
	.4byte	protocomm_version_handler
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL199
	.4byte	0x10dc
	.uleb128 0x19
	.4byte	.LVL200
	.4byte	0x10e7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x17d
	.4byte	0xf4
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10ba
	.uleb128 0x2c
	.string	"pc"
	.byte	0x1
	.2byte	0x17d
	.4byte	0x495
	.4byte	.LLST30
	.uleb128 0x21
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x17d
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LVL210
	.4byte	0x111c
	.uleb128 0x19
	.4byte	.LVL211
	.4byte	0x87e
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
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"TAG"
	.byte	0x1
	.byte	0x1b
	.4byte	0x10cc
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xb2
	.uleb128 0x30
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0xa
	.byte	0x1c
	.uleb128 0x30
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0xb
	.byte	0x57
	.uleb128 0x30
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0xb
	.byte	0x6b
	.uleb128 0x30
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0xc
	.byte	0x57
	.uleb128 0x30
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0xa
	.byte	0x21
	.uleb128 0x30
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0xc
	.byte	0x65
	.uleb128 0x31
	.4byte	.LASF94
	.4byte	.LASF94
	.uleb128 0x30
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0xc
	.byte	0x5a
	.uleb128 0x30
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0xa
	.byte	0x50
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12
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
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL29
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
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL54
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL66
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL70
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL81
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL70
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL82
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
	.4byte	.LVL141
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL143
	.4byte	.LVL146
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL147
	.4byte	.LVL150
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL151
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL82
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL142
	.4byte	.LVL146
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL83
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL82
	.4byte	.LVL87
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL90
	.4byte	.LVL91-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL91-1
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL94
	.4byte	.LVL98
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL108
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL117
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL134
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL141
	.4byte	.LVL145
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL149
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LFE6
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL101
	.4byte	.LVL102-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL102-1
	.4byte	.LVL105
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL106
	.4byte	.LVL141
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL126
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL152
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
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL165
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL183
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL152
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL169
	.4byte	.LVL173
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL154
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL182
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL184
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL188
	.4byte	.LVL189
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL190
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL191
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL196
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL198
	.4byte	.LVL201
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL204
	.4byte	.LVL205
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL206
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL198
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL207
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL208
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL209
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL212
	.4byte	.LVL213
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL213
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL214
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF57:
	.string	"session_id"
.LASF88:
	.string	"malloc"
.LASF50:
	.string	"req_handler"
.LASF83:
	.string	"strcmp"
.LASF80:
	.string	"protocomm_set_version"
.LASF79:
	.string	"protocomm_unset_security"
.LASF5:
	.string	"__uint8_t"
.LASF20:
	.string	"ssize_t"
.LASF32:
	.string	"init"
.LASF10:
	.string	"long long unsigned int"
.LASF85:
	.string	"esp_log_write"
.LASF73:
	.string	"dec_inbuf_len"
.LASF53:
	.string	"next"
.LASF26:
	.string	"ESP_LOG_DEBUG"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF11:
	.string	"long int"
.LASF34:
	.string	"new_transport_session"
.LASF58:
	.string	"inbuf"
.LASF55:
	.string	"eptable_t"
.LASF94:
	.string	"memcpy"
.LASF62:
	.string	"protocomm_common_security_handler"
.LASF74:
	.string	"plaintext_resp"
.LASF17:
	.string	"uint16_t"
.LASF36:
	.string	"security_req_handler"
.LASF47:
	.string	"sle_next"
.LASF45:
	.string	"endpoints"
.LASF76:
	.string	"enc_resp"
.LASF8:
	.string	"__uint32_t"
.LASF30:
	.string	"protocomm_security_pop"
.LASF59:
	.string	"inlen"
.LASF0:
	.string	"unsigned int"
.LASF87:
	.string	"strlen"
.LASF41:
	.string	"protocomm_t"
.LASF14:
	.string	"long unsigned int"
.LASF68:
	.string	"protocomm_add_endpoint"
.LASF37:
	.string	"encrypt"
.LASF28:
	.string	"data"
.LASF72:
	.string	"dec_inbuf"
.LASF1:
	.string	"short unsigned int"
.LASF29:
	.string	"protocomm_security_pop_t"
.LASF31:
	.string	"protocomm_security"
.LASF71:
	.string	"protocomm_req_handle"
.LASF49:
	.string	"ep_name"
.LASF25:
	.string	"ESP_LOG_INFO"
.LASF64:
	.string	"protocomm_add_endpoint_internal"
.LASF81:
	.string	"version"
.LASF13:
	.string	"sizetype"
.LASF84:
	.string	"esp_log_timestamp"
.LASF33:
	.string	"cleanup"
.LASF77:
	.string	"enc_resp_len"
.LASF66:
	.string	"protocomm_new"
.LASF46:
	.string	"priv"
.LASF78:
	.string	"protocomm_set_security"
.LASF18:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF67:
	.string	"protocomm_delete"
.LASF91:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF4:
	.string	"short int"
.LASF48:
	.string	"protocomm_ep"
.LASF69:
	.string	"protocomm_remove_endpoint"
.LASF23:
	.string	"ESP_LOG_ERROR"
.LASF52:
	.string	"flag"
.LASF70:
	.string	"curelm"
.LASF16:
	.string	"uint8_t"
.LASF82:
	.string	"protocomm_unset_version"
.LASF51:
	.string	"priv_data"
.LASF39:
	.string	"protocomm_security_t"
.LASF92:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/src/common/protocomm.c"
.LASF40:
	.string	"protocomm_req_handler_t"
.LASF19:
	.string	"uint32_t"
.LASF15:
	.string	"char"
.LASF27:
	.string	"ESP_LOG_VERBOSE"
.LASF63:
	.string	"search_endpoint"
.LASF35:
	.string	"close_transport_session"
.LASF6:
	.string	"__uint16_t"
.LASF22:
	.string	"ESP_LOG_NONE"
.LASF7:
	.string	"__int32_t"
.LASF65:
	.string	"protocomm_version_handler"
.LASF89:
	.string	"free"
.LASF38:
	.string	"decrypt"
.LASF60:
	.string	"outbuf"
.LASF24:
	.string	"ESP_LOG_WARN"
.LASF21:
	.string	"esp_err_t"
.LASF86:
	.string	"calloc"
.LASF90:
	.string	"strdup"
.LASF12:
	.string	"_ssize_t"
.LASF56:
	.string	"slh_first"
.LASF43:
	.string	"add_endpoint"
.LASF54:
	.string	"protocomm_ep_t"
.LASF61:
	.string	"outlen"
.LASF75:
	.string	"plaintext_resp_len"
.LASF44:
	.string	"remove_endpoint"
.LASF93:
	.string	"/home/raphael/rtone/lcd/build/protocomm"
.LASF42:
	.string	"protocomm"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
