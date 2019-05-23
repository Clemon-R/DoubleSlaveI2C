	.file	"netdb.c"
	.text
.Ltext0:
	.section	.text.lwip_gethostbyname,"ax",@progbits
	.literal_position
	.literal .LC0, s_hostent$6748
	.literal .LC1, h_errno
	.literal .LC2, s_hostent_addr$6750
	.literal .LC3, s_phostent_addr$6751
	.literal .LC4, s_hostname$6752
	.literal .LC5, s_aliases$6749
	.align	4
	.global	lwip_gethostbyname
	.type	lwip_gethostbyname, @function
lwip_gethostbyname:
.LFB38:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/api/netdb.c"
	.loc 1 88 0
.LVL0:
	entry	sp, 64
.LCFI0:
	.loc 1 100 0
	movi.n	a12, 2
	mov.n	a11, sp
	mov.n	a10, a2
	call8	netconn_gethostbyname_addrtype
.LVL1:
	extui	a10, a10, 0, 8
.LVL2:
	.loc 1 101 0
	beqz.n	a10, .L2
	.loc 1 103 0
	movi	a3, 0xd2
	l32r	a2, .LC1
.LVL3:
	s32i.n	a3, a2, 0
	.loc 1 104 0
	movi.n	a2, 0
	retw.n
.LVL4:
.L2:
	.loc 1 108 0
	l32r	a4, .LC2
	movi.n	a6, 0x14
	mov.n	a12, a6
	mov.n	a11, sp
	mov.n	a10, a4
.LVL5:
	call8	memcpy
.LVL6:
	.loc 1 109 0
	l32r	a3, .LC3
	s32i.n	a4, a3, 0
	.loc 1 110 0
	movi.n	a4, 0
	s32i.n	a4, a3, 4
	.loc 1 111 0
	l32r	a5, .LC4
	movi	a12, 0x100
	mov.n	a11, a2
	mov.n	a10, a5
	call8	strncpy
.LVL7:
	.loc 1 112 0
	addmi	a2, a5, 0x100
.LVL8:
	s8i	a4, a2, 0
	.loc 1 113 0
	l32r	a2, .LC0
	s32i.n	a5, a2, 0
	.loc 1 114 0
	l32r	a5, .LC5
	s32i.n	a4, a5, 0
	.loc 1 115 0
	s32i.n	a5, a2, 4
	.loc 1 116 0
	movi.n	a4, 2
	s32i.n	a4, a2, 8
	.loc 1 117 0
	s32i.n	a6, a2, 12
	.loc 1 118 0
	s32i.n	a3, a2, 16
	.loc 1 143 0
	retw.n
.LFE38:
	.size	lwip_gethostbyname, .-lwip_gethostbyname
	.section	.text.lwip_gethostbyname_r,"ax",@progbits
	.align	4
	.global	lwip_gethostbyname_r
	.type	lwip_gethostbyname_r, @function
lwip_gethostbyname_r:
.LFB39:
	.loc 1 164 0
.LVL9:
	entry	sp, 64
.LCFI1:
	s32i.n	a7, sp, 20
	.loc 1 171 0
	bnez.n	a7, .L5
	.loc 1 173 0
	s32i.n	sp, sp, 20
.L5:
.LVL10:
	.loc 1 176 0
	bnez.n	a6, .L6
	.loc 1 178 0
	movi.n	a2, 0x16
.LVL11:
	l32i.n	a3, sp, 20
.LVL12:
	s32i.n	a2, a3, 0
	.loc 1 179 0
	movi.n	a2, -1
	retw.n
.LVL13:
.L6:
	.loc 1 182 0
	movi.n	a9, 0
	s32i.n	a9, a6, 0
	.loc 1 183 0
	movi.n	a7, 1
	mov.n	a8, a9
	moveqz	a8, a7, a2
	.loc 1 183 0
	movnez	a7, a9, a3
	or	a7, a7, a8
	.loc 1 183 0
	bne	a7, a9, .L8
	.loc 1 183 0 discriminator 1
	bne	a4, a9, .L9
.L8:
	.loc 1 185 0
	movi.n	a2, 0x16
.LVL14:
	l32i.n	a3, sp, 20
.LVL15:
	s32i.n	a2, a3, 0
	.loc 1 186 0
	movi.n	a2, -1
	retw.n
.LVL16:
.L9:
	.loc 1 189 0
	mov.n	a10, a2
	call8	strlen
.LVL17:
	mov.n	a7, a10
.LVL18:
	.loc 1 190 0
	addi	a8, a10, 36
	bgeu	a5, a8, .L10
	.loc 1 192 0
	movi.n	a2, 0x22
.LVL19:
	l32i.n	a3, sp, 20
.LVL20:
	s32i.n	a2, a3, 0
	.loc 1 193 0
	movi.n	a2, -1
	retw.n
.LVL21:
.L10:
	.loc 1 196 0
	addi.n	a4, a4, 3
.LVL22:
	movi.n	a5, -4
.LVL23:
	and	a4, a4, a5
.LVL24:
	.loc 1 197 0
	addi	a5, a4, 32
.LVL25:
	.loc 1 200 0
	addi.n	a8, a4, 8
	s32i.n	a8, sp, 16
	movi.n	a12, 2
	mov.n	a11, a8
	mov.n	a10, a2
	call8	netconn_gethostbyname_addrtype
.LVL26:
	extui	a10, a10, 0, 8
.LVL27:
	.loc 1 201 0
	beqz.n	a10, .L11
	.loc 1 203 0
	movi	a2, 0xd2
.LVL28:
	l32i.n	a3, sp, 20
.LVL29:
	s32i.n	a2, a3, 0
	.loc 1 204 0
	movi.n	a2, -1
	retw.n
.LVL30:
.L11:
	.loc 1 208 0
	mov.n	a12, a7
	mov.n	a11, a2
	mov.n	a10, a5
.LVL31:
	call8	memcpy
