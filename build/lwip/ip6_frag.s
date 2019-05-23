	.file	"ip6_frag.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"ip6_reass_free: moving p->payload to ip6 header failed\n"
	.align	4
.LC3:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/core/ipv6/ip6_frag.c"
	.align	4
.LC6:
	.string	"pbufs_freed + clen <= 0xffff"
	.align	4
.LC10:
	.string	"ip_reass_pbufcount >= clen"
	.section	.text.ip6_reass_free_complete_datagram,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$6521
	.literal .LC4, .LC3
	.literal .LC5, 65535
	.literal .LC7, .LC6
	.literal .LC8, reassdatagrams
	.literal .LC9, ip6_reass_pbufcount
	.literal .LC11, .LC10
	.align	4
	.type	ip6_reass_free_complete_datagram, @function
ip6_reass_free_complete_datagram:
.LFB21:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/core/ipv6/ip6_frag.c"
	.loc 1 147 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 155 0
	l32i.n	a6, a2, 4
	l32i.n	a3, a6, 4
.LVL2:
	.loc 1 156 0
	l8ui	a5, a3, 4
	l8ui	a4, a3, 5
	slli	a4, a4, 8
	or	a4, a4, a5
	bnez.n	a4, .L13
.LVL3:
	.loc 1 160 0
	l8ui	a4, a3, 0
	l8ui	a5, a3, 1
	slli	a5, a5, 8
	or	a4, a5, a4
	l8ui	a5, a3, 2
	slli	a5, a5, 16
	or	a4, a5, a4
	l8ui	a3, a3, 3
.LVL4:
	slli	a3, a3, 24
	or	a3, a3, a4
	s32i.n	a3, a2, 4
.LVL5:
	.loc 1 163 0
	l32i.n	a3, a6, 4
	l32i.n	a11, a2, 8
	sub	a11, a3, a11
	sext	a11, a11, 15
	mov.n	a10, a6
	call8	pbuf_header_force
.LVL6:
	beqz.n	a10, .L3
	.loc 1 164 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi	a11, 0xa4
	l32r	a10, .LC4
	call8	__assert_func
.LVL7:
.L3:
	.loc 1 167 0
	movi.n	a11, 1
	mov.n	a10, a6
	call8	icmp6_time_exceeded
.LVL8:
	.loc 1 169 0
	mov.n	a10, a6
	call8	pbuf_clen
.LVL9:
	mov.n	a4, a10
.LVL10:
	.loc 1 170 0
	l32r	a3, .LC5
	bge	a3, a10, .L4
	.loc 1 170 0 is_stmt 0 discriminator 1
	l32r	a13, .LC7
	l32r	a12, .LC2
	movi	a11, 0xaa
	l32r	a10, .LC4
	call8	__assert_func
.LVL11:
.L4:
	.loc 1 172 0 is_stmt 1
	mov.n	a10, a6
	call8	pbuf_free
.LVL12:
	j	.L2
.LVL13:
.L13:
	.loc 1 149 0
	movi.n	a4, 0
.LVL14:
.L2:
	.loc 1 178 0
	l32i.n	a3, a2, 4
.LVL15:
	.loc 1 179 0
	j	.L5
.L7:
.LBB2:
	.loc 1 181 0
	l32i.n	a5, a3, 4
.LVL16:
	.loc 1 184 0
	l8ui	a11, a5, 0
	l8ui	a8, a5, 1
	slli	a8, a8, 8
	or	a9, a8, a11
	l8ui	a8, a5, 2
	slli	a8, a8, 16
	or	a8, a8, a9
	l8ui	a5, a5, 3
.LVL17:
	slli	a5, a5, 24
	or	a5, a5, a8
.LVL18:
	.loc 1 185 0
	mov.n	a10, a3
	call8	pbuf_clen
.LVL19:
	.loc 1 186 0
	add.n	a8, a4, a10
	l32r	a9, .LC5
	bge	a9, a8, .L6
	.loc 1 186 0 is_stmt 0 discriminator 1
	l32r	a13, .LC7
	l32r	a12, .LC2
	movi	a11, 0xba
	l32r	a10, .LC4
.LVL20:
	call8	__assert_func
.LVL21:
.L6:
	.loc 1 187 0 is_stmt 1
	add.n	a4, a4, a10
.LVL22:
	extui	a4, a4, 0, 16
.LVL23:
	.loc 1 188 0
	mov.n	a10, a3
.LVL24:
	call8	pbuf_free
.LVL25:
	.loc 1 184 0
	mov.n	a3, a5
.LVL26:
.L5:
.LBE2:
	.loc 1 179 0
	bnez.n	a3, .L7
	.loc 1 192 0
	l32r	a3, .LC8
.LVL27:
	l32i.n	a3, a3, 0
	bne	a2, a3, .L8
	.loc 1 193 0
	l32i.n	a5, a2, 0
	l32r	a3, .LC8
	s32i.n	a5, a3, 0
	j	.L9
.LVL28:
.L11:
	.loc 1 197 0
	l32i.n	a5, a3, 0
	beq	a2, a5, .L10
	.loc 1 200 0
	mov.n	a3, a5
.LVL29:
.L8:
	.loc 1 196 0
	bnez.n	a3, .L11
.L10:
	.loc 1 202 0
	beqz.n	a3, .L9
	.loc 1 203 0
	l32i.n	a5, a2, 0
	s32i.n	a5, a3, 0
.LVL30:
.L9:
	.loc 1 206 0
	mov.n	a11, a2
	movi.n	a10, 0xe
	call8	memp_free
.LVL31:
	.loc 1 209 0
	l32r	a2, .LC9
.LVL32:
	l16ui	a2, a2, 0
	bgeu	a2, a4, .L12
	.loc 1 209 0 is_stmt 0 discriminator 1
	l32r	a13, .LC11
	l32r	a12, .LC2
	movi	a11, 0xd1
	l32r	a10, .LC4
	call8	__assert_func
.LVL33:
.L12:
	.loc 1 210 0 is_stmt 1
	sub	a4, a2, a4
.LVL34:
	l32r	a2, .LC9
	s16i	a4, a2, 0
	retw.n
.LFE21:
	.size	ip6_reass_free_complete_datagram, .-ip6_reass_free_complete_datagram
	.section	.text.ip6_reass_remove_oldest_datagram,"ax",@progbits
	.literal_position
	.literal .LC12, reassdatagrams
	.literal .LC13, ip6_reass_pbufcount
	.align	4
	.type	ip6_reass_remove_oldest_datagram, @function
ip6_reass_remove_oldest_datagram:
.LFB22:
	.loc 1 224 0
.LVL35:
	entry	sp, 32
.LCFI1:
.L20:
	.loc 1 230 0
	l32r	a8, .LC12
	l32i.n	a8, a8, 0
.LVL36:
	mov.n	a10, a8
	.loc 1 231 0
	j	.L15
.LVL37:
.L17:
	.loc 1 232 0
	beq	a8, a2, .L16
	.loc 1 233 0
	l8ui	a9, a8, 19
	l8ui	a11, a10, 19
	bltu	a11, a9, .L16
	.loc 1 235 0
	mov.n	a10, a8
.LVL38:
.L16:
	.loc 1 238 0
	l32i.n	a8, a8, 0
.LVL39:
.L15:
	.loc 1 231 0
	bnez.n	a8, .L17
	.loc 1 240 0
	beq	a10, a2, .L14
	.loc 1 244 0
	beqz.n	a10, .L19
	.loc 1 245 0
	call8	ip6_reass_free_complete_datagram
.LVL40:
.L19:
	.loc 1 247 0
	l32r	a8, .LC13
	l16ui	a8, a8, 0
	add.n	a8, a8, a3
	.loc 1 247 0
	movi.n	a9, 0xa
	bge	a9, a8, .L14
	.loc 1 247 0 discriminator 1
	l32r	a8, .LC12
	l32i.n	a8, a8, 0
	bnez.n	a8, .L20
.L14:
	retw.n
