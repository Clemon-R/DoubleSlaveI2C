	.file	"spiffs_cache.c"
	.text
.Ltext0:
	.section	.text.spiffs_cache_page_get,"ax",@progbits
	.align	4
	.type	spiffs_cache_page_get, @function
spiffs_cache_page_get:
.LFB19:
	.file 1 "/home/raphael/rtone/lcd/components/spiffs/spiffs_cache.c"
	.loc 1 14 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 15 0
	l32i	a10, a2, 88
.LVL1:
	.loc 1 16 0
	l32i.n	a12, a10, 8
	l32i.n	a8, a10, 12
	bnone	a12, a8, .L6
	movi.n	a9, 0
	j	.L3
.LVL2:
.L5:
.LBB2:
	.loc 1 19 0
	l32i.n	a11, a10, 16
	l32i.n	a8, a2, 28
	addi	a8, a8, 20
	mull	a8, a8, a9
	add.n	a8, a11, a8
.LVL3:
	.loc 1 20 0
	bbc	a12, a9, .L4
	.loc 1 21 0 discriminator 1
	l8ui	a11, a8, 0
	.loc 1 20 0 discriminator 1
	sext	a11, a11, 7
	bltz	a11, .L4
	.loc 1 22 0
	l16ui	a11, a8, 8
	.loc 1 21 0
	bne	a11, a3, .L4
	.loc 1 24 0
	l32i.n	a2, a10, 4
.LVL4:
	s32i.n	a2, a8, 4
	.loc 1 25 0
	mov.n	a2, a8
	retw.n
.LVL5:
.L4:
.LBE2:
	.loc 1 18 0 discriminator 2
	addi.n	a9, a9, 1
.LVL6:
.L3:
	.loc 1 18 0 is_stmt 0 discriminator 1
	l8ui	a8, a10, 0
	blt	a9, a8, .L5
	.loc 1 29 0 is_stmt 1
	movi.n	a2, 0
.LVL7:
	retw.n
.LVL8:
.L6:
	.loc 1 16 0
	movi.n	a2, 0
.LVL9:
	.loc 1 30 0
	retw.n
.LFE19:
	.size	spiffs_cache_page_get, .-spiffs_cache_page_get
	.section	.text.spiffs_cache_page_free,"ax",@progbits
	.align	4
	.type	spiffs_cache_page_free, @function
spiffs_cache_page_free:
.LFB20:
	.loc 1 33 0
.LVL10:
	entry	sp, 32
.LCFI1:
.LVL11:
	.loc 1 35 0
	l32i	a5, a2, 88
.LVL12:
	.loc 1 36 0
	l32i.n	a12, a5, 16
	l32i.n	a11, a2, 28
	addi	a8, a11, 20
	mull	a8, a8, a3
	add.n	a6, a12, a8
.LVL13:
	.loc 1 37 0
	l32i.n	a9, a5, 8
	movi.n	a10, 1
	ssl	a3
	sll	a3, a10
.LVL14:
	bnone	a3, a9, .L10
	.loc 1 38 0
	beqz.n	a4, .L11
	.loc 1 39 0 discriminator 1
	l8ui	a4, a6, 0
.LVL15:
	.loc 1 38 0 discriminator 1
	sext	a9, a4, 7
	bltz	a9, .L12
	.loc 1 39 0
	bbci	a4, 0, .L13
.LBB3:
	.loc 1 41 0
	addi	a8, a8, 20
.LVL16:
	.loc 1 42 0
	l32i.n	a4, a2, 4
	l32i.n	a10, a2, 16
	l16ui	a2, a6, 8
.LVL17:
	mull	a2, a2, a11
	add.n	a12, a12, a8
.LVL18:
	add.n	a10, a10, a2
	callx8	a4
.LVL19:
	mov.n	a2, a10
.LVL20:
	j	.L9
.LVL21:
.L11:
.LBE3:
	.loc 1 34 0
	movi.n	a2, 0
.LVL22:
	j	.L9
.LVL23:
.L12:
	movi.n	a2, 0
.LVL24:
	j	.L9
.LVL25:
.L13:
	movi.n	a2, 0
.LVL26:
.L9:
	.loc 1 45 0
	movi.n	a4, 0
	s8i	a4, a6, 0
	.loc 1 46 0
	movi.n	a4, -1
	xor	a3, a4, a3
	l32i.n	a4, a5, 8
	and	a3, a4, a3
	s32i.n	a3, a5, 8
	retw.n
.LVL27:
.L10:
	.loc 1 34 0
	movi.n	a2, 0
.LVL28:
	.loc 1 56 0
	retw.n
.LFE20:
	.size	spiffs_cache_page_free, .-spiffs_cache_page_free
	.section	.text.spiffs_cache_page_remove_oldest,"ax",@progbits
	.align	4
	.type	spiffs_cache_page_remove_oldest, @function
spiffs_cache_page_remove_oldest:
.LFB21:
	.loc 1 59 0
.LVL29:
	entry	sp, 32
.LCFI2:
.LVL30:
	.loc 1 61 0
	l32i	a13, a2, 88
.LVL31:
	.loc 1 63 0
	l32i.n	a8, a13, 8
	l32i.n	a9, a13, 12
	and	a8, a8, a9
	bne	a9, a8, .L19
	movi.n	a10, 0
	movi.n	a11, -1
	mov.n	a9, a10
	j	.L16
.LVL32:
.L18:
.LBB4:
	.loc 1 73 0
	l32i.n	a12, a13, 16
	l32i.n	a8, a2, 28
	addi	a8, a8, 20
	mull	a8, a8, a9
	add.n	a8, a12, a8
.LVL33:
	.loc 1 74 0
	l32i.n	a12, a13, 4
	l32i.n	a14, a8, 4
	sub	a12, a12, a14
	bgeu	a10, a12, .L17
	.loc 1 75 0 discriminator 1
	l8ui	a8, a8, 0
.LVL34:
	and	a8, a8, a3
	.loc 1 74 0 discriminator 1
	bne	a8, a4, .L17
	.loc 1 76 0
	mov.n	a10, a12
.LVL35:
	.loc 1 77 0
	mov.n	a11, a9
.LVL36:
.L17:
.LBE4:
	.loc 1 72 0 discriminator 2
	addi.n	a9, a9, 1
.LVL37:
.L16:
	.loc 1 72 0 is_stmt 0 discriminator 1
	l8ui	a8, a13, 0
	blt	a9, a8, .L18
	.loc 1 81 0 is_stmt 1
	bltz	a11, .L21
	.loc 1 82 0
	movi.n	a12, 1
	mov.n	a10, a2
.LVL38:
	call8	spiffs_cache_page_free
.LVL39:
	mov.n	a2, a10
.LVL40:
	retw.n
.LVL41:
.L19:
	.loc 1 65 0
	movi.n	a2, 0
.LVL42:
	retw.n
.LVL43:
.L21:
	.loc 1 60 0
	movi.n	a2, 0
.LVL44:
	.loc 1 86 0
	retw.n
