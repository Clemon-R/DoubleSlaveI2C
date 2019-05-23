	.file	"nd6.c"
	.text
.Ltext0:
	.section	.text.nd6_find_neighbor_cache_entry,"ax",@progbits
	.literal_position
	.literal .LC0, neighbor_cache
	.align	4
	.type	nd6_find_neighbor_cache_entry, @function
nd6_find_neighbor_cache_entry:
.LFB27:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/core/ipv6/nd6.c"
	.loc 1 1158 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 1160 0
	movi.n	a8, 0
	j	.L2
.LVL2:
.L5:
	.loc 1 1161 0
	l32i.n	a12, a2, 0
	sext	a10, a8, 7
	addx4	a11, a10, a10
	slli	a9, a11, 3
	l32r	a11, .LC0
	add.n	a9, a11, a9
	l32i.n	a9, a9, 0
	bne	a12, a9, .L3
	.loc 1 1161 0 is_stmt 0 discriminator 1
	l32i.n	a12, a2, 4
	addx4	a11, a10, a10
	slli	a9, a11, 3
	l32r	a11, .LC0
	add.n	a9, a11, a9
	l32i.n	a9, a9, 4
	bne	a12, a9, .L3
	.loc 1 1161 0 discriminator 2
	l32i.n	a12, a2, 8
	addx4	a11, a10, a10
	slli	a9, a11, 3
	l32r	a11, .LC0
	add.n	a9, a11, a9
	l32i.n	a9, a9, 8
	bne	a12, a9, .L3
	.loc 1 1161 0 discriminator 3
	l32i.n	a11, a2, 12
	addx4	a10, a10, a10
	slli	a9, a10, 3
	l32r	a10, .LC0
	add.n	a9, a10, a9
	l32i.n	a9, a9, 12
	beq	a11, a9, .L6
.L3:
	.loc 1 1160 0 is_stmt 1 discriminator 2
	addi.n	a8, a8, 1
.LVL3:
	extui	a8, a8, 0, 8
.LVL4:
.L2:
	.loc 1 1160 0 is_stmt 0 discriminator 1
	sext	a9, a8, 7
	movi.n	a10, 9
	bge	a10, a9, .L5
	.loc 1 1165 0 is_stmt 1
	movi	a2, 0xff
.LVL5:
	retw.n
.LVL6:
.L6:
	.loc 1 1162 0
	mov.n	a2, a8
.LVL7:
	.loc 1 1166 0
	retw.n
.LFE27:
	.size	nd6_find_neighbor_cache_entry, .-nd6_find_neighbor_cache_entry
	.section	.text.nd6_find_destination_cache_entry,"ax",@progbits
	.literal_position
	.literal .LC1, destination_cache
	.align	4
	.type	nd6_find_destination_cache_entry, @function
nd6_find_destination_cache_entry:
.LFB30:
	.loc 1 1317 0
.LVL8:
	entry	sp, 32
.LCFI1:
.LVL9:
	.loc 1 1319 0
	movi.n	a8, 0
	j	.L8
.LVL10:
.L11:
	.loc 1 1320 0
	l32i.n	a12, a2, 0
	sext	a10, a8, 7
	addx4	a11, a10, a10
	slli	a9, a11, 3
	l32r	a11, .LC1
	add.n	a9, a11, a9
	l32i.n	a9, a9, 0
	bne	a12, a9, .L9
	.loc 1 1320 0 is_stmt 0 discriminator 1
	l32i.n	a12, a2, 4
	addx4	a11, a10, a10
	slli	a9, a11, 3
	l32r	a11, .LC1
	add.n	a9, a11, a9
	l32i.n	a9, a9, 4
	bne	a12, a9, .L9
	.loc 1 1320 0 discriminator 2
	l32i.n	a12, a2, 8
	addx4	a11, a10, a10
	slli	a9, a11, 3
	l32r	a11, .LC1
	add.n	a9, a11, a9
	l32i.n	a9, a9, 8
	bne	a12, a9, .L9
	.loc 1 1320 0 discriminator 3
	l32i.n	a11, a2, 12
	addx4	a10, a10, a10
	slli	a9, a10, 3
	l32r	a10, .LC1
	add.n	a9, a10, a9
	l32i.n	a9, a9, 12
	beq	a11, a9, .L12
.L9:
	.loc 1 1319 0 is_stmt 1 discriminator 2
	addi.n	a8, a8, 1
.LVL11:
	extui	a8, a8, 0, 8
.LVL12:
.L8:
	.loc 1 1319 0 is_stmt 0 discriminator 1
	sext	a9, a8, 7
	movi.n	a10, 9
	bge	a10, a9, .L11
	.loc 1 1324 0 is_stmt 1
	movi	a2, 0xff
.LVL13:
	retw.n
.LVL14:
.L12:
	.loc 1 1321 0
	mov.n	a2, a8
.LVL15:
	.loc 1 1325 0
	retw.n
.LFE30:
	.size	nd6_find_destination_cache_entry, .-nd6_find_destination_cache_entry
	.section	.text.nd6_new_destination_cache_entry,"ax",@progbits
	.literal_position
	.literal .LC2, destination_cache
	.align	4
	.type	nd6_new_destination_cache_entry, @function
nd6_new_destination_cache_entry:
.LFB31:
	.loc 1 1336 0
	entry	sp, 32
.LCFI2:
.LVL16:
	.loc 1 1341 0
	movi.n	a8, 0
	j	.L14
.LVL17:
.L17:
	.loc 1 1342 0
	sext	a9, a8, 7
	addx4	a10, a9, a9
	slli	a2, a10, 3
	l32r	a10, .LC2
	add.n	a2, a10, a2
	l32i.n	a2, a2, 0
	.loc 1 1342 0
	bnez.n	a2, .L15
	.loc 1 1342 0 discriminator 1
	addx4	a10, a9, a9
	slli	a2, a10, 3
	l32r	a10, .LC2
	add.n	a2, a10, a2
	l32i.n	a2, a2, 4
	bnez.n	a2, .L15
	.loc 1 1342 0 is_stmt 0 discriminator 2
	addx4	a10, a9, a9
	slli	a2, a10, 3
	l32r	a10, .LC2
	add.n	a2, a10, a2
	l32i.n	a2, a2, 8
	bnez.n	a2, .L15
	.loc 1 1342 0 discriminator 3
	addx4	a9, a9, a9
	slli	a2, a9, 3
	add.n	a2, a10, a2
	l32i.n	a2, a2, 12
	beqz.n	a2, .L21
.L15:
	.loc 1 1341 0 is_stmt 1 discriminator 2
	addi.n	a8, a8, 1
.LVL18:
	extui	a8, a8, 0, 8
.LVL19:
.L14:
	.loc 1 1341 0 is_stmt 0 discriminator 1
	sext	a2, a8, 7
	movi.n	a9, 9
	bge	a9, a2, .L17
	mov.n	a2, a9
	movi.n	a9, 0
	j	.L18
.LVL20:
.L20:
	.loc 1 1351 0 is_stmt 1
	sext	a10, a9, 7
	addx4	a10, a10, a10
	slli	a8, a10, 3
	l32r	a10, .LC2
	add.n	a8, a10, a8
	l32i.n	a8, a8, 36
	beqz.n	a8, .L19
	.loc 1 1352 0
	mov.n	a2, a9
.LVL21:
.L19:
	.loc 1 1350 0 discriminator 2
	addi.n	a9, a9, 1
.LVL22:
	extui	a9, a9, 0, 8
.LVL23:
.L18:
	.loc 1 1350 0 is_stmt 0 discriminator 1
	sext	a8, a9, 7
	movi.n	a10, 9
	bge	a10, a8, .L20
	retw.n
.LVL24:
.L21:
	.loc 1 1343 0 is_stmt 1
	mov.n	a2, a8
	.loc 1 1357 0
	retw.n
.LFE31:
	.size	nd6_new_destination_cache_entry, .-nd6_new_destination_cache_entry
	.section	.text.nd6_is_prefix_in_netif,"ax",@progbits
	.literal_position
	.literal .LC3, prefix_list
	.align	4
	.type	nd6_is_prefix_in_netif, @function
nd6_is_prefix_in_netif:
.LFB33:
	.loc 1 1383 0
.LVL25:
	entry	sp, 32
.LCFI3:
.LVL26:
	.loc 1 1385 0
	movi.n	a8, 0
	j	.L24
.LVL27:
.L27:
	.loc 1 1386 0
	sext	a10, a8, 7
	subx8	a11, a10, a10
	slli	a9, a11, 2
	l32r	a11, .LC3
	add.n	a9, a11, a9
	l32i.n	a9, a9, 16
	bne	a9, a3, .L25
	.loc 1 1387 0 discriminator 1
	subx8	a11, a10, a10
	slli	a9, a11, 2
	l32r	a11, .LC3
	add.n	a9, a11, a9
	l32i.n	a9, a9, 20
	.loc 1 1386 0 discriminator 1
	beqz.n	a9, .L25
	.loc 1 1388 0
	l32i.n	a12, a2, 0
	subx8	a11, a10, a10
	slli	a9, a11, 2
	l32r	a11, .LC3
	add.n	a9, a11, a9
	l32i.n	a9, a9, 0
	.loc 1 1387 0
	bne	a12, a9, .L25
	.loc 1 1388 0
	l32i.n	a11, a2, 4
	subx8	a10, a10, a10
	slli	a9, a10, 2
	l32r	a10, .LC3
	add.n	a9, a10, a9
	l32i.n	a9, a9, 4
	beq	a11, a9, .L31
.L25:
	.loc 1 1385 0 discriminator 2
	addi.n	a8, a8, 1
.LVL28:
	extui	a8, a8, 0, 8
.LVL29:
.L24:
	.loc 1 1385 0 is_stmt 0 discriminator 1
	sext	a9, a8, 7
	blti	a9, 5, .L27
	movi.n	a9, 0
	j	.L28
.LVL30:
.L30:
	.loc 1 1394 0 is_stmt 1
	sext	a8, a9, 7
	add.n	a10, a3, a8
	l8ui	a10, a10, 124
	bbci	a10, 4, .L29
	.loc 1 1395 0 discriminator 1
	l32i.n	a12, a2, 0
	addx4	a11, a8, a8
	slli	a10, a11, 2
	add.n	a10, a3, a10
	l32i	a10, a10, 64
	.loc 1 1394 0 discriminator 1
	bne	a12, a10, .L29
	.loc 1 1395 0
	l32i.n	a11, a2, 4
	addx4	a8, a8, a8
	slli	a10, a8, 2
	add.n	a10, a3, a10
	l32i	a8, a10, 68
	beq	a11, a8, .L32
.L29:
	.loc 1 1393 0 discriminator 2
	addi.n	a9, a9, 1
.LVL31:
	extui	a9, a9, 0, 8
.LVL32:
.L28:
	.loc 1 1393 0 is_stmt 0 discriminator 1
	sext	a8, a9, 7
	blti	a8, 3, .L30
	.loc 1 1399 0 is_stmt 1
	movi.n	a2, 0
.LVL33:
	retw.n
.LVL34:
.L31:
	.loc 1 1389 0
	movi.n	a2, 1
.LVL35:
	retw.n
.LVL36:
.L32:
	.loc 1 1396 0
	movi.n	a2, 1
.LVL37:
	.loc 1 1400 0
	retw.n
.LFE33:
	.size	nd6_is_prefix_in_netif, .-nd6_is_prefix_in_netif
	.section	.text.nd6_select_router,"ax",@progbits
	.literal_position
	.literal .LC4, last_router$6975
	.literal .LC5, default_router_list
	.align	4
	.type	nd6_select_router, @function
nd6_select_router:
.LFB34:
	.loc 1 1412 0
.LVL38:
	entry	sp, 32
.LCFI4:
.LVL39:
	.loc 1 1423 0
	movi.n	a8, 0
	j	.L34
.LVL40:
.L39:
	.loc 1 1424 0
	l32r	a9, .LC4
	l8ui	a2, a9, 0
	addi.n	a2, a2, 1
	extui	a2, a2, 0, 8
	s8i	a2, a9, 0
	sext	a2, a2, 7
	blti	a2, 3, .L35
	.loc 1 1425 0
	movi.n	a9, 0
	l32r	a2, .LC4
	s8i	a9, a2, 0
.L35:
	.loc 1 1427 0
	sext	a9, a8, 7
	addx2	a10, a9, a9
	slli	a2, a10, 2
	l32r	a10, .LC5
	add.n	a2, a10, a2
	l32i.n	a2, a2, 0
	beqz.n	a2, .L36
	.loc 1 1427 0 discriminator 1
	beqz.n	a3, .L37
	.loc 1 1428 0 discriminator 2
	l32i.n	a10, a2, 16
	.loc 1 1427 0 discriminator 2
	bne	a3, a10, .L36
.L37:
	.loc 1 1429 0
	addx2	a9, a9, a9
	slli	a10, a9, 2
	l32r	a9, .LC5
	add.n	a10, a9, a10
	l32i.n	a9, a10, 4
	.loc 1 1428 0
	beqz.n	a9, .L36
	.loc 1 1430 0
	l8ui	a2, a2, 32
	.loc 1 1429 0
	beqi	a2, 2, .L49
.L36:
	.loc 1 1423 0 discriminator 2
	addi.n	a8, a8, 1
.LVL41:
	extui	a8, a8, 0, 8
.LVL42:
.L34:
	.loc 1 1423 0 is_stmt 0 discriminator 1
	sext	a2, a8, 7
	blti	a2, 3, .L39
	movi.n	a8, 0
.LVL43:
	j	.L40
.LVL44:
.L44:
	.loc 1 1437 0 is_stmt 1
	l32r	a9, .LC4
	l8ui	a2, a9, 0
	addi.n	a2, a2, 1
	extui	a2, a2, 0, 8
	s8i	a2, a9, 0
	sext	a2, a2, 7
	blti	a2, 3, .L41
	.loc 1 1438 0
	movi.n	a9, 0
	l32r	a2, .LC4
	s8i	a9, a2, 0
.L41:
	.loc 1 1440 0
	sext	a9, a8, 7
	addx2	a10, a9, a9
	slli	a2, a10, 2
	l32r	a10, .LC5
	add.n	a2, a10, a2
	l32i.n	a2, a2, 0
	beqz.n	a2, .L42
	.loc 1 1440 0 discriminator 1
	beqz.n	a3, .L43
	.loc 1 1441 0 discriminator 2
	l32i.n	a2, a2, 16
	.loc 1 1440 0 discriminator 2
	bne	a3, a2, .L42
.L43:
	.loc 1 1442 0
	addx2	a9, a9, a9
	slli	a2, a9, 2
	l32r	a9, .LC5
	add.n	a2, a9, a2
	l32i.n	a2, a2, 4
	.loc 1 1441 0
	bnez.n	a2, .L50
.L42:
	.loc 1 1436 0 discriminator 2
	addi.n	a8, a8, 1
.LVL45:
	extui	a8, a8, 0, 8
.LVL46:
.L40:
	.loc 1 1436 0 is_stmt 0 discriminator 1
	sext	a2, a8, 7
	blti	a2, 3, .L44
	movi.n	a8, 0
.LVL47:
	j	.L45
.LVL48:
.L48:
	.loc 1 1449 0 is_stmt 1
	l32r	a9, .LC4
	l8ui	a2, a9, 0
	addi.n	a2, a2, 1
	extui	a2, a2, 0, 8
	s8i	a2, a9, 0
	sext	a2, a2, 7
	blti	a2, 3, .L46
	.loc 1 1450 0
	movi.n	a9, 0
	l32r	a2, .LC4
	s8i	a9, a2, 0
.L46:
	.loc 1 1452 0
	sext	a2, a8, 7
	addx2	a2, a2, a2
	slli	a9, a2, 2
	l32r	a2, .LC5
	add.n	a9, a2, a9
	l32i.n	a2, a9, 0
	beqz.n	a2, .L47
	.loc 1 1452 0 discriminator 1
	beqz.n	a3, .L51
	.loc 1 1453 0 discriminator 2
	l32i.n	a2, a2, 16
	.loc 1 1452 0 discriminator 2
	beq	a3, a2, .L52
.L47:
	.loc 1 1448 0 discriminator 2
	addi.n	a8, a8, 1
.LVL49:
	extui	a8, a8, 0, 8
.LVL50:
.L45:
	.loc 1 1448 0 is_stmt 0 discriminator 1
	sext	a2, a8, 7
	blti	a2, 3, .L48
	.loc 1 1459 0 is_stmt 1
	movi	a2, 0xff
	retw.n
.L49:
	.loc 1 1431 0
	mov.n	a2, a8
	retw.n
.L50:
	.loc 1 1443 0
	mov.n	a2, a8
	retw.n
.L51:
	.loc 1 1454 0
	mov.n	a2, a8
	retw.n
.L52:
	mov.n	a2, a8
	.loc 1 1460 0
	retw.n
.LFE34:
	.size	nd6_select_router, .-nd6_select_router
	.section	.text.nd6_get_router,"ax",@progbits
	.literal_position
	.literal .LC6, default_router_list
	.align	4
	.type	nd6_get_router, @function
nd6_get_router:
.LFB36:
	.loc 1 1495 0
.LVL51:
	entry	sp, 32
.LCFI5:
.LVL52:
	.loc 1 1499 0
	movi.n	a8, 0
	j	.L54
.LVL53:
.L58:
	.loc 1 1500 0
	sext	a9, a8, 7
	addx2	a9, a9, a9
	slli	a10, a9, 2
	l32r	a9, .LC6
	add.n	a10, a9, a10
	l32i.n	a9, a10, 0
	beqz.n	a9, .L55
	.loc 1 1500 0 discriminator 1
	beqz.n	a3, .L56
	.loc 1 1501 0 discriminator 2
	l32i.n	a10, a9, 16
	.loc 1 1500 0 discriminator 2
	bne	a3, a10, .L55
.L56:
	.loc 1 1502 0
	l32i.n	a11, a2, 0
	l32i.n	a10, a9, 0
	.loc 1 1501 0
	bne	a11, a10, .L55
	.loc 1 1502 0
	l32i.n	a11, a2, 4
	l32i.n	a10, a9, 4
	bne	a11, a10, .L55
	.loc 1 1502 0 is_stmt 0 discriminator 1
	l32i.n	a11, a2, 8
	l32i.n	a10, a9, 8
	bne	a11, a10, .L55
	.loc 1 1502 0 discriminator 2
	l32i.n	a10, a2, 12
	l32i.n	a9, a9, 12
	beq	a10, a9, .L59
.L55:
	.loc 1 1499 0 is_stmt 1 discriminator 2
	addi.n	a8, a8, 1
.LVL54:
	extui	a8, a8, 0, 8
.LVL55:
.L54:
	.loc 1 1499 0 is_stmt 0 discriminator 1
	sext	a9, a8, 7
	blti	a9, 3, .L58
	.loc 1 1508 0 is_stmt 1
	movi	a2, 0xff
.LVL56:
	retw.n
.LVL57:
.L59:
	.loc 1 1503 0
	mov.n	a2, a8
.LVL58:
	.loc 1 1509 0
	retw.n
.LFE36:
	.size	nd6_get_router, .-nd6_get_router
	.section	.text.nd6_get_onlink_prefix,"ax",@progbits
	.literal_position
	.literal .LC7, prefix_list
	.align	4
	.type	nd6_get_onlink_prefix, @function
nd6_get_onlink_prefix:
.LFB38:
	.loc 1 1581 0
.LVL59:
	entry	sp, 32
.LCFI6:
.LVL60:
	.loc 1 1585 0
	movi.n	a8, 0
	j	.L61
.LVL61:
.L64:
	.loc 1 1586 0
	sext	a10, a8, 7
	subx8	a11, a10, a10
	slli	a9, a11, 2
	l32r	a11, .LC7
	add.n	a9, a11, a9
	l32i.n	a11, a9, 0
	l32i.n	a9, a2, 0
	bne	a11, a9, .L62
	.loc 1 1586 0 is_stmt 0 discriminator 1
	subx8	a11, a10, a10
	slli	a9, a11, 2
	l32r	a11, .LC7
	add.n	a9, a11, a9
	l32i.n	a11, a9, 4
	l32i.n	a9, a2, 4
	bne	a11, a9, .L62
	.loc 1 1587 0 is_stmt 1 discriminator 2
	subx8	a10, a10, a10
	slli	a9, a10, 2
	l32r	a10, .LC7
	add.n	a9, a10, a9
	l32i.n	a9, a9, 16
	.loc 1 1586 0 discriminator 2
	beq	a9, a3, .L65
.L62:
	.loc 1 1585 0 discriminator 2
	addi.n	a8, a8, 1
.LVL62:
	extui	a8, a8, 0, 8
.LVL63:
.L61:
	.loc 1 1585 0 is_stmt 0 discriminator 1
	sext	a9, a8, 7
	blti	a9, 5, .L64
	.loc 1 1593 0 is_stmt 1
	movi	a2, 0xff
.LVL64:
	retw.n
.LVL65:
.L65:
	.loc 1 1588 0
	mov.n	a2, a8
.LVL66:
	.loc 1 1594 0
	retw.n
.LFE38:
	.size	nd6_get_onlink_prefix, .-nd6_get_onlink_prefix
	.section	.text.nd6_new_onlink_prefix,"ax",@progbits
	.literal_position
	.literal .LC8, prefix_list
	.align	4
	.type	nd6_new_onlink_prefix, @function
nd6_new_onlink_prefix:
.LFB39:
	.loc 1 1605 0
.LVL67:
	entry	sp, 32
.LCFI7:
.LVL68:
	.loc 1 1609 0
	movi.n	a8, 0
	j	.L67
.LVL69:
.L75:
	.loc 1 1610 0
	sext	a9, a8, 7
	subx8	a11, a9, a9
	slli	a10, a11, 2
	l32r	a11, .LC8
	add.n	a10, a11, a10
	l32i.n	a10, a10, 16
	beqz.n	a10, .L68
	.loc 1 1611 0 discriminator 1
	subx8	a11, a9, a9
	slli	a10, a11, 2
	l32r	a11, .LC8
	add.n	a10, a11, a10
	l32i.n	a10, a10, 20
	.loc 1 1610 0 discriminator 1
	bnez.n	a10, .L69
.L68:
	.loc 1 1613 0
	subx8	a11, a9, a9
	slli	a10, a11, 2
	l32r	a11, .LC8
	add.n	a10, a11, a10
	s32i.n	a3, a10, 16
	.loc 1 1614 0
	beqz.n	a2, .L76
	.loc 1 1614 0 is_stmt 0 discriminator 1
	l32i.n	a11, a2, 0
	j	.L70
.L76:
	.loc 1 1614 0
	movi.n	a11, 0
.L70:
	.loc 1 1614 0 is_stmt 1 discriminator 4
	subx8	a10, a9, a9
	slli	a3, a10, 2
.LVL70:
	l32r	a10, .LC8
.LVL71:
	add.n	a3, a10, a3
	s32i.n	a11, a3, 0
	.loc 1 1614 0 discriminator 4
	beqz.n	a2, .L77
	.loc 1 1614 0 is_stmt 0 discriminator 5
	l32i.n	a11, a2, 4
	j	.L71
.L77:
	.loc 1 1614 0
	movi.n	a11, 0
.L71:
	.loc 1 1614 0 is_stmt 1 discriminator 8
	subx8	a10, a9, a9
.LVL72:
	slli	a3, a10, 2
	l32r	a10, .LC8
.LVL73:
	add.n	a3, a10, a3
	s32i.n	a11, a3, 4
	.loc 1 1614 0 discriminator 8
	beqz.n	a2, .L78
	.loc 1 1614 0 is_stmt 0 discriminator 9
	l32i.n	a11, a2, 8
	j	.L72
.L78:
	.loc 1 1614 0
	movi.n	a11, 0
.L72:
	.loc 1 1614 0 is_stmt 1 discriminator 12
	subx8	a10, a9, a9
.LVL74:
	slli	a3, a10, 2
	l32r	a10, .LC8
.LVL75:
	add.n	a3, a10, a3
	s32i.n	a11, a3, 8
	.loc 1 1614 0 discriminator 12
	beqz.n	a2, .L79
	.loc 1 1614 0 is_stmt 0 discriminator 13
	l32i.n	a12, a2, 12
	j	.L73
.L79:
	.loc 1 1614 0
	movi.n	a12, 0
.L73:
	.loc 1 1614 0 is_stmt 1 discriminator 16
	l32r	a10, .LC8
	slli	a2, a9, 3
.LVL76:
	sub	a11, a2, a9
	slli	a3, a11, 2
	add.n	a3, a10, a3
	s32i.n	a12, a3, 12
	.loc 1 1616 0 discriminator 16
	mov.n	a2, a3
	movi.n	a3, 0
	s8i	a3, a2, 24
	.loc 1 1618 0 discriminator 16
	mov.n	a2, a8
	retw.n
.LVL77:
.L69:
	.loc 1 1609 0 discriminator 2
	addi.n	a8, a8, 1
.LVL78:
	extui	a8, a8, 0, 8
.LVL79:
.L67:
	.loc 1 1609 0 is_stmt 0 discriminator 1
	sext	a9, a8, 7
	blti	a9, 5, .L75
	.loc 1 1623 0 is_stmt 1
	movi	a2, 0xff
.LVL80:
	.loc 1 1624 0
	retw.n
.LFE39:
	.size	nd6_new_onlink_prefix, .-nd6_new_onlink_prefix
	.section	.text.nd6_send_q,"ax",@progbits
	.literal_position
	.literal .LC9, neighbor_cache
	.align	4
	.type	nd6_send_q, @function
nd6_send_q:
.LFB43:
	.loc 1 1894 0
.LVL81:
	entry	sp, 48
.LCFI8:
	extui	a2, a2, 0, 8
	.loc 1 1901 0
	extui	a3, a2, 0, 8
	movi.n	a8, 9
	bltu	a8, a3, .L80
	j	.L82
.L87:
.LVL82:
	.loc 1 1910 0
	l32i.n	a11, a3, 0
	addx4	a10, a9, a9
	slli	a8, a10, 3
	l32r	a10, .LC9
	add.n	a8, a10, a8
	s32i.n	a11, a8, 28
	.loc 1 1912 0
	l32i.n	a8, a3, 4
	l32i.n	a8, a8, 4
.LVL83:
	.loc 1 1914 0
	addi	a14, a8, 24
	.loc 1 1914 0
	beqz.n	a14, .L89
	.loc 1 1914 0 is_stmt 0 discriminator 1
	l8ui	a13, a8, 24
	l8ui	a11, a8, 25
	slli	a11, a11, 8
	or	a12, a11, a13
	l8ui	a10, a8, 26
	slli	a10, a10, 16
	or	a11, a10, a12
	l8ui	a10, a8, 27
	slli	a10, a10, 24
	or	a10, a10, a11
	j	.L83
.L89:
	.loc 1 1914 0
	movi.n	a10, 0
.L83:
	.loc 1 1914 0 is_stmt 1 discriminator 4
	s32i.n	a10, sp, 0
	.loc 1 1914 0 discriminator 4
	beqz.n	a14, .L90
	.loc 1 1914 0 is_stmt 0 discriminator 5
	l8ui	a13, a8, 28
	l8ui	a11, a8, 29
	slli	a11, a11, 8
	or	a12, a11, a13
	l8ui	a10, a8, 30
	slli	a10, a10, 16
	or	a11, a10, a12
	l8ui	a10, a8, 31
	slli	a10, a10, 24
	or	a10, a10, a11
	j	.L84
.L90:
	.loc 1 1914 0
	movi.n	a10, 0
.L84:
	.loc 1 1914 0 is_stmt 1 discriminator 8
	s32i.n	a10, sp, 4
	.loc 1 1914 0 discriminator 8
	beqz.n	a14, .L91
	.loc 1 1914 0 is_stmt 0 discriminator 9
	l8ui	a13, a8, 32
	l8ui	a11, a8, 33
	slli	a11, a11, 8
	or	a12, a11, a13
	l8ui	a10, a8, 34
	slli	a10, a10, 16
	or	a11, a10, a12
	l8ui	a10, a8, 35
	slli	a10, a10, 24
	or	a10, a10, a11
	j	.L85
.L91:
	.loc 1 1914 0
	movi.n	a10, 0
.L85:
	.loc 1 1914 0 is_stmt 1 discriminator 12
	s32i.n	a10, sp, 8
	.loc 1 1914 0 discriminator 12
	beqz.n	a14, .L92
	.loc 1 1914 0 is_stmt 0 discriminator 13
	l8ui	a12, a8, 36
	l8ui	a10, a8, 37
	slli	a10, a10, 8
	or	a11, a10, a12
	l8ui	a10, a8, 38
	slli	a10, a10, 16
	or	a10, a10, a11
	l8ui	a8, a8, 39
.LVL84:
	slli	a8, a8, 24
	or	a8, a8, a10
	j	.L86
.LVL85:
.L92:
	.loc 1 1914 0
	movi.n	a8, 0
.LVL86:
.L86:
	.loc 1 1914 0 is_stmt 1 discriminator 16
	s32i.n	a8, sp, 12
	.loc 1 1916 0 discriminator 16
	addx4	a9, a9, a9
	slli	a8, a9, 3
	l32r	a9, .LC9
	add.n	a8, a9, a8
	l32i.n	a10, a8, 16
	l32i	a8, a10, 144
	mov.n	a12, sp
	l32i.n	a11, a3, 4
	callx8	a8
.LVL87:
	.loc 1 1918 0 discriminator 16
	l32i.n	a10, a3, 4
	call8	pbuf_free
.LVL88:
	.loc 1 1920 0 discriminator 16
	mov.n	a11, a3
	movi.n	a10, 0xd
	call8	memp_free
.LVL89:
.L82:
	.loc 1 1906 0
	sext	a9, a2, 7
	addx4	a8, a9, a9
	slli	a3, a8, 3
	l32r	a8, .LC9
	add.n	a3, a8, a3
	l32i.n	a3, a3, 28
	bnez.n	a3, .L87
.L80:
	retw.n
.LFE43:
	.size	nd6_send_q, .-nd6_send_q
	.section	.text.nd6_send_na,"ax",@progbits
	.literal_position
	.literal .LC10, multicast_address
	.literal .LC11, ip_data+20
	.literal .LC12, 16777216
	.align	4
	.type	nd6_send_na, @function
nd6_send_na:
.LFB25:
	.loc 1 1016 0
.LVL90:
	entry	sp, 48
.LCFI9:
.LVL91:
	.loc 1 1030 0
	l8ui	a5, a2, 182
	addi.n	a5, a5, 2
	srai	a6, a5, 3
	extui	a5, a5, 0, 3
	movi.n	a10, 1
	movi.n	a12, 0
	mov.n	a8, a12
	movnez	a8, a10, a5
	add.n	a5, a8, a6
	extui	a6, a5, 0, 16
.LVL92:
	.loc 1 1031 0
	slli	a11, a6, 3
	addi	a11, a11, 24
	extui	a11, a11, 0, 16
	call8	pbuf_alloc
.LVL93:
	mov.n	a7, a10
.LVL94:
	.loc 1 1032 0
	beqz.n	a10, .L93
	.loc 1 1038 0
	l32i.n	a5, a10, 4
.LVL95:
	.loc 1 1041 0
	movi	a8, -0x78
	s8i	a8, a5, 0
	.loc 1 1042 0
	movi.n	a8, 0
	s8i	a8, a5, 1
	.loc 1 1043 0
	movi.n	a9, 0
	s8i	a9, a5, 2
	s8i	a9, a5, 3
	.loc 1 1044 0
	movi.n	a9, -0x10
	and	a9, a4, a9
	s8i	a9, a5, 4
	.loc 1 1045 0
	s8i	a8, a5, 5
	.loc 1 1046 0
	s8i	a8, a5, 6
	.loc 1 1047 0
	s8i	a8, a5, 7
	.loc 1 1048 0
	beqz.n	a3, .L101
	.loc 1 1048 0 is_stmt 0 discriminator 1
	l32i.n	a8, a3, 0
	j	.L95
.L101:
	.loc 1 1048 0
	movi.n	a8, 0
.L95:
	.loc 1 1048 0 is_stmt 1 discriminator 4
	s8i	a8, a5, 8
	extui	a9, a8, 8, 8
	s8i	a9, a5, 9
	extui	a9, a8, 16, 8
	s8i	a9, a5, 10
	extui	a8, a8, 24, 8
	s8i	a8, a5, 11
	.loc 1 1048 0 discriminator 4
	beqz.n	a3, .L102
	.loc 1 1048 0 is_stmt 0 discriminator 5
	l32i.n	a8, a3, 4
	j	.L96
.L102:
	.loc 1 1048 0
	movi.n	a8, 0
.L96:
	.loc 1 1048 0 is_stmt 1 discriminator 8
	s8i	a8, a5, 12
	extui	a9, a8, 8, 8
	s8i	a9, a5, 13
	extui	a9, a8, 16, 8
	s8i	a9, a5, 14
	extui	a8, a8, 24, 8
	s8i	a8, a5, 15
	.loc 1 1048 0 discriminator 8
	beqz.n	a3, .L103
	.loc 1 1048 0 is_stmt 0 discriminator 9
	l32i.n	a8, a3, 8
	j	.L97
.L103:
	.loc 1 1048 0
	movi.n	a8, 0
.L97:
	.loc 1 1048 0 is_stmt 1 discriminator 12
	s8i	a8, a5, 16
	extui	a9, a8, 8, 8
	s8i	a9, a5, 17
	extui	a9, a8, 16, 8
	s8i	a9, a5, 18
	extui	a8, a8, 24, 8
	s8i	a8, a5, 19
	.loc 1 1048 0 discriminator 12
	beqz.n	a3, .L104
	.loc 1 1048 0 is_stmt 0 discriminator 13
	l32i.n	a8, a3, 12
	j	.L98
.L104:
	.loc 1 1048 0
	movi.n	a8, 0