.LVL32:
	.loc 1 209 0
	add.n	a7, a5, a7
.LVL33:
	movi.n	a2, 0
.LVL34:
	s8i	a2, a7, 0
	.loc 1 212 0
	l32i.n	a2, sp, 16
	s32i.n	a2, a4, 0
	.loc 1 213 0
	movi.n	a2, 0
	s32i.n	a2, a4, 4
	.loc 1 214 0
	s32i.n	a2, a4, 28
	.loc 1 215 0
	s32i.n	a5, a3, 0
	.loc 1 216 0
	addi	a5, a4, 28
.LVL35:
	s32i.n	a5, a3, 4
	.loc 1 217 0
	movi.n	a5, 2
	s32i.n	a5, a3, 8
	.loc 1 218 0
	movi.n	a5, 0x14
	s32i.n	a5, a3, 12
	.loc 1 219 0
	s32i.n	a4, a3, 16
	.loc 1 222 0
	s32i.n	a3, a6, 0
.LVL36:
	.loc 1 226 0
	retw.n
.LFE39:
	.size	lwip_gethostbyname_r, .-lwip_gethostbyname_r
	.section	.text.lwip_freeaddrinfo,"ax",@progbits
	.align	4
	.global	lwip_freeaddrinfo
	.type	lwip_freeaddrinfo, @function
lwip_freeaddrinfo:
.LFB40:
	.loc 1 237 0
.LVL37:
	entry	sp, 32
.LCFI2:
	mov.n	a11, a2
	.loc 1 240 0
	j	.L14
.L15:
	.loc 1 241 0
	l32i.n	a2, a11, 28
.LVL38:
	.loc 1 242 0
	movi.n	a10, 0xc
	call8	memp_free
.LVL39:
	.loc 1 243 0
	mov.n	a11, a2
.LVL40:
.L14:
	.loc 1 240 0
	bnez.n	a11, .L15
	.loc 1 245 0
	retw.n
.LFE40:
	.size	lwip_freeaddrinfo, .-lwip_freeaddrinfo
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC10:
	.string	"namelen is too long"
	.align	4
.LC13:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/api/netdb.c"
	.align	4
.LC15:
	.string	"total_size <= NETDB_ELEM_SIZE: please report this!"
	.section	.text.lwip_getaddrinfo,"ax",@progbits
	.literal_position
	.literal .LC6, 65534
	.literal .LC7, 16777216
	.literal .LC8, 16777343
	.literal .LC9, -65536
	.literal .LC11, .LC10
	.literal .LC12, __func__$6790
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.align	4
	.global	lwip_getaddrinfo
	.type	lwip_getaddrinfo, @function
lwip_getaddrinfo:
.LFB41:
	.loc 1 271 0
.LVL41:
	entry	sp, 80
.LCFI3:
.LVL42:
	.loc 1 281 0
	beqz.n	a5, .L35
	.loc 1 284 0
	movi.n	a7, 0
	s32i.n	a7, a5, 0
	.loc 1 285 0
	movi.n	a6, 1
	mov.n	a8, a7
	moveqz	a8, a6, a2
	.loc 1 285 0
	movnez	a6, a7, a3
	.loc 1 285 0
	bany	a6, a8, .L36
	.loc 1 289 0
	beq	a4, a7, .L37
	.loc 1 290 0
	l32i.n	a6, a4, 4
.LVL43:
	.loc 1 291 0
	movi.n	a9, 1
	mov.n	a10, a7
	movnez	a10, a9, a6
	.loc 1 293 0
	addi	a8, a6, -2
	movnez	a7, a9, a8
	.loc 1 291 0
	bnone	a7, a10, .L18
	.loc 1 296 0
	bnei	a6, 10, .L38
	j	.L18
.LVL44:
.L37:
	.loc 1 302 0
	movi.n	a6, 0
.L18:
.LVL45:
	.loc 1 305 0
	beqz.n	a3, .L39
	.loc 1 308 0
	mov.n	a10, a3
	call8	atoi
.LVL46:
	mov.n	a3, a10
.LVL47:
	.loc 1 309 0
	addi.n	a7, a10, -1
	l32r	a8, .LC6
	bltu	a8, a7, .L40
	j	.L19
.LVL48:
.L39:
	.loc 1 276 0
	movi.n	a3, 0
.LVL49:
.L19:
	.loc 1 314 0
	beqz.n	a2, .L20
	.loc 1 316 0
	beqz.n	a4, .L21
	.loc 1 316 0 discriminator 1
	l32i.n	a7, a4, 0
	bbci	a7, 2, .L21
	.loc 1 318 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	ipaddr_aton
.LVL50:
	beqz.n	a10, .L41
	.loc 1 322 0
	l8ui	a7, sp, 16
	bnei	a7, 6, .L22
	.loc 1 322 0 is_stmt 0 discriminator 1
	beqi	a6, 2, .L42
.L22:
	.loc 1 322 0 discriminator 3
	bnez.n	a7, .L23
	.loc 1 323 0 is_stmt 1
	bnei	a6, 10, .L23
	j	.L43
.L21:
.LVL51:
.LBB2:
	.loc 1 331 0
	beqi	a6, 2, .L44
	.loc 1 333 0
	bnei	a6, 10, .L45
.LVL52:
	.loc 1 336 0
	l32i.n	a7, a4, 0
	bbsi	a7, 4, .L46
	.loc 1 334 0
	movi.n	a12, 1
	j	.L24
.LVL53:
.L44:
	.loc 1 332 0
	movi.n	a12, 0
	j	.L24
.L45:
	.loc 1 330 0
	movi.n	a12, 2
	j	.L24
.LVL54:
.L46:
	.loc 1 337 0
	movi.n	a12, 3
.LVL55:
.L24:
	.loc 1 342 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	netconn_gethostbyname_addrtype
.LVL56:
	extui	a10, a10, 0, 8
.LVL57:
	.loc 1 343 0
	bnez.n	a10, .L47
	j	.L23