.LFE21:
	.size	spiffs_cache_page_remove_oldest, .-spiffs_cache_page_remove_oldest
	.section	.text.spiffs_cache_page_allocate,"ax",@progbits
	.align	4
	.type	spiffs_cache_page_allocate, @function
spiffs_cache_page_allocate:
.LFB22:
	.loc 1 89 0
.LVL45:
	entry	sp, 32
.LCFI3:
	.loc 1 90 0
	l32i	a11, a2, 88
.LVL46:
	.loc 1 91 0
	l32i.n	a12, a11, 8
	beqi	a12, -1, .L27
	movi.n	a8, 0
	j	.L24
.LVL47:
.L26:
	.loc 1 97 0
	movi.n	a9, 1
	ssl	a8
	sll	a9, a9
	bany	a12, a9, .L25
.LBB5:
	.loc 1 98 0
	l32i.n	a13, a11, 16
	l32i.n	a10, a2, 28
	addi	a10, a10, 20
	mull	a8, a10, a8
.LVL48:
	add.n	a2, a13, a8
.LVL49:
	.loc 1 99 0
	or	a9, a12, a9
	s32i.n	a9, a11, 8
	.loc 1 100 0
	l32i.n	a8, a11, 4
	s32i.n	a8, a2, 4
	.loc 1 102 0
	retw.n
.LVL50:
.L25:
.LBE5:
	.loc 1 96 0 discriminator 2
	addi.n	a8, a8, 1
.LVL51:
.L24:
	.loc 1 96 0 is_stmt 0 discriminator 1
	l8ui	a10, a11, 0
	blt	a8, a10, .L26
	.loc 1 106 0 is_stmt 1
	movi.n	a2, 0
.LVL52:
	retw.n
.LVL53:
.L27:
	.loc 1 93 0
	movi.n	a2, 0
.LVL54:
	.loc 1 107 0
	retw.n
.LFE22:
	.size	spiffs_cache_page_allocate, .-spiffs_cache_page_allocate
	.section	.text.spiffs_cache_drop_page,"ax",@progbits
	.align	4
	.global	spiffs_cache_drop_page
	.type	spiffs_cache_drop_page, @function
spiffs_cache_drop_page:
.LFB23:
	.loc 1 110 0
.LVL55:
	entry	sp, 32
.LCFI4:
	.loc 1 111 0
	extui	a11, a3, 0, 16
	mov.n	a10, a2
	call8	spiffs_cache_page_get
.LVL56:
	.loc 1 112 0
	beqz.n	a10, .L28
	.loc 1 113 0
	movi.n	a12, 0
	l8ui	a11, a10, 1
	mov.n	a10, a2
.LVL57:
	call8	spiffs_cache_page_free
.LVL58:
.L28:
	retw.n
.LFE23:
	.size	spiffs_cache_drop_page, .-spiffs_cache_drop_page
	.section	.text.spiffs_phys_rd,"ax",@progbits
	.align	4
	.global	spiffs_phys_rd
	.type	spiffs_phys_rd, @function
spiffs_phys_rd:
.LFB24:
	.loc 1 126 0
.LVL59:
	entry	sp, 48
.LCFI5:
	extui	a3, a3, 0, 8
.LVL60:
	.loc 1 129 0
	l32i	a4, a2, 88
.LVL61:
	.loc 1 130 0
	l32i.n	a11, a2, 16
	sub	a11, a5, a11
	l32i.n	a8, a2, 28
	quou	a11, a11, a8
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	spiffs_cache_page_get
.LVL62:
	.loc 1 131 0
	l32i.n	a8, a4, 4
	addi.n	a8, a8, 1
	s32i.n	a8, a4, 4
	.loc 1 132 0
	beqz.n	a10, .L31
.LBB6:
	.loc 1 137 0
	s32i.n	a8, a10, 4
	.loc 1 138 0
	l32i.n	a11, a4, 16
	l8ui	a8, a10, 1
	l32i.n	a4, a2, 28
.LVL63:
	addi	a3, a4, 20
.LVL64:
	mull	a3, a8, a3
	addi	a3, a3, 20
.LVL65:
	.loc 1 139 0
	l32i.n	a2, a2, 16
.LVL66:
	sub	a5, a5, a2
.LVL67:
	remu	a5, a5, a4
	add.n	a5, a3, a5
	mov.n	a12, a6
	add.n	a11, a11, a5
.LVL68:
	mov.n	a10, a7
.LVL69:
	call8	memcpy
.LVL70:
.LBE6:
	.loc 1 128 0
	movi.n	a2, 0
	retw.n
.LVL71:
.L31:
	.loc 1 141 0
	extui	a3, a3, 0, 2
	bnei	a3, 1, .L33
	.loc 1 143 0
	l32i.n	a2, a2, 0
.LVL72:
	mov.n	a12, a7
	mov.n	a11, a6
	mov.n	a10, a5
.LVL73:
	callx8	a2
.LVL74:
	mov.n	a2, a10
	retw.n
.LVL75:
.L33:
	.loc 1 150 0
	movi.n	a12, 0
	movi	a11, 0x80
	mov.n	a10, a2
.LVL76:
	call8	spiffs_cache_page_remove_oldest
.LVL77:
	s32i.n	a10, sp, 4
.LVL78:
	.loc 1 152 0
	mov.n	a10, a2
.LVL79:
	call8	spiffs_cache_page_allocate
.LVL80:
	mov.n	a3, a10
.LVL81:
	.loc 1 153 0
	beqz.n	a10, .L34
.LBB7:
	.loc 1 154 0
	movi.n	a8, 2
	s8i	a8, a10, 0
	.loc 1 155 0
	l32i.n	a8, a2, 16
	sub	a8, a5, a8
	l32i.n	a9, a2, 28
	quou	a8, a8, a9
	s16i	a8, a10, 8
	.loc 1 157 0
	l32i.n	a9, a2, 0
	l32i.n	a10, a2, 16
	sub	a10, a5, a10
	l32i.n	a11, a2, 28
	remu	a10, a10, a11
	l32i.n	a12, a4, 16
	l8ui	a13, a3, 1
	addi	a8, a11, 20
	mull	a8, a13, a8
	addi	a8, a8, 20
	add.n	a12, a12, a8
	sub	a10, a5, a10
	callx8	a9
.LVL82:
	s32i.n	a10, sp, 0
.LVL83:
	.loc 1 161 0
	bnez.n	a10, .L35
.LBE7:
	.loc 1 150 0
	l32i.n	a8, sp, 4
	s32i.n	a8, sp, 0
.L35:
.LVL84:
.LBB8:
	.loc 1 165 0
	l32i.n	a11, a4, 16
	l8ui	a8, a3, 1
	l32i.n	a4, a2, 28
.LVL85:
	addi	a3, a4, 20
.LVL86:
	mull	a3, a8, a3
	addi	a3, a3, 20
.LVL87:
	.loc 1 166 0
	l32i.n	a2, a2, 16
.LVL88:
	sub	a5, a5, a2
.LVL89:
	remu	a5, a5, a4
	add.n	a5, a3, a5
	mov.n	a12, a6
	add.n	a11, a11, a5
