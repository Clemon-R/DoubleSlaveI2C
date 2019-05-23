	.file	"dns.c"
	.text
.Ltext0:
	.section	.text.dns_server_is_set,"ax",@progbits
	.literal_position
	.literal .LC0, dns_servers
	.align	4
	.type	dns_server_is_set, @function
dns_server_is_set:
.LFB39:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/core/dns.c"
	.loc 1 1523 0
	entry	sp, 32
.LCFI0:
.LVL0:
	.loc 1 1525 0
	movi.n	a8, 0
	j	.L2
.LVL1:
.L7:
	.loc 1 1526 0
	addx4	a9, a8, a8
	slli	a2, a9, 2
	l32r	a9, .LC0
	add.n	a2, a9, a2
	l8ui	a2, a2, 16
	bnei	a2, 6, .L3
	.loc 1 1526 0 is_stmt 0 discriminator 1
	addx4	a9, a8, a8
	slli	a2, a9, 2
	l32r	a9, .LC0
	add.n	a2, a9, a2
	l32i.n	a2, a2, 0
	bnez.n	a2, .L8
	.loc 1 1526 0 discriminator 4
	addx4	a9, a8, a8
	slli	a2, a9, 2
	l32r	a9, .LC0
	add.n	a2, a9, a2
	l32i.n	a2, a2, 4
	bnez.n	a2, .L9
	.loc 1 1526 0 discriminator 6
	addx4	a9, a8, a8
	slli	a2, a9, 2
	l32r	a9, .LC0
	add.n	a2, a9, a2
	l32i.n	a2, a2, 8
	bnez.n	a2, .L10
	.loc 1 1526 0 discriminator 8
	addx4	a9, a8, a8
	slli	a2, a9, 2
	l32r	a9, .LC0
	add.n	a2, a9, a2
	l32i.n	a2, a2, 12
	beqz.n	a2, .L11
	.loc 1 1526 0
	movi.n	a2, 1
	j	.L5
.L8:
	movi.n	a2, 1
	j	.L5
.L9:
	movi.n	a2, 1
	j	.L5
.L10:
	movi.n	a2, 1
	j	.L5
.L11:
	movi.n	a2, 0
	j	.L5
.L3:
	.loc 1 1526 0 discriminator 2
	addx4	a9, a8, a8
	slli	a2, a9, 2
	l32r	a9, .LC0
	add.n	a2, a9, a2
	l32i.n	a9, a2, 0
	movi.n	a2, 0
	movi.n	a10, 1
	movnez	a2, a10, a9
	extui	a2, a2, 0, 8
.L5:
	.loc 1 1526 0 discriminator 14
	bnez.n	a2, .L6
	.loc 1 1525 0 is_stmt 1 discriminator 2
	addi.n	a8, a8, 1
.LVL2:
.L2:
	.loc 1 1525 0 is_stmt 0 discriminator 1
	blti	a8, 3, .L7
	.loc 1 1530 0 is_stmt 1
	movi.n	a2, 0
.L6:
	.loc 1 1531 0
	retw.n
.LFE39:
	.size	dns_server_is_set, .-dns_server_is_set
	.section	.text.dns_create_txid,"ax",@progbits
	.literal_position
	.literal .LC1, dns_table
	.align	4
	.type	dns_create_txid, @function
dns_create_txid:
.LFB32:
	.loc 1 1023 0
.L13:
	entry	sp, 32
.LCFI1:
.L16:
	.loc 1 1028 0
	call8	esp_random
.LVL3:
	extui	a2, a10, 0, 16
.LVL4:
	.loc 1 1031 0
	movi.n	a8, 0
	j	.L14
.LVL5:
.L17:
	.loc 1 1032 0
	addx8	a11, a8, a8
	addx8	a11, a11, a8
	slli	a9, a11, 2
	l32r	a11, .LC1
	add.n	a9, a11, a9
	l8ui	a9, a9, 26
	bnei	a9, 2, .L15
	.loc 1 1033 0 discriminator 1
	addx8	a11, a8, a8
	addx8	a11, a11, a8
	slli	a9, a11, 2
	l32r	a10, .LC1
	add.n	a9, a10, a9
	l16ui	a9, a9, 24
	.loc 1 1032 0 discriminator 1
	beq	a2, a9, .L16
.L15:
	.loc 1 1031 0 discriminator 2
	addi.n	a8, a8, 1
.LVL6:
	extui	a8, a8, 0, 8
.LVL7:
.L14:
	.loc 1 1031 0 is_stmt 0 discriminator 1
	bltui	a8, 4, .L17
	.loc 1 1040 0 is_stmt 1
	retw.n
.LFE32:
	.size	dns_create_txid, .-dns_create_txid
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.string	"invalid response"
	.align	4
.LC6:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/core/dns.c"
	.section	.text.dns_call_found,"ax",@progbits
	.literal_position
	.literal .LC2, dns_table
	.literal .LC4, .LC3
	.literal .LC5, __func__$6652
	.literal .LC7, .LC6
	.literal .LC8, dns_requests
	.literal .LC9, dns_pcbs
	.align	4
	.type	dns_call_found, @function
dns_call_found:
.LFB31:
	.loc 1 965 0
.LVL8:
	entry	sp, 32
.LCFI2:
	.loc 1 971 0
	beqz.n	a3, .L19
	.loc 1 973 0
	l8ui	a4, a3, 16
	bnei	a4, 6, .L20
	.loc 1 974 0
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a4, a5, 2
	l32r	a5, .LC2
	add.n	a4, a5, a4
	movi	a5, 0x120
	add.n	a4, a4, a5
	l8ui	a4, a4, 0
	addi	a6, a4, -3
	movi.n	a8, 1
	movi.n	a7, 0
	mov.n	a5, a7
	movnez	a5, a8, a6
	mov.n	a6, a5
	addi.n	a5, a4, -1
	mov.n	a4, a7
	movnez	a4, a8, a5
	bnone	a6, a4, .L21
	.loc 1 974 0 is_stmt 0 discriminator 1
	l32r	a13, .LC4
	l32r	a12, .LC5
	movi	a11, 0x3ce
	l32r	a10, .LC7
	call8	__assert_func
.LVL9:
.L21:
	.loc 1 975 0 is_stmt 1
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a4, a5, 2
	l32r	a5, .LC2
	add.n	a4, a5, a4
	movi	a5, 0x120
	add.n	a4, a4, a5
	movi.n	a5, 1
	s8i	a5, a4, 0
	j	.L19
.L20:
	.loc 1 977 0
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a4, a5, 2
	l32r	a5, .LC2
	add.n	a4, a5, a4
	movi	a5, 0x120
	add.n	a4, a4, a5
	l8ui	a4, a4, 0
	addi	a6, a4, -3
	movi.n	a8, 1
	movi.n	a7, 0
	mov.n	a5, a7
	moveqz	a5, a8, a6
	mov.n	a6, a5
	addi.n	a5, a4, -1
	mov.n	a4, a7
	moveqz	a4, a8, a5
	or	a4, a6, a4
	beq	a4, a7, .L22
	.loc 1 977 0 is_stmt 0 discriminator 1
	l32r	a13, .LC4
	l32r	a12, .LC5
	movi	a11, 0x3d1
	l32r	a10, .LC7
	call8	__assert_func
.LVL10:
.L22:
	.loc 1 978 0 is_stmt 1
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a4, a5, 2
	l32r	a5, .LC2
	add.n	a4, a5, a4
	movi	a5, 0x120
	add.n	a4, a4, a5
	movi.n	a5, 0
	s8i	a5, a4, 0
.L19:
	.loc 1 965 0 discriminator 1
	movi.n	a4, 0
	j	.L23
.LVL11:
.L25:
	.loc 1 985 0
	mov.n	a5, a4
	addx2	a9, a4, a4
	slli	a8, a9, 2
	l32r	a9, .LC8
	add.n	a8, a9, a8
	l32i.n	a13, a8, 0
	beqz.n	a13, .L24
	.loc 1 985 0 is_stmt 0 discriminator 1
	addx2	a9, a4, a4
	slli	a8, a9, 2
	l32r	a6, .LC8
	add.n	a8, a6, a8
	l8ui	a6, a8, 8
	bne	a2, a6, .L24
	.loc 1 986 0 is_stmt 1
	addx8	a6, a2, a2
	addx8	a6, a6, a2
	slli	a10, a6, 2
	addi	a10, a10, 32
	l32r	a6, .LC8
	slli	a7, a4, 1
	add.n	a9, a7, a4
	slli	a8, a9, 2
	add.n	a8, a6, a8
	l32i.n	a12, a8, 4
	mov.n	a11, a3
	l32r	a8, .LC2
	add.n	a10, a8, a10
	callx8	a13
.LVL12:
	.loc 1 988 0
	add.n	a5, a7, a4
	slli	a7, a5, 2
	add.n	a6, a6, a7
	movi.n	a5, 0
	s32i.n	a5, a6, 0
.L24:
	.loc 1 984 0 discriminator 2
	addi.n	a4, a4, 1
.LVL13:
	extui	a4, a4, 0, 8
.LVL14:
.L23:
	.loc 1 984 0 is_stmt 0 discriminator 1
	bltui	a4, 4, .L25
	movi.n	a4, 0
.LVL15:
	j	.L26
.LVL16:
.L29:
	.loc 1 1000 0 is_stmt 1
	beq	a4, a2, .L27
	.loc 1 1003 0
	addx8	a5, a4, a4
	addx8	a5, a5, a4
	slli	a3, a5, 2
	l32r	a5, .LC2
	add.n	a3, a5, a3
	l8ui	a3, a3, 26
	bnei	a3, 2, .L27
	.loc 1 1004 0
	mov.n	a7, a5
	addx8	a6, a4, a4
	addx8	a6, a6, a4
	slli	a5, a6, 2
	add.n	a5, a7, a5
	l8ui	a6, a5, 31
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a3, a5, 2
	mov.n	a5, a3
	add.n	a3, a7, a3
	l8ui	a3, a3, 31
	bne	a6, a3, .L27
	.loc 1 1006 0
	add.n	a3, a7, a5
	movi.n	a4, 4
.LVL17:
	s8i	a4, a3, 31
	.loc 1 1007 0
	j	.L28
.LVL18:
.L27:
	.loc 1 999 0 discriminator 2
	addi.n	a4, a4, 1
.LVL19:
	extui	a4, a4, 0, 8
.LVL20:
.L26:
	.loc 1 999 0 is_stmt 0 discriminator 1
	bltui	a4, 4, .L29
.LVL21:
.L28:
	.loc 1 1011 0 is_stmt 1
	addx8	a4, a2, a2
	addx8	a4, a4, a2
	slli	a3, a4, 2
	l32r	a4, .LC2
	add.n	a3, a4, a3
	l8ui	a3, a3, 31
	bgeui	a3, 4, .L18
	.loc 1 1013 0
	l32r	a5, .LC9
	addx4	a3, a3, a5
	l32i.n	a10, a3, 0
	call8	udp_remove
.LVL22:
	.loc 1 1014 0
	l32r	a7, .LC2
	addx8	a4, a2, a2
	slli	a4, a4, 3
	add.n	a3, a4, a2
	slli	a6, a3, 2
	add.n	a6, a7, a6
	l8ui	a6, a6, 31
	addx4	a5, a6, a5
	movi.n	a3, 0
	s32i.n	a3, a5, 0
	.loc 1 1015 0
	add.n	a2, a4, a2
.LVL23:
	slli	a3, a2, 2
	add.n	a3, a7, a3
	movi.n	a2, 4
	s8i	a2, a3, 31
.L18:
	retw.n
.LFE31:
	.size	dns_call_found, .-dns_call_found
	.section	.text.dns_correct_response,"ax",@progbits
	.literal_position
	.literal .LC10, dns_table
	.literal .LC11, 604800
	.align	4
	.type	dns_correct_response, @function
dns_correct_response:
.LFB35:
	.loc 1 1149 0
.LVL24:
	entry	sp, 32
.LCFI3:
.LVL25:
	.loc 1 1152 0
	addx8	a8, a2, a2
	slli	a8, a8, 3
	add.n	a8, a8, a2
	slli	a9, a8, 2
	l32r	a8, .LC10
	add.n	a8, a8, a9
	movi.n	a9, 3
	s8i	a9, a8, 26
	.loc 1 1159 0
	s32i.n	a3, a8, 0
	.loc 1 1160 0
	l32r	a8, .LC11
	bgeu	a8, a3, .L32
	.loc 1 1161 0
	addx8	a8, a2, a2
	addx8	a8, a8, a2
	slli	a3, a8, 2
.LVL26:
	l32r	a8, .LC10
.LVL27:
	add.n	a3, a8, a3
	l32r	a8, .LC11
.LVL28:
	s32i.n	a8, a3, 0
.LVL29:
.L32:
	.loc 1 1163 0
	addx8	a8, a2, a2
	slli	a8, a8, 3
	add.n	a8, a8, a2
	slli	a9, a8, 2
	l32r	a3, .LC10
	add.n	a3, a9, a3
	addi.n	a11, a3, 4
	mov.n	a10, a2
	call8	dns_call_found
.LVL30:
	.loc 1 1165 0
	l32i.n	a3, a3, 0
	bnez.n	a3, .L31
	.loc 1 1171 0
	addx8	a9, a2, a2
	addx8	a9, a9, a2
	slli	a8, a9, 2
	mov.n	a9, a8
	l32r	a3, .LC10
	add.n	a8, a3, a8
	l8ui	a3, a8, 26
	bnei	a3, 3, .L31
	.loc 1 1172 0
	l32r	a2, .LC10
.LVL31:
	add.n	a8, a2, a9
	movi.n	a2, 0
	s8i	a2, a8, 26
.L31:
	retw.n
.LFE35:
	.size	dns_correct_response, .-dns_correct_response
	.section	.rodata.str1.4
	.align	4
.LC13:
	.string	"dns server out of array"
	.section	.text.dns_send,"ax",@progbits
	.literal_position
	.literal .LC12, dns_table
	.literal .LC14, .LC13
	.literal .LC15, __func__$6618
	.literal .LC16, .LC6
	.literal .LC17, dns_servers
	.literal .LC18, 7168
	.literal .LC19, dns_pcbs
	.align	4
	.type	dns_send, @function
dns_send:
.LFB28:
	.loc 1 777 0
.LVL32:
	entry	sp, 64
.LCFI4:
	s32i.n	a2, sp, 16
.LVL33:
	.loc 1 790 0
	addx8	a3, a2, a2
	addx8	a3, a3, a2
	slli	a2, a3, 2
.LVL34:
	l32r	a3, .LC12
	add.n	a2, a3, a2
	l8ui	a2, a2, 27
	bltui	a2, 3, .L35
	.loc 1 790 0 is_stmt 0 discriminator 1
	l32r	a13, .LC14
	l32r	a12, .LC15
	movi	a11, 0x316
	l32r	a10, .LC16
	call8	__assert_func
.LVL35:
.L35:
	.loc 1 791 0 is_stmt 1
	addx4	a4, a2, a2
	slli	a3, a4, 2
	l32r	a4, .LC17
	add.n	a3, a4, a3
	l8ui	a3, a3, 16
	bnei	a3, 6, .L36
	.loc 1 791 0 is_stmt 0 discriminator 1
	addx4	a4, a2, a2
	slli	a3, a4, 2
	l32r	a4, .LC17
	add.n	a3, a4, a3
	l32i.n	a3, a3, 0
	bnez.n	a3, .L46
	.loc 1 791 0 discriminator 3
	addx4	a4, a2, a2
	slli	a3, a4, 2
	l32r	a4, .LC17
	add.n	a3, a4, a3
	l32i.n	a3, a3, 4
	bnez.n	a3, .L47
	.loc 1 791 0 discriminator 5
	addx4	a4, a2, a2
	slli	a3, a4, 2
	l32r	a4, .LC17
	add.n	a3, a4, a3
	l32i.n	a3, a3, 8
	bnez.n	a3, .L48
	.loc 1 791 0 discriminator 7
	addx4	a2, a2, a2
	slli	a3, a2, 2
	add.n	a3, a4, a3
	l32i.n	a2, a3, 12
	beqz.n	a2, .L49
	.loc 1 791 0
	movi.n	a2, 0
	j	.L38
.L46:
	movi.n	a2, 0
	j	.L38
.L47:
	movi.n	a2, 0
	j	.L38
.L48:
	movi.n	a2, 0
	j	.L38
.L49:
	movi.n	a2, 1
	j	.L38
.L36:
	.loc 1 791 0 discriminator 2
	addx4	a2, a2, a2
	slli	a3, a2, 2
	l32r	a2, .LC17
	add.n	a3, a2, a3
	l32i.n	a3, a3, 0
	movi.n	a2, 0
	movi.n	a4, 1
	moveqz	a2, a4, a3
	extui	a2, a2, 0, 8
.L38:
	.loc 1 791 0 discriminator 14
	beqz.n	a2, .L39
	.loc 1 798 0 is_stmt 1
	movi.n	a11, 0
	l32i.n	a10, sp, 16
	call8	dns_call_found
.LVL36:
	.loc 1 800 0
	l32i.n	a2, sp, 16
	addx8	a3, a2, a2
	addx8	a3, a3, a2
	slli	a2, a3, 2
	l32r	a3, .LC12
	add.n	a2, a3, a2
	movi.n	a3, 0
	s8i	a3, a2, 26
	.loc 1 801 0
	movi.n	a2, 0
	retw.n
.L39:
	.loc 1 805 0
	l32i.n	a4, sp, 16
	addx8	a3, a4, a4
	addx8	a3, a3, a4
	slli	a2, a3, 2
	addi	a2, a2, 32
	l32r	a3, .LC12
	add.n	a3, a2, a3
	mov.n	a10, a3
	call8	strlen
.LVL37:
	addi	a10, a10, 18
	movi.n	a12, 0
	extui	a11, a10, 0, 16
	mov.n	a10, a12
	call8	pbuf_alloc