.LFE22:
	.size	ip6_reass_remove_oldest_datagram, .-ip6_reass_remove_oldest_datagram
	.section	.text.ip6_reass_tmr,"ax",@progbits
	.literal_position
	.literal .LC14, reassdatagrams
	.align	4
	.global	ip6_reass_tmr
	.type	ip6_reass_tmr, @function
ip6_reass_tmr:
.LFB20:
	.loc 1 112 0
	entry	sp, 32
.LCFI2:
	.loc 1 120 0
	l32r	a2, .LC14
	l32i.n	a10, a2, 0
.LVL41:
	.loc 1 121 0
	j	.L23
.L26:
	.loc 1 124 0
	l8ui	a8, a10, 19
	beqz.n	a8, .L24
	.loc 1 125 0
	addi.n	a8, a8, -1
	s8i	a8, a10, 19
	.loc 1 126 0
	l32i.n	a10, a10, 0
.LVL42:
	j	.L23
.L24:
.LVL43:
	.loc 1 131 0
	l32i.n	a2, a10, 0
.LVL44:
	.loc 1 133 0
	call8	ip6_reass_free_complete_datagram
.LVL45:
	.loc 1 131 0
	mov.n	a10, a2
.LVL46:
.L23:
	.loc 1 121 0
	bnez.n	a10, .L26
	.loc 1 136 0
	retw.n
.LFE20:
	.size	ip6_reass_tmr, .-ip6_reass_tmr
	.section	.rodata.str1.4
	.align	4
.LC18:
	.string	"check fragments don't overlap"
	.align	4
.LC22:
	.string	"no previous fragment, this must be the first fragment!"
	.align	4
.LC24:
	.string	"sanity check linked list"
	.align	4
.LC26:
	.string	"ip6_reass: moving p->payload to ip6 header failed\n"
	.section	.text.ip6_reass,"ax",@progbits
	.literal_position
	.literal .LC15, ip_data
	.literal .LC16, reassdatagrams
	.literal .LC17, ip6_reass_pbufcount
	.literal .LC19, .LC18
	.literal .LC20, __func__$6564
	.literal .LC21, .LC3
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.literal .LC27, .LC26
	.align	4
	.global	ip6_reass
	.type	ip6_reass, @function
ip6_reass:
.LFB23:
	.loc 1 260 0
.LVL47:
	entry	sp, 48
.LCFI3:
.LVL48:
	.loc 1 271 0
	l32r	a3, .LC15
	l32i.n	a5, a3, 12
	l32i.n	a4, a2, 4
	addi	a3, a4, -40
	bne	a5, a3, .L28
.LVL49:
	.loc 1 280 0
	mov.n	a10, a2
	call8	pbuf_clen
.LVL50:
	mov.n	a6, a10
.LVL51:
	.loc 1 282 0
	l8ui	a10, a4, 2
	l8ui	a3, a4, 3
	slli	a3, a3, 8
	or	a10, a3, a10
	call8	lwip_htons
.LVL52:
	mov.n	a7, a10
.LVL53:
	.loc 1 287 0
	l32r	a5, .LC15
	l32i.n	a3, a5, 12
	l8ui	a10, a3, 4
	l8ui	a3, a3, 5
	slli	a3, a3, 8
	or	a10, a3, a10
	call8	lwip_htons
.LVL54:
	.loc 1 288 0
	l32i.n	a3, a2, 4
	l32i.n	a5, a5, 12
	sub	a3, a3, a5
	sub	a10, a10, a3
.LVL55:
	extui	a3, a10, 0, 16
.LVL56:
	.loc 1 289 0
	addi	a3, a3, 32
.LVL57:
	extui	a3, a3, 0, 16
.LVL58:
	s32i.n	a3, sp, 0
.LVL59:
	.loc 1 293 0
	l32r	a3, .LC16
	l32i.n	a3, a3, 0
.LVL60:
	movi.n	a5, 0
	j	.L29
.LVL61:
.L32:
	.loc 1 297 0
	l8ui	a11, a4, 4
	l8ui	a9, a4, 5
	slli	a9, a9, 8
	or	a10, a9, a11
	l8ui	a8, a4, 6
	slli	a8, a8, 16
	or	a9, a8, a10
	l8ui	a8, a4, 7
	slli	a8, a8, 24
	or	a8, a8, a9
	l32i.n	a9, a3, 12
	bne	a8, a9, .L30
	.loc 1 298 0 discriminator 1
	l32r	a8, .LC15
	l32i.n	a13, a8, 20
	l32i.n	a12, a3, 8
	l8ui	a11, a12, 8
	l8ui	a9, a12, 9
	slli	a9, a9, 8
	or	a10, a9, a11
	l8ui	a8, a12, 10
	slli	a8, a8, 16
	or	a9, a8, a10
	l8ui	a8, a12, 11
	slli	a8, a8, 24
	or	a8, a8, a9
	.loc 1 297 0 discriminator 1
	bne	a13, a8, .L30
	.loc 1 298 0
	l32r	a8, .LC15
	l32i.n	a13, a8, 24
	l8ui	a11, a12, 12
	l8ui	a9, a12, 13
	slli	a9, a9, 8
	or	a10, a9, a11
	l8ui	a8, a12, 14
	slli	a8, a8, 16
	or	a9, a8, a10
	l8ui	a8, a12, 15
	slli	a8, a8, 24
	or	a8, a8, a9
	bne	a13, a8, .L30
	.loc 1 298 0 is_stmt 0 discriminator 1
	l32r	a8, .LC15
	l32i.n	a11, a8, 28
	l8ui	a8, a12, 16
	l8ui	a9, a12, 17
	slli	a9, a9, 8
	or	a10, a9, a8
	l8ui	a8, a12, 18
	slli	a8, a8, 16
	or	a9, a8, a10
	l8ui	a8, a12, 19
	slli	a8, a8, 24
	or	a8, a8, a9
	bne	a11, a8, .L30
	.loc 1 298 0 discriminator 2
	l32r	a8, .LC15
	l32i.n	a10, a8, 32
	l8ui	a8, a12, 20
	l8ui	a9, a12, 21
	slli	a9, a9, 8
	or	a8, a9, a8
	l8ui	a9, a12, 22
	slli	a9, a9, 16
	or	a8, a9, a8
	l8ui	a9, a12, 23
	slli	a9, a9, 24
	or	a8, a9, a8
	bne	a10, a8, .L30
	.loc 1 299 0 is_stmt 1 discriminator 3
	l32r	a8, .LC15
	l32i.n	a10, a8, 40
	l8ui	a8, a12, 24
	l8ui	a9, a12, 25
	slli	a9, a9, 8
	or	a8, a9, a8
	l8ui	a9, a12, 26
	slli	a9, a9, 16
	or	a8, a9, a8
	l8ui	a9, a12, 27
	slli	a9, a9, 24
	or	a8, a9, a8
	.loc 1 298 0 discriminator 3
	bne	a10, a8, .L30
	.loc 1 299 0
	l32r	a8, .LC15
	l32i.n	a10, a8, 44
	l8ui	a8, a12, 28
	l8ui	a9, a12, 29
	slli	a9, a9, 8
	or	a8, a9, a8
	l8ui	a9, a12, 30
	slli	a9, a9, 16
	or	a8, a9, a8
	l8ui	a9, a12, 31
	slli	a9, a9, 24
	or	a8, a9, a8
	bne	a10, a8, .L30
	.loc 1 299 0 is_stmt 0 discriminator 1
	l32r	a8, .LC15
	l32i.n	a10, a8, 48
	l8ui	a8, a12, 32
	l8ui	a9, a12, 33
	slli	a9, a9, 8
	or	a8, a9, a8
	l8ui	a9, a12, 34
	slli	a9, a9, 16
	or	a8, a9, a8
	l8ui	a9, a12, 35
	slli	a9, a9, 24
	or	a8, a9, a8
	bne	a10, a8, .L30
	.loc 1 299 0 discriminator 2
	l32r	a8, .LC15
	l32i.n	a10, a8, 52
	l8ui	a8, a12, 36
	l8ui	a9, a12, 37
	slli	a9, a9, 8
	or	a8, a9, a8
	l8ui	a9, a12, 38
	slli	a9, a9, 16
	or	a8, a9, a8
	l8ui	a9, a12, 39
	slli	a9, a9, 24
	or	a8, a9, a8
	beq	a10, a8, .L31