.L98:
	.loc 1 1048 0 is_stmt 1 discriminator 16
	s8i	a8, a5, 20
	extui	a9, a8, 8, 8
	s8i	a9, a5, 21
	extui	a9, a8, 16, 8
	s8i	a9, a5, 22
	extui	a8, a8, 24, 8
	s8i	a8, a5, 23
	.loc 1 1050 0 discriminator 16
	movi.n	a8, 2
	s8i	a8, a5, 24
	.loc 1 1051 0 discriminator 16
	s8i	a6, a5, 25
	.loc 1 1052 0 discriminator 16
	l8ui	a12, a2, 182
	movi	a11, 0xb7
	add.n	a11, a2, a11
	addi	a10, a5, 26
	call8	memcpy
.LVL96:
	.loc 1 1055 0 discriminator 16
	bbci	a4, 0, .L99
	.loc 1 1056 0
	l32r	a4, .LC10
.LVL97:
	movi	a6, 0x2ff
.LVL98:
	s32i.n	a6, a4, 0
	movi.n	a6, 0
	s32i.n	a6, a4, 4
	l32r	a6, .LC12
	s32i.n	a6, a4, 8
	l32i.n	a8, a3, 12
	movi	a6, 0xff
	or	a6, a8, a6
	s32i.n	a6, a4, 12
.LVL99:
	j	.L100
.LVL100:
.L99:
	.loc 1 1058 0
	bbci	a4, 1, .L105
	.loc 1 1059 0
	l32r	a4, .LC10
.LVL101:
	movi	a6, 0x2ff
.LVL102:
	s32i.n	a6, a4, 0
	movi.n	a6, 0
	s32i.n	a6, a4, 4
	s32i.n	a6, a4, 8
	l32r	a6, .LC12
	s32i.n	a6, a4, 12
.LVL103:
	j	.L100
.LVL104:
.L105:
	.loc 1 1062 0
	l32r	a4, .LC11
.LVL105:
.L100:
	.loc 1 1067 0
	mov.n	a14, a4
	mov.n	a13, a3
	l16ui	a12, a7, 10
	movi.n	a11, 0x3a
	mov.n	a10, a7
	call8	ip6_chksum_pseudo
.LVL106:
	s8i	a10, a5, 2
	extui	a10, a10, 8, 16
	s8i	a10, a5, 3
	.loc 1 1074 0
	s32i.n	a2, sp, 0
	movi.n	a15, 0x3a
	movi.n	a14, 0
	movi	a13, 0xff
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a7
	call8	ip6_output_if
.LVL107:
	.loc 1 1076 0
	mov.n	a10, a7
	call8	pbuf_free
.LVL108:
.L93:
	retw.n
.LFE25:
	.size	nd6_send_na, .-nd6_send_na
	.section	.text.nd6_send_rs,"ax",@progbits
	.literal_position
	.literal .LC13, ip6_addr_any
	.literal .LC14, multicast_address
	.literal .LC15, 33554432
	.align	4
	.type	nd6_send_rs, @function
nd6_send_rs:
.LFB26:
	.loc 1 1087 0
.LVL109:
	entry	sp, 48
.LCFI10:
.LVL110:
	.loc 1 1096 0
	l8ui	a3, a2, 124
	bbci	a3, 4, .L112
	.loc 1 1097 0
	addi	a4, a2, 64
.LVL111:
	j	.L107
.LVL112:
.L112:
	.loc 1 1099 0
	l32r	a4, .LC13
.L107:
.LVL113:
	.loc 1 1103 0
	l32r	a3, .LC14
	movi	a5, 0x2ff
	s32i.n	a5, a3, 0
	movi.n	a5, 0
	s32i.n	a5, a3, 4
	s32i.n	a5, a3, 8
	l32r	a5, .LC15
	s32i.n	a5, a3, 12
	.loc 1 1106 0
	l32r	a3, .LC13
	beq	a4, a3, .L113
	.loc 1 1107 0
	l8ui	a3, a2, 182
	addi.n	a3, a3, 2
	srai	a6, a3, 3
	extui	a5, a3, 0, 3
	movi.n	a3, 0
	movi.n	a8, 1
	movnez	a3, a8, a5
	add.n	a3, a3, a6
	extui	a6, a3, 0, 16
.LVL114:
	j	.L108
.LVL115:
.L113:
	.loc 1 1093 0
	movi.n	a6, 0
.LVL116:
.L108:
	.loc 1 1109 0
	slli	a11, a6, 3
	addi.n	a11, a11, 8
	extui	a11, a11, 0, 16
	movi.n	a12, 0
	movi.n	a10, 1
	call8	pbuf_alloc
.LVL117:
	mov.n	a5, a10
.LVL118:
	.loc 1 1110 0
	beqz.n	a10, .L114
	.loc 1 1116 0
	l32i.n	a3, a10, 4
.LVL119:
	.loc 1 1118 0
	movi	a8, -0x7b
	s8i	a8, a3, 0
	.loc 1 1119 0
	movi.n	a8, 0
	s8i	a8, a3, 1
	.loc 1 1120 0
	movi.n	a8, 0
	s8i	a8, a3, 2
	s8i	a8, a3, 3
	.loc 1 1121 0
	s8i	a8, a3, 4
	s8i	a8, a3, 5
	s8i	a8, a3, 6
	s8i	a8, a3, 7
	.loc 1 1123 0
	l32r	a8, .LC13
	beq	a4, a8, .L110
	.loc 1 1125 0
	l32i.n	a10, a10, 4
.LVL120:
	.loc 1 1126 0
	movi.n	a8, 1
	s8i	a8, a10, 8
	.loc 1 1127 0
	s8i	a6, a10, 9
	.loc 1 1128 0
	l8ui	a12, a2, 182
	movi	a11, 0xb7
	add.n	a11, a2, a11
	addi.n	a10, a10, 10
.LVL121:
	call8	memcpy
.LVL122:
.L110:
	.loc 1 1133 0
	l32r	a14, .LC14
	mov.n	a13, a4
	l16ui	a12, a5, 10
	movi.n	a11, 0x3a
	mov.n	a10, a5
	call8	ip6_chksum_pseudo
.LVL123:
	s8i	a10, a3, 2
	extui	a10, a10, 8, 16
	s8i	a10, a3, 3
	.loc 1 1141 0
	l32r	a3, .LC13
.LVL124:
	bne	a4, a3, .L115
	movi.n	a11, 0
	j	.L111
.L115:
	mov.n	a11, a4
.L111:
	.loc 1 1141 0 is_stmt 0 discriminator 4
	s32i.n	a2, sp, 0
	movi.n	a15, 0x3a
	movi.n	a14, 0
	movi	a13, 0xff
	l32r	a12, .LC14
	mov.n	a10, a5
	call8	ip6_output_if
.LVL125:
	extui	a2, a10, 0, 8
.LVL126:
	.loc 1 1143 0 is_stmt 1 discriminator 4
	mov.n	a10, a5
.LVL127:
	call8	pbuf_free
.LVL128:
	.loc 1 1145 0 discriminator 4
	retw.n
.LVL129:
.L114:
	.loc 1 1112 0
	movi	a2, 0xfe
.LVL130:
	.loc 1 1146 0
	retw.n
.LFE26:
	.size	nd6_send_rs, .-nd6_send_rs
	.section	.text.nd6_send_ns,"ax",@progbits
	.literal_position
	.literal .LC16, ip6_addr_any
	.literal .LC17, multicast_address
	.literal .LC18, 16777216
	.align	4
	.type	nd6_send_ns, @function
nd6_send_ns:
.LFB24:
	.loc 1 947 0
.LVL131:
	entry	sp, 64
.LCFI11:
	s32i.n	a4, sp, 16
	.loc 1 953 0
	l8ui	a4, a2, 124
.LVL132:
	bbci	a4, 4, .L126
	.loc 1 955 0
	addi	a6, a2, 64
.LVL133:
	.loc 1 957 0
	l8ui	a7, a2, 182
	addi.n	a7, a7, 9
	extui	a7, a7, 3, 16
.LVL134:
	j	.L117
.LVL135:
.L126:
	.loc 1 961 0
	movi.n	a7, 0
	.loc 1 959 0
	l32r	a6, .LC16
.L117:
.LVL136:
	.loc 1 965 0
	slli	a11, a7, 3
	addi	a11, a11, 24
	extui	a11, a11, 0, 16
	movi.n	a12, 0
	movi.n	a10, 1
	call8	pbuf_alloc
.LVL137:
	mov.n	a5, a10
.LVL138:
	.loc 1 966 0
	beqz.n	a10, .L116
	.loc 1 972 0
	l32i.n	a4, a10, 4
.LVL139:
	.loc 1 974 0
	movi	a8, -0x79
	s8i	a8, a4, 0
	.loc 1 975 0
	movi.n	a8, 0
	s8i	a8, a4, 1
	.loc 1 976 0
	movi.n	a8, 0
	s8i	a8, a4, 2
	s8i	a8, a4, 3
	.loc 1 977 0
	s8i	a8, a4, 4
	s8i	a8, a4, 5
	s8i	a8, a4, 6
	s8i	a8, a4, 7
	.loc 1 978 0
	beq	a3, a8, .L127
	.loc 1 978 0 is_stmt 0 discriminator 1
	l32i.n	a8, a3, 0
	j	.L119
.L127:
	.loc 1 978 0
	movi.n	a8, 0
.L119:
	.loc 1 978 0 is_stmt 1 discriminator 4
	s8i	a8, a4, 8
	extui	a9, a8, 8, 8
	s8i	a9, a4, 9
	extui	a9, a8, 16, 8
	s8i	a9, a4, 10
	extui	a8, a8, 24, 8
	s8i	a8, a4, 11
	.loc 1 978 0 discriminator 4
	beqz.n	a3, .L128
	.loc 1 978 0 is_stmt 0 discriminator 5
	l32i.n	a8, a3, 4
	j	.L120
.L128:
	.loc 1 978 0
	movi.n	a8, 0
.L120:
	.loc 1 978 0 is_stmt 1 discriminator 8
	s8i	a8, a4, 12
	extui	a9, a8, 8, 8
	s8i	a9, a4, 13
	extui	a9, a8, 16, 8
	s8i	a9, a4, 14
	extui	a8, a8, 24, 8
	s8i	a8, a4, 15
	.loc 1 978 0 discriminator 8
	beqz.n	a3, .L129
	.loc 1 978 0 is_stmt 0 discriminator 9
	l32i.n	a8, a3, 8
	j	.L121
.L129:
	.loc 1 978 0
	movi.n	a8, 0
.L121:
	.loc 1 978 0 is_stmt 1 discriminator 12
	s8i	a8, a4, 16
	extui	a9, a8, 8, 8
	s8i	a9, a4, 17
	extui	a9, a8, 16, 8
	s8i	a9, a4, 18
	extui	a8, a8, 24, 8
	s8i	a8, a4, 19
	.loc 1 978 0 discriminator 12
	beqz.n	a3, .L130
	.loc 1 978 0 is_stmt 0 discriminator 13
	l32i.n	a8, a3, 12
	j	.L122
.L130:
	.loc 1 978 0
	movi.n	a8, 0
.L122:
	.loc 1 978 0 is_stmt 1 discriminator 16
	s8i	a8, a4, 20
	extui	a9, a8, 8, 8
	s8i	a9, a4, 21
	extui	a9, a8, 16, 8
	s8i	a9, a4, 22
	extui	a8, a8, 24, 8
	s8i	a8, a4, 23
	.loc 1 980 0 discriminator 16
	beqz.n	a7, .L123
.LBB2:
	.loc 1 981 0
	l32i.n	a10, a5, 4
.LVL140:
	.loc 1 982 0
	movi.n	a8, 1
	s8i	a8, a10, 24
	.loc 1 983 0
	s8i	a7, a10, 25
	.loc 1 984 0
	l8ui	a12, a2, 182
	movi	a11, 0xb7
	add.n	a11, a2, a11
	addi	a10, a10, 26
.LVL141:
	call8	memcpy
.LVL142:
.L123:
.LBE2:
	.loc 1 988 0
	l32i.n	a8, sp, 16
	bbci	a8, 0, .L124
	.loc 1 989 0
	l32r	a7, .LC17
.LVL143:
	movi	a8, 0x2ff
	s32i.n	a8, a7, 0
	movi.n	a8, 0
	s32i.n	a8, a7, 4
	l32r	a8, .LC18
	s32i.n	a8, a7, 8
	l32i.n	a8, a3, 12
	movi	a3, 0xff
.LVL144:
	or	a3, a8, a3
	s32i.n	a3, a7, 12
.LVL145:
	.loc 1 990 0
	mov.n	a3, a7
.LVL146:
.L124:
	.loc 1 995 0
	mov.n	a14, a3
	mov.n	a13, a6
	l16ui	a12, a5, 10
	movi.n	a11, 0x3a
	mov.n	a10, a5
	call8	ip6_chksum_pseudo
.LVL147:
	s8i	a10, a4, 2
	extui	a10, a10, 8, 16
	s8i	a10, a4, 3
	.loc 1 1002 0
	l32r	a4, .LC16
.LVL148:
	bne	a6, a4, .L131
	movi.n	a11, 0
	j	.L125
.L131:
	mov.n	a11, a6
.L125:
	.loc 1 1002 0 is_stmt 0 discriminator 4
	s32i.n	a2, sp, 0
	movi.n	a15, 0x3a
	movi.n	a14, 0
	movi	a13, 0xff
	mov.n	a12, a3
	mov.n	a10, a5
	call8	ip6_output_if
.LVL149:
	.loc 1 1004 0 is_stmt 1 discriminator 4
	mov.n	a10, a5
	call8	pbuf_free
.LVL150:
.L116:
	retw.n
.LFE24:
	.size	nd6_send_ns, .-nd6_send_ns
	.section	.text.nd6_send_neighbor_cache_probe,"ax",@progbits
	.align	4
	.type	nd6_send_neighbor_cache_probe, @function
nd6_send_neighbor_cache_probe:
.LFB23:
	.loc 1 934 0
.LVL151:
	entry	sp, 32
.LCFI12:
	.loc 1 935 0
	mov.n	a12, a3
	mov.n	a11, a2
	l32i.n	a10, a2, 16
	call8	nd6_send_ns
.LVL152:
	retw.n
.LFE23:
	.size	nd6_send_neighbor_cache_probe, .-nd6_send_neighbor_cache_probe
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC19:
	.string	"q != NULL"
	.align	4
.LC22:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/core/ipv6/nd6.c"
	.align	4
.LC24:
	.string	"q->p != NULL"
	.align	4
.LC26:
	.string	"r->p != NULL"
	.section	.text.nd6_free_q,"ax",@progbits
	.literal_position
	.literal .LC20, .LC19
	.literal .LC21, __func__$7053
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.literal .LC27, .LC26
	.align	4
	.type	nd6_free_q, @function
nd6_free_q:
.LFB42:
	.loc 1 1873 0
.LVL153:
	entry	sp, 32
.LCFI13:
	.loc 1 1875 0
	bnez.n	a2, .L134
	.loc 1 1875 0 discriminator 1
	l32r	a13, .LC20
	l32r	a12, .LC21
	movi	a11, 0x753
	l32r	a10, .LC23
	call8	__assert_func
.LVL154:
.L134:
	.loc 1 1876 0
	l32i.n	a3, a2, 4
	bnez.n	a3, .L135
	.loc 1 1876 0 discriminator 1
	l32r	a13, .LC25
	l32r	a12, .LC21
	movi	a11, 0x754
	l32r	a10, .LC23
	call8	__assert_func
.LVL155:
.L137:
	.loc 1 1879 0
	l32i.n	a3, a2, 0
.LVL156:
	.loc 1 1880 0
	l32i.n	a10, a2, 4
	bnez.n	a10, .L136
	.loc 1 1880 0 discriminator 1
	l32r	a13, .LC27
	l32r	a12, .LC21
	movi	a11, 0x758
	l32r	a10, .LC23
	call8	__assert_func
.LVL157:
.L136:
	.loc 1 1881 0
	call8	pbuf_free
.LVL158:
	.loc 1 1882 0
	mov.n	a11, a2
	movi.n	a10, 0xd
	call8	memp_free
.LVL159:
	.loc 1 1879 0
	mov.n	a2, a3
.LVL160:
.L135:
	.loc 1 1877 0
	bnez.n	a2, .L137
	.loc 1 1884 0
	retw.n
.LFE42:
	.size	nd6_free_q, .-nd6_free_q
	.section	.text.nd6_free_neighbor_cache_entry,"ax",@progbits
	.literal_position
	.literal .LC28, neighbor_cache
	.align	4
	.type	nd6_free_neighbor_cache_entry, @function
nd6_free_neighbor_cache_entry:
.LFB29:
	.loc 1 1286 0
.LVL161:
	entry	sp, 32
.LCFI14:
	extui	a2, a2, 0, 8
	.loc 1 1287 0
	extui	a8, a2, 0, 8
	movi.n	a9, 9
	bltu	a9, a8, .L138
	.loc 1 1290 0
	sext	a2, a2, 7
.LVL162:
	addx4	a9, a2, a2
	slli	a8, a9, 3
	l32r	a9, .LC28
	add.n	a8, a9, a8
	l8ui	a8, a8, 33
	bnez.n	a8, .L138
	.loc 1 1296 0
	addx4	a9, a2, a2
	slli	a8, a9, 3
	l32r	a9, .LC28
	add.n	a8, a9, a8
	l32i.n	a10, a8, 28
	beqz.n	a10, .L140
	.loc 1 1297 0
	call8	nd6_free_q
.LVL163:
	.loc 1 1298 0
	addx4	a9, a2, a2
	slli	a8, a9, 3
	l32r	a9, .LC28
	add.n	a8, a9, a8
	movi.n	a9, 0
	s32i.n	a9, a8, 28
.L140:
	.loc 1 1301 0
	l32r	a10, .LC28
	slli	a11, a2, 2
	add.n	a9, a11, a2
	slli	a8, a9, 3
	add.n	a8, a10, a8
	movi.n	a9, 0
	s8i	a9, a8, 32
	.loc 1 1302 0
	s8i	a9, a8, 33
	.loc 1 1303 0
	movi.n	a9, 0
	s32i.n	a9, a8, 16
	.loc 1 1304 0
	s32i.n	a9, a8, 36
	.loc 1 1305 0
	s32i.n	a9, a8, 0
	s32i.n	a9, a8, 4
	s32i.n	a9, a8, 8
	add.n	a2, a11, a2
	slli	a8, a2, 3
	mov.n	a2, a8
	add.n	a8, a10, a8
	s32i.n	a9, a8, 12
.L138:
	retw.n
.LFE29:
	.size	nd6_free_neighbor_cache_entry, .-nd6_free_neighbor_cache_entry
	.section	.text.nd6_new_neighbor_cache_entry,"ax",@progbits
	.literal_position
	.literal .LC29, neighbor_cache
	.align	4
	.type	nd6_new_neighbor_cache_entry, @function
nd6_new_neighbor_cache_entry:
.LFB28:
	.loc 1 1179 0
	entry	sp, 32
.LCFI15:
.LVL164:
	.loc 1 1186 0
	movi.n	a2, 0
	j	.L142
.LVL165:
.L144:
	.loc 1 1187 0
	sext	a8, a2, 7
	addx4	a8, a8, a8
	slli	a9, a8, 3
	l32r	a8, .LC29
	add.n	a9, a8, a9
	l8ui	a8, a9, 32
	beqz.n	a8, .L143
	.loc 1 1186 0 discriminator 2
	addi.n	a2, a2, 1
.LVL166:
	extui	a2, a2, 0, 8
.LVL167:
.L142:
	.loc 1 1186 0 is_stmt 0 discriminator 1
	sext	a8, a2, 7
	movi.n	a9, 9
	bge	a9, a8, .L144
	movi.n	a2, 0
.LVL168:
	j	.L145
.LVL169:
.L147:
	.loc 1 1196 0 is_stmt 1
	sext	a10, a2, 7
	addx4	a9, a10, a10
	slli	a8, a9, 3
	l32r	a9, .LC29
	add.n	a8, a9, a8
	l8ui	a8, a8, 32
	bnei	a8, 3, .L146
	.loc 1 1197 0 discriminator 1
	addx4	a9, a10, a10
	slli	a8, a9, 3
	l32r	a9, .LC29
	add.n	a8, a9, a8
	l8ui	a8, a8, 33
	.loc 1 1196 0 discriminator 1
	bnez.n	a8, .L146
	.loc 1 1198 0
	call8	nd6_free_neighbor_cache_entry
.LVL170:
	.loc 1 1199 0
	retw.n
.L146:
	.loc 1 1195 0 discriminator 2
	addi.n	a2, a2, 1
.LVL171:
	extui	a2, a2, 0, 8
.LVL172:
.L145:
	.loc 1 1195 0 is_stmt 0 discriminator 1
	sext	a8, a2, 7
	movi.n	a9, 9
	bge	a9, a8, .L147
	movi.n	a2, 0
.LVL173:
	j	.L148
.LVL174:
.L150:
	.loc 1 1205 0 is_stmt 1
	sext	a10, a2, 7
	addx4	a9, a10, a10
	slli	a8, a9, 3
	l32r	a9, .LC29
	add.n	a8, a9, a8
	l8ui	a8, a8, 32
	bnei	a8, 5, .L149
	.loc 1 1206 0 discriminator 1
	addx4	a9, a10, a10
	slli	a8, a9, 3
	l32r	a9, .LC29
	add.n	a8, a9, a8
	l8ui	a8, a8, 33
	.loc 1 1205 0 discriminator 1
	bnez.n	a8, .L149
	.loc 1 1207 0
	call8	nd6_free_neighbor_cache_entry
.LVL175:
	.loc 1 1208 0
	retw.n
.L149:
	.loc 1 1204 0 discriminator 2
	addi.n	a2, a2, 1
.LVL176:
	extui	a2, a2, 0, 8
.LVL177:
.L148:
	.loc 1 1204 0 is_stmt 0 discriminator 1
	sext	a8, a2, 7
	movi.n	a9, 9
	bge	a9, a8, .L150
	movi.n	a2, 0
.LVL178:
	j	.L151
.LVL179:
.L153:
	.loc 1 1214 0 is_stmt 1
	sext	a10, a2, 7
	addx4	a9, a10, a10
	slli	a8, a9, 3
	l32r	a9, .LC29
	add.n	a8, a9, a8
	l8ui	a8, a8, 32
	bnei	a8, 4, .L152
	.loc 1 1215 0 discriminator 1
	addx4	a9, a10, a10
	slli	a8, a9, 3
	l32r	a9, .LC29
	add.n	a8, a9, a8
	l8ui	a8, a8, 33
	.loc 1 1214 0 discriminator 1
	bnez.n	a8, .L152
	.loc 1 1216 0
	call8	nd6_free_neighbor_cache_entry
.LVL180:
	.loc 1 1217 0
	retw.n
.L152:
	.loc 1 1213 0 discriminator 2
	addi.n	a2, a2, 1
.LVL181:
	extui	a2, a2, 0, 8
.LVL182:
.L151:
	.loc 1 1213 0 is_stmt 0 discriminator 1
	sext	a8, a2, 7
	movi.n	a9, 9
	bge	a9, a8, .L153
	movi.n	a12, -1
	movi	a2, 0xff
.LVL183:
	movi.n	a8, 0
	j	.L154
.LVL184:
.L156:
	.loc 1 1225 0 is_stmt 1
	sext	a10, a8, 7
	addx4	a11, a10, a10
	slli	a9, a11, 3
	l32r	a11, .LC29
	add.n	a9, a11, a9
	l8ui	a9, a9, 32
	bnei	a9, 2, .L155
	.loc 1 1226 0 discriminator 1
	addx4	a11, a10, a10
	slli	a9, a11, 3
	l32r	a11, .LC29
	add.n	a9, a11, a9
	l8ui	a9, a9, 33
	.loc 1 1225 0 discriminator 1
	bnez.n	a9, .L155
	.loc 1 1227 0
	addx4	a10, a10, a10
	slli	a9, a10, 3
	add.n	a9, a11, a9
	l32i.n	a9, a9, 36
	bgeu	a9, a12, .L155
	.loc 1 1229 0
	mov.n	a12, a9
.LVL185:
	.loc 1 1228 0
	mov.n	a2, a8
.LVL186:
.L155:
	.loc 1 1224 0 discriminator 2
	addi.n	a8, a8, 1
.LVL187:
	extui	a8, a8, 0, 8
.LVL188:
.L154:
	.loc 1 1224 0 is_stmt 0 discriminator 1
	sext	a9, a8, 7
	movi.n	a10, 9
	bge	a10, a9, .L156
	.loc 1 1233 0 is_stmt 1
	bbsi	a2, 7, .L165
	.loc 1 1234 0
	sext	a10, a2, 7
	call8	nd6_free_neighbor_cache_entry
.LVL189:
	.loc 1 1235 0
	retw.n
.LVL190:
.L159:
	.loc 1 1243 0
	sext	a10, a8, 7
	addx4	a11, a10, a10
	slli	a9, a11, 3
	l32r	a11, .LC29
	add.n	a9, a11, a9
	l32i.n	a9, a9, 28
	.loc 1 1242 0
	bnez.n	a9, .L158
	.loc 1 1244 0
	addx4	a11, a10, a10
	slli	a9, a11, 3
	l32r	a11, .LC29
	add.n	a9, a11, a9
	l8ui	a9, a9, 32
	.loc 1 1243 0
	bnei	a9, 1, .L158
	.loc 1 1245 0
	addx4	a11, a10, a10
	slli	a9, a11, 3
	l32r	a11, .LC29
	add.n	a9, a11, a9
	l8ui	a9, a9, 33
	.loc 1 1244 0
	bnez.n	a9, .L158
	.loc 1 1246 0
	addx4	a10, a10, a10
	slli	a9, a10, 3
	add.n	a9, a11, a9
	l32i.n	a9, a9, 36
	bltu	a9, a12, .L158
	.loc 1 1248 0
	mov.n	a12, a9
.LVL191:
	.loc 1 1247 0
	mov.n	a2, a8
.LVL192:
.L158:
	.loc 1 1241 0 discriminator 2
	addi.n	a8, a8, 1
.LVL193:
	extui	a8, a8, 0, 8
.LVL194:
	j	.L157
.L165:
	movi.n	a12, 0
.LVL195:
	movi	a2, 0xff
.LVL196:
	mov.n	a8, a12
.LVL197:
.L157:
	.loc 1 1241 0 is_stmt 0 discriminator 1
	sext	a9, a8, 7
	movi.n	a10, 9
	bge	a10, a9, .L159
	.loc 1 1252 0 is_stmt 1
	bbsi	a2, 7, .L167
	.loc 1 1253 0
	sext	a10, a2, 7
	call8	nd6_free_neighbor_cache_entry
.LVL198:
	.loc 1 1254 0
	retw.n
.LVL199:
.L162:
	.loc 1 1261 0
	sext	a9, a10, 7
	addx4	a11, a9, a9
	slli	a8, a11, 3
	l32r	a11, .LC29
	add.n	a8, a11, a8
	l8ui	a8, a8, 32
	bnei	a8, 1, .L161
	.loc 1 1262 0 discriminator 1
	addx4	a11, a9, a9
	slli	a8, a11, 3
	l32r	a11, .LC29
	add.n	a8, a11, a8
	l8ui	a8, a8, 33
	.loc 1 1261 0 discriminator 1
	bnez.n	a8, .L161
	.loc 1 1263 0
	addx4	a9, a9, a9
	slli	a8, a9, 3
	add.n	a8, a11, a8
	l32i.n	a8, a8, 36
	bltu	a8, a12, .L161
	.loc 1 1265 0
	mov.n	a12, a8
.LVL200:
	.loc 1 1264 0
	mov.n	a2, a10
.LVL201:
.L161:
	.loc 1 1260 0 discriminator 2
	addi.n	a10, a10, 1
.LVL202:
	extui	a10, a10, 0, 8
.LVL203:
	j	.L160
.LVL204:
.L167:
	movi.n	a12, 0
.LVL205:
	movi	a2, 0xff
.LVL206:
	mov.n	a10, a12
.LVL207:
.L160:
	.loc 1 1260 0 is_stmt 0 discriminator 1
	sext	a8, a10, 7
	movi.n	a9, 9
	bge	a9, a8, .L162
	.loc 1 1269 0 is_stmt 1
	bbsi	a2, 7, .L169
	.loc 1 1270 0
	sext	a10, a2, 7
.LVL208:
	call8	nd6_free_neighbor_cache_entry
.LVL209:
	.loc 1 1271 0
	retw.n
.LVL210:
.L169:
	.loc 1 1275 0
	movi	a2, 0xff
.LVL211:
.L143:
	.loc 1 1276 0
	retw.n
.LFE28:
	.size	nd6_new_neighbor_cache_entry, .-nd6_new_neighbor_cache_entry
	.section	.text.nd6_new_router,"ax",@progbits
	.literal_position
	.literal .LC30, neighbor_cache
	.literal .LC31, default_router_list
	.align	4
	.type	nd6_new_router, @function
nd6_new_router:
.LFB37:
	.loc 1 1520 0
.LVL212:
	entry	sp, 32
.LCFI16:
	.loc 1 1526 0
	mov.n	a10, a2
	call8	nd6_find_neighbor_cache_entry
.LVL213:
	extui	a4, a10, 0, 8
.LVL214:
	.loc 1 1527 0
	sext	a8, a4, 7
	bgez	a8, .L171
	.loc 1 1529 0
	call8	nd6_new_neighbor_cache_entry
.LVL215:
	extui	a4, a10, 0, 8
.LVL216:
	.loc 1 1530 0
	sext	a8, a4, 7
	bltz	a8, .L181
	.loc 1 1534 0
	beqz.n	a2, .L182
	.loc 1 1534 0 is_stmt 0 discriminator 1
	l32i.n	a11, a2, 0
	j	.L173
.L182:
	.loc 1 1534 0
	movi.n	a11, 0
.L173:
	.loc 1 1534 0 is_stmt 1 discriminator 4
	addx4	a10, a8, a8
.LVL217:
	slli	a9, a10, 3
	l32r	a10, .LC30
	add.n	a9, a10, a9
	s32i.n	a11, a9, 0
	.loc 1 1534 0 discriminator 4
	beqz.n	a2, .L183
	.loc 1 1534 0 is_stmt 0 discriminator 5
	l32i.n	a11, a2, 4
	j	.L174
.L183:
	.loc 1 1534 0
	movi.n	a11, 0
.L174:
	.loc 1 1534 0 is_stmt 1 discriminator 8
	addx4	a10, a8, a8
	slli	a9, a10, 3
	l32r	a10, .LC30
	add.n	a9, a10, a9
	s32i.n	a11, a9, 4
	.loc 1 1534 0 discriminator 8
	beqz.n	a2, .L184
	.loc 1 1534 0 is_stmt 0 discriminator 9
	l32i.n	a11, a2, 8
	j	.L175
.L184:
	.loc 1 1534 0
	movi.n	a11, 0
.L175:
	.loc 1 1534 0 is_stmt 1 discriminator 12
	addx4	a10, a8, a8
	slli	a9, a10, 3
	l32r	a10, .LC30
	add.n	a9, a10, a9
	s32i.n	a11, a9, 8
	.loc 1 1534 0 discriminator 12
	beqz.n	a2, .L185
	.loc 1 1534 0 is_stmt 0 discriminator 13
	l32i.n	a12, a2, 12
	j	.L176
.L185:
	.loc 1 1534 0
	movi.n	a12, 0
.L176:
	.loc 1 1534 0 is_stmt 1 discriminator 16
	l32r	a10, .LC30
	slli	a9, a8, 2
	add.n	a11, a9, a8
	slli	a2, a11, 3
.LVL218:
	add.n	a2, a10, a2
	s32i.n	a12, a2, 12
	.loc 1 1535 0 discriminator 16
	s32i.n	a3, a2, 16
	.loc 1 1536 0 discriminator 16
	movi.n	a3, 0
.LVL219:
	s32i.n	a3, a2, 28
	.loc 1 1537 0 discriminator 16
	movi.n	a3, 1
	s8i	a3, a2, 32
	.loc 1 1538 0 discriminator 16
	movi.n	a11, 1
	s32i.n	a11, a2, 36
	.loc 1 1539 0 discriminator 16
	add.n	a8, a9, a8
	slli	a2, a8, 3
.LVL220:
	add.n	a10, a10, a2
.LVL221:
	call8	nd6_send_neighbor_cache_probe
.LVL222:
.L171:
	.loc 1 1543 0
	sext	a9, a4, 7
	addx4	a4, a9, a9
.LVL223:
	slli	a2, a4, 3
	l32r	a4, .LC30
	add.n	a2, a4, a2
	movi.n	a4, 1
	s8i	a4, a2, 33
.LVL224:
	.loc 1 1546 0
	movi.n	a2, 3
	.loc 1 1547 0
	movi.n	a8, 2
	j	.L177
.LVL225:
.L179:
	.loc 1 1550 0
	sext	a10, a8, 7
	addx2	a10, a10, a10
	slli	a11, a10, 2
	l32r	a10, .LC31
	add.n	a11, a10, a11
	l32i.n	a12, a11, 0
	addx4	a10, a9, a9
	slli	a11, a10, 3
	l32r	a10, .LC30
	add.n	a10, a11, a10
	beq	a12, a10, .L186
	.loc 1 1553 0
	bnez.n	a12, .L178
	.loc 1 1555 0
	mov.n	a2, a8
.LVL226:
.L178:
	.loc 1 1547 0 discriminator 2
	addi.n	a8, a8, -1
.LVL227:
	extui	a8, a8, 0, 8
.LVL228:
.L177:
	.loc 1 1547 0 is_stmt 0 discriminator 1
	sext	a10, a8, 7
	bgez	a10, .L179
	.loc 1 1558 0 is_stmt 1
	sext	a4, a2, 7
	bgei	a4, 3, .L180
	.loc 1 1559 0
	mov.n	a8, a4