.LVL38:
	mov.n	a6, a10
.LVL39:
	.loc 1 807 0
	beqz.n	a10, .L50
.LBB2:
	.loc 1 811 0
	movi.n	a2, 0
	s32i.n	a2, sp, 0
	s32i.n	a2, sp, 4
	s32i.n	a2, sp, 8
	.loc 1 812 0
	l32i.n	a2, sp, 16
	addx8	a4, a2, a2
	addx8	a4, a4, a2
	slli	a2, a4, 2
	l32r	a4, .LC12
	add.n	a2, a4, a2
	l16ui	a10, a2, 24
	call8	lwip_htons
.LVL40:
	s16i	a10, sp, 0
	.loc 1 813 0
	movi.n	a2, 1
	s8i	a2, sp, 2
	.loc 1 814 0
	movi	a2, 0x100
	s16i	a2, sp, 4
	.loc 1 815 0
	movi.n	a12, 0xc
	mov.n	a11, sp
	mov.n	a10, a6
	call8	pbuf_take
.LVL41:
	.loc 1 817 0
	addi.n	a3, a3, -1
.LVL42:
	.loc 1 820 0
	movi.n	a4, 0xc
.LVL43:
.L43:
	.loc 1 822 0
	addi.n	a3, a3, 1
.LVL44:
	mov.n	a5, a3
	.loc 1 824 0
	movi.n	a2, 0
	j	.L41
.LVL45:
.L42:
	.loc 1 825 0 discriminator 3
	addi.n	a2, a2, 1
.LVL46:
	extui	a2, a2, 0, 8
.LVL47:
	.loc 1 824 0 discriminator 3
	addi.n	a3, a3, 1
.LVL48:
.L41:
	.loc 1 824 0 is_stmt 0 discriminator 1
	l8ui	a7, a3, 0
	addi	a8, a7, -46
	movi.n	a10, 1
	movi.n	a9, 0
	mov.n	a11, a9
	movnez	a11, a10, a8
	movnez	a9, a10, a7
	bany	a11, a9, .L42
	.loc 1 827 0 is_stmt 1
	sub	a7, a3, a5
.LVL49:
	.loc 1 828 0
	mov.n	a12, a2
	mov.n	a11, a4
	mov.n	a10, a6
	call8	pbuf_put_at
.LVL50:
	.loc 1 829 0
	addi.n	a13, a4, 1
	extui	a13, a13, 0, 16
	extui	a12, a7, 0, 16
	mov.n	a11, a5
	mov.n	a10, a6
	call8	pbuf_take_at
.LVL51:
	.loc 1 830 0
	add.n	a2, a4, a2
.LVL52:
	extui	a2, a2, 0, 16
	addi.n	a4, a2, 1
.LVL53:
	extui	a4, a4, 0, 16
.LVL54:
	.loc 1 831 0
	l8ui	a5, a3, 0
	bnez.n	a5, .L43
	.loc 1 832 0
	movi.n	a12, 0
	mov.n	a11, a4
	mov.n	a10, a6
	call8	pbuf_put_at
.LVL55:
	.loc 1 833 0
	addi.n	a2, a2, 2
	extui	a13, a2, 0, 16
.LVL56:
	.loc 1 836 0
	l32i.n	a2, sp, 16
.LVL57:
	addx8	a3, a2, a2
.LVL58:
	addx8	a3, a3, a2
	slli	a2, a3, 2
	l32r	a3, .LC12
	add.n	a2, a3, a2
	movi	a3, 0x120
	add.n	a2, a2, a3
	l8ui	a2, a2, 0
	addi	a4, a2, -3
	movi.n	a7, 1
.LVL59:
	mov.n	a3, a5
	moveqz	a3, a7, a4
	mov.n	a4, a3
	addi.n	a3, a2, -1
	mov.n	a2, a5
	moveqz	a2, a7, a3
	or	a2, a4, a2
	beq	a2, a5, .L44
	.loc 1 837 0
	l32r	a4, .LC18
	s16i	a4, sp, 12
	j	.L45
.L44:
	.loc 1 839 0
	movi	a2, 0x100
	s16i	a2, sp, 12
.L45:
	.loc 1 841 0
	movi	a2, 0x100
	s16i	a2, sp, 14
	.loc 1 842 0
	movi.n	a12, 4
	addi.n	a11, sp, 12
	mov.n	a10, a6
	call8	pbuf_take_at
.LVL60:
	.loc 1 845 0
	l32r	a5, .LC12
	l32i.n	a3, sp, 16
	addx8	a2, a3, a3
	slli	a2, a2, 3
	add.n	a3, a2, a3
	slli	a4, a3, 2
	add.n	a4, a5, a4
	l8ui	a4, a4, 31
.LVL61:
	.loc 1 873 0
	l32i.n	a3, sp, 16
.LVL62:
	add.n	a2, a2, a3
.LVL63:
	slli	a3, a2, 2
.LVL64:
	add.n	a3, a5, a3
.LVL65:
	l8ui	a2, a3, 27
	addx4	a2, a2, a2
	slli	a3, a2, 2
.LVL66:
	.loc 1 875 0
	l32r	a2, .LC19
	addx4	a2, a4, a2
	movi.n	a13, 0x35
	l32r	a12, .LC17
	add.n	a12, a12, a3
.LVL67:
	mov.n	a11, a6
	l32i.n	a10, a2, 0
	call8	udp_sendto
.LVL68:
	extui	a2, a10, 0, 8
.LVL69:
	.loc 1 878 0
	mov.n	a10, a6
.LVL70:
	call8	pbuf_free
.LVL71:
.LBE2:
	retw.n
.LVL72:
.L50:
	.loc 1 880 0
	movi	a2, 0xff
	.loc 1 884 0
	retw.n
.LFE28:
	.size	dns_send, .-dns_send
	.section	.rodata.str1.4
	.align	4
.LC20:
	.string	"array index out of bounds"
	.align	4
.LC26:
	.string	"unknown dns_table entry state:"
	.section	.text.dns_check_entry,"ax",@progbits
	.literal_position
	.literal .LC21, .LC20
	.literal .LC22, __func__$6674
	.literal .LC23, .LC6
	.literal .LC24, dns_table
	.literal .LC25, dns_servers
	.literal .LC27, .LC26
	.align	4
	.type	dns_check_entry, @function
dns_check_entry:
.LFB33:
	.loc 1 1053 0
.LVL73:
	entry	sp, 32
.LCFI5:
.LVL74:
	.loc 1 1057 0
	bltui	a2, 4, .L52
	.loc 1 1057 0 is_stmt 0 discriminator 1
	l32r	a13, .LC21
	l32r	a12, .LC22
	movi	a11, 0x421
	l32r	a10, .LC23
	call8	__assert_func
.LVL75:
.L52:
	.loc 1 1059 0 is_stmt 1
	addx8	a9, a2, a2
	addx8	a9, a9, a2
	slli	a8, a9, 2
	l32r	a9, .LC24
	add.n	a8, a9, a8
	l8ui	a8, a8, 26
	beqi	a8, 1, .L54
	beqz.n	a8, .L51
	beqi	a8, 2, .L56
	beqi	a8, 3, .L57
	j	.L78
.L54:
	.loc 1 1062 0
	call8	dns_create_txid
.LVL76:
	addx8	a9, a2, a2
	slli	a9, a9, 3
	add.n	a9, a9, a2
	slli	a8, a9, 2
	l32r	a9, .LC24
	add.n	a8, a9, a8
	s16i	a10, a8, 24
	.loc 1 1063 0
	movi.n	a9, 2
	s8i	a9, a8, 26
	.loc 1 1064 0
	movi.n	a9, 0
	s8i	a9, a8, 27
	.loc 1 1065 0
	movi.n	a10, 1
	s8i	a10, a8, 28
	.loc 1 1066 0
	s8i	a9, a8, 29
	.loc 1 1069 0
	mov.n	a10, a2
	call8	dns_send
.LVL77:
	retw.n
.L56:
	.loc 1 1076 0
	addx8	a8, a2, a2
	slli	a8, a8, 3
	add.n	a8, a8, a2
	slli	a9, a8, 2
	l32r	a8, .LC24
	add.n	a9, a8, a9
	l8ui	a8, a9, 28
	addi.n	a8, a8, -1
	extui	a8, a8, 0, 8
	s8i	a8, a9, 28
	bnez.n	a8, .L51
	.loc 1 1077 0
	addx8	a8, a2, a2
	slli	a8, a8, 3
	add.n	a8, a8, a2
	slli	a9, a8, 2
	l32r	a8, .LC24
	add.n	a9, a8, a9
	l8ui	a8, a9, 29
	addi.n	a8, a8, 1
	extui	a8, a8, 0, 8
	s8i	a8, a9, 29
	bnei	a8, 4, .L79
	j	.L58
.L63:
	.loc 1 1081 0
	addx8	a10, a2, a2
	addx8	a10, a10, a2
	slli	a8, a10, 2
	l32r	a10, .LC24
	add.n	a8, a10, a8
	addi.n	a9, a9, 1
	s8i	a9, a8, 27
.L58:
	.loc 1 1080 0
	addx8	a9, a2, a2
	addx8	a9, a9, a2
	slli	a8, a9, 2
	l32r	a9, .LC24
	add.n	a8, a9, a8
	l8ui	a9, a8, 27
	addi.n	a8, a9, 1
	bgei	a8, 3, .L60
	.loc 1 1080 0 is_stmt 0 discriminator 1
	addx4	a11, a8, a8
	slli	a10, a11, 2
	l32r	a11, .LC25
	add.n	a10, a11, a10
	l8ui	a10, a10, 16
	bnei	a10, 6, .L61
	.loc 1 1080 0 discriminator 2
	addx4	a11, a8, a8
	slli	a10, a11, 2
	l32r	a11, .LC25
	add.n	a10, a11, a10
	l32i.n	a10, a10, 0
	bnez.n	a10, .L70
	.loc 1 1080 0 discriminator 4
	addx4	a11, a8, a8
	slli	a10, a11, 2
	l32r	a11, .LC25
	add.n	a10, a11, a10
	l32i.n	a10, a10, 4
	bnez.n	a10, .L71
	.loc 1 1080 0 discriminator 6
	addx4	a11, a8, a8
	slli	a10, a11, 2
	l32r	a11, .LC25
	add.n	a10, a11, a10
	l32i.n	a10, a10, 8
	bnez.n	a10, .L72
	.loc 1 1080 0 discriminator 8
	addx4	a11, a8, a8
	slli	a10, a11, 2
	l32r	a11, .LC25
	add.n	a10, a11, a10
	l32i.n	a10, a10, 12
	beqz.n	a10, .L73
	.loc 1 1080 0
	movi.n	a10, 0
	j	.L62
.L70:
	movi.n	a10, 0
	j	.L62
.L71:
	movi.n	a10, 0
	j	.L62
.L72:
	movi.n	a10, 0
	j	.L62
.L73:
	movi.n	a10, 1
.L62:
	.loc 1 1080 0 discriminator 13
	bnez.n	a10, .L63
	j	.L60
.L61:
	.loc 1 1080 0 discriminator 3
	addx4	a11, a8, a8
	slli	a10, a11, 2
	l32r	a11, .LC25
	add.n	a10, a11, a10
	l32i.n	a10, a10, 0
	beqz.n	a10, .L63
.L60:
	.loc 1 1084 0 is_stmt 1
	bgei	a8, 3, .L64
	.loc 1 1084 0 is_stmt 0 discriminator 1
	addx4	a11, a8, a8
	slli	a10, a11, 2
	l32r	a11, .LC25
	add.n	a10, a11, a10
	l8ui	a10, a10, 16
	bnei	a10, 6, .L65
	.loc 1 1084 0 discriminator 2
	addx4	a11, a8, a8
	slli	a10, a11, 2
	l32r	a11, .LC25
	add.n	a10, a11, a10
	l32i.n	a10, a10, 0
	bnez.n	a10, .L74
	.loc 1 1084 0 discriminator 5
	addx4	a11, a8, a8
	slli	a10, a11, 2
	l32r	a11, .LC25
	add.n	a10, a11, a10
	l32i.n	a10, a10, 4
	bnez.n	a10, .L75
	.loc 1 1084 0 discriminator 7
	addx4	a11, a8, a8
	slli	a10, a11, 2
	l32r	a11, .LC25
	add.n	a10, a11, a10
	l32i.n	a10, a10, 8
	bnez.n	a10, .L76
	.loc 1 1084 0 discriminator 9
	addx4	a8, a8, a8
	slli	a10, a8, 2
	add.n	a10, a11, a10
	l32i.n	a8, a10, 12
	beqz.n	a8, .L77
	.loc 1 1084 0
	movi.n	a8, 1
	j	.L66
.L74:
	movi.n	a8, 1
	j	.L66
.L75:
	movi.n	a8, 1
	j	.L66
.L76:
	movi.n	a8, 1
	j	.L66
.L77:
	movi.n	a8, 0
.L66:
	.loc 1 1084 0 discriminator 13
	bnez.n	a8, .L67
	j	.L64
.L65:
	.loc 1 1084 0 discriminator 3
	addx4	a8, a8, a8
	slli	a10, a8, 2
	l32r	a8, .LC25
	add.n	a10, a8, a10
	l32i.n	a8, a10, 0
	beqz.n	a8, .L64
.L67:
	.loc 1 1090 0 is_stmt 1
	addx8	a10, a2, a2
	slli	a10, a10, 3
	add.n	a10, a10, a2
	slli	a8, a10, 2
	l32r	a10, .LC24
	add.n	a8, a10, a8
	addi.n	a9, a9, 1
	s8i	a9, a8, 27
	.loc 1 1091 0
	movi.n	a9, 1
	s8i	a9, a8, 28
	.loc 1 1092 0
	movi.n	a9, 0
	s8i	a9, a8, 29
	j	.L68
.L64:
	.loc 1 1096 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	dns_call_found
.LVL78:
	.loc 1 1098 0
	addx8	a8, a2, a2
	addx8	a2, a8, a2
.LVL79:
	slli	a8, a2, 2
	l32r	a2, .LC24
	add.n	a8, a2, a8
	movi.n	a2, 0
	s8i	a2, a8, 26
	.loc 1 1099 0
	retw.n
.LVL80:
.L79:
	.loc 1 1103 0
	addx8	a10, a2, a2
	addx8	a10, a10, a2
	slli	a9, a10, 2
	l32r	a10, .LC24
	add.n	a9, a10, a9
	s8i	a8, a9, 28
.L68:
	.loc 1 1107 0
	mov.n	a10, a2
	call8	dns_send
.LVL81:
	retw.n
.L57:
	.loc 1 1116 0
	addx8	a9, a2, a2
	addx8	a9, a9, a2
	slli	a8, a9, 2
	l32r	a9, .LC24
	add.n	a8, a9, a8
	l32i.n	a8, a8, 0
	beqz.n	a8, .L69
	.loc 1 1116 0 is_stmt 0 discriminator 1
	addi.n	a8, a8, -1
	addx8	a10, a2, a2
	addx8	a10, a10, a2
	slli	a9, a10, 2
	l32r	a10, .LC24
	add.n	a9, a10, a9
	s32i.n	a8, a9, 0
	bnez.n	a8, .L51
.L69:
	.loc 1 1119 0 is_stmt 1
	addx8	a8, a2, a2
	addx8	a2, a8, a2
.LVL82:
	slli	a8, a2, 2
	l32r	a2, .LC24
	add.n	a8, a2, a8
	movi.n	a2, 0
	s8i	a2, a8, 26
	retw.n
.LVL83:
.L78:
	.loc 1 1126 0 discriminator 1
	l32r	a13, .LC27
	l32r	a12, .LC22
	movi	a11, 0x466
	l32r	a10, .LC23
	call8	__assert_func
.LVL84:
.L51:
	retw.n
.LFE33:
	.size	dns_check_entry, .-dns_check_entry
	.section	.text.dns_check_entries,"ax",@progbits
	.align	4
	.type	dns_check_entries, @function
dns_check_entries:
.LFB34:
	.loc 1 1136 0
	entry	sp, 32
.LCFI6:
.LVL85:
	.loc 1 1139 0
	movi.n	a2, 0
	j	.L81
.LVL86:
.L82:
	.loc 1 1140 0 discriminator 3
	mov.n	a10, a2
	call8	dns_check_entry
.LVL87:
	.loc 1 1139 0 discriminator 3
	addi.n	a2, a2, 1
.LVL88:
	extui	a2, a2, 0, 8
.LVL89:
.L81:
	.loc 1 1139 0 is_stmt 0 discriminator 1
	bltui	a2, 4, .L82
	.loc 1 1142 0 is_stmt 1
	retw.n
.LFE34:
	.size	dns_check_entries, .-dns_check_entries
	.section	.text.dns_lookup,"ax",@progbits
	.literal_position
	.literal .LC28, dns_table
	.align	4
	.type	dns_lookup, @function
dns_lookup:
.LFB25:
	.loc 1 647 0
.LVL90:
	entry	sp, 32
.LCFI7:
.LVL91:
	.loc 1 663 0
	movi.n	a5, 0
	j	.L84
.LVL92:
.L90:
	.loc 1 664 0
	mov.n	a6, a5
	addx8	a9, a5, a5
	addx8	a9, a9, a5
	slli	a8, a9, 2
	l32r	a9, .LC28
	add.n	a8, a9, a8
	l8ui	a8, a8, 26
	bnei	a8, 3, .L85
	.loc 1 665 0 discriminator 1
	addx8	a8, a5, a5
	addx8	a8, a8, a5
	slli	a11, a8, 2
	addi	a11, a11, 32
	movi	a12, 0x100
	add.n	a11, a9, a11
	mov.n	a10, a2
	call8	lwip_strnicmp