.L30:
.LVL62:
	.loc 1 303 0 is_stmt 1 discriminator 2
	mov.n	a5, a3
	.loc 1 293 0 discriminator 2
	l32i.n	a3, a3, 0
.LVL63:
.L29:
	.loc 1 293 0 discriminator 1
	bnez.n	a3, .L32
.L31:
	.loc 1 306 0
	bnez.n	a3, .L33
	.loc 1 308 0
	movi.n	a10, 0xe
	call8	memp_malloc
.LVL64:
	mov.n	a3, a10
.LVL65:
	.loc 1 309 0
	bnez.n	a10, .L34
	.loc 1 312 0
	mov.n	a11, a6
	call8	ip6_reass_remove_oldest_datagram
.LVL66:
	.loc 1 313 0
	movi.n	a10, 0xe
	call8	memp_malloc
.LVL67:
	mov.n	a3, a10
.LVL68:
	.loc 1 314 0
	beqz.n	a10, .L28
	.loc 1 316 0
	l32r	a5, .LC16
.LVL69:
	l32i.n	a5, a5, 0
.LVL70:
	j	.L35
.L36:
	.loc 1 317 0
	l32i.n	a8, a5, 0
	beq	a3, a8, .L34
	.loc 1 316 0
	mov.n	a5, a8
.LVL71:
.L35:
	.loc 1 316 0 discriminator 1
	bnez.n	a5, .L36
.L34:
	.loc 1 330 0
	movi.n	a12, 0x14
	movi.n	a11, 0
	mov.n	a10, a3
	call8	memset
.LVL72:
	.loc 1 331 0
	movi.n	a8, 3
	s8i	a8, a3, 19
	.loc 1 334 0
	l32r	a8, .LC16
	l32i.n	a9, a8, 0
	s32i.n	a9, a3, 0
	.loc 1 335 0
	s32i.n	a3, a8, 0
	.loc 1 344 0
	l32r	a8, .LC15
	l32i.n	a8, a8, 12
	s32i.n	a8, a3, 8
	.loc 1 348 0
	l8ui	a8, a4, 4
	l8ui	a9, a4, 5
	slli	a9, a9, 8
	or	a8, a9, a8
	l8ui	a9, a4, 6
	slli	a9, a9, 16
	or	a8, a9, a8
	l8ui	a9, a4, 7
	slli	a9, a9, 24
	or	a8, a9, a8
	s32i.n	a8, a3, 12
	.loc 1 351 0
	l8ui	a4, a4, 0
.LVL73:
	s8i	a4, a3, 18
.L33:
	.loc 1 355 0
	l32r	a4, .LC17
	l16ui	a4, a4, 0
	add.n	a4, a4, a6
	movi.n	a8, 0xa
	bge	a8, a4, .L37
	.loc 1 357 0
	mov.n	a11, a6
	mov.n	a10, a3
	call8	ip6_reass_remove_oldest_datagram
.LVL74:
	.loc 1 358 0
	l32r	a4, .LC17
	l16ui	a4, a4, 0
	add.n	a4, a4, a6
	movi.n	a5, 0xa
.LVL75:
	blt	a5, a4, .L28
	.loc 1 360 0
	l32r	a4, .LC16
	l32i.n	a5, a4, 0
.LVL76:
	j	.L38
.L39:
	.loc 1 361 0
	l32i.n	a4, a5, 0
	beq	a3, a4, .L37
	.loc 1 360 0
	mov.n	a5, a4
.LVL77:
.L38:
	.loc 1 360 0 discriminator 1
	bnez.n	a5, .L39
.L37:
	.loc 1 389 0
	l32i.n	a12, a2, 4
.LVL78:
	.loc 1 390 0
	movi.n	a4, 0
	s8i	a4, a12, 0
	s8i	a4, a12, 1
	s8i	a4, a12, 2
	s8i	a4, a12, 3
	.loc 1 391 0
	movi.n	a11, -8
	and	a11, a7, a11
	extui	a11, a11, 0, 16
	s8i	a11, a12, 4
	srli	a4, a11, 8
	s8i	a4, a12, 5
	.loc 1 392 0
	l32i.n	a4, sp, 0
	add.n	a14, a4, a11
	extui	a14, a14, 0, 16
	s8i	a14, a12, 6
	srli	a4, a14, 8
	s8i	a4, a12, 7
	.loc 1 397 0
	l32i.n	a8, a3, 4
.LVL79:
	.loc 1 266 0
	movi.n	a13, 1
	.loc 1 262 0
	movi.n	a10, 0
	.loc 1 397 0
	j	.L40
.LVL80:
.L46:
	.loc 1 398 0
	l32i.n	a4, a8, 4
.LVL81:
	.loc 1 399 0
	l8ui	a15, a4, 4
	l8ui	a9, a4, 5
	slli	a9, a9, 8
	or	a9, a9, a15
	bgeu	a11, a9, .L41
	.loc 1 401 0
	bltu	a9, a14, .L28
	.loc 1 407 0
	beqz.n	a10, .L42
	.loc 1 408 0
	l8ui	a4, a10, 6
.LVL82:
	l8ui	a9, a10, 7
	slli	a9, a9, 8
	or	a4, a9, a4
	bltu	a11, a4, .L28
.L42:
	.loc 1 417 0
	s8i	a8, a12, 0
.LVL83:
	extui	a4, a8, 8, 8
	s8i	a4, a12, 1
	extui	a4, a8, 16, 8
	s8i	a4, a12, 2
	extui	a4, a8, 24, 8
	s8i	a4, a12, 3
	.loc 1 418 0
	beqz.n	a10, .L43
	.loc 1 420 0
	s8i	a2, a10, 0
	extui	a4, a2, 8, 8
	s8i	a4, a10, 1
	extui	a4, a2, 16, 8
	s8i	a4, a10, 2
	extui	a4, a2, 24, 8
	s8i	a4, a10, 3
	j	.L44
.L43:
	.loc 1 423 0
	s32i.n	a2, a3, 4
	j	.L44
.LVL84:
.L41:
	.loc 1 426 0
	beq	a11, a9, .L28
	.loc 1 431 0
	l8ui	a15, a4, 6
	l8ui	a8, a4, 7
.LVL85:
	slli	a8, a8, 8
	or	a8, a8, a15
	bltu	a11, a8, .L28
	.loc 1 439 0
	beqz.n	a10, .L45
	.loc 1 440 0
	l8ui	a15, a10, 6
	l8ui	a8, a10, 7
	slli	a8, a8, 8
	or	a8, a8, a15
	beq	a9, a8, .L45
	.loc 1 443 0
	movi.n	a13, 0
.LVL86:
.L45:
	.loc 1 447 0
	l8ui	a15, a4, 0
	l8ui	a9, a4, 1
	slli	a9, a9, 8
	or	a10, a9, a15
.LVL87:
	l8ui	a8, a4, 2
	slli	a8, a8, 16
	or	a9, a8, a10
	l8ui	a8, a4, 3
	slli	a8, a8, 24
	or	a8, a8, a9
.LVL88:
	.loc 1 448 0
	mov.n	a10, a4
.LVL89:
.L40:
	.loc 1 397 0 discriminator 1
	bnez.n	a8, .L46
.L44:
	.loc 1 452 0
	bnez.n	a8, .L47
	.loc 1 453 0
	beqz.n	a10, .L48
	.loc 1 457 0
	l8ui	a8, a10, 6
.LVL90:
	l8ui	a4, a10, 7
	slli	a4, a4, 8
	or	a4, a4, a8
	l8ui	a8, a12, 4
	l8ui	a9, a12, 5
	slli	a9, a9, 8
	or	a8, a9, a8
	bgeu	a8, a4, .L49
	.loc 1 457 0 is_stmt 0 discriminator 1
	l32r	a13, .LC19
.LVL91:
	l32r	a12, .LC20
.LVL92:
	movi	a11, 0x1c9
	l32r	a10, .LC21