.LVL229:
	addx4	a9, a9, a9
	slli	a10, a9, 3
	l32r	a4, .LC30
	add.n	a4, a10, a4
	addx2	a8, a8, a8
	slli	a9, a8, 2
	l32r	a8, .LC31
	add.n	a9, a8, a9
	s32i.n	a4, a9, 0
	.loc 1 1560 0
	retw.n
.LVL230:
.L180:
	.loc 1 1566 0
	addx4	a9, a9, a9
	slli	a2, a9, 3
.LVL231:
	l32r	a3, .LC30
	add.n	a2, a3, a2
	movi.n	a3, 0
	s8i	a3, a2, 33
	.loc 1 1569 0
	movi	a2, 0xff
	retw.n
.LVL232:
.L181:
	.loc 1 1532 0
	movi	a2, 0xff
.LVL233:
	retw.n
.LVL234:
.L186:
	.loc 1 1551 0
	mov.n	a2, a8
.LVL235:
	.loc 1 1570 0
	retw.n
.LFE37:
	.size	nd6_new_router, .-nd6_new_router
	.section	.text.nd6_get_next_hop_entry,"ax",@progbits
	.literal_position
	.literal .LC32, nd6_cached_destination_index
	.literal .LC33, destination_cache
	.literal .LC34, 49407
	.literal .LC35, 33022
	.literal .LC36, default_router_list
	.literal .LC37, nd6_cached_neighbor_index
	.literal .LC38, neighbor_cache
	.align	4
	.type	nd6_get_next_hop_entry, @function
nd6_get_next_hop_entry:
.LFB40:
	.loc 1 1640 0
.LVL236:
	entry	sp, 32
.LCFI17:
	.loc 1 1657 0
	l32i.n	a5, a2, 0
	l32r	a4, .LC32
	l8ui	a4, a4, 0
	addx4	a9, a4, a4
	slli	a8, a9, 3
	l32r	a9, .LC33
	add.n	a8, a9, a8
	l32i.n	a8, a8, 0
	bne	a5, a8, .L189
	.loc 1 1657 0 is_stmt 0 discriminator 1
	l32i.n	a10, a2, 4
	addx4	a9, a4, a4
	slli	a8, a9, 3
	l32r	a9, .LC33
	add.n	a8, a9, a8
	l32i.n	a8, a8, 4
	bne	a10, a8, .L189
	.loc 1 1657 0 discriminator 2
	l32i.n	a10, a2, 8
	addx4	a9, a4, a4
	slli	a8, a9, 3
	l32r	a9, .LC33
	add.n	a8, a9, a8
	l32i.n	a8, a8, 8
	bne	a10, a8, .L189
	.loc 1 1657 0 discriminator 3
	l32i.n	a9, a2, 12
	addx4	a4, a4, a4
	slli	a8, a4, 3
	l32r	a4, .LC33
	add.n	a8, a4, a8
	l32i.n	a4, a8, 12
	beq	a9, a4, .L190
.L189:
	.loc 1 1663 0 is_stmt 1
	mov.n	a10, a2
	call8	nd6_find_destination_cache_entry
.LVL237:
	extui	a10, a10, 0, 8
.LVL238:
	.loc 1 1664 0
	sext	a4, a10, 7
	bltz	a4, .L191
	.loc 1 1666 0
	l32r	a2, .LC32
.LVL239:
	s8i	a10, a2, 0
	j	.L190
.LVL240:
.L191:
	.loc 1 1669 0
	call8	nd6_new_destination_cache_entry
.LVL241:
	extui	a10, a10, 0, 8
.LVL242:
	.loc 1 1670 0
	sext	a4, a10, 7
	bltz	a4, .L203
	.loc 1 1672 0
	extui	a4, a10, 0, 8
	l32r	a8, .LC32
	s8i	a4, a8, 0
	.loc 1 1679 0
	bnez.n	a2, .L193
	movi.n	a5, 0
.L193:
	.loc 1 1679 0 discriminator 4
	addx4	a9, a4, a4
	slli	a8, a9, 3
	l32r	a9, .LC33
	add.n	a8, a9, a8
	s32i.n	a5, a8, 0
	.loc 1 1679 0 discriminator 4
	beqz.n	a2, .L205
	.loc 1 1679 0 is_stmt 0 discriminator 5
	l32i.n	a9, a2, 4
	j	.L194
.L205:
	.loc 1 1679 0
	movi.n	a9, 0
.L194:
	.loc 1 1679 0 is_stmt 1 discriminator 8
	addx4	a8, a4, a4
	slli	a5, a8, 3
	l32r	a8, .LC33
	add.n	a5, a8, a5
	s32i.n	a9, a5, 4
	.loc 1 1679 0 discriminator 8
	beqz.n	a2, .L206
	.loc 1 1679 0 is_stmt 0 discriminator 9
	l32i.n	a9, a2, 8
	j	.L195
.L206:
	.loc 1 1679 0
	movi.n	a9, 0
.L195:
	.loc 1 1679 0 is_stmt 1 discriminator 12
	addx4	a8, a4, a4
	slli	a5, a8, 3
	l32r	a8, .LC33
	add.n	a5, a8, a5
	s32i.n	a9, a5, 8
	.loc 1 1679 0 discriminator 12
	beqz.n	a2, .L207
	.loc 1 1679 0 is_stmt 0 discriminator 13
	l32i.n	a9, a2, 12
	j	.L196
.L207:
	.loc 1 1679 0
	movi.n	a9, 0
.L196:
	.loc 1 1679 0 is_stmt 1 discriminator 16
	addx4	a8, a4, a4
	slli	a5, a8, 3
	l32r	a8, .LC33
	add.n	a5, a8, a5
	s32i.n	a9, a5, 12
	.loc 1 1682 0 discriminator 16
	l32i.n	a8, a2, 0
	l32r	a5, .LC34
	and	a5, a8, a5
	l32r	a8, .LC35
	beq	a5, a8, .L197
	.loc 1 1683 0 discriminator 1
	mov.n	a11, a3
	mov.n	a10, a2
.LVL243:
	call8	nd6_is_prefix_in_netif
.LVL244:
	extui	a10, a10, 0, 8
	.loc 1 1682 0 discriminator 1
	beqz.n	a10, .L198
.L197:
	.loc 1 1685 0
	l16ui	a9, a3, 180
	l32r	a5, .LC33
	slli	a10, a4, 2
	add.n	a8, a10, a4
	slli	a2, a8, 3
.LVL245:
	add.n	a2, a5, a2
	s16i	a9, a2, 32
	.loc 1 1686 0
	l32i.n	a8, a2, 0
	s32i.n	a8, a2, 16
	l32i.n	a8, a2, 4
	s32i.n	a8, a2, 20
	l32i.n	a8, a2, 8
	s32i.n	a8, a2, 24
	l32i.n	a8, a2, 12
	add.n	a4, a10, a4
	slli	a2, a4, 3
	add.n	a2, a5, a2
	s32i.n	a8, a2, 28
	j	.L190
.LVL246:
.L198:
	.loc 1 1695 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	nd6_select_router
.LVL247:
	extui	a10, a10, 0, 8
.LVL248:
	.loc 1 1696 0
	sext	a2, a10, 7
.LVL249:
	bgez	a2, .L199
	.loc 1 1698 0
	l32r	a2, .LC32
	l8ui	a2, a2, 0
	l32r	a5, .LC33
	slli	a8, a2, 2
	add.n	a4, a8, a2
	slli	a3, a4, 3
.LVL250:
	add.n	a3, a5, a3
	movi.n	a4, 0
	s32i.n	a4, a3, 0
	s32i.n	a4, a3, 4
	s32i.n	a4, a3, 8
	add.n	a2, a8, a2
	slli	a3, a2, 3
	add.n	a3, a5, a3
	s32i.n	a4, a3, 12
	.loc 1 1699 0
	movi	a2, 0xfc
	retw.n
.LVL251:
.L199:
	.loc 1 1701 0
	l32r	a2, .LC32
	l8ui	a8, a2, 0
	l16ui	a11, a3, 180
	l32r	a9, .LC33
	slli	a4, a8, 2
	add.n	a2, a4, a8
	slli	a5, a2, 3
	add.n	a2, a9, a5
	s16i	a11, a2, 32
	.loc 1 1702 0
	sext	a10, a10, 7
.LVL252:
	addx2	a10, a10, a10
	slli	a5, a10, 2
	l32r	a10, .LC36
	add.n	a5, a10, a5
	l32i.n	a5, a5, 0
	l32i.n	a10, a5, 0
	s32i.n	a10, a2, 16
	l32i.n	a10, a5, 4
	s32i.n	a10, a2, 20
	l32i.n	a10, a5, 8
	s32i.n	a10, a2, 24
	l32i.n	a5, a5, 12
	add.n	a2, a4, a8
	slli	a4, a2, 3
	add.n	a4, a9, a4
	s32i.n	a5, a4, 28
.L190:
	.loc 1 1715 0
	l32r	a2, .LC32
	l8ui	a8, a2, 0
	addx4	a4, a8, a8
	slli	a2, a4, 3
	l32r	a4, .LC33
	add.n	a2, a4, a2
	l32i.n	a9, a2, 16
	l32r	a2, .LC37
	l8ui	a4, a2, 0
	addx4	a5, a4, a4
	slli	a2, a5, 3
	l32r	a5, .LC38
	add.n	a2, a5, a2
	l32i.n	a2, a2, 0
	bne	a9, a2, .L200
	.loc 1 1715 0 is_stmt 0 discriminator 1
	addx4	a5, a8, a8
	slli	a2, a5, 3
	l32r	a5, .LC33
	add.n	a2, a5, a2
	l32i.n	a9, a2, 20
	addx4	a5, a4, a4
	slli	a2, a5, 3
	l32r	a5, .LC38
	add.n	a2, a5, a2
	l32i.n	a2, a2, 4
	bne	a9, a2, .L200
	.loc 1 1715 0 discriminator 2
	addx4	a5, a8, a8
	slli	a2, a5, 3
	l32r	a5, .LC33
	add.n	a2, a5, a2
	l32i.n	a9, a2, 24
	addx4	a5, a4, a4
	slli	a2, a5, 3
	l32r	a5, .LC38
	add.n	a2, a5, a2
	l32i.n	a2, a2, 8
	bne	a9, a2, .L200
	.loc 1 1715 0 discriminator 3
	addx4	a5, a8, a8
	slli	a2, a5, 3
	l32r	a5, .LC33
	add.n	a2, a5, a2
	l32i.n	a5, a2, 28
	addx4	a4, a4, a4
	slli	a2, a4, 3
	l32r	a4, .LC38
	add.n	a2, a4, a2
	l32i.n	a2, a2, 12
	beq	a5, a2, .L201
.L200:
	.loc 1 1721 0 is_stmt 1
	addx4	a8, a8, a8
	slli	a10, a8, 3
	addi	a10, a10, 16
	l32r	a2, .LC33
	add.n	a10, a2, a10
	call8	nd6_find_neighbor_cache_entry
.LVL253:
	extui	a10, a10, 0, 8
.LVL254:
	.loc 1 1722 0
	sext	a2, a10, 7
	bltz	a2, .L202
	.loc 1 1724 0
	l32r	a2, .LC37
	s8i	a10, a2, 0
	j	.L201
.L202:
	.loc 1 1727 0
	call8	nd6_new_neighbor_cache_entry
.LVL255:
	extui	a10, a10, 0, 8
.LVL256:
	.loc 1 1728 0
	sext	a2, a10, 7
	bltz	a2, .L208
	.loc 1 1730 0
	l32r	a2, .LC37
	s8i	a10, a2, 0
	.loc 1 1737 0
	sext	a10, a10, 7
.LVL257:
	l32r	a2, .LC32
	l8ui	a4, a2, 0
	l32r	a11, .LC33
	slli	a8, a4, 2
	add.n	a2, a8, a4
	slli	a5, a2, 3
	add.n	a5, a11, a5
	l32i.n	a14, a5, 16
	l32r	a12, .LC38
	slli	a13, a10, 2
	add.n	a2, a13, a10
	slli	a9, a2, 3
	add.n	a2, a12, a9
	s32i.n	a14, a2, 0
	l32i.n	a9, a5, 20
	s32i.n	a9, a2, 4
	l32i.n	a5, a5, 24
	s32i.n	a5, a2, 8
	add.n	a4, a8, a4
	slli	a5, a4, 3
	add.n	a5, a11, a5
	l32i.n	a4, a5, 28
	s32i.n	a4, a2, 12
	.loc 1 1739 0
	movi.n	a4, 0
	s8i	a4, a2, 33
	.loc 1 1740 0
	s32i.n	a3, a2, 16
	.loc 1 1741 0
	movi.n	a3, 1
.LVL258:
	s8i	a3, a2, 32
	.loc 1 1742 0
	movi.n	a11, 1
	s32i.n	a11, a2, 36
	.loc 1 1743 0
	add.n	a2, a13, a10
.LVL259:
	slli	a10, a2, 3
.LVL260:
	add.n	a10, a12, a10
.LVL261:
	call8	nd6_send_neighbor_cache_probe
.LVL262:
.L201:
	.loc 1 1748 0
	l32r	a2, .LC32
	l8ui	a8, a2, 0
	addx4	a8, a8, a8
	slli	a2, a8, 3
	l32r	a3, .LC33
	add.n	a2, a3, a2
	movi.n	a3, 0
	s32i.n	a3, a2, 36
	.loc 1 1750 0
	l32r	a2, .LC37
	l8ui	a2, a2, 0
	retw.n
.LVL263:
.L203:
	.loc 1 1675 0
	movi	a2, 0xff
.LVL264:
	retw.n
.L208:
	.loc 1 1733 0
	movi	a2, 0xff
	.loc 1 1751 0
	retw.n
.LFE40:
	.size	nd6_get_next_hop_entry, .-nd6_get_next_hop_entry
	.section	.text.nd6_queue_packet,"ax",@progbits
	.literal_position
	.literal .LC39, neighbor_cache
	.align	4
	.type	nd6_queue_packet, @function
nd6_queue_packet:
.LFB41:
	.loc 1 1762 0
.LVL265:
	entry	sp, 32
.LCFI18:
	extui	a2, a2, 0, 8
.LVL266:
	.loc 1 1770 0
	extui	a4, a2, 0, 8
	movi.n	a8, 9
	bltu	a8, a4, .L223
	mov.n	a8, a3
	j	.L211
.LVL267:
.L213:
	.loc 1 1779 0
	l8ui	a4, a8, 12
	bnei	a4, 1, .L224
	.loc 1 1783 0
	l32i.n	a8, a8, 0
.LVL268:
.L211:
	.loc 1 1778 0
	bnez.n	a8, .L213
	.loc 1 1765 0
	movi.n	a4, 0
	j	.L212
.L224:
	.loc 1 1780 0
	movi.n	a4, 1
.L212:
.LVL269:
	.loc 1 1785 0
	beqz.n	a4, .L214
	.loc 1 1787 0
	movi.n	a12, 0
	l16ui	a11, a3, 8
	movi.n	a10, 2
	call8	pbuf_alloc
.LVL270:
	mov.n	a4, a10
.LVL271:
	.loc 1 1788 0
	j	.L215
.L217:
.LVL272:
	.loc 1 1792 0
	l32i.n	a9, a10, 0
	addx4	a8, a8, a8
	slli	a4, a8, 3
.LVL273:
	l32r	a8, .LC39
	add.n	a4, a8, a4
	s32i.n	a9, a4, 28
	.loc 1 1793 0
	movi.n	a4, 0
	s32i.n	a4, a10, 0
	.loc 1 1794 0
	call8	nd6_free_q
.LVL274:
	.loc 1 1799 0
	mov.n	a12, a4
	l16ui	a11, a3, 8
	movi.n	a10, 2
	call8	pbuf_alloc
.LVL275:
	mov.n	a4, a10
.LVL276:
.L215:
	.loc 1 1788 0
	bnez.n	a4, .L216
	.loc 1 1788 0 discriminator 1
	sext	a8, a2, 7
	addx4	a10, a8, a8
	slli	a9, a10, 3
	l32r	a10, .LC39
	add.n	a9, a10, a9
	l32i.n	a10, a9, 28
	bnez.n	a10, .L217
.L216:
	.loc 1 1801 0
	beqz.n	a4, .L218
	.loc 1 1802 0
	mov.n	a11, a3
	mov.n	a10, a4
	call8	pbuf_copy
.LVL277:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L218
	.loc 1 1803 0
	mov.n	a10, a4
	call8	pbuf_free
.LVL278:
	.loc 1 1804 0
	movi.n	a4, 0
	j	.L218
.LVL279:
.L214:
	.loc 1 1810 0
	mov.n	a10, a3
	call8	pbuf_ref
.LVL280:
	.loc 1 1809 0
	mov.n	a4, a3
.LVL281:
.L218:
	.loc 1 1813 0
	beqz.n	a4, .L225
	.loc 1 1817 0
	movi.n	a10, 0xd
	call8	memp_malloc
.LVL282:
	.loc 1 1818 0
	bnez.n	a10, .L219
	.loc 1 1818 0 discriminator 1
	sext	a3, a2, 7
.LVL283:
	addx4	a9, a3, a3
	slli	a8, a9, 3
	l32r	a9, .LC39
	add.n	a8, a9, a8
	l32i.n	a8, a8, 28
	beqz.n	a8, .L219
.LVL284:
	.loc 1 1821 0
	l32i.n	a10, a8, 0
.LVL285:
	addx4	a3, a3, a3
	slli	a9, a3, 3
	l32r	a3, .LC39
	add.n	a9, a3, a9
	s32i.n	a10, a9, 28
	.loc 1 1822 0
	movi.n	a3, 0
	s32i.n	a3, a8, 0
	.loc 1 1823 0
	mov.n	a10, a8
	call8	nd6_free_q
.LVL286:
	.loc 1 1824 0
	movi.n	a10, 0xd
	call8	memp_malloc
.LVL287:
.L219:
	.loc 1 1826 0
	beqz.n	a10, .L220
	.loc 1 1827 0
	movi.n	a3, 0
	s32i.n	a3, a10, 0
	.loc 1 1828 0
	s32i.n	a4, a10, 4
	.loc 1 1829 0
	sext	a2, a2, 7
.LVL288:
	addx4	a4, a2, a2
.LVL289:
	slli	a3, a4, 3
	l32r	a4, .LC39
	add.n	a3, a4, a3
	l32i.n	a3, a3, 28
	bnez.n	a3, .L222
	j	.L221
.LVL290:
.L226:
	.loc 1 1833 0
	mov.n	a3, a8
.LVL291:
.L222:
	.loc 1 1832 0
	l32i.n	a8, a3, 0
	bnez.n	a8, .L226
	.loc 1 1835 0
	s32i.n	a10, a3, 0
.LVL292:
	.loc 1 1841 0
	movi.n	a2, 0
	retw.n
.LVL293:
.L221:
	.loc 1 1838 0
	addx4	a2, a2, a2
	slli	a3, a2, 3
	l32r	a2, .LC39
	add.n	a3, a2, a3
	s32i.n	a10, a3, 28
.LVL294:
	.loc 1 1841 0
	movi.n	a2, 0
	retw.n
.LVL295:
.L220:
	.loc 1 1844 0
	mov.n	a10, a4
.LVL296:
	call8	pbuf_free
.LVL297:
	.loc 1 1763 0
	movi	a2, 0xff
	retw.n
.LVL298:
.L223:
	.loc 1 1771 0
	movi	a2, 0xf0
	retw.n
.LVL299:
.L225:
	.loc 1 1763 0
	movi	a2, 0xff
	.loc 1 1863 0
	retw.n
.LFE41:
	.size	nd6_queue_packet, .-nd6_queue_packet
	.section	.text.nd6_input,"ax",@progbits
	.literal_position
	.literal .LC40, nd6_ra_buffer
	.literal .LC41, 65535
	.literal .LC42, ip_data
	.literal .LC43, 49407
	.literal .LC44, 33022
	.literal .LC45, prefix_list
	.literal .LC46, neighbor_cache
	.literal .LC47, reachable_time
	.literal .LC48, ip_data+20
	.literal .LC49, default_router_list
	.literal .LC50, retrans_timer
	.literal .LC51, destination_cache
	.literal .LC52, 65534
	.align	4
	.global	nd6_input
	.type	nd6_input, @function
nd6_input:
.LFB20:
	.loc 1 135 0
.LVL300:
	entry	sp, 64
.LCFI19:
	.loc 1 141 0
	l32i.n	a4, a2, 4
	l8ui	a5, a4, 0
.LVL301:
	.loc 1 142 0
	movi	a6, 0x87
	beq	a5, a6, .L229
	bltu	a6, a5, .L230
	beqi	a5, 2, .L231
	movi	a6, 0x86
	beq	a5, a6, .L232
	j	.L228
.L230:
	movi	a6, 0x88
	beq	a5, a6, .L233
	movi	a6, 0x89
	beq	a5, a6, .L234
	j	.L228
.L233:
.LBB3:
	.loc 1 149 0
	l16ui	a5, a2, 10
	movi.n	a6, 0x17
	bltu	a6, a5, .L235
	.loc 1 151 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL302:
	.loc 1 154 0
	retw.n
.LVL303:
.L235:
	.loc 1 160 0
	l32r	a5, .LC42
	l8ui	a6, a5, 40
	movi	a5, 0xff
	bne	a6, a5, .L237
.LBB4:
	.loc 1 168 0
	addi.n	a10, a4, 8
	.loc 1 168 0
	beqz.n	a10, .L330
	.loc 1 168 0 is_stmt 0 discriminator 1
	l8ui	a7, a4, 8
	l8ui	a5, a4, 9
	slli	a5, a5, 8
	or	a6, a5, a7
	l8ui	a7, a4, 10
	slli	a7, a7, 16
	or	a5, a7, a6
	l8ui	a7, a4, 11
	slli	a7, a7, 24
	or	a7, a7, a5
	j	.L238
.L330:
	.loc 1 168 0
	movi.n	a7, 0
.L238:
	.loc 1 168 0 is_stmt 1 discriminator 4
	s32i.n	a7, sp, 0
.LVL304:
	.loc 1 168 0 discriminator 4
	beqz.n	a10, .L331
	.loc 1 168 0 is_stmt 0 discriminator 5
	l8ui	a8, a4, 12
	l8ui	a5, a4, 13
	slli	a5, a5, 8
	or	a6, a5, a8
	l8ui	a8, a4, 14
	slli	a8, a8, 16
	or	a5, a8, a6
	l8ui	a8, a4, 15
	slli	a8, a8, 24
	or	a8, a8, a5
	j	.L239
.L331:
	.loc 1 168 0
	movi.n	a8, 0
.L239:
	.loc 1 168 0 is_stmt 1 discriminator 8
	s32i.n	a8, sp, 4
	.loc 1 168 0 discriminator 8
	beqz.n	a10, .L332
	.loc 1 168 0 is_stmt 0 discriminator 9
	l8ui	a9, a4, 16
	l8ui	a5, a4, 17
	slli	a5, a5, 8
	or	a6, a5, a9
	l8ui	a9, a4, 18
	slli	a9, a9, 16
	or	a5, a9, a6
	l8ui	a9, a4, 19
	slli	a9, a9, 24
	or	a9, a9, a5
	j	.L240
.L332:
	.loc 1 168 0
	movi.n	a9, 0
.L240:
	.loc 1 168 0 is_stmt 1 discriminator 12
	s32i.n	a9, sp, 8
	.loc 1 168 0 discriminator 12
	beqz.n	a10, .L333
	.loc 1 168 0 is_stmt 0 discriminator 13
	l8ui	a10, a4, 20
	l8ui	a5, a4, 21
	slli	a5, a5, 8
	or	a6, a5, a10
	l8ui	a10, a4, 22
	slli	a10, a10, 16
	or	a5, a10, a6
	l8ui	a10, a4, 23
	slli	a10, a10, 24
	or	a10, a10, a5
	j	.L241
.L333:
	.loc 1 168 0
	movi.n	a10, 0
.L241:
	.loc 1 168 0 is_stmt 1 discriminator 16
	s32i.n	a10, sp, 12
.LVL305:
	.loc 1 172 0 discriminator 16
	movi.n	a5, 0
	j	.L242
.LVL306:
.L246:
	.loc 1 173 0
	sext	a11, a5, 7
	add.n	a6, a3, a11
	l8ui	a6, a6, 124
	beqz.n	a6, .L243
	.loc 1 174 0 discriminator 1
	addx4	a12, a11, a11
	slli	a6, a12, 2
	add.n	a6, a3, a6
	l32i	a6, a6, 64
	.loc 1 173 0 discriminator 1
	bne	a7, a6, .L243
	.loc 1 174 0
	addx4	a12, a11, a11
	slli	a6, a12, 2
	add.n	a6, a3, a6
	l32i	a6, a6, 68
	bne	a8, a6, .L243
	.loc 1 174 0 is_stmt 0 discriminator 1
	addx4	a12, a11, a11
	slli	a6, a12, 2
	add.n	a6, a3, a6
	l32i	a6, a6, 72
	bne	a9, a6, .L243
	.loc 1 174 0 discriminator 2
	addx4	a12, a11, a11
	slli	a6, a12, 2
	add.n	a6, a3, a6
	l32i	a6, a6, 76
	bne	a10, a6, .L243
	.loc 1 176 0 is_stmt 1
	movi.n	a12, 0
	mov.n	a10, a3
	call8	netif_ip6_addr_set_state
.LVL307:
	.loc 1 180 0
	l32r	a4, .LC43
.LVL308:
	l32i.n	a5, sp, 0
.LVL309:
	and	a4, a5, a4
	l32r	a5, .LC44
	beq	a4, a5, .L244
	.loc 1 181 0
	mov.n	a11, a3
	mov.n	a10, sp
	call8	nd6_get_onlink_prefix
.LVL310:
	extui	a10, a10, 0, 8
.LVL311:
	.loc 1 182 0
	sext	a4, a10, 7
	bltz	a4, .L244
	.loc 1 185 0
	mov.n	a3, a4
.LVL312:
	l32r	a6, .LC45
	slli	a4, a4, 3
	sub	a7, a4, a3
	slli	a5, a7, 2
	mov.n	a7, a5
	add.n	a5, a6, a5
	l8ui	a4, a5, 24
	movi.n	a3, 4
	or	a3, a4, a3
	s8i	a3, a5, 24
.LVL313:
.L244:
	.loc 1 190 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL314:
	.loc 1 191 0
	retw.n
.LVL315:
.L243:
	.loc 1 172 0 discriminator 2
	addi.n	a5, a5, 1
.LVL316:
	extui	a5, a5, 0, 8
.LVL317:
.L242:
	.loc 1 172 0 is_stmt 0 discriminator 1
	sext	a6, a5, 7
	blti	a6, 3, .L246
	.loc 1 197 0 is_stmt 1
	l16ui	a7, a2, 10
	movi.n	a5, 0x19
.LVL318:
	bltu	a5, a7, .L247
	.loc 1 199 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL319:
	.loc 1 202 0
	retw.n
.L247:
	.loc 1 205 0
	l32i.n	a6, a2, 4
.LVL320:
	.loc 1 207 0
	l8ui	a5, a6, 25
	slli	a5, a5, 3
	addi	a5, a5, 24
	bgeu	a7, a5, .L248
	.loc 1 209 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL321:
	.loc 1 212 0
	retw.n
.L248:
	.loc 1 216 0
	mov.n	a10, sp
	call8	nd6_find_neighbor_cache_entry
.LVL322:
	extui	a10, a10, 0, 8
.LVL323:
	.loc 1 217 0
	sext	a5, a10, 7
	bltz	a5, .L228
	.loc 1 218 0
	l8ui	a4, a4, 4
.LVL324:
	bbci	a4, 5, .L228
	.loc 1 219 0
	addx4	a10, a5, a5
.LVL325:
	slli	a4, a10, 3
	addi	a4, a4, 16
	l32r	a5, .LC46
	add.n	a10, a4, a5
	l8ui	a12, a3, 182
	addi	a11, a6, 26
	addi.n	a10, a10, 4
	call8	memcpy
.LVL326:
	j	.L228
.LVL327:
.L237:
.LBE4:
.LBB5:
	.loc 1 230 0
	addi.n	a8, a4, 8
	.loc 1 230 0
	beqz.n	a8, .L334
	.loc 1 230 0 is_stmt 0 discriminator 1
	l8ui	a5, a4, 8
	l8ui	a6, a4, 9
	slli	a6, a6, 8
	or	a7, a6, a5
	l8ui	a5, a4, 10
	slli	a5, a5, 16
	or	a6, a5, a7
	l8ui	a5, a4, 11
	slli	a5, a5, 24
	or	a5, a5, a6
	j	.L250
.L334:
	.loc 1 230 0
	movi.n	a5, 0
.L250:
	.loc 1 230 0 is_stmt 1 discriminator 4
	s32i.n	a5, sp, 0
.LVL328:
	.loc 1 230 0 discriminator 4
	beqz.n	a8, .L335
	.loc 1 230 0 is_stmt 0 discriminator 5
	l8ui	a5, a4, 12
	l8ui	a6, a4, 13
	slli	a6, a6, 8
	or	a7, a6, a5
	l8ui	a5, a4, 14
	slli	a5, a5, 16
	or	a6, a5, a7
	l8ui	a5, a4, 15
	slli	a5, a5, 24
	or	a5, a5, a6
	j	.L251
.L335:
	.loc 1 230 0
	movi.n	a5, 0
.L251:
	.loc 1 230 0 is_stmt 1 discriminator 8
	s32i.n	a5, sp, 4
	.loc 1 230 0 discriminator 8
	beqz.n	a8, .L336
	.loc 1 230 0 is_stmt 0 discriminator 9
	l8ui	a5, a4, 16
	l8ui	a6, a4, 17
	slli	a6, a6, 8
	or	a7, a6, a5
	l8ui	a5, a4, 18
	slli	a5, a5, 16
	or	a6, a5, a7
	l8ui	a5, a4, 19
	slli	a5, a5, 24
	or	a5, a5, a6
	j	.L252
.L336:
	.loc 1 230 0
	movi.n	a5, 0
.L252:
	.loc 1 230 0 is_stmt 1 discriminator 12
	s32i.n	a5, sp, 8
	.loc 1 230 0 discriminator 12
	beqz.n	a8, .L337
	.loc 1 230 0 is_stmt 0 discriminator 13
	l8ui	a5, a4, 20
	l8ui	a6, a4, 21
	slli	a6, a6, 8
	or	a7, a6, a5
	l8ui	a5, a4, 22
	slli	a5, a5, 16
	or	a6, a5, a7
	l8ui	a5, a4, 23
	slli	a5, a5, 24
	or	a5, a5, a6
	j	.L253
.L337:
	.loc 1 230 0
	movi.n	a5, 0
.L253:
	.loc 1 230 0 is_stmt 1 discriminator 16
	s32i.n	a5, sp, 12
	.loc 1 233 0 discriminator 16
	mov.n	a10, sp
	call8	nd6_find_neighbor_cache_entry
.LVL329:
	extui	a5, a10, 0, 8
.LVL330:
	.loc 1 234 0 discriminator 16
	sext	a6, a5, 7
	bgez	a6, .L254
	.loc 1 236 0
	mov.n	a10, a2
.LVL331:
	call8	pbuf_free
.LVL332:
	.loc 1 237 0
	retw.n
.LVL333:
.L254:
	.loc 1 241 0
	l8ui	a4, a4, 4
.LVL334:
	bbsi	a4, 5, .L256
	.loc 1 242 0 discriminator 1
	sext	a4, a5, 7
	addx4	a4, a4, a4
	slli	a6, a4, 3
	l32r	a4, .LC46
	add.n	a6, a4, a6
	l8ui	a4, a6, 32
	.loc 1 241 0 discriminator 1
	bnei	a4, 1, .L257
.L256:
	.loc 1 244 0
	l16ui	a6, a2, 10
	movi.n	a4, 0x19
	bltu	a4, a6, .L258
	.loc 1 246 0
	mov.n	a10, a2
.LVL335:
	call8	pbuf_free
.LVL336:
	.loc 1 249 0
	retw.n
.LVL337:
.L258:
	.loc 1 252 0
	l32i.n	a11, a2, 4
.LVL338:
	.loc 1 254 0
	l8ui	a4, a11, 25
	slli	a4, a4, 3
	addi	a4, a4, 24
	bgeu	a6, a4, .L259
	.loc 1 256 0
	mov.n	a10, a2
.LVL339:
	call8	pbuf_free
.LVL340:
	.loc 1 259 0
	retw.n
.LVL341:
.L259:
	.loc 1 262 0
	sext	a4, a5, 7
	addx4	a4, a4, a4
	slli	a6, a4, 3
	addi	a6, a6, 16
	l32r	a4, .LC46
	add.n	a10, a6, a4
.LVL342:
	l8ui	a12, a3, 182
	addi	a11, a11, 26
.LVL343:
	addi.n	a10, a10, 4
	call8	memcpy
.LVL344:
.L257:
	.loc 1 265 0
	sext	a10, a5, 7
	slli	a5, a10, 2
.LVL345:
	add.n	a5, a5, a10
	slli	a4, a5, 3
	l32r	a5, .LC46
	add.n	a4, a5, a4
	s32i.n	a3, a4, 16
	.loc 1 266 0
	movi.n	a3, 2
.LVL346:
	s8i	a3, a4, 32
	.loc 1 267 0
	l32r	a3, .LC47
	l32i.n	a3, a3, 0
	s32i.n	a3, a4, 36
	.loc 1 270 0
	l32i.n	a3, a4, 28
	beqz.n	a3, .L228
	.loc 1 271 0
	call8	nd6_send_q
.LVL347:
	j	.L228
.LVL348:
.L229:
.LBE5:
.LBE3:
.LBB6:
	.loc 1 284 0
	l16ui	a6, a2, 10
	movi.n	a5, 0x17
	bltu	a5, a6, .L261
	.loc 1 286 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL349:
	.loc 1 289 0
	retw.n
.LVL350:
.L261:
	.loc 1 295 0
	movi.n	a5, 0x19
	bgeu	a5, a6, .L338
	.loc 1 296 0
	addi	a5, a4, 24