.LVL58:
.L20:
.LBE2:
	.loc 1 349 0
	beqz.n	a4, .L25
	.loc 1 349 0 discriminator 1
	l32i.n	a7, a4, 0
	bbci	a7, 0, .L25
	.loc 1 350 0
	bnei	a6, 10, .L26
	.loc 1 350 0 is_stmt 0 discriminator 1
	movi.n	a7, 0
	s32i.n	a7, sp, 0
	s32i.n	a7, sp, 4
	s32i.n	a7, sp, 8
	s32i.n	a7, sp, 12
	.loc 1 350 0 is_stmt 1 discriminator 1
	movi.n	a7, 6
	s8i	a7, sp, 16
	j	.L23
.L26:
	.loc 1 350 0 is_stmt 0 discriminator 2
	movi.n	a7, 0
	s32i.n	a7, sp, 0
	.loc 1 350 0 is_stmt 1 discriminator 2
	s8i	a7, sp, 16
	j	.L23
.L25:
	.loc 1 352 0
	bnei	a6, 10, .L27
	.loc 1 352 0 is_stmt 0 discriminator 1
	movi.n	a7, 0
	s32i.n	a7, sp, 0
	s32i.n	a7, sp, 4
	s32i.n	a7, sp, 8
	l32r	a7, .LC7
	s32i.n	a7, sp, 12
	.loc 1 352 0 is_stmt 1 discriminator 1
	movi.n	a7, 6
	s8i	a7, sp, 16
	j	.L23
.L27:
	.loc 1 352 0 is_stmt 0 discriminator 2
	l32r	a7, .LC8
	s32i.n	a7, sp, 0
	.loc 1 352 0 is_stmt 1 discriminator 2
	movi.n	a7, 0
	s8i	a7, sp, 16
.L23:
	.loc 1 358 0
	bnei	a6, 10, .L28
	.loc 1 358 0 is_stmt 0 discriminator 1
	l32i.n	a6, a4, 0
.LVL59:
	bbci	a6, 4, .L28
	.loc 1 359 0 is_stmt 1
	l8ui	a6, sp, 16
	bnez.n	a6, .L28
	.loc 1 361 0
	l32i.n	a6, sp, 0
	s32i.n	a6, sp, 12
	l32r	a6, .LC9
	s32i.n	a6, sp, 8
	movi.n	a6, 0
	s32i.n	a6, sp, 4
	s32i.n	a6, sp, 0
.L28:
.LVL60:
	.loc 1 367 0
	beqz.n	a2, .L48
	.loc 1 368 0
	mov.n	a10, a2
	call8	strlen
.LVL61:
	mov.n	a7, a10
.LVL62:
	.loc 1 369 0
	movi	a6, 0x100
	bltu	a6, a10, .L49
	.loc 1 373 0
	addi	a6, a10, 61
	s32i.n	a6, sp, 32
	movi.n	a6, 0x3c
	l32i.n	a8, sp, 32
	bltu	a6, a8, .L29
	.loc 1 373 0 is_stmt 0 discriminator 1
	l32r	a13, .LC11
	l32r	a12, .LC12
	movi	a11, 0x175
	l32r	a10, .LC14
	call8	__assert_func
.LVL63:
.L48:
	.loc 1 278 0 is_stmt 1
	movi.n	a7, 0
	.loc 1 366 0
	movi.n	a6, 0x3c
	s32i.n	a6, sp, 32
.LVL64:
.L29:
	.loc 1 377 0
	movi	a6, 0x13d
	l32i.n	a8, sp, 32
	bgeu	a6, a8, .L30
	.loc 1 377 0 is_stmt 0 discriminator 1
	l32r	a13, .LC16
	l32r	a12, .LC12
	movi	a11, 0x17a
	l32r	a10, .LC14
	call8	__assert_func
.LVL65:
.L30:
	.loc 1 379 0 is_stmt 1
	movi.n	a10, 0xc
	call8	memp_malloc
.LVL66:
	mov.n	a6, a10
.LVL67:
	.loc 1 380 0
	beqz.n	a10, .L50
	.loc 1 383 0
	l32i.n	a12, sp, 32
	movi.n	a11, 0
	call8	memset
.LVL68:
	.loc 1 385 0
	addi	a8, a6, 32
	s32i.n	a8, sp, 32
.LVL69:
	.loc 1 386 0
	l8ui	a8, sp, 16
.LVL70:
	bnei	a8, 6, .L31
.LVL71:
.LBB3:
	.loc 1 390 0
	l32i.n	a8, sp, 0
	s32i.n	a8, a6, 40
	l32i.n	a8, sp, 4
	s32i.n	a8, a6, 44
	l32i.n	a8, sp, 8
	s32i.n	a8, a6, 48
	l32i.n	a8, sp, 12
	s32i.n	a8, a6, 52
	.loc 1 391 0
	movi.n	a8, 0xa
	s8i	a8, a6, 33
	.loc 1 392 0
	movi.n	a8, 0x1c
	s8i	a8, a6, 32
	.loc 1 393 0
	extui	a10, a3, 0, 16
	call8	lwip_htons
.LVL72:
	s16i	a10, a6, 34
	.loc 1 394 0
	movi.n	a3, 0xa
.LVL73:
	s32i.n	a3, a6, 4
.LBE3:
	j	.L32
.LVL74:
.L31:
.LBB4:
	.loc 1 400 0
	l32i.n	a8, sp, 0
	s32i.n	a8, a6, 36
	.loc 1 401 0
	movi.n	a8, 2
	s8i	a8, a6, 33
	.loc 1 402 0
	movi.n	a8, 0x10
	s8i	a8, a6, 32
	.loc 1 403 0
	extui	a10, a3, 0, 16
	call8	lwip_htons
.LVL75:
	s16i	a10, a6, 34
	.loc 1 404 0
	movi.n	a3, 2
.LVL76:
	s32i.n	a3, a6, 4