.LVL93:
	call8	__assert_func
.LVL94:
.L49:
	.loc 1 459 0 is_stmt 1
	s8i	a2, a10, 0
	extui	a8, a2, 8, 8
	s8i	a8, a10, 1
	extui	a8, a2, 16, 8
	s8i	a8, a10, 2
	extui	a2, a2, 24, 8
.LVL95:
	s8i	a2, a10, 3
	.loc 1 460 0
	l8ui	a2, a12, 4
	l8ui	a8, a12, 5
	slli	a8, a8, 8
	or	a2, a8, a2
	bne	a4, a2, .L66
	j	.L47
.LVL96:
.L48:
	.loc 1 465 0
	l32i.n	a4, a3, 4
	beqz.n	a4, .L50
	.loc 1 465 0 discriminator 1
	l32r	a13, .LC23
.LVL97:
	l32r	a12, .LC20
.LVL98:
	movi	a11, 0x1d2
	l32r	a10, .LC21
.LVL99:
	call8	__assert_func
.LVL100:
.L50:
	.loc 1 469 0
	s32i.n	a2, a3, 4
	j	.L47
.LVL101:
.L66:
	.loc 1 461 0
	movi.n	a13, 0
.LVL102:
.L47:
	.loc 1 475 0
	l32r	a4, .LC17
	l16ui	a2, a4, 0
	add.n	a6, a6, a2
.LVL103:
	s16i	a6, a4, 0
	.loc 1 478 0
	l8ui	a4, a12, 4
	l8ui	a2, a12, 5
	slli	a2, a2, 8
	or	a2, a2, a4
	bnez.n	a2, .L51
	.loc 1 485 0
	l32r	a2, .LC15
	l32i.n	a2, a2, 12
	s32i.n	a2, a3, 8
.L51:
	.loc 1 490 0
	bbsi	a7, 0, .L52
	.loc 1 491 0
	l8ui	a2, a12, 6
	l8ui	a4, a12, 7
	slli	a4, a4, 8
	or	a2, a4, a2
	s16i	a2, a3, 16
.L52:
	.loc 1 495 0
	l32i.n	a2, a3, 4
	l32i.n	a7, a2, 4
.LVL104:
	.loc 1 496 0
	l8ui	a4, a7, 4
	l8ui	a2, a7, 5
	slli	a2, a2, 8
	or	a2, a2, a4
	beqz.n	a2, .L53
	.loc 1 497 0
	movi.n	a13, 0
.LVL105:
.L53:
	.loc 1 499 0
	l16ui	a2, a3, 16
	bnez.n	a2, .L54
	.loc 1 500 0
	movi.n	a13, 0
.LVL106:
.L54:
	.loc 1 505 0
	l8ui	a2, a12, 0
	l8ui	a4, a12, 1
	slli	a4, a4, 8
	or	a6, a4, a2
	l8ui	a2, a12, 2
	slli	a2, a2, 16
	or	a4, a2, a6
	l8ui	a2, a12, 3
	slli	a2, a2, 24
	or	a2, a2, a4
.LVL107:
	.loc 1 506 0
	j	.L55
.L57:
	.loc 1 507 0
	l32i.n	a9, a2, 4
.LVL108:
	.loc 1 508 0
	l8ui	a2, a12, 6
.LVL109:
	l8ui	a6, a12, 7
	slli	a6, a6, 8
	or	a6, a6, a2
	l8ui	a4, a9, 4
	l8ui	a2, a9, 5
	slli	a2, a2, 8
	or	a2, a2, a4
	bne	a6, a2, .L69
.LVL110:
	.loc 1 513 0
	l8ui	a8, a9, 0
	l8ui	a4, a9, 1
	slli	a4, a4, 8
	or	a6, a4, a8
	l8ui	a2, a9, 2
	slli	a2, a2, 16
	or	a4, a2, a6
	l8ui	a2, a9, 3
	slli	a2, a2, 24
	or	a2, a2, a4
.LVL111:
	.loc 1 512 0
	mov.n	a12, a9
.LVL112:
.L55:
	.loc 1 506 0
	movi.n	a4, 1
	movi.n	a6, 0
	mov.n	a8, a6
	movnez	a8, a4, a2
	.loc 1 506 0
	moveqz	a4, a6, a13
	.loc 1 506 0
	bany	a8, a4, .L57
	j	.L56
.LVL113:
.L69:
	.loc 1 509 0
	movi.n	a13, 0
.LVL114:
.L56:
	.loc 1 516 0
	bnez.n	a13, .L60
	.loc 1 605 0
	movi.n	a2, 0
	retw.n
.LVL115:
.L61:
.LBB3:
.LBB4:
	.loc 1 523 0
	l8ui	a8, a7, 0
	l8ui	a4, a7, 1
	slli	a4, a4, 8
	or	a6, a4, a8
	l8ui	a2, a7, 2
	slli	a2, a2, 16
	or	a4, a2, a6
	l8ui	a2, a7, 3
	slli	a2, a2, 24
	or	a2, a2, a4
.LVL116:
	.loc 1 541 0
	movi.n	a7, 0
.LVL117:
	.loc 1 524 0
	beq	a2, a7, .L60
	.loc 1 526 0
	l32i.n	a7, a2, 4
.LVL118:
	.loc 1 529 0
	movi.n	a11, -8
	mov.n	a10, a2
	call8	pbuf_header
.LVL119:
	.loc 1 538 0
	mov.n	a11, a2
	l32i.n	a10, a3, 4
	call8	pbuf_cat
.LVL120:
.L60:
.LBE4:
	.loc 1 522 0
	bnez.n	a7, .L61
	.loc 1 557 0
	l32i.n	a6, a3, 8
.LVL121:
	.loc 1 561 0
	l32i.n	a2, a3, 4
	l32i.n	a10, a2, 4
	sub	a10, a10, a6
	l16ui	a2, a3, 16
	add.n	a10, a10, a2
	addi	a10, a10, -32
	extui	a10, a10, 0, 16
	s16i	a10, a3, 16
	.loc 1 566 0
	call8	lwip_htons
.LVL122:
	s8i	a10, a6, 4
	extui	a10, a10, 8, 16
	s8i	a10, a6, 5
	.loc 1 569 0
	l32i.n	a2, a3, 4
.LVL123:
	.loc 1 573 0
	l32i.n	a4, a2, 4
.LVL124:
	.loc 1 574 0
	l8ui	a7, a3, 18
.LVL125:
	s8i	a7, a4, 0
	.loc 1 575 0
	movi.n	a7, 0
	s8i	a7, a4, 1
	.loc 1 576 0
	movi.n	a7, 0
	s8i	a7, a4, 2
	s8i	a7, a4, 3
	.loc 1 577 0
	s8i	a7, a4, 4
	s8i	a7, a4, 5
	s8i	a7, a4, 6
	s8i	a7, a4, 7
	.loc 1 580 0
	l32r	a4, .LC16
.LVL126:
	l32i.n	a4, a4, 0
	bne	a3, a4, .L62
	.loc 1 582 0
	l32i.n	a5, a3, 0
.LVL127:
	l32r	a4, .LC16
	s32i.n	a5, a4, 0
	j	.L63
.LVL128:
.L62:
	.loc 1 585 0
	bnez.n	a5, .L64
	.loc 1 585 0 discriminator 1
	l32r	a13, .LC25
	l32r	a12, .LC20
	movi	a11, 0x249
	l32r	a10, .LC21
	call8	__assert_func
.LVL129:
.L64:
	.loc 1 586 0
	l32i.n	a4, a3, 0
	s32i.n	a4, a5, 0
.LVL130:
.L63:
	.loc 1 588 0
	mov.n	a11, a3
	movi.n	a10, 0xe
	call8	memp_free
.LVL131:
	.loc 1 591 0
	mov.n	a10, a2
	call8	pbuf_clen
.LVL132:
	l32r	a4, .LC17
	l16ui	a3, a4, 0