.LVL93:
	.loc 1 664 0 discriminator 1
	bnez.n	a10, .L85
	.loc 1 666 0
	addx8	a9, a5, a5
	addx8	a9, a9, a5
	slli	a8, a9, 2
	l32r	a9, .LC28
	add.n	a8, a9, a8
	l8ui	a11, a8, 20
	.loc 1 665 0
	bnei	a11, 6, .L86
	.loc 1 666 0 discriminator 1
	addi	a8, a4, -3
	movi.n	a12, 1
	movi.n	a9, 0
	mov.n	a10, a9
	moveqz	a10, a12, a8
	mov.n	a8, a10
	addi.n	a10, a4, -1
	moveqz	a9, a12, a10
	or	a8, a9, a8
	j	.L87
.L86:
	.loc 1 666 0 is_stmt 0 discriminator 2
	addi	a9, a4, -3
	movi.n	a12, 1
	movi.n	a8, 0
	mov.n	a10, a8
	movnez	a10, a12, a9
	mov.n	a9, a10
	addi.n	a10, a4, -1
	movnez	a8, a12, a10
	and	a8, a8, a9
.L87:
	.loc 1 665 0 is_stmt 1 discriminator 4
	beqz.n	a8, .L85
	.loc 1 670 0
	beqz.n	a3, .L91
	.loc 1 671 0
	s8i	a11, a3, 16
	addx8	a4, a6, a6
.LVL94:
	addx8	a4, a4, a6
	slli	a2, a4, 2
.LVL95:
	l32r	a4, .LC28
	add.n	a2, a4, a2
	l8ui	a2, a2, 20
	bnei	a2, 6, .L89
	.loc 1 671 0 is_stmt 0 discriminator 1
	mov.n	a5, a4
.LVL96:
	addx8	a2, a6, a6
	slli	a2, a2, 3
	add.n	a8, a2, a6
	slli	a4, a8, 2
	add.n	a4, a5, a4
	l32i.n	a8, a4, 4
	s32i.n	a8, a3, 0
	l32i.n	a8, a4, 8
	s32i.n	a8, a3, 4
	l32i.n	a4, a4, 12
	s32i.n	a4, a3, 8
	add.n	a6, a2, a6
.LVL97:
	slli	a2, a6, 2
	mov.n	a6, a2
	add.n	a2, a5, a2
	l32i.n	a2, a2, 16
	s32i.n	a2, a3, 12
	.loc 1 673 0 is_stmt 1 discriminator 1
	movi.n	a2, 0
	retw.n
.LVL98:
.L89:
	.loc 1 671 0 discriminator 2
	addx8	a2, a6, a6
	addx8	a6, a2, a6
	slli	a2, a6, 2
	mov.n	a6, a2
	l32r	a4, .LC28
	add.n	a2, a4, a2
	l32i.n	a2, a2, 4
	s32i.n	a2, a3, 0
	.loc 1 673 0 discriminator 2
	movi.n	a2, 0
	retw.n
.LVL99:
.L85:
	.loc 1 663 0 discriminator 2
	addi.n	a5, a5, 1
.LVL100:
	extui	a5, a5, 0, 8
.LVL101:
.L84:
	.loc 1 663 0 is_stmt 0 discriminator 1
	bltui	a5, 4, .L90
	.loc 1 677 0 is_stmt 1
	movi	a2, 0xf0
.LVL102:
	retw.n
.LVL103:
.L91:
	.loc 1 673 0
	movi.n	a2, 0
.LVL104:
	.loc 1 678 0
	retw.n
.LFE25:
	.size	dns_lookup, .-dns_lookup
	.section	.text.dns_alloc_random_port,"ax",@progbits
	.literal_position
	.literal .LC29, ip_addr_any_type
	.literal .LC30, dns_recv
	.align	4
	.type	dns_alloc_random_port, @function
dns_alloc_random_port:
.LFB29:
	.loc 1 889 0
	entry	sp, 32
.LCFI8:
	.loc 1 893 0
	movi.n	a10, 0x2e
	call8	udp_new_ip_type
.LVL105:
	mov.n	a2, a10
.LVL106:
	.loc 1 894 0
	beqz.n	a10, .L97
.L95:
.LBB3:
	.loc 1 899 0
	call8	esp_random
.LVL107:
	extui	a8, a10, 0, 16
.LVL108:
	.loc 1 900 0
	movi	a9, 0x3ff
	bgeu	a9, a8, .L98
	.loc 1 905 0
	mov.n	a12, a8
	l32r	a11, .LC29
	mov.n	a10, a2
.LVL109:
	call8	udp_bind
.LVL110:
	extui	a10, a10, 0, 8
.LVL111:
	j	.L94
.LVL112:
.L98:
	.loc 1 902 0
	movi	a10, 0xf8
.LVL113:
.L94:
.LBE3:
	.loc 1 906 0
	sext	a8, a10, 7
	movi.n	a9, -8
	beq	a8, a9, .L95
	.loc 1 907 0
	beqz.n	a10, .L96
	.loc 1 908 0
	mov.n	a10, a2
.LVL114:
	call8	udp_remove
.LVL115:
	.loc 1 909 0
	movi.n	a2, 0
.LVL116:
	retw.n
.LVL117:
.L96:
	.loc 1 911 0
	movi.n	a12, 0
	l32r	a11, .LC30
	mov.n	a10, a2
.LVL118:
	call8	udp_recv
.LVL119:
	.loc 1 912 0
	retw.n
.L97:
	.loc 1 896 0
	movi.n	a2, 0
.LVL120:
	.loc 1 913 0
	retw.n
.LFE29:
	.size	dns_alloc_random_port, .-dns_alloc_random_port
	.section	.text.dns_alloc_pcb,"ax",@progbits
	.literal_position
	.literal .LC31, dns_pcbs
	.literal .LC32, dns_last_pcb_idx
	.align	4
	.type	dns_alloc_pcb, @function
dns_alloc_pcb:
.LFB30:
	.loc 1 923 0
	entry	sp, 32
.LCFI9:
.LVL121:
	.loc 1 927 0
	movi.n	a2, 0
	j	.L100
.LVL122:
.L102:
	.loc 1 928 0
	l32r	a8, .LC31
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	beqz.n	a8, .L101
	.loc 1 927 0 discriminator 2
	addi.n	a2, a2, 1
.LVL123:
	extui	a2, a2, 0, 8
.LVL124:
.L100:
	.loc 1 927 0 is_stmt 0 discriminator 1
	bltui	a2, 4, .L102
.L101:
	.loc 1 932 0 is_stmt 1
	bgeui	a2, 4, .L103
	.loc 1 933 0
	call8	dns_alloc_random_port
.LVL125:
	l32r	a8, .LC31
	addx4	a8, a2, a8
	s32i.n	a10, a8, 0
	.loc 1 934 0
	beqz.n	a10, .L103
	.loc 1 936 0
	l32r	a8, .LC32
	s8i	a2, a8, 0
	.loc 1 937 0
	retw.n
.L103:
.LVL126:
	.loc 1 942 0
	l32r	a2, .LC32
	l8ui	a2, a2, 0
	addi.n	a2, a2, 1
	extui	a2, a2, 0, 8
.LVL127:
	movi.n	a8, 0
	j	.L105
.LVL128:
.L108:
	.loc 1 943 0
	bltui	a2, 4, .L106
	.loc 1 944 0
	movi.n	a2, 0
.LVL129:
.L106:
	.loc 1 946 0
	l32r	a9, .LC31
	addx4	a9, a2, a9
	l32i.n	a9, a9, 0
	beqz.n	a9, .L107
	.loc 1 947 0
	l32r	a8, .LC32
.LVL130:
	s8i	a2, a8, 0
	.loc 1 948 0
	retw.n
.LVL131:
.L107:
	.loc 1 942 0 discriminator 2
	addi.n	a8, a8, 1
.LVL132:
	extui	a8, a8, 0, 8
.LVL133:
	addi.n	a2, a2, 1
.LVL134:
	extui	a2, a2, 0, 8
.LVL135:
.L105:
	.loc 1 942 0 is_stmt 0 discriminator 1
	bltui	a8, 4, .L108
	.loc 1 951 0 is_stmt 1
	movi.n	a2, 4
.LVL136:
	.loc 1 952 0
	retw.n
.LFE30:
	.size	dns_alloc_pcb, .-dns_alloc_pcb
	.section	.text.dns_enqueue,"ax",@progbits
	.literal_position
	.literal .LC33, dns_table
	.literal .LC34, dns_requests
	.literal .LC35, dns_seqno
	.align	4
	.type	dns_enqueue, @function
dns_enqueue:
.LFB37:
	.loc 1 1366 0
.LVL137:
	entry	sp, 48
.LCFI10:
	s32i.n	a3, sp, 4
	s32i.n	a5, sp, 0
.LVL138:
	.loc 1 1376 0
	movi.n	a3, 0
.LVL139:
	j	.L111
.LVL140:
.L117:
	.loc 1 1377 0
	addx8	a8, a3, a3
	addx8	a8, a8, a3
	slli	a7, a8, 2
	l32r	a8, .LC33
	add.n	a7, a8, a7
	l8ui	a7, a7, 26
	bnei	a7, 2, .L112
	.loc 1 1378 0 discriminator 1
	addx8	a7, a3, a3
	addx8	a7, a7, a3
	slli	a11, a7, 2
	addi	a11, a11, 32
	movi	a12, 0x100
	add.n	a11, a8, a11
	mov.n	a10, a2
	call8	lwip_strnicmp
.LVL141:
	.loc 1 1377 0 discriminator 1
	bnez.n	a10, .L112
	.loc 1 1380 0
	addx8	a7, a3, a3
	addx8	a5, a7, a3
	slli	a7, a5, 2
	l32r	a5, .LC33
	add.n	a7, a5, a7
	movi	a5, 0x120
	add.n	a7, a7, a5
	l8ui	a5, a7, 0
	bne	a5, a6, .L112
	movi.n	a5, 0
	j	.L113
.LVL142:
.L116:
	.loc 1 1389 0
	mov.n	a9, a5
	addx2	a8, a5, a5
	slli	a7, a8, 2
	l32r	a8, .LC34
	add.n	a7, a8, a7
	l32i.n	a7, a7, 0
	bnez.n	a7, .L114
	.loc 1 1390 0
	mov.n	a5, a8
.LVL143:
	slli	a7, a9, 1
	add.n	a8, a7, a9
	slli	a2, a8, 2
.LVL144:
	mov.n	a8, a2
	add.n	a2, a5, a2
	s32i.n	a4, a2, 0
	.loc 1 1391 0
	l32i.n	a4, sp, 0
.LVL145:
	s32i.n	a4, a2, 4
	.loc 1 1392 0
	s8i	a3, a2, 8
	.loc 1 1393 0
	add.n	a2, a5, a8
	s8i	a6, a2, 9
	.loc 1 1395 0
	movi	a2, 0xfb
.LVL146:
	retw.n
.LVL147:
.L114:
	.loc 1 1388 0 discriminator 2
	addi.n	a5, a5, 1
.LVL148:
	extui	a5, a5, 0, 8
.LVL149:
.L113:
	.loc 1 1388 0 is_stmt 0 discriminator 1
	bltui	a5, 4, .L116
.LVL150:
.L112:
	.loc 1 1376 0 is_stmt 1 discriminator 2
	addi.n	a3, a3, 1
.LVL151:
	extui	a3, a3, 0, 8
.LVL152:
.L111:
	.loc 1 1376 0 is_stmt 0 discriminator 1
	bltui	a3, 4, .L117
	movi.n	a7, 0
	movi.n	a9, 4
	mov.n	a10, a7
	mov.n	a5, a7
	j	.L118
.LVL153:
.L121:
	.loc 1 1407 0 is_stmt 1
	addx8	a3, a5, a5
	slli	a3, a3, 3
	add.n	a3, a3, a5
	slli	a7, a3, 2
.LVL154:
	l32r	a3, .LC33
	add.n	a7, a7, a3
.LVL155:
	.loc 1 1409 0
	l8ui	a3, a7, 26
	beqz.n	a3, .L119
	.loc 1 1413 0
	bnei	a3, 3, .L120
.LBB4:
	.loc 1 1414 0
	addx8	a3, a5, a5
	addx8	a8, a3, a5
	slli	a3, a8, 2
	l32r	a8, .LC33
	add.n	a3, a8, a3
	l8ui	a8, a3, 30
	l32r	a3, .LC35
	l8ui	a3, a3, 0
	sub	a3, a3, a8
	extui	a3, a3, 0, 8
.LVL156:
	.loc 1 1415 0
	bgeu	a10, a3, .L120
	.loc 1 1417 0
	mov.n	a9, a5
.LVL157:
	.loc 1 1416 0
	mov.n	a10, a3
.LVL158:
.L120:
.LBE4:
	.loc 1 1406 0 discriminator 2
	addi.n	a5, a5, 1
.LVL159:
	extui	a5, a5, 0, 8
.LVL160:
.L118:
	.loc 1 1406 0 is_stmt 0 discriminator 1
	bltui	a5, 4, .L121
.L119:
	.loc 1 1423 0 is_stmt 1
	bnei	a5, 4, .L122
	.loc 1 1424 0
	bgeui	a9, 4, .L129
	.loc 1 1424 0 is_stmt 0 discriminator 1
	addx8	a5, a9, a9
.LVL161:
	addx8	a5, a5, a9
	slli	a3, a5, 2
	l32r	a5, .LC33
	add.n	a3, a5, a3
	l8ui	a3, a3, 26
	bnei	a3, 3, .L130
.LVL162:
	.loc 1 1431 0 is_stmt 1
	addx8	a3, a9, a9
	addx8	a3, a3, a9
	slli	a5, a3, 2
	l32r	a7, .LC33
.LVL163:
	add.n	a7, a5, a7
.LVL164:
	.loc 1 1430 0
	mov.n	a5, a9
.LVL165:
.L122:
	.loc 1 1438 0
	movi.n	a3, 0
	j	.L123
.LVL166:
.L126:
	.loc 1 1439 0
	addx2	a9, a3, a3
	slli	a8, a9, 2
	l32r	a9, .LC34
	add.n	a8, a9, a8
	l32i.n	a8, a8, 0
	bnez.n	a8, .L124
	.loc 1 1440 0
	addx2	a10, a3, a3
.LVL167:
	slli	a3, a10, 2
.LVL168:
	add.n	a3, a3, a9
.LVL169:
	.loc 1 1441 0
	j	.L125
.LVL170:
.L124:
	.loc 1 1438 0 discriminator 2
	addi.n	a3, a3, 1
.LVL171:
	extui	a3, a3, 0, 8
.LVL172:
.L123:
	.loc 1 1438 0 is_stmt 0 discriminator 1
	bltui	a3, 4, .L126
	.loc 1 1437 0 is_stmt 1
	movi.n	a3, 0
.LVL173:
.L125:
	.loc 1 1444 0
	beqz.n	a3, .L131
	.loc 1 1449 0
	s8i	a5, a3, 8
	.loc 1 1459 0
	movi.n	a8, 1
	s8i	a8, a7, 26
	.loc 1 1460 0
	l32r	a8, .LC35
	l8ui	a8, a8, 0
	s8i	a8, a7, 30
	.loc 1 1461 0
	addmi	a8, a7, 0x100
	s8i	a6, a8, 32
	.loc 1 1462 0
	s8i	a6, a3, 9
	.loc 1 1463 0
	s32i.n	a4, a3, 0
	.loc 1 1464 0
	l32i.n	a4, sp, 0
.LVL174:
	s32i.n	a4, a3, 4
	.loc 1 1465 0
	movi	a4, 0xff
	l32i.n	a6, sp, 4
.LVL175:
	minu	a4, a6, a4
.LVL176:
	.loc 1 1466 0
	mov.n	a12, a4
	mov.n	a11, a2
	addi	a10, a7, 32
	call8	memcpy
.LVL177:
	.loc 1 1467 0
	add.n	a4, a7, a4
.LVL178:
	movi.n	a2, 0
.LVL179:
	s8i	a2, a4, 32
	.loc 1 1470 0
	call8	dns_alloc_pcb
.LVL180:
	s8i	a10, a7, 31
	.loc 1 1471 0
	bltui	a10, 4, .L127
	.loc 1 1474 0
	s8i	a2, a7, 26
	.loc 1 1475 0
	movi.n	a2, 0
	s32i.n	a2, a3, 0
	.loc 1 1476 0
	movi	a2, 0xff
.LVL181:
	retw.n
.LVL182:
.L127:
	.loc 1 1485 0
	l32r	a3, .LC35
.LVL183:
	l8ui	a2, a3, 0
	addi.n	a2, a2, 1
	s8i	a2, a3, 0
	.loc 1 1488 0
	mov.n	a10, a5
	call8	dns_check_entry
.LVL184:
	.loc 1 1491 0
	movi	a2, 0xfb
	retw.n
.LVL185:
.L129:
	.loc 1 1427 0
	movi	a2, 0xff
.LVL186:
	retw.n
.LVL187:
.L130:
	movi	a2, 0xff
.LVL188:
	retw.n
.LVL189:
.L131:
	.loc 1 1447 0
	movi	a2, 0xff
.LVL190:
	.loc 1 1492 0
	retw.n
.LFE37:
	.size	dns_enqueue, .-dns_enqueue
	.section	.text.dns_compare_name,"ax",@progbits
	.literal_position
	.literal .LC36, 65535
	.align	4
	.type	dns_compare_name, @function
dns_compare_name:
.LFB26:
	.loc 1 693 0
.LVL191:
	entry	sp, 32
.LCFI11:
.LVL192:
.L136:
	.loc 1 698 0
	addi.n	a6, a4, 1
	extui	a6, a6, 0, 16
.LVL193:
	mov.n	a11, a4
	mov.n	a10, a3
	call8	pbuf_try_get_at
.LVL194:
	mov.n	a5, a10