.LVL77:
.L32:
.LBE4:
	.loc 1 409 0
	beqz.n	a4, .L33
	.loc 1 411 0
	l32i.n	a3, a4, 8
	s32i.n	a3, a6, 8
	.loc 1 412 0
	l32i.n	a3, a4, 12
	s32i.n	a3, a6, 12
.L33:
	.loc 1 414 0
	beqz.n	a2, .L34
	.loc 1 416 0
	addi	a3, a6, 60
	s32i.n	a3, a6, 24
	.loc 1 417 0
	mov.n	a12, a7
	mov.n	a11, a2
	mov.n	a10, a3
	call8	memcpy
.LVL78:
	.loc 1 418 0
	add.n	a7, a3, a7
.LVL79:
	movi.n	a2, 0
.LVL80:
	s8i	a2, a7, 0
.L34:
	.loc 1 420 0
	movi.n	a2, 0x1c
	s32i.n	a2, a6, 16
	.loc 1 421 0
	l32i.n	a2, sp, 32
	s32i.n	a2, a6, 20
	.loc 1 423 0
	s32i.n	a6, a5, 0
	.loc 1 425 0
	movi.n	a2, 0
	retw.n
.LVL81:
.L35:
	.loc 1 282 0
	movi	a2, 0xca
.LVL82:
	retw.n
.LVL83:
.L36:
	.loc 1 286 0
	movi	a2, 0xc8
.LVL84:
	retw.n
.LVL85:
.L38:
	.loc 1 299 0
	movi	a2, 0xcc
.LVL86:
	retw.n
.LVL87:
.L40:
	.loc 1 310 0
	movi	a2, 0xc9
.LVL88:
	retw.n
.LVL89:
.L41:
	.loc 1 319 0
	movi	a2, 0xc8
.LVL90:
	retw.n
.LVL91:
.L42:
	.loc 1 324 0
	movi	a2, 0xc8
.LVL92:
	retw.n
.LVL93:
.L43:
	movi	a2, 0xc8
.LVL94:
	retw.n
.LVL95:
.L47:
.LBB5:
	.loc 1 344 0
	movi	a2, 0xca
.LVL96:
	retw.n
.LVL97:
.L49:
.LBE5:
	.loc 1 371 0
	movi	a2, 0xca
.LVL98:
	retw.n
.LVL99:
.L50:
	.loc 1 381 0
	movi	a2, 0xcb
.LVL100:
	.loc 1 426 0
	retw.n
.LFE41:
	.size	lwip_getaddrinfo, .-lwip_getaddrinfo
	.section	.rodata.__func__$6790,"a",@progbits
	.align	4
	.type	__func__$6790, @object
	.size	__func__$6790, 17
__func__$6790:
	.string	"lwip_getaddrinfo"
	.section	.bss.s_aliases$6749,"aw",@nobits
	.align	4
	.type	s_aliases$6749, @object
	.size	s_aliases$6749, 4
s_aliases$6749:
	.zero	4
	.section	.bss.s_hostent$6748,"aw",@nobits
	.align	4
	.type	s_hostent$6748, @object
	.size	s_hostent$6748, 20
s_hostent$6748:
	.zero	20
	.section	.bss.s_hostname$6752,"aw",@nobits
	.align	4
	.type	s_hostname$6752, @object
	.size	s_hostname$6752, 257
s_hostname$6752:
	.zero	257
	.section	.bss.s_phostent_addr$6751,"aw",@nobits
	.align	4
	.type	s_phostent_addr$6751, @object
	.size	s_phostent_addr$6751, 8
s_phostent_addr$6751:
	.zero	8
	.section	.bss.s_hostent_addr$6750,"aw",@nobits
	.align	4
	.type	s_hostent_addr$6750, @object
	.size	s_hostent_addr$6750, 20