.LVL133:
	sub	a10, a3, a10
	s16i	a10, a4, 0
	.loc 1 595 0
	l32i.n	a11, a2, 4
	sub	a11, a11, a6
	sext	a11, a11, 15
	mov.n	a10, a2
	call8	pbuf_header_force
.LVL134:
	beqz.n	a10, .L59
	.loc 1 596 0 discriminator 1
	l32r	a13, .LC27
	l32r	a12, .LC20
	movi	a11, 0x254
	l32r	a10, .LC21
	call8	__assert_func
.LVL135:
.L28:
.LBE3:
	.loc 1 608 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL136:
	.loc 1 609 0
	movi.n	a2, 0
.LVL137:
.L59:
	.loc 1 610 0
	retw.n
.LFE23:
	.size	ip6_reass, .-ip6_reass
	.section	.rodata.__func__$6564,"a",@progbits
	.align	4
	.type	__func__$6564, @object
	.size	__func__$6564, 10
__func__$6564:
	.string	"ip6_reass"
	.section	.rodata.__func__$6521,"a",@progbits
	.align	4
	.type	__func__$6521, @object
	.size	__func__$6521, 33
__func__$6521:
	.string	"ip6_reass_free_complete_datagram"
	.section	.bss.ip6_reass_pbufcount,"aw",@nobits
	.align	2
	.type	ip6_reass_pbufcount, @object
	.size	ip6_reass_pbufcount, 2
ip6_reass_pbufcount:
	.zero	2
	.section	.bss.reassdatagrams,"aw",@nobits
	.align	4
	.type	reassdatagrams, @object
	.size	reassdatagrams, 4