.LVL195:
	.loc 1 699 0
	bltz	a10, .L137
	.loc 1 703 0
	movi	a4, 0xc0
	and	a8, a10, a4
	beq	a8, a4, .L138
	mov.n	a4, a6
	j	.L134
.LVL196:
.L135:
.LBB5:
	.loc 1 709 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	pbuf_try_get_at
.LVL197:
	.loc 1 710 0
	bltz	a10, .L139
	.loc 1 713 0
	l8ui	a6, a2, 0
	extui	a10, a10, 0, 8
.LVL198:
	bne	a6, a10, .L140
	.loc 1 716 0
	addi.n	a4, a4, 1
.LVL199:
	extui	a4, a4, 0, 16
.LVL200:
	.loc 1 717 0
	addi.n	a2, a2, 1
.LVL201:
	.loc 1 718 0
	addi.n	a5, a5, -1
.LVL202:
.L134:
.LBE5:
	.loc 1 708 0
	bgei	a5, 1, .L135
	.loc 1 720 0
	addi.n	a2, a2, 1
.LVL203:
	.loc 1 722 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	pbuf_try_get_at
.LVL204:
	.loc 1 723 0
	bltz	a10, .L141
	.loc 1 726 0
	bnez.n	a10, .L136
	.loc 1 728 0
	addi.n	a4, a4, 1
.LVL205:
	extui	a2, a4, 0, 16
.LVL206:
	retw.n
.LVL207:
.L137:
	.loc 1 700 0
	l32r	a2, .LC36
.LVL208:
	retw.n
.LVL209:
.L138:
	.loc 1 705 0
	l32r	a2, .LC36
.LVL210:
	retw.n
.LVL211:
.L139:
.LBB6:
	.loc 1 711 0
	l32r	a2, .LC36
.LVL212:
	retw.n
.LVL213:
.L140:
	.loc 1 714 0
	l32r	a2, .LC36
.LVL214:
	retw.n
.LVL215:
.L141:
.LBE6:
	.loc 1 724 0
	l32r	a2, .LC36
.LVL216:
	.loc 1 729 0
	retw.n
.LFE26:
	.size	dns_compare_name, .-dns_compare_name
	.section	.text.dns_skip_name,"ax",@progbits
	.literal_position
	.literal .LC37, 65535
	.align	4
	.type	dns_skip_name, @function
dns_skip_name:
.LFB27:
	.loc 1 740 0
.LVL217:
	entry	sp, 32
.LCFI12:
.LVL218:
.L145:
	.loc 1 745 0
	addi.n	a4, a3, 1
	extui	a4, a4, 0, 16
.LVL219:
	mov.n	a11, a3
	mov.n	a10, a2
	call8	pbuf_try_get_at
.LVL220:
	.loc 1 746 0
	bltz	a10, .L146
	.loc 1 750 0
	movi	a3, 0xc0
	and	a8, a10, a3
	beq	a8, a3, .L144
	.loc 1 755 0
	add.n	a3, a4, a10
	l16ui	a8, a2, 8
	bge	a3, a8, .L147
	.loc 1 758 0
	extui	a10, a10, 0, 16
.LVL221:
	add.n	a3, a4, a10
	extui	a3, a3, 0, 16
.LVL222:
	.loc 1 760 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	pbuf_try_get_at
.LVL223:
	.loc 1 761 0
	bltz	a10, .L148
	.loc 1 764 0
	bnez.n	a10, .L145
	.loc 1 758 0
	mov.n	a4, a3
.LVL224:
.L144:
	.loc 1 766 0
	addi.n	a3, a4, 1
	extui	a2, a3, 0, 16
.LVL225:
	retw.n
.LVL226:
.L146:
	.loc 1 747 0
	l32r	a2, .LC37
.LVL227:
	retw.n
.LVL228:
.L147:
	.loc 1 756 0
	l32r	a2, .LC37
.LVL229:
	retw.n
.LVL230:
.L148:
	.loc 1 762 0
	l32r	a2, .LC37
.LVL231:
	.loc 1 767 0
	retw.n
.LFE27:
	.size	dns_skip_name, .-dns_skip_name
	.section	.text.dns_recv,"ax",@progbits
	.literal_position
	.literal .LC38, dns_table
	.literal .LC39, dns_servers
	.literal .LC40, 65535
	.literal .LC41, 7168
	.literal .LC42, 4096
	.align	4
	.type	dns_recv, @function
dns_recv:
.LFB36:
	.loc 1 1181 0
.LVL232:
	entry	sp, 80
.LCFI13:
	.loc 1 1195 0
	l16ui	a8, a4, 8
	movi.n	a9, 0xf
	bgeu	a9, a8, .L150
	.loc 1 1202 0
	movi.n	a13, 0
	movi.n	a12, 0xc
	mov.n	a11, sp
	mov.n	a10, a4
	call8	pbuf_copy_partial
.LVL233:
	bnei	a10, 12, .L150
	.loc 1 1204 0
	l16ui	a10, sp, 0
	call8	lwip_htons
.LVL234:
	.loc 1 1205 0
	movi.n	a8, 0
	j	.L151
.LVL235:
.L169:
.LBB7:
	.loc 1 1206 0
	mov.n	a2, a8
.LVL236:
	.loc 1 1207 0
	addx8	a11, a8, a8
	addx8	a11, a11, a8
	slli	a9, a11, 2
	l32r	a11, .LC38
	add.n	a9, a11, a9
	l8ui	a9, a9, 26
	bnei	a9, 2, .L152
.LVL237:
	.loc 1 1208 0 discriminator 1
	addx8	a11, a8, a8
	addx8	a11, a11, a8
	slli	a9, a11, 2
	l32r	a11, .LC38
	add.n	a9, a11, a9
	l16ui	a9, a9, 24
	.loc 1 1207 0 discriminator 1
	bne	a10, a9, .L152
	.loc 1 1212 0
	l16ui	a10, sp, 4
.LVL238:
	call8	lwip_htons
.LVL239:
	mov.n	a6, a10
.LVL240:
	.loc 1 1213 0
	l16ui	a10, sp, 6
	call8	lwip_htons
.LVL241:
	mov.n	a3, a10
.LVL242:
	.loc 1 1216 0
	l8ui	a8, sp, 2
	sext	a8, a8, 7
	bgez	a8, .L150
	.loc 1 1220 0
	bnei	a6, 1, .L150
	.loc 1 1231 0
	l8ui	a9, a5, 16
	addx8	a8, a2, a2
	addx8	a8, a8, a2
	slli	a6, a8, 2
.LVL243:
	l32r	a8, .LC38
	add.n	a6, a8, a6
	l8ui	a8, a6, 27
	addx4	a10, a8, a8
	slli	a6, a10, 2
	l32r	a10, .LC39
	add.n	a6, a10, a6
	l8ui	a6, a6, 16
	bne	a9, a6, .L170
	.loc 1 1231 0 is_stmt 0 discriminator 1
	bnei	a9, 6, .L154
	.loc 1 1231 0 discriminator 3
	l32i.n	a10, a5, 0
	addx4	a9, a8, a8
	slli	a6, a9, 2
	l32r	a9, .LC39
	add.n	a6, a9, a6
	l32i.n	a6, a6, 0
	bne	a10, a6, .L171
	.loc 1 1231 0 discriminator 6
	l32i.n	a10, a5, 4
	addx4	a9, a8, a8
	slli	a6, a9, 2
	l32r	a9, .LC39
	add.n	a6, a9, a6
	l32i.n	a6, a6, 4
	bne	a10, a6, .L172
	.loc 1 1231 0 discriminator 8
	l32i.n	a10, a5, 8
	addx4	a9, a8, a8
	slli	a6, a9, 2
	l32r	a9, .LC39
	add.n	a6, a9, a6
	l32i.n	a6, a6, 8
	bne	a10, a6, .L173
	.loc 1 1231 0 discriminator 10
	l32i.n	a6, a5, 12
	addx4	a8, a8, a8
	slli	a5, a8, 2
.LVL244:
	add.n	a5, a9, a5
	l32i.n	a5, a5, 12
	beq	a6, a5, .L174
	.loc 1 1231 0
	movi.n	a5, 1
	j	.L153
.LVL245:
.L171:
	movi.n	a5, 1
.LVL246:
	j	.L153
.LVL247:
.L172:
	movi.n	a5, 1
.LVL248:
	j	.L153
.LVL249:
.L173:
	movi.n	a5, 1
.LVL250:
	j	.L153
.L174:
	movi.n	a5, 0
	j	.L153
.LVL251:
.L154:
	.loc 1 1231 0 discriminator 4
	l32i.n	a5, a5, 0
.LVL252:
	addx4	a8, a8, a8
	slli	a6, a8, 2
	l32r	a8, .LC39
	add.n	a6, a8, a6
	l32i.n	a8, a6, 0
	sub	a8, a5, a8
	movi.n	a5, 0
	movi.n	a6, 1
	movnez	a5, a6, a8
	extui	a5, a5, 0, 8
	j	.L153
.LVL253:
.L170:
	.loc 1 1231 0
	movi.n	a5, 1
.LVL254:
.L153:
	.loc 1 1231 0 discriminator 18
	bnez.n	a5, .L150
	.loc 1 1238 0 is_stmt 1
	addx8	a6, a2, a2
	addx8	a6, a6, a2
	slli	a5, a6, 2
	addi	a5, a5, 32
	movi.n	a12, 0xc
	mov.n	a11, a4
	l32r	a10, .LC38
	add.n	a10, a10, a5
	call8	dns_compare_name
.LVL255:
	mov.n	a5, a10
.LVL256:
	.loc 1 1239 0
	l32r	a6, .LC40
	beq	a10, a6, .L150
	.loc 1 1245 0
	mov.n	a13, a10
	movi.n	a12, 4
	addi	a11, sp, 24
	mov.n	a10, a4
	call8	pbuf_copy_partial
.LVL257:
	bnei	a10, 4, .L150
	.loc 1 1248 0
	l16ui	a6, sp, 26
	bnei	a6, 256, .L150
	.loc 1 1249 0 discriminator 1
	addx8	a8, a2, a2
	addx8	a8, a8, a2
	slli	a6, a8, 2
	l32r	a8, .LC38
	add.n	a6, a8, a6
	movi	a8, 0x120
	add.n	a6, a6, a8
	l8ui	a6, a6, 0
	addi	a10, a6, -3
	movi.n	a11, 1
	movi.n	a8, 0
	mov.n	a9, a8
	moveqz	a9, a11, a10
	mov.n	a10, a9
	addi.n	a9, a6, -1
	moveqz	a8, a11, a9
	or	a8, a10, a8
	.loc 1 1248 0 discriminator 1
	beqz.n	a8, .L156
	.loc 1 1249 0
	l16ui	a9, sp, 24
	l32r	a8, .LC41
	bne	a9, a8, .L150
.L156:
	.loc 1 1250 0 discriminator 1
	addi	a8, a6, -3
	movi.n	a10, 1
	movi.n	a9, 0
	mov.n	a11, a9
	movnez	a11, a10, a8
	addi.n	a6, a6, -1
	movnez	a9, a10, a6
	mov.n	a6, a9
	.loc 1 1249 0 discriminator 1
	bnone	a11, a9, .L157
	.loc 1 1250 0
	l16ui	a6, sp, 24
	bnei	a6, 256, .L150
.L157:
	.loc 1 1255 0
	addi.n	a5, a5, 4
.LVL258:
	extui	a11, a5, 0, 16
.LVL259:
	.loc 1 1258 0
	l8ui	a5, sp, 3
.LVL260:
	extui	a5, a5, 0, 4
	beqz.n	a5, .L159
	j	.L158
.L166:
	.loc 1 1263 0
	mov.n	a10, a4
	call8	dns_skip_name
.LVL261:
	mov.n	a5, a10
.LVL262:
	.loc 1 1264 0
	l32r	a6, .LC40
	beq	a10, a6, .L150
	.loc 1 1269 0
	mov.n	a13, a10
	movi.n	a12, 0xa
	addi.n	a11, sp, 12
	mov.n	a10, a4
	call8	pbuf_copy_partial
.LVL263:
	bnei	a10, 10, .L150
	.loc 1 1272 0
	addi.n	a5, a5, 10
.LVL264:
	extui	a5, a5, 0, 16
.LVL265:
	.loc 1 1274 0
	l16ui	a6, sp, 14
	bnei	a6, 256, .L160
	.loc 1 1276 0
	l16ui	a9, sp, 12
	bnei	a9, 256, .L161
	.loc 1 1276 0 is_stmt 0 discriminator 1
	l16ui	a8, sp, 20
	movi	a6, 0x400
	bne	a8, a6, .L161
	.loc 1 1278 0 is_stmt 1
	addx8	a8, a2, a2
	addx8	a8, a8, a2
	slli	a6, a8, 2
	l32r	a8, .LC38
	add.n	a6, a8, a6
	movi	a8, 0x120
	add.n	a6, a6, a8
	l8ui	a6, a6, 0
	addi	a8, a6, -3
	movi.n	a11, 1
	movi.n	a10, 0
	mov.n	a12, a10
	movnez	a12, a11, a8
	addi.n	a6, a6, -1
	movnez	a10, a11, a6
	mov.n	a6, a10
	bnone	a12, a10, .L161
.LBB8:
	.loc 1 1283 0
	mov.n	a13, a5
	movi.n	a12, 4
	addi	a11, sp, 28
	mov.n	a10, a4
	call8	pbuf_copy_partial
.LVL266:
	bnei	a10, 4, .L150
	.loc 1 1286 0
	addx8	a3, a2, a2
.LVL267:
	slli	a3, a3, 3
	add.n	a3, a3, a2
	slli	a5, a3, 2
.LVL268:
	l32r	a3, .LC38
	add.n	a3, a3, a5
	l32i.n	a5, sp, 28
	s32i.n	a5, a3, 4
	movi.n	a5, 0
	s8i	a5, a3, 20
	.loc 1 1287 0
	mov.n	a10, a4
	call8	pbuf_free
.LVL269:
	.loc 1 1289 0
	l32i.n	a10, sp, 16
	call8	lwip_htonl
.LVL270:
	mov.n	a11, a10
	mov.n	a10, a2
	call8	dns_correct_response
.LVL271:
	retw.n
.LVL272:
.L161:
.LBE8:
	.loc 1 1295 0
	l32r	a6, .LC41
	bne	a9, a6, .L160
	.loc 1 1295 0 is_stmt 0 discriminator 1
	l16ui	a8, sp, 20
	l32r	a6, .LC42
	bne	a8, a6, .L160
	.loc 1 1297 0 is_stmt 1
	addx8	a8, a2, a2
	addx8	a8, a8, a2
	slli	a6, a8, 2
	l32r	a8, .LC38
	add.n	a6, a8, a6
	movi	a8, 0x120
	add.n	a6, a6, a8
	l8ui	a6, a6, 0
	addi	a9, a6, -3
	movi.n	a11, 1
	movi.n	a10, 0
	mov.n	a8, a10
	moveqz	a8, a11, a9
	mov.n	a9, a8
	addi.n	a8, a6, -1
	mov.n	a6, a10
	moveqz	a6, a11, a8
	or	a6, a9, a6
	beq	a6, a10, .L160
.LBB9:
	.loc 1 1302 0
	mov.n	a13, a5
	movi.n	a12, 0x10
	addi	a11, sp, 28
	mov.n	a10, a4
	call8	pbuf_copy_partial
.LVL273:
	bnei	a10, 16, .L150
	.loc 1 1305 0
	addx8	a5, a2, a2
.LVL274:
	slli	a5, a5, 3
	add.n	a5, a5, a2
	slli	a3, a5, 2
.LVL275:
	l32r	a5, .LC38
	add.n	a3, a5, a3
	l32i.n	a5, sp, 28
	s32i.n	a5, a3, 4
	l32i.n	a5, sp, 32
	s32i.n	a5, a3, 8
	l32i.n	a5, sp, 36
	s32i.n	a5, a3, 12
	l32i.n	a5, sp, 40
	s32i.n	a5, a3, 16
	movi.n	a5, 6
	s8i	a5, a3, 20
	.loc 1 1306 0
	mov.n	a10, a4
	call8	pbuf_free
.LVL276:
	.loc 1 1308 0
	l32i.n	a10, sp, 16
	call8	lwip_htonl
.LVL277:
	mov.n	a11, a10
	mov.n	a10, a2
	call8	dns_correct_response
.LVL278:
	retw.n
.LVL279:
.L160:
.LBE9:
	.loc 1 1315 0
	l16ui	a10, sp, 20
	call8	lwip_htons
.LVL280:
	add.n	a10, a5, a10
	l32r	a6, .LC40
	blt	a6, a10, .L150
	.loc 1 1318 0
	l16ui	a10, sp, 20
	call8	lwip_htons
.LVL281:
	add.n	a10, a5, a10
	extui	a11, a10, 0, 16
.LVL282:
	.loc 1 1319 0
	addi.n	a3, a3, -1
.LVL283:
	extui	a3, a3, 0, 16
.LVL284:
.L159:
	.loc 1 1261 0
	beqz.n	a3, .L165
	.loc 1 1261 0 is_stmt 0 discriminator 1
	l16ui	a5, a4, 8
	bltu	a11, a5, .L166
.L165:
	.loc 1 1322 0 is_stmt 1
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a3, a5, 2
.LVL285:
	l32r	a5, .LC38
	add.n	a3, a5, a3
	movi	a5, 0x120
	add.n	a3, a3, a5
	l8ui	a5, a3, 0
	addi	a3, a5, -2
	extui	a3, a3, 0, 8
	bgeui	a3, 2, .L158
	.loc 1 1324 0
	bnei	a5, 2, .L167
	.loc 1 1326 0
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a3, a5, 2
	l32r	a5, .LC38
	add.n	a3, a5, a3
	movi	a5, 0x120
	add.n	a3, a3, a5
	movi.n	a5, 1
	s8i	a5, a3, 0
	j	.L168