s_hostent_addr$6750:
	.zero	20
	.comm	h_errno,4,4
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
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI0-.LFB38
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI1-.LFB39
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI2-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI3-.LFB41
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/port/esp32/include/arch/cc.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/inet.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/err.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/netdb.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/memp.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/api.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/string.h"
	.file 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/def.h"
	.file 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.file 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb60
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0xc
	.4byte	.LASF156
	.4byte	.LASF157
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF2
	.byte	0x2
	.byte	0xd8
	.4byte	0x30
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
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0x11
	.4byte	0x50
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x3
	.byte	0x12
	.4byte	0x62
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x15
	.4byte	0x74
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0x16
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x3
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0xba
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc7
	.uleb128 0x6
	.4byte	0xba
	.uleb128 0x7
	.4byte	0xba
	.4byte	0xdc
	.uleb128 0x8
	.4byte	0xa6
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x14
	.4byte	0x45
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x4
	.byte	0x15
	.4byte	0x57
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0x20
	.4byte	0x69
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x4
	.byte	0x21
	.4byte	0x7b
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2d
	.4byte	0x86
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF22
	.uleb128 0x7
	.4byte	0x108
	.4byte	0x12a
	.uleb128 0x8
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	0xe7
	.4byte	0x13a
	.uleb128 0x8
	.4byte	0xa6
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x5
	.byte	0x35
	.4byte	0xad
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x4
	.byte	0x6
	.byte	0x33
	.4byte	0x15e
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x6
	.byte	0x34
	.4byte	0x108
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x6
	.byte	0x39
	.4byte	0x145
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x10
	.byte	0x7
	.byte	0x3a
	.4byte	0x182
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x7
	.byte	0x3b
	.4byte	0x182
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x108
	.4byte	0x192
	.uleb128 0x8
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x7
	.byte	0x3f
	.4byte	0x169
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0x4
	.4byte	0x30
	.byte	0x8
	.byte	0x36
	.4byte	0x1c0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x2e
	.byte	0
	.uleb128 0xd
	.byte	0x10
	.byte	0x8
	.byte	0x46
	.4byte	0x1df
	.uleb128 0xe
	.string	"ip6"
	.byte	0x8
	.byte	0x47
	.4byte	0x192
	.uleb128 0xe
	.string	"ip4"
	.byte	0x8
	.byte	0x48
	.4byte	0x15e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x14
	.byte	0x8
	.byte	0x45
	.4byte	0x204
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x8
	.byte	0x49
	.4byte	0x1c0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x8
	.byte	0x4b
	.4byte	0xe7
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x8
	.byte	0x4c
	.4byte	0x1df
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x9
	.byte	0x37
	.4byte	0x108
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x4
	.byte	0x9
	.byte	0x3a
	.4byte	0x233
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x9
	.byte	0x3b
	.4byte	0x20f
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x10
	.byte	0x9
	.byte	0x3f
	.4byte	0x252
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x9
	.byte	0x40
	.4byte	0x182
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x9
	.byte	0x41
	.4byte	0x12a
	.byte	0
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x10
	.byte	0x9
	.byte	0x3e
	.4byte	0x26a
	.uleb128 0x10
	.string	"un"
	.byte	0x9
	.byte	0x42
	.4byte	0x233
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0xa
	.byte	0x39
	.4byte	0xdc
	.uleb128 0x11
	.byte	0x4
	.4byte	0x3e
	.byte	0xa
	.byte	0x3d
	.4byte	0x2e8
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0
	.uleb128 0x12
	.4byte	.LASF44
	.sleb128 -1
	.uleb128 0x12
	.4byte	.LASF45
	.sleb128 -2
	.uleb128 0x12
	.4byte	.LASF46
	.sleb128 -3
	.uleb128 0x12
	.4byte	.LASF47
	.sleb128 -4
	.uleb128 0x12
	.4byte	.LASF48
	.sleb128 -5
	.uleb128 0x12
	.4byte	.LASF49
	.sleb128 -6
	.uleb128 0x12
	.4byte	.LASF50
	.sleb128 -7
	.uleb128 0x12
	.4byte	.LASF51
	.sleb128 -8
	.uleb128 0x12
	.4byte	.LASF52
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF53
	.sleb128 -10
	.uleb128 0x12
	.4byte	.LASF54
	.sleb128 -11
	.uleb128 0x12
	.4byte	.LASF55
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF56
	.sleb128 -13
	.uleb128 0x12
	.4byte	.LASF57
	.sleb128 -14
	.uleb128 0x12
	.4byte	.LASF58
	.sleb128 -15
	.uleb128 0x12
	.4byte	.LASF59
	.sleb128 -16
	.byte	0
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0xb
	.byte	0x3a
	.4byte	0xe7
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0xb
	.byte	0x3f
	.4byte	0xfd
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x10
	.byte	0xb
	.byte	0x44
	.4byte	0x347
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0xb
	.byte	0x45
	.4byte	0xe7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0xb
	.byte	0x46
	.4byte	0x2e8
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0xb
	.byte	0x47
	.4byte	0x2f3
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0xb
	.byte	0x48
	.4byte	0x21a
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0xb
	.byte	0x4a
	.4byte	0xcc
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x1c
	.byte	0xb
	.byte	0x4f
	.4byte	0x39c
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0xb
	.byte	0x50
	.4byte	0xe7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0xb
	.byte	0x51
	.4byte	0x2e8
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0xb
	.byte	0x52
	.4byte	0x2f3
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0xb
	.byte	0x53
	.4byte	0x108
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0xb
	.byte	0x54
	.4byte	0x252
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0xb
	.byte	0x55
	.4byte	0x108
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x10
	.byte	0xb
	.byte	0x59
	.4byte	0x3cd
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0xb
	.byte	0x5a
	.4byte	0xe7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0xb
	.byte	0x5b
	.4byte	0x2e8
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0xb
	.byte	0x5c
	.4byte	0x3cd
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	0xba
	.4byte	0x3dd
	.uleb128 0x8
	.4byte	0xa6
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x1c
	.byte	0xb
	.byte	0x5f
	.4byte	0x426
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0xb
	.byte	0x60
	.4byte	0xe7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0xb
	.byte	0x61
	.4byte	0x2e8
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0xb
	.byte	0x62
	.4byte	0x426
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0xb
	.byte	0x63
	.4byte	0x11a
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0xb
	.byte	0x65
	.4byte	0x11a
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0xba
	.4byte	0x436
	.uleb128 0x8
	.4byte	0xa6
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0xb
	.byte	0x6c
	.4byte	0x108
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x14
	.byte	0xc
	.byte	0x5c
	.4byte	0x48a
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0xc
	.byte	0x5d
	.4byte	0xb4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0xc
	.byte	0x5e
	.4byte	0x48a
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0xc
	.byte	0x60
	.4byte	0x3e
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0xc
	.byte	0x61
	.4byte	0x3e
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0xc
	.byte	0x62
	.4byte	0x48a
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb4
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x20
	.byte	0xc
	.byte	0x67
	.4byte	0x4fd
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0xc
	.byte	0x68
	.4byte	0x3e
	.byte	0
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0xc
	.byte	0x69
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF95
	.byte	0xc
	.byte	0x6a
	.4byte	0x3e
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF96
	.byte	0xc
	.byte	0x6b
	.4byte	0x3e
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF97
	.byte	0xc
	.byte	0x6c
	.4byte	0x436
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF98
	.byte	0xc
	.byte	0x6d
	.4byte	0x4fd
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF99
	.byte	0xc
	.byte	0x6e
	.4byte	0xb4
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF100
	.byte	0xc
	.byte	0x6f
	.4byte	0x503
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x39c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x490
	.uleb128 0x11
	.byte	0x4
	.4byte	0x30
	.byte	0xd
	.byte	0x34
	.4byte	0x588
	.uleb128 0xc
	.4byte	.LASF101
	.byte	0
	.uleb128 0xc
	.4byte	.LASF102
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF103
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF104
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF105
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF107
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF108
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF109
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF110
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF111
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF112
	.byte	0xb
	.uleb128 0xc
	.4byte	.LASF113
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF114
	.byte	0xd
	.uleb128 0xc
	.4byte	.LASF115
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0xf
	.uleb128 0xc
	.4byte	.LASF117
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF118
	.byte	0x11
	.uleb128 0xc
	.4byte	.LASF119
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x20
	.byte	0x1
	.byte	0x35
	.4byte	0x5b9
	.uleb128 0xa
	.4byte	.LASF121
	.byte	0x1
	.byte	0x36
	.4byte	0x5b9
	.byte	0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x37
	.4byte	0x204
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF122
	.byte	0x1
	.byte	0x38
	.4byte	0xb4
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.4byte	0x5c9
	.4byte	0x5c9
	.uleb128 0x8
	.4byte	0xa6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x204
	.uleb128 0x13
	.4byte	.LASF128
	.byte	0x1
	.byte	0x57
	.4byte	0x6c6
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c6
	.uleb128 0x14
	.4byte	.LASF130
	.byte	0x1
	.byte	0x57
	.4byte	0xc1
	.4byte	.LLST0
	.uleb128 0x15
	.string	"err"
	.byte	0x1
	.byte	0x59
	.4byte	0x26a
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	.LASF27
	.byte	0x1
	.byte	0x5a
	.4byte	0x204
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.4byte	.LASF123
	.byte	0x1
	.byte	0x5d
	.4byte	0x441
	.uleb128 0x5
	.byte	0x3
	.4byte	s_hostent$6748
	.uleb128 0x16
	.4byte	.LASF124
	.byte	0x1
	.byte	0x5e
	.4byte	0xb4
	.uleb128 0x5
	.byte	0x3
	.4byte	s_aliases$6749
	.uleb128 0x16
	.4byte	.LASF125
	.byte	0x1
	.byte	0x5f
	.4byte	0x204
	.uleb128 0x5
	.byte	0x3
	.4byte	s_hostent_addr$6750
	.uleb128 0x16
	.4byte	.LASF126
	.byte	0x1
	.byte	0x60
	.4byte	0x5b9
	.uleb128 0x5
	.byte	0x3
	.4byte	s_phostent_addr$6751
	.uleb128 0x16
	.4byte	.LASF127
	.byte	0x1
	.byte	0x61
	.4byte	0x6cc
	.uleb128 0x5
	.byte	0x3
	.4byte	s_hostname$6752
	.uleb128 0x17
	.4byte	.LVL1
	.4byte	0xaed
	.4byte	0x688
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x17
	.4byte	.LVL6
	.4byte	0xaf9
	.4byte	0x6a8
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL7
	.4byte	0xb02
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x441
	.uleb128 0x7
	.4byte	0xba
	.4byte	0x6dd
	.uleb128 0x1a
	.4byte	0xa6
	.2byte	0x100
	.byte	0
	.uleb128 0x13
	.4byte	.LASF129
	.byte	0x1
	.byte	0xa2
	.4byte	0x3e
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e5
	.uleb128 0x14
	.4byte	.LASF130
	.byte	0x1
	.byte	0xa2
	.4byte	0xc1
	.4byte	.LLST2
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0xa2
	.4byte	0x6c6
	.4byte	.LLST3
	.uleb128 0x1b
	.string	"buf"
	.byte	0x1
	.byte	0xa2
	.4byte	0xb4
	.4byte	.LLST4
	.uleb128 0x14
	.4byte	.LASF131
	.byte	0x1
	.byte	0xa3
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0x1
	.byte	0xa3
	.4byte	0x7e5
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x14
	.4byte	.LASF133
	.byte	0x1
	.byte	0xa3
	.4byte	0x7eb
	.4byte	.LLST6
	.uleb128 0x15
	.string	"err"
	.byte	0x1
	.byte	0xa5
	.4byte	0x26a
	.4byte	.LLST7
	.uleb128 0x1d
	.string	"h"
	.byte	0x1
	.byte	0xa6
	.4byte	0x7f1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LASF134
	.byte	0x1
	.byte	0xa7
	.4byte	0xb4
	.4byte	.LLST8
	.uleb128 0x1e
	.4byte	.LASF135
	.byte	0x1
	.byte	0xa8
	.4byte	0x25
	.4byte	.LLST9
	.uleb128 0x16
	.4byte	.LASF136
	.byte	0x1
	.byte	0xa9
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.4byte	.LVL17
	.4byte	0xb0d
	.4byte	0x7a8
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL26
	.4byte	0xaed
	.4byte	0x7c8
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x19
	.4byte	.LVL32
	.4byte	0xaf9
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6c6
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x588
	.uleb128 0x1f
	.4byte	.LASF159
	.byte	0x1
	.byte	0xec
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x839
	.uleb128 0x1b
	.string	"ai"
	.byte	0x1
	.byte	0xec
	.4byte	0x503
	.4byte	.LLST10
	.uleb128 0x1e
	.4byte	.LASF137
	.byte	0x1
	.byte	0xee
	.4byte	0x503
	.4byte	.LLST11
	.uleb128 0x19
	.4byte	.LVL39
	.4byte	0xb18
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x10d
	.4byte	0x3e
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa4
	.uleb128 0x21
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x10d
	.4byte	0xc1
	.4byte	.LLST12
	.uleb128 0x21
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x10d
	.4byte	0xc1
	.4byte	.LLST13
	.uleb128 0x22
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x10e
	.4byte	0xaa4
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.string	"res"
	.byte	0x1
	.2byte	0x10e
	.4byte	0xaaf
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x24
	.string	"err"
	.byte	0x1
	.2byte	0x110
	.4byte	0x26a
	.4byte	.LLST14
	.uleb128 0x25
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x111
	.4byte	0x204
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.string	"ai"
	.byte	0x1
	.2byte	0x112
	.4byte	0x503
	.4byte	.LLST15
	.uleb128 0x24
	.string	"sa"
	.byte	0x1
	.2byte	0x113
	.4byte	0xab5
	.4byte	.LLST16
	.uleb128 0x26
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x114
	.4byte	0x3e
	.4byte	.LLST17
	.uleb128 0x26
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x115
	.4byte	0x25
	.4byte	.LLST18
	.uleb128 0x26
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x116
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x26
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x117
	.4byte	0x3e
	.4byte	.LLST20
	.uleb128 0x27
	.4byte	.LASF160
	.4byte	0xacb
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6790
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0
	.4byte	0x94d
	.uleb128 0x26
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x14a
	.4byte	0xe7
	.4byte	.LLST21
	.uleb128 0x19
	.4byte	.LVL56
	.4byte	0xaed
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x97f
	.uleb128 0x24
	.string	"sa6"
	.byte	0x1
	.2byte	0x184
	.4byte	0xad0
	.4byte	.LLST22
	.uleb128 0x19
	.4byte	.LVL72
	.4byte	0xb23
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x9b1
	.uleb128 0x24
	.string	"sa4"
	.byte	0x1
	.2byte	0x18e
	.4byte	0xad6
	.4byte	.LLST23
	.uleb128 0x19
	.4byte	.LVL75
	.4byte	0xb23
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL46
	.4byte	0xb2e
	.4byte	0x9c5
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL50
	.4byte	0xb39
	.4byte	0x9e0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x17
	.4byte	.LVL61
	.4byte	0xb0d
	.4byte	0x9f4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL63
	.4byte	0xb44
	.4byte	0xa24
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x175
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6790
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x17
	.4byte	.LVL65
	.4byte	0xb44
	.4byte	0xa54
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x17a
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6790
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x17
	.4byte	.LVL66
	.4byte	0xb4f
	.4byte	0xa67
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x17
	.4byte	.LVL68
	.4byte	0xb5a
	.4byte	0xa87
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.4byte	.LVL78
	.4byte	0xaf9
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xaaa
	.uleb128 0x6
	.4byte	0x490
	.uleb128 0x5
	.byte	0x4
	.4byte	0x503
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3dd
	.uleb128 0x7
	.4byte	0xba
	.4byte	0xacb
	.uleb128 0x8
	.4byte	0xa6
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	0xabb
	.uleb128 0x5
	.byte	0x4
	.4byte	0x347
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2fe
	.uleb128 0x2a
	.4byte	.LASF161
	.byte	0x1
	.byte	0x3d
	.4byte	0x3e
	.uleb128 0x5
	.byte	0x3
	.4byte	h_errno
	.uleb128 0x2b
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0xe
	.2byte	0x156
	.uleb128 0x2c
	.4byte	.LASF153
	.4byte	.LASF153
	.uleb128 0x2d
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xf
	.byte	0x24
	.uleb128 0x2d
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xf
	.byte	0x21
	.uleb128 0x2d
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xd
	.byte	0x95
	.uleb128 0x2d
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x10
	.byte	0x55
	.uleb128 0x2d
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x11
	.byte	0x4e
	.uleb128 0x2d
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x8
	.byte	0xe0
	.uleb128 0x2d
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0x12
	.byte	0x29
	.uleb128 0x2d
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0xd
	.byte	0x93
	.uleb128 0x2c
	.4byte	.LASF154
	.4byte	.LASF154
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x17
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
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x49
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
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
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x74
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL10
	.4byte	.LFE39
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL36
	.4byte	.LFE39
	.2byte	0x3
	.byte	0x74
	.sleb128 32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL39
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL41
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
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL85
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
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92
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
	.4byte	.LVL95
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL41
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL67
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL99
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL42
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL70
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL81
	.4byte	.LFE41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL42
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL81
	.4byte	.LVL87
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL60
	.4byte	.LVL64
	.2byte	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL66-1
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LFE41
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL42
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL81
	.4byte	.LVL97
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL45
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL85
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL74
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
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
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"IPADDR_TYPE_ANY"
.LASF102:
	.string	"MEMP_UDP_PCB"