.LVL90:
	mov.n	a10, a7
.LVL91:
	call8	memcpy
.LVL92:
.LBE8:
	l32i.n	a2, sp, 0
	retw.n
.LVL93:
.L34:
.LBB9:
	.loc 1 169 0
	l32i.n	a2, a2, 0
.LVL94:
	mov.n	a12, a7
	mov.n	a11, a6
	mov.n	a10, a5
	callx8	a2
.LVL95:
	.loc 1 170 0
	bnez.n	a10, .L36
.LBE9:
	.loc 1 150 0
	l32i.n	a2, sp, 4
	retw.n
.L36:
.LBB10:
	.loc 1 172 0
	mov.n	a2, a10
.LBE10:
	.loc 1 177 0
	retw.n
.LFE24:
	.size	spiffs_phys_rd, .-spiffs_phys_rd
	.section	.text.spiffs_phys_wr,"ax",@progbits
	.align	4
	.global	spiffs_phys_wr
	.type	spiffs_phys_wr, @function
spiffs_phys_wr:
.LFB25:
	.loc 1 186 0
.LVL96:
	entry	sp, 48
.LCFI6:
	extui	a3, a3, 0, 8
	s32i.n	a3, sp, 0
	.loc 1 188 0
	l32i.n	a11, a2, 16
	sub	a11, a5, a11
	l32i.n	a3, a2, 28
.LVL97:
	quou	a11, a11, a3
.LVL98:
	.loc 1 189 0
	l32i	a3, a2, 88
.LVL99:
	.loc 1 190 0
	extui	a11, a11, 0, 16
.LVL100:
	mov.n	a10, a2
	call8	spiffs_cache_page_get
.LVL101:
	mov.n	a4, a10
.LVL102:
	.loc 1 192 0
	beqz.n	a10, .L38
	movi.n	a8, 0x1c
	l32i.n	a9, sp, 0
	and	a8, a9, a8
	.loc 1 192 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x18
	beq	a8, a9, .L38
.LBB11:
	.loc 1 196 0 is_stmt 1
	bnez.n	a8, .L39
	.loc 1 196 0 is_stmt 0 discriminator 1
	l32i.n	a9, sp, 0
	extui	a8, a9, 0, 2
	beqz.n	a8, .L39
	.loc 1 199 0 is_stmt 1
	movi.n	a12, 0
	l8ui	a11, a10, 1
	mov.n	a10, a2
	call8	spiffs_cache_page_free
.LVL103:
	.loc 1 200 0
	l32i.n	a2, a2, 4
.LVL104:
	mov.n	a12, a7
	mov.n	a11, a6
	mov.n	a10, a5
	callx8	a2
.LVL105:
	mov.n	a2, a10
	retw.n
.LVL106:
.L39:
	.loc 1 203 0
	l32i.n	a10, a3, 16
	l8ui	a11, a4, 1
	l32i.n	a8, a2, 28
	addi	a9, a8, 20
	mull	a11, a11, a9
	addi	a11, a11, 20
.LVL107:
	.loc 1 204 0
	l32i.n	a9, a2, 16
	sub	a9, a5, a9
	remu	a8, a9, a8
	add.n	a8, a11, a8
	mov.n	a12, a6
	mov.n	a11, a7
.LVL108:
	add.n	a10, a10, a8
.LVL109:
	call8	memcpy
.LVL110:
	.loc 1 206 0
	l32i.n	a8, a3, 4
	addi.n	a8, a8, 1
	s32i.n	a8, a3, 4
	.loc 1 207 0
	s32i.n	a8, a4, 4
	.loc 1 209 0
	l8ui	a3, a4, 0
.LVL111:
	bbci	a3, 1, .L41
	.loc 1 211 0
	l32i.n	a2, a2, 4
.LVL112:
	mov.n	a12, a7
	mov.n	a11, a6
	mov.n	a10, a5
	callx8	a2
.LVL113:
	mov.n	a2, a10
	retw.n
.LVL114:
.L38:
.LBE11:
	.loc 1 217 0
	l32i.n	a2, a2, 4
.LVL115:
	mov.n	a12, a7
	mov.n	a11, a6
	mov.n	a10, a5
	callx8	a2
.LVL116:
	mov.n	a2, a10
	retw.n
.LVL117:
.L41:
.LBB12:
	.loc 1 213 0
	movi.n	a2, 0
.LVL118:
.LBE12:
	.loc 1 219 0
	retw.n
.LFE25:
	.size	spiffs_phys_wr, .-spiffs_phys_wr
	.section	.text.spiffs_cache_page_get_by_fd,"ax",@progbits
	.align	4
	.global	spiffs_cache_page_get_by_fd
	.type	spiffs_cache_page_get_by_fd, @function
spiffs_cache_page_get_by_fd:
.LFB26:
	.loc 1 223 0
.LVL119:
	entry	sp, 32
.LCFI7:
	.loc 1 224 0
	l32i	a10, a2, 88
.LVL120:
	.loc 1 226 0
	l32i.n	a12, a10, 8
	l32i.n	a8, a10, 12
	bnone	a12, a8, .L47
	movi.n	a9, 0
	j	.L44
.LVL121:
.L46:
.LBB13:
	.loc 1 233 0
	l32i.n	a11, a10, 16
	l32i.n	a8, a2, 28
	addi	a8, a8, 20
	mull	a8, a8, a9
	add.n	a8, a11, a8
.LVL122:
	.loc 1 234 0
	bbc	a12, a9, .L45
	.loc 1 235 0 discriminator 1
	l8ui	a11, a8, 0
	.loc 1 234 0 discriminator 1
	sext	a11, a11, 7
	bgez	a11, .L45
	.loc 1 236 0
	l16ui	a13, a8, 8
	l16ui	a11, a3, 6
	.loc 1 235 0
	beq	a13, a11, .L48
.L45:
.LBE13:
	.loc 1 232 0 discriminator 2
	addi.n	a9, a9, 1
.LVL123:
.L44:
	.loc 1 232 0 is_stmt 0 discriminator 1
	l8ui	a8, a10, 0
	blt	a9, a8, .L46
	.loc 1 241 0 is_stmt 1
	movi.n	a2, 0
.LVL124:
	retw.n
.LVL125:
.L47:
	.loc 1 228 0
	movi.n	a2, 0
.LVL126:
	retw.n
.LVL127:
.L48:
.LBB14:
	.loc 1 237 0
	mov.n	a2, a8
.LVL128:
.LBE14:
	.loc 1 242 0
	retw.n
.LFE26:
	.size	spiffs_cache_page_get_by_fd, .-spiffs_cache_page_get_by_fd
	.section	.text.spiffs_cache_page_allocate_by_fd,"ax",@progbits
	.align	4
	.global	spiffs_cache_page_allocate_by_fd
	.type	spiffs_cache_page_allocate_by_fd, @function
spiffs_cache_page_allocate_by_fd:
.LFB27:
	.loc 1 246 0
.LVL129:
	entry	sp, 32
.LCFI8:
	.loc 1 249 0
	movi.n	a12, 0
	movi	a11, 0x80
	mov.n	a10, a2
	call8	spiffs_cache_page_remove_oldest