.L167:
	.loc 1 1329 0
	addx8	a5, a2, a2
	addx8	a5, a5, a2
	slli	a3, a5, 2
	l32r	a5, .LC38
	add.n	a3, a5, a3
	movi	a5, 0x120
	add.n	a3, a3, a5
	movi.n	a5, 0
	s8i	a5, a3, 0
.L168:
	.loc 1 1331 0
	mov.n	a10, a4
	call8	pbuf_free
.LVL286:
	.loc 1 1332 0
	addx8	a4, a2, a2
.LVL287:
	addx8	a4, a4, a2
	slli	a3, a4, 2
	l32r	a4, .LC38
	add.n	a3, a4, a3
	movi.n	a4, 1
	s8i	a4, a3, 26
	.loc 1 1333 0
	mov.n	a10, a2
	call8	dns_check_entry
.LVL288:
	.loc 1 1334 0
	retw.n
.LVL289:
.L158:
	.loc 1 1340 0
	mov.n	a10, a4
	call8	pbuf_free
.LVL290:
	.loc 1 1341 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	dns_call_found
.LVL291:
	.loc 1 1342 0
	addx8	a3, a2, a2
	addx8	a2, a3, a2
.LVL292:
	slli	a3, a2, 2
	l32r	a2, .LC38
	add.n	a3, a2, a3
	movi.n	a2, 0
	s8i	a2, a3, 26
	.loc 1 1343 0
	retw.n
.LVL293:
.L152:
.LBE7:
	.loc 1 1205 0 discriminator 2
	addi.n	a8, a8, 1
	extui	a8, a8, 0, 8
.LVL294:
.L151:
	.loc 1 1205 0 is_stmt 0 discriminator 1
	bltui	a8, 4, .L169
.LVL295:
.L150:
	.loc 1 1350 0 is_stmt 1
	mov.n	a10, a4
	call8	pbuf_free
.LVL296:
	retw.n
.LFE36:
	.size	dns_recv, .-dns_recv
	.section	.text.dns_init,"ax",@progbits
	.align	4
	.global	dns_init
	.type	dns_init, @function
dns_init:
.LFB20:
	.loc 1 319 0
	entry	sp, 32
.LCFI14:
	retw.n
.LFE20:
	.size	dns_init, .-dns_init
	.section	.text.dns_setserver,"ax",@progbits
	.literal_position
	.literal .LC43, dns_servers
	.literal .LC44, ip_addr_any
	.align	4
	.global	dns_setserver
	.type	dns_setserver, @function
dns_setserver:
.LFB21:
	.loc 1 377 0
.LVL297:
	.loc 1 377 0
	entry	sp, 32
.LCFI15:
	extui	a2, a2, 0, 8
	.loc 1 378 0
	bgeui	a2, 3, .L176
	.loc 1 379 0
	beqz.n	a3, .L178
	.loc 1 380 0
	addx4	a2, a2, a2
.LVL298:
	slli	a8, a2, 2
	mov.n	a2, a8
	movi.n	a12, 0x14
	mov.n	a11, a3
	l32r	a10, .LC43
	add.n	a10, a10, a8
	call8	memcpy
.LVL299:
	retw.n
.L178:
	.loc 1 382 0
	addx4	a2, a2, a2
	slli	a3, a2, 2
.LVL300:
	mov.n	a2, a3
	movi.n	a12, 0x14
	l32r	a11, .LC44
	l32r	a10, .LC43
	add.n	a10, a10, a3
	call8	memcpy
.LVL301:
.L176:
	retw.n
.LFE21:
	.size	dns_setserver, .-dns_setserver
	.section	.text.dns_clear_servers,"ax",@progbits
	.align	4
	.global	dns_clear_servers
	.type	dns_clear_servers, @function
dns_clear_servers:
.LFB22:
	.loc 1 390 0
.LVL302:
	entry	sp, 32
.LCFI16:
	extui	a2, a2, 0, 8
.LVL303:
	.loc 1 393 0
	movi.n	a3, 0
	j	.L180
.LVL304:
.L182:
	.loc 1 394 0
	addi	a9, a3, -2
	movi.n	a8, 0
	movi.n	a10, 1
	moveqz	a8, a10, a9
	bany	a8, a2, .L181
	.loc 1 398 0
	movi.n	a11, 0
	mov.n	a10, a3
	call8	dns_setserver
.LVL305:
.L181:
	.loc 1 393 0 discriminator 2
	addi.n	a3, a3, 1
.LVL306:
	extui	a3, a3, 0, 8
.LVL307:
.L180:
	.loc 1 393 0 is_stmt 0 discriminator 1
	bltui	a3, 3, .L182
	.loc 1 400 0 is_stmt 1
	retw.n
.LFE22:
	.size	dns_clear_servers, .-dns_clear_servers
	.section	.text.dns_getserver,"ax",@progbits
	.literal_position
	.literal .LC45, dns_servers
	.literal .LC46, ip_addr_any
	.align	4
	.global	dns_getserver
	.type	dns_getserver, @function
dns_getserver:
.LFB23:
	.loc 1 414 0
.LVL308:
	entry	sp, 32
.LCFI17:
	extui	a3, a3, 0, 8
	.loc 1 415 0
	bgeui	a3, 3, .L184
	.loc 1 416 0
	addx4	a3, a3, a3
.LVL309:
	slli	a8, a3, 2
	mov.n	a3, a8
	movi.n	a12, 0x14
	l32r	a11, .LC45
	add.n	a11, a11, a8
	mov.n	a10, a2
	call8	memcpy
.LVL310:
	retw.n
.L184:
	.loc 1 418 0
	movi.n	a12, 0x14
	l32r	a11, .LC46
	mov.n	a10, a2
	call8	memcpy
.LVL311:
	.loc 1 420 0
	retw.n
.LFE23:
	.size	dns_getserver, .-dns_getserver
	.section	.text.dns_tmr,"ax",@progbits
	.align	4
	.global	dns_tmr
	.type	dns_tmr, @function
dns_tmr:
.LFB24:
	.loc 1 440 0
	entry	sp, 32
.LCFI18:
	.loc 1 442 0
	call8	dns_check_entries
.LVL312:
	retw.n
.LFE24:
	.size	dns_tmr, .-dns_tmr
	.section	.rodata.str1.4
	.align	4
.LC47:
	.string	"localhost"
	.section	.text.dns_gethostbyname_addrtype,"ax",@progbits
	.literal_position
	.literal .LC48, .LC47
	.literal .LC49, 16777216
	.literal .LC50, 16777343
	.align	4
	.global	dns_gethostbyname_addrtype
	.type	dns_gethostbyname_addrtype, @function
dns_gethostbyname_addrtype:
.LFB40:
	.loc 1 1551 0
.LVL313:
	entry	sp, 32
.LCFI19:
	extui	a6, a6, 0, 8
	.loc 1 1558 0
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a3
	.loc 1 1559 0
	movnez	a8, a10, a2
	.loc 1 1558 0
	or	a8, a8, a9
	.loc 1 1558 0
	bne	a8, a10, .L196
	.loc 1 1559 0
	l8ui	a7, a2, 0
	beq	a7, a10, .L197
	.loc 1 1567 0
	mov.n	a10, a2
	call8	strlen
.LVL314:
	mov.n	a7, a10
.LVL315:
	.loc 1 1568 0
	movi	a8, 0xff
	bltu	a8, a10, .L198
	.loc 1 1575 0
	l32r	a11, .LC48
	mov.n	a10, a2
	call8	strcmp
.LVL316:
	bnez.n	a10, .L189
	.loc 1 1576 0
	addi	a2, a6, -3
.LVL317:
	movi.n	a7, 1
.LVL318:
	movi.n	a5, 0
.LVL319:
	mov.n	a4, a5
.LVL320:
	moveqz	a4, a7, a2
	mov.n	a2, a4
	addi.n	a4, a6, -1
	mov.n	a6, a5
.LVL321:
	moveqz	a6, a7, a4
	or	a6, a6, a2
	beq	a6, a5, .L190
	.loc 1 1576 0 is_stmt 0 discriminator 1
	s32i.n	a5, a3, 0
	s32i.n	a5, a3, 4
	s32i.n	a5, a3, 8
	l32r	a2, .LC49
	s32i.n	a2, a3, 12
	beq	a3, a5, .L199
	.loc 1 1576 0 is_stmt 1 discriminator 3
	movi.n	a2, 6
	s8i	a2, a3, 16
	.loc 1 1577 0 discriminator 3
	mov.n	a10, a5
	j	.L188
.L190:
	.loc 1 1576 0 discriminator 2
	l32r	a2, .LC50
	s32i.n	a2, a3, 0
	beqz.n	a3, .L200
	.loc 1 1576 0 discriminator 4
	movi.n	a2, 0
	s8i	a2, a3, 16
	.loc 1 1577 0 discriminator 4
	movi.n	a10, 0
	j	.L188
.LVL322:
.L189:
	.loc 1 1582 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	ipaddr_aton
.LVL323:
	beqz.n	a10, .L191
	.loc 1 1584 0
	beqz.n	a3, .L192
	.loc 1 1584 0 discriminator 1
	l8ui	a8, a3, 16
	bnei	a8, 6, .L192
	.loc 1 1584 0 is_stmt 0 discriminator 3
	bnez.n	a6, .L201
.L192:
	.loc 1 1584 0 discriminator 5
	beqz.n	a3, .L193
	.loc 1 1585 0 is_stmt 1
	l8ui	a8, a3, 16
	bnez.n	a8, .L191
.L193:
	.loc 1 1585 0 is_stmt 0 discriminator 1
	bnei	a6, 1, .L202
.L191:
	.loc 1 1592 0 is_stmt 1
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a2
	call8	dns_lookup
.LVL324:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L188
	.loc 1 1596 0
	addi	a8, a6, -2
	extui	a8, a8, 0, 8
	bgeui	a8, 2, .L194
.LBB10:
	.loc 1 1599 0
	bnei	a6, 2, .L203
	.loc 1 1600 0
	movi.n	a12, 1
	j	.L195
.L203:
	.loc 1 1602 0
	movi.n	a12, 0
.L195:
.LVL325:
	.loc 1 1604 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	dns_lookup
.LVL326:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L188
.L194:
.LBE10:
	.loc 1 1624 0
	call8	dns_server_is_set
.LVL327:
	beqz.n	a10, .L204
	.loc 1 1633 0
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a7
	mov.n	a10, a2
	call8	dns_enqueue
.LVL328:
	extui	a10, a10, 0, 8
	j	.L188
.LVL329:
.L196:
	.loc 1 1560 0
	movi	a10, 0xf0
	j	.L188
.L197:
	movi	a10, 0xf0
	j	.L188
.LVL330:
.L198:
	.loc 1 1570 0
	movi	a10, 0xf0
	j	.L188
.LVL331:
.L199:
	.loc 1 1577 0
	movi.n	a10, 0
	j	.L188
.L200:
	movi.n	a10, 0
	j	.L188
.LVL332:
.L201:
	.loc 1 1588 0
	movi.n	a10, 0
	j	.L188
.L202:
	movi.n	a10, 0
	j	.L188
.L204:
	.loc 1 1628 0
	movi	a10, 0xfa
.LVL333:
.L188:
	.loc 1 1635 0
	mov.n	a2, a10
	retw.n
.LFE40:
	.size	dns_gethostbyname_addrtype, .-dns_gethostbyname_addrtype
	.section	.text.dns_gethostbyname,"ax",@progbits
	.align	4
	.global	dns_gethostbyname
	.type	dns_gethostbyname, @function
dns_gethostbyname:
.LFB38:
	.loc 1 1517 0
.LVL334:
	entry	sp, 32
.LCFI20:
	.loc 1 1518 0
	movi.n	a14, 2
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	dns_gethostbyname_addrtype
.LVL335:
	.loc 1 1519 0
	extui	a2, a10, 0, 8
.LVL336:
	retw.n
.LFE38:
	.size	dns_gethostbyname, .-dns_gethostbyname
	.section	.rodata.__func__$6618,"a",@progbits
	.align	4
	.type	__func__$6618, @object
	.size	__func__$6618, 9
__func__$6618:
	.string	"dns_send"
	.section	.rodata.__func__$6652,"a",@progbits
	.align	4
	.type	__func__$6652, @object
	.size	__func__$6652, 15
__func__$6652:
	.string	"dns_call_found"
	.section	.rodata.__func__$6674,"a",@progbits
	.align	4
	.type	__func__$6674, @object
	.size	__func__$6674, 16
__func__$6674:
	.string	"dns_check_entry"
	.global	dns_mquery_v6group
	.section	.rodata.dns_mquery_v6group,"a",@progbits
	.align	4
	.type	dns_mquery_v6group, @object
	.size	dns_mquery_v6group, 20
dns_mquery_v6group:
	.word	767
	.word	0
	.word	0
	.word	-83886080
	.byte	6
	.zero	3
	.global	dns_mquery_v4group
	.section	.rodata.dns_mquery_v4group,"a",@progbits
	.align	4
	.type	dns_mquery_v4group, @object
	.size	dns_mquery_v4group, 20
dns_mquery_v4group:
	.word	-83885856
	.word	0
	.word	0
	.word	0
	.byte	0
	.zero	3
	.section	.bss.dns_servers,"aw",@nobits
	.align	4
	.type	dns_servers, @object
	.size	dns_servers, 60
dns_servers:
	.zero	60
	.section	.bss.dns_requests,"aw",@nobits
	.align	4
	.type	dns_requests, @object
	.size	dns_requests, 48
dns_requests:
	.zero	48
	.section	.bss.dns_table,"aw",@nobits
	.align	4
	.type	dns_table, @object
	.size	dns_table, 1168
dns_table:
	.zero	1168
	.section	.bss.dns_seqno,"aw",@nobits
	.type	dns_seqno, @object
	.size	dns_seqno, 1
dns_seqno:
	.zero	1
	.section	.bss.dns_last_pcb_idx,"aw",@nobits
	.type	dns_last_pcb_idx, @object
	.size	dns_last_pcb_idx, 1
dns_last_pcb_idx:
	.zero	1
	.section	.bss.dns_pcbs,"aw",@nobits
	.align	4
	.type	dns_pcbs, @object
	.size	dns_pcbs, 16