.LVL351:
	.loc 1 297 0
	l8ui	a7, a4, 25
	slli	a7, a7, 3
	addi	a7, a7, 24
	bltu	a6, a7, .L339
	j	.L262
.LVL352:
.L338:
	.loc 1 301 0
	movi.n	a5, 0
	j	.L262
.LVL353:
.L339:
	.loc 1 298 0
	movi.n	a5, 0
.LVL354:
.L262:
	.loc 1 306 0
	movi.n	a6, 0
	j	.L263
.LVL355:
.L267:
	.loc 1 307 0
	sext	a11, a6, 7
	add.n	a7, a3, a11
	l8ui	a7, a7, 124
	bbsi	a7, 4, .L264
	.loc 1 307 0 is_stmt 0 discriminator 1
	bbci	a7, 3, .L265
	.loc 1 309 0 is_stmt 1
	l32r	a7, .LC42
	l32i.n	a7, a7, 20
	.loc 1 308 0
	bnez.n	a7, .L265
	.loc 1 309 0
	l32r	a7, .LC42
	l32i.n	a7, a7, 24
	bnez.n	a7, .L265
	.loc 1 309 0 is_stmt 0 discriminator 1
	l32r	a7, .LC42
	l32i.n	a7, a7, 28
	bnez.n	a7, .L265
	.loc 1 309 0 discriminator 2
	l32r	a7, .LC42
	l32i.n	a7, a7, 32
	bnez.n	a7, .L265
.L264:
	.loc 1 310 0 is_stmt 1 discriminator 3
	l8ui	a10, a4, 8
	l8ui	a8, a4, 9
	slli	a8, a8, 8
	or	a9, a8, a10
	l8ui	a7, a4, 10
	slli	a7, a7, 16
	or	a8, a7, a9
	l8ui	a7, a4, 11
	slli	a7, a7, 24
	or	a7, a7, a8
	addx4	a9, a11, a11
	slli	a8, a9, 2
	add.n	a8, a3, a8
	l32i	a8, a8, 64
	.loc 1 309 0 discriminator 3
	bne	a7, a8, .L265
	.loc 1 310 0
	l8ui	a7, a4, 12
	l8ui	a8, a4, 13
	slli	a8, a8, 8
	or	a9, a8, a7
	l8ui	a7, a4, 14
	slli	a7, a7, 16
	or	a8, a7, a9
	l8ui	a7, a4, 15
	slli	a7, a7, 24
	or	a7, a7, a8
	addx4	a9, a11, a11
	slli	a8, a9, 2
	add.n	a8, a3, a8
	l32i	a8, a8, 68
	bne	a7, a8, .L265
	.loc 1 310 0 is_stmt 0 discriminator 1
	l8ui	a7, a4, 16
	l8ui	a8, a4, 17
	slli	a8, a8, 8
	or	a7, a8, a7
	l8ui	a8, a4, 18
	slli	a8, a8, 16
	or	a7, a8, a7
	l8ui	a8, a4, 19
	slli	a8, a8, 24
	or	a7, a8, a7
	addx4	a9, a11, a11
	slli	a8, a9, 2
	mov.n	a9, a8
	add.n	a8, a3, a8
	l32i	a8, a8, 72
	bne	a7, a8, .L265
	.loc 1 310 0 discriminator 2
	l8ui	a7, a4, 20
	l8ui	a8, a4, 21
	slli	a8, a8, 8
	or	a7, a8, a7
	l8ui	a8, a4, 22
	slli	a8, a8, 16
	or	a7, a8, a7
	l8ui	a8, a4, 23
	slli	a8, a8, 24
	or	a8, a8, a7
	add.n	a9, a3, a9
	l32i	a7, a9, 76
	beq	a8, a7, .L340
.L265:
	.loc 1 306 0 is_stmt 1 discriminator 2
	addi.n	a6, a6, 1
.LVL356:
	extui	a6, a6, 0, 8
.LVL357:
.L263:
	.loc 1 306 0 is_stmt 0 discriminator 1
	sext	a7, a6, 7
	blti	a7, 3, .L267
	.loc 1 305 0 is_stmt 1
	movi.n	a6, 0
.LVL358:
	j	.L266
.LVL359:
.L340:
	.loc 1 311 0
	movi.n	a6, 1
.LVL360:
.L266:
	.loc 1 317 0
	bnez.n	a6, .L268
	.loc 1 318 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL361:
	.loc 1 319 0
	retw.n
.LVL362:
.L268:
	.loc 1 323 0
	l32r	a6, .LC42
.LVL363:
	l32i.n	a6, a6, 20
	.loc 1 323 0
	bnez.n	a6, .L269
	.loc 1 323 0 discriminator 1
	l32r	a6, .LC42
	l32i.n	a6, a6, 24
	bnez.n	a6, .L269
	.loc 1 323 0 is_stmt 0 discriminator 2
	l32r	a6, .LC42
	l32i.n	a6, a6, 28
	bnez.n	a6, .L269
	.loc 1 323 0 discriminator 3
	l32r	a6, .LC42
	l32i.n	a6, a6, 32
	beqz.n	a6, .L341
	j	.L269
.LVL364:
.L272:
	.loc 1 326 0 is_stmt 1
	sext	a6, a5, 7
	add.n	a7, a3, a6
	l8ui	a7, a7, 124
	beqz.n	a7, .L271
	.loc 1 327 0 discriminator 1
	l8ui	a7, a4, 8
	l8ui	a8, a4, 9
	slli	a8, a8, 8
	or	a7, a8, a7
	l8ui	a8, a4, 10
	slli	a8, a8, 16
	or	a7, a8, a7
	l8ui	a8, a4, 11
	slli	a8, a8, 24
	or	a7, a8, a7
	addx4	a9, a6, a6
	slli	a8, a9, 2
	add.n	a8, a3, a8
	l32i	a8, a8, 64
	.loc 1 326 0 discriminator 1
	bne	a7, a8, .L271
	.loc 1 327 0
	l8ui	a7, a4, 12
	l8ui	a8, a4, 13
	slli	a8, a8, 8
	or	a7, a8, a7
	l8ui	a8, a4, 14
	slli	a8, a8, 16
	or	a7, a8, a7
	l8ui	a8, a4, 15
	slli	a8, a8, 24
	or	a7, a8, a7
	addx4	a9, a6, a6
	slli	a8, a9, 2
	add.n	a8, a3, a8
	l32i	a8, a8, 68
	bne	a7, a8, .L271
	.loc 1 327 0 is_stmt 0 discriminator 1
	l8ui	a7, a4, 16
	l8ui	a8, a4, 17
	slli	a8, a8, 8
	or	a7, a8, a7
	l8ui	a8, a4, 18
	slli	a8, a8, 16
	or	a7, a8, a7
	l8ui	a8, a4, 19
	slli	a8, a8, 24
	or	a7, a8, a7
	addx4	a9, a6, a6
	slli	a8, a9, 2
	add.n	a8, a3, a8
	l32i	a8, a8, 72
	bne	a7, a8, .L271
	.loc 1 327 0 discriminator 2
	l8ui	a7, a4, 20
	l8ui	a8, a4, 21
	slli	a8, a8, 8
	or	a7, a8, a7
	l8ui	a8, a4, 22
	slli	a8, a8, 16
	or	a7, a8, a7
	l8ui	a8, a4, 23
	slli	a8, a8, 24
	or	a7, a8, a7
	addx4	a9, a6, a6
	slli	a8, a9, 2
	mov.n	a9, a8
	add.n	a8, a3, a8
	l32i	a8, a8, 76
	bne	a7, a8, .L271
	.loc 1 329 0 is_stmt 1
	addi	a11, a9, 64
	movi.n	a12, 0x22
	add.n	a11, a3, a11
	mov.n	a10, a3
	call8	nd6_send_na
.LVL365:
	.loc 1 330 0
	add.n	a7, a3, a6
	l8ui	a7, a7, 124
	bbci	a7, 3, .L271
	.loc 1 332 0
	movi.n	a12, 0
	mov.n	a11, a6
	mov.n	a10, a3
	call8	netif_ip6_addr_set_state
.LVL366:
.L271:
	.loc 1 325 0 discriminator 2
	addi.n	a5, a5, 1
.LVL367:
	extui	a5, a5, 0, 8
.LVL368:
	j	.L270
.LVL369:
.L341:
	movi.n	a5, 0
.LVL370:
.L270:
	.loc 1 325 0 is_stmt 0 discriminator 1
	sext	a6, a5, 7
	blti	a6, 3, .L272
	j	.L228
.LVL371:
.L269:
.LBB7:
	.loc 1 341 0 is_stmt 1
	bnez.n	a5, .L273
	.loc 1 343 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL372:
	.loc 1 346 0
	retw.n
.LVL373:
.L273:
	.loc 1 349 0
	l32r	a10, .LC48
	call8	nd6_find_neighbor_cache_entry
.LVL374:
	extui	a10, a10, 0, 8
.LVL375:
	.loc 1 350 0
	sext	a6, a10, 7
	bltz	a6, .L275
	.loc 1 352 0
	addx4	a8, a6, a6
	slli	a7, a8, 3
	l32r	a8, .LC46
	add.n	a7, a8, a7
	l8ui	a7, a7, 32
	bnei	a7, 1, .L276
	.loc 1 353 0
	slli	a7, a6, 2
	add.n	a9, a7, a6
	slli	a8, a9, 3
	l32r	a9, .LC46
	add.n	a8, a9, a8
	s32i.n	a8, sp, 16
	s32i.n	a3, a8, 16
	.loc 1 354 0
	add.n	a9, a7, a6
	slli	a8, a9, 3
	addi	a8, a8, 16
	l32r	a9, .LC46
	add.n	a10, a8, a9
.LVL376:
	l8ui	a12, a3, 182
	addi.n	a11, a5, 2
	addi.n	a10, a10, 4
	call8	memcpy
.LVL377:
	.loc 1 357 0
	movi.n	a5, 4
.LVL378:
	l32i.n	a8, sp, 16
	s8i	a5, a8, 32
	.loc 1 358 0
	add.n	a6, a7, a6
	slli	a5, a6, 3
	l32r	a9, .LC46
	add.n	a5, a9, a5
	movi.n	a6, 5
	s32i.n	a6, a5, 36
	j	.L276
.LVL379:
.L275:
	.loc 1 364 0
	call8	nd6_new_neighbor_cache_entry
.LVL380:
	extui	a10, a10, 0, 8
.LVL381:
	.loc 1 365 0
	sext	a7, a10, 7
	bgez	a7, .L277
	.loc 1 368 0
	mov.n	a10, a2
.LVL382:
	call8	pbuf_free
.LVL383:
	.loc 1 370 0
	retw.n
.LVL384:
.L277:
	.loc 1 372 0
	sext	a6, a10, 7
	slli	a8, a6, 2
	s32i.n	a8, sp, 16
	add.n	a8, a8, a6
	slli	a7, a8, 3
	l32r	a9, .LC46
	add.n	a7, a9, a7
	s32i.n	a3, a7, 16
	.loc 1 373 0
	l32i.n	a8, sp, 16
	add.n	a9, a8, a6
	slli	a8, a9, 3
	addi	a8, a8, 16
	l32r	a9, .LC46
	add.n	a10, a8, a9
.LVL385:
	l8ui	a12, a3, 182
	addi.n	a11, a5, 2
	addi.n	a10, a10, 4
	call8	memcpy
.LVL386:
	.loc 1 374 0
	l32r	a5, .LC42
.LVL387:
	l32i.n	a8, a5, 20
	.loc 1 374 0
	s32i.n	a8, a7, 0
	.loc 1 374 0
	l32i.n	a8, a5, 24
	.loc 1 374 0
	s32i.n	a8, a7, 4
	.loc 1 374 0
	l32i.n	a8, a5, 28
	.loc 1 374 0
	s32i.n	a8, a7, 8
	.loc 1 374 0
	l32i.n	a5, a5, 32
	.loc 1 374 0
	s32i.n	a5, a7, 12
	.loc 1 378 0
	movi.n	a5, 4
	s8i	a5, a7, 32
	.loc 1 379 0
	l32i.n	a5, sp, 16
	add.n	a6, a5, a6
	slli	a5, a6, 3
	l32r	a6, .LC46
	add.n	a5, a6, a5
	movi.n	a6, 5
	s32i.n	a6, a5, 36
.L276:
	.loc 1 383 0
	addi.n	a8, a4, 8
	.loc 1 383 0
	beqz.n	a8, .L342
	.loc 1 383 0 is_stmt 0 discriminator 1
	l8ui	a5, a4, 8
	l8ui	a6, a4, 9
	slli	a6, a6, 8
	or	a7, a6, a5
	l8ui	a5, a4, 10
	slli	a5, a5, 16
	or	a6, a5, a7
	l8ui	a5, a4, 11
	slli	a5, a5, 24
	or	a5, a5, a6
	j	.L278
.L342:
	.loc 1 383 0
	movi.n	a5, 0
.L278:
	.loc 1 383 0 is_stmt 1 discriminator 4
	s32i.n	a5, sp, 0
	.loc 1 383 0 discriminator 4
	beqz.n	a8, .L343
	.loc 1 383 0 is_stmt 0 discriminator 5
	l8ui	a5, a4, 12
	l8ui	a6, a4, 13
	slli	a6, a6, 8
	or	a7, a6, a5
	l8ui	a5, a4, 14
	slli	a5, a5, 16
	or	a6, a5, a7
	l8ui	a5, a4, 15
	slli	a5, a5, 24
	or	a5, a5, a6
	j	.L279
.L343:
	.loc 1 383 0
	movi.n	a5, 0
.L279:
	.loc 1 383 0 is_stmt 1 discriminator 8
	s32i.n	a5, sp, 4
	.loc 1 383 0 discriminator 8
	beqz.n	a8, .L344
	.loc 1 383 0 is_stmt 0 discriminator 9
	l8ui	a5, a4, 16
	l8ui	a6, a4, 17
	slli	a6, a6, 8
	or	a7, a6, a5
	l8ui	a5, a4, 18
	slli	a5, a5, 16
	or	a6, a5, a7
	l8ui	a5, a4, 19
	slli	a5, a5, 24
	or	a5, a5, a6
	j	.L280
.L344:
	.loc 1 383 0
	movi.n	a5, 0
.L280:
	.loc 1 383 0 is_stmt 1 discriminator 12
	s32i.n	a5, sp, 8
	.loc 1 383 0 discriminator 12
	beqz.n	a8, .L345
	.loc 1 383 0 is_stmt 0 discriminator 13
	l8ui	a7, a4, 20
	l8ui	a5, a4, 21
	slli	a5, a5, 8
	or	a6, a5, a7
	l8ui	a5, a4, 22
	slli	a5, a5, 16
	or	a5, a5, a6
	l8ui	a4, a4, 23
.LVL388:
	slli	a4, a4, 24
	or	a4, a4, a5
	j	.L281
.LVL389:
.L345:
	.loc 1 383 0
	movi.n	a4, 0
.LVL390:
.L281:
	.loc 1 383 0 is_stmt 1 discriminator 16
	s32i.n	a4, sp, 12
	.loc 1 386 0 discriminator 16
	movi	a12, 0x60
	mov.n	a11, sp
	mov.n	a10, a3
	call8	nd6_send_na
.LVL391:
	j	.L228
.LVL392:
.L232:
.LBE7:
.LBE6:
.LBB8:
	.loc 1 402 0
	l16ui	a5, a2, 10
	movi.n	a6, 0xf
	bltu	a6, a5, .L282
	.loc 1 404 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL393:
	.loc 1 407 0
	retw.n
.LVL394:
.L282:
	.loc 1 415 0
	l8ui	a5, a3, 173
	bltui	a5, 3, .L283
	.loc 1 416 0 discriminator 1
	mov.n	a10, a3
	call8	nd6_send_rs
.LVL395:
	extui	a10, a10, 0, 8
	.loc 1 415 0 discriminator 1
	bnez.n	a10, .L284
.L283:
	.loc 1 417 0
	movi.n	a5, 0
	s8i	a5, a3, 173
.L284:
	.loc 1 422 0
	mov.n	a11, a3
	l32r	a10, .LC48
	call8	nd6_get_router
.LVL396:
	extui	a10, a10, 0, 8
.LVL397:
	.loc 1 423 0
	sext	a5, a10, 7
	bgez	a5, .L285
	.loc 1 425 0
	mov.n	a11, a3
	l32r	a10, .LC48
.LVL398:
	call8	nd6_new_router
.LVL399:
	extui	a10, a10, 0, 8
.LVL400:
.L285:
	.loc 1 428 0
	sext	a5, a10, 7
	bgez	a5, .L286
	.loc 1 430 0
	mov.n	a10, a2
.LVL401:
	call8	pbuf_free
.LVL402:
	.loc 1 432 0
	retw.n
.LVL403:
.L286:
	.loc 1 436 0
	sext	a6, a10, 7
	l8ui	a10, a4, 6
.LVL404:
	l8ui	a5, a4, 7
	slli	a5, a5, 8
	or	a10, a5, a10
	call8	lwip_htons
.LVL405:
	addx2	a7, a6, a6
	slli	a5, a7, 2
	l32r	a7, .LC49
	add.n	a5, a7, a5
	s32i.n	a10, a5, 4
	.loc 1 440 0
	l8ui	a8, a4, 12
	l8ui	a5, a4, 13
	slli	a5, a5, 8
	or	a7, a5, a8
	l8ui	a10, a4, 14
	slli	a10, a10, 16
	or	a5, a10, a7
	l8ui	a10, a4, 15
	slli	a10, a10, 24
	or	a10, a10, a5
	beqz.n	a10, .L287
	.loc 1 441 0
	call8	lwip_htonl
.LVL406:
	l32r	a5, .LC50
	s32i.n	a10, a5, 0
.L287:
	.loc 1 443 0
	l8ui	a8, a4, 8
	l8ui	a5, a4, 9
	slli	a5, a5, 8
	or	a7, a5, a8
	l8ui	a10, a4, 10
	slli	a10, a10, 16
	or	a5, a10, a7
	l8ui	a10, a4, 11
	slli	a10, a10, 24
	or	a10, a10, a5
	beqz.n	a10, .L288
	.loc 1 444 0
	call8	lwip_htonl
.LVL407:
	l32r	a5, .LC47
	s32i.n	a10, a5, 0
.L288:
	.loc 1 452 0
	l8ui	a7, a4, 5
	addx2	a5, a6, a6
	slli	a4, a5, 2
.LVL408:
	l32r	a5, .LC49
	add.n	a4, a5, a4
	s8i	a7, a4, 8
.LVL409:
	.loc 1 455 0
	movi.n	a5, 0x10
	.loc 1 458 0
	j	.L289
.LVL410:
.L303:
	.loc 1 459 0
	l16ui	a7, a2, 10
	bne	a4, a7, .L290
	.loc 1 461 0
	l32i.n	a4, a2, 4
	add.n	a4, a4, a5
.LVL411:
	j	.L291
.LVL412:
.L290:
	.loc 1 464 0
	movi.n	a12, 0x20
	l32r	a11, .LC40
	mov.n	a10, a2
	call8	pbuf_copy_partial
.LVL413:
	beqi	a10, 32, .L346
	.loc 1 465 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL414:
	.loc 1 468 0
	retw.n
.L346:
	.loc 1 463 0
	l32r	a4, .LC40
.LVL415:
.L291:
	.loc 1 471 0
	l8ui	a7, a4, 1
	bnez.n	a7, .L292
	.loc 1 473 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL416:
	.loc 1 476 0
	retw.n
.L292:
	.loc 1 478 0
	l8ui	a7, a4, 0
	beqi	a7, 3, .L294
	beqi	a7, 5, .L295
	bnei	a7, 1, .L293
.LVL417:
.LBB9:
	.loc 1 483 0
	addx2	a8, a6, a6
	slli	a7, a8, 2
	l32r	a8, .LC49
	add.n	a7, a8, a7
	l32i.n	a10, a7, 0
	beqz.n	a10, .L293
	.loc 1 484 0 discriminator 1
	l8ui	a7, a10, 32
	.loc 1 483 0 discriminator 1
	bnei	a7, 1, .L293
	.loc 1 485 0
	l8ui	a12, a3, 182
	addi.n	a11, a4, 2
	addi	a10, a10, 20
	call8	memcpy
.LVL418:
	.loc 1 486 0
	slli	a8, a6, 1
	add.n	a8, a8, a6
	slli	a7, a8, 2
	l32r	a8, .LC49
	add.n	a7, a8, a7
	l32i.n	a8, a7, 0
	movi.n	a9, 2
	s8i	a9, a8, 32
	.loc 1 487 0
	l32i.n	a7, a7, 0
	l32r	a8, .LC47
	l32i.n	a8, a8, 0
	s32i.n	a8, a7, 36
	j	.L293
.LVL419:
.L295:
.LBE9:
.LBB10:
	.loc 1 495 0
	l8ui	a9, a4, 4
	l8ui	a7, a4, 5
	slli	a7, a7, 8
	or	a8, a7, a9
	l8ui	a7, a4, 6
	slli	a7, a7, 16
	or	a7, a7, a8
	l8ui	a10, a4, 7
	slli	a10, a10, 24
	or	a10, a10, a7
	call8	lwip_htonl
.LVL420:
	movi	a7, 0x4ff
	bgeu	a7, a10, .L293
	.loc 1 497 0
	l8ui	a9, a4, 4
	l8ui	a7, a4, 5
	slli	a7, a7, 8
	or	a8, a7, a9
	l8ui	a7, a4, 6
	slli	a7, a7, 16
	or	a7, a7, a8
	l8ui	a10, a4, 7
	slli	a10, a10, 24
	or	a10, a10, a7
	call8	lwip_htonl
.LVL421:
	s16i	a10, a3, 180
	j	.L293
.LVL422:
.L294:
.LBE10:
.LBB11:
	.loc 1 507 0
	l8ui	a7, a4, 3
	sext	a7, a7, 7
	bgez	a7, .L293
	.loc 1 508 0 discriminator 1
	l8ui	a7, a4, 2
	.loc 1 507 0 discriminator 1
	bnei	a7, 64, .L293
	.loc 1 509 0
	l8ui	a7, a4, 16
	l8ui	a8, a4, 17
	slli	a8, a8, 8
	or	a9, a8, a7
	l8ui	a7, a4, 18
	slli	a7, a7, 16
	or	a8, a7, a9
	l8ui	a7, a4, 19
	slli	a7, a7, 24
	or	a7, a7, a8
	l32r	a8, .LC43
	and	a8, a7, a8
	.loc 1 508 0
	l32r	a9, .LC44
	beq	a8, a9, .L293
.LBB12:
	.loc 1 515 0
	addi	a8, a4, 16
	.loc 1 515 0
	bnez.n	a8, .L297
	movi.n	a7, 0
.L297:
	.loc 1 515 0 discriminator 4
	s32i.n	a7, sp, 0
	.loc 1 515 0 discriminator 4
	beqz.n	a8, .L347
	.loc 1 515 0 is_stmt 0 discriminator 5
	l8ui	a7, a4, 20
	l8ui	a9, a4, 21
	slli	a9, a9, 8
	or	a7, a9, a7
	l8ui	a9, a4, 22
	slli	a9, a9, 16
	or	a7, a9, a7
	l8ui	a9, a4, 23
	slli	a9, a9, 24
	or	a7, a9, a7
	j	.L298
.L347:
	.loc 1 515 0
	movi.n	a7, 0
.L298:
	.loc 1 515 0 is_stmt 1 discriminator 8
	s32i.n	a7, sp, 4
	.loc 1 515 0 discriminator 8
	beqz.n	a8, .L348
	.loc 1 515 0 is_stmt 0 discriminator 9
	l8ui	a7, a4, 24
	l8ui	a9, a4, 25
	slli	a9, a9, 8
	or	a7, a9, a7
	l8ui	a9, a4, 26
	slli	a9, a9, 16
	or	a7, a9, a7
	l8ui	a9, a4, 27
	slli	a9, a9, 24
	or	a7, a9, a7
	j	.L299
.L348:
	.loc 1 515 0
	movi.n	a7, 0
.L299:
	.loc 1 515 0 is_stmt 1 discriminator 12
	s32i.n	a7, sp, 8
	.loc 1 515 0 discriminator 12
	beqz.n	a8, .L349
	.loc 1 515 0 is_stmt 0 discriminator 13
	l8ui	a7, a4, 28
	l8ui	a8, a4, 29
	slli	a8, a8, 8
	or	a7, a8, a7
	l8ui	a8, a4, 30
	slli	a8, a8, 16
	or	a7, a8, a7
	l8ui	a8, a4, 31
	slli	a8, a8, 24
	or	a7, a8, a7
	j	.L300
.L349:
	.loc 1 515 0
	movi.n	a7, 0
.L300:
	.loc 1 515 0 is_stmt 1 discriminator 16
	s32i.n	a7, sp, 12
	.loc 1 518 0 discriminator 16
	mov.n	a11, a3
	mov.n	a10, sp
	call8	nd6_get_onlink_prefix
.LVL423:
	extui	a10, a10, 0, 8
.LVL424:
	.loc 1 519 0 discriminator 16
	sext	a7, a10, 7
	bgez	a7, .L301
	.loc 1 521 0
	mov.n	a11, a3
	mov.n	a10, sp
.LVL425:
	call8	nd6_new_onlink_prefix
.LVL426:
	extui	a10, a10, 0, 8
.LVL427:
.L301:
	.loc 1 523 0
	sext	a7, a10, 7
	bltz	a7, .L293
	.loc 1 524 0
	l8ui	a8, a4, 4
	l8ui	a9, a4, 5
	slli	a9, a9, 8
	or	a8, a9, a8
	l8ui	a9, a4, 6
	slli	a9, a9, 16
	or	a8, a9, a8
	l8ui	a10, a4, 7
.LVL428:
	slli	a10, a10, 24
	or	a10, a10, a8
	call8	lwip_htonl
.LVL429:
	subx8	a9, a7, a7
	slli	a8, a9, 2
	l32r	a9, .LC45
	add.n	a8, a9, a8
	s32i.n	a10, a8, 20
	.loc 1 527 0
	l8ui	a8, a4, 3
	bbci	a8, 6, .L293
	.loc 1 530 0
	slli	a8, a7, 3
	sub	a11, a8, a7
	slli	a10, a11, 2
	add.n	a10, a9, a10
	l8ui	a8, a10, 24
	movi.n	a7, 1
	or	a7, a8, a7
	s8i	a7, a10, 24
.LVL430:
.L293:
.LBE12:
.LBE11:
	.loc 1 581 0
	l8ui	a4, a4, 1
.LVL431:
	addx8	a5, a4, a5
.LVL432:
	extui	a5, a5, 0, 16
.LVL433:
.L289:
	.loc 1 458 0
	l16ui	a4, a2, 8
	mov.n	a13, a5
	sub	a7, a4, a5
	bgei	a7, 1, .L303
	j	.L228
.LVL434:
.L234:
.LBE8:
.LBB13:
	.loc 1 593 0
	l16ui	a6, a2, 10
	movi.n	a5, 0x27
	bltu	a5, a6, .L304
	.loc 1 595 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL435:
	.loc 1 598 0
	retw.n
.LVL436:
.L304:
	.loc 1 603 0
	movi.n	a5, 0x29
	bgeu	a5, a6, .L350
	.loc 1 604 0
	addi	a5, a4, 40
.LVL437:
	.loc 1 605 0
	l8ui	a7, a4, 41
	slli	a7, a7, 3
	addi	a7, a7, 40
	bltu	a6, a7, .L351
	j	.L306
.LVL438:
.L350:
	.loc 1 609 0
	movi.n	a5, 0
	j	.L306
.LVL439:
.L351:
	.loc 1 606 0
	movi.n	a5, 0
.LVL440:
.L306:
	.loc 1 613 0
	addi	a10, a4, 24
	.loc 1 613 0
	beqz.n	a10, .L352
	.loc 1 613 0 is_stmt 0 discriminator 1
	l8ui	a9, a4, 24
	l8ui	a7, a4, 25
	slli	a7, a7, 8
	or	a8, a7, a9
	l8ui	a6, a4, 26
	slli	a6, a6, 16
	or	a7, a6, a8
	l8ui	a6, a4, 27
	slli	a6, a6, 24
	or	a6, a6, a7
	j	.L307
.L352:
	.loc 1 613 0
	movi.n	a6, 0
.L307:
	.loc 1 613 0 is_stmt 1 discriminator 4
	s32i.n	a6, sp, 0
.LVL441:
	.loc 1 613 0 discriminator 4
	beqz.n	a10, .L353
	.loc 1 613 0 is_stmt 0 discriminator 5
	l8ui	a9, a4, 28
	l8ui	a7, a4, 29
	slli	a7, a7, 8
	or	a8, a7, a9
	l8ui	a6, a4, 30
	slli	a6, a6, 16
	or	a7, a6, a8
	l8ui	a6, a4, 31
	slli	a6, a6, 24
	or	a6, a6, a7
	j	.L308
.L353:
	.loc 1 613 0
	movi.n	a6, 0
.L308:
	.loc 1 613 0 is_stmt 1 discriminator 8
	s32i.n	a6, sp, 4
	.loc 1 613 0 discriminator 8
	beqz.n	a10, .L354
	.loc 1 613 0 is_stmt 0 discriminator 9
	l8ui	a9, a4, 32
	l8ui	a7, a4, 33
	slli	a7, a7, 8
	or	a8, a7, a9
	l8ui	a6, a4, 34
	slli	a6, a6, 16
	or	a7, a6, a8
	l8ui	a6, a4, 35
	slli	a6, a6, 24
	or	a6, a6, a7
	j	.L309
.L354:
	.loc 1 613 0
	movi.n	a6, 0
.L309:
	.loc 1 613 0 is_stmt 1 discriminator 12
	s32i.n	a6, sp, 8
	.loc 1 613 0 discriminator 12
	beqz.n	a10, .L355
	.loc 1 613 0 is_stmt 0 discriminator 13
	l8ui	a9, a4, 36
	l8ui	a7, a4, 37
	slli	a7, a7, 8
	or	a8, a7, a9
	l8ui	a6, a4, 38
	slli	a6, a6, 16
	or	a7, a6, a8
	l8ui	a6, a4, 39
	slli	a6, a6, 24
	or	a6, a6, a7
	j	.L310
.L355:
	.loc 1 613 0
	movi.n	a6, 0
.L310:
	.loc 1 613 0 is_stmt 1 discriminator 16
	s32i.n	a6, sp, 12
	.loc 1 616 0 discriminator 16
	mov.n	a10, sp
	call8	nd6_find_destination_cache_entry
.LVL442:
	extui	a10, a10, 0, 8
.LVL443:
	.loc 1 617 0 discriminator 16
	sext	a6, a10, 7
	bgez	a6, .L311
	.loc 1 619 0
	mov.n	a10, a2
.LVL444:
	call8	pbuf_free
.LVL445:
	.loc 1 620 0
	retw.n
.LVL446:
.L311:
	.loc 1 624 0
	sext	a10, a10, 7
.LVL447:
	addi.n	a9, a4, 8
	.loc 1 624 0
	beqz.n	a9, .L356
	.loc 1 624 0 is_stmt 0 discriminator 1
	l8ui	a6, a4, 8
	l8ui	a7, a4, 9
	slli	a7, a7, 8
	or	a8, a7, a6
	l8ui	a6, a4, 10
	slli	a6, a6, 16
	or	a7, a6, a8
	l8ui	a6, a4, 11
	slli	a6, a6, 24
	or	a6, a6, a7
	j	.L312
.L356:
	.loc 1 624 0
	movi.n	a6, 0
.L312:
	.loc 1 624 0 is_stmt 1 discriminator 4
	addx4	a8, a10, a10
	slli	a7, a8, 3
	l32r	a8, .LC51
	add.n	a7, a8, a7
	s32i.n	a6, a7, 16
	.loc 1 624 0 discriminator 4
	beqz.n	a9, .L357
	.loc 1 624 0 is_stmt 0 discriminator 5
	l8ui	a6, a4, 12
	l8ui	a7, a4, 13
	slli	a7, a7, 8
	or	a8, a7, a6
	l8ui	a6, a4, 14
	slli	a6, a6, 16
	or	a7, a6, a8
	l8ui	a6, a4, 15
	slli	a6, a6, 24
	or	a6, a6, a7
	j	.L313
.L357:
	.loc 1 624 0
	movi.n	a6, 0
.L313:
	.loc 1 624 0 is_stmt 1 discriminator 8
	addx4	a8, a10, a10
	slli	a7, a8, 3
	l32r	a8, .LC51
	add.n	a7, a8, a7
	s32i.n	a6, a7, 20
	.loc 1 624 0 discriminator 8
	beqz.n	a9, .L358
	.loc 1 624 0 is_stmt 0 discriminator 9
	l8ui	a6, a4, 16
	l8ui	a7, a4, 17
	slli	a7, a7, 8
	or	a8, a7, a6
	l8ui	a6, a4, 18
	slli	a6, a6, 16
	or	a7, a6, a8
	l8ui	a6, a4, 19
	slli	a6, a6, 24
	or	a6, a6, a7
	j	.L314
.L358:
	.loc 1 624 0
	movi.n	a6, 0
.L314:
	.loc 1 624 0 is_stmt 1 discriminator 12
	addx4	a8, a10, a10
	slli	a7, a8, 3
	l32r	a8, .LC51
	add.n	a7, a8, a7
	s32i.n	a6, a7, 24
	.loc 1 624 0 discriminator 12
	beqz.n	a9, .L359
	.loc 1 624 0 is_stmt 0 discriminator 13
	l8ui	a6, a4, 20
	l8ui	a7, a4, 21
	slli	a7, a7, 8
	or	a8, a7, a6
	l8ui	a6, a4, 22
	slli	a6, a6, 16
	or	a7, a6, a8
	l8ui	a6, a4, 23
	slli	a6, a6, 24
	or	a6, a6, a7
	j	.L315
.L359:
	.loc 1 624 0
	movi.n	a6, 0