.LVL130:
	.loc 1 250 0
	mov.n	a10, a2
	call8	spiffs_cache_page_allocate
.LVL131:
	.loc 1 251 0
	beqz.n	a10, .L51
	.loc 1 256 0
	movi	a2, -0x80
.LVL132:
	s8i	a2, a10, 0
	.loc 1 257 0
	l16ui	a2, a3, 6
	s16i	a2, a10, 8
	.loc 1 258 0
	s32i.n	a10, a3, 32
	.loc 1 259 0
	mov.n	a2, a10
	retw.n
.LVL133:
.L51:
	.loc 1 253 0
	movi.n	a2, 0
.LVL134:
	.loc 1 260 0
	retw.n
.LFE27:
	.size	spiffs_cache_page_allocate_by_fd, .-spiffs_cache_page_allocate_by_fd
	.section	.text.spiffs_cache_fd_release,"ax",@progbits
	.align	4
	.global	spiffs_cache_fd_release
	.type	spiffs_cache_fd_release, @function
spiffs_cache_fd_release:
.LFB28:
	.loc 1 263 0
.LVL135:
	entry	sp, 32
.LCFI9:
	.loc 1 264 0
	beqz.n	a3, .L52
	.loc 1 266 0
	l32i.n	a10, a2, 60
.LVL136:
	.loc 1 267 0
	movi.n	a9, 0
	j	.L54
.LVL137:
.L56:
.LBB15:
	.loc 1 268 0
	addx2	a11, a9, a9
	slli	a8, a11, 4
	add.n	a8, a10, a8
.LVL138:
	.loc 1 269 0
	l16si	a11, a8, 4
	beqz.n	a11, .L55
	.loc 1 269 0 is_stmt 0 discriminator 1
	l32i.n	a11, a8, 32
	bne	a3, a11, .L55
	.loc 1 270 0 is_stmt 1
	movi.n	a11, 0
	s32i.n	a11, a8, 32
.L55:
.LBE15:
	.loc 1 267 0 discriminator 2
	addi.n	a9, a9, 1
.LVL139:
.L54:
	.loc 1 267 0 is_stmt 0 discriminator 1
	l32i	a8, a2, 64
	bltu	a9, a8, .L56
	.loc 1 273 0 is_stmt 1
	movi.n	a12, 0
	l8ui	a11, a3, 1
	mov.n	a10, a2
.LVL140:
	call8	spiffs_cache_page_free
.LVL141:
	.loc 1 275 0
	movi.n	a2, 0
.LVL142:
	s16i	a2, a3, 8
.L52:
	retw.n
.LFE28:
	.size	spiffs_cache_fd_release, .-spiffs_cache_fd_release
	.section	.text.spiffs_cache_init,"ax",@progbits
	.align	4
	.global	spiffs_cache_init
	.type	spiffs_cache_init, @function
spiffs_cache_init:
.LFB29:
	.loc 1 281 0
.LVL143:
	entry	sp, 64
.LCFI10:
	.loc 1 282 0
	l32i	a10, a2, 88
	beqz.n	a10, .L57
	.loc 1 283 0
	l32i	a11, a2, 92
.LVL144:
	.loc 1 287 0
	addi	a3, a11, -20
	l32i.n	a11, a2, 28
.LVL145:
	addi	a11, a11, 20
	quou	a11, a3, a11
	.loc 1 286 0
	mov.n	a9, a11
.LVL146:
	.loc 1 288 0
	blti	a11, 1, .L57
	movi.n	a4, 0
	mov.n	a3, a4
	j	.L59
.LVL147:
.L60:
	.loc 1 291 0 discriminator 3
	slli	a3, a3, 1
.LVL148:
	.loc 1 292 0 discriminator 3
	movi.n	a8, 1
	or	a3, a3, a8
.LVL149:
	.loc 1 290 0 discriminator 3
	add.n	a4, a4, a8
.LVL150:
.L59:
	.loc 1 290 0 is_stmt 0 discriminator 1
	blt	a4, a9, .L60
	.loc 1 296 0 is_stmt 1
	movi.n	a4, 0
.LVL151:
	s32i.n	a4, sp, 0
	s32i.n	a4, sp, 4
	.loc 1 297 0
	s8i	a11, sp, 0
	.loc 1 298 0
	addi	a5, a10, 20
	s32i.n	a5, sp, 16
	.loc 1 300 0
	movi.n	a5, -1
	s32i.n	a5, sp, 8
	.loc 1 301 0
	s32i.n	a3, sp, 12
	.loc 1 302 0
	movi.n	a12, 0x14
	mov.n	a11, sp
	call8	memcpy
.LVL152:
	.loc 1 304 0
	l32i	a3, a2, 88
.LVL153:
	.loc 1 306 0
	l8ui	a12, a3, 0
	l32i.n	a8, a2, 28
	addi	a8, a8, 20
	mull	a12, a12, a8
	mov.n	a11, a4
	l32i.n	a10, a3, 16
	call8	memset
.LVL154:
	.loc 1 308 0
	l32i.n	a8, a3, 12
	xor	a8, a5, a8
	l32i.n	a5, a3, 8
	and	a8, a5, a8
	s32i.n	a8, a3, 8
.LVL155:
	.loc 1 309 0
	mov.n	a11, a4
	j	.L61
.LVL156:
.L62:
	.loc 1 310 0 discriminator 3
	l32i.n	a4, a3, 16
	l32i.n	a8, a2, 28
	addi	a8, a8, 20
	mull	a8, a8, a11
	add.n	a8, a4, a8
	s8i	a11, a8, 1
	.loc 1 309 0 discriminator 3
	addi.n	a11, a11, 1
.LVL157:
.L61:
	.loc 1 309 0 is_stmt 0 discriminator 1
	l8ui	a4, sp, 0
	blt	a11, a4, .L62
.LVL158:
.L57:
	retw.n