dns_pcbs:
	.zero	16
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
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI0-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI1-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI2-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI3-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI4-.LFB28
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI5-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI6-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI7-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI8-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI9-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI10-.LFB37
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI11-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI12-.LFB27
	.byte	0xe
	.uleb128 0x20
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI14-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI15-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI16-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI17-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI18-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI19-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI20-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/err.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/pbuf.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/memp.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/udp.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/dns.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/prot/dns.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_system.h"
	.file 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.file 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/def.h"
	.file 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1bbd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF244
	.byte	0xc
	.4byte	.LASF245
	.4byte	.LASF246
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
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbc
	.uleb128 0x7
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.4byte	0xca
	.uleb128 0x8
	.4byte	0xbd
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0x10c
	.uleb128 0x9
	.4byte	0x117
	.uleb128 0xa
	.4byte	0xad
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF22
	.uleb128 0xb
	.4byte	0xad
	.4byte	0x12e
	.uleb128 0xc
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x5
	.byte	0x39
	.4byte	0xcf
	.uleb128 0xd
	.byte	0x4
	.4byte	0x3e
	.byte	0x5
	.byte	0x3d
	.4byte	0x1ac
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0
	.uleb128 0xf
	.4byte	.LASF25
	.sleb128 -1
	.uleb128 0xf
	.4byte	.LASF26
	.sleb128 -2
	.uleb128 0xf
	.4byte	.LASF27
	.sleb128 -3
	.uleb128 0xf
	.4byte	.LASF28
	.sleb128 -4
	.uleb128 0xf
	.4byte	.LASF29
	.sleb128 -5
	.uleb128 0xf
	.4byte	.LASF30
	.sleb128 -6
	.uleb128 0xf
	.4byte	.LASF31
	.sleb128 -7
	.uleb128 0xf
	.4byte	.LASF32
	.sleb128 -8
	.uleb128 0xf
	.4byte	.LASF33
	.sleb128 -9
	.uleb128 0xf
	.4byte	.LASF34
	.sleb128 -10
	.uleb128 0xf
	.4byte	.LASF35
	.sleb128 -11
	.uleb128 0xf
	.4byte	.LASF36
	.sleb128 -12
	.uleb128 0xf
	.4byte	.LASF37
	.sleb128 -13
	.uleb128 0xf
	.4byte	.LASF38
	.sleb128 -14
	.uleb128 0xf
	.4byte	.LASF39
	.sleb128 -15
	.uleb128 0xf
	.4byte	.LASF40
	.sleb128 -16
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x30
	.byte	0x6
	.byte	0x48
	.4byte	0x1d7
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x30
	.byte	0x6
	.byte	0x65
	.4byte	0x1fc
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x18
	.byte	0x6
	.byte	0x8e
	.4byte	0x275
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0x6
	.byte	0x90
	.4byte	0x275
	.byte	0
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x6
	.byte	0x93
	.4byte	0xad
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF52
	.byte	0x6
	.byte	0x9c
	.4byte	0xf0
	.byte	0x8
	.uleb128 0x12
	.string	"len"
	.byte	0x6
	.byte	0x9f
	.4byte	0xf0
	.byte	0xa
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x6
	.byte	0xa2
	.4byte	0xda
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF54
	.byte	0x6
	.byte	0xa5
	.4byte	0xda
	.byte	0xd
	.uleb128 0x12
	.string	"ref"
	.byte	0x6
	.byte	0xac
	.4byte	0xf0
	.byte	0xe
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0x6
	.byte	0xaf
	.4byte	0x413
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0x6
	.byte	0xb0
	.4byte	0xad
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1fc
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0xf0
	.byte	0x7
	.byte	0xeb
	.4byte	0x413
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0x7
	.byte	0xed
	.4byte	0x413
	.byte	0
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x7
	.byte	0xf1
	.4byte	0x4d8
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x7
	.byte	0xf2
	.4byte	0x4d8
	.byte	0x18
	.uleb128 0x12
	.string	"gw"
	.byte	0x7
	.byte	0xf3
	.4byte	0x4d8
	.byte	0x2c
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x7
	.byte	0xf7
	.4byte	0x6bb
	.byte	0x40
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x7
	.byte	0xfa
	.4byte	0x6cb
	.byte	0x7c
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x7
	.byte	0xfc
	.4byte	0x6eb
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x102
	.4byte	0x5a8
	.byte	0x84
	.uleb128 0x13
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x108
	.4byte	0x5cd
	.byte	0x88
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x10d
	.4byte	0x637
	.byte	0x8c
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x113
	.4byte	0x602
	.byte	0x90
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x125
	.4byte	0xad
	.byte	0x94
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x127
	.4byte	0x11e
	.byte	0x98
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x12b
	.4byte	0x79a
	.byte	0xa4
	.uleb128 0x13
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x12c
	.4byte	0x6b0
	.byte	0xa8
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x131
	.4byte	0xda
	.byte	0xac
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x135
	.4byte	0xda
	.byte	0xad
	.uleb128 0x13
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x139
	.4byte	0xc4
	.byte	0xb0
	.uleb128 0x14
	.string	"mtu"
	.byte	0x7
	.2byte	0x13f
	.4byte	0xf0
	.byte	0xb4
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x141
	.4byte	0xda
	.byte	0xb6
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x143
	.4byte	0x7a0
	.byte	0xb7
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x7
	.2byte	0x145
	.4byte	0xda
	.byte	0xbd
	.uleb128 0x13
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x147
	.4byte	0x7b0
	.byte	0xbe
	.uleb128 0x14
	.string	"num"
	.byte	0x7
	.2byte	0x149
	.4byte	0xda
	.byte	0xc0
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x157
	.4byte	0x65c
	.byte	0xc4
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x15c
	.4byte	0x686
	.byte	0xc8
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x163
	.4byte	0x275
	.byte	0xcc
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x164
	.4byte	0x275
	.byte	0xd0
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x166
	.4byte	0xf0
	.byte	0xd4
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x16b
	.4byte	0x106
	.byte	0xd8
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x16c
	.4byte	0x4d8
	.byte	0xdc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x27b
	.uleb128 0x10
	.4byte	.LASF85
	.byte	0x4
	.byte	0x8
	.byte	0x33
	.4byte	0x432
	.uleb128 0x11
	.4byte	.LASF86
	.byte	0x8
	.byte	0x34
	.4byte	0xfb
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0x8
	.byte	0x39
	.4byte	0x419
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x10
	.byte	0x9
	.byte	0x3a
	.4byte	0x456
	.uleb128 0x11
	.4byte	.LASF86
	.byte	0x9
	.byte	0x3b
	.4byte	0x456
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xfb
	.4byte	0x466
	.uleb128 0xc
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0x9
	.byte	0x3f
	.4byte	0x43d
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x4
	.4byte	0x30
	.byte	0xa
	.byte	0x36
	.4byte	0x494
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0x2e
	.byte	0
	.uleb128 0x16
	.byte	0x10
	.byte	0xa
	.byte	0x46
	.4byte	0x4b3
	.uleb128 0x17
	.string	"ip6"
	.byte	0xa
	.byte	0x47
	.4byte	0x466
	.uleb128 0x17
	.string	"ip4"
	.byte	0xa
	.byte	0x48
	.4byte	0x432
	.byte	0
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x14
	.byte	0xa
	.byte	0x45
	.4byte	0x4d8
	.uleb128 0x11
	.4byte	.LASF92
	.byte	0xa
	.byte	0x49
	.4byte	0x494
	.byte	0
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0xa
	.byte	0x4b
	.4byte	0xda
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0xa
	.byte	0x4c
	.4byte	0x4b3
	.uleb128 0xd
	.byte	0x4
	.4byte	0x30
	.byte	0xb
	.byte	0x34
	.4byte	0x562
	.uleb128 0xe
	.4byte	.LASF94
	.byte	0
	.uleb128 0xe
	.4byte	.LASF95
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF98
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF100
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF101
	.byte	0x7
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0xb
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF107
	.byte	0xd
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF109
	.byte	0xf
	.uleb128 0xe
	.4byte	.LASF110
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF111
	.byte	0x11
	.uleb128 0xe
	.4byte	.LASF112
	.byte	0x12
	.byte	0
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x4
	.4byte	0x30
	.byte	0x7
	.byte	0x70
	.4byte	0x58b
	.uleb128 0xe
	.4byte	.LASF115
	.byte	0
	.uleb128 0xe
	.4byte	.LASF116
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF117
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF118
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x4
	.4byte	0x30
	.byte	0x7
	.byte	0x94
	.4byte	0x5a8
	.uleb128 0xe
	.4byte	.LASF120
	.byte	0
	.uleb128 0xe
	.4byte	.LASF121
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0x7
	.byte	0xa7
	.4byte	0x5b3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5b9
	.uleb128 0x18
	.4byte	0x12e
	.4byte	0x5cd
	.uleb128 0xa
	.4byte	0x275
	.uleb128 0xa
	.4byte	0x413
	.byte	0
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0x7
	.byte	0xb2
	.4byte	0x5d8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5de
	.uleb128 0x18
	.4byte	0x12e
	.4byte	0x5f7
	.uleb128 0xa
	.4byte	0x413
	.uleb128 0xa
	.4byte	0x275
	.uleb128 0xa
	.4byte	0x5f7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5fd
	.uleb128 0x8
	.4byte	0x432
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0x7
	.byte	0xbf
	.4byte	0x60d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x613
	.uleb128 0x18
	.4byte	0x12e
	.4byte	0x62c
	.uleb128 0xa
	.4byte	0x413
	.uleb128 0xa
	.4byte	0x275
	.uleb128 0xa
	.4byte	0x62c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x632
	.uleb128 0x8
	.4byte	0x466
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0x7
	.byte	0xc9
	.4byte	0x642
	.uleb128 0x6
	.byte	0x4
	.4byte	0x648
	.uleb128 0x18
	.4byte	0x12e
	.4byte	0x65c
	.uleb128 0xa
	.4byte	0x413
	.uleb128 0xa
	.4byte	0x275
	.byte	0
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0x7
	.byte	0xce
	.4byte	0x667
	.uleb128 0x6
	.byte	0x4
	.4byte	0x66d
	.uleb128 0x18
	.4byte	0x12e
	.4byte	0x686
	.uleb128 0xa
	.4byte	0x413
	.uleb128 0xa
	.4byte	0x5f7
	.uleb128 0xa
	.4byte	0x58b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0x7
	.byte	0xd3
	.4byte	0x691
	.uleb128 0x6
	.byte	0x4
	.4byte	0x697
	.uleb128 0x18
	.4byte	0x12e
	.4byte	0x6b0
	.uleb128 0xa
	.4byte	0x413
	.uleb128 0xa
	.4byte	0x62c
	.uleb128 0xa
	.4byte	0x58b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0x7
	.byte	0xe5
	.4byte	0xb6
	.uleb128 0xb
	.4byte	0x4d8
	.4byte	0x6cb
	.uleb128 0xc
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0xda
	.4byte	0x6db
	.uleb128 0xc
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x6eb
	.uleb128 0xa
	.4byte	0x413
	.uleb128 0xa
	.4byte	0xda
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6db
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0x58
	.byte	0xc
	.byte	0x51
	.4byte	0x79a
	.uleb128 0x11
	.4byte	.LASF130
	.byte	0xc
	.byte	0x53
	.4byte	0x4d8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF131
	.byte	0xc
	.byte	0x53
	.4byte	0x4d8
	.byte	0x14
	.uleb128 0x11
	.4byte	.LASF132
	.byte	0xc
	.byte	0x53
	.4byte	0xda
	.byte	0x28
	.uleb128 0x12
	.string	"tos"
	.byte	0xc
	.byte	0x53
	.4byte	0xda
	.byte	0x29
	.uleb128 0x12
	.string	"ttl"
	.byte	0xc
	.byte	0x53
	.4byte	0xda
	.byte	0x2a
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0xc
	.byte	0x57
	.4byte	0x79a
	.byte	0x2c
	.uleb128 0x11
	.4byte	.LASF54
	.byte	0xc
	.byte	0x59
	.4byte	0xda
	.byte	0x30
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0xc
	.byte	0x5b
	.4byte	0xf0
	.byte	0x32
	.uleb128 0x11
	.4byte	.LASF134
	.byte	0xc
	.byte	0x5b
	.4byte	0xf0
	.byte	0x34
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0xc
	.byte	0x5f
	.4byte	0x4d8
	.byte	0x38
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0xc
	.byte	0x61
	.4byte	0xda
	.byte	0x4c
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0xc
	.byte	0x6a
	.4byte	0x7c0
	.byte	0x50
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0xc
	.byte	0x6c
	.4byte	0xad
	.byte	0x54
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6f1
	.uleb128 0xb
	.4byte	0xda
	.4byte	0x7b0
	.uleb128 0xc
	.4byte	0xa6
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	0xbd
	.4byte	0x7c0
	.uleb128 0xc
	.4byte	0xa6
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF139
	.byte	0xc
	.byte	0x4d
	.4byte	0x7cb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7d1
	.uleb128 0x9
	.4byte	0x7f0
	.uleb128 0xa
	.4byte	0xad
	.uleb128 0xa
	.4byte	0x79a
	.uleb128 0xa
	.4byte	0x275
	.uleb128 0xa
	.4byte	0x7f0
	.uleb128 0xa
	.4byte	0xf0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7f6
	.uleb128 0x8
	.4byte	0x4d8
	.uleb128 0x2
	.4byte	.LASF140
	.byte	0xd
	.byte	0x67
	.4byte	0x806
	.uleb128 0x6
	.byte	0x4
	.4byte	0x80c
	.uleb128 0x9
	.4byte	0x821
	.uleb128 0xa
	.4byte	0xc4
	.uleb128 0xa
	.4byte	0x7f0
	.uleb128 0xa
	.4byte	0xad
	.byte	0
	.uleb128 0x10
	.4byte	.LASF141
	.byte	0xc
	.byte	0xe
	.byte	0x67
	.4byte	0x881
	.uleb128 0x12
	.string	"id"
	.byte	0xe
	.byte	0x68
	.4byte	0xf0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF142
	.byte	0xe
	.byte	0x69
	.4byte	0xda
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF143
	.byte	0xe
	.byte	0x6a
	.4byte	0xda
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF144
	.byte	0xe
	.byte	0x6b
	.4byte	0xf0
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0xe
	.byte	0x6c
	.4byte	0xf0
	.byte	0x6
	.uleb128 0x11
	.4byte	.LASF146
	.byte	0xe
	.byte	0x6d
	.4byte	0xf0
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF147
	.byte	0xe
	.byte	0x6e
	.4byte	0xf0
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.4byte	.LASF148
	.byte	0x4
	.byte	0x1
	.byte	0xc0
	.4byte	0x8a6
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x1
	.byte	0xc3
	.4byte	0xf0
	.byte	0
	.uleb128 0x12
	.string	"cls"
	.byte	0x1
	.byte	0xc4
	.4byte	0xf0
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF149
	.byte	0xc
	.byte	0x1
	.byte	0xca
	.4byte	0x8e3
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x1
	.byte	0xcd
	.4byte	0xf0
	.byte	0
	.uleb128 0x12
	.string	"cls"
	.byte	0x1
	.byte	0xce
	.4byte	0xf0
	.byte	0x2
	.uleb128 0x12
	.string	"ttl"
	.byte	0x1
	.byte	0xcf
	.4byte	0xfb
	.byte	0x4
	.uleb128 0x12
	.string	"len"
	.byte	0x1
	.byte	0xd0
	.4byte	0xf0
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x30
	.byte	0x1
	.byte	0xd7
	.4byte	0x908
	.uleb128 0xe
	.4byte	.LASF150
	.byte	0
	.uleb128 0xe
	.4byte	.LASF151
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF152
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF153
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.4byte	.LASF154
	.2byte	0x124
	.byte	0x1
	.byte	0xdf
	.4byte	0x99b
	.uleb128 0x12
	.string	"ttl"
	.byte	0x1
	.byte	0xe0
	.4byte	0xfb
	.byte	0
	.uleb128 0x11
	.4byte	.LASF155
	.byte	0x1
	.byte	0xe1
	.4byte	0x4d8
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF156
	.byte	0x1
	.byte	0xe2
	.4byte	0xf0
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x1
	.byte	0xe3
	.4byte	0xda
	.byte	0x1a
	.uleb128 0x11
	.4byte	.LASF157
	.byte	0x1
	.byte	0xe4
	.4byte	0xda
	.byte	0x1b
	.uleb128 0x12
	.string	"tmr"
	.byte	0x1
	.byte	0xe5
	.4byte	0xda
	.byte	0x1c
	.uleb128 0x11
	.4byte	.LASF158
	.byte	0x1
	.byte	0xe6
	.4byte	0xda
	.byte	0x1d
	.uleb128 0x11
	.4byte	.LASF159
	.byte	0x1
	.byte	0xe7
	.4byte	0xda
	.byte	0x1e
	.uleb128 0x11
	.4byte	.LASF160
	.byte	0x1
	.byte	0xe9
	.4byte	0xda
	.byte	0x1f
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x1
	.byte	0xeb
	.4byte	0x99b
	.byte	0x20
	.uleb128 0x1a
	.4byte	.LASF161
	.byte	0x1
	.byte	0xed
	.4byte	0xda
	.2byte	0x120
	.byte	0
	.uleb128 0xb
	.4byte	0xbd
	.4byte	0x9ab
	.uleb128 0xc
	.4byte	0xa6
	.byte	0xff
	.byte	0
	.uleb128 0x10
	.4byte	.LASF162
	.byte	0xc
	.byte	0x1
	.byte	0xf6
	.4byte	0x9e8
	.uleb128 0x11
	.4byte	.LASF163
	.byte	0x1
	.byte	0xf8
	.4byte	0x7fb
	.byte	0
	.uleb128 0x12
	.string	"arg"
	.byte	0x1
	.byte	0xfa
	.4byte	0xad
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF164
	.byte	0x1
	.byte	0xfc
	.4byte	0xda
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF161
	.byte	0x1
	.byte	0xff
	.4byte	0xda
	.byte	0x9
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x5f2
	.4byte	0x117
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa11
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.2byte	0x5f4
	.4byte	0x3e
	.4byte	.LLST0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x3fe
	.4byte	0xf0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa5f
	.uleb128 0x1d
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x400
	.4byte	0xf0
	.4byte	.LLST1
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.2byte	0x401
	.4byte	0xda
	.4byte	.LLST2
	.uleb128 0x1e
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x403
	.4byte	.L13
	.uleb128 0x1f
	.4byte	.LVL3
	.4byte	0x1ad9
	.byte	0
	.uleb128 0x20
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x3c4
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb44
	.uleb128 0x21
	.string	"idx"
	.byte	0x1
	.2byte	0x3c4
	.4byte	0xda
	.4byte	.LLST3
	.uleb128 0x22
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x3c4
	.4byte	0xb44
	.4byte	.LLST4
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.2byte	0x3c7
	.4byte	0xda
	.4byte	.LLST5
	.uleb128 0x23
	.4byte	.LASF173
	.4byte	0xb5a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6652
	.uleb128 0x24
	.4byte	.LVL9
	.4byte	0x1ae4
	.4byte	0xae2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3ce
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6652
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x24
	.4byte	.LVL10
	.4byte	0x1ae4
	.4byte	0xb12
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3d1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6652
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x26
	.4byte	.LVL12
	.4byte	0xb3a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x14
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	dns_table+32
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL22
	.4byte	0x1aef
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4d8
	.uleb128 0xb
	.4byte	0xbd
	.4byte	0xb5a
	.uleb128 0xc
	.4byte	0xa6
	.byte	0xe
	.byte	0
	.uleb128 0x8
	.4byte	0xb4a
	.uleb128 0x20
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x47c
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbbc
	.uleb128 0x21
	.string	"idx"
	.byte	0x1
	.2byte	0x47c
	.4byte	0xda
	.4byte	.LLST6
	.uleb128 0x21
	.string	"ttl"
	.byte	0x1
	.2byte	0x47c
	.4byte	0xfb
	.4byte	.LLST7
	.uleb128 0x1d
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x47e
	.4byte	0xbbc
	.4byte	.LLST8
	.uleb128 0x27
	.4byte	.LVL30
	.4byte	0xa5f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x908
	.uleb128 0x1b
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x308
	.4byte	0x12e
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe2a
	.uleb128 0x21
	.string	"idx"
	.byte	0x1
	.2byte	0x308
	.4byte	0xda
	.4byte	.LLST9
	.uleb128 0x1c
	.string	"err"
	.byte	0x1
	.2byte	0x30a
	.4byte	0x12e
	.4byte	.LLST10
	.uleb128 0x28
	.string	"hdr"
	.byte	0x1
	.2byte	0x30b
	.4byte	0x821
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"qry"
	.byte	0x1
	.2byte	0x30c
	.4byte	0x881
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.2byte	0x30d
	.4byte	0x275
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1d
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x30e
	.4byte	0xf0
	.4byte	.LLST11
	.uleb128 0x1d
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x30e
	.4byte	0xf0
	.4byte	.LLST12
	.uleb128 0x1d
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x30f
	.4byte	0xc4
	.4byte	.LLST13
	.uleb128 0x29
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x30f
	.4byte	0xc4
	.uleb128 0x1c
	.string	"n"
	.byte	0x1
	.2byte	0x310
	.4byte	0xda
	.4byte	.LLST14
	.uleb128 0x1d
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x311
	.4byte	0xda
	.4byte	.LLST15
	.uleb128 0x1d
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x312
	.4byte	0xbbc
	.4byte	.LLST16
	.uleb128 0x23
	.4byte	.LASF173
	.4byte	0xe3a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6618
	.uleb128 0x2a
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xdb7
	.uleb128 0x1c
	.string	"dst"
	.byte	0x1
	.2byte	0x328
	.4byte	0x7f0
	.4byte	.LLST17
	.uleb128 0x1d
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x329
	.4byte	0xf0
	.4byte	.LLST18
	.uleb128 0x1f
	.4byte	.LVL40
	.4byte	0x1afa
	.uleb128 0x24
	.4byte	.LVL41
	.4byte	0x1b05
	.4byte	0xcf4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x24
	.4byte	.LVL50
	.4byte	0x1b10
	.4byte	0xd14
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL51
	.4byte	0x1b1c
	.4byte	0xd42
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x77
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x74
	.sleb128 1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x24
	.4byte	.LVL55
	.4byte	0x1b10
	.4byte	0xd61
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL60
	.4byte	0x1b1c
	.4byte	0xd80
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x24
	.4byte	.LVL68
	.4byte	0x1b27
	.4byte	0xda6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	dns_servers
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x35
	.byte	0
	.uleb128 0x27
	.4byte	.LVL71
	.4byte	0x1b32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL35
	.4byte	0x1ae4
	.4byte	0xde7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x316
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6618
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.uleb128 0x24
	.4byte	.LVL36
	.4byte	0xa5f
	.4byte	0xe01
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL37
	.4byte	0x1b3d
	.4byte	0xe15
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL38
	.4byte	0x1b48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xbd
	.4byte	0xe3a
	.uleb128 0xc
	.4byte	0xa6
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0xe2a
	.uleb128 0x20
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x41c
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf35
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.2byte	0x41c
	.4byte	0xda
	.4byte	.LLST19
	.uleb128 0x2b
	.string	"err"
	.byte	0x1
	.2byte	0x41e
	.4byte	0x12e
	.uleb128 0x1d
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x41f
	.4byte	0xbbc
	.4byte	.LLST20
	.uleb128 0x23
	.4byte	.LASF173
	.4byte	0xf45
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6674
	.uleb128 0x24
	.4byte	.LVL75
	.4byte	0x1ae4
	.4byte	0xebe
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x421
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6674
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL76
	.4byte	0xa11
	.uleb128 0x24
	.4byte	.LVL77
	.4byte	0xbc2
	.4byte	0xedb
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL78
	.4byte	0xa5f
	.4byte	0xef4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL81
	.4byte	0xbc2
	.4byte	0xf08
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL84
	.4byte	0x1ae4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x466
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6674
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xbd
	.4byte	0xf45
	.uleb128 0xc
	.4byte	0xa6
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0xf35
	.uleb128 0x20
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x46f
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf7f
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.2byte	0x471
	.4byte	0xda
	.4byte	.LLST21
	.uleb128 0x27
	.4byte	.LVL87
	.4byte	0xe3f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x286
	.4byte	0x12e
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1005
	.uleb128 0x22
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x286
	.4byte	0xc4
	.4byte	.LLST22
	.uleb128 0x2c
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x286
	.4byte	0xb44
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x286
	.4byte	0xda
	.4byte	.LLST23
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.2byte	0x288
	.4byte	0xda
	.4byte	.LLST24
	.uleb128 0x27
	.4byte	.LVL93
	.4byte	0x1b53
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x14
	.byte	0x75
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	dns_table+32
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x378
	.4byte	0x79a
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10bd
	.uleb128 0x1c
	.string	"err"
	.byte	0x1
	.2byte	0x37a
	.4byte	0x12e
	.4byte	.LLST25
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.2byte	0x37b
	.4byte	0x79a
	.4byte	.LLST26
	.uleb128 0x2a
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x1076
	.uleb128 0x1d
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x383
	.4byte	0xf0
	.4byte	.LLST27
	.uleb128 0x1f
	.4byte	.LVL107
	.4byte	0x1ad9
	.uleb128 0x27
	.4byte	.LVL110
	.4byte	0x1b5e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL105
	.4byte	0x1b69
	.4byte	0x108a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x2e
	.byte	0
	.uleb128 0x24
	.4byte	.LVL115
	.4byte	0x1aef
	.4byte	0x109e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL119
	.4byte	0x1b74
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_recv
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x39a
	.4byte	0xda
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10ff
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.2byte	0x39c
	.4byte	0xda
	.4byte	.LLST28
	.uleb128 0x1c
	.string	"idx"
	.byte	0x1
	.2byte	0x39d
	.4byte	0xda
	.4byte	.LLST29
	.uleb128 0x1f
	.4byte	.LVL125
	.4byte	0x1005
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x554
	.4byte	0x12e
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1256
	.uleb128 0x22
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x554
	.4byte	0xc4
	.4byte	.LLST30
	.uleb128 0x22
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x554
	.4byte	0x25
	.4byte	.LLST31
	.uleb128 0x22
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x554
	.4byte	0x7fb
	.4byte	.LLST32
	.uleb128 0x22
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x555
	.4byte	0xad
	.4byte	.LLST33
	.uleb128 0x22
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x555
	.4byte	0xda
	.4byte	.LLST34
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.2byte	0x557
	.4byte	0xda
	.4byte	.LLST35
	.uleb128 0x1d
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x558
	.4byte	0xda
	.4byte	.LLST36
	.uleb128 0x1d
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x558
	.4byte	0xda
	.4byte	.LLST37
	.uleb128 0x1d
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x559
	.4byte	0xbbc
	.4byte	.LLST38
	.uleb128 0x1d
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x55a
	.4byte	0x25
	.4byte	.LLST39
	.uleb128 0x1c
	.string	"req"
	.byte	0x1
	.2byte	0x55b
	.4byte	0x1256
	.4byte	.LLST40
	.uleb128 0x1c
	.string	"r"
	.byte	0x1
	.2byte	0x55e
	.4byte	0xda
	.4byte	.LLST41
	.uleb128 0x2a
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x11f3
	.uleb128 0x1c
	.string	"age"
	.byte	0x1
	.2byte	0x586
	.4byte	0xda
	.4byte	.LLST42
	.byte	0
	.uleb128 0x24
	.4byte	.LVL141
	.4byte	0x1b53
	.4byte	0x121c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xa
	.byte	0x77
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	dns_table+32
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x24
	.4byte	.LVL177
	.4byte	0x1b7f
	.4byte	0x123c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL180
	.4byte	0x10bd
	.uleb128 0x27
	.4byte	.LVL184
	.4byte	0xe3f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9ab
	.uleb128 0x1b
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x2b4
	.4byte	0xf0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x131f
	.uleb128 0x22
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x2b4
	.4byte	0xc4
	.4byte	.LLST43
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.2byte	0x2b4
	.4byte	0x275
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x2b4
	.4byte	0xf0
	.4byte	.LLST44
	.uleb128 0x1c
	.string	"n"
	.byte	0x1
	.2byte	0x2b6
	.4byte	0x3e
	.4byte	.LLST45
	.uleb128 0x1d
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x2b7
	.4byte	0xf0
	.4byte	.LLST46
	.uleb128 0x2e
	.4byte	.Ldebug_ranges0+0
	.4byte	0x12ee
	.uleb128 0x1c
	.string	"c"
	.byte	0x1
	.2byte	0x2c5
	.4byte	0x3e
	.4byte	.LLST47
	.uleb128 0x27
	.4byte	.LVL197
	.4byte	0x1b88
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL194
	.4byte	0x1b88
	.4byte	0x1308
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL204
	.4byte	0x1b88
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x2e3
	.4byte	0xf0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13a6
	.uleb128 0x21
	.string	"p"
	.byte	0x1
	.2byte	0x2e3
	.4byte	0x275
	.4byte	.LLST48
	.uleb128 0x22
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x2e3
	.4byte	0xf0
	.4byte	.LLST49
	.uleb128 0x1c
	.string	"n"
	.byte	0x1
	.2byte	0x2e5
	.4byte	0x3e
	.4byte	.LLST50
	.uleb128 0x1d
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x2e6
	.4byte	0xf0
	.4byte	.LLST51
	.uleb128 0x24
	.4byte	.LVL220
	.4byte	0x1b88
	.4byte	0x138f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL223
	.4byte	0x1b88
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x49c
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16c7
	.uleb128 0x21
	.string	"arg"
	.byte	0x1
	.2byte	0x49c
	.4byte	0xad
	.4byte	.LLST52
	.uleb128 0x21
	.string	"pcb"
	.byte	0x1
	.2byte	0x49c
	.4byte	0x79a
	.4byte	.LLST53
	.uleb128 0x21
	.string	"p"
	.byte	0x1
	.2byte	0x49c
	.4byte	0x275
	.4byte	.LLST54
	.uleb128 0x22
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x49c
	.4byte	0x7f0
	.4byte	.LLST55
	.uleb128 0x22
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x49c
	.4byte	0xf0
	.4byte	.LLST56
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.2byte	0x49e
	.4byte	0xda
	.4byte	.LLST57
	.uleb128 0x1d
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x49f
	.4byte	0xf0
	.4byte	.LLST58
	.uleb128 0x1d
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x4a0
	.4byte	0xf0
	.4byte	.LLST59
	.uleb128 0x28
	.string	"hdr"
	.byte	0x1
	.2byte	0x4a1
	.4byte	0x821
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"ans"
	.byte	0x1
	.2byte	0x4a2
	.4byte	0x8a6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.string	"qry"
	.byte	0x1
	.2byte	0x4a3
	.4byte	0x881
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x4a4
	.4byte	0xf0
	.4byte	.LLST60
	.uleb128 0x1d
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x4a4
	.4byte	0xf0
	.4byte	.LLST61
	.uleb128 0x1e
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x544
	.4byte	.L150
	.uleb128 0x2a
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x1688
	.uleb128 0x1d
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x4b6
	.4byte	0x16c7
	.4byte	.LLST62
	.uleb128 0x2a
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x151f
	.uleb128 0x2f
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x501
	.4byte	0x432
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.4byte	.LVL266
	.4byte	0x1b94
	.4byte	0x14f1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL269
	.4byte	0x1b32
	.4byte	0x1505
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL270
	.4byte	0x1b9f
	.uleb128 0x27
	.4byte	.LVL271
	.4byte	0xb5f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x158e
	.uleb128 0x2f
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x514
	.4byte	0x466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.4byte	.LVL273
	.4byte	0x1b94
	.4byte	0x1560
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL276
	.4byte	0x1b32
	.4byte	0x1574
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL277
	.4byte	0x1b9f
	.uleb128 0x27
	.4byte	.LVL278
	.4byte	0xb5f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL239
	.4byte	0x1afa
	.uleb128 0x1f
	.4byte	.LVL241
	.4byte	0x1afa
	.uleb128 0x24
	.4byte	.LVL255
	.4byte	0x125c
	.4byte	0x15c5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x75
	.sleb128 0
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x24
	.4byte	.LVL257
	.4byte	0x1b94
	.4byte	0x15ea
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL261
	.4byte	0x131f
	.4byte	0x15fe
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL263
	.4byte	0x1b94
	.4byte	0x1624
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL280
	.4byte	0x1afa
	.uleb128 0x1f
	.4byte	.LVL281
	.4byte	0x1afa
	.uleb128 0x24
	.4byte	.LVL286
	.4byte	0x1b32
	.4byte	0x164a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL288
	.4byte	0xe3f
	.4byte	0x165e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL290
	.4byte	0x1b32
	.4byte	0x1672
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL291
	.4byte	0xa5f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL233
	.4byte	0x1b94
	.4byte	0x16ad
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL234
	.4byte	0x1afa
	.uleb128 0x27
	.4byte	.LVL296
	.4byte	0x1b32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x16cd
	.uleb128 0x8
	.4byte	0x908
	.uleb128 0x30
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x13e
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16f2
	.uleb128 0x31
	.4byte	.LASF173
	.4byte	0x16f2
	.byte	0
	.uleb128 0x8
	.4byte	0xe2a
	.uleb128 0x30
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x178
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x176e
	.uleb128 0x22
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x178
	.4byte	0xda
	.4byte	.LLST63
	.uleb128 0x22
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x178
	.4byte	0x7f0
	.4byte	.LLST64
	.uleb128 0x24
	.4byte	.LVL299
	.4byte	0x1b7f
	.4byte	0x1752
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	dns_servers
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x27
	.4byte	.LVL301
	.4byte	0x1b7f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	dns_servers
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x185
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17b8
	.uleb128 0x2c
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x185
	.4byte	0x117
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x187
	.4byte	0xda
	.4byte	.LLST65
	.uleb128 0x27
	.4byte	.LVL305
	.4byte	0x16f7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x19d
	.4byte	0x4d8
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x181d
	.uleb128 0x22
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x19d
	.4byte	0xda
	.4byte	.LLST66
	.uleb128 0x24
	.4byte	.LVL310
	.4byte	0x1b7f
	.4byte	0x1807
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	dns_servers
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x27
	.4byte	.LVL311
	.4byte	0x1b7f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x1b7
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x183d
	.uleb128 0x1f
	.4byte	.LVL312
	.4byte	0xf4a
	.byte	0
	.uleb128 0x32
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x60d
	.4byte	0x12e
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1986
	.uleb128 0x22
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x60d
	.4byte	0xc4
	.4byte	.LLST67
	.uleb128 0x2c
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x60d
	.4byte	0xb44
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x60d
	.4byte	0x7fb
	.4byte	.LLST68
	.uleb128 0x22
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x60e
	.4byte	0xad
	.4byte	.LLST69
	.uleb128 0x22
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x60e
	.4byte	0xda
	.4byte	.LLST70
	.uleb128 0x1d
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x610
	.4byte	0x25
	.4byte	.LLST71
	.uleb128 0x2a
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x18e9
	.uleb128 0x1d
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x63e
	.4byte	0xda
	.4byte	.LLST72
	.uleb128 0x27
	.4byte	.LVL326
	.4byte	0xf7f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL314
	.4byte	0x1b3d
	.4byte	0x18fd
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL316
	.4byte	0x1baa
	.4byte	0x191a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.byte	0
	.uleb128 0x24
	.4byte	.LVL323
	.4byte	0x1bb5
	.4byte	0x1934
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL324
	.4byte	0xf7f
	.4byte	0x1954
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL327
	.4byte	0x9e8
	.uleb128 0x27
	.4byte	.LVL328
	.4byte	0x10ff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x5eb
	.4byte	0x12e
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a02
	.uleb128 0x22
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x5eb
	.4byte	0xc4
	.4byte	.LLST73
	.uleb128 0x2c
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x5eb
	.4byte	0xb44
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x5eb
	.4byte	0x7fb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2c
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x5ec
	.4byte	0xad
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x27
	.4byte	.LVL335
	.4byte	0x183d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x79a
	.4byte	0x1a12
	.uleb128 0xc
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x129
	.4byte	0x1a02
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_pcbs
	.uleb128 0x2f
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x12b
	.4byte	0xda
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_last_pcb_idx
	.uleb128 0x2f
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x12d
	.4byte	0xda
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_seqno
	.uleb128 0xb
	.4byte	0x908
	.4byte	0x1a58
	.uleb128 0xc
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x12e
	.4byte	0x1a48
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_table
	.uleb128 0xb
	.4byte	0x9ab
	.4byte	0x1a7a
	.uleb128 0xc
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x12f
	.4byte	0x1a6a
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_requests
	.uleb128 0x2f
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x130
	.4byte	0x6bb
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_servers
	.uleb128 0x33
	.4byte	.LASF220
	.byte	0xa
	.byte	0x4e
	.4byte	0x7f6
	.uleb128 0x34
	.4byte	.LASF221
	.byte	0xa
	.2byte	0x157
	.4byte	0x7f6
	.uleb128 0x35
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x133
	.4byte	0x7f6
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_mquery_v4group
	.uleb128 0x35
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x136
	.4byte	0x7f6
	.uleb128 0x5
	.byte	0x3
	.4byte	dns_mquery_v6group
	.uleb128 0x36
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0xf
	.byte	0xa7
	.uleb128 0x36
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0x10
	.byte	0x29
	.uleb128 0x36
	.4byte	.LASF226
	.4byte	.LASF226
	.byte	0xc
	.byte	0x75
	.uleb128 0x36
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0x11
	.byte	0x55
	.uleb128 0x36
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0x6
	.byte	0xf5
	.uleb128 0x37
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0x6
	.2byte	0x103
	.uleb128 0x36
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0x6
	.byte	0xf6
	.uleb128 0x36
	.4byte	.LASF231
	.4byte	.LASF231
	.byte	0xc
	.byte	0x83
	.uleb128 0x36
	.4byte	.LASF232
	.4byte	.LASF232
	.byte	0x6
	.byte	0xee
	.uleb128 0x36
	.4byte	.LASF233
	.4byte	.LASF233
	.byte	0x12
	.byte	0x21
	.uleb128 0x36
	.4byte	.LASF234
	.4byte	.LASF234
	.byte	0x6
	.byte	0xe4
	.uleb128 0x36
	.4byte	.LASF235
	.4byte	.LASF235
	.byte	0x11
	.byte	0x7e
	.uleb128 0x36
	.4byte	.LASF236
	.4byte	.LASF236
	.byte	0xc
	.byte	0x76
	.uleb128 0x36
	.4byte	.LASF237
	.4byte	.LASF237
	.byte	0xc
	.byte	0x74
	.uleb128 0x36
	.4byte	.LASF238
	.4byte	.LASF238
	.byte	0xc
	.byte	0x7b
	.uleb128 0x38
	.4byte	.LASF247
	.4byte	.LASF247
	.uleb128 0x37
	.4byte	.LASF239
	.4byte	.LASF239
	.byte	0x6
	.2byte	0x102
	.uleb128 0x36
	.4byte	.LASF240
	.4byte	.LASF240
	.byte	0x6
	.byte	0xf4
	.uleb128 0x36
	.4byte	.LASF241
	.4byte	.LASF241
	.byte	0x11
	.byte	0x5a
	.uleb128 0x36
	.4byte	.LASF242
	.4byte	.LASF242
	.byte	0x12
	.byte	0x1c
	.uleb128 0x36
	.4byte	.LASF243
	.4byte	.LASF243
	.byte	0xa
	.byte	0xe0
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL24
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x14
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x11
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x14
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.4byte	.LVL29
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL31
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL49
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0xc
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1f
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x73
	.sleb128 31
	.4byte	.LVL66
	.4byte	.LVL68-1
	.2byte	0x16
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x33
	.byte	0x24
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1f
	.4byte	.LVL68-1
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE28
	.2byte	0xe
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	dns_servers
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL68-1
	.4byte	.LVL72
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	dns_servers
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL61
	.4byte	.LVL72
	.2byte	0x3
	.byte	0x8
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL73
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL80
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
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL74
	.4byte	.LVL79
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LFE33
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL90
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
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
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL90
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL94
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL101
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL106
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109
	.4byte	.LVL110-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL126
	.4byte	.LVL128
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL127
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL137
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL144
	.4byte	.LVL147
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL179
	.4byte	.LVL185
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL187
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
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL137
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL139
	.4byte	.LFE37
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL137
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL147
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL174
	.4byte	.LVL177-1
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL177-1
	.4byte	.LVL185
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL185
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL137
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL140
	.4byte	.LFE37
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL137
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL175
	.4byte	.LVL177-1
	.2byte	0x2
	.byte	0x73
	.sleb128 9
	.4byte	.LVL177-1
	.4byte	.LVL185
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL185
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL140
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL153
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL162
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL165
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL189
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL153
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL170
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL185
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL153
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL158
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL185
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL138
	.4byte	.LVL153
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL155
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL164
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL176
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL178
	.4byte	.LVL181
	.2byte	0x16
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0xff
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x16
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL182
	.4byte	.LVL185
	.2byte	0x16
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0xff
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL165
	.4byte	.LVL169
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL170
	.4byte	.LVL173
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL189
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL143
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL166
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL170
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL156
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL191
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL201
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL207
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL213
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL215
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL192
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL195
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL204
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL207
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL215
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL193
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL196
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL200
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL205
	.4byte	.LVL207
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL207
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL211
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL197
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL211
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL217
	.4byte	.LVL225
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL225
	.4byte	.LVL226
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL226
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL227
	.4byte	.LVL228
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL228
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL229
	.4byte	.LVL230
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL230
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL231
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL217
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL218
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL223
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL218
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL219
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL222
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL224
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL230
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL232
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL235
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL232
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL242
	.4byte	.LVL293
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL293
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL295
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL232
	.4byte	.LVL287
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL287
	.4byte	.LVL289
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL289
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL232
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL244
	.4byte	.LVL245
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL245
	.4byte	.LVL246
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL246
	.4byte	.LVL247
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL247
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL250
	.4byte	.LVL251
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL251
	.4byte	.LVL252
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL252
	.4byte	.LVL253
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL253
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL254
	.4byte	.LVL293
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL293
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL295
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL232
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL240
	.4byte	.LVL293
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL293
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL295
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL234
	.4byte	.LVL235
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL235
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL237
	.4byte	.LVL292
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL293
	.4byte	.LVL294
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL294
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL234
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL293
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL256
	.4byte	.LVL258
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL258
	.4byte	.LVL259
	.2byte	0x3
	.byte	0x75
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL259
	.4byte	.LVL260
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL260
	.4byte	.LVL261-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL262
	.4byte	.LVL264
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL264
	.4byte	.LVL265
	.2byte	0x3
	.byte	0x75
	.sleb128 -10
	.byte	0x9f
	.4byte	.LVL265
	.4byte	.LVL268
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL272
	.4byte	.LVL274
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL279
	.4byte	.LVL282
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL282
	.4byte	.LVL284
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL284
	.4byte	.LVL286-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL240
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL242
	.4byte	.LVL267
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL272
	.4byte	.LVL275
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL279
	.4byte	.LVL283
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL283
	.4byte	.LVL284
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL284
	.4byte	.LVL285
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL236
	.4byte	.LVL292
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL293
	.4byte	.LVL294
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0x124
	.byte	0x1e
	.byte	0x3
	.4byte	dns_table
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL297
	.4byte	.LVL298
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL298
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL297
	.4byte	.LVL300
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL300
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL303
	.4byte	.LVL304
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL304
	.4byte	.LVL306
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL306
	.4byte	.LVL307
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL307
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL308
	.4byte	.LVL309
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL309
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL313
	.4byte	.LVL317
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL317
	.4byte	.LVL322
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL322
	.4byte	.LVL331
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL331
	.4byte	.LVL332
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL332
	.4byte	.LVL333
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL333
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL313
	.4byte	.LVL320
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL320
	.4byte	.LVL322
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL322
	.4byte	.LVL331
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL331
	.4byte	.LVL332
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL332
	.4byte	.LVL333
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL333
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL313
	.4byte	.LVL319
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL319
	.4byte	.LVL322
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL322
	.4byte	.LVL331
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL331
	.4byte	.LVL332
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL332
	.4byte	.LVL333
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL333
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL313
	.4byte	.LVL321
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL321
	.4byte	.LVL322
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL322
	.4byte	.LVL331
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL331
	.4byte	.LVL332
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL332
	.4byte	.LVL333
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL333
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL315
	.4byte	.LVL318
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL322
	.4byte	.LVL329
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL330
	.4byte	.LVL331
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL332
	.4byte	.LVL333
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL325
	.4byte	.LVL326-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL334
	.4byte	.LVL336
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL336
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xbc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
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
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB36
	.4byte	.LFE36
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
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"ERR_RTE"
.LASF17:
	.string	"int8_t"