.LASF121:
	.string	"addr_list"
.LASF112:
	.string	"MEMP_SYS_TIMEOUT"
.LASF53:
	.string	"ERR_ISCONN"
.LASF93:
	.string	"ai_flags"
.LASF114:
	.string	"MEMP_ND6_QUEUE"
.LASF39:
	.string	"u32_addr"
.LASF26:
	.string	"ip6_addr"
.LASF2:
	.string	"size_t"
.LASF40:
	.string	"u8_addr"
.LASF113:
	.string	"MEMP_NETDB"
.LASF122:
	.string	"aliases"
.LASF92:
	.string	"addrinfo"
.LASF5:
	.string	"__uint8_t"
.LASF147:
	.string	"memp_free"
.LASF79:
	.string	"sockaddr_storage"
.LASF34:
	.string	"type"
.LASF145:
	.string	"strncpy"
.LASF12:
	.string	"long long unsigned int"
.LASF36:
	.string	"in_addr_t"
.LASF142:
	.string	"port_nr"
.LASF105:
	.string	"MEMP_TCP_SEG"
.LASF85:
	.string	"socklen_t"
.LASF3:
	.string	"__int8_t"
.LASF143:
	.string	"total_size"
.LASF110:
	.string	"MEMP_ARP_QUEUE"