.LFE29:
	.size	spiffs_cache_init, .-spiffs_cache_init
	.comm	spiffs_mutex,4,4
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI0-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI1-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI2-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI3-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI4-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI5-.LFB24
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI6-.LFB25
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI7-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI8-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI9-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI10-.LFB29
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/queue.h"
	.file 3 "/home/raphael/rtone/lcd/components/spiffs/spiffs_config.h"
	.file 4 "/home/raphael/rtone/lcd/components/spiffs/spiffs.h"
	.file 5 "/home/raphael/rtone/lcd/components/spiffs/spiffs_nucleus.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xdb6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0xc
	.4byte	.LASF125
	.4byte	.LASF126
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x2
	.byte	0x58
	.4byte	0x5d
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x3
	.byte	0x1b
	.4byte	0x48
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x3
	.byte	0x1c
	.4byte	0x25
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x3
	.byte	0x1d
	.4byte	0x3a
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x3
	.byte	0x1e
	.4byte	0x41
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x3
	.byte	0x20
	.4byte	0x33
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x162
	.4byte	0xae
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x3
	.2byte	0x165
	.4byte	0xae
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x3
	.2byte	0x169
	.4byte	0xae
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x3
	.2byte	0x16d
	.4byte	0xae
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x4
	.byte	0x45
	.4byte	0xa3
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x4
	.byte	0x47
	.4byte	0xae
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x4
	.byte	0x5b
	.4byte	0x115
	.uleb128 0x7
	.byte	0x4
	.4byte	0x11b
	.uleb128 0x8
	.4byte	0x8d
	.4byte	0x134
	.uleb128 0x9
	.4byte	0x98
	.uleb128 0x9
	.4byte	0x98
	.uleb128 0x9
	.4byte	0x134
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xb9
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x4
	.byte	0x5d
	.4byte	0x115
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x4
	.byte	0x5f
	.4byte	0x150
	.uleb128 0x7
	.byte	0x4
	.4byte	0x156
	.uleb128 0x8
	.4byte	0x8d
	.4byte	0x16a
	.uleb128 0x9
	.4byte	0x98
	.uleb128 0x9
	.4byte	0x98
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x63
	.4byte	0x189
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0x4
	.byte	0x67
	.4byte	0x16a
	.uleb128 0xa
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x6a
	.4byte	0x1cb
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	.LASF38
	.byte	0x4
	.byte	0x72
	.4byte	0x194
	.uleb128 0x5
	.4byte	.LASF39
	.byte	0x4
	.byte	0x79
	.4byte	0x1e1
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1e7
	.uleb128 0xc
	.4byte	0x201
	.uleb128 0x9
	.4byte	0x189
	.uleb128 0x9
	.4byte	0x1cb
	.uleb128 0x9
	.4byte	0x98
	.uleb128 0x9
	.4byte	0x98
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x7e
	.4byte	0x220
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF43
	.byte	0x4
	.byte	0x85
	.4byte	0x201
	.uleb128 0x5
	.4byte	.LASF44
	.byte	0x4
	.byte	0x88
	.4byte	0x236
	.uleb128 0x7
	.byte	0x4
	.4byte	0x23c
	.uleb128 0xc
	.4byte	0x256
	.uleb128 0x9
	.4byte	0x256
	.uleb128 0x9
	.4byte	0x220
	.uleb128 0x9
	.4byte	0xdc
	.uleb128 0x9
	.4byte	0xd0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25c
	.uleb128 0xd
	.4byte	.LASF127
	.byte	0x74
	.byte	0x4
	.byte	0xe4
	.4byte	0x389
	.uleb128 0xe
	.string	"cfg"
	.byte	0x4
	.byte	0xe6
	.4byte	0x3f2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x4
	.byte	0xe8
	.4byte	0x98
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x4
	.byte	0xeb
	.4byte	0xc4
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x4
	.byte	0xed
	.4byte	0x48
	.byte	0x28
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x4
	.byte	0xef
	.4byte	0xc4
	.byte	0x2c
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x4
	.byte	0xf1
	.4byte	0x48
	.byte	0x30
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x4
	.byte	0xf4
	.4byte	0x134
	.byte	0x34
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x4
	.byte	0xf6
	.4byte	0x134
	.byte	0x38
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x4
	.byte	0xf8
	.4byte	0x134
	.byte	0x3c
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x4
	.byte	0xfa
	.4byte	0x98
	.byte	0x40
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x4
	.byte	0xfd
	.4byte	0x8d
	.byte	0x44
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x100
	.4byte	0x98
	.byte	0x48
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x4
	.2byte	0x102
	.4byte	0x98
	.byte	0x4c
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x104
	.4byte	0x98
	.byte	0x50
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x4
	.2byte	0x106
	.4byte	0xb9
	.byte	0x54
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x4
	.2byte	0x108
	.4byte	0xdc
	.byte	0x56
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x4
	.2byte	0x110
	.4byte	0x5d
	.byte	0x58
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x4
	.2byte	0x112
	.4byte	0x98
	.byte	0x5c
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x4
	.2byte	0x11a
	.4byte	0x1d6
	.byte	0x60
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x4
	.2byte	0x11c
	.4byte	0x22b
	.byte	0x64
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x4
	.2byte	0x11e
	.4byte	0xb9
	.byte	0x68
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x4
	.2byte	0x120
	.4byte	0x5d
	.byte	0x6c
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x122
	.4byte	0x98
	.byte	0x70
	.byte	0
	.uleb128 0x11
	.byte	0x20
	.byte	0x4
	.byte	0xc5
	.4byte	0x3f2
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x4
	.byte	0xc7
	.4byte	0x10a
	.byte	0
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x4
	.byte	0xc9
	.4byte	0x13a
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x4
	.byte	0xcb
	.4byte	0x145
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x4
	.byte	0xce
	.4byte	0x98
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x4
	.byte	0xd1
	.4byte	0x98
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0x4
	.byte	0xd3
	.4byte	0x98
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0x4
	.byte	0xd8
	.4byte	0x98
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0x4
	.byte	0xdb
	.4byte	0x98
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	.LASF75
	.byte	0x4
	.byte	0xe2
	.4byte	0x389
	.uleb128 0x6
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x123
	.4byte	0x25c
	.uleb128 0x7
	.byte	0x4
	.4byte	0x3fd
	.uleb128 0x12
	.byte	0xc
	.byte	0x4
	.2byte	0x144
	.4byte	0x44d
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x146
	.4byte	0x44d
	.byte	0
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x148
	.4byte	0x98
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x14a
	.4byte	0xe8
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x14c
	.4byte	0xe8
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xd0
	.uleb128 0x6
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x14d
	.4byte	0x40f
	.uleb128 0x12
	.byte	0x2
	.byte	0x5
	.2byte	0x181
	.4byte	0x476
	.uleb128 0x13
	.string	"pix"
	.byte	0x5
	.2byte	0x183
	.4byte	0xd0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0xc
	.byte	0x5
	.2byte	0x187
	.4byte	0x4a7
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x189
	.4byte	0xdc
	.byte	0
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x18b
	.4byte	0x98
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x18d
	.4byte	0xae
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.byte	0xc
	.byte	0x5
	.2byte	0x17f
	.4byte	0x4bb
	.uleb128 0x15
	.4byte	0x45f
	.uleb128 0x15
	.4byte	0x476
	.byte	0
	.uleb128 0x12
	.byte	0x14
	.byte	0x5
	.2byte	0x178
	.4byte	0x4f1
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x17a
	.4byte	0xb9
	.byte	0
	.uleb128 0x13
	.string	"ix"
	.byte	0x5
	.2byte	0x17c
	.4byte	0xb9
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x17e
	.4byte	0x98
	.byte	0x4
	.uleb128 0x16
	.4byte	0x4a7
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x191
	.4byte	0x4bb
	.uleb128 0x12
	.byte	0x14
	.byte	0x5
	.2byte	0x194
	.4byte	0x548
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x195
	.4byte	0xb9
	.byte	0
	.uleb128 0x10
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x196
	.4byte	0x98
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x197
	.4byte	0x98
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x198
	.4byte	0x98
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x199
	.4byte	0x134
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x19a
	.4byte	0x4fd
	.uleb128 0x12
	.byte	0x30
	.byte	0x5
	.2byte	0x1a0
	.4byte	0x613
	.uleb128 0x13
	.string	"fs"
	.byte	0x5
	.2byte	0x1a2
	.4byte	0x409
	.byte	0
	.uleb128 0x10
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x1a4
	.4byte	0xf4
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x1a6
	.4byte	0xdc
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x1a8
	.4byte	0x98
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x1aa
	.4byte	0xd0
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x1ac
	.4byte	0xd0
	.byte	0xe
	.uleb128 0x10
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x1ae
	.4byte	0xe8
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x1b0
	.4byte	0x98
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x1b2
	.4byte	0x98
	.byte	0x18
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x1b4
	.4byte	0xff
	.byte	0x1c
	.uleb128 0x10
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x1b6
	.4byte	0x613
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x1ba
	.4byte	0x98
	.byte	0x24
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x1bc
	.4byte	0xae
	.byte	0x28
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x1c0
	.4byte	0x619
	.byte	0x2c
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x4f1
	.uleb128 0x7
	.byte	0x4
	.4byte	0x453
	.uleb128 0x6
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x1c2
	.4byte	0x554
	.uleb128 0x17
	.4byte	.LASF102
	.byte	0x1
	.byte	0xe
	.4byte	0x613
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x692
	.uleb128 0x18
	.string	"fs"
	.byte	0x1
	.byte	0xe
	.4byte	0x409
	.4byte	.LLST0
	.uleb128 0x19
	.string	"pix"
	.byte	0x1
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF60
	.byte	0x1
	.byte	0xf
	.4byte	0x692
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x11
	.4byte	0x48
	.4byte	.LLST1
	.uleb128 0x1c
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x1b
	.string	"cp"
	.byte	0x1
	.byte	0x13
	.4byte	0x613
	.4byte	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x548
	.uleb128 0x17
	.4byte	.LASF103
	.byte	0x1
	.byte	0x21
	.4byte	0x8d
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x726
	.uleb128 0x18
	.string	"fs"
	.byte	0x1
	.byte	0x21
	.4byte	0x409
	.4byte	.LLST3
	.uleb128 0x18
	.string	"ix"
	.byte	0x1
	.byte	0x21
	.4byte	0x48
	.4byte	.LLST4
	.uleb128 0x1d
	.4byte	.LASF104
	.byte	0x1
	.byte	0x21
	.4byte	0xb9
	.4byte	.LLST5
	.uleb128 0x1b
	.string	"res"
	.byte	0x1
	.byte	0x22
	.4byte	0x8d
	.4byte	.LLST6
	.uleb128 0x1a
	.4byte	.LASF60
	.byte	0x1
	.byte	0x23
	.4byte	0x692
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1e
	.string	"cp"
	.byte	0x1
	.byte	0x24
	.4byte	0x613
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1c
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x1b
	.string	"mem"
	.byte	0x1
	.byte	0x29
	.4byte	0x134
	.4byte	.LLST7
	.uleb128 0x1f
	.4byte	.LVL19
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF105
	.byte	0x1
	.byte	0x3b
	.4byte	0x8d
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e2
	.uleb128 0x18
	.string	"fs"
	.byte	0x1
	.byte	0x3b
	.4byte	0x409
	.4byte	.LLST8
	.uleb128 0x20
	.4byte	.LASF106
	.byte	0x1
	.byte	0x3b
	.4byte	0xb9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF84
	.byte	0x1
	.byte	0x3b
	.4byte	0xb9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.string	"res"
	.byte	0x1
	.byte	0x3c
	.4byte	0x8d
	.4byte	.LLST9
	.uleb128 0x21
	.4byte	.LASF60
	.byte	0x1
	.byte	0x3d
	.4byte	0x692
	.4byte	.LLST10
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x45
	.4byte	0x48
	.4byte	.LLST11
	.uleb128 0x21
	.4byte	.LASF107
	.byte	0x1
	.byte	0x46
	.4byte	0x48
	.4byte	.LLST12
	.uleb128 0x21
	.4byte	.LASF108
	.byte	0x1
	.byte	0x47
	.4byte	0x98
	.4byte	.LLST13
	.uleb128 0x22
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x7cc
	.uleb128 0x1b
	.string	"cp"
	.byte	0x1
	.byte	0x49
	.4byte	0x613
	.4byte	.LLST14
	.byte	0
	.uleb128 0x23
	.4byte	.LVL39
	.4byte	0x698
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF109
	.byte	0x1
	.byte	0x59
	.4byte	0x613
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x83c
	.uleb128 0x18
	.string	"fs"
	.byte	0x1
	.byte	0x59
	.4byte	0x409
	.4byte	.LLST15
	.uleb128 0x1a
	.4byte	.LASF60
	.byte	0x1
	.byte	0x5a
	.4byte	0x692
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x5f
	.4byte	0x48
	.4byte	.LLST16
	.uleb128 0x1c
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1b
	.string	"cp"
	.byte	0x1
	.byte	0x62
	.4byte	0x613
	.4byte	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF116
	.byte	0x1
	.byte	0x6e
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ac
	.uleb128 0x19
	.string	"fs"
	.byte	0x1
	.byte	0x6e
	.4byte	0x409
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.string	"pix"
	.byte	0x1
	.byte	0x6e
	.4byte	0xd0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.string	"cp"
	.byte	0x1
	.byte	0x6f
	.4byte	0x613
	.4byte	.LLST18
	.uleb128 0x26
	.4byte	.LVL56
	.4byte	0x62b
	.4byte	0x896
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x23
	.4byte	.LVL58
	.4byte	0x698
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF112
	.byte	0x1
	.byte	0x78
	.4byte	0x8d
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa4a
	.uleb128 0x18
	.string	"fs"
	.byte	0x1
	.byte	0x79
	.4byte	0x409
	.4byte	.LLST19
	.uleb128 0x18
	.string	"op"
	.byte	0x1
	.byte	0x7a
	.4byte	0xb9
	.4byte	.LLST20
	.uleb128 0x18
	.string	"fh"
	.byte	0x1
	.byte	0x7b
	.4byte	0xf4
	.4byte	.LLST21
	.uleb128 0x1d
	.4byte	.LASF110
	.byte	0x1
	.byte	0x7c
	.4byte	0x98
	.4byte	.LLST22
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.byte	0x7d
	.4byte	0x98
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x19
	.string	"dst"
	.byte	0x1
	.byte	0x7e
	.4byte	0x134
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"res"
	.byte	0x1
	.byte	0x80
	.4byte	0x8d
	.4byte	.LLST23
	.uleb128 0x21
	.4byte	.LASF60
	.byte	0x1
	.byte	0x81
	.4byte	0x692
	.4byte	.LLST24
	.uleb128 0x1b
	.string	"cp"
	.byte	0x1
	.byte	0x82
	.4byte	0x613
	.4byte	.LLST25
	.uleb128 0x22
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x977
	.uleb128 0x1b
	.string	"mem"
	.byte	0x1
	.byte	0x8a
	.4byte	0x134
	.4byte	.LLST26
	.uleb128 0x23
	.4byte	.LVL70
	.4byte	0xda7
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0
	.4byte	0x9b5
	.uleb128 0x21
	.4byte	.LASF111
	.byte	0x1
	.byte	0x9d
	.4byte	0x8d
	.4byte	.LLST27
	.uleb128 0x1b
	.string	"mem"
	.byte	0x1
	.byte	0xa5
	.4byte	0x134
	.4byte	.LLST28
	.uleb128 0x23
	.4byte	.LVL92
	.4byte	0xda7
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x9e7
	.uleb128 0x1a
	.4byte	.LASF111
	.byte	0x1
	.byte	0xa9
	.4byte	0x8d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x29
	.4byte	.LVL95
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL62
	.4byte	0x62b
	.4byte	0x9fb
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL74
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.4byte	0xa1a
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL77
	.4byte	0x726
	.4byte	0xa39
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.4byte	.LVL80
	.4byte	0x7e2
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF113
	.byte	0x1
	.byte	0xb4
	.4byte	0x8d
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb94
	.uleb128 0x18
	.string	"fs"
	.byte	0x1
	.byte	0xb5
	.4byte	0x409
	.4byte	.LLST29
	.uleb128 0x18
	.string	"op"
	.byte	0x1
	.byte	0xb6
	.4byte	0xb9
	.4byte	.LLST30
	.uleb128 0x18
	.string	"fh"
	.byte	0x1
	.byte	0xb7
	.4byte	0xf4
	.4byte	.LLST31
	.uleb128 0x20
	.4byte	.LASF110
	.byte	0x1
	.byte	0xb8
	.4byte	0x98
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.byte	0xb9
	.4byte	0x98
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x19
	.string	"src"
	.byte	0x1
	.byte	0xba
	.4byte	0x134
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"pix"
	.byte	0x1
	.byte	0xbc
	.4byte	0xd0
	.4byte	.LLST32
	.uleb128 0x21
	.4byte	.LASF60
	.byte	0x1
	.byte	0xbd
	.4byte	0x692
	.4byte	.LLST33
	.uleb128 0x1e
	.string	"cp"
	.byte	0x1
	.byte	0xbe
	.4byte	0x613
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0xb64
	.uleb128 0x1b
	.string	"mem"
	.byte	0x1
	.byte	0xcb
	.4byte	0x134
	.4byte	.LLST34
	.uleb128 0x26
	.4byte	.LVL103
	.4byte	0x698
	.4byte	0xb0f
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL105
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.4byte	0xb2e
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL110
	.4byte	0xda7
	.4byte	0xb48
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL113
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL101
	.4byte	0x62b
	.4byte	0xb78
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL116
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF114
	.byte	0x1
	.byte	0xdf
	.4byte	0x613
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf6
	.uleb128 0x18
	.string	"fs"
	.byte	0x1
	.byte	0xdf
	.4byte	0x409
	.4byte	.LLST35
	.uleb128 0x19
	.string	"fd"
	.byte	0x1
	.byte	0xdf
	.4byte	0xbf6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF60
	.byte	0x1
	.byte	0xe0
	.4byte	0x692
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0xe7
	.4byte	0x48
	.4byte	.LLST36
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x1b
	.string	"cp"
	.byte	0x1
	.byte	0xe9
	.4byte	0x613
	.4byte	.LLST37
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x61f
	.uleb128 0x2b
	.4byte	.LASF115
	.byte	0x1
	.byte	0xf6
	.4byte	0x613
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc6b
	.uleb128 0x18
	.string	"fs"
	.byte	0x1
	.byte	0xf6
	.4byte	0x409
	.4byte	.LLST38
	.uleb128 0x19
	.string	"fd"
	.byte	0x1
	.byte	0xf6
	.4byte	0xbf6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"cp"
	.byte	0x1
	.byte	0xfa
	.4byte	0x613
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x26
	.4byte	.LVL130
	.4byte	0x726
	.4byte	0xc5a
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.4byte	.LVL131
	.4byte	0x7e2
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x107
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcef
	.uleb128 0x2e
	.string	"fs"
	.byte	0x1
	.2byte	0x107
	.4byte	0x409
	.4byte	.LLST39
	.uleb128 0x2f
	.string	"cp"
	.byte	0x1
	.2byte	0x107
	.4byte	0x613
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.2byte	0x109
	.4byte	0x98
	.4byte	.LLST40
	.uleb128 0x30
	.string	"fds"
	.byte	0x1
	.2byte	0x10a
	.4byte	0xbf6
	.4byte	.LLST41
	.uleb128 0x22
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0xcd9
	.uleb128 0x31
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x10c
	.4byte	0xbf6
	.4byte	.LLST42
	.byte	0
	.uleb128 0x23
	.4byte	.LVL141
	.4byte	0x698
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x119
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd96
	.uleb128 0x2f
	.string	"fs"
	.byte	0x1
	.2byte	0x119
	.4byte	0x409
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.string	"sz"
	.byte	0x1
	.2byte	0x11b
	.4byte	0x98
	.4byte	.LLST43
	.uleb128 0x31
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x11c
	.4byte	0x98
	.4byte	.LLST44
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.2byte	0x11d
	.4byte	0x48
	.4byte	.LLST45
	.uleb128 0x31
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x11e
	.4byte	0x48
	.4byte	.LLST46
	.uleb128 0x32
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x127
	.4byte	0x548
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.string	"c"
	.byte	0x1
	.2byte	0x130
	.4byte	0x692
	.4byte	.LLST47
	.uleb128 0x26
	.4byte	.LVL152
	.4byte	0xda7
	.4byte	0xd85
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x23
	.4byte	.LVL154
	.4byte	0xdb0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF128
	.byte	0x3
	.byte	0x22
	.4byte	0x82
	.uleb128 0x5
	.byte	0x3
	.4byte	spiffs_mutex
	.uleb128 0x34
	.4byte	.LASF122
	.4byte	.LASF122
	.uleb128 0x34
	.4byte	.LASF123
	.4byte	.LASF123
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL23
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
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL29
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL30
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LFE21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL31
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL41
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL32
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL43
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL32
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL43
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0xd
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x23
	.uleb128 0x14
	.byte	0x79
	.sleb128 0
	.byte	0x1e
	.byte	0x7d
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL45
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
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL59
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL59
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL64
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL61
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL59
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL67
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL89
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL60
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL84
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL93
	.4byte	.LFE24
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL71
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL93
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL62
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL81
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL93
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL83
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL87
	.4byte	.LVL90
	.2byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL96
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97
	.4byte	.LFE25
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL96
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL102
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL100
	.4byte	.LVL101-1
	.2byte	0x11
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 16
	.byte	0x6
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL99
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL114
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x13
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x23
	.uleb128 0x14
	.byte	0x74
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x14
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110-1
	.2byte	0x14
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x23
	.uleb128 0x14
	.byte	0x74
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x73
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x14
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL119
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL121
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL127
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL127
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL129
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
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL135
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL142
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LVL141-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL136
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL145
	.4byte	.LVL152-1
	.2byte	0x3
	.byte	0x72
	.sleb128 92
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL144
	.4byte	.LVL147
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL147
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL156
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL146
	.4byte	.LVL152-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL153
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0
	.4byte	0
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	0
	.4byte	0
	.4byte	.LFB19
	.4byte	.LFE19
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF65:
	.string	"user_data"