reassdatagrams:
	.zero	4
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI0-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI1-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI2-.LFB20
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
	.uleb128 0x30
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/err.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/pbuf.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/prot/ip6.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip6_frag.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/prot/icmp6.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/prot/ip4.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.file 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/icmp6.h"
	.file 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/memp.h"
	.file 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/def.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf1f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF169
	.byte	0xc
	.4byte	.LASF170
	.4byte	.LASF171
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
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0x11
	.4byte	0x45
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x12
	.4byte	0x57
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x15
	.4byte	0x69
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbf
	.uleb128 0x8
	.4byte	0xb2
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x14
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x20
	.4byte	0x5e
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x21
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x101
	.uleb128 0x9
	.4byte	0x10c
	.uleb128 0xa
	.4byte	0xa2
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0xb
	.4byte	0xa2
	.4byte	0x123
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0x39
	.4byte	0xc4
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x18
	.byte	0x5
	.byte	0x8e
	.4byte	0x1a7
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x5
	.byte	0x90
	.4byte	0x1a7
	.byte	0
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x5
	.byte	0x93
	.4byte	0xa2
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x5
	.byte	0x9c
	.4byte	0xe5
	.byte	0x8
	.uleb128 0xf
	.string	"len"
	.byte	0x5
	.byte	0x9f
	.4byte	0xe5
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x5
	.byte	0xa2
	.4byte	0xcf
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x5
	.byte	0xa5
	.4byte	0xcf
	.byte	0xd
	.uleb128 0xf
	.string	"ref"
	.byte	0x5
	.byte	0xac
	.4byte	0xe5
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x5
	.byte	0xaf
	.4byte	0x345
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x5
	.byte	0xb0
	.4byte	0xa2
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x12e
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0xf0
	.byte	0x6
	.byte	0xeb
	.4byte	0x345
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x6
	.byte	0xed
	.4byte	0x345
	.byte	0
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x6
	.byte	0xf1
	.4byte	0x49d
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x6
	.byte	0xf2
	.4byte	0x49d
	.byte	0x18
	.uleb128 0xf
	.string	"gw"
	.byte	0x6
	.byte	0xf3
	.4byte	0x49d
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x6
	.byte	0xf7
	.4byte	0x680
	.byte	0x40
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x6
	.byte	0xfa
	.4byte	0x690
	.byte	0x7c
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x6
	.byte	0xfc
	.4byte	0x6b0
	.byte	0x80
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x102
	.4byte	0x56d
	.byte	0x84
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x108
	.4byte	0x592
	.byte	0x88
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x10d
	.4byte	0x5fc
	.byte	0x8c
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x113
	.4byte	0x5c7
	.byte	0x90
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x125
	.4byte	0xa2
	.byte	0x94
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x127
	.4byte	0x113
	.byte	0x98
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x12b
	.4byte	0x6bb
	.byte	0xa4
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x12c
	.4byte	0x675
	.byte	0xa8
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x131
	.4byte	0xcf
	.byte	0xac
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x135
	.4byte	0xcf
	.byte	0xad
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x139
	.4byte	0xb9
	.byte	0xb0
	.uleb128 0x11
	.string	"mtu"
	.byte	0x6
	.2byte	0x13f
	.4byte	0xe5
	.byte	0xb4
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x141
	.4byte	0xcf
	.byte	0xb6
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x143
	.4byte	0x6c1
	.byte	0xb7
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x145
	.4byte	0xcf
	.byte	0xbd
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x147
	.4byte	0x6d1
	.byte	0xbe
	.uleb128 0x11
	.string	"num"
	.byte	0x6
	.2byte	0x149
	.4byte	0xcf
	.byte	0xc0
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x157
	.4byte	0x621
	.byte	0xc4
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x15c
	.4byte	0x64b
	.byte	0xc8
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x163
	.4byte	0x1a7
	.byte	0xcc
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x164
	.4byte	0x1a7
	.byte	0xd0
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x166
	.4byte	0xe5
	.byte	0xd4
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x16b
	.4byte	0xfb
	.byte	0xd8
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x16c
	.4byte	0x49d
	.byte	0xdc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ad
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x10
	.byte	0x7
	.byte	0x3a
	.4byte	0x364
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x7
	.byte	0x3b
	.4byte	0x364
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xf0
	.4byte	0x374
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x7
	.byte	0x3f
	.4byte	0x34b
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x10
	.byte	0x8
	.byte	0x35
	.4byte	0x398
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x8
	.byte	0x36
	.4byte	0x364
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0x8
	.byte	0x3c
	.4byte	0x37f
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x28
	.byte	0x8
	.byte	0x50
	.4byte	0x3f8
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x8
	.byte	0x52
	.4byte	0xf0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x8
	.byte	0x54
	.4byte	0xe5
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x8
	.byte	0x56
	.4byte	0xcf
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x8
	.byte	0x58
	.4byte	0xcf
	.byte	0x7
	.uleb128 0xf
	.string	"src"
	.byte	0x8
	.byte	0x5a
	.4byte	0x398
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x8
	.byte	0x5b
	.4byte	0x398
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x8
	.byte	0x8
	.byte	0x89
	.4byte	0x435
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x8
	.byte	0x8b
	.4byte	0xcf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x8
	.byte	0x8d
	.4byte	0xcf
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x8
	.byte	0x8f
	.4byte	0xe5
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x8
	.byte	0x91
	.4byte	0xf0
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x4
	.byte	0x9
	.byte	0x33
	.4byte	0x44e
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x9
	.byte	0x34
	.4byte	0xf0
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0x9
	.byte	0x39
	.4byte	0x435
	.uleb128 0x12
	.byte	0x10
	.byte	0xa
	.byte	0x46
	.4byte	0x478
	.uleb128 0x13
	.string	"ip6"
	.byte	0xa
	.byte	0x47
	.4byte	0x374
	.uleb128 0x13
	.string	"ip4"
	.byte	0xa
	.byte	0x48
	.4byte	0x44e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x14
	.byte	0xa
	.byte	0x45
	.4byte	0x49d
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0xa
	.byte	0x49
	.4byte	0x459
	.byte	0
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0xa
	.byte	0x4b
	.4byte	0xcf
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0xa
	.byte	0x4c
	.4byte	0x478
	.uleb128 0x14
	.byte	0x4
	.4byte	0x25
	.byte	0x11
	.byte	0x34
	.4byte	0x527
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x7
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x9
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0xa
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0xb
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0xd
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0xe
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0xf
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x11
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x12
	.byte	0
	.uleb128 0x16
	.4byte	.LASF99
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x70
	.4byte	0x550
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF100
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x94
	.4byte	0x56d
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF103
	.byte	0x6
	.byte	0xa7
	.4byte	0x578
	.uleb128 0x6
	.byte	0x4
	.4byte	0x57e
	.uleb128 0x17
	.4byte	0x123
	.4byte	0x592
	.uleb128 0xa
	.4byte	0x1a7
	.uleb128 0xa
	.4byte	0x345
	.byte	0
	.uleb128 0x4
	.4byte	.LASF104
	.byte	0x6
	.byte	0xb2
	.4byte	0x59d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5a3
	.uleb128 0x17
	.4byte	0x123
	.4byte	0x5bc
	.uleb128 0xa
	.4byte	0x345
	.uleb128 0xa
	.4byte	0x1a7
	.uleb128 0xa
	.4byte	0x5bc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5c2
	.uleb128 0x8
	.4byte	0x44e
	.uleb128 0x4
	.4byte	.LASF105
	.byte	0x6
	.byte	0xbf
	.4byte	0x5d2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5d8
	.uleb128 0x17
	.4byte	0x123
	.4byte	0x5f1
	.uleb128 0xa
	.4byte	0x345
	.uleb128 0xa
	.4byte	0x1a7
	.uleb128 0xa
	.4byte	0x5f1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5f7
	.uleb128 0x8
	.4byte	0x374
	.uleb128 0x4
	.4byte	.LASF106
	.byte	0x6
	.byte	0xc9
	.4byte	0x607
	.uleb128 0x6
	.byte	0x4
	.4byte	0x60d
	.uleb128 0x17
	.4byte	0x123
	.4byte	0x621
	.uleb128 0xa
	.4byte	0x345
	.uleb128 0xa
	.4byte	0x1a7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF107
	.byte	0x6
	.byte	0xce
	.4byte	0x62c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x632
	.uleb128 0x17
	.4byte	0x123
	.4byte	0x64b
	.uleb128 0xa
	.4byte	0x345
	.uleb128 0xa
	.4byte	0x5bc
	.uleb128 0xa
	.4byte	0x550
	.byte	0
	.uleb128 0x4
	.4byte	.LASF108
	.byte	0x6
	.byte	0xd3
	.4byte	0x656
	.uleb128 0x6
	.byte	0x4
	.4byte	0x65c
	.uleb128 0x17
	.4byte	0x123
	.4byte	0x675
	.uleb128 0xa
	.4byte	0x345
	.uleb128 0xa
	.4byte	0x5f1
	.uleb128 0xa
	.4byte	0x550
	.byte	0
	.uleb128 0x4
	.4byte	.LASF109
	.byte	0x6
	.byte	0xe5
	.4byte	0xab
	.uleb128 0xb
	.4byte	0x49d
	.4byte	0x690
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0xcf
	.4byte	0x6a0
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x6b0
	.uleb128 0xa
	.4byte	0x345
	.uleb128 0xa
	.4byte	0xcf
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6a0
	.uleb128 0x18
	.4byte	.LASF172
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6b6
	.uleb128 0xb
	.4byte	0xcf
	.4byte	0x6d1
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0x6e1
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF110
	.byte	0x14
	.byte	0xb
	.byte	0x50
	.4byte	0x740
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0xb
	.byte	0x51
	.4byte	0x740
	.byte	0
	.uleb128 0xf
	.string	"p"
	.byte	0xb
	.byte	0x52
	.4byte	0x1a7
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF111
	.byte	0xb
	.byte	0x53
	.4byte	0x746
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF112
	.byte	0xb
	.byte	0x54
	.4byte	0xf0
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF113
	.byte	0xb
	.byte	0x55
	.4byte	0xe5
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF114
	.byte	0xb
	.byte	0x56
	.4byte	0xcf
	.byte	0x12
	.uleb128 0xe
	.4byte	.LASF115
	.byte	0xb
	.byte	0x57
	.4byte	0xcf
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6e1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3a3
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x4
	.4byte	0x25
	.byte	0xc
	.byte	0x74
	.4byte	0x769
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF119
	.byte	0x4
	.byte	0xd
	.byte	0x35
	.4byte	0x782
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0xd
	.byte	0x36
	.4byte	0xf0
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0xd
	.byte	0x3d
	.4byte	0x769
	.uleb128 0xd
	.4byte	.LASF121
	.byte	0x14
	.byte	0xd
	.byte	0x47
	.4byte	0x812
	.uleb128 0xe
	.4byte	.LASF122
	.byte	0xd
	.byte	0x49
	.4byte	0xcf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF123
	.byte	0xd
	.byte	0x4b
	.4byte	0xcf
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF124
	.byte	0xd
	.byte	0x4d
	.4byte	0xe5
	.byte	0x2
	.uleb128 0xf
	.string	"_id"
	.byte	0xd
	.byte	0x4f
	.4byte	0xe5
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF125
	.byte	0xd
	.byte	0x51
	.4byte	0xe5
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF126
	.byte	0xd
	.byte	0x57
	.4byte	0xcf
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF127
	.byte	0xd
	.byte	0x59
	.4byte	0xcf
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF128
	.byte	0xd
	.byte	0x5b
	.4byte	0xe5
	.byte	0xa
	.uleb128 0xf
	.string	"src"
	.byte	0xd
	.byte	0x5d
	.4byte	0x782
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0xd
	.byte	0x5e
	.4byte	0x782
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.4byte	.LASF129
	.byte	0x3c
	.byte	0xe
	.byte	0x69
	.4byte	0x873
	.uleb128 0xe
	.4byte	.LASF130
	.byte	0xe
	.byte	0x6c
	.4byte	0x345
	.byte	0
	.uleb128 0xe
	.4byte	.LASF131
	.byte	0xe
	.byte	0x6e
	.4byte	0x345
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF132
	.byte	0xe
	.byte	0x71
	.4byte	0x873
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF133
	.byte	0xe
	.byte	0x75
	.4byte	0x746
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF134
	.byte	0xe
	.byte	0x78
	.4byte	0xe5
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF135
	.byte	0xe
	.byte	0x7a
	.4byte	0x49d
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF136
	.byte	0xe
	.byte	0x7c
	.4byte	0x49d
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x78d
	.uleb128 0xd
	.4byte	.LASF137
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.4byte	0x8aa
	.uleb128 0xe
	.4byte	.LASF138
	.byte	0x1
	.byte	0x5b
	.4byte	0x1a7
	.byte	0
	.uleb128 0xe
	.4byte	.LASF139
	.byte	0x1
	.byte	0x5c
	.4byte	0xe5
	.byte	0x4
	.uleb128 0xf
	.string	"end"
	.byte	0x1
	.byte	0x5d
	.4byte	0xe5
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.4byte	.LASF145
	.byte	0x1
	.byte	0x92
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa8e
	.uleb128 0x1a
	.string	"ipr"
	.byte	0x1
	.byte	0x92
	.4byte	0x740
	.4byte	.LLST0
	.uleb128 0x1b
	.4byte	.LASF140
	.byte	0x1
	.byte	0x94
	.4byte	0x740
	.4byte	.LLST1
	.uleb128 0x1b
	.4byte	.LASF141
	.byte	0x1
	.byte	0x95
	.4byte	0xe5
	.4byte	.LLST2
	.uleb128 0x1b
	.4byte	.LASF142
	.byte	0x1
	.byte	0x96
	.4byte	0xe5
	.4byte	.LLST3
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.byte	0x97
	.4byte	0x1a7
	.4byte	.LLST4
	.uleb128 0x1b
	.4byte	.LASF143
	.byte	0x1
	.byte	0x98
	.4byte	0xa8e
	.4byte	.LLST5
	.uleb128 0x1d
	.4byte	.LASF155
	.4byte	0xaa4
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6521
	.uleb128 0x1e
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x996
	.uleb128 0x1b
	.4byte	.LASF144
	.byte	0x1
	.byte	0xb4
	.4byte	0x1a7
	.4byte	.LLST6
	.uleb128 0x1f
	.4byte	.LVL19
	.4byte	0xeab
	.4byte	0x956
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL21
	.4byte	0xeb6
	.4byte	0x985
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xba
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6521
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x21
	.4byte	.LVL25
	.4byte	0xec1
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL6
	.4byte	0xecc
	.4byte	0x9aa
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL7
	.4byte	0xeb6
	.4byte	0x9d9
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6521
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL8
	.4byte	0xed7
	.4byte	0x9f2
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL9
	.4byte	0xeab
	.4byte	0xa06
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL11
	.4byte	0xeb6
	.4byte	0xa35
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xaa
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6521
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL12
	.4byte	0xec1
	.4byte	0xa49
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL31
	.4byte	0xee2
	.4byte	0xa62
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3e
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL33
	.4byte	0xeb6
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xd1
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6521
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x879
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0xaa4
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.4byte	0xa94
	.uleb128 0x19
	.4byte	.LASF146
	.byte	0x1
	.byte	0xdf
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xafe
	.uleb128 0x22
	.string	"ipr"
	.byte	0x1
	.byte	0xdf
	.4byte	0x740
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	.LASF147
	.byte	0x1
	.byte	0xdf
	.4byte	0x33
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"r"
	.byte	0x1
	.byte	0xe1
	.4byte	0x740
	.4byte	.LLST7
	.uleb128 0x1b
	.4byte	.LASF148
	.byte	0x1
	.byte	0xe1
	.4byte	0x740
	.4byte	.LLST8
	.uleb128 0x24
	.4byte	.LVL40
	.4byte	0x8aa
	.byte	0
	.uleb128 0x25
	.4byte	.LASF173
	.byte	0x1
	.byte	0x6f
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb42
	.uleb128 0x1c
	.string	"r"
	.byte	0x1
	.byte	0x71
	.4byte	0x740
	.4byte	.LLST9
	.uleb128 0x1c
	.string	"tmp"
	.byte	0x1
	.byte	0x71
	.4byte	0x740
	.4byte	.LLST10
	.uleb128 0x26
	.4byte	.LASF155
	.4byte	0xb52
	.uleb128 0x24
	.4byte	.LVL45
	.4byte	0x8aa
	.byte	0
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0xb52
	.uleb128 0xc
	.4byte	0x9b
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.4byte	0xb42
	.uleb128 0x27
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x103
	.4byte	0x1a7
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe63
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.2byte	0x103
	.4byte	0x1a7
	.4byte	.LLST11
	.uleb128 0x29
	.string	"ipr"
	.byte	0x1
	.2byte	0x105
	.4byte	0x740
	.4byte	.LLST12
	.uleb128 0x2a
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x105
	.4byte	0x740
	.4byte	.LLST13
	.uleb128 0x2a
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x106
	.4byte	0xa8e
	.4byte	.LLST14
	.uleb128 0x2a
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x106
	.4byte	0xa8e
	.4byte	.LLST15
	.uleb128 0x2a
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x106
	.4byte	0xa8e
	.4byte	.LLST16
	.uleb128 0x2a
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x107
	.4byte	0xe63
	.4byte	.LLST17
	.uleb128 0x2a
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x108
	.4byte	0xe5
	.4byte	.LLST18
	.uleb128 0x29
	.string	"len"
	.byte	0x1
	.2byte	0x108
	.4byte	0xe5
	.4byte	.LLST19
	.uleb128 0x2a
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x109
	.4byte	0xe5
	.4byte	.LLST20
	.uleb128 0x2a
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x10a
	.4byte	0xcf
	.4byte	.LLST21
	.uleb128 0x29
	.string	"q"
	.byte	0x1
	.2byte	0x10b
	.4byte	0x1a7
	.4byte	.LLST22
	.uleb128 0x2b
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x25f
	.4byte	.L28
	.uleb128 0x1d
	.4byte	.LASF155
	.4byte	0xe79
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6564
	.uleb128 0x1e
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0xd54
	.uleb128 0x2a
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x206
	.4byte	0x746
	.4byte	.LLST23
	.uleb128 0x1e
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0xcad
	.uleb128 0x2a
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x20b
	.4byte	0x1a7
	.4byte	.LLST24
	.uleb128 0x1f
	.4byte	.LVL119
	.4byte	0xeed
	.4byte	0xc9c
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xf8
	.byte	0
	.uleb128 0x21
	.4byte	.LVL120
	.4byte	0xef8
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL122
	.4byte	0xf03
	.uleb128 0x1f
	.4byte	.LVL129
	.4byte	0xeb6
	.4byte	0xce6
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x249
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6564
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL131
	.4byte	0xee2
	.4byte	0xcff
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3e
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL132
	.4byte	0xeab
	.4byte	0xd13
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL134
	.4byte	0xecc
	.4byte	0xd27
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL135
	.4byte	0xeb6
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x254
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6564
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL50
	.4byte	0xeab
	.4byte	0xd68
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL52
	.4byte	0xf03
	.uleb128 0x24
	.4byte	.LVL54
	.4byte	0xf03
	.uleb128 0x1f
	.4byte	.LVL64
	.4byte	0xf0e
	.4byte	0xd8d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL66
	.4byte	0xaa9
	.4byte	0xda7
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL67
	.4byte	0xf0e
	.4byte	0xdba
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL72
	.4byte	0xf19
	.4byte	0xdd8
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL74
	.4byte	0xaa9
	.4byte	0xdf2
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL94
	.4byte	0xeb6
	.4byte	0xe22
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1c9
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6564
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL100
	.4byte	0xeb6
	.4byte	0xe52
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1d2
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6564
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.uleb128 0x21
	.4byte	.LVL136
	.4byte	0xec1
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3f8
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0xe79
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.4byte	0xe69
	.uleb128 0x2c
	.4byte	.LASF157
	.byte	0x1
	.byte	0x65
	.4byte	0x740
	.uleb128 0x5
	.byte	0x3
	.4byte	reassdatagrams
	.uleb128 0x2c
	.4byte	.LASF158
	.byte	0x1
	.byte	0x66
	.4byte	0xe5
	.uleb128 0x5
	.byte	0x3
	.4byte	ip6_reass_pbufcount
	.uleb128 0x2d
	.4byte	.LASF176
	.byte	0xe
	.byte	0x7e
	.4byte	0x812
	.uleb128 0x2e
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0x5
	.byte	0xef
	.uleb128 0x2e
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0xf
	.byte	0x29
	.uleb128 0x2e
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0x5
	.byte	0xee
	.uleb128 0x2e
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0x5
	.byte	0xec
	.uleb128 0x2e
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0x10
	.byte	0x3b
	.uleb128 0x2e
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0x11
	.byte	0x95
	.uleb128 0x2e
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0x5
	.byte	0xeb
	.uleb128 0x2e
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0x5
	.byte	0xf0
	.uleb128 0x2e
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0x12
	.byte	0x55
	.uleb128 0x2e
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0x11
	.byte	0x93
	.uleb128 0x2f
	.4byte	.LASF177
	.4byte	.LASF177
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x17
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x76
	.sleb128 4
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL17
	.4byte	.LVL19-1
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL16
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL36
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL37
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL43
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL47
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL63
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL63
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL70
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL76
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL78
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL94
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL100
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL108
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL120
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x78
	.sleb128 4
	.4byte	.LVL84
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL104
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL48
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL89
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL94
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL100
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL106
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL112
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL49
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL53
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x3
	.byte	0x73
	.sleb128 40
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x3
	.byte	0x7a
	.sleb128 40
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL135
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL51
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL48
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL100
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL79
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL96
	.4byte	.LVL100-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL121
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL116
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF127:
	.string	"_proto"