.LASF19:
	.string	"int16_t"
.LASF11:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF15:
	.string	"long unsigned int"
.LASF51:
	.string	"ERR_USE"
.LASF124:
	.string	"s_aliases"
.LASF46:
	.string	"ERR_TIMEOUT"
.LASF115:
	.string	"MEMP_IP6_REASSDATA"
.LASF134:
	.string	"hostname"
.LASF13:
	.string	"long int"
.LASF101:
	.string	"MEMP_RAW_PCB"
.LASF25:
	.string	"ip4_addr"
.LASF153:
	.string	"memcpy"
.LASF86:
	.string	"hostent"
.LASF71:
	.string	"sin6_port"
.LASF28:
	.string	"ip6_addr_t"
.LASF62:
	.string	"sockaddr_in"
.LASF43:
	.string	"ERR_OK"
.LASF119:
	.string	"MEMP_MAX"
.LASF111:
	.string	"MEMP_IGMP_GROUP"
.LASF10:
	.string	"__uint32_t"
.LASF104:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF7:
	.string	"__int16_t"
.LASF67:
	.string	"sin_zero"
.LASF152:
	.string	"memp_malloc"
.LASF0:
	.string	"unsigned int"
.LASF38:
	.string	"s_addr"
.LASF20:
	.string	"uint16_t"