.LASF72:
	.string	"phys_erase_block"
.LASF76:
	.string	"spiffs"
.LASF34:
	.string	"SPIFFS_CHECK_FIX_LOOKUP"
.LASF93:
	.string	"objix_hdr_pix"
.LASF121:
	.string	"cache_entries"
.LASF38:
	.string	"spiffs_check_report"
.LASF30:
	.string	"spiffs_check_type"
.LASF6:
	.string	"long long unsigned int"
.LASF64:
	.string	"mounted"
.LASF110:
	.string	"addr"
.LASF13:
	.string	"s32_t"
.LASF12:
	.string	"QueueHandle_t"
.LASF26:
	.string	"spiffs_erase"
.LASF25:
	.string	"spiffs_write"
.LASF5:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF37:
	.string	"SPIFFS_CHECK_DELETE_BAD_FILE"
.LASF106:
	.string	"flag_mask"
.LASF79:
	.string	"start_spix"
.LASF7:
	.string	"long int"
.LASF111:
	.string	"res2"
.LASF122:
	.string	"memcpy"
.LASF27:
	.string	"SPIFFS_CHECK_LOOKUP"
.LASF44:
	.string	"spiffs_file_callback"
.LASF61:
	.string	"cache_size"
.LASF128:
	.string	"spiffs_mutex"