.L315:
	.loc 1 624 0 is_stmt 1 discriminator 16
	addx4	a10, a10, a10
	slli	a7, a10, 3
	l32r	a8, .LC51
	add.n	a7, a8, a7
	s32i.n	a6, a7, 28
	.loc 1 627 0 discriminator 16
	beqz.n	a5, .L228
	.loc 1 628 0
	l8ui	a6, a5, 0
	bnei	a6, 2, .L228
	.loc 1 630 0
	beqz.n	a9, .L360
	.loc 1 630 0 is_stmt 0 discriminator 1
	l8ui	a6, a4, 8
	l8ui	a7, a4, 9
	slli	a7, a7, 8
	or	a6, a7, a6
	l8ui	a7, a4, 10
	slli	a7, a7, 16
	or	a6, a7, a6
	l8ui	a7, a4, 11
	slli	a7, a7, 24
	or	a6, a7, a6
	j	.L317
.L360:
	.loc 1 630 0
	movi.n	a6, 0
.L317:
	.loc 1 630 0 is_stmt 1 discriminator 4
	s32i.n	a6, sp, 0
	.loc 1 630 0 discriminator 4
	beqz.n	a9, .L361
	.loc 1 630 0 is_stmt 0 discriminator 5
	l8ui	a6, a4, 12
	l8ui	a7, a4, 13
	slli	a7, a7, 8
	or	a6, a7, a6
	l8ui	a7, a4, 14
	slli	a7, a7, 16
	or	a6, a7, a6
	l8ui	a7, a4, 15
	slli	a7, a7, 24
	or	a6, a7, a6
	j	.L318
.L361:
	.loc 1 630 0
	movi.n	a6, 0
.L318:
	.loc 1 630 0 is_stmt 1 discriminator 8
	s32i.n	a6, sp, 4
	.loc 1 630 0 discriminator 8
	beqz.n	a9, .L362
	.loc 1 630 0 is_stmt 0 discriminator 9
	l8ui	a6, a4, 16
	l8ui	a7, a4, 17
	slli	a7, a7, 8
	or	a6, a7, a6
	l8ui	a7, a4, 18
	slli	a7, a7, 16
	or	a6, a7, a6
	l8ui	a7, a4, 19
	slli	a7, a7, 24
	or	a6, a7, a6
	j	.L319
.L362:
	.loc 1 630 0
	movi.n	a6, 0
.L319:
	.loc 1 630 0 is_stmt 1 discriminator 12
	s32i.n	a6, sp, 8
	.loc 1 630 0 discriminator 12
	beqz.n	a9, .L363
	.loc 1 630 0 is_stmt 0 discriminator 13
	l8ui	a6, a4, 20
	l8ui	a7, a4, 21
	slli	a7, a7, 8
	or	a6, a7, a6
	l8ui	a7, a4, 22
	slli	a7, a7, 16
	or	a6, a7, a6
	l8ui	a4, a4, 23
.LVL448:
	slli	a4, a4, 24
	or	a4, a4, a6
	j	.L320
.LVL449:
.L363:
	.loc 1 630 0
	movi.n	a4, 0
.LVL450:
.L320:
	.loc 1 630 0 is_stmt 1 discriminator 16
	s32i.n	a4, sp, 12
	.loc 1 632 0 discriminator 16
	mov.n	a10, sp
	call8	nd6_find_neighbor_cache_entry
.LVL451:
	extui	a4, a10, 0, 8
.LVL452:
	.loc 1 633 0 discriminator 16
	sext	a6, a4, 7
	bgez	a6, .L321
	.loc 1 634 0
	call8	nd6_new_neighbor_cache_entry
.LVL453:
	extui	a4, a10, 0, 8
.LVL454:
	.loc 1 635 0
	sext	a6, a4, 7
	bltz	a6, .L321
	.loc 1 636 0
	mov.n	a7, a6
	slli	a6, a6, 2
	s32i.n	a6, sp, 16
	add.n	a8, a6, a7
	slli	a6, a8, 3
	l32r	a8, .LC46
	add.n	a6, a8, a6
	s32i.n	a3, a6, 16
	.loc 1 637 0
	l32i.n	a8, sp, 16
	add.n	a9, a8, a7
	slli	a8, a9, 3
	addi	a8, a8, 16
	l32r	a9, .LC46
	add.n	a10, a8, a9
.LVL455:
	l8ui	a12, a3, 182
	addi.n	a11, a5, 2
	addi.n	a10, a10, 4
	call8	memcpy
.LVL456:
	.loc 1 638 0
	l32i.n	a8, sp, 0
	s32i.n	a8, a6, 0
	.loc 1 638 0
	l32i.n	a8, sp, 4
	s32i.n	a8, a6, 4
	.loc 1 638 0
	l32i.n	a8, sp, 8
	s32i.n	a8, a6, 8
	.loc 1 638 0
	l32i.n	a8, sp, 12
	s32i.n	a8, a6, 12
	.loc 1 642 0
	movi.n	a8, 4
	s8i	a8, a6, 32
	.loc 1 643 0
	l32i.n	a6, sp, 16
	add.n	a7, a6, a7
	slli	a6, a7, 3
	l32r	a8, .LC46
	add.n	a6, a8, a6
	movi.n	a7, 5
	s32i.n	a7, a6, 36
.LVL457:
.L321:
	.loc 1 646 0
	sext	a6, a4, 7
	bltz	a6, .L228
	.loc 1 647 0
	mov.n	a4, a6
.LVL458:
	addx4	a7, a6, a6
	slli	a6, a7, 3
	l32r	a7, .LC46
	add.n	a6, a7, a6
	l8ui	a6, a6, 32
	bnei	a6, 1, .L228
	.loc 1 648 0
	slli	a7, a4, 2
	add.n	a8, a7, a4
	slli	a6, a8, 3
	addi	a10, a6, 16
	l32r	a6, .LC46
	add.n	a10, a10, a6
	l8ui	a12, a3, 182
	addi.n	a11, a5, 2
	addi.n	a10, a10, 4
	call8	memcpy
.LVL459:
	.loc 1 651 0
	add.n	a5, a7, a4
.LVL460:
	slli	a3, a5, 3
.LVL461:
	add.n	a3, a6, a3
	movi.n	a5, 4
	s8i	a5, a3, 32
	.loc 1 652 0
	add.n	a3, a7, a4
	slli	a4, a3, 3
	add.n	a4, a6, a4
	movi.n	a3, 5
	s32i.n	a3, a4, 36
	j	.L228
.LVL462:
.L231:
.LBE13:
.LBB14:
	.loc 1 667 0
	l16ui	a3, a2, 10
.LVL463:
	movi.n	a5, 0x2f
	bltu	a5, a3, .L322
	.loc 1 669 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL464:
	.loc 1 672 0
	retw.n
.LVL465:
.L322:
	.loc 1 679 0
	addi	a8, a4, 32
	.loc 1 679 0
	beqz.n	a8, .L364
	.loc 1 679 0 is_stmt 0 discriminator 1
	l8ui	a7, a4, 32
	l8ui	a5, a4, 33
	slli	a5, a5, 8
	or	a6, a5, a7
	l8ui	a3, a4, 34
	slli	a3, a3, 16
	or	a5, a3, a6
	l8ui	a3, a4, 35
	slli	a3, a3, 24
	or	a3, a3, a5
	j	.L324
.L364:
	.loc 1 679 0
	movi.n	a3, 0
.L324:
	.loc 1 679 0 is_stmt 1 discriminator 4
	s32i.n	a3, sp, 0
.LVL466:
	.loc 1 679 0 discriminator 4
	beqz.n	a8, .L365
	.loc 1 679 0 is_stmt 0 discriminator 5
	l8ui	a7, a4, 36
	l8ui	a5, a4, 37
	slli	a5, a5, 8
	or	a6, a5, a7
	l8ui	a3, a4, 38
	slli	a3, a3, 16
	or	a5, a3, a6
	l8ui	a3, a4, 39
	slli	a3, a3, 24
	or	a3, a3, a5
	j	.L325
.L365:
	.loc 1 679 0
	movi.n	a3, 0
.L325:
	.loc 1 679 0 is_stmt 1 discriminator 8
	s32i.n	a3, sp, 4
	.loc 1 679 0 discriminator 8
	beqz.n	a8, .L366
	.loc 1 679 0 is_stmt 0 discriminator 9
	l8ui	a7, a4, 40
	l8ui	a5, a4, 41
	slli	a5, a5, 8
	or	a6, a5, a7
	l8ui	a3, a4, 42
	slli	a3, a3, 16
	or	a5, a3, a6
	l8ui	a3, a4, 43
	slli	a3, a3, 24
	or	a3, a3, a5
	j	.L326
.L366:
	.loc 1 679 0
	movi.n	a3, 0
.L326:
	.loc 1 679 0 is_stmt 1 discriminator 12
	s32i.n	a3, sp, 8
	.loc 1 679 0 discriminator 12
	beqz.n	a8, .L367
	.loc 1 679 0 is_stmt 0 discriminator 13
	l8ui	a7, a4, 44
	l8ui	a5, a4, 45
	slli	a5, a5, 8
	or	a6, a5, a7
	l8ui	a3, a4, 46
	slli	a3, a3, 16
	or	a5, a3, a6
	l8ui	a3, a4, 47
	slli	a3, a3, 24
	or	a3, a3, a5
	j	.L327
.L367:
	.loc 1 679 0
	movi.n	a3, 0
.L327:
	.loc 1 679 0 is_stmt 1 discriminator 16
	s32i.n	a3, sp, 12
	.loc 1 682 0 discriminator 16
	mov.n	a10, sp
	call8	nd6_find_destination_cache_entry
.LVL467:
	extui	a3, a10, 0, 8
.LVL468:
	.loc 1 683 0 discriminator 16
	sext	a5, a3, 7
	bgez	a5, .L328
	.loc 1 685 0
	mov.n	a10, a2
.LVL469:
	call8	pbuf_free
.LVL470:
	.loc 1 686 0
	retw.n
.LVL471:
.L328:
	.loc 1 690 0
	l8ui	a7, a4, 4
	l8ui	a5, a4, 5
	slli	a5, a5, 8
	or	a6, a5, a7
	l8ui	a5, a4, 6
	slli	a5, a5, 16
	or	a5, a5, a6
	l8ui	a10, a4, 7
.LVL472:
	slli	a10, a10, 24
	or	a10, a10, a5
	call8	lwip_htonl
.LVL473:
	.loc 1 691 0
	sext	a3, a3, 7
.LVL474:
	l32r	a4, .LC52
.LVL475:
	bltu	a4, a10, .L368
	.loc 1 691 0 is_stmt 0 discriminator 1
	extui	a10, a10, 0, 16
.LVL476:
	j	.L329
.LVL477:
.L368:
	.loc 1 691 0
	l32r	a10, .LC41
.LVL478:
.L329:
	.loc 1 691 0 discriminator 4
	addx4	a3, a3, a3
	slli	a4, a3, 3
	l32r	a3, .LC51
	add.n	a4, a3, a4
	s16i	a10, a4, 32
.L228:
.LBE14:
	.loc 1 702 0 is_stmt 1
	mov.n	a10, a2
	call8	pbuf_free
.LVL479:
	retw.n
.LFE20:
	.size	nd6_input, .-nd6_input
	.section	.rodata.str1.4
	.align	4
.LC53:
	.string	"netif != NULL"
	.section	.text.nd6_set_cb,"ax",@progbits
	.literal_position
	.literal .LC54, .LC53
	.literal .LC55, __func__$6818
	.literal .LC56, .LC22
	.align	4
	.global	nd6_set_cb
	.type	nd6_set_cb, @function
nd6_set_cb:
.LFB21:
	.loc 1 713 0
.LVL480:
	entry	sp, 32
.LCFI20:
	.loc 1 714 0
	bnez.n	a2, .L370
	.loc 1 714 0 discriminator 1
	l32r	a13, .LC54
	l32r	a12, .LC55
	movi	a11, 0x2ca
	l32r	a10, .LC56
	call8	__assert_func
.LVL481:
.L370:
	.loc 1 716 0
	beqz.n	a2, .L369
	.loc 1 716 0 discriminator 1
	l8ui	a8, a2, 189
	bbci	a8, 0, .L369
	.loc 1 717 0
	s32i	a3, a2, 128
.L369:
	retw.n
.LFE21:
	.size	nd6_set_cb, .-nd6_set_cb
	.section	.text.nd6_tmr,"ax",@progbits
	.literal_position
	.literal .LC57, neighbor_cache
	.literal .LC58, .L376
	.literal .LC59, destination_cache
	.literal .LC60, default_router_list
	.literal .LC61, prefix_list
	.literal .LC62, netif_list
	.literal .LC63, multicast_address
	.literal .LC64, 16777216
	.align	4
	.global	nd6_tmr
	.type	nd6_tmr, @function
nd6_tmr:
.LFB22:
	.loc 1 733 0
	entry	sp, 32
.LCFI21:
.LVL482:
	.loc 1 738 0
	movi.n	a3, 0
	j	.L373
.LVL483:
.L386:
	.loc 1 739 0
	sext	a2, a3, 7
	addx4	a5, a2, a2
	slli	a4, a5, 3
	l32r	a5, .LC57
	add.n	a4, a5, a4
	l8ui	a4, a4, 32
	bgeui	a4, 6, .L374
	l32r	a5, .LC58
	addx4	a4, a4, a5
	l32i.n	a4, a4, 0
	jx	a4
	.section	.rodata.nd6_tmr,"a",@progbits
	.align	4
	.align	4
.L376:
	.word	.L374
	.word	.L375
	.word	.L377
	.word	.L378
	.word	.L379
	.word	.L380
	.section	.text.nd6_tmr
.L375:
	.loc 1 741 0
	addx4	a5, a2, a2
	slli	a4, a5, 3
	l32r	a5, .LC57
	add.n	a4, a5, a4
	l32i.n	a5, a4, 36
	bltui	a5, 3, .L381
	.loc 1 742 0 discriminator 1
	addx4	a6, a2, a2
	slli	a4, a6, 3
	l32r	a6, .LC57
	add.n	a4, a6, a4
	l8ui	a4, a4, 33
	.loc 1 741 0 discriminator 1
	bnez.n	a4, .L381
	.loc 1 744 0
	mov.n	a10, a2
	call8	nd6_free_neighbor_cache_entry
.LVL484:
	j	.L374
.L381:
	.loc 1 747 0
	l32r	a10, .LC57
	slli	a4, a2, 2
	add.n	a6, a4, a2
	slli	a8, a6, 3
	mov.n	a6, a8
	add.n	a8, a10, a8
	addi.n	a5, a5, 1
	s32i.n	a5, a8, 36
	.loc 1 748 0
	movi.n	a11, 1
	mov.n	a10, a8
	call8	nd6_send_neighbor_cache_probe
.LVL485:
	j	.L374
.L377:
	.loc 1 753 0
	addx4	a5, a2, a2
	slli	a4, a5, 3
	l32r	a5, .LC57
	add.n	a4, a5, a4
	l32i.n	a4, a4, 28
	beqz.n	a4, .L382
	.loc 1 754 0
	mov.n	a10, a2
	call8	nd6_send_q
.LVL486:
.L382:
	.loc 1 756 0
	addx4	a5, a2, a2
	slli	a4, a5, 3
	l32r	a5, .LC57
	add.n	a4, a5, a4
	l32i.n	a4, a4, 36
	movi	a5, 0x3e8
	bltu	a5, a4, .L383
	.loc 1 758 0
	l32r	a6, .LC57
	slli	a4, a2, 2
	add.n	a8, a4, a2
	slli	a5, a8, 3
	add.n	a5, a6, a5
	movi.n	a8, 3
	s8i	a8, a5, 32
	.loc 1 759 0
	movi.n	a2, 0
	s32i.n	a2, a5, 36
	j	.L374
.L383:
	.loc 1 761 0
	addx4	a2, a2, a2
	slli	a5, a2, 3
	l32r	a2, .LC57
	add.n	a5, a2, a5
	movi	a2, -0x3e8
	add.n	a4, a4, a2
	s32i.n	a4, a5, 36
	j	.L374
.L378:
	.loc 1 765 0
	l32r	a8, .LC57
	slli	a4, a2, 2
	add.n	a9, a4, a2
	slli	a5, a9, 3
	mov.n	a9, a5
	add.n	a5, a8, a5
	l32i.n	a5, a5, 36
	add.n	a4, a8, a9
	addi.n	a2, a5, 1
	s32i.n	a2, a4, 36
	.loc 1 766 0
	j	.L374
.L379:
	.loc 1 768 0
	addx4	a5, a2, a2
	slli	a4, a5, 3
	l32r	a5, .LC57
	add.n	a4, a5, a4
	l32i.n	a4, a4, 36
	bgeui	a4, 2, .L384
	.loc 1 770 0
	mov.n	a6, a5
	slli	a4, a2, 2
	add.n	a8, a4, a2
	slli	a5, a8, 3
	add.n	a5, a6, a5
	movi.n	a8, 5
	s8i	a8, a5, 32
	.loc 1 771 0
	movi.n	a2, 0
	s32i.n	a2, a5, 36
	j	.L374
.L384:
	.loc 1 773 0
	addx4	a2, a2, a2
	slli	a5, a2, 3
	l32r	a2, .LC57
	add.n	a5, a2, a5
	addi.n	a4, a4, -1
	s32i.n	a4, a5, 36
	j	.L374
.L380:
	.loc 1 777 0
	addx4	a5, a2, a2
	slli	a4, a5, 3
	l32r	a5, .LC57
	add.n	a4, a5, a4
	l32i.n	a4, a4, 36
	bltui	a4, 3, .L385
	.loc 1 778 0 discriminator 1
	addx4	a6, a2, a2
	slli	a5, a6, 3
	l32r	a6, .LC57
	add.n	a5, a6, a5
	l8ui	a5, a5, 33
	.loc 1 777 0 discriminator 1
	bnez.n	a5, .L385
	.loc 1 780 0
	mov.n	a10, a2
	call8	nd6_free_neighbor_cache_entry
.LVL487:
	j	.L374
.L385:
	.loc 1 783 0
	l32r	a10, .LC57
	slli	a6, a2, 2
	add.n	a8, a6, a2
	slli	a5, a8, 3
	add.n	a5, a10, a5
	addi.n	a4, a4, 1
	s32i.n	a4, a5, 36
	.loc 1 784 0
	movi.n	a11, 0
	mov.n	a10, a5
	call8	nd6_send_neighbor_cache_probe
.LVL488:
.L374:
	.loc 1 738 0 discriminator 2
	addi.n	a3, a3, 1
.LVL489:
	extui	a3, a3, 0, 8
.LVL490:
.L373:
	.loc 1 738 0 is_stmt 0 discriminator 1
	sext	a2, a3, 7
	movi.n	a4, 9
	bge	a4, a2, .L386
	movi.n	a3, 0
.LVL491:
	j	.L387
.LVL492:
.L388:
	.loc 1 796 0 is_stmt 1 discriminator 3
	sext	a2, a3, 7
	l32r	a8, .LC59
	slli	a4, a2, 2
	add.n	a9, a4, a2
	slli	a5, a9, 3
	mov.n	a9, a5
	add.n	a5, a8, a5
	l32i.n	a5, a5, 36
	add.n	a4, a8, a9
	addi.n	a2, a5, 1
	s32i.n	a2, a4, 36
	.loc 1 795 0 discriminator 3
	addi.n	a3, a3, 1
.LVL493:
	extui	a3, a3, 0, 8
.LVL494:
.L387:
	.loc 1 795 0 is_stmt 0 discriminator 1
	sext	a2, a3, 7
	movi.n	a4, 9
	bge	a4, a2, .L388
	movi.n	a3, 0
.LVL495:
	j	.L389
.LVL496:
.L392:
	.loc 1 801 0 is_stmt 1
	sext	a2, a3, 7
	addx2	a5, a2, a2
	slli	a4, a5, 2
	l32r	a5, .LC60
	add.n	a4, a5, a4
	l32i.n	a4, a4, 0
	beqz.n	a4, .L390
	.loc 1 803 0
	addx2	a5, a2, a2
	slli	a4, a5, 2
	l32r	a5, .LC60
	add.n	a4, a5, a4
	l32i.n	a4, a4, 4
	beqz.n	a4, .L391
	.loc 1 804 0
	addx2	a6, a2, a2
	slli	a5, a6, 2
	l32r	a6, .LC60
	add.n	a5, a6, a5
	addi.n	a4, a4, -1
	s32i.n	a4, a5, 4
.L391:
	.loc 1 806 0
	addx2	a5, a2, a2
	slli	a4, a5, 2
	l32r	a5, .LC60
	add.n	a4, a5, a4
	l32i.n	a4, a4, 4
	bnez.n	a4, .L390
	.loc 1 808 0
	mov.n	a6, a5
	slli	a8, a2, 1
	add.n	a5, a8, a2
	slli	a4, a5, 2
	add.n	a4, a6, a4
	l32i.n	a9, a4, 0
	movi.n	a5, 0
	s8i	a5, a9, 33
	.loc 1 809 0
	movi.n	a9, 0
	s32i.n	a9, a4, 0
	.loc 1 810 0
	s32i.n	a9, a4, 4
	.loc 1 811 0
	add.n	a2, a8, a2
	slli	a4, a2, 2
	add.n	a4, a6, a4
	s8i	a5, a4, 8
.L390:
	.loc 1 800 0 discriminator 2
	addi.n	a3, a3, 1
.LVL497:
	extui	a3, a3, 0, 8
.LVL498:
.L389:
	.loc 1 800 0 is_stmt 0 discriminator 1
	sext	a2, a3, 7
	blti	a2, 3, .L392
	movi.n	a3, 0
.LVL499:
	j	.L393
.LVL500:
.L403:
	.loc 1 818 0 is_stmt 1
	sext	a2, a3, 7
	subx8	a5, a2, a2
	slli	a4, a5, 2
	l32r	a5, .LC61
	add.n	a4, a5, a4
	l32i.n	a4, a4, 16
	beqz.n	a4, .L394
	.loc 1 819 0
	subx8	a5, a2, a2
	slli	a4, a5, 2
	l32r	a5, .LC61
	add.n	a4, a5, a4
	l32i.n	a4, a4, 20
	bnez.n	a4, .L395
	.loc 1 821 0
	slli	a5, a2, 3
	sub	a5, a5, a2
	slli	a4, a5, 2
	l32r	a5, .LC61
	add.n	a4, a5, a4
	movi.n	a5, 0
	s32i.n	a5, a4, 20
	.loc 1 825 0
	l8ui	a4, a4, 24
	bbsi	a4, 1, .L413
.LBB15:
	j	.L397
.LVL501:
.L399:
	.loc 1 829 0
	subx8	a8, a2, a2
	slli	a5, a8, 2
	mov.n	a8, a5
	l32r	a6, .LC61
	add.n	a5, a6, a5
	l32i.n	a10, a5, 16
	sext	a11, a4, 7
	add.n	a5, a10, a11
	l8ui	a5, a5, 124
	beqz.n	a5, .L398
	.loc 1 830 0 discriminator 1
	l32r	a6, .LC61
	add.n	a5, a6, a8
	l32i.n	a8, a5, 0
	addx4	a6, a11, a11
	slli	a5, a6, 2
	mov.n	a6, a5
	add.n	a5, a10, a5
	l32i	a5, a5, 64
	.loc 1 829 0 discriminator 1
	bne	a8, a5, .L398
	.loc 1 830 0
	subx8	a6, a2, a2
	slli	a5, a6, 2
	l32r	a6, .LC61
	add.n	a5, a6, a5
	l32i.n	a8, a5, 4
	addx4	a6, a11, a11
	slli	a5, a6, 2
	mov.n	a6, a5
	add.n	a5, a10, a5
	l32i	a5, a5, 68
	bne	a8, a5, .L398
	.loc 1 831 0
	movi.n	a12, 0
	call8	netif_ip6_addr_set_state
.LVL502:
	.loc 1 832 0
	subx8	a5, a2, a2
	slli	a4, a5, 2
.LVL503:
	l32r	a5, .LC61
	add.n	a4, a5, a4
	movi.n	a5, 0
	s8i	a5, a4, 24
	.loc 1 835 0
	j	.L397
.LVL504:
.L398:
	.loc 1 828 0 discriminator 2
	addi.n	a4, a4, 1
.LVL505:
	extui	a4, a4, 0, 8
.LVL506:
	j	.L396
.LVL507:
.L413:
.LBE15:
	movi.n	a4, 1
.L396:
.LVL508:
.LBB16:
	.loc 1 828 0 is_stmt 0 discriminator 1
	sext	a5, a4, 7
	blti	a5, 3, .L399
.LVL509:
.L397:
.LBE16:
	.loc 1 841 0 is_stmt 1
	l32r	a9, .LC61
	slli	a4, a2, 3
	sub	a8, a4, a2
	slli	a5, a8, 2
	add.n	a5, a9, a5
	movi.n	a8, 0
	s32i.n	a8, a5, 16
	.loc 1 842 0
	mov.n	a4, a5
	s8i	a8, a5, 24
	j	.L394
.L395:
	.loc 1 844 0
	slli	a8, a2, 3
	sub	a8, a8, a2
	slli	a5, a8, 2
	l32r	a6, .LC61
	add.n	a5, a6, a5
	addi.n	a4, a4, -1
	s32i.n	a4, a5, 20
	.loc 1 848 0
	l32i.n	a10, a5, 16
	l8ui	a4, a10, 172
	beqz.n	a4, .L394
	.loc 1 849 0
	subx8	a5, a2, a2
	slli	a4, a5, 2
	mov.n	a5, a6
	add.n	a4, a6, a4
	l8ui	a4, a4, 24
	extui	a4, a4, 0, 2
	bnei	a4, 1, .L394
	j	.L414
.LVL510:
.L402:
.LBB17:
	.loc 1 855 0
	sext	a4, a5, 7
	add.n	a6, a10, a4
	l8ui	a6, a6, 124
	bnez.n	a6, .L401
	.loc 1 857 0
	l32r	a7, .LC61
	slli	a6, a2, 3
	sub	a8, a6, a2
	slli	a5, a8, 2
.LVL511:
	add.n	a5, a7, a5
	l32i	a15, a10, 76
	l32i	a14, a10, 72
	l32i.n	a13, a5, 4
	l32i.n	a12, a5, 0
	mov.n	a11, a4
	call8	netif_ip6_addr_set_parts
.LVL512:
	.loc 1 862 0
	movi.n	a12, 8
	mov.n	a11, a4
	l32i.n	a10, a5, 16
	call8	netif_ip6_addr_set_state
.LVL513:
	.loc 1 865 0
	l8ui	a4, a5, 24
	movi.n	a2, 2
	or	a2, a4, a2
	s8i	a2, a5, 24
	.loc 1 868 0
	j	.L394
.LVL514:
.L401:
	.loc 1 854 0 discriminator 2
	addi.n	a5, a5, 1
.LVL515:
	extui	a5, a5, 0, 8
.LVL516:
	j	.L400
.LVL517:
.L414:
.LBE17:
	movi.n	a5, 1
.L400:
.LVL518:
.LBB18:
	.loc 1 854 0 is_stmt 0 discriminator 1
	sext	a4, a5, 7
	blti	a4, 3, .L402
.LVL519:
.L394:
.LBE18:
	.loc 1 817 0 is_stmt 1 discriminator 2
	addi.n	a3, a3, 1
.LVL520:
	extui	a3, a3, 0, 8
.LVL521:
.L393:
	.loc 1 817 0 is_stmt 0 discriminator 1
	sext	a2, a3, 7
	blti	a2, 5, .L403
	.loc 1 879 0 is_stmt 1
	l32r	a2, .LC62
	l32i.n	a3, a2, 0
.LVL522:
	j	.L404
.LVL523:
.L408:
.LBB19:
	.loc 1 881 0
	sext	a5, a2, 7
	add.n	a4, a3, a5
	l8ui	a4, a4, 124
.LVL524:
	.loc 1 882 0
	bbci	a4, 3, .L405
	extui	a8, a4, 0, 3
	.loc 1 883 0
	blti	a8, 1, .L406
	.loc 1 885 0
	movi.n	a12, 0x30
	mov.n	a11, a5
	mov.n	a10, a3
	call8	netif_ip6_addr_set_state
.LVL525:
	.loc 1 887 0
	l32i	a4, a3, 128
.LVL526:
	beqz.n	a4, .L405
	.loc 1 888 0
	mov.n	a11, a2
	mov.n	a10, a3
	callx8	a4
.LVL527:
	j	.L405
.LVL528:
.L406:
	.loc 1 892 0
	l8ui	a9, a3, 189
	bbci	a9, 0, .L405
	.loc 1 895 0
	bnez.n	a8, .L407
	.loc 1 897 0
	l32r	a11, .LC63
	movi	a6, 0x2ff
	s32i.n	a6, a11, 0
	movi.n	a6, 0
	s32i.n	a6, a11, 4
	l32r	a6, .LC64
	s32i.n	a6, a11, 8
	slli	a8, a5, 2
	add.n	a6, a8, a5
	slli	a9, a6, 2
	add.n	a9, a3, a9
	l32i	a9, a9, 76
	movi	a6, 0xff
	or	a6, a9, a6
	s32i.n	a6, a11, 12
	.loc 1 898 0
	add.n	a8, a8, a5
	slli	a10, a8, 2
	addi	a10, a10, 64
	add.n	a10, a3, a10
	call8	mld6_joingroup
.LVL529:
.L407:
	.loc 1 903 0
	addx4	a8, a5, a5
	slli	a11, a8, 2
	addi	a11, a11, 64
	movi.n	a12, 1
	add.n	a11, a3, a11
	mov.n	a10, a3
	call8	nd6_send_ns
.LVL530:
	.loc 1 905 0
	addi.n	a12, a4, 1
	extui	a12, a12, 0, 8
	mov.n	a11, a5
	mov.n	a10, a3
	call8	netif_ip6_addr_set_state
.LVL531:
.L405:
.LBE19:
	.loc 1 880 0 discriminator 2
	addi.n	a2, a2, 1
.LVL532:
	extui	a2, a2, 0, 8
.LVL533:
	j	.L409
.LVL534:
.L415:
	movi.n	a2, 0
.L409:
.LVL535:
	.loc 1 880 0 is_stmt 0 discriminator 1
	sext	a4, a2, 7
	blti	a4, 3, .L408
	.loc 1 879 0 is_stmt 1 discriminator 2
	l32i.n	a3, a3, 0
.LVL536:
.L404:
	.loc 1 879 0 discriminator 1
	bnez.n	a3, .L415
	.loc 1 915 0
	l32r	a2, .LC62
	l32i.n	a2, a2, 0
.LVL537:
	j	.L410
.L412:
	.loc 1 916 0
	l8ui	a3, a2, 173
	beqz.n	a3, .L411
	.loc 1 916 0 is_stmt 0 discriminator 1
	l8ui	a3, a2, 189
	bbci	a3, 0, .L411
	.loc 1 917 0 is_stmt 1 discriminator 2
	l8ui	a3, a2, 124
	.loc 1 916 0 discriminator 2
	beqz.n	a3, .L411
	.loc 1 918 0
	mov.n	a10, a2
	call8	nd6_send_rs
.LVL538:
	extui	a10, a10, 0, 8
	bnez.n	a10, .L411
	.loc 1 919 0
	l8ui	a3, a2, 173
	addi.n	a3, a3, -1
	s8i	a3, a2, 173
.L411:
	.loc 1 915 0 discriminator 2
	l32i.n	a2, a2, 0
.LVL539:
.L410:
	.loc 1 915 0 discriminator 1
	bnez.n	a2, .L412
	.loc 1 925 0
	retw.n
.LFE22:
	.size	nd6_tmr, .-nd6_tmr
	.section	.text.nd6_clear_destination_cache,"ax",@progbits
	.literal_position
	.literal .LC65, destination_cache
	.align	4
	.global	nd6_clear_destination_cache
	.type	nd6_clear_destination_cache, @function
nd6_clear_destination_cache:
.LFB32:
	.loc 1 1367 0
	entry	sp, 32
.LCFI22:
.LVL540:
	.loc 1 1370 0
	movi.n	a9, 0
	j	.L417
.LVL541:
.L418:
	.loc 1 1371 0 discriminator 3
	slli	a10, a9, 2
	add.n	a10, a10, a9
	slli	a8, a10, 3
	l32r	a10, .LC65
	add.n	a8, a10, a8
	movi.n	a10, 0
	s32i.n	a10, a8, 0
	s32i.n	a10, a8, 4
	s32i.n	a10, a8, 8
	s32i.n	a10, a8, 12
	.loc 1 1370 0 discriminator 3
	addi.n	a9, a9, 1
.LVL542:
.L417:
	.loc 1 1370 0 is_stmt 0 discriminator 1
	movi.n	a8, 9
	bge	a8, a9, .L418
	.loc 1 1373 0 is_stmt 1
	retw.n
.LFE32:
	.size	nd6_clear_destination_cache, .-nd6_clear_destination_cache
	.section	.text.nd6_find_route,"ax",@progbits
	.literal_position
	.literal .LC66, default_router_list
	.align	4
	.global	nd6_find_route
	.type	nd6_find_route, @function
nd6_find_route:
.LFB35:
	.loc 1 1473 0
.LVL543:
	entry	sp, 32
.LCFI23:
	.loc 1 1476 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	nd6_select_router
.LVL544:
	extui	a10, a10, 0, 8
.LVL545:
	.loc 1 1477 0
	sext	a8, a10, 7
	bltz	a8, .L421
	.loc 1 1478 0
	addx2	a10, a8, a8
.LVL546:
	slli	a8, a10, 2
	l32r	a2, .LC66
.LVL547:
	add.n	a8, a2, a8
	l32i.n	a8, a8, 0
	beqz.n	a8, .L422
	.loc 1 1479 0
	l32i.n	a2, a8, 16
	retw.n
.LVL548:
.L421:
	.loc 1 1483 0
	movi.n	a2, 0