.LASF136:
	.string	"lh_errno"
.LASF146:
	.string	"strlen"
.LASF23:
	.string	"mem_ptr_t"
.LASF95:
	.string	"ai_socktype"
.LASF87:
	.string	"h_name"
.LASF52:
	.string	"ERR_ALREADY"
.LASF123:
	.string	"s_hostent"
.LASF130:
	.string	"name"
.LASF103:
	.string	"MEMP_TCP_PCB"
.LASF1:
	.string	"short unsigned int"
.LASF66:
	.string	"sin_addr"
.LASF24:
	.string	"ip4_addr_t"
.LASF89:
	.string	"h_addrtype"
.LASF61:
	.string	"in_port_t"
.LASF148:
	.string	"lwip_htons"
.LASF158:
	.string	"lwip_ip_addr_type"
.LASF76:
	.string	"sa_len"
.LASF64:
	.string	"sin_family"
.LASF35:
	.string	"ip_addr_t"
.LASF42:
	.string	"err_t"
.LASF14:
	.string	"sizetype"
.LASF150:
	.string	"ipaddr_aton"
.LASF69:
	.string	"sin6_len"
.LASF70:
	.string	"sin6_family"
.LASF126:
	.string	"s_phostent_addr"
.LASF116:
	.string	"MEMP_MLD6_GROUP"
.LASF88:
	.string	"h_aliases"
.LASF32:
	.string	"ip_addr"
.LASF157:
	.string	"/home/raphael/rtone/lcd/build/lwip"
.LASF63:
	.string	"sin_len"
.LASF82:
	.string	"s2_data1"
.LASF83:
	.string	"s2_data2"
.LASF84:
	.string	"s2_data3"
.LASF97:
	.string	"ai_addrlen"
.LASF48:
	.string	"ERR_INPROGRESS"
.LASF65:
	.string	"sin_port"
.LASF77:
	.string	"sa_family"
.LASF90:
	.string	"h_length"
.LASF91:
	.string	"h_addr_list"
.LASF49:
	.string	"ERR_VAL"
.LASF74:
	.string	"sin6_scope_id"
.LASF27:
	.string	"addr"
.LASF149:
	.string	"atoi"
.LASF22:
	.string	"_Bool"
.LASF151:
	.string	"__assert_func"
.LASF6:
	.string	"unsigned char"
.LASF59:
	.string	"ERR_ARG"
.LASF54:
	.string	"ERR_CONN"
.LASF155:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF98:
	.string	"ai_addr"
.LASF8:
	.string	"short int"
.LASF96:
	.string	"ai_protocol"
.LASF127:
	.string	"s_hostname"
.LASF100:
	.string	"ai_next"
.LASF160:
	.string	"__func__"
.LASF131:
	.string	"buflen"
.LASF41:
	.string	"in6_addr"
.LASF159:
	.string	"lwip_freeaddrinfo"
.LASF57:
	.string	"ERR_RST"
.LASF21:
	.string	"uint32_t"
.LASF16:
	.string	"char"
.LASF108:
	.string	"MEMP_TCPIP_MSG_API"
.LASF128:
	.string	"lwip_gethostbyname"
.LASF56:
	.string	"ERR_ABRT"
.LASF81:
	.string	"ss_family"
.LASF72:
	.string	"sin6_flowinfo"
.LASF106:
	.string	"MEMP_NETBUF"
.LASF9:
	.string	"__uint16_t"
.LASF44:
	.string	"ERR_MEM"
.LASF107:
	.string	"MEMP_NETCONN"
.LASF156:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/api/netdb.c"
.LASF118:
	.string	"MEMP_PBUF_POOL"
.LASF94:
	.string	"ai_family"
.LASF135:
	.string	"namelen"
.LASF161:
	.string	"h_errno"
.LASF58:
	.string	"ERR_CLSD"
.LASF47:
	.string	"ERR_RTE"
.LASF17:
	.string	"int8_t"
.LASF140:
	.string	"servname"
.LASF55:
	.string	"ERR_IF"
.LASF60:
	.string	"sa_family_t"
.LASF45:
	.string	"ERR_BUF"
.LASF141:
	.string	"hints"
.LASF154:
	.string	"memset"
.LASF33:
	.string	"u_addr"
.LASF68:
	.string	"sockaddr_in6"
.LASF75:
	.string	"sockaddr"
.LASF29:
	.string	"IPADDR_TYPE_V4"
.LASF30:
	.string	"IPADDR_TYPE_V6"
.LASF18:
	.string	"uint8_t"
.LASF138:
	.string	"lwip_getaddrinfo"
.LASF139:
	.string	"nodename"
.LASF129:
	.string	"lwip_gethostbyname_r"
.LASF125:
	.string	"s_hostent_addr"
.LASF50:
	.string	"ERR_WOULDBLOCK"
.LASF80:
	.string	"s2_len"
.LASF78:
	.string	"sa_data"
.LASF137:
	.string	"next"
.LASF99:
	.string	"ai_canonname"
.LASF73:
	.string	"sin6_addr"
.LASF133:
	.string	"h_errnop"
.LASF117:
	.string	"MEMP_PBUF"
.LASF132:
	.string	"result"
.LASF144:
	.string	"netconn_gethostbyname_addrtype"
.LASF120:
	.string	"gethostbyname_r_helper"
.LASF109:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF37:
	.string	"in_addr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