.LASF115:
	.string	"spiffs_cache_page_allocate_by_fd"
.LASF99:
	.string	"score"
.LASF101:
	.string	"spiffs_fd"
.LASF59:
	.string	"max_erase_count"
.LASF48:
	.string	"cursor_block_ix"
.LASF15:
	.string	"s16_t"
.LASF39:
	.string	"spiffs_check_callback"
.LASF42:
	.string	"SPIFFS_CB_DELETED"
.LASF68:
	.string	"hal_write_f"
.LASF53:
	.string	"fd_count"
.LASF41:
	.string	"SPIFFS_CB_UPDATED"
.LASF57:
	.string	"stats_p_deleted"
.LASF9:
	.string	"long unsigned int"
.LASF20:
	.string	"spiffs_obj_id"
.LASF19:
	.string	"spiffs_page_ix"
.LASF14:
	.string	"u32_t"
.LASF83:
	.string	"size"
.LASF4:
	.string	"short unsigned int"
.LASF92:
	.string	"file_nbr"
.LASF117:
	.string	"spiffs_cache_fd_release"
.LASF52:
	.string	"fd_space"
.LASF50:
	.string	"lu_work"
.LASF109:
	.string	"spiffs_cache_page_allocate"
.LASF113:
	.string	"spiffs_phys_wr"