.LASF2:
	.string	"size_t"
.LASF14:
	.string	"sizetype"
.LASF210:
	.string	"dns_getserver"
.LASF83:
	.string	"l2_buffer_free_notify"
.LASF96:
	.string	"MEMP_TCP_PCB"
.LASF78:
	.string	"igmp_mac_filter"
.LASF189:
	.string	"dns_compare_name"
.LASF150:
	.string	"DNS_STATE_UNUSED"
.LASF187:
	.string	"lseqi"
.LASF70:
	.string	"dhcps_pcb"
.LASF80:
	.string	"loop_first"
.LASF203:
	.string	"dns_init"
.LASF56:
	.string	"l2_buf"
.LASF132:
	.string	"so_options"
.LASF105:
	.string	"MEMP_SYS_TIMEOUT"
.LASF173:
	.string	"__func__"
.LASF68:
	.string	"state"
.LASF84:
	.string	"last_ip_addr"
.LASF163:
	.string	"found"
.LASF114:
	.string	"lwip_internal_netif_client_data_index"
.LASF53:
	.string	"type"
.LASF48:
	.string	"PBUF_REF"
.LASF126:
	.string	"netif_igmp_mac_filter_fn"
.LASF151:
	.string	"DNS_STATE_NEW"
.LASF5:
	.string	"__uint8_t"