.LASF87:
	.string	"MEMP_SYS_TIMEOUT"
.LASF40:
	.string	"output_ip6"
.LASF30:
	.string	"pbuf"
.LASF46:
	.string	"rs_count"
.LASF23:
	.string	"next"
.LASF88:
	.string	"MEMP_NETDB"
.LASF136:
	.string	"current_iphdr_dest"
.LASF145:
	.string	"ip6_reass_free_complete_datagram"
.LASF4:
	.string	"__uint8_t"
.LASF164:
	.string	"memp_free"
.LASF140:
	.string	"prev"
.LASF26:
	.string	"type"
.LASF97:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MLD6"
.LASF146:
	.string	"ip6_reass_remove_oldest_datagram"
.LASF89:
	.string	"MEMP_ND6_QUEUE"
.LASF11:
	.string	"long long unsigned int"
.LASF43:
	.string	"dhcps_pcb"
.LASF58:
	.string	"addr"
.LASF35:
	.string	"ip6_addr_state"
.LASF130:
	.string	"current_netif"
.LASF163:
	.string	"icmp6_time_exceeded"
.LASF80:
	.string	"MEMP_TCP_SEG"
.LASF3:
	.string	"__int8_t"
.LASF66:
	.string	"_hoplim"
.LASF101:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF18:
	.string	"int16_t"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF14:
	.string	"long unsigned int"