.LASF47:
	.string	"free_cursor_obj_lu_entry"
.LASF29:
	.string	"SPIFFS_CHECK_PAGE"
.LASF119:
	.string	"spiffs_cache_init"
.LASF32:
	.string	"SPIFFS_CHECK_ERROR"
.LASF94:
	.string	"cursor_objix_pix"
.LASF120:
	.string	"cache_mask"
.LASF75:
	.string	"spiffs_config"
.LASF104:
	.string	"write_back"
.LASF89:
	.string	"cpage_use_mask"
.LASF63:
	.string	"file_cb_f"
.LASF116:
	.string	"spiffs_cache_drop_page"
.LASF108:
	.string	"oldest_val"
.LASF17:
	.string	"u8_t"
.LASF8:
	.string	"sizetype"
.LASF54:
	.string	"err_code"
.LASF18:
	.string	"spiffs_block_ix"
.LASF97:
	.string	"cache_page"
.LASF69:
	.string	"hal_erase_f"
.LASF56:
	.string	"stats_p_allocated"
.LASF98:
	.string	"name_hash"
.LASF127:
	.string	"spiffs_t"
.LASF45:
	.string	"block_count"
.LASF36:
	.string	"SPIFFS_CHECK_DELETE_PAGE"
.LASF74:
	.string	"log_page_size"
.LASF28:
	.string	"SPIFFS_CHECK_INDEX"
.LASF62:
	.string	"check_cb_f"
.LASF40:
	.string	"SPIFFS_CB_CREATED"
.LASF102:
	.string	"spiffs_cache_page_get"
.LASF88:
	.string	"cpage_use_map"
.LASF2:
	.string	"unsigned char"
.LASF100:
	.string	"ix_map"
.LASF124:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF3:
	.string	"short int"
.LASF87:
	.string	"cpage_count"
.LASF73:
	.string	"log_block_size"
.LASF58:
	.string	"cleaning"
.LASF70:
	.string	"phys_size"
.LASF126:
	.string	"/home/raphael/rtone/lcd/build/spiffs"
.LASF71:
	.string	"phys_addr"
.LASF86:
	.string	"spiffs_cache_page"
.LASF35:
	.string	"SPIFFS_CHECK_DELETE_ORPHANED_INDEX"
.LASF43:
	.string	"spiffs_fileop_type"
.LASF112:
	.string	"spiffs_phys_rd"
.LASF77:
	.string	"map_buf"
.LASF11:
	.string	"_Bool"
.LASF10:
	.string	"char"
.LASF0:
	.string	"unsigned int"
.LASF46:
	.string	"free_cursor_block_ix"
.LASF107:
	.string	"cand_ix"
.LASF49:
	.string	"cursor_obj_lu_entry"
.LASF81:
	.string	"spiffs_ix_map"
.LASF95:
	.string	"cursor_objix_spix"
.LASF78:
	.string	"offset"
.LASF55:
	.string	"free_blocks"
.LASF67:
	.string	"hal_read_f"
.LASF51:
	.string	"work"
.LASF114:
	.string	"spiffs_cache_page_get_by_fd"
.LASF105:
	.string	"spiffs_cache_page_remove_oldest"
.LASF96:
	.string	"fdoffset"
.LASF16:
	.string	"u16_t"
.LASF123:
	.string	"memset"
.LASF23:
	.string	"spiffs_flags"
.LASF66:
	.string	"config_magic"
.LASF21:
	.string	"spiffs_span_ix"
.LASF103:
	.string	"spiffs_cache_page_free"
.LASF84:
	.string	"flags"
.LASF24:
	.string	"spiffs_read"
.LASF125:
	.string	"/home/raphael/rtone/lcd/components/spiffs/spiffs_cache.c"
.LASF85:
	.string	"last_access"
.LASF33:
	.string	"SPIFFS_CHECK_FIX_INDEX"
.LASF91:
	.string	"spiffs_cache"
.LASF60:
	.string	"cache"
.LASF22:
	.string	"spiffs_file"
.LASF80:
	.string	"end_spix"
.LASF118:
	.string	"cur_fd"
.LASF82:
	.string	"obj_id"
.LASF31:
	.string	"SPIFFS_CHECK_PROGRESS"
.LASF90:
	.string	"cpages"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