.LASF243:
	.string	"ipaddr_aton"
.LASF155:
	.string	"ipaddr"
.LASF214:
	.string	"dns_pcbs"
.LASF72:
	.string	"ip6_autoconfig_enabled"
.LASF241:
	.string	"lwip_htonl"
.LASF13:
	.string	"long int"
.LASF227:
	.string	"lwip_htons"
.LASF186:
	.string	"lseq"
.LASF144:
	.string	"numquestions"
.LASF85:
	.string	"ip4_addr"
.LASF29:
	.string	"ERR_INPROGRESS"
.LASF30:
	.string	"ERR_VAL"
.LASF221:
	.string	"ip_addr_any"
.LASF229:
	.string	"pbuf_put_at"
.LASF171:
	.string	"query_idx"
.LASF66:
	.string	"linkoutput"
.LASF166:
	.string	"dns_create_txid"
.LASF75:
	.string	"hwaddr_len"
.LASF111:
	.string	"MEMP_PBUF_POOL"
.LASF4:
	.string	"signed char"
.LASF18:
	.string	"uint8_t"
.LASF188:
	.string	"namelen"
.LASF141:
	.string	"dns_hdr"
.LASF222:
	.string	"dns_mquery_v4group"
.LASF130:
	.string	"local_ip"
.LASF117:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MLD6"
.LASF6:
	.string	"unsigned char"
.LASF220:
	.string	"ip_addr_any_type"
.LASF152:
	.string	"DNS_STATE_ASKING"
.LASF99:
	.string	"MEMP_NETBUF"
.LASF89:
	.string	"IPADDR_TYPE_V4"
.LASF90:
	.string	"IPADDR_TYPE_V6"
.LASF22:
	.string	"_Bool"
.LASF219:
	.string	"dns_servers"
.LASF49:
	.string	"PBUF_POOL"
.LASF179:
	.string	"dns_addrtype"
.LASF16:
	.string	"char"
.LASF175:
	.string	"dst_port"
.LASF168:
	.string	"dns_correct_response"
.LASF65:
	.string	"output"
.LASF57:
	.string	"pbuf"
.LASF109:
	.string	"MEMP_MLD6_GROUP"
.LASF94:
	.string	"MEMP_RAW_PCB"
.LASF9:
	.string	"__uint16_t"
.LASF165:
	.string	"dns_server_is_set"
.LASF129:
	.string	"udp_pcb"
.LASF133:
	.string	"local_port"
.LASF161:
	.string	"reqaddrtype"
.LASF54:
	.string	"flags"
.LASF167:
	.string	"dns_call_found"
.LASF242:
	.string	"strcmp"
.LASF59:
	.string	"ip_addr"
.LASF146:
	.string	"numauthrr"
.LASF91:
	.string	"IPADDR_TYPE_ANY"
.LASF64:
	.string	"input"
.LASF212:
	.string	"fallback"
.LASF200:
	.string	"memerr"
.LASF176:
	.string	"dns_check_entry"
.LASF33:
	.string	"ERR_ALREADY"
.LASF202:
	.string	"ip6addr"
.LASF101:
	.string	"MEMP_TCPIP_MSG_API"
.LASF100:
	.string	"MEMP_NETCONN"
.LASF238:
	.string	"udp_recv"
.LASF55:
	.string	"l2_owner"
.LASF62:
	.string	"ip6_addr_state"
.LASF182:
	.string	"dns_alloc_pcb"
.LASF225:
	.string	"__assert_func"
.LASF108:
	.string	"MEMP_IP6_REASSDATA"
.LASF230:
	.string	"pbuf_take_at"
.LASF35:
	.string	"ERR_CONN"
.LASF158:
	.string	"retries"
.LASF240:
	.string	"pbuf_copy_partial"
.LASF15:
	.string	"long unsigned int"
.LASF58:
	.string	"netif"
.LASF215:
	.string	"dns_last_pcb_idx"
.LASF47:
	.string	"PBUF_ROM"
.LASF76:
	.string	"hwaddr"
.LASF226:
	.string	"udp_remove"
.LASF170:
	.string	"dns_send"
.LASF92:
	.string	"u_addr"
.LASF223:
	.string	"dns_mquery_v6group"
.LASF204:
	.string	"dns_setserver"
.LASF51:
	.string	"payload"
.LASF184:
	.string	"hostnamelen"
.LASF119:
	.string	"netif_mac_filter_action"
.LASF82:
	.string	"loop_cnt_current"
.LASF205:
	.string	"numdns"
.LASF127:
	.string	"netif_mld_mac_filter_fn"
.LASF239:
	.string	"pbuf_try_get_at"
.LASF183:
	.string	"dns_enqueue"
.LASF10:
	.string	"__uint32_t"
.LASF128:
	.string	"dhcp_event_fn"
.LASF207:
	.string	"dns_clear_servers"
.LASF11:
	.string	"long long int"
.LASF116:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF25:
	.string	"ERR_MEM"
.LASF40:
	.string	"ERR_ARG"
.LASF87:
	.string	"ip4_addr_t"
.LASF63:
	.string	"ipv6_addr_cb"
.LASF60:
	.string	"netmask"
.LASF124:
	.string	"netif_output_ip6_fn"
.LASF206:
	.string	"dnsserver"
.LASF113:
	.string	"lwip_ip_addr_type"
.LASF244:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF174:
	.string	"hostname_part"
.LASF86:
	.string	"addr"
.LASF217:
	.string	"dns_table"
.LASF178:
	.string	"dns_lookup"
.LASF36:
	.string	"ERR_IF"
.LASF0:
	.string	"unsigned int"
.LASF32:
	.string	"ERR_USE"
.LASF42:
	.string	"PBUF_IP"
.LASF180:
	.string	"dns_alloc_random_port"
.LASF73:
	.string	"rs_count"
.LASF195:
	.string	"dns_recv"
.LASF31:
	.string	"ERR_WOULDBLOCK"
.LASF122:
	.string	"netif_input_fn"
.LASF164:
	.string	"dns_table_idx"
.LASF228:
	.string	"pbuf_take"
.LASF231:
	.string	"udp_sendto"
.LASF145:
	.string	"numanswers"
.LASF27:
	.string	"ERR_TIMEOUT"
.LASF194:
	.string	"offset"
.LASF125:
	.string	"netif_linkoutput_fn"
.LASF199:
	.string	"again"
.LASF123:
	.string	"netif_output_fn"
.LASF137:
	.string	"recv"
.LASF52:
	.string	"tot_len"
.LASF190:
	.string	"query"
.LASF93:
	.string	"ip_addr_t"
.LASF142:
	.string	"flags1"
.LASF143:
	.string	"flags2"
.LASF213:
	.string	"dns_gethostbyname"
.LASF120:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF23:
	.string	"err_t"
.LASF156:
	.string	"txid"
.LASF211:
	.string	"dns_gethostbyname_addrtype"
.LASF139:
	.string	"udp_recv_fn"
.LASF67:
	.string	"output_ip6"
.LASF169:
	.string	"entry"
.LASF201:
	.string	"ip4addr"
.LASF172:
	.string	"copy_len"
.LASF3:
	.string	"__int8_t"
.LASF34:
	.string	"ERR_ISCONN"
.LASF81:
	.string	"loop_last"
.LASF12:
	.string	"long long unsigned int"
.LASF95:
	.string	"MEMP_UDP_PCB"
.LASF134:
	.string	"remote_port"
.LASF107:
	.string	"MEMP_ND6_QUEUE"
.LASF98:
	.string	"MEMP_TCP_SEG"
.LASF20:
	.string	"uint16_t"
.LASF193:
	.string	"dns_skip_name"
.LASF102:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF234:
	.string	"pbuf_alloc"
.LASF197:
	.string	"nquestions"
.LASF177:
	.string	"dns_check_entries"
.LASF61:
	.string	"ip6_addr"
.LASF159:
	.string	"seqno"
.LASF162:
	.string	"dns_req_entry"
.LASF118:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF138:
	.string	"recv_arg"
.LASF106:
	.string	"MEMP_NETDB"
.LASF74:
	.string	"hostname"
.LASF192:
	.string	"response_offset"
.LASF7:
	.string	"__int16_t"
.LASF235:
	.string	"lwip_strnicmp"
.LASF232:
	.string	"pbuf_free"
.LASF24:
	.string	"ERR_OK"
.LASF112:
	.string	"MEMP_MAX"
.LASF147:
	.string	"numextrarr"
.LASF131:
	.string	"remote_ip"
.LASF88:
	.string	"ip6_addr_t"
.LASF237:
	.string	"udp_new_ip_type"
.LASF121:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF208:
	.string	"keep_fallback"
.LASF77:
	.string	"name"
.LASF181:
	.string	"port"
.LASF110:
	.string	"MEMP_PBUF"
.LASF26:
	.string	"ERR_BUF"
.LASF135:
	.string	"multicast_ip"
.LASF198:
	.string	"nanswers"
.LASF136:
	.string	"mcast_ttl"
.LASF8:
	.string	"short int"
.LASF216:
	.string	"dns_seqno"
.LASF19:
	.string	"int16_t"
.LASF185:
	.string	"callback_arg"
.LASF191:
	.string	"start_offset"
.LASF115:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF246:
	.string	"/home/raphael/rtone/lcd/build/lwip"
.LASF79:
	.string	"mld_mac_filter"
.LASF153:
	.string	"DNS_STATE_DONE"
.LASF236:
	.string	"udp_bind"
.LASF233:
	.string	"strlen"
.LASF44:
	.string	"PBUF_RAW_TX"
.LASF149:
	.string	"dns_answer"
.LASF247:
	.string	"memcpy"
.LASF245:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/core/dns.c"
.LASF104:
	.string	"MEMP_IGMP_GROUP"
.LASF21:
	.string	"uint32_t"
.LASF37:
	.string	"ERR_ABRT"
.LASF157:
	.string	"server_idx"
.LASF160:
	.string	"pcb_idx"
.LASF41:
	.string	"PBUF_TRANSPORT"
.LASF71:
	.string	"dhcp_event"
.LASF196:
	.string	"res_idx"
.LASF209:
	.string	"dns_tmr"
.LASF148:
	.string	"dns_query"
.LASF1:
	.string	"short unsigned int"
.LASF69:
	.string	"client_data"
.LASF39:
	.string	"ERR_CLSD"
.LASF218:
	.string	"dns_requests"
.LASF224:
	.string	"esp_random"
.LASF46:
	.string	"PBUF_RAM"
.LASF154:
	.string	"dns_table_entry"
.LASF45:
	.string	"PBUF_RAW"
.LASF38:
	.string	"ERR_RST"
.LASF50:
	.string	"next"
.LASF97:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF140:
	.string	"dns_found_callback"
.LASF43:
	.string	"PBUF_LINK"
.LASF103:
	.string	"MEMP_ARP_QUEUE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