.LVL549:
	retw.n
.LVL550:
.L422:
	movi.n	a2, 0
	.loc 1 1484 0
	retw.n
.LFE35:
	.size	nd6_find_route, .-nd6_find_route
	.section	.text.nd6_get_next_hop_addr_or_queue,"ax",@progbits
	.literal_position
	.literal .LC67, neighbor_cache
	.align	4
	.global	nd6_get_next_hop_addr_or_queue
	.type	nd6_get_next_hop_addr_or_queue, @function
nd6_get_next_hop_addr_or_queue:
.LFB44:
	.loc 1 1961 0
.LVL551:
	entry	sp, 32
.LCFI24:
	.loc 1 1965 0
	mov.n	a11, a2
	mov.n	a10, a4
	call8	nd6_get_next_hop_entry
.LVL552:
	extui	a10, a10, 0, 8
.LVL553:
	.loc 1 1966 0
	sext	a2, a10, 7
.LVL554:
	bltz	a2, .L428
	.loc 1 1972 0
	mov.n	a10, a2
.LVL555:
	addx4	a8, a2, a2
	slli	a2, a8, 3
	l32r	a8, .LC67
	add.n	a2, a8, a2
	l8ui	a2, a2, 32
	bnei	a2, 3, .L425
	.loc 1 1974 0
	slli	a8, a10, 2
	add.n	a8, a8, a10
	slli	a2, a8, 3
	l32r	a8, .LC67
	add.n	a2, a8, a2
	movi.n	a8, 4
	s8i	a8, a2, 32
	.loc 1 1975 0
	movi.n	a8, 5
	s32i.n	a8, a2, 36
.L425:
	.loc 1 1978 0
	addx4	a8, a10, a10
	slli	a2, a8, 3
	l32r	a8, .LC67
	add.n	a2, a8, a2
	l8ui	a11, a2, 32
	addi	a9, a11, -2
	movi.n	a12, 1
	movi.n	a2, 0
	mov.n	a4, a2
.LVL556:
	moveqz	a4, a12, a9
	addi	a8, a11, -4
	moveqz	a2, a12, a8
	or	a2, a4, a2
	bnez.n	a2, .L426
	.loc 1 1979 0
	bnei	a11, 5, .L427
.L426:
	.loc 1 1983 0
	addx4	a10, a10, a10
	slli	a2, a10, 3
	addi	a3, a2, 16
.LVL557:
	l32r	a2, .LC67
	add.n	a2, a3, a2
	addi.n	a2, a2, 4
	s32i.n	a2, a5, 0
	.loc 1 1984 0
	movi.n	a2, 0
	retw.n
.LVL558:
.L427:
	.loc 1 1988 0
	movi.n	a2, 0
	s32i.n	a2, a5, 0
	.loc 1 1989 0
	mov.n	a11, a3
	call8	nd6_queue_packet
.LVL559:
	extui	a2, a10, 0, 8
	retw.n
.LVL560:
.L428:
	.loc 1 1968 0
	mov.n	a2, a10
	.loc 1 1990 0
	retw.n
.LFE44:
	.size	nd6_get_next_hop_addr_or_queue, .-nd6_get_next_hop_addr_or_queue
	.section	.text.nd6_get_destination_mtu,"ax",@progbits
	.literal_position
	.literal .LC68, destination_cache
	.align	4
	.global	nd6_get_destination_mtu
	.type	nd6_get_destination_mtu, @function
nd6_get_destination_mtu:
.LFB45:
	.loc 1 2002 0
.LVL561:
	entry	sp, 32
.LCFI25:
	.loc 1 2005 0
	mov.n	a10, a2
	call8	nd6_find_destination_cache_entry
.LVL562:
	extui	a10, a10, 0, 8
.LVL563:
	.loc 1 2006 0
	sext	a2, a10, 7
.LVL564:
	bltz	a2, .L430
	.loc 1 2007 0
	addx4	a10, a2, a2
.LVL565:
	slli	a8, a10, 3
	l32r	a2, .LC68
	add.n	a8, a2, a8
	l16ui	a2, a8, 32
	bnez.n	a2, .L431
.L430:
	.loc 1 2012 0
	beqz.n	a3, .L432
	.loc 1 2013 0
	l16ui	a2, a3, 180
	retw.n
.L432:
	.loc 1 2016 0
	movi	a2, 0x500
.L431:
	.loc 1 2017 0
	retw.n
.LFE45:
	.size	nd6_get_destination_mtu, .-nd6_get_destination_mtu
	.section	.text.nd6_reachability_hint,"ax",@progbits
	.literal_position
	.literal .LC69, nd6_cached_destination_index
	.literal .LC70, destination_cache
	.literal .LC71, nd6_cached_neighbor_index
	.literal .LC72, neighbor_cache
	.literal .LC73, reachable_time
	.align	4
	.global	nd6_reachability_hint
	.type	nd6_reachability_hint, @function
nd6_reachability_hint:
.LFB46:
	.loc 1 2032 0
.LVL566:
	entry	sp, 32
.LCFI26:
	.loc 1 2036 0
	l32i.n	a11, a2, 0
	l32r	a8, .LC69
	l8ui	a8, a8, 0
	addx4	a10, a8, a8
	slli	a9, a10, 3
	l32r	a10, .LC70
	add.n	a9, a10, a9
	l32i.n	a9, a9, 0
	bne	a11, a9, .L434
	.loc 1 2036 0 is_stmt 0 discriminator 1
	l32i.n	a11, a2, 4
	addx4	a10, a8, a8
	slli	a9, a10, 3
	l32r	a10, .LC70
	add.n	a9, a10, a9
	l32i.n	a9, a9, 4
	bne	a11, a9, .L434
	.loc 1 2036 0 discriminator 2
	l32i.n	a11, a2, 8
	addx4	a10, a8, a8
	slli	a9, a10, 3
	l32r	a10, .LC70
	add.n	a9, a10, a9
	l32i.n	a9, a9, 8
	bne	a11, a9, .L434
	.loc 1 2036 0 discriminator 3
	l32i.n	a11, a2, 12
	addx4	a10, a8, a8
	slli	a9, a10, 3
	l32r	a10, .LC70
	add.n	a9, a10, a9
	l32i.n	a9, a9, 12
	bne	a11, a9, .L434
	.loc 1 2037 0 is_stmt 1
	extui	a10, a8, 0, 8
.LVL567:
	j	.L435
.LVL568:
.L434:
	.loc 1 2040 0
	mov.n	a10, a2
	call8	nd6_find_destination_cache_entry
.LVL569:
	extui	a10, a10, 0, 8
.LVL570:
.L435:
	.loc 1 2042 0
	sext	a2, a10, 7
.LVL571:
	bltz	a2, .L433
	.loc 1 2047 0
	mov.n	a10, a2
.LVL572:
	addx4	a2, a2, a2
	slli	a8, a2, 3
	l32r	a2, .LC70
	add.n	a8, a2, a8
	l32i.n	a11, a8, 16
	l32r	a2, .LC71
	l8ui	a8, a2, 0
	addx4	a2, a8, a8
	slli	a9, a2, 3
	l32r	a2, .LC72
	add.n	a9, a2, a9
	l32i.n	a2, a9, 0
	bne	a11, a2, .L437
	.loc 1 2047 0 is_stmt 0 discriminator 1
	addx4	a9, a10, a10
	slli	a2, a9, 3
	l32r	a9, .LC70
	add.n	a2, a9, a2
	l32i.n	a11, a2, 20
	addx4	a9, a8, a8
	slli	a2, a9, 3
	l32r	a9, .LC72
	add.n	a2, a9, a2
	l32i.n	a2, a2, 4
	bne	a11, a2, .L437
	.loc 1 2047 0 discriminator 2
	addx4	a9, a10, a10
	slli	a2, a9, 3
	l32r	a9, .LC70
	add.n	a2, a9, a2
	l32i.n	a11, a2, 24
	addx4	a9, a8, a8
	slli	a2, a9, 3
	l32r	a9, .LC72
	add.n	a2, a9, a2
	l32i.n	a2, a2, 8
	bne	a11, a2, .L437
	.loc 1 2047 0 discriminator 3
	addx4	a9, a10, a10
	slli	a2, a9, 3
	l32r	a9, .LC70
	add.n	a2, a9, a2
	l32i.n	a11, a2, 28
	addx4	a9, a8, a8
	slli	a2, a9, 3
	l32r	a9, .LC72
	add.n	a2, a9, a2
	l32i.n	a2, a2, 12
	bne	a11, a2, .L437
	.loc 1 2048 0 is_stmt 1
	extui	a10, a8, 0, 8
.LVL573:
	j	.L438
.LVL574:
.L437:
	.loc 1 2051 0
	addx4	a10, a10, a10
	slli	a8, a10, 3
	addi	a8, a8, 16
	l32r	a10, .LC70
	add.n	a10, a10, a8
	call8	nd6_find_neighbor_cache_entry
.LVL575:
	extui	a10, a10, 0, 8
.LVL576:
.L438:
	.loc 1 2053 0
	sext	a2, a10, 7
	bltz	a2, .L433
	.loc 1 2058 0
	mov.n	a10, a2
.LVL577:
	addx4	a8, a2, a2
	slli	a2, a8, 3
	l32r	a8, .LC72
	add.n	a2, a8, a2
	l8ui	a2, a2, 32
	bltui	a2, 2, .L433
	.loc 1 2063 0
	mov.n	a9, a8
	slli	a2, a10, 2
	add.n	a11, a2, a10
	slli	a8, a11, 3
	add.n	a8, a9, a8
	movi.n	a11, 2
	s8i	a11, a8, 32
	.loc 1 2064 0
	mov.n	a2, a8
	l32r	a8, .LC73
	l32i.n	a8, a8, 0
	s32i.n	a8, a2, 36
.L433:
	retw.n
.LFE46:
	.size	nd6_reachability_hint, .-nd6_reachability_hint
	.section	.text.nd6_cleanup_netif,"ax",@progbits
	.literal_position
	.literal .LC74, prefix_list
	.literal .LC75, neighbor_cache
	.literal .LC76, default_router_list
	.align	4
	.global	nd6_cleanup_netif
	.type	nd6_cleanup_netif, @function
nd6_cleanup_netif:
.LFB47:
	.loc 1 2075 0
.LVL578:
	entry	sp, 32
.LCFI27:
.LVL579:
	.loc 1 2078 0
	movi.n	a3, 0
	j	.L440
.LVL580:
.L442:
	.loc 1 2079 0
	subx8	a9, a3, a3
	slli	a8, a9, 2
	l32r	a9, .LC74
	add.n	a8, a9, a8
	l32i.n	a8, a8, 16
	bne	a8, a2, .L441
	.loc 1 2080 0
	mov.n	a12, a9
	slli	a8, a3, 3
	sub	a9, a8, a3
	slli	a10, a9, 2
	add.n	a10, a12, a10
	movi.n	a11, 0
	s32i.n	a11, a10, 16
	.loc 1 2081 0
	s8i	a11, a10, 24
.L441:
	.loc 1 2078 0 discriminator 2
	addi.n	a3, a3, 1
.LVL581:
	extui	a3, a3, 0, 8
.LVL582:
.L440:
	.loc 1 2078 0 is_stmt 0 discriminator 1
	bltui	a3, 5, .L442
	movi.n	a3, 0
.LVL583:
	j	.L443
.LVL584:
.L448:
	.loc 1 2085 0 is_stmt 1
	mov.n	a10, a3
	addx4	a9, a3, a3
	slli	a8, a9, 3
	l32r	a9, .LC75
	add.n	a8, a9, a8
	l32i.n	a8, a8, 16
	bne	a2, a8, .L445
	j	.L449
.LVL585:
.L447:
	.loc 1 2087 0
	sext	a13, a12, 7
	addx2	a9, a13, a13
	slli	a8, a9, 2
	l32r	a9, .LC76
	add.n	a8, a9, a8
	l32i.n	a14, a8, 0
	addx4	a11, a10, a10
	slli	a9, a11, 3
	l32r	a8, .LC75
	add.n	a8, a9, a8
	bne	a14, a8, .L446
	.loc 1 2088 0
	l32r	a15, .LC76
	slli	a8, a13, 1
	add.n	a9, a8, a13
	slli	a11, a9, 2
	add.n	a11, a15, a11
	movi.n	a14, 0
	s32i.n	a14, a11, 0
	.loc 1 2089 0
	s8i	a14, a11, 8
.L446:
	.loc 1 2086 0 discriminator 2
	addi.n	a12, a12, 1
.LVL586:
	extui	a12, a12, 0, 8
.LVL587:
	j	.L444
.LVL588:
.L449:
	movi.n	a12, 0
.L444:
.LVL589:
	.loc 1 2086 0 is_stmt 0 discriminator 1
	sext	a8, a12, 7
	blti	a8, 3, .L447
	.loc 1 2092 0 is_stmt 1
	addx4	a10, a10, a10
	slli	a8, a10, 3
	l32r	a9, .LC75
	add.n	a8, a9, a8
	movi.n	a9, 0
	s8i	a9, a8, 33
	.loc 1 2093 0
	sext	a10, a3, 7
	call8	nd6_free_neighbor_cache_entry
.LVL590:
.L445:
	.loc 1 2084 0 discriminator 2
	addi.n	a3, a3, 1
.LVL591:
	extui	a3, a3, 0, 8
.LVL592:
.L443:
	.loc 1 2084 0 is_stmt 0 discriminator 1
	movi.n	a8, 9
	bgeu	a8, a3, .L448
	.loc 1 2096 0 is_stmt 1
	retw.n
.LFE47:
	.size	nd6_cleanup_netif, .-nd6_cleanup_netif
	.section	.text.nd6_adjust_mld_membership,"ax",@progbits
	.literal_position
	.literal .LC77, multicast_address
	.literal .LC78, 16777216
	.align	4
	.global	nd6_adjust_mld_membership
	.type	nd6_adjust_mld_membership, @function
nd6_adjust_mld_membership:
.LFB48:
	.loc 1 2109 0
.LVL593:
	entry	sp, 32
.LCFI28:
	extui	a4, a4, 0, 8
	.loc 1 2112 0
	sext	a3, a3, 7
	add.n	a8, a2, a3
	l8ui	a8, a8, 124
.LVL594:
	.loc 1 2117 0
	movi.n	a11, 1
	movi.n	a9, 0
	mov.n	a12, a9
	movnez	a12, a11, a8
	addi	a8, a8, -8
	mov.n	a5, a9
	movnez	a5, a11, a8
	and	a12, a5, a12
.LVL595:
	.loc 1 2118 0
	mov.n	a10, a9
	movnez	a10, a11, a4
	addi	a8, a4, -8
	mov.n	a4, a9
.LVL596:
	movnez	a4, a11, a8
	and	a4, a4, a10
.LVL597:
	.loc 1 2120 0
	beq	a12, a4, .L450
	.loc 1 2121 0
	l32r	a8, .LC77
.LVL598:
	movi	a9, 0x2ff
	s32i.n	a9, a8, 0
	movi.n	a9, 0
	s32i.n	a9, a8, 4
	l32r	a9, .LC78
	s32i.n	a9, a8, 8
	addx4	a3, a3, a3
.LVL599:
	slli	a9, a3, 2
	add.n	a9, a2, a9
	l32i	a9, a9, 76
	movi	a3, 0xff
	or	a3, a9, a3
	s32i.n	a3, a8, 12
	.loc 1 2123 0
	beqz.n	a4, .L452
	.loc 1 2124 0
	mov.n	a11, a8
	mov.n	a10, a2
	call8	mld6_joingroup_netif
.LVL600:
	retw.n
.LVL601:
.L452:
	.loc 1 2126 0
	l32r	a11, .LC77
	mov.n	a10, a2
	call8	mld6_leavegroup_netif
.LVL602:
.L450:
	retw.n
.LFE48:
	.size	nd6_adjust_mld_membership, .-nd6_adjust_mld_membership
	.section	.bss.last_router$6975,"aw",@nobits
	.type	last_router$6975, @object
	.size	last_router$6975, 1
last_router$6975:
	.zero	1
	.section	.rodata.__func__$6818,"a",@progbits
	.align	4
	.type	__func__$6818, @object
	.size	__func__$6818, 11
__func__$6818:
	.string	"nd6_set_cb"
	.section	.rodata.__func__$7053,"a",@progbits
	.align	4
	.type	__func__$7053, @object
	.size	__func__$7053, 11
__func__$7053:
	.string	"nd6_free_q"
	.section	.bss.nd6_ra_buffer,"aw",@nobits
	.align	4
	.type	nd6_ra_buffer, @object
	.size	nd6_ra_buffer, 32
nd6_ra_buffer:
	.zero	32
	.section	.bss.multicast_address,"aw",@nobits
	.align	4
	.type	multicast_address, @object
	.size	multicast_address, 16
multicast_address:
	.zero	16
	.section	.bss.nd6_cached_destination_index,"aw",@nobits
	.type	nd6_cached_destination_index, @object
	.size	nd6_cached_destination_index, 1
nd6_cached_destination_index:
	.zero	1
	.section	.bss.nd6_cached_neighbor_index,"aw",@nobits
	.type	nd6_cached_neighbor_index, @object
	.size	nd6_cached_neighbor_index, 1
nd6_cached_neighbor_index:
	.zero	1
	.global	retrans_timer
	.section	.data.retrans_timer,"aw",@progbits
	.align	4
	.type	retrans_timer, @object
	.size	retrans_timer, 4
retrans_timer:
	.word	1000
	.global	reachable_time
	.section	.data.reachable_time,"aw",@progbits
	.align	4
	.type	reachable_time, @object
	.size	reachable_time, 4