.LASF52:
	.string	"mld_mac_filter"
.LASF49:
	.string	"hwaddr"
.LASF148:
	.string	"oldest"
.LASF25:
	.string	"tot_len"
.LASF90:
	.string	"MEMP_IP6_REASSDATA"
.LASF41:
	.string	"state"
.LASF47:
	.string	"hostname"
.LASF12:
	.string	"long int"
.LASF76:
	.string	"MEMP_RAW_PCB"
.LASF72:
	.string	"ip4_addr"
.LASF68:
	.string	"ip6_frag_hdr"
.LASF131:
	.string	"current_input_netif"
.LASF109:
	.string	"dhcp_event_fn"
.LASF98:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF110:
	.string	"ip6_reassdata"
.LASF19:
	.string	"uint16_t"
.LASF48:
	.string	"hwaddr_len"
.LASF60:
	.string	"ip6_addr_packed"
.LASF114:
	.string	"nexth"
.LASF125:
	.string	"_offset"
.LASF96:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF33:
	.string	"netmask"
.LASF143:
	.string	"iprh"
.LASF106:
	.string	"netif_linkoutput_fn"
.LASF86:
	.string	"MEMP_IGMP_GROUP"
.LASF9:
	.string	"__uint32_t"
.LASF6:
	.string	"__int16_t"
.LASF69:
	.string	"reserved"
.LASF168:
	.string	"memp_malloc"
.LASF0:
	.string	"unsigned int"
.LASF57:
	.string	"last_ip_addr"
.LASF105:
	.string	"netif_output_ip6_fn"
.LASF92:
	.string	"MEMP_PBUF"
.LASF38:
	.string	"output"
.LASF113:
	.string	"datagram_len"
.LASF50:
	.string	"name"
.LASF128:
	.string	"_chksum"
.LASF29:
	.string	"l2_buf"
.LASF78:
	.string	"MEMP_TCP_PCB"
.LASF152:
	.string	"frag_hdr"
.LASF1:
	.string	"short unsigned int"
.LASF120:
	.string	"ip4_addr_p_t"
.LASF135:
	.string	"current_iphdr_src"
.LASF61:
	.string	"ip6_addr_p_t"
.LASF161:
	.string	"pbuf_free"
.LASF119:
	.string	"ip4_addr_packed"
.LASF167:
	.string	"lwip_htons"
.LASF147:
	.string	"pbufs_needed"
.LASF173:
	.string	"ip6_reass_tmr"
.LASF100:
	.string	"netif_mac_filter_action"
.LASF169:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF77:
	.string	"MEMP_UDP_PCB"
.LASF94:
	.string	"MEMP_MAX"
.LASF75:
	.string	"ip_addr_t"
.LASF59:
	.string	"ip6_addr_t"
.LASF22:
	.string	"err_t"
.LASF13:
	.string	"sizetype"
.LASF55:
	.string	"loop_cnt_current"
.LASF31:
	.string	"netif"
.LASF126:
	.string	"_ttl"
.LASF91:
	.string	"MEMP_MLD6_GROUP"
.LASF51:
	.string	"igmp_mac_filter"
.LASF24:
	.string	"payload"
.LASF165:
	.string	"pbuf_header"
.LASF65:
	.string	"_nexth"
.LASF32:
	.string	"ip_addr"
.LASF104:
	.string	"netif_output_fn"
.LASF142:
	.string	"clen"
.LASF171:
	.string	"/home/raphael/rtone/lcd/build/lwip"
.LASF116:
	.string	"icmp6_te_code"
.LASF166:
	.string	"pbuf_cat"
.LASF156:
	.string	"iphdr_ptr"
.LASF162:
	.string	"pbuf_header_force"
.LASF103:
	.string	"netif_input_fn"
.LASF64:
	.string	"_plen"
.LASF71:
	.string	"_identification"
.LASF67:
	.string	"dest"
.LASF28:
	.string	"l2_owner"
.LASF118:
	.string	"ICMP6_TE_FRAG"
.LASF63:
	.string	"_v_tc_fl"
.LASF39:
	.string	"linkoutput"
.LASF21:
	.string	"_Bool"
.LASF160:
	.string	"__assert_func"
.LASF5:
	.string	"unsigned char"
.LASF121:
	.string	"ip_hdr"
.LASF107:
	.string	"netif_igmp_mac_filter_fn"
.LASF151:
	.string	"iprh_prev"
.LASF112:
	.string	"identification"
.LASF137:
	.string	"ip6_reass_helper"
.LASF117:
	.string	"ICMP6_TE_HL"
.LASF155:
	.string	"__func__"
.LASF111:
	.string	"iphdr"
.LASF174:
	.string	"ip6_reass"
.LASF44:
	.string	"dhcp_event"
.LASF37:
	.string	"input"
.LASF95:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF108:
	.string	"netif_mld_mac_filter_fn"
.LASF102:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF20:
	.string	"uint32_t"
.LASF34:
	.string	"ip6_addr"
.LASF83:
	.string	"MEMP_TCPIP_MSG_API"
.LASF15:
	.string	"char"
.LASF149:
	.string	"ipr_prev"
.LASF81:
	.string	"MEMP_NETBUF"
.LASF8:
	.string	"__uint16_t"
.LASF79:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF82:
	.string	"MEMP_NETCONN"
.LASF175:
	.string	"nullreturn"
.LASF7:
	.string	"short int"
.LASF133:
	.string	"current_ip6_header"
.LASF93:
	.string	"MEMP_PBUF_POOL"
.LASF85:
	.string	"MEMP_ARP_QUEUE"
.LASF54:
	.string	"loop_last"
.LASF132:
	.string	"current_ip4_header"
.LASF134:
	.string	"current_ip_header_tot_len"
.LASF153:
	.string	"offset"
.LASF53:
	.string	"loop_first"
.LASF42:
	.string	"client_data"
.LASF176:
	.string	"ip_data"
.LASF159:
	.string	"pbuf_clen"
.LASF16:
	.string	"int8_t"
.LASF158:
	.string	"ip6_reass_pbufcount"
.LASF138:
	.string	"next_pbuf"
.LASF144:
	.string	"pcur"
.LASF177:
	.string	"memset"
.LASF99:
	.string	"lwip_internal_netif_client_data_index"
.LASF74:
	.string	"u_addr"
.LASF123:
	.string	"_tos"
.LASF170:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/core/ipv6/ip6_frag.c"
.LASF122:
	.string	"_v_hl"
.LASF17:
	.string	"uint8_t"
.LASF27:
	.string	"flags"
.LASF115:
	.string	"timer"
.LASF172:
	.string	"udp_pcb"
.LASF129:
	.string	"ip_globals"
.LASF56:
	.string	"l2_buffer_free_notify"
.LASF36:
	.string	"ipv6_addr_cb"
.LASF45:
	.string	"ip6_autoconfig_enabled"
.LASF70:
	.string	"_fragment_offset"
.LASF73:
	.string	"ip4_addr_t"
.LASF139:
	.string	"start"
.LASF62:
	.string	"ip6_hdr"
.LASF154:
	.string	"valid"
.LASF150:
	.string	"iprh_tmp"
.LASF141:
	.string	"pbufs_freed"
.LASF157:
	.string	"reassdatagrams"
.LASF84:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF124:
	.string	"_len"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