reachable_time:
	.word	30000
	.comm	default_router_list,36,4
	.comm	prefix_list,140,4
	.comm	destination_cache,400,4
	.comm	neighbor_cache,400,4
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI0-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI1-.LFB30
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
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI3-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI4-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI5-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI6-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI7-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI8-.LFB43
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI9-.LFB25
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI10-.LFB26
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI11-.LFB24
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI12-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI13-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI14-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI15-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI16-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI17-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI18-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI19-.LFB20
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI20-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI21-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI22-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI23-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI24-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI25-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI26-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI27-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI28-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE56:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/err.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/pbuf.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/memp.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/priv/nd6_priv.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/prot/ip6.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/prot/nd6.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/prot/icmp6.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/prot/ip4.h"
	.file 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip.h"
	.file 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/inet_chksum.h"
	.file 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip6.h"
	.file 19 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.file 20 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/def.h"
	.file 21 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/mld6.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x26cb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF319
	.byte	0xc
	.4byte	.LASF320
	.4byte	.LASF321
	.4byte	.Ldebug_ranges0+0x30
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
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x10
	.byte	0x4
	.byte	0x3a
	.4byte	0x13c
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x4
	.byte	0x3b
	.4byte	0x13c
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xf0
	.4byte	0x14c
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0x3f
	.4byte	0x123
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0x39
	.4byte	0xc4
	.uleb128 0xf
	.byte	0x4
	.4byte	0x33
	.byte	0x5
	.byte	0x3d
	.4byte	0x1d5
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0
	.uleb128 0x11
	.4byte	.LASF25
	.sleb128 -1
	.uleb128 0x11
	.4byte	.LASF26
	.sleb128 -2
	.uleb128 0x11
	.4byte	.LASF27
	.sleb128 -3
	.uleb128 0x11
	.4byte	.LASF28
	.sleb128 -4
	.uleb128 0x11
	.4byte	.LASF29
	.sleb128 -5
	.uleb128 0x11
	.4byte	.LASF30
	.sleb128 -6
	.uleb128 0x11
	.4byte	.LASF31
	.sleb128 -7
	.uleb128 0x11
	.4byte	.LASF32
	.sleb128 -8
	.uleb128 0x11
	.4byte	.LASF33
	.sleb128 -9
	.uleb128 0x11
	.4byte	.LASF34
	.sleb128 -10
	.uleb128 0x11
	.4byte	.LASF35
	.sleb128 -11
	.uleb128 0x11
	.4byte	.LASF36
	.sleb128 -12
	.uleb128 0x11
	.4byte	.LASF37
	.sleb128 -13
	.uleb128 0x11
	.4byte	.LASF38
	.sleb128 -14
	.uleb128 0x11
	.4byte	.LASF39
	.sleb128 -15
	.uleb128 0x11
	.4byte	.LASF40
	.sleb128 -16
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x48
	.4byte	0x200
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x65
	.4byte	0x225
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x18
	.byte	0x6
	.byte	0x8e
	.4byte	0x29e
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x6
	.byte	0x90
	.4byte	0x29e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x6
	.byte	0x93
	.4byte	0xa2
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x6
	.byte	0x9c
	.4byte	0xe5
	.byte	0x8
	.uleb128 0x12
	.string	"len"
	.byte	0x6
	.byte	0x9f
	.4byte	0xe5
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x6
	.byte	0xa2
	.4byte	0xcf
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x6
	.byte	0xa5
	.4byte	0xcf
	.byte	0xd
	.uleb128 0x12
	.string	"ref"
	.byte	0x6
	.byte	0xac
	.4byte	0xe5
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x6
	.byte	0xaf
	.4byte	0x43c
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x6
	.byte	0xb0
	.4byte	0xa2
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x225
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0xf0
	.byte	0x7
	.byte	0xeb
	.4byte	0x43c
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x7
	.byte	0xed
	.4byte	0x43c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x7
	.byte	0xf1
	.4byte	0x4aa
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x7
	.byte	0xf2
	.4byte	0x4aa
	.byte	0x18
	.uleb128 0x12
	.string	"gw"
	.byte	0x7
	.byte	0xf3
	.4byte	0x4aa
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x7
	.byte	0xf7
	.4byte	0x68d
	.byte	0x40
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x7
	.byte	0xfa
	.4byte	0x69d
	.byte	0x7c
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x7
	.byte	0xfc
	.4byte	0x6bd
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x102
	.4byte	0x57a
	.byte	0x84
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x108
	.4byte	0x59f
	.byte	0x88
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x10d
	.4byte	0x609
	.byte	0x8c
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x113
	.4byte	0x5d4
	.byte	0x90
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x125
	.4byte	0xa2
	.byte	0x94
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x127
	.4byte	0x113
	.byte	0x98
	.uleb128 0x13
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x12b
	.4byte	0x6c8
	.byte	0xa4
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x12c
	.4byte	0x682
	.byte	0xa8
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x131
	.4byte	0xcf
	.byte	0xac
	.uleb128 0x13
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x135
	.4byte	0xcf
	.byte	0xad
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x139
	.4byte	0xb9
	.byte	0xb0
	.uleb128 0x14
	.string	"mtu"
	.byte	0x7
	.2byte	0x13f
	.4byte	0xe5
	.byte	0xb4
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x141
	.4byte	0xcf
	.byte	0xb6
	.uleb128 0x13
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x143
	.4byte	0x6ce
	.byte	0xb7
	.uleb128 0x13
	.4byte	.LASF57
	.byte	0x7
	.2byte	0x145
	.4byte	0xcf
	.byte	0xbd
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x147
	.4byte	0x6de
	.byte	0xbe
	.uleb128 0x14
	.string	"num"
	.byte	0x7
	.2byte	0x149
	.4byte	0xcf
	.byte	0xc0
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x157
	.4byte	0x62e
	.byte	0xc4
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x15c
	.4byte	0x658
	.byte	0xc8
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x163
	.4byte	0x29e
	.byte	0xcc
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x164
	.4byte	0x29e
	.byte	0xd0
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x166
	.4byte	0xe5
	.byte	0xd4
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x16b
	.4byte	0xfb
	.byte	0xd8
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x16c
	.4byte	0x4aa
	.byte	0xdc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2a4
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0x4
	.byte	0x8
	.byte	0x33
	.4byte	0x45b
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x8
	.byte	0x34
	.4byte	0xf0
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0x8
	.byte	0x39
	.4byte	0x442
	.uleb128 0x15
	.byte	0x10
	.byte	0x9
	.byte	0x46
	.4byte	0x485
	.uleb128 0x16
	.string	"ip6"
	.byte	0x9
	.byte	0x47
	.4byte	0x14c
	.uleb128 0x16
	.string	"ip4"
	.byte	0x9
	.byte	0x48
	.4byte	0x45b
	.byte	0
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x14
	.byte	0x9
	.byte	0x45
	.4byte	0x4aa
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0x9
	.byte	0x49
	.4byte	0x466
	.byte	0
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x9
	.byte	0x4b
	.4byte	0xcf
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF89
	.byte	0x9
	.byte	0x4c
	.4byte	0x485
	.uleb128 0xf
	.byte	0x4
	.4byte	0x25
	.byte	0xa
	.byte	0x34
	.4byte	0x534
	.uleb128 0x10
	.4byte	.LASF90
	.byte	0
	.uleb128 0x10
	.4byte	.LASF91
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF92
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF93
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF95
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF97
	.byte	0x7
	.uleb128 0x10
	.4byte	.LASF98
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0x9
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0xa
	.uleb128 0x10
	.4byte	.LASF101
	.byte	0xb
	.uleb128 0x10
	.4byte	.LASF102
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF103
	.byte	0xd
	.uleb128 0x10
	.4byte	.LASF104
	.byte	0xe
	.uleb128 0x10
	.4byte	.LASF105
	.byte	0xf
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF107
	.byte	0x11
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0x12
	.byte	0
	.uleb128 0x17
	.4byte	.LASF113
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x70
	.4byte	0x55d
	.uleb128 0x10
	.4byte	.LASF109
	.byte	0
	.uleb128 0x10
	.4byte	.LASF110
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.4byte	.LASF114
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x94
	.4byte	0x57a
	.uleb128 0x10
	.4byte	.LASF115
	.byte	0
	.uleb128 0x10
	.4byte	.LASF116
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF117
	.byte	0x7
	.byte	0xa7
	.4byte	0x585
	.uleb128 0x6
	.byte	0x4
	.4byte	0x58b
	.uleb128 0x18
	.4byte	0x157
	.4byte	0x59f
	.uleb128 0xa
	.4byte	0x29e
	.uleb128 0xa
	.4byte	0x43c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF118
	.byte	0x7
	.byte	0xb2
	.4byte	0x5aa
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5b0
	.uleb128 0x18
	.4byte	0x157
	.4byte	0x5c9
	.uleb128 0xa
	.4byte	0x43c
	.uleb128 0xa
	.4byte	0x29e
	.uleb128 0xa
	.4byte	0x5c9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5cf
	.uleb128 0x8
	.4byte	0x45b
	.uleb128 0x4
	.4byte	.LASF119
	.byte	0x7
	.byte	0xbf
	.4byte	0x5df
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5e5
	.uleb128 0x18
	.4byte	0x157
	.4byte	0x5fe
	.uleb128 0xa
	.4byte	0x43c
	.uleb128 0xa
	.4byte	0x29e
	.uleb128 0xa
	.4byte	0x5fe
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x604
	.uleb128 0x8
	.4byte	0x14c
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0x7
	.byte	0xc9
	.4byte	0x614
	.uleb128 0x6
	.byte	0x4
	.4byte	0x61a
	.uleb128 0x18
	.4byte	0x157
	.4byte	0x62e
	.uleb128 0xa
	.4byte	0x43c
	.uleb128 0xa
	.4byte	0x29e
	.byte	0
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0x7
	.byte	0xce
	.4byte	0x639
	.uleb128 0x6
	.byte	0x4
	.4byte	0x63f
	.uleb128 0x18
	.4byte	0x157
	.4byte	0x658
	.uleb128 0xa
	.4byte	0x43c
	.uleb128 0xa
	.4byte	0x5c9
	.uleb128 0xa
	.4byte	0x55d
	.byte	0
	.uleb128 0x4
	.4byte	.LASF122
	.byte	0x7
	.byte	0xd3
	.4byte	0x663
	.uleb128 0x6
	.byte	0x4
	.4byte	0x669
	.uleb128 0x18
	.4byte	0x157
	.4byte	0x682
	.uleb128 0xa
	.4byte	0x43c
	.uleb128 0xa
	.4byte	0x5fe
	.uleb128 0xa
	.4byte	0x55d
	.byte	0
	.uleb128 0x4
	.4byte	.LASF123
	.byte	0x7
	.byte	0xe5
	.4byte	0xab
	.uleb128 0xb
	.4byte	0x4aa
	.4byte	0x69d
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0xcf
	.4byte	0x6ad
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x6bd
	.uleb128 0xa
	.4byte	0x43c
	.uleb128 0xa
	.4byte	0xcf
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6ad
	.uleb128 0x19
	.4byte	.LASF322
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6c3
	.uleb128 0xb
	.4byte	0xcf
	.4byte	0x6de
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0x6ee
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF124
	.byte	0x8
	.byte	0xb
	.byte	0x40
	.4byte	0x711
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0xb
	.byte	0x41
	.4byte	0x711
	.byte	0
	.uleb128 0x12
	.string	"p"
	.byte	0xb
	.byte	0x42
	.4byte	0x29e
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6ee
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.byte	0x55
	.4byte	0x74c
	.uleb128 0x1a
	.4byte	.LASF125
	.byte	0xb
	.byte	0x56
	.4byte	0xf0
	.uleb128 0x1a
	.4byte	.LASF126
	.byte	0xb
	.byte	0x57
	.4byte	0xf0
	.uleb128 0x1a
	.4byte	.LASF127
	.byte	0xb
	.byte	0x58
	.4byte	0xf0
	.uleb128 0x1a
	.4byte	.LASF128
	.byte	0xb
	.byte	0x59
	.4byte	0xf0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF129
	.byte	0x28
	.byte	0xb
	.byte	0x47
	.4byte	0x7ab
	.uleb128 0xe
	.4byte	.LASF130
	.byte	0xb
	.byte	0x48
	.4byte	0x14c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0xb
	.byte	0x49
	.4byte	0x43c
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF131
	.byte	0xb
	.byte	0x4a
	.4byte	0x6ce
	.byte	0x14
	.uleb128 0x12
	.string	"q"
	.byte	0xb
	.byte	0x4e
	.4byte	0x711
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0xb
	.byte	0x53
	.4byte	0xcf
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF132
	.byte	0xb
	.byte	0x54
	.4byte	0xcf
	.byte	0x21
	.uleb128 0xe
	.4byte	.LASF133
	.byte	0xb
	.byte	0x5a
	.4byte	0x717
	.byte	0x24
	.byte	0
	.uleb128 0xd
	.4byte	.LASF134
	.byte	0x28
	.byte	0xb
	.byte	0x5d
	.4byte	0x7e8
	.uleb128 0xe
	.4byte	.LASF135
	.byte	0xb
	.byte	0x5e
	.4byte	0x14c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF136
	.byte	0xb
	.byte	0x5f
	.4byte	0x14c
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF137
	.byte	0xb
	.byte	0x60
	.4byte	0xe5
	.byte	0x20
	.uleb128 0x12
	.string	"age"
	.byte	0xb
	.byte	0x61
	.4byte	0xf0
	.byte	0x24
	.byte	0
	.uleb128 0xd
	.4byte	.LASF138
	.byte	0x1c
	.byte	0xb
	.byte	0x64
	.4byte	0x825
	.uleb128 0xe
	.4byte	.LASF139
	.byte	0xb
	.byte	0x65
	.4byte	0x14c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0xb
	.byte	0x66
	.4byte	0x43c
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF140
	.byte	0xb
	.byte	0x67
	.4byte	0xf0
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0xb
	.byte	0x69
	.4byte	0xcf
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF141
	.byte	0xc
	.byte	0xb
	.byte	0x70
	.4byte	0x856
	.uleb128 0xe
	.4byte	.LASF142
	.byte	0xb
	.byte	0x71
	.4byte	0x856
	.byte	0
	.uleb128 0xe
	.4byte	.LASF140
	.byte	0xb
	.byte	0x72
	.4byte	0xf0
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0xb
	.byte	0x73
	.4byte	0xcf
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x74c
	.uleb128 0x17
	.4byte	.LASF143
	.byte	0x4
	.4byte	0x25
	.byte	0xb
	.byte	0x76
	.4byte	0x891
	.uleb128 0x10
	.4byte	.LASF144
	.byte	0
	.uleb128 0x10
	.4byte	.LASF145
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF146
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF147
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF148
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF149
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF150
	.byte	0x10
	.byte	0xc
	.byte	0x35
	.4byte	0x8aa
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0xc
	.byte	0x36
	.4byte	0x13c
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF151
	.byte	0xc
	.byte	0x3c
	.4byte	0x891
	.uleb128 0xd
	.4byte	.LASF152
	.byte	0x28
	.byte	0xc
	.byte	0x50
	.4byte	0x90a
	.uleb128 0xe
	.4byte	.LASF153
	.byte	0xc
	.byte	0x52
	.4byte	0xf0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF154
	.byte	0xc
	.byte	0x54
	.4byte	0xe5
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF155
	.byte	0xc
	.byte	0x56
	.4byte	0xcf
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF156
	.byte	0xc
	.byte	0x58
	.4byte	0xcf
	.byte	0x7
	.uleb128 0x12
	.string	"src"
	.byte	0xc
	.byte	0x5a
	.4byte	0x8aa
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF157
	.byte	0xc
	.byte	0x5b
	.4byte	0x8aa
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF158
	.byte	0x18
	.byte	0xd
	.byte	0x35
	.4byte	0x953
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0xd
	.byte	0x36
	.4byte	0xcf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF159
	.byte	0xd
	.byte	0x37
	.4byte	0xcf
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF160
	.byte	0xd
	.byte	0x38
	.4byte	0xe5
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF161
	.byte	0xd
	.byte	0x39
	.4byte	0xf0
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF162
	.byte	0xd
	.byte	0x3a
	.4byte	0x8aa
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF163
	.byte	0x18
	.byte	0xd
	.byte	0x47
	.4byte	0x9a8
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0xd
	.byte	0x48
	.4byte	0xcf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF159
	.byte	0xd
	.byte	0x49
	.4byte	0xcf
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF160
	.byte	0xd
	.byte	0x4a
	.4byte	0xe5
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0xd
	.byte	0x4b
	.4byte	0xcf
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF161
	.byte	0xd
	.byte	0x4c
	.4byte	0x69d
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF162
	.byte	0xd
	.byte	0x4d
	.4byte	0x8aa
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF164
	.byte	0x8
	.byte	0xd
	.byte	0x5d
	.4byte	0x9e5
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0xd
	.byte	0x5e
	.4byte	0xcf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF159
	.byte	0xd
	.byte	0x5f
	.4byte	0xcf
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF160
	.byte	0xd
	.byte	0x60
	.4byte	0xe5
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF161
	.byte	0xd
	.byte	0x61
	.4byte	0xf0
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF165
	.byte	0x10
	.byte	0xd
	.byte	0x76
	.4byte	0xa52
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0xd
	.byte	0x77
	.4byte	0xcf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF159
	.byte	0xd
	.byte	0x78
	.4byte	0xcf
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF160
	.byte	0xd
	.byte	0x79
	.4byte	0xe5
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF166
	.byte	0xd
	.byte	0x7a
	.4byte	0xcf
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0xd
	.byte	0x7b
	.4byte	0xcf
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF167
	.byte	0xd
	.byte	0x7c
	.4byte	0xe5
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF125
	.byte	0xd
	.byte	0x7d
	.4byte	0xf0
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF168
	.byte	0xd
	.byte	0x7e
	.4byte	0xf0
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF169
	.byte	0x28
	.byte	0xd
	.byte	0x8b
	.4byte	0xaa7
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0xd
	.byte	0x8c
	.4byte	0xcf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF159
	.byte	0xd
	.byte	0x8d
	.4byte	0xcf
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF160
	.byte	0xd
	.byte	0x8e
	.4byte	0xe5
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF161
	.byte	0xd
	.byte	0x8f
	.4byte	0xf0
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF162
	.byte	0xd
	.byte	0x90
	.4byte	0x8aa
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF170
	.byte	0xd
	.byte	0x91
	.4byte	0x8aa
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.4byte	.LASF171
	.byte	0x8
	.byte	0xd
	.byte	0xa0
	.4byte	0xad8
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0xd
	.byte	0xa1
	.4byte	0xcf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF172
	.byte	0xd
	.byte	0xa2
	.4byte	0xcf
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0xd
	.byte	0xa3
	.4byte	0x6ce
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF173
	.byte	0x20
	.byte	0xd
	.byte	0xb4
	.4byte	0xb51
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0xd
	.byte	0xb5
	.4byte	0xcf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF172
	.byte	0xd
	.byte	0xb6
	.4byte	0xcf
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF174
	.byte	0xd
	.byte	0xb7
	.4byte	0xcf
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0xd
	.byte	0xb8
	.4byte	0xcf
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF175
	.byte	0xd
	.byte	0xb9
	.4byte	0xf0
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF176
	.byte	0xd
	.byte	0xba
	.4byte	0xf0
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF177
	.byte	0xd
	.byte	0xbb
	.4byte	0x69d
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF178
	.byte	0xd
	.byte	0xbc
	.4byte	0xcf
	.byte	0xf
	.uleb128 0xe
	.4byte	.LASF139
	.byte	0xd
	.byte	0xbd
	.4byte	0x8aa
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.4byte	.LASF179
	.byte	0x8
	.byte	0xd
	.byte	0xdc
	.4byte	0xb8e
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0xd
	.byte	0xdd
	.4byte	0xcf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF172
	.byte	0xd
	.byte	0xde
	.4byte	0xcf
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF161
	.byte	0xd
	.byte	0xdf
	.4byte	0xe5
	.byte	0x2
	.uleb128 0x12
	.string	"mtu"
	.byte	0xd
	.byte	0xe0
	.4byte	0xf0
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.4byte	.LASF180
	.byte	0x4
	.4byte	0x25
	.byte	0xe
	.byte	0x2f
	.4byte	0xc29
	.uleb128 0x10
	.4byte	.LASF181
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF182
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF183
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF184
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF185
	.byte	0x64
	.uleb128 0x10
	.4byte	.LASF186
	.byte	0x65
	.uleb128 0x10
	.4byte	.LASF187
	.byte	0x7f
	.uleb128 0x10
	.4byte	.LASF188
	.byte	0x80
	.uleb128 0x10
	.4byte	.LASF189
	.byte	0x81
	.uleb128 0x10
	.4byte	.LASF190
	.byte	0x82
	.uleb128 0x10
	.4byte	.LASF191
	.byte	0x83
	.uleb128 0x10
	.4byte	.LASF192
	.byte	0x84
	.uleb128 0x10
	.4byte	.LASF193
	.byte	0x85
	.uleb128 0x10
	.4byte	.LASF194
	.byte	0x86
	.uleb128 0x10
	.4byte	.LASF195
	.byte	0x87
	.uleb128 0x10
	.4byte	.LASF196
	.byte	0x88
	.uleb128 0x10
	.4byte	.LASF197
	.byte	0x89
	.uleb128 0x10
	.4byte	.LASF198
	.byte	0x97
	.uleb128 0x10
	.4byte	.LASF199
	.byte	0x98
	.uleb128 0x10
	.4byte	.LASF200
	.byte	0x99
	.uleb128 0x10
	.4byte	.LASF201
	.byte	0xc8
	.uleb128 0x10
	.4byte	.LASF202
	.byte	0xc9
	.uleb128 0x10
	.4byte	.LASF203
	.byte	0xff
	.byte	0
	.uleb128 0xd
	.4byte	.LASF204
	.byte	0x8
	.byte	0xe
	.byte	0x8a
	.4byte	0xc66
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0xe
	.byte	0x8b
	.4byte	0xcf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF159
	.byte	0xe
	.byte	0x8c
	.4byte	0xcf
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF160
	.byte	0xe
	.byte	0x8d
	.4byte	0xe5
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF205
	.byte	0xe
	.byte	0x8e
	.4byte	0xf0
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF206
	.byte	0x4
	.byte	0xf
	.byte	0x35
	.4byte	0xc7f
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0xf
	.byte	0x36
	.4byte	0xf0
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF207
	.byte	0xf
	.byte	0x3d
	.4byte	0xc66
	.uleb128 0xd
	.4byte	.LASF208
	.byte	0x14
	.byte	0xf
	.byte	0x47
	.4byte	0xd0f
	.uleb128 0xe
	.4byte	.LASF209
	.byte	0xf
	.byte	0x49
	.4byte	0xcf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF210
	.byte	0xf
	.byte	0x4b
	.4byte	0xcf
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF211
	.byte	0xf
	.byte	0x4d
	.4byte	0xe5
	.byte	0x2
	.uleb128 0x12
	.string	"_id"
	.byte	0xf
	.byte	0x4f
	.4byte	0xe5
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF212
	.byte	0xf
	.byte	0x51
	.4byte	0xe5
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF213
	.byte	0xf
	.byte	0x57
	.4byte	0xcf
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF214
	.byte	0xf
	.byte	0x59
	.4byte	0xcf
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF215
	.byte	0xf
	.byte	0x5b
	.4byte	0xe5
	.byte	0xa
	.uleb128 0x12
	.string	"src"
	.byte	0xf
	.byte	0x5d
	.4byte	0xc7f
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF157
	.byte	0xf
	.byte	0x5e
	.4byte	0xc7f
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.4byte	.LASF216
	.byte	0x3c
	.byte	0x10
	.byte	0x69
	.4byte	0xd70
	.uleb128 0xe
	.4byte	.LASF217
	.byte	0x10
	.byte	0x6c
	.4byte	0x43c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF218
	.byte	0x10
	.byte	0x6e
	.4byte	0x43c
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF219
	.byte	0x10
	.byte	0x71
	.4byte	0xd70
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF220
	.byte	0x10
	.byte	0x75
	.4byte	0xd76
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF221
	.byte	0x10
	.byte	0x78
	.4byte	0xe5
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF222
	.byte	0x10
	.byte	0x7a
	.4byte	0x4aa
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF223
	.byte	0x10
	.byte	0x7c
	.4byte	0x4aa
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc8a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8b5
	.uleb128 0x8
	.4byte	0x4aa
	.uleb128 0x1b
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x485
	.4byte	0xc4
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdba
	.uleb128 0x1c
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x485
	.4byte	0x5fe
	.4byte	.LLST0
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x487
	.4byte	0xc4
	.4byte	.LLST1
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x524
	.4byte	0xc4
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf3
	.uleb128 0x1c
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x524
	.4byte	0x5fe
	.4byte	.LLST2
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x526
	.4byte	0xc4
	.4byte	.LLST3
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x537
	.4byte	0xc4
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe36
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x539
	.4byte	0xc4
	.4byte	.LLST4
	.uleb128 0x1d
	.string	"j"
	.byte	0x1
	.2byte	0x539
	.4byte	0xc4
	.4byte	.LLST5
	.uleb128 0x1e
	.string	"age"
	.byte	0x1
	.2byte	0x53a
	.4byte	0xf0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x566
	.4byte	0xc4
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe7d
	.uleb128 0x1c
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x566
	.4byte	0x5fe
	.4byte	.LLST6
	.uleb128 0x1f
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x566
	.4byte	0x43c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x568
	.4byte	0xc4
	.4byte	.LLST7
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x583
	.4byte	0xc4
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xed6
	.uleb128 0x1c
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x583
	.4byte	0x5fe
	.4byte	.LLST8
	.uleb128 0x1f
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x583
	.4byte	0x43c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x585
	.4byte	0xc4
	.4byte	.LLST9
	.uleb128 0x20
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x589
	.4byte	0xc4
	.uleb128 0x5
	.byte	0x3
	.4byte	last_router$6975
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x5d6
	.4byte	0xc4
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf1d
	.uleb128 0x1c
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x5d6
	.4byte	0x5fe
	.4byte	.LLST10
	.uleb128 0x1f
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x5d6
	.4byte	0x43c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x5d8
	.4byte	0xc4
	.4byte	.LLST11
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x62c
	.4byte	0xc4
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf64
	.uleb128 0x1c
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x62c
	.4byte	0xf64
	.4byte	.LLST12
	.uleb128 0x1f
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x62c
	.4byte	0x43c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x62e
	.4byte	0xc4
	.4byte	.LLST13
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x14c
	.uleb128 0x1b
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x644
	.4byte	0xc4
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfb3
	.uleb128 0x1c
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x644
	.4byte	0xf64
	.4byte	.LLST14
	.uleb128 0x1c
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x644
	.4byte	0x43c
	.4byte	.LLST15
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x646
	.4byte	0xc4
	.4byte	.LLST16
	.byte	0
	.uleb128 0x21
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x765
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1031
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.2byte	0x765
	.4byte	0xc4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x767
	.4byte	0xd76
	.4byte	.LLST17
	.uleb128 0x20
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x768
	.4byte	0x14c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.string	"q"
	.byte	0x1
	.2byte	0x76a
	.4byte	0x711
	.4byte	.LLST18
	.uleb128 0x24
	.4byte	.LVL87
	.4byte	0x1012
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x26
	.4byte	.LVL88
	.4byte	0x2608
	.uleb128 0x27
	.4byte	.LVL89
	.4byte	0x2613
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x3f7
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x117d
	.uleb128 0x1f
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x3f7
	.4byte	0x43c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x3f7
	.4byte	0x5fe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x3f7
	.4byte	0xcf
	.4byte	.LLST19
	.uleb128 0x23
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x3f9
	.4byte	0x117d
	.4byte	.LLST20
	.uleb128 0x23
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x3fa
	.4byte	0x1183
	.4byte	.LLST21
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.2byte	0x3fb
	.4byte	0x29e
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x20
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x3fc
	.4byte	0x5fe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x3fd
	.4byte	0x5fe
	.4byte	.LLST22
	.uleb128 0x23
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x3fe
	.4byte	0xe5
	.4byte	.LLST23
	.uleb128 0x29
	.4byte	.LVL93
	.4byte	0x261e
	.4byte	0x10f3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xa
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x18
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL96
	.4byte	0x2629
	.4byte	0x110e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 26
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 183
	.byte	0
	.uleb128 0x29
	.4byte	.LVL106
	.4byte	0x2632
	.4byte	0x1134
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x3a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL107
	.4byte	0x263d
	.4byte	0x116c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
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
	.byte	0x8
	.byte	0xff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x8
	.byte	0x3a
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL108
	.4byte	0x2608
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x953
	.uleb128 0x6
	.byte	0x4
	.4byte	0xaa7
	.uleb128 0x1b
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x43e
	.4byte	0x157
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12b9
	.uleb128 0x1c
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x43e
	.4byte	0x43c
	.4byte	.LLST24
	.uleb128 0x23
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x440
	.4byte	0x12b9
	.4byte	.LLST25
	.uleb128 0x23
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x441
	.4byte	0x1183
	.4byte	.LLST26
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.2byte	0x442
	.4byte	0x29e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x443
	.4byte	0x5fe
	.4byte	.LLST27
	.uleb128 0x1d
	.string	"err"
	.byte	0x1
	.2byte	0x444
	.4byte	0x157
	.4byte	.LLST28
	.uleb128 0x23
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x445
	.4byte	0xe5
	.4byte	.LLST29
	.uleb128 0x29
	.4byte	.LVL117
	.4byte	0x261e
	.4byte	0x1235
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xa
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x8
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL122
	.4byte	0x2629
	.4byte	0x124a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 183
	.byte	0
	.uleb128 0x29
	.4byte	.LVL123
	.4byte	0x2632
	.4byte	0x1273
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x3a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	multicast_address
	.byte	0
	.uleb128 0x29
	.4byte	.LVL125
	.4byte	0x263d
	.4byte	0x12a8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	multicast_address
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x8
	.byte	0x3a
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL128
	.4byte	0x2608
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
	.4byte	0x9a8
	.uleb128 0x21
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x3b2
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13fd
	.uleb128 0x1f
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x3b2
	.4byte	0x43c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x3b2
	.4byte	0x5fe
	.4byte	.LLST30
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x3b2
	.4byte	0xcf
	.4byte	.LLST31
	.uleb128 0x23
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x3b4
	.4byte	0x13fd
	.4byte	.LLST32
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.2byte	0x3b5
	.4byte	0x29e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x3b6
	.4byte	0x5fe
	.4byte	.LLST33
	.uleb128 0x23
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x3b7
	.4byte	0xe5
	.4byte	.LLST34
	.uleb128 0x2a
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x136e
	.uleb128 0x23
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x3d5
	.4byte	0x1183
	.4byte	.LLST35
	.uleb128 0x27
	.4byte	.LVL142
	.4byte	0x2629
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 183
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL137
	.4byte	0x261e
	.4byte	0x1394
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xa
	.byte	0x77
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x18
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL147
	.4byte	0x2632
	.4byte	0x13ba
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x3a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL149
	.4byte	0x263d
	.4byte	0x13ec
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x8
	.byte	0x3a
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL150
	.4byte	0x2608
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
	.4byte	0x90a
	.uleb128 0x21
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x3a5
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x144c
	.uleb128 0x1f
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x3a5
	.4byte	0x856
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x3a5
	.4byte	0xcf
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.4byte	.LVL152
	.4byte	0x12bf
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
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x750
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x153c
	.uleb128 0x2b
	.string	"q"
	.byte	0x1
	.2byte	0x750
	.4byte	0x711
	.4byte	.LLST36
	.uleb128 0x1d
	.string	"r"
	.byte	0x1
	.2byte	0x752
	.4byte	0x711
	.4byte	.LLST37
	.uleb128 0x2c
	.4byte	.LASF251
	.4byte	0x154c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7053
	.uleb128 0x29
	.4byte	.LVL154
	.4byte	0x2648
	.4byte	0x14bd
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x753
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7053
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.uleb128 0x29
	.4byte	.LVL155
	.4byte	0x2648
	.4byte	0x14ed
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x754
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7053
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.uleb128 0x29
	.4byte	.LVL157
	.4byte	0x2648
	.4byte	0x151d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x758
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7053
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.uleb128 0x26
	.4byte	.LVL158
	.4byte	0x2608
	.uleb128 0x27
	.4byte	.LVL159
	.4byte	0x2613
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0x154c
	.uleb128 0xc
	.4byte	0x9b
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.4byte	0x153c
	.uleb128 0x21
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x505
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x157f
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x505
	.4byte	0xc4
	.4byte	.LLST38
	.uleb128 0x26
	.4byte	.LVL163
	.4byte	0x144c
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x49a
	.4byte	0xc4
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1652
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x49c
	.4byte	0xc4
	.4byte	.LLST39
	.uleb128 0x1d
	.string	"j"
	.byte	0x1
	.2byte	0x49d
	.4byte	0xc4
	.4byte	.LLST40
	.uleb128 0x23
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x49e
	.4byte	0xf0
	.4byte	.LLST41
	.uleb128 0x29
	.4byte	.LVL170
	.4byte	0x1551
	.4byte	0x15dd
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0
	.uleb128 0x29
	.4byte	.LVL175
	.4byte	0x1551
	.4byte	0x15f5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0
	.uleb128 0x29
	.4byte	.LVL180
	.4byte	0x1551
	.4byte	0x160d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0
	.uleb128 0x29
	.4byte	.LVL189
	.4byte	0x1551
	.4byte	0x1625
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0
	.uleb128 0x29
	.4byte	.LVL198
	.4byte	0x1551
	.4byte	0x163d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0
	.uleb128 0x27
	.4byte	.LVL209
	.4byte	0x1551
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x5ef
	.4byte	0xc4
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16f5
	.uleb128 0x1c
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x5ef
	.4byte	0x5fe
	.4byte	.LLST42
	.uleb128 0x1c
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x5ef
	.4byte	0x43c
	.4byte	.LLST43
	.uleb128 0x23
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x5f1
	.4byte	0xc4
	.4byte	.LLST44
	.uleb128 0x23
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x5f2
	.4byte	0xc4
	.4byte	.LLST45
	.uleb128 0x23
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x5f3
	.4byte	0xc4
	.4byte	.LLST46
	.uleb128 0x29
	.4byte	.LVL213
	.4byte	0xd81
	.4byte	0x16d0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL215
	.4byte	0x157f
	.uleb128 0x27
	.4byte	.LVL222
	.4byte	0x1403
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	neighbor_cache
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x667
	.4byte	0xc4
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17be
	.uleb128 0x1c
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x667
	.4byte	0x5fe
	.4byte	.LLST47
	.uleb128 0x1c
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x667
	.4byte	0x43c
	.4byte	.LLST48
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x66c
	.4byte	0xc4
	.4byte	.LLST49
	.uleb128 0x29
	.4byte	.LVL237
	.4byte	0xdba
	.4byte	0x1751
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL241
	.4byte	0xdf3
	.uleb128 0x29
	.4byte	.LVL244
	.4byte	0xe36
	.4byte	0x1774
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
	.uleb128 0x29
	.4byte	.LVL247
	.4byte	0xe7d
	.4byte	0x178e
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
	.uleb128 0x26
	.4byte	.LVL253
	.4byte	0xd81
	.uleb128 0x26
	.4byte	.LVL255
	.4byte	0x157f
	.uleb128 0x27
	.4byte	.LVL262
	.4byte	0x1403
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xa
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	neighbor_cache
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x6e1
	.4byte	0x157
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18fb
	.uleb128 0x1c
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x6e1
	.4byte	0xc4
	.4byte	.LLST50
	.uleb128 0x2b
	.string	"q"
	.byte	0x1
	.2byte	0x6e1
	.4byte	0x29e
	.4byte	.LLST51
	.uleb128 0x2d
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x6e3
	.4byte	0x157
	.sleb128 -1
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.2byte	0x6e4
	.4byte	0x29e
	.4byte	.LLST52
	.uleb128 0x23
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x6e5
	.4byte	0x33
	.4byte	.LLST53
	.uleb128 0x23
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x6e7
	.4byte	0x711
	.4byte	.LLST54
	.uleb128 0x1d
	.string	"r"
	.byte	0x1
	.2byte	0x6e7
	.4byte	0x711
	.4byte	.LLST55
	.uleb128 0x29
	.4byte	.LVL270
	.4byte	0x261e
	.4byte	0x1857
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL274
	.4byte	0x144c
	.uleb128 0x29
	.4byte	.LVL275
	.4byte	0x261e
	.4byte	0x1879
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL277
	.4byte	0x2653
	.4byte	0x1893
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
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL278
	.4byte	0x2608
	.4byte	0x18a7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL280
	.4byte	0x265e
	.4byte	0x18bb
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL282
	.4byte	0x2669
	.4byte	0x18ce
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x26
	.4byte	.LVL286
	.4byte	0x144c
	.uleb128 0x29
	.4byte	.LVL287
	.4byte	0x2669
	.4byte	0x18ea
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x27
	.4byte	.LVL297
	.4byte	0x2608
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF274
	.byte	0x1
	.byte	0x86
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fa4
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.byte	0x86
	.4byte	0x29e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.string	"inp"
	.byte	0x1
	.byte	0x86
	.4byte	0x43c
	.4byte	.LLST56
	.uleb128 0x31
	.4byte	.LASF264
	.byte	0x1
	.byte	0x88
	.4byte	0xcf
	.4byte	.LLST57
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.byte	0x89
	.4byte	0xc4
	.4byte	.LLST58
	.uleb128 0x2a
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x1ad4
	.uleb128 0x31
	.4byte	.LASF239
	.byte	0x1
	.byte	0x91
	.4byte	0x117d
	.4byte	.LLST59
	.uleb128 0x31
	.4byte	.LASF240
	.byte	0x1
	.byte	0x92
	.4byte	0x1183
	.4byte	.LLST60
	.uleb128 0x2a
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x1a35
	.uleb128 0x33
	.4byte	.LASF162
	.byte	0x1
	.byte	0xa1
	.4byte	0x14c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.4byte	.LVL307
	.4byte	0x2674
	.4byte	0x19af
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x75
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL310
	.4byte	0xf1d
	.4byte	0x19c9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL314
	.4byte	0x2608
	.4byte	0x19dd
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL319
	.4byte	0x2608
	.4byte	0x19f1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL321
	.4byte	0x2608
	.4byte	0x1a05
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL322
	.4byte	0xd81
	.4byte	0x1a19
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x27
	.4byte	.LVL326
	.4byte	0x2629
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 26
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x1ac3
	.uleb128 0x33
	.4byte	.LASF162
	.byte	0x1
	.byte	0xdf
	.4byte	0x14c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.4byte	.LVL329
	.4byte	0xd81
	.4byte	0x1a64
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x29
	.4byte	.LVL332
	.4byte	0x2608
	.4byte	0x1a78
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL336
	.4byte	0x2608
	.4byte	0x1a8c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL340
	.4byte	0x2608
	.4byte	0x1aa0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL344
	.4byte	0x2629
	.4byte	0x1ab9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x26
	.4byte	.LVL347
	.4byte	0xfb3
	.byte	0
	.uleb128 0x27
	.4byte	.LVL302
	.4byte	0x2608
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x1c3f
	.uleb128 0x23
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x117
	.4byte	0x13fd
	.4byte	.LLST61
	.uleb128 0x23
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x118
	.4byte	0x1183
	.4byte	.LLST62
	.uleb128 0x23
	.4byte	.LASF265
	.byte	0x1
	.2byte	0x119
	.4byte	0xcf
	.4byte	.LLST63
	.uleb128 0x2a
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x1bcf
	.uleb128 0x20
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x151
	.4byte	0x14c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.4byte	.LVL372
	.4byte	0x2608
	.4byte	0x1b41
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL374
	.4byte	0xd81
	.uleb128 0x29
	.4byte	.LVL377
	.4byte	0x2629
	.4byte	0x1b6f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xd
	.byte	0x77
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	neighbor_cache+20
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 2
	.byte	0
	.uleb128 0x26
	.4byte	.LVL380
	.4byte	0x157f
	.uleb128 0x29
	.4byte	.LVL383
	.4byte	0x2608
	.4byte	0x1b8c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL386
	.4byte	0x2629
	.4byte	0x1bb2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xe
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	neighbor_cache+20
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 2
	.byte	0
	.uleb128 0x27
	.4byte	.LVL391
	.4byte	0x1031
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
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL349
	.4byte	0x2608
	.4byte	0x1be3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL361
	.4byte	0x2608
	.4byte	0x1bf7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL365
	.4byte	0x1031
	.4byte	0x1c23
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xe
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x22
	.byte	0
	.uleb128 0x27
	.4byte	.LVL366
	.4byte	0x2674
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
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x1e25
	.uleb128 0x23
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x189
	.4byte	0x1fa4
	.4byte	.LLST64
	.uleb128 0x23
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x18a
	.4byte	0x1faa
	.4byte	.LLST65
	.uleb128 0x23
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x18b
	.4byte	0xe5
	.4byte	.LLST66
	.uleb128 0x2a
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x1caa
	.uleb128 0x23
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x1e1
	.4byte	0x1183
	.4byte	.LLST67
	.uleb128 0x27
	.4byte	.LVL418
	.4byte	0x2629
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 2
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x1cda
	.uleb128 0x23
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x1fb0
	.4byte	.LLST68
	.uleb128 0x26
	.4byte	.LVL420
	.4byte	0x2680
	.uleb128 0x26
	.4byte	.LVL421
	.4byte	0x2680
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x1d5e
	.uleb128 0x23
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x1f8
	.4byte	0x1fb6
	.4byte	.LLST69
	.uleb128 0x34
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x23
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x1ff
	.4byte	0xc4
	.4byte	.LLST70
	.uleb128 0x20
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x200
	.4byte	0x14c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.4byte	.LVL423
	.4byte	0xf1d
	.4byte	0x1d39
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL426
	.4byte	0xf6a
	.4byte	0x1d53
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL429
	.4byte	0x2680
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL393
	.4byte	0x2608
	.4byte	0x1d72
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL395
	.4byte	0x1189
	.4byte	0x1d86
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL396
	.4byte	0xed6
	.4byte	0x1d9a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL399
	.4byte	0x1652
	.4byte	0x1dae
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL402
	.4byte	0x2608
	.4byte	0x1dc2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL405
	.4byte	0x268b
	.uleb128 0x26
	.4byte	.LVL406
	.4byte	0x2680
	.uleb128 0x26
	.4byte	.LVL407
	.4byte	0x2680
	.uleb128 0x29
	.4byte	.LVL413
	.4byte	0x2696
	.4byte	0x1e00
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
	.4byte	nd6_ra_buffer
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x29
	.4byte	.LVL414
	.4byte	0x2608
	.4byte	0x1e14
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL416
	.4byte	0x2608
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x1f01
	.uleb128 0x23
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x24c
	.4byte	0x1fbc
	.4byte	.LLST71
	.uleb128 0x23
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x24d
	.4byte	0x1183
	.4byte	.LLST72
	.uleb128 0x28
	.string	"tmp"
	.byte	0x1
	.2byte	0x24e
	.4byte	0x14c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.4byte	.LVL435
	.4byte	0x2608
	.4byte	0x1e75
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL442
	.4byte	0xdba
	.4byte	0x1e89
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x29
	.4byte	.LVL445
	.4byte	0x2608
	.4byte	0x1e9d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL451
	.4byte	0xd81
	.4byte	0x1eb1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x26
	.4byte	.LVL453
	.4byte	0x157f
	.uleb128 0x29
	.4byte	.LVL456
	.4byte	0x2629
	.4byte	0x1ee0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xe
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	neighbor_cache+20
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 2
	.byte	0
	.uleb128 0x27
	.4byte	.LVL459
	.4byte	0x2629
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xc
	.byte	0x77
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 2
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x1f93
	.uleb128 0x23
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x295
	.4byte	0x1fc2
	.4byte	.LLST73
	.uleb128 0x23
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x296
	.4byte	0xd76
	.4byte	.LLST74
	.uleb128 0x23
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x297
	.4byte	0xf0
	.4byte	.LLST75
	.uleb128 0x28
	.string	"tmp"
	.byte	0x1
	.2byte	0x298
	.4byte	0x14c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.4byte	.LVL464
	.4byte	0x2608
	.4byte	0x1f61
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL467
	.4byte	0xdba
	.4byte	0x1f75
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x29
	.4byte	.LVL470
	.4byte	0x2608
	.4byte	0x1f89
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL473
	.4byte	0x2680
	.byte	0
	.uleb128 0x27
	.4byte	.LVL479
	.4byte	0x2608
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9e5
	.uleb128 0x6
	.byte	0x4
	.4byte	0xcf
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb51
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad8
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa52
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc29
	.uleb128 0x35
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x2c8
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2035
	.uleb128 0x1f
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x2c8
	.4byte	0x43c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.string	"cb"
	.byte	0x1
	.2byte	0x2c8
	.4byte	0x6bd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF251
	.4byte	0x2035
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6818
	.uleb128 0x27
	.4byte	.LVL481
	.4byte	0x2648
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2ca
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6818
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC53
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x153c
	.uleb128 0x35
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x2dc
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x222f
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x2de
	.4byte	0xc4
	.4byte	.LLST76
	.uleb128 0x23
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x2df
	.4byte	0x43c
	.4byte	.LLST77
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0
	.4byte	0x209f
	.uleb128 0x1d
	.string	"j"
	.byte	0x1
	.2byte	0x33a
	.4byte	0xc4
	.4byte	.LLST78
	.uleb128 0x27
	.4byte	.LVL502
	.4byte	0x2674
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x20e0
	.uleb128 0x1d
	.string	"j"
	.byte	0x1
	.2byte	0x353
	.4byte	0xc4
	.4byte	.LLST79
	.uleb128 0x29
	.4byte	.LVL512
	.4byte	0x26a1
	.4byte	0x20ca
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL513
	.4byte	0x2674
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
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x21aa
	.uleb128 0x23
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x371
	.4byte	0xcf
	.4byte	.LLST80
	.uleb128 0x29
	.4byte	.LVL525
	.4byte	0x2674
	.4byte	0x211d
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
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x37
	.4byte	.LVL527
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x2136
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
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL529
	.4byte	0x26ad
	.4byte	0x215f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xe
	.byte	0x75
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	multicast_address
	.byte	0
	.uleb128 0x29
	.4byte	.LVL530
	.4byte	0x12bf
	.4byte	0x218a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xe
	.byte	0x75
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x27
	.4byte	.LVL531
	.4byte	0x2674
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
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x74
	.sleb128 1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL484
	.4byte	0x1551
	.4byte	0x21be
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL485
	.4byte	0x1403
	.4byte	0x21dd
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x76
	.sleb128 0
	.byte	0x3
	.4byte	neighbor_cache
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x29
	.4byte	.LVL486
	.4byte	0xfb3
	.4byte	0x21f1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL487
	.4byte	0x1551
	.4byte	0x2205
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL488
	.4byte	0x1403
	.4byte	0x221e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL538
	.4byte	0x1189
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x556
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2254
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x558
	.4byte	0x33
	.4byte	.LLST81
	.byte	0
	.uleb128 0x38
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x5c0
	.4byte	0x43c
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22a2
	.uleb128 0x1c
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x5c0
	.4byte	0x5fe
	.4byte	.LLST82
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x5c2
	.4byte	0xc4
	.4byte	.LLST83
	.uleb128 0x27
	.4byte	.LVL544
	.4byte	0xe7d
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
	.uleb128 0x38
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x7a8
	.4byte	0x157
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2331
	.uleb128 0x1c
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x7a8
	.4byte	0x43c
	.4byte	.LLST84
	.uleb128 0x2b
	.string	"q"
	.byte	0x1
	.2byte	0x7a8
	.4byte	0x29e
	.4byte	.LLST85
	.uleb128 0x1c
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x7a8
	.4byte	0x5fe
	.4byte	.LLST86
	.uleb128 0x1f
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x7a8
	.4byte	0x2331
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x7aa
	.4byte	0xc4
	.4byte	.LLST87
	.uleb128 0x29
	.4byte	.LVL552
	.4byte	0x16f5
	.4byte	0x2320
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
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL559
	.4byte	0x17be
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2337
	.uleb128 0x6
	.byte	0x4
	.4byte	0x233d
	.uleb128 0x8
	.4byte	0xcf
	.uleb128 0x38
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x7d1
	.4byte	0xe5
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2399
	.uleb128 0x1c
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x7d1
	.4byte	0x5fe
	.4byte	.LLST88
	.uleb128 0x1f
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x7d1
	.4byte	0x43c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x7d3
	.4byte	0xc4
	.4byte	.LLST89
	.uleb128 0x27
	.4byte	.LVL562
	.4byte	0xdba
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x7ef
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23eb
	.uleb128 0x1c
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x7ef
	.4byte	0x5fe
	.4byte	.LLST90
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x7f1
	.4byte	0xc4
	.4byte	.LLST91
	.uleb128 0x29
	.4byte	.LVL569
	.4byte	0xdba
	.4byte	0x23e1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL575
	.4byte	0xd81
	.byte	0
	.uleb128 0x35
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x81a
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2442
	.uleb128 0x1f
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x81a
	.4byte	0x43c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.2byte	0x81c
	.4byte	0xcf
	.4byte	.LLST92
	.uleb128 0x23
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x81d
	.4byte	0xc4
	.4byte	.LLST93
	.uleb128 0x27
	.4byte	.LVL590
	.4byte	0x1551
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x83c
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24eb
	.uleb128 0x1f
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x83c
	.4byte	0x43c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x83c
	.4byte	0xc4
	.4byte	.LLST94
	.uleb128 0x1c
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x83c
	.4byte	0xcf
	.4byte	.LLST95
	.uleb128 0x23
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x83e
	.4byte	0xcf
	.4byte	.LLST96
	.uleb128 0x23
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x83e
	.4byte	0xcf
	.4byte	.LLST97
	.uleb128 0x20
	.4byte	.LASF290
	.byte	0x1
	.2byte	0x83e
	.4byte	0xcf
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.4byte	.LVL600
	.4byte	0x26b8
	.4byte	0x24d1
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
	.4byte	multicast_address
	.byte	0
	.uleb128 0x27
	.4byte	.LVL602
	.4byte	0x26c3
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
	.4byte	multicast_address
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF291
	.byte	0x1
	.byte	0x56
	.4byte	0xcf
	.uleb128 0x5
	.byte	0x3
	.4byte	nd6_cached_neighbor_index
	.uleb128 0x33
	.4byte	.LASF292
	.byte	0x1
	.byte	0x57
	.4byte	0xcf
	.uleb128 0x5
	.byte	0x3
	.4byte	nd6_cached_destination_index
	.uleb128 0x33
	.4byte	.LASF293
	.byte	0x1
	.byte	0x5a
	.4byte	0x14c
	.uleb128 0x5
	.byte	0x3
	.4byte	multicast_address
	.uleb128 0xb
	.4byte	0xcf
	.4byte	0x252e
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0x33
	.4byte	.LASF294
	.byte	0x1
	.byte	0x5d
	.4byte	0x251e
	.uleb128 0x5
	.byte	0x3
	.4byte	nd6_ra_buffer
	.uleb128 0x39
	.4byte	.LASF295
	.byte	0x9
	.2byte	0x17b
	.4byte	0xd7c
	.uleb128 0x39
	.4byte	.LASF296
	.byte	0x7
	.2byte	0x17a
	.4byte	0x43c
	.uleb128 0xb
	.4byte	0x74c
	.4byte	0x2567
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x9
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF297
	.byte	0x1
	.byte	0x4c
	.4byte	0x2557
	.uleb128 0x5
	.byte	0x3
	.4byte	neighbor_cache
	.uleb128 0xb
	.4byte	0x7ab
	.4byte	0x2588
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x9
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF298
	.byte	0x1
	.byte	0x4d
	.4byte	0x2578
	.uleb128 0x5
	.byte	0x3
	.4byte	destination_cache
	.uleb128 0xb
	.4byte	0x7e8
	.4byte	0x25a9
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x4
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF299
	.byte	0x1
	.byte	0x4e
	.4byte	0x2599
	.uleb128 0x5
	.byte	0x3
	.4byte	prefix_list
	.uleb128 0xb
	.4byte	0x825
	.4byte	0x25ca
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x4f
	.4byte	0x25ba
	.uleb128 0x5
	.byte	0x3
	.4byte	default_router_list
	.uleb128 0x3a
	.4byte	.LASF125
	.byte	0x1
	.byte	0x52
	.4byte	0xf0
	.uleb128 0x5
	.byte	0x3
	.4byte	reachable_time
	.uleb128 0x3a
	.4byte	.LASF168
	.byte	0x1
	.byte	0x53
	.4byte	0xf0
	.uleb128 0x5
	.byte	0x3
	.4byte	retrans_timer
	.uleb128 0x3b
	.4byte	.LASF301
	.byte	0x10
	.byte	0x7e
	.4byte	0xd0f
	.uleb128 0x3c
	.4byte	.LASF302
	.4byte	.LASF302
	.byte	0x6
	.byte	0xee
	.uleb128 0x3c
	.4byte	.LASF303
	.4byte	.LASF303
	.byte	0xa
	.byte	0x95
	.uleb128 0x3c
	.4byte	.LASF304
	.4byte	.LASF304
	.byte	0x6
	.byte	0xe4
	.uleb128 0x3d
	.4byte	.LASF323
	.4byte	.LASF323
	.uleb128 0x3c
	.4byte	.LASF305
	.4byte	.LASF305
	.byte	0x11
	.byte	0x58
	.uleb128 0x3c
	.4byte	.LASF306
	.4byte	.LASF306
	.byte	0x12
	.byte	0x41
	.uleb128 0x3c
	.4byte	.LASF307
	.4byte	.LASF307
	.byte	0x13
	.byte	0x29
	.uleb128 0x3c
	.4byte	.LASF308
	.4byte	.LASF308
	.byte	0x6
	.byte	0xf3
	.uleb128 0x3c
	.4byte	.LASF309
	.4byte	.LASF309
	.byte	0x6
	.byte	0xed
	.uleb128 0x3c
	.4byte	.LASF310
	.4byte	.LASF310
	.byte	0xa
	.byte	0x93
	.uleb128 0x3e
	.4byte	.LASF311
	.4byte	.LASF311
	.byte	0x7
	.2byte	0x1eb
	.uleb128 0x3c
	.4byte	.LASF312
	.4byte	.LASF312
	.byte	0x14
	.byte	0x5a
	.uleb128 0x3c
	.4byte	.LASF313
	.4byte	.LASF313
	.byte	0x14
	.byte	0x55
	.uleb128 0x3c
	.4byte	.LASF314
	.4byte	.LASF314
	.byte	0x6
	.byte	0xf4
	.uleb128 0x3e
	.4byte	.LASF315
	.4byte	.LASF315
	.byte	0x7
	.2byte	0x1e9
	.uleb128 0x3c
	.4byte	.LASF316
	.4byte	.LASF316
	.byte	0x15
	.byte	0x50
	.uleb128 0x3c
	.4byte	.LASF317
	.4byte	.LASF317
	.byte	0x15
	.byte	0x51
	.uleb128 0x3c
	.4byte	.LASF318
	.4byte	.LASF318
	.byte	0x15
	.byte	0x53
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.4byte	.LVL0
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
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL25
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
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
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL36
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL51
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL59
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.byte	0x58
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL67
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
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL67
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0xf
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	prefix_list+16
	.byte	0x22
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0xe
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x10
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0xf
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	prefix_list+16
	.byte	0x22
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0xe
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x10
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0xf
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	prefix_list+16
	.byte	0x22
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0xe
	.byte	0x79
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x10
	.4byte	.LVL77
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x3
	.byte	0x7e
	.sleb128 -24
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL86
	.4byte	.LVL87-1
	.2byte	0x3
	.byte	0x7e
	.sleb128 -24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL82
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL90
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL97
	.4byte	.LVL100
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL101
	.4byte	.LVL104
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL105
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL95
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL95
	.4byte	.LVL108
	.2byte	0x3
	.byte	0x75
	.sleb128 24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x6
	.byte	0x3
	.4byte	multicast_address
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x6
	.byte	0x3
	.4byte	multicast_address
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL95
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL109
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL126
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL119
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x3
	.byte	0x7a
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL122-1
	.2byte	0x3
	.byte	0x7a
	.sleb128 -2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL113
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL110
	.4byte	.LVL114
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL131
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x6
	.byte	0x3
	.4byte	multicast_address
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL132
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL139
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL133
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL136
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL136
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x3
	.byte	0x7a
	.sleb128 24
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL142-1
	.2byte	0x3
	.byte	0x7a
	.sleb128 -2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL153
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL156
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL160
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL155
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL162
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL169
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL174
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL179
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL184
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL187
	.4byte	.LVL188
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL188
	.4byte	.LVL189-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL190
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL194
	.4byte	.LVL198-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL199
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL204
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL207
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL210
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL184
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL197
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL207
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL184
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL186
	.4byte	.LVL189-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL190
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL192
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL197
	.4byte	.LVL198-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL201
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL207
	.4byte	.LVL209-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL210
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL212
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL218
	.4byte	.LVL232
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL232
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL233
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL212
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0x2
	.byte	0x72
	.sleb128 16
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x10
	.4byte	.LVL221
	.4byte	.LVL222-1
	.2byte	0x2
	.byte	0x7a
	.sleb128 16
	.4byte	.LVL222-1
	.4byte	.LVL232
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL232
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL234
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL224
	.4byte	.LVL225
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL225
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL227
	.4byte	.LVL228
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL228
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL230
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL234
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL224
	.4byte	.LVL225
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL225
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL234
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL214
	.4byte	.LVL215-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL215-1
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL216
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL217
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL232
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL236
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL239
	.4byte	.LVL240
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL240
	.4byte	.LVL245
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL245
	.4byte	.LVL246
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL246
	.4byte	.LVL249
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL249
	.4byte	.LVL263
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL263
	.4byte	.LVL264
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL264
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL236
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL250
	.4byte	.LVL251
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL251
	.4byte	.LVL258
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL258
	.4byte	.LVL259
	.2byte	0x2
	.byte	0x72
	.sleb128 16
	.4byte	.LVL259
	.4byte	.LVL260
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x10
	.4byte	.LVL260
	.4byte	.LVL261
	.2byte	0x7
	.byte	0x7c
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x10
	.4byte	.LVL261
	.4byte	.LVL262-1
	.2byte	0x2
	.byte	0x7a
	.sleb128 16
	.4byte	.LVL262-1
	.4byte	.LVL263
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL263
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL238
	.4byte	.LVL241-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL242
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL248
	.4byte	.LVL252
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL254
	.4byte	.LVL255-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL256
	.4byte	.LVL257
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL263
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL265
	.4byte	.LVL288
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL288
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL265
	.4byte	.LVL283
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL283
	.4byte	.LVL298
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL298
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL267
	.4byte	.LVL270-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL271
	.4byte	.LVL273
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL276
	.4byte	.LVL278
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL278
	.4byte	.LVL279
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL279
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL281
	.4byte	.LVL289
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL289
	.4byte	.LVL292
	.2byte	0x2
	.byte	0x7a
	.sleb128 4
	.4byte	.LVL293
	.4byte	.LVL294
	.2byte	0x2
	.byte	0x7a
	.sleb128 4
	.4byte	.LVL295
	.4byte	.LVL298
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL299
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL266
	.4byte	.LVL269
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL269
	.4byte	.LVL271
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL279
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL298
	.4byte	.LVL299
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL282
	.4byte	.LVL285
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL287
	.4byte	.LVL296
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL272
	.4byte	.LVL274-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL284
	.4byte	.LVL286-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL290
	.4byte	.LVL293
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL300
	.4byte	.LVL312
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL312
	.4byte	.LVL315
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL315
	.4byte	.LVL346
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL346
	.4byte	.LVL347-1
	.2byte	0x2
	.byte	0x74
	.sleb128 16
	.4byte	.LVL347-1
	.4byte	.LVL348
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL348
	.4byte	.LVL461
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL461
	.4byte	.LVL462
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL462
	.4byte	.LVL463
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL463
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL301
	.4byte	.LVL302-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL303
	.4byte	.LVL304
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL327
	.4byte	.LVL328
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL348
	.4byte	.LVL349-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL350
	.4byte	.LVL361-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL362
	.4byte	.LVL364
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL369
	.4byte	.LVL370
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL371
	.4byte	.LVL372-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL373
	.4byte	.LVL374-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL392
	.4byte	.LVL393-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL394
	.4byte	.LVL395-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL434
	.4byte	.LVL435-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL436
	.4byte	.LVL441
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL462
	.4byte	.LVL464-1
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL465
	.4byte	.LVL466
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL305
	.4byte	.LVL306
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL306
	.4byte	.LVL309
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL311
	.4byte	.LVL313
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL315
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL316
	.4byte	.LVL317
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL317
	.4byte	.LVL318
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL323
	.4byte	.LVL325
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL330
	.4byte	.LVL331
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL331
	.4byte	.LVL333
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL333
	.4byte	.LVL335
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL335
	.4byte	.LVL337
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL337
	.4byte	.LVL339
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL339
	.4byte	.LVL341
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL341
	.4byte	.LVL342
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL342
	.4byte	.LVL345
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL354
	.4byte	.LVL355
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL355
	.4byte	.LVL356
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL356
	.4byte	.LVL357
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL357
	.4byte	.LVL358
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL359
	.4byte	.LVL360
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL364
	.4byte	.LVL367
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL367
	.4byte	.LVL368
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL368
	.4byte	.LVL369
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL370
	.4byte	.LVL371
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL375
	.4byte	.LVL376
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL379
	.4byte	.LVL380-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL381
	.4byte	.LVL382
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL384
	.4byte	.LVL385
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL397
	.4byte	.LVL398
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL400
	.4byte	.LVL401
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL403
	.4byte	.LVL404
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL443
	.4byte	.LVL444
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL446
	.4byte	.LVL447
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL452
	.4byte	.LVL453-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL453-1
	.4byte	.LVL454
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL454
	.4byte	.LVL455
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL455
	.4byte	.LVL458
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL468
	.4byte	.LVL469
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL469
	.4byte	.LVL471
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL471
	.4byte	.LVL472
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL472
	.4byte	.LVL474
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL303
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL315
	.4byte	.LVL324
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL327
	.4byte	.LVL334
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL320
	.4byte	.LVL327
	.2byte	0x3
	.byte	0x76
	.sleb128 24
	.byte	0x9f
	.4byte	.LVL338
	.4byte	.LVL340-1
	.2byte	0x3
	.byte	0x7b
	.sleb128 24
	.byte	0x9f
	.4byte	.LVL341
	.4byte	.LVL343
	.2byte	0x3
	.byte	0x7b
	.sleb128 24
	.byte	0x9f
	.4byte	.LVL343
	.4byte	.LVL344-1
	.2byte	0x6
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL350
	.4byte	.LVL388
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL388
	.4byte	.LVL389
	.2byte	0x3
	.byte	0x78
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL389
	.4byte	.LVL390
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL390
	.4byte	.LVL391-1
	.2byte	0x3
	.byte	0x78
	.sleb128 -8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL351
	.4byte	.LVL352
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL353
	.4byte	.LVL364
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL369
	.4byte	.LVL370
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL371
	.4byte	.LVL378
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL379
	.4byte	.LVL387
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL354
	.4byte	.LVL360
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL360
	.4byte	.LVL363
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL394
	.4byte	.LVL408
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL411
	.4byte	.LVL412
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL412
	.4byte	.LVL415
	.2byte	0x6
	.byte	0x3
	.4byte	nd6_ra_buffer
	.byte	0x9f
	.4byte	.LVL415
	.4byte	.LVL431
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL409
	.4byte	.LVL410
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL410
	.4byte	.LVL432
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL433
	.4byte	.LVL434
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL417
	.4byte	.LVL419
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL419
	.4byte	.LVL422
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL422
	.4byte	.LVL430
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL424
	.4byte	.LVL425
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL427
	.4byte	.LVL428
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL436
	.4byte	.LVL448
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL448
	.4byte	.LVL449
	.2byte	0x3
	.byte	0x79
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL449
	.4byte	.LVL450
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL450
	.4byte	.LVL451-1
	.2byte	0x3
	.byte	0x79
	.sleb128 -8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL437
	.4byte	.LVL438
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL439
	.4byte	.LVL460
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL465
	.4byte	.LVL475
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL465
	.4byte	.LVL475
	.2byte	0x3
	.byte	0x74
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL473
	.4byte	.LVL476
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL477
	.4byte	.LVL478
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL482
	.4byte	.LVL483
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL483
	.4byte	.LVL489
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL489
	.4byte	.LVL490
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL490
	.4byte	.LVL491
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL492
	.4byte	.LVL493
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL493
	.4byte	.LVL494
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL494
	.4byte	.LVL495
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL496
	.4byte	.LVL497
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL497
	.4byte	.LVL498
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL498
	.4byte	.LVL499
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL500
	.4byte	.LVL520
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL520
	.4byte	.LVL521
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL521
	.4byte	.LVL522
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL523
	.4byte	.LVL532
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL532
	.4byte	.LVL533
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL533
	.4byte	.LVL534
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL535
	.4byte	.LVL536
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL522
	.4byte	.LVL537
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL537
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL501
	.4byte	.LVL503
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL504
	.4byte	.LVL505
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL505
	.4byte	.LVL506
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL506
	.4byte	.LVL507
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL508
	.4byte	.LVL509
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL510
	.4byte	.LVL511
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL514
	.4byte	.LVL515
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL515
	.4byte	.LVL516
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL516
	.4byte	.LVL517
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL518
	.4byte	.LVL519
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL524
	.4byte	.LVL525-1
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x7c
	.4byte	.LVL525-1
	.4byte	.LVL526
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL528
	.4byte	.LVL529-1
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x7c
	.4byte	.LVL529-1
	.4byte	.LVL531
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL540
	.4byte	.LVL541
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL541
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL543
	.4byte	.LVL547
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL547
	.4byte	.LVL548
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL548
	.4byte	.LVL549
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL549
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL545
	.4byte	.LVL546
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL548
	.4byte	.LVL550
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL551
	.4byte	.LVL554
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL554
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL551
	.4byte	.LVL557
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL557
	.4byte	.LVL558
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL558
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL551
	.4byte	.LVL556
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL556
	.4byte	.LVL560
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL560
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL553
	.4byte	.LVL555
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL560
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL561
	.4byte	.LVL564
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL564
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL563
	.4byte	.LVL565
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL566
	.4byte	.LVL571
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL571
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL567
	.4byte	.LVL568
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL570
	.4byte	.LVL572
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL573
	.4byte	.LVL574
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL576
	.4byte	.LVL577
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL579
	.4byte	.LVL580
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL580
	.4byte	.LVL581
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL581
	.4byte	.LVL582
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL582
	.4byte	.LVL583
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL584
	.4byte	.LVL591
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL591
	.4byte	.LVL592
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL592
	.4byte	.LFE47
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL585
	.4byte	.LVL586
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL586
	.4byte	.LVL587
	.2byte	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL587
	.4byte	.LVL588
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL589
	.4byte	.LVL590-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL593
	.4byte	.LVL599
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL599
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL593
	.4byte	.LVL596
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL596
	.4byte	.LVL598
	.2byte	0x3
	.byte	0x78
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL598
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL594
	.4byte	.LVL599
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x7c
	.4byte	.LVL599
	.4byte	.LVL600-1
	.2byte	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x7c
	.4byte	.LVL601
	.4byte	.LVL602-1
	.2byte	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x7c
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL595
	.4byte	.LVL600-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL601
	.4byte	.LVL602-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xfc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	0
	.4byte	0
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	0
	.4byte	0
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"ERR_RTE"
.LASF236:
	.string	"nd6_send_q"
.LASF16:
	.string	"int8_t"
.LASF308:
	.string	"pbuf_copy"
.LASF198:
	.string	"ICMP6_TYPE_MRA"
.LASF13:
	.string	"sizetype"
.LASF240:
	.string	"lladdr_opt"
.LASF199:
	.string	"ICMP6_TYPE_MRS"
.LASF200:
	.string	"ICMP6_TYPE_MRT"
.LASF84:
	.string	"l2_buffer_free_notify"
.LASF151:
	.string	"ip6_addr_p_t"
.LASF92:
	.string	"MEMP_TCP_PCB"
.LASF79:
	.string	"igmp_mac_filter"
.LASF217:
	.string	"current_netif"
.LASF71:
	.string	"dhcps_pcb"
.LASF81:
	.string	"loop_first"
.LASF59:
	.string	"l2_buf"
.LASF296:
	.string	"netif_list"
.LASF101:
	.string	"MEMP_SYS_TIMEOUT"
.LASF251:
	.string	"__func__"
.LASF270:
	.string	"prefix_opt"
.LASF209:
	.string	"_v_hl"
.LASF69:
	.string	"state"
.LASF85:
	.string	"last_ip_addr"
.LASF292:
	.string	"nd6_cached_destination_index"
.LASF113:
	.string	"lwip_internal_netif_client_data_index"
.LASF56:
	.string	"type"
.LASF278:
	.string	"nd6_clear_destination_cache"
.LASF231:
	.string	"nd6_get_router"
.LASF48:
	.string	"PBUF_REF"
.LASF259:
	.string	"nd6_get_next_hop_entry"
.LASF121:
	.string	"netif_igmp_mac_filter_fn"
.LASF290:
	.string	"new_member"
.LASF213:
	.string	"_ttl"
.LASF4:
	.string	"__uint8_t"
.LASF210:
	.string	"_tos"
.LASF261:
	.string	"result"
.LASF288:
	.string	"old_state"
.LASF144:
	.string	"ND6_NO_ENTRY"
.LASF127:
	.string	"probes_sent"
.LASF320:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/core/ipv6/nd6.c"
.LASF279:
	.string	"nd6_find_route"
.LASF138:
	.string	"nd6_prefix_list_entry"
.LASF73:
	.string	"ip6_autoconfig_enabled"
.LASF312:
	.string	"lwip_htonl"
.LASF12:
	.string	"long int"
.LASF275:
	.string	"nd6_set_cb"
.LASF152:
	.string	"ip6_hdr"
.LASF180:
	.string	"icmp6_type"
.LASF143:
	.string	"nd6_neighbor_cache_entry_state"
.LASF86:
	.string	"ip4_addr"
.LASF29:
	.string	"ERR_INPROGRESS"
.LASF234:
	.string	"nd6_new_onlink_prefix"
.LASF173:
	.string	"prefix_option"
.LASF218:
	.string	"current_input_netif"
.LASF185:
	.string	"ICMP6_TYPE_PE1"
.LASF186:
	.string	"ICMP6_TYPE_PE2"
.LASF201:
	.string	"ICMP6_TYPE_PE3"
.LASF172:
	.string	"length"
.LASF260:
	.string	"nd6_queue_packet"
.LASF211:
	.string	"_len"
.LASF293:
	.string	"multicast_address"
.LASF30:
	.string	"ERR_VAL"
.LASF222:
	.string	"current_iphdr_src"
.LASF67:
	.string	"linkoutput"
.LASF126:
	.string	"delay_time"
.LASF76:
	.string	"hwaddr_len"
.LASF107:
	.string	"MEMP_PBUF_POOL"
.LASF2:
	.string	"signed char"
.LASF223:
	.string	"current_iphdr_dest"
.LASF17:
	.string	"uint8_t"
.LASF235:
	.string	"ip6hdr"
.LASF124:
	.string	"nd6_q_entry"
.LASF111:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MLD6"
.LASF5:
	.string	"unsigned char"
.LASF313:
	.string	"lwip_htons"
.LASF284:
	.string	"nd6_cleanup_netif"
.LASF315:
	.string	"netif_ip6_addr_set_parts"
.LASF216:
	.string	"ip_globals"
.LASF280:
	.string	"nd6_get_next_hop_addr_or_queue"
.LASF95:
	.string	"MEMP_NETBUF"
.LASF298:
	.string	"destination_cache"
.LASF294:
	.string	"nd6_ra_buffer"
.LASF21:
	.string	"_Bool"
.LASF49:
	.string	"PBUF_POOL"
.LASF135:
	.string	"destination_addr"
.LASF306:
	.string	"ip6_output_if"
.LASF310:
	.string	"memp_malloc"
.LASF15:
	.string	"char"
.LASF66:
	.string	"output"
.LASF230:
	.string	"last_router"
.LASF51:
	.string	"pbuf"
.LASF105:
	.string	"MEMP_MLD6_GROUP"
.LASF146:
	.string	"ND6_REACHABLE"
.LASF90:
	.string	"MEMP_RAW_PCB"
.LASF8:
	.string	"__uint16_t"
.LASF322:
	.string	"udp_pcb"
.LASF181:
	.string	"ICMP6_TYPE_DUR"
.LASF57:
	.string	"flags"
.LASF225:
	.string	"nd6_find_destination_cache_entry"
.LASF61:
	.string	"ip_addr"
.LASF227:
	.string	"nd6_new_destination_cache_entry"
.LASF214:
	.string	"_proto"
.LASF65:
	.string	"input"
.LASF141:
	.string	"nd6_router_list_entry"
.LASF250:
	.string	"nd6_free_q"
.LASF169:
	.string	"redirect_header"
.LASF300:
	.string	"default_router_list"
.LASF244:
	.string	"nd6_send_rs"
.LASF204:
	.string	"icmp6_hdr"
.LASF33:
	.string	"ERR_ALREADY"
.LASF226:
	.string	"ip6addr"
.LASF196:
	.string	"ICMP6_TYPE_NA"
.LASF97:
	.string	"MEMP_TCPIP_MSG_API"
.LASF267:
	.string	"buffer"
.LASF96:
	.string	"MEMP_NETCONN"
.LASF195:
	.string	"ICMP6_TYPE_NS"
.LASF219:
	.string	"current_ip4_header"
.LASF139:
	.string	"prefix"
.LASF130:
	.string	"next_hop_address"
.LASF58:
	.string	"l2_owner"
.LASF212:
	.string	"_offset"
.LASF63:
	.string	"ip6_addr_state"
.LASF207:
	.string	"ip4_addr_p_t"
.LASF307:
	.string	"__assert_func"
.LASF104:
	.string	"MEMP_IP6_REASSDATA"
.LASF35:
	.string	"ERR_CONN"
.LASF314:
	.string	"pbuf_copy_partial"
.LASF14:
	.string	"long unsigned int"
.LASF206:
	.string	"ip4_addr_packed"
.LASF60:
	.string	"netif"
.LASF165:
	.string	"ra_header"
.LASF47:
	.string	"PBUF_ROM"
.LASF77:
	.string	"hwaddr"
.LASF174:
	.string	"prefix_length"
.LASF129:
	.string	"nd6_neighbor_cache_entry"
.LASF271:
	.string	"prefix_addr"
.LASF215:
	.string	"_chksum"
.LASF136:
	.string	"next_hop_addr"
.LASF148:
	.string	"ND6_DELAY"
.LASF88:
	.string	"u_addr"
.LASF54:
	.string	"payload"
.LASF114:
	.string	"netif_mac_filter_action"
.LASF137:
	.string	"pmtu"
.LASF83:
	.string	"loop_cnt_current"
.LASF265:
	.string	"accepted"
.LASF122:
	.string	"netif_mld_mac_filter_fn"
.LASF274:
	.string	"nd6_input"
.LASF203:
	.string	"ICMP6_TYPE_RSV_INF"
.LASF194:
	.string	"ICMP6_TYPE_RA"
.LASF197:
	.string	"ICMP6_TYPE_RD"
.LASF9:
	.string	"__uint32_t"
.LASF123:
	.string	"dhcp_event_fn"
.LASF309:
	.string	"pbuf_ref"
.LASF257:
	.string	"free_router_index"
.LASF299:
	.string	"prefix_list"
.LASF295:
	.string	"ip6_addr_any"
.LASF10:
	.string	"long long int"
.LASF193:
	.string	"ICMP6_TYPE_RS"
.LASF133:
	.string	"counter"
.LASF110:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF269:
	.string	"mtu_opt"
.LASF25:
	.string	"ERR_MEM"
.LASF40:
	.string	"ERR_ARG"
.LASF87:
	.string	"ip4_addr_t"
.LASF64:
	.string	"ipv6_addr_cb"
.LASF62:
	.string	"netmask"
.LASF119:
	.string	"netif_output_ip6_fn"
.LASF224:
	.string	"nd6_find_neighbor_cache_entry"
.LASF164:
	.string	"rs_header"
.LASF291:
	.string	"nd6_cached_neighbor_index"
.LASF317:
	.string	"mld6_joingroup_netif"
.LASF140:
	.string	"invalidation_timer"
.LASF163:
	.string	"na_header"
.LASF319:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF318:
	.string	"mld6_leavegroup_netif"
.LASF243:
	.string	"lladdr_opt_len"
.LASF256:
	.string	"router_index"
.LASF52:
	.string	"addr"
.LASF183:
	.string	"ICMP6_TYPE_TE"
.LASF221:
	.string	"current_ip_header_tot_len"
.LASF36:
	.string	"ERR_IF"
.LASF0:
	.string	"unsigned int"
.LASF154:
	.string	"_plen"
.LASF273:
	.string	"icmp6hdr"
.LASF258:
	.string	"neighbor_index"
.LASF32:
	.string	"ERR_USE"
.LASF42:
	.string	"PBUF_IP"
.LASF150:
	.string	"ip6_addr_packed"
.LASF74:
	.string	"rs_count"
.LASF31:
	.string	"ERR_WOULDBLOCK"
.LASF117:
	.string	"netif_input_fn"
.LASF252:
	.string	"nd6_free_neighbor_cache_entry"
.LASF153:
	.string	"_v_tc_fl"
.LASF27:
	.string	"ERR_TIMEOUT"
.LASF268:
	.string	"offset"
.LASF262:
	.string	"copy_needed"
.LASF120:
	.string	"netif_linkoutput_fn"
.LASF286:
	.string	"addr_idx"
.LASF118:
	.string	"netif_output_fn"
.LASF189:
	.string	"ICMP6_TYPE_EREP"
.LASF188:
	.string	"ICMP6_TYPE_EREQ"
.LASF55:
	.string	"tot_len"
.LASF263:
	.string	"new_entry"
.LASF158:
	.string	"ns_header"
.LASF89:
	.string	"ip_addr_t"
.LASF184:
	.string	"ICMP6_TYPE_PP"
.LASF115:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF239:
	.string	"na_hdr"
.LASF23:
	.string	"err_t"
.LASF160:
	.string	"chksum"
.LASF68:
	.string	"output_ip6"
.LASF249:
	.string	"entry"
.LASF282:
	.string	"nd6_get_destination_mtu"
.LASF134:
	.string	"nd6_destination_cache_entry"
.LASF3:
	.string	"__int8_t"
.LASF305:
	.string	"ip6_chksum_pseudo"
.LASF34:
	.string	"ERR_ISCONN"
.LASF202:
	.string	"ICMP6_TYPE_PE4"
.LASF82:
	.string	"loop_last"
.LASF11:
	.string	"long long unsigned int"
.LASF91:
	.string	"MEMP_UDP_PCB"
.LASF103:
	.string	"MEMP_ND6_QUEUE"
.LASF94:
	.string	"MEMP_TCP_SEG"
.LASF19:
	.string	"uint16_t"
.LASF182:
	.string	"ICMP6_TYPE_PTB"
.LASF167:
	.string	"router_lifetime"
.LASF98:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF304:
	.string	"pbuf_alloc"
.LASF125:
	.string	"reachable_time"
.LASF50:
	.string	"ip6_addr"
.LASF245:
	.string	"rs_hdr"
.LASF287:
	.string	"new_state"
.LASF303:
	.string	"memp_free"
.LASF112:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF255:
	.string	"nd6_new_router"
.LASF102:
	.string	"MEMP_NETDB"
.LASF75:
	.string	"hostname"
.LASF241:
	.string	"src_addr"
.LASF232:
	.string	"router_addr"
.LASF6:
	.string	"__int16_t"
.LASF289:
	.string	"old_member"
.LASF301:
	.string	"ip_data"
.LASF283:
	.string	"nd6_reachability_hint"
.LASF276:
	.string	"nd6_tmr"
.LASF302:
	.string	"pbuf_free"
.LASF24:
	.string	"ERR_OK"
.LASF157:
	.string	"dest"
.LASF108:
	.string	"MEMP_MAX"
.LASF266:
	.string	"ra_hdr"
.LASF254:
	.string	"time"
.LASF178:
	.string	"site_prefix_length"
.LASF159:
	.string	"code"
.LASF242:
	.string	"dest_addr"
.LASF128:
	.string	"stale_time"
.LASF220:
	.string	"current_ip6_header"
.LASF171:
	.string	"lladdr_option"
.LASF149:
	.string	"ND6_PROBE"
.LASF22:
	.string	"ip6_addr_t"
.LASF253:
	.string	"nd6_new_neighbor_cache_entry"
.LASF116:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF156:
	.string	"_hoplim"
.LASF78:
	.string	"name"
.LASF106:
	.string	"MEMP_PBUF"
.LASF26:
	.string	"ERR_BUF"
.LASF192:
	.string	"ICMP6_TYPE_MLD"
.LASF166:
	.string	"current_hop_limit"
.LASF187:
	.string	"ICMP6_TYPE_RSV_ERR"
.LASF7:
	.string	"short int"
.LASF145:
	.string	"ND6_INCOMPLETE"
.LASF191:
	.string	"ICMP6_TYPE_MLR"
.LASF297:
	.string	"neighbor_cache"
.LASF176:
	.string	"preferred_lifetime"
.LASF162:
	.string	"target_address"
.LASF229:
	.string	"nd6_select_router"
.LASF18:
	.string	"int16_t"
.LASF147:
	.string	"ND6_STALE"
.LASF237:
	.string	"nd6_send_na"
.LASF277:
	.string	"addr_state"
.LASF142:
	.string	"neighbor_entry"
.LASF246:
	.string	"nd6_send_ns"
.LASF132:
	.string	"isrouter"
.LASF109:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF177:
	.string	"reserved2"
.LASF321:
	.string	"/home/raphael/rtone/lcd/build/lwip"
.LASF80:
	.string	"mld_mac_filter"
.LASF316:
	.string	"mld6_joingroup"
.LASF44:
	.string	"PBUF_RAW_TX"
.LASF285:
	.string	"nd6_adjust_mld_membership"
.LASF323:
	.string	"memcpy"
.LASF155:
	.string	"_nexth"
.LASF168:
	.string	"retrans_timer"
.LASF248:
	.string	"nd6_send_neighbor_cache_probe"
.LASF100:
	.string	"MEMP_IGMP_GROUP"
.LASF281:
	.string	"hwaddrp"
.LASF20:
	.string	"uint32_t"
.LASF37:
	.string	"ERR_ABRT"
.LASF272:
	.string	"redir_hdr"
.LASF41:
	.string	"PBUF_TRANSPORT"
.LASF170:
	.string	"destination_address"
.LASF238:
	.string	"target_addr"
.LASF72:
	.string	"dhcp_event"
.LASF161:
	.string	"reserved"
.LASF131:
	.string	"lladdr"
.LASF175:
	.string	"valid_lifetime"
.LASF247:
	.string	"ns_hdr"
.LASF1:
	.string	"short unsigned int"
.LASF311:
	.string	"netif_ip6_addr_set_state"
.LASF233:
	.string	"nd6_get_onlink_prefix"
.LASF70:
	.string	"client_data"
.LASF39:
	.string	"ERR_CLSD"
.LASF190:
	.string	"ICMP6_TYPE_MLQ"
.LASF46:
	.string	"PBUF_RAM"
.LASF45:
	.string	"PBUF_RAW"
.LASF38:
	.string	"ERR_RST"
.LASF53:
	.string	"next"
.LASF205:
	.string	"data"
.LASF208:
	.string	"ip_hdr"
.LASF93:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF264:
	.string	"msg_type"
.LASF179:
	.string	"mtu_option"
.LASF43:
	.string	"PBUF_LINK"
.LASF99:
	.string	"MEMP_ARP_QUEUE"
.LASF228:
	.string	"nd6_is_prefix_in_netif"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
