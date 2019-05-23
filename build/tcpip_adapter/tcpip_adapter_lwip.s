	.file	"tcpip_adapter_lwip.c"
	.text
.Ltext0:
	.section	.text.tcpip_adapter_reset_ip_info,"ax",@progbits
	.literal_position
	.literal .LC0, esp_ip
	.align	4
	.type	tcpip_adapter_reset_ip_info, @function
tcpip_adapter_reset_ip_info:
.LFB76:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/tcpip_adapter/tcpip_adapter_lwip.c"
	.loc 1 1204 0
.LVL0:
	entry	sp, 32
.LCFI0:
	mov.n	a8, a2
	.loc 1 1205 0
	l32r	a10, .LC0
	slli	a11, a2, 1
	add.n	a2, a11, a2
.LVL1:
	slli	a9, a2, 2
	add.n	a9, a10, a9
	movi.n	a2, 0
	s32i.n	a2, a9, 0
	.loc 1 1206 0
	s32i.n	a2, a9, 8
	.loc 1 1207 0
	add.n	a8, a11, a8
.LVL2:
	slli	a9, a8, 2
	add.n	a9, a10, a9
	s32i.n	a2, a9, 4
	.loc 1 1209 0
	retw.n
.LFE76:
	.size	tcpip_adapter_reset_ip_info, .-tcpip_adapter_reset_ip_info
	.section	.text.tcpip_adapter_set_old_ip_info_api,"ax",@progbits
	.literal_position
	.literal .LC1, esp_ip_old
	.align	4
	.global	tcpip_adapter_set_old_ip_info_api
	.type	tcpip_adapter_set_old_ip_info_api, @function
tcpip_adapter_set_old_ip_info_api:
.LFB39:
	.loc 1 342 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 343 0
	l32i.n	a8, a2, 12
	addx2	a8, a8, a8
	slli	a9, a8, 2
	movi.n	a12, 0xc
	l32i.n	a11, a2, 16
	l32r	a10, .LC1
	add.n	a10, a10, a9
	call8	memcpy
.LVL4:
	.loc 1 345 0
	movi.n	a2, 0
.LVL5:
	retw.n
.LFE39:
	.size	tcpip_adapter_set_old_ip_info_api, .-tcpip_adapter_set_old_ip_info_api
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"tcpip_adapter"
	.align	4
.LC4:
	.string	"\033[0;32mI (%d) %s: softAP assign IP to station,IP is: %d.%d.%d.%d\033[0m\n"
	.section	.text.tcpip_adapter_dhcps_cb,"ax",@progbits
	.literal_position
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.align	4
	.type	tcpip_adapter_dhcps_cb, @function
tcpip_adapter_dhcps_cb:
.LFB23:
	.loc 1 90 0
.LVL6:
	entry	sp, 96
.LCFI2:
	.loc 1 91 0
	call8	esp_log_timestamp
.LVL7:
	l8ui	a15, a2, 0
	l8ui	a8, a2, 1
	l8ui	a9, a2, 2
	l8ui	a2, a2, 3
.LVL8:
	l32r	a11, .LC3
	s32i.n	a2, sp, 8
	s32i.n	a9, sp, 4
	s32i.n	a8, sp, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC5
	movi.n	a10, 3
	call8	esp_log_write
.LVL9:
	.loc 1 94 0
	movi.n	a2, 0x11
	s32i.n	a2, sp, 16
	.loc 1 95 0
	addi	a10, sp, 16
	call8	esp_event_send
.LVL10:
	retw.n
.LFE23:
	.size	tcpip_adapter_dhcps_cb, .-tcpip_adapter_dhcps_cb
	.section	.text.tcpip_adapter_ip_lost_timer,"ax",@progbits
	.literal_position
	.literal .LC6, esp_ip_lost_timer
	.literal .LC7, esp_netif
	.literal .LC8, ip_addr_any
	.literal .LC9, esp_ip_old
	.align	4
	.type	tcpip_adapter_ip_lost_timer, @function
tcpip_adapter_ip_lost_timer:
.LFB62:
	.loc 1 963 0
.LVL11:
	entry	sp, 80
.LCFI3:
.LVL12:
	.loc 1 967 0
	l32r	a8, .LC6
	add.n	a8, a8, a2
	movi.n	a9, 0
	s8i	a9, a8, 0
	.loc 1 969 0
	bnez.n	a2, .L4
.LBB5:
	.loc 1 970 0
	l32r	a8, .LC7
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
.LVL13:
	.loc 1 972 0
	beqz.n	a8, .L6
	.loc 1 972 0 is_stmt 0 discriminator 1
	l32i.n	a9, a8, 4
	l32r	a8, .LC8
.LVL14:
	l32i.n	a8, a8, 0
	bne	a9, a8, .L4
.L6:
.LBB6:
	.loc 1 976 0 is_stmt 1
	addx2	a2, a2, a2
.LVL15:
	slli	a8, a2, 2
	l32r	a2, .LC9
	add.n	a2, a8, a2
	movi.n	a8, 0
	s8i	a8, a2, 0
	s8i	a8, a2, 1
	s8i	a8, a2, 2
	s8i	a8, a2, 3
	s8i	a8, a2, 4
	s8i	a8, a2, 5
	s8i	a8, a2, 6
	s8i	a8, a2, 7
	s8i	a8, a2, 8
	s8i	a8, a2, 9
	s8i	a8, a2, 10
	s8i	a8, a2, 11
	.loc 1 977 0
	movi.n	a2, 8
	s32i.n	a2, sp, 0
	.loc 1 978 0
	mov.n	a10, sp
	call8	esp_event_send
.LVL16:
.L4:
	retw.n
.LBE6:
.LBE5:
.LFE62:
	.size	tcpip_adapter_ip_lost_timer, .-tcpip_adapter_ip_lost_timer
	.section	.text.tcpip_adapter_nd6_cb,"ax",@progbits
	.literal_position
	.literal .LC10, esp_ip6
	.literal .LC11, esp_ip6+16
	.literal .LC12, esp_ip6+32
	.literal .LC13, esp_netif
	.align	4
	.type	tcpip_adapter_nd6_cb, @function
tcpip_adapter_nd6_cb:
.LFB45:
	.loc 1 460 0
.LVL17:
	entry	sp, 80
.LCFI4:
	extui	a3, a3, 0, 8
	.loc 1 466 0
	movi.n	a8, 0x13
	s32i.n	a8, sp, 0
	.loc 1 468 0
	beqz.n	a2, .L7
	.loc 1 473 0
	l32r	a8, .LC13
	l32i.n	a8, a8, 0
	bne	a2, a8, .L9
.LVL18:
	.loc 1 475 0
	movi.n	a8, 0
	s32i.n	a8, sp, 4
	.loc 1 474 0
	l32r	a9, .LC10
	j	.L10
.LVL19:
.L9:
	.loc 1 476 0
	l32r	a8, .LC13
	l32i.n	a8, a8, 4
	bne	a2, a8, .L11
.LVL20:
	.loc 1 478 0
	movi.n	a8, 1
	s32i.n	a8, sp, 4
	.loc 1 477 0
	l32r	a9, .LC11
.LVL21:
	j	.L10
.LVL22:
.L11:
	.loc 1 479 0
	l32r	a8, .LC13
	l32i.n	a8, a8, 8
	bne	a2, a8, .L7
.LVL23:
	.loc 1 481 0
	movi.n	a8, 2
	s32i.n	a8, sp, 4
	.loc 1 480 0
	l32r	a9, .LC12
.LVL24:
.L10:
	.loc 1 486 0
	addx4	a10, a3, a3
	slli	a8, a10, 2
	mov.n	a10, a8
	addi	a8, a8, 64
	add.n	a8, a2, a8
	.loc 1 486 0
	beqz.n	a8, .L17
	.loc 1 486 0 is_stmt 0 discriminator 1
	add.n	a10, a2, a10
	l32i	a10, a10, 64
	j	.L12
.L17:
	.loc 1 486 0
	movi.n	a10, 0
.L12:
	.loc 1 486 0 is_stmt 1 discriminator 4
	s32i.n	a10, a9, 0
	.loc 1 486 0 discriminator 4
	beqz.n	a8, .L18
	.loc 1 486 0 is_stmt 0 discriminator 5
	addx4	a11, a3, a3
	slli	a10, a11, 2
	add.n	a10, a2, a10
	l32i	a10, a10, 68
	j	.L13
.L18:
	.loc 1 486 0
	movi.n	a10, 0
.L13:
	.loc 1 486 0 is_stmt 1 discriminator 8
	s32i.n	a10, a9, 4
	.loc 1 486 0 discriminator 8
	beqz.n	a8, .L19
	.loc 1 486 0 is_stmt 0 discriminator 9
	addx4	a11, a3, a3
	slli	a10, a11, 2
	add.n	a10, a2, a10
	l32i	a10, a10, 72
	j	.L14
.L19:
	.loc 1 486 0
	movi.n	a10, 0
.L14:
	.loc 1 486 0 is_stmt 1 discriminator 12
	s32i.n	a10, a9, 8
	.loc 1 486 0 discriminator 12
	beqz.n	a8, .L20
	.loc 1 486 0 is_stmt 0 discriminator 13
	addx4	a3, a3, a3
.LVL25:
	slli	a8, a3, 2
	add.n	a2, a2, a8
.LVL26:
	l32i	a2, a2, 76
	j	.L15
.LVL27:
.L20:
	.loc 1 486 0
	movi.n	a2, 0
.LVL28:
.L15:
	.loc 1 486 0 is_stmt 1 discriminator 16
	s32i.n	a2, a9, 12
	.loc 1 488 0 discriminator 16
	l32i.n	a3, a9, 0
	l32i.n	a2, a9, 4
	s32i.n	a3, sp, 8
	l32i.n	a3, a9, 8
	s32i.n	a2, sp, 12
	l32i.n	a2, a9, 12
	s32i.n	a3, sp, 16
	s32i.n	a2, sp, 20
	.loc 1 489 0 discriminator 16
	mov.n	a10, sp
	call8	esp_event_send
.LVL29:
.L7:
	retw.n
.LFE45:
	.size	tcpip_adapter_nd6_cb, .-tcpip_adapter_nd6_cb
	.section	.text.tcpip_adapter_ipc_check,"ax",@progbits
	.literal_position
	.literal .LC14, g_lwip_task
	.literal .LC15, api_lock_sem
	.literal .LC16, api_sync_sem
	.literal .LC17, tcpip_adapter_api_cb
	.align	4
	.type	tcpip_adapter_ipc_check, @function
tcpip_adapter_ipc_check:
.LFB26:
	.loc 1 134 0
.LVL30:
	entry	sp, 32
.LCFI5:
	.loc 1 136 0
	call8	xTaskGetCurrentTaskHandle
.LVL31:
	.loc 1 138 0
	l32r	a3, .LC14
	l32i.n	a3, a3, 0
	beq	a3, a10, .L23
	.loc 1 142 0
	l32r	a3, .LC15
	movi.n	a11, 0
	mov.n	a10, a3
.LVL32:
	call8	sys_arch_sem_wait
.LVL33:
	.loc 1 143 0
	l32r	a12, .LC16
	mov.n	a11, a2
	l32r	a10, .LC17
	call8	tcpip_send_msg_wait_sem
.LVL34:
	.loc 1 144 0
	mov.n	a10, a3
	call8	sys_sem_signal
.LVL35:
	.loc 1 146 0
	movi.n	a2, 1
.LVL36:
	retw.n
.LVL37:
.L23:
	.loc 1 139 0
	movi.n	a2, 0
.LVL38:
	.loc 1 150 0
	retw.n
.LFE26:
	.size	tcpip_adapter_ipc_check, .-tcpip_adapter_ipc_check
	.section	.text.tcpip_adapter_api_cb,"ax",@progbits
	.literal_position
	.literal .LC18, api_sync_sem
	.align	4
	.type	tcpip_adapter_api_cb, @function
tcpip_adapter_api_cb:
.LFB22:
	.loc 1 74 0
.LVL39:
	entry	sp, 32
.LCFI6:
.LVL40:
	.loc 1 77 0
	beqz.n	a2, .L24
	.loc 1 77 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 8
	beqz.n	a8, .L24
	.loc 1 82 0 is_stmt 1
	mov.n	a10, a2
	callx8	a8
.LVL41:
	s32i.n	a10, a2, 4
	.loc 1 84 0
	l32r	a10, .LC18
	call8	sys_sem_signal
.LVL42:
.L24:
	retw.n
.LFE22:
	.size	tcpip_adapter_api_cb, .-tcpip_adapter_api_cb
	.section	.text.tcpip_adapter_update_default_netif,"ax",@progbits
	.literal_position
	.literal .LC19, esp_netif
	.align	4
	.type	tcpip_adapter_update_default_netif, @function
tcpip_adapter_update_default_netif:
.LFB27:
	.loc 1 153 0
	entry	sp, 32
.LCFI7:
	.loc 1 154 0
	l32r	a8, .LC19
	l32i.n	a10, a8, 0
	beqz.n	a10, .L27
	.loc 1 154 0 is_stmt 0 discriminator 1
	l8ui	a8, a10, 189
	bbci	a8, 0, .L27
	.loc 1 155 0 is_stmt 1
	call8	netif_set_default
.LVL43:
	j	.L28
.L27:
	.loc 1 156 0
	l32r	a8, .LC19
	l32i.n	a10, a8, 8
	beqz.n	a10, .L29
	.loc 1 156 0 is_stmt 0 discriminator 1
	l8ui	a8, a10, 189
	bbci	a8, 0, .L29
	.loc 1 157 0 is_stmt 1
	call8	netif_set_default
.LVL44:
	j	.L28
.L29:
	.loc 1 158 0
	l32r	a8, .LC19
	l32i.n	a10, a8, 4
	beqz.n	a10, .L28
	.loc 1 158 0 is_stmt 0 discriminator 1
	l8ui	a8, a10, 189
	bbci	a8, 0, .L28
	.loc 1 159 0 is_stmt 1
	call8	netif_set_default
.LVL45:
.L28:
	.loc 1 163 0
	movi.n	a2, 0
	retw.n
.LFE27:
	.size	tcpip_adapter_update_default_netif, .-tcpip_adapter_update_default_netif
	.section	.rodata.str1.4
	.align	4
.LC23:
	.string	"\033[0;31mE (%d) %s: tcpip_adapter is not initialized!\033[0m\n"
	.align	4
.LC28:
	.string	"netif_init != NULL"
	.align	4
.LC31:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/tcpip_adapter/tcpip_adapter_lwip.c"
	.section	.text.tcpip_adapter_start,"ax",@progbits
	.literal_position
	.literal .LC20, 20481
	.literal .LC21, tcpip_inited
	.literal .LC22, .LC2
	.literal .LC24, .LC23
	.literal .LC25, tcpip_adapter_start_api
	.literal .LC26, esp_netif
	.literal .LC27, esp_netif_init_fn
	.literal .LC29, .LC28
	.literal .LC30, __func__$8484
	.literal .LC32, .LC31
	.literal .LC33, tcpip_input
	.literal .LC34, dhcps_status
	.literal .LC35, tcpip_adapter_dhcps_cb
	.align	4
	.type	tcpip_adapter_start, @function
tcpip_adapter_start:
.LFB28:
	.loc 1 166 0
.LVL46:
	entry	sp, 80
.LCFI8:
.LBB7:
	.loc 1 169 0
	l32r	a8, .LC21
	l8ui	a8, a8, 0
	bnez.n	a8, .L31
	.loc 1 169 0 discriminator 5
	call8	esp_log_timestamp
.LVL47:
	l32r	a11, .LC22
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC24
	movi.n	a10, 1
	call8	esp_log_write
.LVL48:
	call8	abort
.LVL49:
.L31:
	.loc 1 169 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 40
	s32i.n	a2, sp, 28
	s32i.n	a3, sp, 36
	s32i.n	a4, sp, 32
	l32r	a8, .LC25
	s32i.n	a8, sp, 24
	addi	a10, sp, 16
	call8	tcpip_adapter_ipc_check
.LVL50:
	bnei	a10, 1, .L32
	.loc 1 169 0 discriminator 34
	l32i.n	a2, sp, 20
.LVL51:
	retw.n
.LVL52:
.L32:
.LBE7:
	.loc 1 171 0 is_stmt 1
	movi.n	a8, 1
	bgeui	a2, 3, .L34
	movi.n	a8, 0
.L34:
	extui	a8, a8, 0, 8
	movi.n	a10, 0
	movi.n	a9, 1
	movnez	a9, a10, a3
	or	a8, a9, a8
	bne	a8, a10, .L41
	.loc 1 171 0 discriminator 1
	beq	a4, a10, .L42
	.loc 1 175 0
	l32r	a8, .LC26
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	beq	a8, a10, .L35
	.loc 1 175 0 discriminator 1
	beq	a8, a10, .L35
	.loc 1 175 0 is_stmt 0 discriminator 2
	l8ui	a5, a8, 189
	bbs	a5, a10, .L36
.L35:
	.loc 1 176 0 is_stmt 1
	bnez.n	a8, .L37
	.loc 1 177 0
	movi	a11, 0xf0
	movi.n	a10, 1
	call8	calloc
.LVL53:
	l32r	a5, .LC26
	addx4	a5, a2, a5
	s32i.n	a10, a5, 0
.L37:
	.loc 1 180 0
	l32r	a8, .LC26
	addx4	a8, a2, a8
	l32i.n	a5, a8, 0
	beqz.n	a5, .L43
	.loc 1 183 0
	movi.n	a12, 6
	mov.n	a11, a3
	movi	a10, 0xb7
	add.n	a10, a5, a10
	call8	memcpy
.LVL54:
.LBB8:
.LBB9:
	.loc 1 127 0
	bgeui	a2, 3, .L44
	.loc 1 128 0
	l32r	a3, .LC27
.LVL55:
	addx4	a3, a2, a3
	l32i.n	a15, a3, 0
	j	.L38
.LVL56:
.L44:
	.loc 1 130 0
	movi.n	a15, 0
.LVL57:
.L38:
.LBE9:
.LBE8:
	.loc 1 186 0
	bnez.n	a15, .L39
	.loc 1 186 0 is_stmt 0 discriminator 1
	l32r	a13, .LC29
	l32r	a12, .LC30
	movi	a11, 0xba
	l32r	a10, .LC32
	call8	__assert_func
.LVL58:
.L39:
	.loc 1 187 0 is_stmt 1
	l32r	a3, .LC33
	s32i.n	a3, sp, 0
	movi.n	a14, 0
	addi.n	a13, a4, 8
	addi.n	a12, a4, 4
	mov.n	a11, a4
	mov.n	a10, a5
	call8	netif_add
.LVL59:
	.loc 1 189 0
	movi.n	a9, 1
	movi.n	a3, 0
	mov.n	a5, a3
	moveqz	a5, a9, a2
	addi	a8, a2, -2
	moveqz	a3, a9, a8
	or	a3, a3, a5
	beqz.n	a3, .L36
	.loc 1 190 0
	l32r	a3, .LC26
	addx4	a3, a2, a3
	l32i.n	a10, a3, 0
	call8	netif_set_garp_flag
.LVL60:
.L36:
	.loc 1 196 0
	bnei	a2, 1, .L40
	.loc 1 197 0
	l32r	a3, .LC26
	addx4	a3, a2, a3
	l32i.n	a10, a3, 0
	call8	netif_set_up
.LVL61:
	.loc 1 199 0
	l32r	a3, .LC34
	l32i.n	a3, a3, 0
	bnez.n	a3, .L40
	.loc 1 200 0
	l32r	a10, .LC35
	call8	dhcps_set_new_lease_cb
.LVL62:
	.loc 1 202 0
	l32r	a3, .LC26
	addx4	a2, a2, a3
.LVL63:
	l32i.n	a11, a4, 0
	l32i.n	a10, a2, 0
	call8	dhcps_start
.LVL64:
	.loc 1 207 0
	movi.n	a3, 1
	l32r	a2, .LC34
	s32i.n	a3, a2, 0
.L40:
	.loc 1 211 0
	call8	tcpip_adapter_update_default_netif
.LVL65:
	.loc 1 213 0
	movi.n	a2, 0
	retw.n
.LVL66:
.L41:
	.loc 1 172 0
	l32r	a2, .LC20
.LVL67:
	retw.n
.LVL68:
.L42:
	l32r	a2, .LC20
.LVL69:
	retw.n
.LVL70:
.L43:
	.loc 1 181 0
	movi	a2, 0x101
.LVL71:
	.loc 1 214 0
	retw.n
.LFE28:
	.size	tcpip_adapter_start, .-tcpip_adapter_start
	.section	.text.tcpip_adapter_start_api,"ax",@progbits
	.align	4
	.type	tcpip_adapter_start_api, @function
tcpip_adapter_start_api:
.LFB32:
	.loc 1 235 0
.LVL72:
	entry	sp, 32
.LCFI9:
	.loc 1 236 0
	l32i.n	a12, a2, 16
	l32i.n	a11, a2, 20
	l32i.n	a10, a2, 12
	call8	tcpip_adapter_start
.LVL73:
	.loc 1 237 0
	mov.n	a2, a10
.LVL74:
	retw.n
.LFE32:
	.size	tcpip_adapter_start_api, .-tcpip_adapter_start_api
	.section	.text.tcpip_adapter_start_ip_lost_timer,"ax",@progbits
	.literal_position
	.literal .LC36, esp_netif
	.literal .LC37, esp_ip_lost_timer
	.literal .LC38, esp_ip_old
	.literal .LC39, tcpip_adapter_ip_lost_timer
	.literal .LC40, 120000
	.align	4
	.type	tcpip_adapter_start_ip_lost_timer, @function
tcpip_adapter_start_ip_lost_timer:
.LFB61:
	.loc 1 934 0
.LVL75:
	entry	sp, 32
.LCFI10:
.LVL76:
	.loc 1 936 0
	l32r	a8, .LC36
	addx4	a8, a2, a8
	l32i.n	a9, a8, 0
.LVL77:
	.loc 1 939 0
	bnez.n	a2, .L47
	.loc 1 944 0
	l32r	a8, .LC37
	add.n	a8, a8, a2
	l8ui	a8, a8, 0
	bnez.n	a8, .L47
	.loc 1 949 0
	beqz.n	a9, .L47
	.loc 1 949 0 is_stmt 0 discriminator 1
	addx2	a9, a2, a2
.LVL78:
	slli	a8, a9, 2
	l32r	a9, .LC38
	add.n	a8, a9, a8
	l32i.n	a8, a8, 0
	beqz.n	a8, .L47
	.loc 1 950 0 is_stmt 1
	l32r	a8, .LC37
	add.n	a8, a8, a2
	movi.n	a9, 1
	s8i	a9, a8, 0
	.loc 1 951 0
	mov.n	a12, a2
	l32r	a11, .LC39
	l32r	a10, .LC40
	call8	sys_timeout
.LVL79:
.L47:
	.loc 1 960 0
	movi.n	a2, 0
.LVL80:
	retw.n
.LFE61:
	.size	tcpip_adapter_start_ip_lost_timer, .-tcpip_adapter_start_ip_lost_timer
	.section	.text.tcpip_adapter_dhcpc_cb,"ax",@progbits
	.literal_position
	.literal .LC41, esp_netif
	.literal .LC42, esp_ip
	.literal .LC43, esp_ip_old
	.literal .LC44, ip_addr_any
	.align	4
	.type	tcpip_adapter_dhcpc_cb, @function
tcpip_adapter_dhcpc_cb:
.LFB60:
	.loc 1 869 0
.LVL81:
	entry	sp, 80
.LCFI11:
.LVL82:
	.loc 1 874 0
	beqz.n	a2, .L48
	.loc 1 879 0
	l32r	a8, .LC41
	l32i.n	a8, a8, 0
	beq	a2, a8, .L59
	.loc 1 881 0
	l32r	a3, .LC41
	l32i.n	a3, a3, 8
	bne	a2, a3, .L48
	.loc 1 882 0
	movi.n	a10, 2
	j	.L50
.L59:
	.loc 1 880 0
	movi.n	a10, 0
.L50:
.LVL83:
	.loc 1 889 0
	slli	a8, a10, 1
	add.n	a4, a8, a10
	slli	a3, a4, 2
	l32r	a4, .LC42
	add.n	a3, a3, a4
.LVL84:
	.loc 1 890 0
	add.n	a8, a8, a10
	slli	a4, a8, 2
	l32r	a8, .LC43
	add.n	a4, a4, a8
.LVL85:
	.loc 1 892 0
	l32i.n	a11, a2, 4
	l32r	a8, .LC44
	l32i.n	a8, a8, 0
	beq	a11, a8, .L51
	.loc 1 895 0
	l32i.n	a8, a3, 0
	bne	a11, a8, .L52
	.loc 1 896 0 discriminator 1
	l32i.n	a12, a2, 24
	l32i.n	a8, a3, 4
	.loc 1 895 0 discriminator 1
	bne	a12, a8, .L52
	.loc 1 897 0
	l32i.n	a12, a2, 44
	l32i.n	a8, a3, 8
	.loc 1 896 0
	beq	a12, a8, .L48
.L52:
.LBB10:
	.loc 1 900 0
	addi.n	a8, a2, 4
	.loc 1 900 0
	bnez.n	a8, .L53
	movi.n	a11, 0
.L53:
	.loc 1 900 0 discriminator 4
	slli	a9, a10, 1
	add.n	a9, a9, a10
	slli	a8, a9, 2
	l32r	a9, .LC42
	add.n	a8, a9, a8
	s32i.n	a11, a8, 0
	.loc 1 901 0 discriminator 4
	addi	a8, a2, 24
	.loc 1 901 0 discriminator 4
	beqz.n	a8, .L60
	.loc 1 901 0 is_stmt 0 discriminator 1
	l32i.n	a11, a2, 24
	j	.L54
.L60:
	.loc 1 901 0
	movi.n	a11, 0
.L54:
	.loc 1 901 0 is_stmt 1 discriminator 4
	slli	a9, a10, 1
	add.n	a9, a9, a10
	slli	a8, a9, 2
	l32r	a9, .LC42
	add.n	a8, a9, a8
	s32i.n	a11, a8, 4
	.loc 1 902 0 discriminator 4
	addi	a8, a2, 44
	.loc 1 902 0 discriminator 4
	beqz.n	a8, .L61
	.loc 1 902 0 is_stmt 0 discriminator 1
	l32i.n	a9, a2, 44
	j	.L55
.L61:
	.loc 1 902 0
	movi.n	a9, 0
.L55:
	.loc 1 902 0 is_stmt 1 discriminator 4
	slli	a8, a10, 1
	add.n	a8, a8, a10
	slli	a2, a8, 2
.LVL86:
	l32r	a8, .LC42
	add.n	a2, a8, a2
	s32i.n	a9, a2, 8
	.loc 1 905 0 discriminator 4
	bnei	a10, 2, .L56
	.loc 1 906 0
	movi.n	a2, 0x18
	s32i.n	a2, sp, 0
	.loc 1 907 0
	movi.n	a2, 1
	s8i	a2, sp, 16
	j	.L57
.L56:
	.loc 1 909 0
	movi.n	a2, 7
	s32i.n	a2, sp, 0
	.loc 1 910 0
	movi.n	a2, 0
	s8i	a2, sp, 16
.L57:
	.loc 1 913 0
	movi.n	a12, 0xc
	mov.n	a11, a4
	mov.n	a10, a3
.LVL87:
	call8	memcmp
.LVL88:
	beqz.n	a10, .L58
	.loc 1 914 0
	movi.n	a2, 1
	s8i	a2, sp, 16
.L58:
	.loc 1 917 0
	movi.n	a2, 0xc
	mov.n	a12, a2
	mov.n	a11, a3
	addi.n	a10, sp, 4
	call8	memcpy
.LVL89:
	.loc 1 918 0
	mov.n	a12, a2
	mov.n	a11, a3
	mov.n	a10, a4
	call8	memcpy
.LVL90:
	.loc 1 920 0
	mov.n	a10, sp
	call8	esp_event_send
.LVL91:
.LBE10:
	.loc 1 897 0
	retw.n
.LVL92:
.L51:
	.loc 1 925 0
	slli	a3, a10, 1
.LVL93:
	add.n	a3, a3, a10
	slli	a2, a3, 2
.LVL94:
	l32r	a3, .LC42
.LVL95:
	add.n	a2, a3, a2
	l32i.n	a2, a2, 0
	beq	a8, a2, .L48
	.loc 1 926 0
	call8	tcpip_adapter_start_ip_lost_timer
.LVL96:
.L48:
	retw.n
.LFE60:
	.size	tcpip_adapter_dhcpc_cb, .-tcpip_adapter_dhcpc_cb
	.section	.rodata.str1.4
	.align	4
.LC52:
	.string	"\033[0;31mE (%d) %s: tcpip adatper api sync sem init fail\033[0m\n"
	.align	4
.LC55:
	.string	"\033[0;31mE (%d) %s: tcpip adatper api lock sem init fail\033[0m\n"
	.section	.text.tcpip_adapter_init,"ax",@progbits
	.literal_position
	.literal .LC45, tcpip_inited
	.literal .LC46, esp_ip
	.literal .LC47, esp_ip_old
	.literal .LC48, 17082560
	.literal .LC49, 16777215
	.literal .LC50, api_sync_sem
	.literal .LC51, .LC2
	.literal .LC53, .LC52
	.literal .LC54, api_lock_sem
	.literal .LC56, .LC55
	.align	4
	.global	tcpip_adapter_init
	.type	tcpip_adapter_init, @function
tcpip_adapter_init:
.LFB24:
	.loc 1 99 0
	entry	sp, 32
.LCFI12:
	.loc 1 102 0
	l32r	a8, .LC45
	l8ui	a8, a8, 0
	bnez.n	a8, .L62
	.loc 1 103 0
	movi.n	a9, 1
	l32r	a8, .LC45
	s8i	a9, a8, 0
	.loc 1 105 0
	movi.n	a11, 0
	mov.n	a10, a11
	call8	tcpip_init
.LVL97:
	.loc 1 107 0
	l32r	a8, .LC46
	movi.n	a11, 0
	s32i.n	a11, a8, 0
	s32i.n	a11, a8, 4
	s32i.n	a11, a8, 8
	s32i.n	a11, a8, 24
	s32i.n	a11, a8, 28
	s32i.n	a11, a8, 32
	.loc 1 108 0
	l32r	a9, .LC47
	s32i.n	a11, a9, 0
	s32i.n	a11, a9, 4
	s32i.n	a11, a9, 8
	s32i.n	a11, a9, 12
	s32i.n	a11, a9, 16
	s32i.n	a11, a9, 20
	s32i.n	a11, a9, 24
	s32i.n	a11, a9, 28
	s32i.n	a11, a9, 32
	.loc 1 110 0
	l32r	a9, .LC48
	s32i.n	a9, a8, 12
	.loc 1 111 0
	s32i.n	a9, a8, 20
	.loc 1 112 0
	l32r	a9, .LC49
	s32i.n	a9, a8, 16
	.loc 1 113 0
	l32r	a10, .LC50
	call8	sys_sem_new
.LVL98:
	extui	a10, a10, 0, 8
.LVL99:
	.loc 1 114 0
	beqz.n	a10, .L64
	.loc 1 115 0 discriminator 2
	call8	esp_log_timestamp
.LVL100:
	l32r	a11, .LC51
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC53
	movi.n	a10, 1
	call8	esp_log_write
.LVL101:
.L64:
	.loc 1 118 0
	movi.n	a11, 1
	l32r	a10, .LC54
	call8	sys_sem_new
.LVL102:
	extui	a10, a10, 0, 8
.LVL103:
	.loc 1 119 0
	beqz.n	a10, .L62
	.loc 1 120 0 discriminator 2
	call8	esp_log_timestamp
.LVL104:
	l32r	a11, .LC51
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC56
	movi.n	a10, 1
	call8	esp_log_write
.LVL105:
.L62:
	retw.n
.LFE24:
	.size	tcpip_adapter_init, .-tcpip_adapter_init
	.section	.text.tcpip_adapter_eth_start,"ax",@progbits
	.literal_position
	.literal .LC57, esp_netif_init_fn
	.literal .LC58, ethernetif_init
	.align	4
	.global	tcpip_adapter_eth_start
	.type	tcpip_adapter_eth_start, @function
tcpip_adapter_eth_start:
.LFB29:
	.loc 1 217 0
.LVL106:
	entry	sp, 32
.LCFI13:
	.loc 1 218 0
	l32r	a9, .LC58
	l32r	a8, .LC57
	s32i.n	a9, a8, 8
	.loc 1 219 0
	mov.n	a12, a3
	mov.n	a11, a2
	movi.n	a10, 2
	call8	tcpip_adapter_start
.LVL107:
	.loc 1 220 0
	mov.n	a2, a10
.LVL108:
	retw.n
.LFE29:
	.size	tcpip_adapter_eth_start, .-tcpip_adapter_eth_start
	.section	.text.tcpip_adapter_sta_start,"ax",@progbits
	.literal_position
	.literal .LC59, esp_netif_init_fn
	.literal .LC60, wlanif_init_sta
	.align	4
	.global	tcpip_adapter_sta_start
	.type	tcpip_adapter_sta_start, @function
tcpip_adapter_sta_start:
.LFB30:
	.loc 1 223 0
.LVL109:
	entry	sp, 32
.LCFI14:
	.loc 1 224 0
	l32r	a9, .LC60
	l32r	a8, .LC59
	s32i.n	a9, a8, 0
	.loc 1 225 0
	mov.n	a12, a3
	mov.n	a11, a2
	movi.n	a10, 0
	call8	tcpip_adapter_start
.LVL110:
	.loc 1 226 0
	mov.n	a2, a10
.LVL111:
	retw.n
.LFE30:
	.size	tcpip_adapter_sta_start, .-tcpip_adapter_sta_start
	.section	.text.tcpip_adapter_ap_start,"ax",@progbits
	.literal_position
	.literal .LC61, esp_netif_init_fn
	.literal .LC62, wlanif_init_ap
	.align	4
	.global	tcpip_adapter_ap_start
	.type	tcpip_adapter_ap_start, @function
tcpip_adapter_ap_start:
.LFB31:
	.loc 1 229 0
.LVL112:
	entry	sp, 32
.LCFI15:
	.loc 1 230 0
	l32r	a9, .LC62
	l32r	a8, .LC61
	s32i.n	a9, a8, 4
	.loc 1 231 0
	mov.n	a12, a3
	mov.n	a11, a2
	movi.n	a10, 1
	call8	tcpip_adapter_start
.LVL113:
	.loc 1 232 0
	mov.n	a2, a10
.LVL114:
	retw.n
.LFE31:
	.size	tcpip_adapter_ap_start, .-tcpip_adapter_ap_start
	.section	.text.tcpip_adapter_stop,"ax",@progbits
	.literal_position
	.literal .LC63, 20481
	.literal .LC64, 20482
	.literal .LC65, tcpip_inited
	.literal .LC66, .LC2
	.literal .LC67, .LC23
	.literal .LC68, tcpip_adapter_stop_api
	.literal .LC69, esp_netif
	.literal .LC70, dhcps_status
	.literal .LC71, dhcpc_status
	.align	4
	.global	tcpip_adapter_stop
	.type	tcpip_adapter_stop, @function
tcpip_adapter_stop:
.LFB33:
	.loc 1 240 0
.LVL115:
	entry	sp, 64
.LCFI16:
.LBB11:
	.loc 1 241 0
	l32r	a8, .LC65
	l8ui	a8, a8, 0
	bnez.n	a8, .L69
	.loc 1 241 0 discriminator 5
	call8	esp_log_timestamp
.LVL116:
	l32r	a11, .LC66
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC67
	movi.n	a10, 1
	call8	esp_log_write
.LVL117:
	call8	abort
.LVL118:
.L69:
	.loc 1 241 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a2, sp, 12
	l32r	a8, .LC68
	s32i.n	a8, sp, 8
	mov.n	a10, sp
	call8	tcpip_adapter_ipc_check
.LVL119:
	bnei	a10, 1, .L70
	.loc 1 241 0 discriminator 34
	l32i.n	a2, sp, 4
.LVL120:
	retw.n
.LVL121:
.L70:
.LBE11:
	.loc 1 243 0 is_stmt 1
	bgeui	a2, 3, .L76
	.loc 1 247 0
	l32r	a8, .LC69
	addx4	a8, a2, a8
	l32i.n	a10, a8, 0
	beqz.n	a10, .L77
	.loc 1 251 0
	beqz.n	a10, .L72
	.loc 1 251 0 is_stmt 0 discriminator 1
	l8ui	a8, a10, 189
	bbsi	a8, 0, .L73
.L72:
	.loc 1 252 0 is_stmt 1
	call8	netif_remove
.LVL122:
	.loc 1 253 0
	l32r	a2, .LC64
.LVL123:
	retw.n
.LVL124:
.L73:
	.loc 1 256 0
	bnei	a2, 1, .L74
	.loc 1 257 0
	call8	dhcps_stop
.LVL125:
	.loc 1 258 0
	l32r	a3, .LC70
	l32i.n	a3, a3, 0
	beqi	a3, 2, .L75
	.loc 1 259 0
	movi.n	a4, 0
	l32r	a3, .LC70
	s32i.n	a4, a3, 0
	j	.L75
.L74:
	.loc 1 261 0
	movi.n	a12, 1
	movi.n	a8, 0
	mov.n	a9, a8
	moveqz	a9, a12, a2
	addi	a11, a2, -2
	moveqz	a8, a12, a11
	or	a8, a8, a9
	beqz.n	a8, .L75
	.loc 1 262 0
	call8	dhcp_release
.LVL126:
	.loc 1 263 0
	slli	a3, a2, 2
	l32r	a4, .LC69
	add.n	a4, a4, a3
	l32i.n	a10, a4, 0
	call8	dhcp_stop
.LVL127:
	.loc 1 264 0
	l32i.n	a10, a4, 0
	call8	dhcp_cleanup
.LVL128:
	.loc 1 266 0
	l32r	a4, .LC71
	add.n	a3, a4, a3
	movi.n	a4, 0
	s32i.n	a4, a3, 0
	.loc 1 268 0
	mov.n	a10, a2
	call8	tcpip_adapter_reset_ip_info
.LVL129:
.L75:
	.loc 1 271 0
	l32r	a8, .LC69
	addx4	a2, a2, a8
.LVL130:
	l32i.n	a10, a2, 0
	call8	netif_set_down
.LVL131:
	.loc 1 272 0
	l32i.n	a10, a2, 0
	call8	netif_remove
.LVL132:
	.loc 1 273 0
	call8	tcpip_adapter_update_default_netif
.LVL133:
	.loc 1 275 0
	movi.n	a2, 0
	retw.n
.LVL134:
.L76:
	.loc 1 244 0
	l32r	a2, .LC63
.LVL135:
	retw.n
.LVL136:
.L77:
	.loc 1 248 0
	l32r	a2, .LC64
.LVL137:
	.loc 1 276 0
	retw.n
.LFE33:
	.size	tcpip_adapter_stop, .-tcpip_adapter_stop
	.section	.text.tcpip_adapter_stop_api,"ax",@progbits
	.align	4
	.type	tcpip_adapter_stop_api, @function
tcpip_adapter_stop_api:
.LFB34:
	.loc 1 279 0
.LVL138:
	entry	sp, 32
.LCFI17:
	.loc 1 280 0
	l32i.n	a10, a2, 12
	call8	tcpip_adapter_stop
.LVL139:
	s32i.n	a10, a2, 4
	.loc 1 282 0
	mov.n	a2, a10
.LVL140:
	retw.n
.LFE34:
	.size	tcpip_adapter_stop_api, .-tcpip_adapter_stop_api
	.section	.text.tcpip_adapter_up,"ax",@progbits
	.literal_position
	.literal .LC72, 20482
	.literal .LC73, tcpip_inited
	.literal .LC74, .LC2
	.literal .LC75, .LC23
	.literal .LC76, tcpip_adapter_up_api
	.literal .LC77, esp_netif
	.literal .LC78, esp_ip
	.align	4
	.global	tcpip_adapter_up
	.type	tcpip_adapter_up, @function
tcpip_adapter_up:
.LFB35:
	.loc 1 285 0
.LVL141:
	entry	sp, 64
.LCFI18:
.LBB12:
	.loc 1 286 0
	l32r	a8, .LC73
	l8ui	a8, a8, 0
	bnez.n	a8, .L80
	.loc 1 286 0 discriminator 5
	call8	esp_log_timestamp
.LVL142:
	l32r	a11, .LC74
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC75
	movi.n	a10, 1
	call8	esp_log_write
.LVL143:
	call8	abort
.LVL144:
.L80:
	.loc 1 286 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a2, sp, 12
	l32r	a8, .LC76
	s32i.n	a8, sp, 8
	mov.n	a10, sp
	call8	tcpip_adapter_ipc_check
.LVL145:
	bnei	a10, 1, .L81
	.loc 1 286 0 discriminator 34
	l32i.n	a2, sp, 4
.LVL146:
	retw.n
.LVL147:
.L81:
.LBE12:
	.loc 1 288 0 is_stmt 1
	movi.n	a11, 1
	movi.n	a8, 0
	mov.n	a9, a8
	moveqz	a9, a11, a2
	addi	a10, a2, -2
	moveqz	a8, a11, a10
	or	a8, a8, a9
	beqz.n	a8, .L83
	.loc 1 289 0
	l32r	a8, .LC77
	addx4	a8, a2, a8
	l32i.n	a10, a8, 0
	beqz.n	a10, .L84
	.loc 1 294 0
	addx2	a8, a2, a2
	l32r	a11, .LC78
	addx4	a11, a8, a11
	addi.n	a13, a11, 8
	addi.n	a12, a11, 4
	call8	netif_set_addr
.LVL148:
	.loc 1 295 0
	l32r	a8, .LC77
	addx4	a2, a2, a8
.LVL149:
	l32i.n	a10, a2, 0
	call8	netif_set_up
.LVL150:
.L83:
	.loc 1 298 0
	call8	tcpip_adapter_update_default_netif
.LVL151:
	.loc 1 300 0
	movi.n	a2, 0
	retw.n
.LVL152:
.L84:
	.loc 1 290 0
	l32r	a2, .LC72
.LVL153:
	.loc 1 301 0
	retw.n
.LFE35:
	.size	tcpip_adapter_up, .-tcpip_adapter_up
	.section	.text.tcpip_adapter_up_api,"ax",@progbits
	.align	4
	.type	tcpip_adapter_up_api, @function
tcpip_adapter_up_api:
.LFB36:
	.loc 1 304 0
.LVL154:
	entry	sp, 32
.LCFI19:
	.loc 1 305 0
	l32i.n	a10, a2, 12
	call8	tcpip_adapter_up
.LVL155:
	s32i.n	a10, a2, 4
	.loc 1 307 0
	mov.n	a2, a10
.LVL156:
	retw.n
.LFE36:
	.size	tcpip_adapter_up_api, .-tcpip_adapter_up_api
	.section	.text.tcpip_adapter_down,"ax",@progbits
	.literal_position
	.literal .LC79, 20482
	.literal .LC80, tcpip_inited
	.literal .LC81, .LC2
	.literal .LC82, .LC23
	.literal .LC83, tcpip_adapter_down_api
	.literal .LC84, esp_netif
	.literal .LC85, dhcpc_status
	.literal .LC86, ip_addr_any
	.align	4
	.global	tcpip_adapter_down
	.type	tcpip_adapter_down, @function
tcpip_adapter_down:
.LFB37:
	.loc 1 310 0
.LVL157:
	entry	sp, 64
.LCFI20:
.LBB13:
	.loc 1 311 0
	l32r	a3, .LC80
	l8ui	a3, a3, 0
	bnez.n	a3, .L87
	.loc 1 311 0 discriminator 5
	call8	esp_log_timestamp
.LVL158:
	l32r	a11, .LC81
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC82
	movi.n	a10, 1
	call8	esp_log_write
.LVL159:
	call8	abort
.LVL160:
.L87:
	.loc 1 311 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a2, sp, 12
	l32r	a3, .LC83
	s32i.n	a3, sp, 8
	mov.n	a10, sp
	call8	tcpip_adapter_ipc_check
.LVL161:
	bnei	a10, 1, .L88
	.loc 1 311 0 discriminator 34
	l32i.n	a2, sp, 4
.LVL162:
	retw.n
.LVL163:
.L88:
.LBE13:
	.loc 1 313 0 is_stmt 1
	movi.n	a11, 1
	movi.n	a8, 0
	mov.n	a9, a8
	moveqz	a9, a11, a2
	addi	a10, a2, -2
	moveqz	a8, a11, a10
	or	a8, a8, a9
	beqz.n	a8, .L90
	.loc 1 314 0
	l32r	a8, .LC84
	addx4	a8, a2, a8
	l32i.n	a10, a8, 0
	beqz.n	a10, .L92
	.loc 1 318 0
	l32r	a3, .LC85
	addx4	a3, a2, a3
	l32i.n	a3, a3, 0
	bne	a3, a11, .L91
	.loc 1 319 0
	call8	dhcp_stop
.LVL164:
	.loc 1 321 0
	l32r	a3, .LC85
	addx4	a3, a2, a3
	movi.n	a8, 0
	s32i.n	a8, a3, 0
	.loc 1 323 0
	mov.n	a10, a2
	call8	tcpip_adapter_reset_ip_info
.LVL165:
.L91:
	.loc 1 326 0
	l32r	a11, .LC86
	l32r	a3, .LC84
	addx4	a3, a2, a3
	mov.n	a13, a11
	mov.n	a12, a11
	l32i.n	a10, a3, 0
	call8	netif_set_addr
.LVL166:
	.loc 1 327 0
	l32i.n	a10, a3, 0
	call8	netif_set_down
.LVL167:
	.loc 1 328 0
	mov.n	a10, a2
	call8	tcpip_adapter_start_ip_lost_timer
.LVL168:
.L90:
	.loc 1 331 0
	call8	tcpip_adapter_update_default_netif
.LVL169:
	.loc 1 333 0
	movi.n	a2, 0
.LVL170:
	retw.n
.LVL171:
.L92:
	.loc 1 315 0
	l32r	a2, .LC79
.LVL172:
	.loc 1 334 0
	retw.n
.LFE37:
	.size	tcpip_adapter_down, .-tcpip_adapter_down
	.section	.text.tcpip_adapter_down_api,"ax",@progbits
	.align	4
	.type	tcpip_adapter_down_api, @function
tcpip_adapter_down_api:
.LFB38:
	.loc 1 337 0
.LVL173:
	entry	sp, 32
.LCFI21:
	.loc 1 338 0
	l32i.n	a10, a2, 12
	call8	tcpip_adapter_down
.LVL174:
	.loc 1 339 0
	mov.n	a2, a10
.LVL175:
	retw.n
.LFE38:
	.size	tcpip_adapter_down_api, .-tcpip_adapter_down_api
	.section	.text.tcpip_adapter_set_old_ip_info,"ax",@progbits
	.literal_position
	.literal .LC87, 20481
	.literal .LC88, tcpip_inited
	.literal .LC89, .LC2
	.literal .LC90, .LC23
	.literal .LC91, tcpip_adapter_set_old_ip_info_api
	.align	4
	.global	tcpip_adapter_set_old_ip_info
	.type	tcpip_adapter_set_old_ip_info, @function
tcpip_adapter_set_old_ip_info:
.LFB40:
	.loc 1 348 0
.LVL176:
	entry	sp, 64
.LCFI22:
	.loc 1 349 0
	movi.n	a8, 1
	bgeui	a2, 3, .L95
	movi.n	a8, 0
.L95:
	extui	a8, a8, 0, 8
	movi.n	a10, 0
	movi.n	a9, 1
	movnez	a9, a10, a3
	or	a8, a9, a8
	bne	a8, a10, .L99
.LBB14:
	.loc 1 353 0
	l32r	a8, .LC88
	l8ui	a8, a8, 0
	bne	a8, a10, .L97
	.loc 1 353 0 discriminator 5
	call8	esp_log_timestamp
.LVL177:
	l32r	a11, .LC89
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC90
	movi.n	a10, 1
	call8	esp_log_write
.LVL178:
	call8	abort
.LVL179:
.L97:
	.loc 1 353 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a2, sp, 12
	s32i.n	a3, sp, 16
	l32r	a2, .LC91
.LVL180:
	s32i.n	a2, sp, 8
	mov.n	a10, sp
	call8	tcpip_adapter_ipc_check
.LVL181:
	bnei	a10, 1, .L98
	.loc 1 353 0 discriminator 34
	l32i.n	a2, sp, 4
	retw.n
.L98:
.LBE14:
	.loc 1 355 0 is_stmt 1
	movi.n	a2, 0
	retw.n
.LVL182:
.L99:
	.loc 1 350 0
	l32r	a2, .LC87
.LVL183:
	.loc 1 356 0
	retw.n
.LFE40:
	.size	tcpip_adapter_set_old_ip_info, .-tcpip_adapter_set_old_ip_info
	.section	.text.tcpip_adapter_get_old_ip_info,"ax",@progbits
	.literal_position
	.literal .LC92, 20481
	.literal .LC93, esp_ip_old
	.align	4
	.global	tcpip_adapter_get_old_ip_info
	.type	tcpip_adapter_get_old_ip_info, @function
tcpip_adapter_get_old_ip_info:
.LFB41:
	.loc 1 359 0
.LVL184:
	entry	sp, 32
.LCFI23:
	.loc 1 360 0
	movi.n	a8, 1
	bgeui	a2, 3, .L101
	movi.n	a8, 0
.L101:
	extui	a8, a8, 0, 8
	movi.n	a10, 0
	movi.n	a9, 1
	movnez	a9, a10, a3
	or	a8, a9, a8
	bne	a8, a10, .L103
	.loc 1 364 0
	addx2	a2, a2, a2
.LVL185:
	slli	a8, a2, 2
	movi.n	a12, 0xc
	l32r	a11, .LC93
	add.n	a11, a11, a8
	mov.n	a10, a3
	call8	memcpy
.LVL186:
	.loc 1 365 0
	movi.n	a2, 0
	retw.n
.LVL187:
.L103:
	.loc 1 361 0
	l32r	a2, .LC92
.LVL188:
	.loc 1 366 0
	retw.n
.LFE41:
	.size	tcpip_adapter_get_old_ip_info, .-tcpip_adapter_get_old_ip_info
	.section	.text.tcpip_adapter_get_ip_info,"ax",@progbits
	.literal_position
	.literal .LC94, 20481
	.literal .LC95, esp_netif
	.literal .LC96, esp_ip
	.align	4
	.global	tcpip_adapter_get_ip_info
	.type	tcpip_adapter_get_ip_info, @function
tcpip_adapter_get_ip_info:
.LFB42:
	.loc 1 369 0
.LVL189:
	entry	sp, 32
.LCFI24:
	.loc 1 372 0
	movi.n	a8, 1
	bgeui	a2, 3, .L105
	movi.n	a8, 0
.L105:
	extui	a8, a8, 0, 8
	movi.n	a10, 0
	movi.n	a9, 1
	movnez	a9, a10, a3
	or	a8, a9, a8
	bne	a8, a10, .L111
	.loc 1 376 0
	l32r	a8, .LC95
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
.LVL190:
	.loc 1 378 0
	beq	a8, a10, .L107
	.loc 1 378 0 discriminator 1
	l8ui	a9, a8, 189
	bbc	a9, a10, .L107
	.loc 1 379 0
	addi.n	a2, a8, 4
.LVL191:
	.loc 1 379 0
	beq	a2, a10, .L112
	.loc 1 379 0 is_stmt 0 discriminator 1
	l32i.n	a2, a8, 4
	j	.L108
.L112:
	.loc 1 379 0
	movi.n	a2, 0
.L108:
	.loc 1 379 0 is_stmt 1 discriminator 4
	s32i.n	a2, a3, 0
	.loc 1 380 0 discriminator 4
	addi	a2, a8, 24
	.loc 1 380 0 discriminator 4
	beqz.n	a2, .L113
	.loc 1 380 0 is_stmt 0 discriminator 1
	l32i.n	a2, a8, 24
	j	.L109
.L113:
	.loc 1 380 0
	movi.n	a2, 0
.L109:
	.loc 1 380 0 is_stmt 1 discriminator 4
	s32i.n	a2, a3, 4
	.loc 1 381 0 discriminator 4
	addi	a2, a8, 44
	.loc 1 381 0 discriminator 4
	beqz.n	a2, .L114
	.loc 1 381 0 is_stmt 0 discriminator 1
	l32i.n	a2, a8, 44
	j	.L110
.L114:
	.loc 1 381 0
	movi.n	a2, 0
.L110:
	.loc 1 381 0 is_stmt 1 discriminator 4
	s32i.n	a2, a3, 8
	.loc 1 383 0 discriminator 4
	movi.n	a2, 0
	retw.n
.LVL192:
.L107:
	.loc 1 386 0
	l32r	a9, .LC96
	slli	a10, a2, 1
	add.n	a11, a10, a2
	slli	a8, a11, 2
.LVL193:
	add.n	a8, a9, a8
	l32i.n	a11, a8, 0
	s32i.n	a11, a3, 0
	.loc 1 387 0
	l32i.n	a8, a8, 8
	s32i.n	a8, a3, 8
	.loc 1 388 0
	add.n	a2, a10, a2
.LVL194:
	slli	a8, a2, 2
	add.n	a8, a9, a8
	l32i.n	a2, a8, 4
	s32i.n	a2, a3, 4
	.loc 1 390 0
	movi.n	a2, 0
	retw.n
.LVL195:
.L111:
	.loc 1 373 0
	l32r	a2, .LC94
.LVL196:
	.loc 1 391 0
	retw.n
.LFE42:
	.size	tcpip_adapter_get_ip_info, .-tcpip_adapter_get_ip_info
	.section	.text.tcpip_adapter_create_ip6_linklocal,"ax",@progbits
	.literal_position
	.literal .LC97, 20481
	.literal .LC98, tcpip_inited
	.literal .LC99, .LC2
	.literal .LC100, .LC23
	.literal .LC101, tcpip_adapter_create_ip6_linklocal_api
	.literal .LC102, esp_netif
	.literal .LC103, tcpip_adapter_nd6_cb
	.align	4
	.global	tcpip_adapter_create_ip6_linklocal
	.type	tcpip_adapter_create_ip6_linklocal, @function
tcpip_adapter_create_ip6_linklocal:
.LFB46:
	.loc 1 493 0
.LVL197:
	entry	sp, 64
.LCFI25:
.LBB15:
	.loc 1 496 0
	l32r	a8, .LC98
	l8ui	a8, a8, 0
	bnez.n	a8, .L116
	.loc 1 496 0 discriminator 5
	call8	esp_log_timestamp
.LVL198:
	l32r	a11, .LC99
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC100
	movi.n	a10, 1
	call8	esp_log_write
.LVL199:
	call8	abort
.LVL200:
.L116:
	.loc 1 496 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a2, sp, 12
	l32r	a8, .LC101
	s32i.n	a8, sp, 8
	mov.n	a10, sp
	call8	tcpip_adapter_ipc_check
.LVL201:
	bnei	a10, 1, .L117
	.loc 1 496 0 discriminator 34
	l32i.n	a2, sp, 4
.LVL202:
	retw.n
.LVL203:
.L117:
.LBE15:
	.loc 1 498 0 is_stmt 1
	bgeui	a2, 3, .L119
	.loc 1 502 0
	l32r	a8, .LC102
	addx4	a2, a2, a8
.LVL204:
	l32i.n	a2, a2, 0
.LVL205:
	.loc 1 503 0
	beqz.n	a2, .L120
	.loc 1 503 0 discriminator 1
	l8ui	a8, a2, 189
	bbci	a8, 0, .L121
	.loc 1 504 0
	movi.n	a11, 1
	mov.n	a10, a2
	call8	netif_create_ip6_linklocal_address
.LVL206:
	.loc 1 505 0
	l32r	a11, .LC103
	mov.n	a10, a2
	call8	nd6_set_cb
.LVL207:
	.loc 1 507 0
	movi.n	a2, 0
.LVL208:
	retw.n
.LVL209:
.L119:
	.loc 1 499 0
	l32r	a2, .LC97
.LVL210:
	retw.n
.LVL211:
.L120:
	.loc 1 509 0
	movi.n	a2, -1
.LVL212:
	retw.n
.LVL213:
.L121:
	movi.n	a2, -1
.LVL214:
	.loc 1 511 0
	retw.n
.LFE46:
	.size	tcpip_adapter_create_ip6_linklocal, .-tcpip_adapter_create_ip6_linklocal
	.section	.text.tcpip_adapter_create_ip6_linklocal_api,"ax",@progbits
	.align	4
	.type	tcpip_adapter_create_ip6_linklocal_api, @function
tcpip_adapter_create_ip6_linklocal_api:
.LFB47:
	.loc 1 514 0
.LVL215:
	entry	sp, 32
.LCFI26:
	.loc 1 515 0
	l32i.n	a10, a2, 12
	call8	tcpip_adapter_create_ip6_linklocal
.LVL216:
	.loc 1 516 0
	mov.n	a2, a10
.LVL217:
	retw.n
.LFE47:
	.size	tcpip_adapter_create_ip6_linklocal_api, .-tcpip_adapter_create_ip6_linklocal_api
	.section	.text.tcpip_adapter_get_ip6_linklocal,"ax",@progbits
	.literal_position
	.literal .LC104, 20481
	.literal .LC105, esp_netif
	.align	4
	.global	tcpip_adapter_get_ip6_linklocal
	.type	tcpip_adapter_get_ip6_linklocal, @function
tcpip_adapter_get_ip6_linklocal:
.LFB48:
	.loc 1 519 0
.LVL218:
	entry	sp, 32
.LCFI27:
	.loc 1 522 0
	movi.n	a8, 1
	bgeui	a2, 3, .L124
	movi.n	a8, 0
.L124:
	extui	a8, a8, 0, 8
	movi.n	a10, 0
	movi.n	a9, 1
	movnez	a9, a10, a3
	or	a8, a9, a8
	bne	a8, a10, .L126
	.loc 1 526 0
	l32r	a8, .LC105
	addx4	a2, a2, a8
.LVL219:
	l32i.n	a11, a2, 0
.LVL220:
	.loc 1 527 0
	beq	a11, a10, .L127
	.loc 1 527 0 discriminator 1
	l8ui	a2, a11, 189
	bbc	a2, a10, .L128
	.loc 1 527 0 is_stmt 0 discriminator 2
	l8ui	a8, a11, 124
	movi.n	a2, 0x30
	bne	a8, a2, .L129
	.loc 1 528 0 is_stmt 1
	movi.n	a12, 0x10
	addi	a11, a11, 64
.LVL221:
	mov.n	a10, a3
	call8	memcpy
.LVL222:
	.loc 1 532 0
	movi.n	a2, 0
	retw.n
.LVL223:
.L126:
	.loc 1 523 0
	l32r	a2, .LC104
.LVL224:
	retw.n
.LVL225:
.L127:
	.loc 1 530 0
	movi.n	a2, -1
	retw.n
.L128:
	movi.n	a2, -1
	retw.n
.L129:
	movi.n	a2, -1
	.loc 1 533 0
	retw.n
.LFE48:
	.size	tcpip_adapter_get_ip6_linklocal, .-tcpip_adapter_get_ip6_linklocal
	.section	.text.tcpip_adapter_dhcps_option,"ax",@progbits
	.literal_position
	.literal .LC106, 20481
	.literal .LC107, 20485
	.literal .LC108, 20484
	.literal .LC109, dhcps_status
	.align	4
	.global	tcpip_adapter_dhcps_option
	.type	tcpip_adapter_dhcps_option, @function
tcpip_adapter_dhcps_option:
.LFB49:
	.loc 1 576 0
.LVL226:
	entry	sp, 48
.LCFI28:
	.loc 1 577 0
	extui	a7, a3, 0, 8
	mov.n	a11, a5
	mov.n	a10, a7
	call8	dhcps_option_info
.LVL227:
	mov.n	a6, a10
.LVL228:
	.loc 1 579 0
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a6
	.loc 1 579 0
	movnez	a8, a10, a4
	or	a8, a8, a9
	.loc 1 579 0
	bne	a8, a10, .L153
	.loc 1 583 0
	bnei	a2, 2, .L132
	.loc 1 584 0
	l32r	a2, .LC109
.LVL229:
	l32i.n	a2, a2, 0
	beqi	a2, 2, .L154
	.loc 1 588 0
	beqi	a3, 32, .L133
	movi.n	a2, 0x20
	bltu	a2, a3, .L134
	beqi	a3, 6, .L135
	j	.L155
.L134:
	movi.n	a2, 0x32
	beq	a3, a2, .L136
	movi.n	a2, 0x33
	bne	a3, a2, .L155
	.loc 1 590 0
	l32i.n	a2, a6, 0
	s32i.n	a2, a4, 0
	.loc 1 689 0
	movi.n	a2, 0
	.loc 1 591 0
	retw.n
.L136:
	.loc 1 594 0
	mov.n	a12, a5
	mov.n	a11, a6
	mov.n	a10, a4
	call8	memcpy
.LVL230:
	.loc 1 689 0
	movi.n	a2, 0
	.loc 1 595 0
	retw.n
.L133:
	.loc 1 598 0
	l8ui	a2, a6, 0
	bbci	a2, 0, .L138
	.loc 1 599 0
	movi.n	a2, 1
	s8i	a2, a4, 0
	.loc 1 689 0
	movi.n	a2, 0
	retw.n
.L138:
	.loc 1 601 0
	movi.n	a2, 0
	s8i	a2, a4, 0
	.loc 1 689 0
	movi.n	a2, 0
	retw.n
.L135:
	.loc 1 606 0
	l8ui	a2, a6, 0
	bbci	a2, 1, .L139
	.loc 1 607 0
	movi.n	a2, 1
	s8i	a2, a4, 0
	.loc 1 689 0
	movi.n	a2, 0
	retw.n
.L139:
	.loc 1 609 0
	movi.n	a2, 0
	s8i	a2, a4, 0
	.loc 1 689 0
	movi.n	a2, 0
	retw.n
.LVL231:
.L132:
	.loc 1 616 0
	bnei	a2, 1, .L156
	.loc 1 617 0
	l32r	a2, .LC109
.LVL232:
	l32i.n	a2, a2, 0
	beqi	a2, 1, .L157
	.loc 1 621 0
	beqi	a3, 32, .L141
	movi.n	a2, 0x20
	bltu	a2, a3, .L142
	beqi	a3, 6, .L143
	j	.L140
.L142:
	movi.n	a2, 0x32
	beq	a3, a2, .L144
	movi.n	a2, 0x33
	bne	a3, a2, .L140
	.loc 1 623 0
	l32i.n	a2, a4, 0
	beqz.n	a2, .L146
	.loc 1 624 0
	s32i.n	a2, a6, 0
	j	.L140
.L146:
	.loc 1 626 0
	movi	a2, 0x78
	s32i.n	a2, a6, 0
	j	.L140
.L144:
.LVL233:
.LBB16:
	.loc 1 637 0
	l8ui	a2, a4, 0
	beqz.n	a2, .L147
	.loc 1 638 0
	movi.n	a2, 0
	s32i.n	a2, sp, 0
	s32i.n	a2, sp, 4
	s32i.n	a2, sp, 8
	.loc 1 639 0
	mov.n	a11, sp
	movi.n	a10, 1
	call8	tcpip_adapter_get_ip_info
.LVL234:
	.loc 1 640 0
	l32i.n	a10, sp, 0
	call8	lwip_htonl
.LVL235:
	mov.n	a2, a10
.LVL236:
	.loc 1 641 0
	l32i.n	a10, a4, 4
	call8	lwip_htonl
.LVL237:
	mov.n	a3, a10
.LVL238:
	.loc 1 642 0
	l32i.n	a10, a4, 8
	call8	lwip_htonl
.LVL239:
	.loc 1 645 0
	movi.n	a8, 1
	bgeu	a2, a3, .L148
	movi.n	a8, 0
.L148:
	extui	a8, a8, 0, 8
	movi.n	a9, 1
	bgeu	a10, a2, .L149
	movi.n	a9, 0
.L149:
	bany	a8, a9, .L150
	.loc 1 650 0
	srli	a2, a2, 8
.LVL240:
	.loc 1 651 0
	srli	a8, a3, 8
	bne	a2, a8, .L150
	.loc 1 652 0
	srli	a8, a10, 8
	bne	a2, a8, .L150
	.loc 1 656 0
	sub	a3, a10, a3
.LVL241:
	movi	a2, 0x64
.LVL242:
	bltu	a2, a3, .L150
.LVL243:
.L147:
	.loc 1 661 0
	mov.n	a12, a5
	mov.n	a11, a4
	mov.n	a10, a6
	call8	memcpy
.LVL244:
	j	.L140
.LVL245:
.L150:
	.loc 1 646 0 discriminator 1
	l32r	a2, .LC106
	retw.n
.LVL246:
.L141:
.LBE16:
	.loc 1 665 0
	l8ui	a2, a4, 0
	beqz.n	a2, .L151
	.loc 1 666 0
	l8ui	a3, a6, 0
.LVL247:
	movi.n	a2, 1
	or	a2, a3, a2
	s8i	a2, a6, 0
	j	.L140
.LVL248:
.L151:
	.loc 1 668 0
	l8ui	a3, a6, 0
.LVL249:
	movi.n	a2, -2
	and	a2, a3, a2
	s8i	a2, a6, 0
	j	.L140
.LVL250:
.L143:
	.loc 1 673 0
	l8ui	a2, a4, 0
	beqz.n	a2, .L152
	.loc 1 674 0
	l8ui	a3, a6, 0
.LVL251:
	movi.n	a2, 2
	or	a2, a3, a2
	s8i	a2, a6, 0
	j	.L140
.LVL252:
.L152:
	.loc 1 676 0
	l8ui	a3, a6, 0
.LVL253:
	movi.n	a2, -3
	and	a2, a3, a2
	s8i	a2, a6, 0
.L140:
	.loc 1 684 0
	mov.n	a12, a5
	mov.n	a11, a6
	mov.n	a10, a7
	call8	dhcps_set_option_info
.LVL254:
	.loc 1 689 0
	movi.n	a2, 0
	retw.n
.LVL255:
.L153:
	.loc 1 580 0
	l32r	a2, .LC106
.LVL256:
	retw.n
.L154:
	.loc 1 585 0
	l32r	a2, .LC107
	retw.n
.L155:
	.loc 1 689 0
	movi.n	a2, 0
	retw.n
.LVL257:
.L156:
	.loc 1 686 0
	l32r	a2, .LC106
.LVL258:
	retw.n
.L157:
	.loc 1 618 0
	l32r	a2, .LC108
	.loc 1 690 0
	retw.n
.LFE49:
	.size	tcpip_adapter_dhcps_option, .-tcpip_adapter_dhcps_option
	.section	.text.tcpip_adapter_set_dns_info,"ax",@progbits
	.literal_position
	.literal .LC110, 20481
	.literal .LC111, tcpip_inited
	.literal .LC112, .LC2
	.literal .LC113, .LC23
	.literal .LC114, tcpip_adapter_set_dns_info_api
	.align	4
	.global	tcpip_adapter_set_dns_info
	.type	tcpip_adapter_set_dns_info, @function
tcpip_adapter_set_dns_info:
.LFB50:
	.loc 1 693 0
.LVL259:
	entry	sp, 80
.LCFI29:
	.loc 1 696 0
	s32i.n	a3, sp, 0
	.loc 1 697 0
	s32i.n	a4, sp, 4
.LBB17:
	.loc 1 699 0
	l32r	a8, .LC111
	l8ui	a8, a8, 0
	bnez.n	a8, .L159
	.loc 1 699 0 discriminator 5
	call8	esp_log_timestamp
.LVL260:
	l32r	a11, .LC112
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC113
	movi.n	a10, 1
	call8	esp_log_write
.LVL261:
	call8	abort
.LVL262:
.L159:
	.loc 1 699 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	s32i.n	a8, sp, 24
	s32i.n	a2, sp, 20
	s32i.n	a3, sp, 28
	s32i.n	sp, sp, 32
	l32r	a8, .LC114
	s32i.n	a8, sp, 16
	addi.n	a10, sp, 8
	call8	tcpip_adapter_ipc_check
.LVL263:
	bnei	a10, 1, .L160
	.loc 1 699 0 discriminator 34
	l32i.n	a2, sp, 12
.LVL264:
	retw.n
.LVL265:
.L160:
.LBE17:
	.loc 1 701 0 is_stmt 1
	bgeui	a2, 3, .L163
	.loc 1 706 0
	beqz.n	a4, .L164
	.loc 1 711 0
	bgeui	a3, 3, .L165
	.loc 1 716 0
	l32i.n	a8, a4, 0
	beqz.n	a8, .L166
	.loc 1 722 0
	movi.n	a8, 0
	s8i	a8, a4, 16
	.loc 1 724 0
	movi.n	a11, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a11, a2
	addi	a8, a2, -2
	mov.n	a2, a10
.LVL266:
	moveqz	a2, a11, a8
	or	a2, a2, a9
	beq	a2, a10, .L162
	.loc 1 725 0
	mov.n	a11, a4
	extui	a10, a3, 0, 8
	call8	dns_setserver
.LVL267:
	.loc 1 735 0
	movi.n	a2, 0
	retw.n
.L162:
	.loc 1 727 0
	bnez.n	a3, .L167
	.loc 1 731 0
	mov.n	a10, a4
	call8	dhcps_dns_setserver
.LVL268:
	.loc 1 735 0
	movi.n	a2, 0
	retw.n
.LVL269:
.L163:
	.loc 1 703 0
	l32r	a2, .LC110
.LVL270:
	retw.n
.LVL271:
.L164:
	.loc 1 708 0
	l32r	a2, .LC110
.LVL272:
	retw.n
.LVL273:
.L165:
	.loc 1 713 0
	l32r	a2, .LC110
.LVL274:
	retw.n
.LVL275:
.L166:
	.loc 1 718 0
	l32r	a2, .LC110
.LVL276:
	retw.n
.LVL277:
.L167:
	.loc 1 729 0
	l32r	a2, .LC110
	.loc 1 736 0
	retw.n
.LFE50:
	.size	tcpip_adapter_set_dns_info, .-tcpip_adapter_set_dns_info
	.section	.text.tcpip_adapter_set_dns_info_api,"ax",@progbits
	.align	4
	.type	tcpip_adapter_set_dns_info_api, @function
tcpip_adapter_set_dns_info_api:
.LFB51:
	.loc 1 739 0
.LVL278:
	entry	sp, 32
.LCFI30:
	.loc 1 740 0
	l32i.n	a8, a2, 24
.LVL279:
	.loc 1 742 0
	l32i.n	a12, a8, 4
	l32i.n	a11, a8, 0
	l32i.n	a10, a2, 12
	call8	tcpip_adapter_set_dns_info
.LVL280:
	.loc 1 743 0
	mov.n	a2, a10
.LVL281:
	retw.n
.LFE51:
	.size	tcpip_adapter_set_dns_info_api, .-tcpip_adapter_set_dns_info_api
	.section	.text.tcpip_adapter_get_dns_info,"ax",@progbits
	.literal_position
	.literal .LC115, 20481
	.literal .LC116, tcpip_inited
	.literal .LC117, .LC2
	.literal .LC118, .LC23
	.literal .LC119, tcpip_adapter_get_dns_info_api
	.align	4
	.global	tcpip_adapter_get_dns_info
	.type	tcpip_adapter_get_dns_info, @function
tcpip_adapter_get_dns_info:
.LFB52:
	.loc 1 746 0
.LVL282:
	entry	sp, 112
.LCFI31:
	.loc 1 749 0
	s32i.n	a3, sp, 0
	.loc 1 750 0
	s32i.n	a4, sp, 4
.LBB18:
	.loc 1 752 0
	l32r	a8, .LC116
	l8ui	a8, a8, 0
	bnez.n	a8, .L170
	.loc 1 752 0 discriminator 5
	call8	esp_log_timestamp
.LVL283:
	l32r	a11, .LC117
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC118
	movi.n	a10, 1
	call8	esp_log_write
.LVL284:
	call8	abort
.LVL285:
.L170:
	.loc 1 752 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	s32i.n	a8, sp, 24
	s32i.n	a2, sp, 20
	s32i.n	a3, sp, 28
	s32i.n	sp, sp, 32
	l32r	a8, .LC119
	s32i.n	a8, sp, 16
	addi.n	a10, sp, 8
	call8	tcpip_adapter_ipc_check
.LVL286:
	bnei	a10, 1, .L171
	.loc 1 752 0 discriminator 34
	l32i.n	a2, sp, 12
.LVL287:
	retw.n
.LVL288:
.L171:
.LBE18:
	.loc 1 753 0 is_stmt 1
	beqz.n	a4, .L174
	.loc 1 758 0
	bgeui	a3, 3, .L175
	.loc 1 763 0
	bgeui	a2, 3, .L176
	.loc 1 768 0
	movi.n	a11, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a11, a2
	addi	a8, a2, -2
	mov.n	a2, a10
.LVL289:
	moveqz	a2, a11, a8
	or	a2, a2, a9
	beq	a2, a10, .L173
	.loc 1 769 0
	extui	a11, a3, 0, 8
	addi	a10, sp, 48
	call8	dns_getserver
.LVL290:
	movi.n	a12, 0x14
	addi	a11, sp, 48
	mov.n	a10, a4
	call8	memcpy
.LVL291:
	.loc 1 774 0
	movi.n	a2, 0
	retw.n
.L173:
	.loc 1 771 0
	call8	dhcps_dns_getserver
.LVL292:
	s32i.n	a10, a4, 0
	.loc 1 774 0
	movi.n	a2, 0
	retw.n
.LVL293:
.L174:
	.loc 1 755 0
	l32r	a2, .LC115
.LVL294:
	retw.n
.LVL295:
.L175:
	.loc 1 760 0
	l32r	a2, .LC115
.LVL296:
	retw.n
.LVL297:
.L176:
	.loc 1 765 0
	l32r	a2, .LC115
.LVL298:
	.loc 1 775 0
	retw.n
.LFE52:
	.size	tcpip_adapter_get_dns_info, .-tcpip_adapter_get_dns_info
	.section	.text.tcpip_adapter_get_dns_info_api,"ax",@progbits
	.align	4
	.type	tcpip_adapter_get_dns_info_api, @function
tcpip_adapter_get_dns_info_api:
.LFB53:
	.loc 1 778 0
.LVL299:
	entry	sp, 32
.LCFI32:
	.loc 1 779 0
	l32i.n	a8, a2, 24
.LVL300:
	.loc 1 781 0
	l32i.n	a12, a8, 4
	l32i.n	a11, a8, 0
	l32i.n	a10, a2, 12
	call8	tcpip_adapter_get_dns_info
.LVL301:
	.loc 1 782 0
	mov.n	a2, a10
.LVL302:
	retw.n
.LFE53:
	.size	tcpip_adapter_get_dns_info_api, .-tcpip_adapter_get_dns_info_api
	.section	.text.tcpip_adapter_dhcps_get_status,"ax",@progbits
	.literal_position
	.literal .LC120, dhcps_status
	.align	4
	.global	tcpip_adapter_dhcps_get_status
	.type	tcpip_adapter_dhcps_get_status, @function
tcpip_adapter_dhcps_get_status:
.LFB54:
	.loc 1 785 0
.LVL303:
	entry	sp, 32
.LCFI33:
	.loc 1 786 0
	l32r	a8, .LC120
	l32i.n	a8, a8, 0
	s32i.n	a8, a3, 0
	.loc 1 789 0
	movi.n	a2, 0
.LVL304:
	retw.n
.LFE54:
	.size	tcpip_adapter_dhcps_get_status, .-tcpip_adapter_dhcps_get_status
	.section	.text.tcpip_adapter_dhcps_start,"ax",@progbits
	.literal_position
	.literal .LC121, 20481
	.literal .LC122, 20484
	.literal .LC123, tcpip_inited
	.literal .LC124, .LC2
	.literal .LC125, .LC23
	.literal .LC126, tcpip_adapter_dhcps_start_api
	.literal .LC127, dhcps_status
	.literal .LC128, esp_netif
	.align	4
	.global	tcpip_adapter_dhcps_start
	.type	tcpip_adapter_dhcps_start, @function
tcpip_adapter_dhcps_start:
.LFB55:
	.loc 1 792 0
.LVL305:
	entry	sp, 64
.LCFI34:
.LBB19:
	.loc 1 793 0
	l32r	a8, .LC123
	l8ui	a8, a8, 0
	bnez.n	a8, .L180
	.loc 1 793 0 discriminator 5
	call8	esp_log_timestamp
.LVL306:
	l32r	a11, .LC124
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC125
	movi.n	a10, 1
	call8	esp_log_write
.LVL307:
	call8	abort
.LVL308:
.L180:
	.loc 1 793 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a2, sp, 12
	l32r	a8, .LC126
	s32i.n	a8, sp, 8
	mov.n	a10, sp
	call8	tcpip_adapter_ipc_check
.LVL309:
	bnei	a10, 1, .L181
	.loc 1 793 0 discriminator 34
	l32i.n	a2, sp, 4
.LVL310:
	retw.n
.LVL311:
.L181:
.LBE19:
	.loc 1 796 0 is_stmt 1
	bnei	a2, 1, .L184
	.loc 1 801 0
	l32r	a8, .LC127
	l32i.n	a8, a8, 0
	beqi	a8, 1, .L185
.LBB20:
	.loc 1 802 0
	l32r	a8, .LC128
	addx4	a2, a2, a8
.LVL312:
	l32i.n	a2, a2, 0
.LVL313:
	.loc 1 804 0
	beqz.n	a2, .L183
	.loc 1 804 0 discriminator 1
	l8ui	a8, a2, 189
	bbci	a8, 0, .L183
.LBB21:
	.loc 1 806 0
	mov.n	a11, sp
	movi.n	a10, 1
	call8	tcpip_adapter_get_ip_info
.LVL314:
	.loc 1 807 0
	l32i.n	a11, sp, 0
	mov.n	a10, a2
	call8	dhcps_start
.LVL315:
	.loc 1 808 0
	movi.n	a8, 1
	l32r	a2, .LC127
.LVL316:
	s32i.n	a8, a2, 0
	.loc 1 810 0
	movi.n	a2, 0
	retw.n
.LVL317:
.L183:
.LBE21:
	.loc 1 813 0
	movi.n	a2, 0
.LVL318:
	l32r	a8, .LC127
	s32i.n	a2, a8, 0
	.loc 1 814 0
	retw.n
.LVL319:
.L184:
.LBE20:
	.loc 1 798 0
	l32r	a2, .LC121
.LVL320:
	retw.n
.LVL321:
.L185:
	.loc 1 819 0
	l32r	a2, .LC122
.LVL322:
	.loc 1 820 0
	retw.n
.LFE55:
	.size	tcpip_adapter_dhcps_start, .-tcpip_adapter_dhcps_start
	.section	.text.tcpip_adapter_dhcps_start_api,"ax",@progbits
	.align	4
	.type	tcpip_adapter_dhcps_start_api, @function
tcpip_adapter_dhcps_start_api:
.LFB56:
	.loc 1 823 0
.LVL323:
	entry	sp, 32
.LCFI35:
	.loc 1 824 0
	l32i.n	a10, a2, 12
	call8	tcpip_adapter_dhcps_start
.LVL324:
	.loc 1 825 0
	mov.n	a2, a10
.LVL325:
	retw.n
.LFE56:
	.size	tcpip_adapter_dhcps_start_api, .-tcpip_adapter_dhcps_start_api
	.section	.text.tcpip_adapter_dhcps_stop,"ax",@progbits
	.literal_position
	.literal .LC129, 20481
	.literal .LC130, 20482
	.literal .LC131, 20485
	.literal .LC132, tcpip_inited
	.literal .LC133, .LC2
	.literal .LC134, .LC23
	.literal .LC135, tcpip_adapter_dhcps_stop_api
	.literal .LC136, dhcps_status
	.literal .LC137, esp_netif
	.align	4
	.global	tcpip_adapter_dhcps_stop
	.type	tcpip_adapter_dhcps_stop, @function
tcpip_adapter_dhcps_stop:
.LFB57:
	.loc 1 829 0
.LVL326:
	entry	sp, 64
.LCFI36:
.LBB22:
	.loc 1 830 0
	l32r	a8, .LC132
	l8ui	a8, a8, 0
	bnez.n	a8, .L188
	.loc 1 830 0 discriminator 5
	call8	esp_log_timestamp
.LVL327:
	l32r	a11, .LC133
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC134
	movi.n	a10, 1
	call8	esp_log_write
.LVL328:
	call8	abort
.LVL329:
.L188:
	.loc 1 830 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a2, sp, 12
	l32r	a8, .LC135
	s32i.n	a8, sp, 8
	mov.n	a10, sp
	call8	tcpip_adapter_ipc_check
.LVL330:
	bnei	a10, 1, .L189
	.loc 1 830 0 discriminator 34
	l32i.n	a2, sp, 4
.LVL331:
	retw.n
.LVL332:
.L189:
.LBE22:
	.loc 1 833 0 is_stmt 1
	bnei	a2, 1, .L193
	.loc 1 838 0
	l32r	a8, .LC136
	l32i.n	a8, a8, 0
	bnei	a8, 1, .L191
.LBB23:
	.loc 1 839 0
	l32r	a8, .LC137
	addx4	a2, a2, a8
.LVL333:
	l32i.n	a10, a2, 0
.LVL334:
	.loc 1 841 0
	beqz.n	a10, .L194
	.loc 1 842 0
	call8	dhcps_stop
.LVL335:
.LBE23:
	j	.L192
.LVL336:
.L191:
	.loc 1 847 0
	beqi	a8, 2, .L195
.LVL337:
.L192:
	.loc 1 853 0
	movi.n	a8, 2
	l32r	a2, .LC136
	s32i.n	a8, a2, 0
	.loc 1 854 0
	movi.n	a2, 0
	retw.n
.LVL338:
.L193:
	.loc 1 835 0
	l32r	a2, .LC129
.LVL339:
	retw.n
.LVL340:
.L194:
.LBB24:
	.loc 1 845 0
	l32r	a2, .LC130
	retw.n
.LVL341:
.L195:
.LBE24:
	.loc 1 849 0
	l32r	a2, .LC131
.LVL342:
	.loc 1 855 0
	retw.n
.LFE57:
	.size	tcpip_adapter_dhcps_stop, .-tcpip_adapter_dhcps_stop
	.section	.text.tcpip_adapter_dhcps_stop_api,"ax",@progbits
	.align	4
	.type	tcpip_adapter_dhcps_stop_api, @function
tcpip_adapter_dhcps_stop_api:
.LFB58:
	.loc 1 858 0
.LVL343:
	entry	sp, 32
.LCFI37:
	.loc 1 859 0
	l32i.n	a10, a2, 12
	call8	tcpip_adapter_dhcps_stop
.LVL344:
	.loc 1 860 0
	mov.n	a2, a10
.LVL345:
	retw.n
.LFE58:
	.size	tcpip_adapter_dhcps_stop_api, .-tcpip_adapter_dhcps_stop_api
	.section	.text.tcpip_adapter_dhcpc_option,"ax",@progbits
	.align	4
	.global	tcpip_adapter_dhcpc_option
	.type	tcpip_adapter_dhcpc_option, @function
tcpip_adapter_dhcpc_option:
.LFB59:
	.loc 1 863 0
.LVL346:
	entry	sp, 32
.LCFI38:
	.loc 1 866 0
	movi.n	a2, 0
.LVL347:
	retw.n
.LFE59:
	.size	tcpip_adapter_dhcpc_option, .-tcpip_adapter_dhcpc_option
	.section	.text.tcpip_adapter_dhcpc_get_status,"ax",@progbits
	.literal_position
	.literal .LC138, dhcpc_status
	.align	4
	.global	tcpip_adapter_dhcpc_get_status
	.type	tcpip_adapter_dhcpc_get_status, @function
tcpip_adapter_dhcpc_get_status:
.LFB63:
	.loc 1 988 0
.LVL348:
	entry	sp, 32
.LCFI39:
	.loc 1 989 0
	l32r	a8, .LC138
	addx4	a2, a2, a8
.LVL349:
	l32i.n	a2, a2, 0
	s32i.n	a2, a3, 0
	.loc 1 992 0
	movi.n	a2, 0
	retw.n
.LFE63:
	.size	tcpip_adapter_dhcpc_get_status, .-tcpip_adapter_dhcpc_get_status
	.section	.text.tcpip_adapter_set_ip_info,"ax",@progbits
	.literal_position
	.literal .LC139, 20481
	.literal .LC140, 20487
	.literal .LC141, tcpip_inited
	.literal .LC142, .LC2
	.literal .LC143, .LC23
	.literal .LC144, tcpip_adapter_set_ip_info_api
	.literal .LC145, esp_ip
	.literal .LC146, esp_netif
	.literal .LC147, esp_ip_old
	.align	4
	.global	tcpip_adapter_set_ip_info
	.type	tcpip_adapter_set_ip_info, @function
tcpip_adapter_set_ip_info:
.LFB43:
	.loc 1 394 0
.LVL350:
	entry	sp, 96
.LCFI40:
.LBB25:
	.loc 1 398 0
	l32r	a8, .LC141
	l8ui	a8, a8, 0
	bnez.n	a8, .L200
	.loc 1 398 0 discriminator 5
	call8	esp_log_timestamp
.LVL351:
	l32r	a11, .LC142
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC143
	movi.n	a10, 1
	call8	esp_log_write
.LVL352:
	call8	abort
.LVL353:
.L200:
	.loc 1 398 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	s32i.n	a2, sp, 16
	s32i.n	a3, sp, 20
	l32r	a8, .LC144
	s32i.n	a8, sp, 12
	addi.n	a10, sp, 4
	call8	tcpip_adapter_ipc_check
.LVL354:
	bnei	a10, 1, .L201
	.loc 1 398 0 discriminator 34
	l32i.n	a2, sp, 8
.LVL355:
	retw.n
.LVL356:
.L201:
.LBE25:
	.loc 1 400 0 is_stmt 1
	movi.n	a8, 1
	bgeui	a2, 3, .L203
	movi.n	a8, 0
.L203:
	extui	a8, a8, 0, 8
	movi.n	a10, 0
	movi.n	a9, 1
	movnez	a9, a10, a3
	or	a8, a9, a8
	bne	a8, a10, .L209
	.loc 1 404 0
	bnei	a2, 1, .L204
	.loc 1 405 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	tcpip_adapter_dhcps_get_status
.LVL357:
	.loc 1 407 0
	l32i.n	a8, sp, 0
	bnei	a8, 2, .L210
	j	.L205
.L204:
	.loc 1 410 0
	movi.n	a11, 1
	movi.n	a8, 0
	mov.n	a9, a8
	moveqz	a9, a11, a2
	addi	a10, a2, -2
	moveqz	a8, a11, a10
	or	a8, a8, a9
	beqz.n	a8, .L205
	.loc 1 411 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	tcpip_adapter_dhcpc_get_status
.LVL358:
	.loc 1 413 0
	l32i.n	a8, sp, 0
	bnei	a8, 2, .L211
	.loc 1 417 0
	movi.n	a10, 1
	call8	dns_clear_servers
.LVL359:
.L205:
	.loc 1 421 0
	l32i.n	a9, a3, 0
	addx2	a8, a2, a2
	l32r	a10, .LC145
	addx4	a8, a8, a10
	s32i.n	a9, a8, 0
	.loc 1 422 0
	l32i.n	a9, a3, 8
	s32i.n	a9, a8, 8
	.loc 1 423 0
	l32i.n	a9, a3, 4
	s32i.n	a9, a8, 4
	.loc 1 425 0
	l32r	a8, .LC146
	addx4	a8, a2, a8
	l32i.n	a10, a8, 0
.LVL360:
	.loc 1 427 0
	beqz.n	a10, .L212
	.loc 1 427 0 discriminator 1
	l8ui	a8, a10, 189
	bbci	a8, 0, .L213
	.loc 1 428 0
	addi.n	a13, a3, 8
	addi.n	a12, a3, 4
	mov.n	a11, a3
	call8	netif_set_addr
.LVL361:
	.loc 1 429 0
	movi.n	a11, 1
	movi.n	a8, 0
	mov.n	a9, a8
	moveqz	a9, a11, a2
	addi	a10, a2, -2
	moveqz	a8, a11, a10
	or	a8, a8, a9
	beqz.n	a8, .L214
	.loc 1 430 0
	l32i.n	a8, a3, 0
	beqz.n	a8, .L215
	.loc 1 430 0 is_stmt 0 discriminator 1
	l32i.n	a8, a3, 4
	beqz.n	a8, .L216
	.loc 1 430 0 discriminator 2
	l32i.n	a8, a3, 8
	beqz.n	a8, .L217
.LBB26:
	.loc 1 432 0 is_stmt 1
	bnez.n	a2, .L206
	.loc 1 433 0
	movi.n	a4, 7
	s32i.n	a4, sp, 4
	j	.L207
.L206:
	.loc 1 434 0
	bnei	a2, 2, .L207
	.loc 1 435 0
	movi.n	a4, 0x18
	s32i.n	a4, sp, 4
.L207:
	.loc 1 437 0
	movi.n	a4, 0
	s8i	a4, sp, 20
	.loc 1 439 0
	addx2	a2, a2, a2
.LVL362:
	l32r	a4, .LC147
	addx4	a2, a2, a4
	movi.n	a12, 0xc
	mov.n	a11, a2
	mov.n	a10, a3
.LVL363:
	call8	memcmp
.LVL364:
	beqz.n	a10, .L208
	.loc 1 440 0
	movi.n	a4, 1
	s8i	a4, sp, 20
.L208:
	.loc 1 443 0
	movi.n	a4, 0xc
	mov.n	a12, a4
	mov.n	a11, a3
	addi.n	a10, sp, 8
	call8	memcpy
.LVL365:
	.loc 1 444 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	memcpy
.LVL366:
	.loc 1 445 0
	addi.n	a10, sp, 4
	call8	esp_event_send
.LVL367:
.LBE26:
	.loc 1 451 0
	movi.n	a2, 0
	retw.n
.LVL368:
.L209:
	.loc 1 401 0
	l32r	a2, .LC139
.LVL369:
	retw.n
.LVL370:
.L210:
	.loc 1 408 0
	l32r	a2, .LC140
.LVL371:
	retw.n
.LVL372:
.L211:
	.loc 1 414 0
	l32r	a2, .LC140
.LVL373:
	retw.n
.LVL374:
.L212:
	.loc 1 451 0
	movi.n	a2, 0
.LVL375:
	retw.n
.LVL376:
.L213:
	movi.n	a2, 0
.LVL377:
	retw.n
.LVL378:
.L214:
	movi.n	a2, 0
.LVL379:
	retw.n
.LVL380:
.L215:
	movi.n	a2, 0
.LVL381:
	retw.n
.LVL382:
.L216:
	movi.n	a2, 0
.LVL383:
	retw.n
.LVL384:
.L217:
	movi.n	a2, 0
.LVL385:
	.loc 1 452 0
	retw.n
.LFE43:
	.size	tcpip_adapter_set_ip_info, .-tcpip_adapter_set_ip_info
	.section	.text.tcpip_adapter_set_ip_info_api,"ax",@progbits
	.align	4
	.type	tcpip_adapter_set_ip_info_api, @function
tcpip_adapter_set_ip_info_api:
.LFB44:
	.loc 1 455 0
.LVL386:
	entry	sp, 32
.LCFI41:
	.loc 1 456 0
	l32i.n	a11, a2, 16
	l32i.n	a10, a2, 12
	call8	tcpip_adapter_set_ip_info
.LVL387:
	.loc 1 457 0
	mov.n	a2, a10
.LVL388:
	retw.n
.LFE44:
	.size	tcpip_adapter_set_ip_info_api, .-tcpip_adapter_set_ip_info_api
	.section	.text.tcpip_adapter_dhcpc_start,"ax",@progbits
	.literal_position
	.literal .LC148, 20481
	.literal .LC149, 20483
	.literal .LC150, 20484
	.literal .LC151, tcpip_inited
	.literal .LC152, .LC2
	.literal .LC153, .LC23
	.literal .LC154, tcpip_adapter_dhcpc_start_api
	.literal .LC155, dhcpc_status
	.literal .LC156, esp_netif
	.literal .LC157, tcpip_adapter_dhcpc_cb
	.align	4
	.global	tcpip_adapter_dhcpc_start
	.type	tcpip_adapter_dhcpc_start, @function
tcpip_adapter_dhcpc_start:
.LFB64:
	.loc 1 995 0
.LVL389:
	entry	sp, 64
.LCFI42:
.LBB27:
	.loc 1 996 0
	l32r	a8, .LC151
	l8ui	a8, a8, 0
	bnez.n	a8, .L220
	.loc 1 996 0 discriminator 5
	call8	esp_log_timestamp
.LVL390:
	l32r	a11, .LC152
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC153
	movi.n	a10, 1
	call8	esp_log_write
.LVL391:
	call8	abort
.LVL392:
.L220:
	.loc 1 996 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a2, sp, 12
	l32r	a8, .LC154
	s32i.n	a8, sp, 8
	mov.n	a10, sp
	call8	tcpip_adapter_ipc_check
.LVL393:
	bnei	a10, 1, .L221
	.loc 1 996 0 discriminator 34
	l32i.n	a2, sp, 4
.LVL394:
	retw.n
.LVL395:
.L221:
.LBE27:
	.loc 1 998 0 is_stmt 1
	movi.n	a10, 1
	movi.n	a8, 0
	mov.n	a11, a8
	movnez	a11, a10, a2
	addi	a9, a2, -2
	movnez	a8, a10, a9
	bany	a8, a11, .L229
	.loc 1 998 0 is_stmt 0 discriminator 1
	bgeui	a2, 3, .L230
	.loc 1 1003 0 is_stmt 1
	l32r	a3, .LC155
	addx4	a3, a2, a3
	l32i.n	a3, a3, 0
	beq	a3, a10, .L231
.LBB28:
	.loc 1 1004 0
	l32r	a3, .LC156
	addx4	a3, a2, a3
	l32i.n	a3, a3, 0
.LVL396:
	.loc 1 1006 0
	mov.n	a10, a2
	call8	tcpip_adapter_reset_ip_info
.LVL397:
	.loc 1 1008 0
	movi.n	a10, 1
	call8	dns_clear_servers
.LVL398:
	.loc 1 1011 0
	beqz.n	a3, .L223
	.loc 1 1012 0
	beqz.n	a3, .L224
	.loc 1 1012 0 is_stmt 0 discriminator 1
	l8ui	a8, a3, 189
	bbci	a8, 0, .L224
	.loc 1 1014 0 is_stmt 1
	movi.n	a8, 0
	s32i.n	a8, a3, 4
	s32i.n	a8, a3, 8
	s32i.n	a8, a3, 12
	s32i.n	a8, a3, 16
	addi.n	a8, a3, 4
	beqz.n	a8, .L225
	.loc 1 1014 0 discriminator 1
	movi.n	a8, 0
	s8i	a8, a3, 20
.L225:
	.loc 1 1015 0
	movi.n	a8, 0
	s32i.n	a8, a3, 24
	s32i.n	a8, a3, 28
	s32i.n	a8, a3, 32
	s32i.n	a8, a3, 36
	addi	a8, a3, 24
	beqz.n	a8, .L226
	.loc 1 1015 0 discriminator 1
	movi.n	a8, 0
	s8i	a8, a3, 40
.L226:
	.loc 1 1016 0
	movi.n	a8, 0
	s32i.n	a8, a3, 44
	s32i.n	a8, a3, 48
	s32i.n	a8, a3, 52
	s32i.n	a8, a3, 56
	addi	a8, a3, 44
	beqz.n	a8, .L227
	.loc 1 1016 0 discriminator 1
	movi.n	a8, 0
	s8i	a8, a3, 60
.L227:
	.loc 1 1017 0
	mov.n	a10, a2
	call8	tcpip_adapter_start_ip_lost_timer
.LVL399:
	.loc 1 1024 0
	mov.n	a10, a3
	call8	dhcp_start
.LVL400:
	extui	a10, a10, 0, 8
	bnez.n	a10, .L232
	j	.L233
.L224:
	.loc 1 1020 0
	l32r	a3, .LC155
.LVL401:
	addx4	a3, a2, a3
	movi.n	a2, 0
.LVL402:
	s32i.n	a2, a3, 0
	.loc 1 1021 0
	retw.n
.LVL403:
.L233:
	.loc 1 1029 0
	l32r	a11, .LC157
	mov.n	a10, a3
	call8	dhcp_set_cb
.LVL404:
	.loc 1 1032 0
	l32r	a3, .LC155
.LVL405:
	addx4	a2, a2, a3
.LVL406:
	movi.n	a3, 1
	s32i.n	a3, a2, 0
	.loc 1 1033 0
	movi.n	a2, 0
	retw.n
.LVL407:
.L223:
	.loc 1 1036 0
	l32r	a8, .LC155
	addx4	a8, a2, a8
	movi.n	a2, 0
.LVL408:
	s32i.n	a2, a8, 0
	.loc 1 1037 0
	retw.n
.LVL409:
.L229:
.LBE28:
	.loc 1 1000 0
	l32r	a2, .LC148
.LVL410:
	retw.n
.LVL411:
.L230:
	l32r	a2, .LC148
.LVL412:
	retw.n
.LVL413:
.L231:
	.loc 1 1042 0
	l32r	a2, .LC150
.LVL414:
	retw.n
.LVL415:
.L232:
.LBB29:
	.loc 1 1026 0
	l32r	a2, .LC149
.LVL416:
.LBE29:
	.loc 1 1043 0
	retw.n
.LFE64:
	.size	tcpip_adapter_dhcpc_start, .-tcpip_adapter_dhcpc_start
	.section	.text.tcpip_adapter_dhcpc_start_api,"ax",@progbits
	.align	4
	.type	tcpip_adapter_dhcpc_start_api, @function
tcpip_adapter_dhcpc_start_api:
.LFB65:
	.loc 1 1046 0
.LVL417:
	entry	sp, 32
.LCFI43:
	.loc 1 1047 0
	l32i.n	a10, a2, 12
	call8	tcpip_adapter_dhcpc_start
.LVL418:
	.loc 1 1048 0
	mov.n	a2, a10
.LVL419:
	retw.n
.LFE65:
	.size	tcpip_adapter_dhcpc_start_api, .-tcpip_adapter_dhcpc_start_api
	.section	.text.tcpip_adapter_dhcpc_stop,"ax",@progbits
	.literal_position
	.literal .LC158, 20481
	.literal .LC159, 20482
	.literal .LC160, 20485
	.literal .LC161, tcpip_inited
	.literal .LC162, .LC2
	.literal .LC163, .LC23
	.literal .LC164, tcpip_adapter_dhcpc_stop_api
	.literal .LC165, dhcpc_status
	.literal .LC166, esp_netif
	.align	4
	.global	tcpip_adapter_dhcpc_stop
	.type	tcpip_adapter_dhcpc_stop, @function
tcpip_adapter_dhcpc_stop:
.LFB66:
	.loc 1 1051 0
.LVL420:
	entry	sp, 64
.LCFI44:
.LBB30:
	.loc 1 1052 0
	l32r	a8, .LC161
	l8ui	a8, a8, 0
	bnez.n	a8, .L236
	.loc 1 1052 0 discriminator 5
	call8	esp_log_timestamp
.LVL421:
	l32r	a11, .LC162
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC163
	movi.n	a10, 1
	call8	esp_log_write
.LVL422:
	call8	abort
.LVL423:
.L236:
	.loc 1 1052 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a2, sp, 12
	l32r	a8, .LC164
	s32i.n	a8, sp, 8
	mov.n	a10, sp
	call8	tcpip_adapter_ipc_check
.LVL424:
	bnei	a10, 1, .L237
	.loc 1 1052 0 discriminator 34
	l32i.n	a2, sp, 4
.LVL425:
	retw.n
.LVL426:
.L237:
.LBE30:
	.loc 1 1054 0 is_stmt 1
	movi.n	a10, 1
	movi.n	a8, 0
	mov.n	a11, a8
	movnez	a11, a10, a2
	addi	a9, a2, -2
	movnez	a8, a10, a9
	bany	a8, a11, .L241
	.loc 1 1054 0 is_stmt 0 discriminator 1
	bgeui	a2, 3, .L242
	.loc 1 1059 0 is_stmt 1
	l32r	a8, .LC165
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	bne	a8, a10, .L239
.LBB31:
	.loc 1 1060 0
	l32r	a8, .LC166
	addx4	a8, a2, a8
	l32i.n	a10, a8, 0
.LVL427:
	.loc 1 1062 0
	beqz.n	a10, .L243
	.loc 1 1063 0
	call8	dhcp_stop
.LVL428:
	.loc 1 1064 0
	mov.n	a10, a2
	call8	tcpip_adapter_reset_ip_info
.LVL429:
	.loc 1 1065 0
	mov.n	a10, a2
	call8	tcpip_adapter_start_ip_lost_timer
.LVL430:
.LBE31:
	j	.L240
.L239:
	.loc 1 1070 0
	beqi	a8, 2, .L244
.L240:
	.loc 1 1076 0
	l32r	a8, .LC165
	addx4	a2, a2, a8
.LVL431:
	movi.n	a8, 2
	s32i.n	a8, a2, 0
	.loc 1 1080 0
	movi.n	a2, 0
	retw.n
.LVL432:
.L241:
	.loc 1 1056 0
	l32r	a2, .LC158
.LVL433:
	retw.n
.LVL434:
.L242:
	l32r	a2, .LC158
.LVL435:
	retw.n
.LVL436:
.L243:
.LBB32:
	.loc 1 1068 0
	l32r	a2, .LC159
.LVL437:
	retw.n
.LVL438:
.L244:
.LBE32:
	.loc 1 1072 0
	l32r	a2, .LC160
.LVL439:
	.loc 1 1081 0
	retw.n
.LFE66:
	.size	tcpip_adapter_dhcpc_stop, .-tcpip_adapter_dhcpc_stop
	.section	.text.tcpip_adapter_dhcpc_stop_api,"ax",@progbits
	.align	4
	.type	tcpip_adapter_dhcpc_stop_api, @function
tcpip_adapter_dhcpc_stop_api:
.LFB67:
	.loc 1 1084 0
.LVL440:
	entry	sp, 32
.LCFI45:
	.loc 1 1085 0
	l32i.n	a10, a2, 12
	call8	tcpip_adapter_dhcpc_stop
.LVL441:
	.loc 1 1086 0
	mov.n	a2, a10
.LVL442:
	retw.n
.LFE67:
	.size	tcpip_adapter_dhcpc_stop_api, .-tcpip_adapter_dhcpc_stop_api
	.section	.text.tcpip_adapter_eth_input,"ax",@progbits
	.literal_position
	.literal .LC167, esp_netif
	.align	4
	.global	tcpip_adapter_eth_input
	.type	tcpip_adapter_eth_input, @function
tcpip_adapter_eth_input:
.LFB68:
	.loc 1 1089 0
.LVL443:
	entry	sp, 32
.LCFI46:
	.loc 1 1090 0
	extui	a12, a3, 0, 16
	mov.n	a11, a2
	l32r	a8, .LC167
	l32i.n	a10, a8, 8
	call8	ethernetif_input
.LVL444:
	.loc 1 1092 0
	movi.n	a2, 0
.LVL445:
	retw.n
.LFE68:
	.size	tcpip_adapter_eth_input, .-tcpip_adapter_eth_input
	.section	.text.tcpip_adapter_sta_input,"ax",@progbits
	.literal_position
	.literal .LC168, esp_netif
	.align	4
	.global	tcpip_adapter_sta_input
	.type	tcpip_adapter_sta_input, @function
tcpip_adapter_sta_input:
.LFB69:
	.loc 1 1095 0
.LVL446:
	entry	sp, 32
.LCFI47:
	.loc 1 1096 0
	mov.n	a13, a4
	extui	a12, a3, 0, 16
	mov.n	a11, a2
	l32r	a8, .LC168
	l32i.n	a10, a8, 0
	call8	wlanif_input
.LVL447:
	.loc 1 1098 0
	movi.n	a2, 0
.LVL448:
	retw.n
.LFE69:
	.size	tcpip_adapter_sta_input, .-tcpip_adapter_sta_input
	.section	.text.tcpip_adapter_ap_input,"ax",@progbits
	.literal_position
	.literal .LC169, esp_netif
	.align	4
	.global	tcpip_adapter_ap_input
	.type	tcpip_adapter_ap_input, @function
tcpip_adapter_ap_input:
.LFB70:
	.loc 1 1101 0
.LVL449:
	entry	sp, 32
.LCFI48:
	.loc 1 1102 0
	mov.n	a13, a4
	extui	a12, a3, 0, 16
	mov.n	a11, a2
	l32r	a8, .LC169
	l32i.n	a10, a8, 4
	call8	wlanif_input
.LVL450:
	.loc 1 1104 0
	movi.n	a2, 0
.LVL451:
	retw.n
.LFE70:
	.size	tcpip_adapter_ap_input, .-tcpip_adapter_ap_input
	.section	.text.tcpip_adapter_get_esp_if,"ax",@progbits
	.literal_position
	.literal .LC170, esp_netif
	.align	4
	.global	tcpip_adapter_get_esp_if
	.type	tcpip_adapter_get_esp_if, @function
tcpip_adapter_get_esp_if:
.LFB71:
	.loc 1 1115 0
.LVL452:
	entry	sp, 32
.LCFI49:
.LVL453:
	.loc 1 1118 0
	l32r	a8, .LC170
	l32i.n	a8, a8, 0
	beq	a2, a8, .L251
	.loc 1 1120 0
	l32r	a8, .LC170
	l32i.n	a8, a8, 4
	beq	a2, a8, .L252
	.loc 1 1122 0
	l32r	a8, .LC170
	l32i.n	a8, a8, 8
	bne	a2, a8, .L253
	.loc 1 1123 0
	movi.n	a2, 2
.LVL454:
	retw.n
.LVL455:
.L251:
	.loc 1 1119 0
	movi.n	a2, 0
.LVL456:
	retw.n
.LVL457:
.L252:
	.loc 1 1121 0
	movi.n	a2, 1
.LVL458:
	retw.n
.LVL459:
.L253:
	.loc 1 1126 0
	movi.n	a2, 3
.LVL460:
	.loc 1 1127 0
	retw.n
.LFE71:
	.size	tcpip_adapter_get_esp_if, .-tcpip_adapter_get_esp_if
	.section	.text.tcpip_adapter_get_sta_list,"ax",@progbits
	.literal_position
	.literal .LC171, 20481
	.align	4
	.global	tcpip_adapter_get_sta_list
	.type	tcpip_adapter_get_sta_list, @function
tcpip_adapter_get_sta_list:
.LFB72:
	.loc 1 1130 0
.LVL461:
	entry	sp, 32
.LCFI50:
	.loc 1 1133 0
	movi.n	a4, 1
	movi.n	a8, 0
	mov.n	a5, a8
	moveqz	a5, a4, a2
	.loc 1 1133 0
	movnez	a4, a8, a3
	or	a4, a4, a5
	.loc 1 1133 0
	bne	a4, a8, .L258
	.loc 1 1137 0
	movi	a12, 0x7c
	mov.n	a11, a8
	mov.n	a10, a3
	call8	memset
.LVL462:
	.loc 1 1138 0
	l32i	a4, a2, 120
	s32i	a4, a3, 120
.LVL463:
	.loc 1 1139 0
	movi.n	a5, 0
	j	.L256
.LVL464:
.L257:
	.loc 1 1140 0 discriminator 3
	slli	a8, a5, 1
	add.n	a9, a8, a5
	slli	a4, a9, 2
	mov.n	a9, a4
	add.n	a4, a3, a4
	movi.n	a12, 6
	add.n	a11, a2, a9
	mov.n	a10, a4
	call8	memcpy
.LVL465:
	.loc 1 1141 0 discriminator 3
	addi.n	a11, a4, 8
	mov.n	a10, a4
	call8	dhcp_search_ip_on_mac
.LVL466:
	.loc 1 1139 0 discriminator 3
	addi.n	a5, a5, 1
.LVL467:
.L256:
	.loc 1 1139 0 is_stmt 0 discriminator 1
	l32i	a4, a2, 120
	blt	a5, a4, .L257
	.loc 1 1144 0 is_stmt 1
	movi.n	a2, 0
.LVL468:
	retw.n
.LVL469:
.L258:
	.loc 1 1134 0
	l32r	a2, .LC171
.LVL470:
	.loc 1 1145 0
	retw.n
.LFE72:
	.size	tcpip_adapter_get_sta_list, .-tcpip_adapter_get_sta_list
	.section	.text.tcpip_adapter_set_hostname,"ax",@progbits
	.literal_position
	.literal .LC172, 20481
	.literal .LC173, 20482
	.literal .LC174, tcpip_inited
	.literal .LC175, .LC2
	.literal .LC176, .LC23
	.literal .LC177, tcpip_adapter_set_hostname_api
	.literal .LC178, esp_netif
	.literal .LC179, hostinfo$8712
	.align	4
	.global	tcpip_adapter_set_hostname
	.type	tcpip_adapter_set_hostname, @function
tcpip_adapter_set_hostname:
.LFB73:
	.loc 1 1148 0
.LVL471:
	entry	sp, 64
.LCFI51:
.LBB33:
	.loc 1 1150 0
	l32r	a8, .LC174
	l8ui	a8, a8, 0
	bnez.n	a8, .L260
	.loc 1 1150 0 discriminator 5
	call8	esp_log_timestamp
.LVL472:
	l32r	a11, .LC175
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC176
	movi.n	a10, 1
	call8	esp_log_write
.LVL473:
	call8	abort
.LVL474:
.L260:
	.loc 1 1150 0 is_stmt 0 discriminator 2
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a2, sp, 12
	s32i.n	a3, sp, 24
	l32r	a8, .LC177
	s32i.n	a8, sp, 8
	mov.n	a10, sp
	call8	tcpip_adapter_ipc_check
.LVL475:
	bnei	a10, 1, .L261
	.loc 1 1150 0 discriminator 34
	l32i.n	a2, sp, 4
.LVL476:
	retw.n
.LVL477:
.L261:
.LBE33:
	.loc 1 1154 0 is_stmt 1
	movi.n	a8, 1
	bgeui	a2, 3, .L263
	movi.n	a8, 0
.L263:
	extui	a8, a8, 0, 8
	movi.n	a10, 0
	movi.n	a9, 1
	movnez	a9, a10, a3
	or	a8, a9, a8
	bne	a8, a10, .L264
	.loc 1 1158 0
	mov.n	a10, a3
	call8	strlen
.LVL478:
	movi.n	a8, 0x20
	bltu	a8, a10, .L265
	.loc 1 1162 0
	l32r	a8, .LC178
	addx4	a8, a2, a8
	l32i.n	a4, a8, 0
.LVL479:
	.loc 1 1163 0
	beqz.n	a4, .L266
	.loc 1 1164 0
	slli	a5, a2, 5
	add.n	a2, a5, a2
.LVL480:
	l32r	a8, .LC179
	add.n	a2, a2, a8
	movi.n	a5, 0x21
	mov.n	a12, a5
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL481:
	.loc 1 1165 0
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	strlcpy
.LVL482:
	.loc 1 1166 0
	s32i	a2, a4, 176
	.loc 1 1167 0
	movi.n	a2, 0
	retw.n
.LVL483:
.L264:
	.loc 1 1155 0
	l32r	a2, .LC172
.LVL484:
	retw.n
.LVL485:
.L265:
	.loc 1 1159 0
	l32r	a2, .LC172
.LVL486:
	retw.n
.LVL487:
.L266:
	.loc 1 1169 0
	l32r	a2, .LC173
.LVL488:
	.loc 1 1174 0
	retw.n
.LFE73:
	.size	tcpip_adapter_set_hostname, .-tcpip_adapter_set_hostname
	.section	.text.tcpip_adapter_set_hostname_api,"ax",@progbits
	.align	4
	.type	tcpip_adapter_set_hostname_api, @function
tcpip_adapter_set_hostname_api:
.LFB74:
	.loc 1 1177 0
.LVL489:
	entry	sp, 32
.LCFI52:
.LVL490:
	.loc 1 1180 0
	l32i.n	a11, a2, 24
	l32i.n	a10, a2, 12
	call8	tcpip_adapter_set_hostname
.LVL491:
	.loc 1 1181 0
	mov.n	a2, a10
.LVL492:
	retw.n
.LFE74:
	.size	tcpip_adapter_set_hostname_api, .-tcpip_adapter_set_hostname_api
	.section	.text.tcpip_adapter_get_hostname,"ax",@progbits
	.literal_position
	.literal .LC180, 20481
	.literal .LC181, esp_netif
	.align	4
	.global	tcpip_adapter_get_hostname
	.type	tcpip_adapter_get_hostname, @function
tcpip_adapter_get_hostname:
.LFB75:
	.loc 1 1184 0
.LVL493:
	entry	sp, 32
.LCFI53:
.LVL494:
	.loc 1 1187 0
	movi.n	a8, 1
	bgeui	a2, 3, .L269
	movi.n	a8, 0
.L269:
	extui	a8, a8, 0, 8
	movi.n	a10, 0
	movi.n	a9, 1
	movnez	a9, a10, a3
	or	a8, a9, a8
	bne	a8, a10, .L271
	.loc 1 1191 0
	l32r	a8, .LC181
	addx4	a2, a2, a8
.LVL495:
	l32i.n	a2, a2, 0
.LVL496:
	.loc 1 1192 0
	beq	a2, a10, .L272
	.loc 1 1193 0
	l32i	a2, a2, 176
.LVL497:
	s32i.n	a2, a3, 0
	.loc 1 1194 0
	mov.n	a2, a10
	retw.n
.LVL498:
.L271:
	.loc 1 1188 0
	l32r	a2, .LC180
.LVL499:
	retw.n
.LVL500:
.L272:
	.loc 1 1196 0
	l32r	a2, .LC180
.LVL501:
	.loc 1 1201 0
	retw.n
.LFE75:
	.size	tcpip_adapter_get_hostname, .-tcpip_adapter_get_hostname
	.section	.text.tcpip_adapter_get_netif,"ax",@progbits
	.literal_position
	.literal .LC182, 20481
	.literal .LC183, 20482
	.literal .LC184, esp_netif
	.align	4
	.global	tcpip_adapter_get_netif
	.type	tcpip_adapter_get_netif, @function
tcpip_adapter_get_netif:
.LFB77:
	.loc 1 1212 0
.LVL502:
	entry	sp, 32
.LCFI54:
	.loc 1 1213 0
	bgeui	a2, 3, .L275
	.loc 1 1217 0
	l32r	a8, .LC184
	addx4	a2, a2, a8
.LVL503:
	l32i.n	a2, a2, 0
	s32i.n	a2, a3, 0
	.loc 1 1219 0
	bnez.n	a2, .L276
	.loc 1 1220 0
	l32r	a2, .LC183
	retw.n
.LVL504:
.L275:
	.loc 1 1214 0
	l32r	a2, .LC182
.LVL505:
	retw.n
.L276:
	.loc 1 1222 0
	movi.n	a2, 0
	.loc 1 1223 0
	retw.n
.LFE77:
	.size	tcpip_adapter_get_netif, .-tcpip_adapter_get_netif
	.section	.text.tcpip_adapter_is_netif_up,"ax",@progbits
	.literal_position
	.literal .LC185, esp_netif
	.align	4
	.global	tcpip_adapter_is_netif_up
	.type	tcpip_adapter_is_netif_up, @function
tcpip_adapter_is_netif_up:
.LFB78:
	.loc 1 1226 0
.LVL506:
	entry	sp, 32
.LCFI55:
	.loc 1 1227 0
	l32r	a8, .LC185
	addx4	a2, a2, a8
.LVL507:
	l32i.n	a2, a2, 0
	beqz.n	a2, .L279
	.loc 1 1227 0 discriminator 1
	beqz.n	a2, .L280
	.loc 1 1227 0 is_stmt 0 discriminator 2
	l8ui	a2, a2, 189
	bbsi	a2, 0, .L281
	.loc 1 1230 0 is_stmt 1
	movi.n	a2, 0
	retw.n
.L279:
	movi.n	a2, 0
	retw.n
.L280:
	movi.n	a2, 0
	retw.n
.L281:
	.loc 1 1228 0
	movi.n	a2, 1
	.loc 1 1232 0
	retw.n
.LFE78:
	.size	tcpip_adapter_is_netif_up, .-tcpip_adapter_is_netif_up
	.section	.bss.hostinfo$8712,"aw",@nobits
	.align	4
	.type	hostinfo$8712, @object
	.size	hostinfo$8712, 99
hostinfo$8712:
	.zero	99
	.section	.rodata.__func__$8484,"a",@progbits
	.align	4
	.type	__func__$8484, @object
	.size	__func__$8484, 20
__func__$8484:
	.string	"tcpip_adapter_start"
	.section	.bss.api_lock_sem,"aw",@nobits
	.align	4
	.type	api_lock_sem, @object
	.size	api_lock_sem, 4
api_lock_sem:
	.zero	4
	.section	.bss.tcpip_inited,"aw",@nobits
	.type	tcpip_inited, @object
	.size	tcpip_inited, 1
tcpip_inited:
	.zero	1
	.section	.bss.api_sync_sem,"aw",@nobits
	.align	4
	.type	api_sync_sem, @object
	.size	api_sync_sem, 4
api_sync_sem:
	.zero	4
	.section	.bss.dhcpc_status,"aw",@nobits
	.align	4
	.type	dhcpc_status, @object
	.size	dhcpc_status, 12
dhcpc_status:
	.zero	12
	.section	.bss.dhcps_status,"aw",@nobits
	.align	4
	.type	dhcps_status, @object
	.size	dhcps_status, 4
dhcps_status:
	.zero	4
	.section	.bss.esp_ip_lost_timer,"aw",@nobits
	.align	4
	.type	esp_ip_lost_timer, @object
	.size	esp_ip_lost_timer, 3
esp_ip_lost_timer:
	.zero	3
	.section	.bss.esp_netif_init_fn,"aw",@nobits
	.align	4
	.type	esp_netif_init_fn, @object
	.size	esp_netif_init_fn, 12
esp_netif_init_fn:
	.zero	12
	.section	.bss.esp_ip6,"aw",@nobits
	.align	4
	.type	esp_ip6, @object
	.size	esp_ip6, 48
esp_ip6:
	.zero	48
	.section	.bss.esp_ip_old,"aw",@nobits
	.align	4
	.type	esp_ip_old, @object
	.size	esp_ip_old, 36
esp_ip_old:
	.zero	36
	.section	.bss.esp_ip,"aw",@nobits
	.align	4
	.type	esp_ip, @object
	.size	esp_ip, 36
esp_ip:
	.zero	36
	.section	.bss.esp_netif,"aw",@nobits
	.align	4
	.type	esp_netif, @object
	.size	esp_netif, 12
esp_netif:
	.zero	12
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
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x4
	.4byte	.LCFI0-.LFB76
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI2-.LFB23
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.byte	0x4
	.4byte	.LCFI3-.LFB62
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI4-.LFB45
	.byte	0xe
	.uleb128 0x50
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
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI6-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI7-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI8-.LFB28
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
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.byte	0x4
	.4byte	.LCFI10-.LFB61
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.byte	0x4
	.4byte	.LCFI11-.LFB60
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI12-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI13-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI14-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI15-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI16-.LFB33
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI17-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI18-.LFB35
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI19-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI20-.LFB37
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI21-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI22-.LFB40
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI23-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI24-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI25-.LFB46
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI26-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI27-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI28-.LFB49
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI29-.LFB50
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI30-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI31-.LFB52
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI32-.LFB53
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI33-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI34-.LFB55
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI35-.LFB56
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI36-.LFB57
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI37-.LFB58
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI38-.LFB59
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x4
	.4byte	.LCFI39-.LFB63
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI40-.LFB43
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE80:
.LSFDE82:
	.4byte	.LEFDE82-.LASFDE82
.LASFDE82:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI41-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE82:
.LSFDE84:
	.4byte	.LEFDE84-.LASFDE84
.LASFDE84:
	.4byte	.Lframe0
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.byte	0x4
	.4byte	.LCFI42-.LFB64
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE84:
.LSFDE86:
	.4byte	.LEFDE86-.LASFDE86
.LASFDE86:
	.4byte	.Lframe0
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.byte	0x4
	.4byte	.LCFI43-.LFB65
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE86:
.LSFDE88:
	.4byte	.LEFDE88-.LASFDE88
.LASFDE88:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x4
	.4byte	.LCFI44-.LFB66
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE88:
.LSFDE90:
	.4byte	.LEFDE90-.LASFDE90
.LASFDE90:
	.4byte	.Lframe0
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.byte	0x4
	.4byte	.LCFI45-.LFB67
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE90:
.LSFDE92:
	.4byte	.LEFDE92-.LASFDE92
.LASFDE92:
	.4byte	.Lframe0
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.byte	0x4
	.4byte	.LCFI46-.LFB68
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE92:
.LSFDE94:
	.4byte	.LEFDE94-.LASFDE94
.LASFDE94:
	.4byte	.Lframe0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x4
	.4byte	.LCFI47-.LFB69
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE94:
.LSFDE96:
	.4byte	.LEFDE96-.LASFDE96
.LASFDE96:
	.4byte	.Lframe0
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x4
	.4byte	.LCFI48-.LFB70
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE96:
.LSFDE98:
	.4byte	.LEFDE98-.LASFDE98
.LASFDE98:
	.4byte	.Lframe0
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x4
	.4byte	.LCFI49-.LFB71
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE98:
.LSFDE100:
	.4byte	.LEFDE100-.LASFDE100
.LASFDE100:
	.4byte	.Lframe0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x4
	.4byte	.LCFI50-.LFB72
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE100:
.LSFDE102:
	.4byte	.LEFDE102-.LASFDE102
.LASFDE102:
	.4byte	.Lframe0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x4
	.4byte	.LCFI51-.LFB73
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE102:
.LSFDE104:
	.4byte	.LEFDE104-.LASFDE104
.LASFDE104:
	.4byte	.Lframe0
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x4
	.4byte	.LCFI52-.LFB74
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE104:
.LSFDE106:
	.4byte	.LEFDE106-.LASFDE106
.LASFDE106:
	.4byte	.Lframe0
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x4
	.4byte	.LCFI53-.LFB75
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE106:
.LSFDE108:
	.4byte	.LEFDE108-.LASFDE108
.LASFDE108:
	.4byte	.Lframe0
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.byte	0x4
	.4byte	.LCFI54-.LFB77
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE108:
.LSFDE110:
	.4byte	.LEFDE110-.LASFDE110
.LASFDE110:
	.4byte	.Lframe0
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.byte	0x4
	.4byte	.LCFI55-.LFB78
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE110:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_interface.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_wifi_types.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/task.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/queue.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/port/esp32/include/arch/sys_arch.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip6_addr.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/ip_addr.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/include/apps/dhcpserver/dhcpserver.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/tcpip_adapter/include/tcpip_adapter.h"
	.file 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/err.h"
	.file 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/pbuf.h"
	.file 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/netif.h"
	.file 19 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/memp.h"
	.file 20 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/udp.h"
	.file 21 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/tcpip.h"
	.file 22 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_event_legacy.h"
	.file 23 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/include/apps/dhcpserver/dhcpserver_options.h"
	.file 24 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 25 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/sys.h"
	.file 26 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/priv/tcpip_priv.h"
	.file 27 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.file 28 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.file 29 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/timeouts.h"
	.file 30 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/string.h"
	.file 31 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/dhcp.h"
	.file 32 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/nd6.h"
	.file 33 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/def.h"
	.file 34 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/dns.h"
	.file 35 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/port/esp32/include/netif/ethernetif.h"
	.file 36 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/port/esp32/include/netif/wlanif.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3368
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF515
	.byte	0xc
	.4byte	.LASF516
	.4byte	.LASF517
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x11
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x12
	.4byte	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x16
	.4byte	0x5b
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0x19
	.4byte	0x6d
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1a
	.4byte	0x7f
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x7
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbf
	.uleb128 0x8
	.4byte	0xb2
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x14
	.4byte	0x25
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x3
	.byte	0x15
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x3
	.byte	0x21
	.4byte	0x50
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x3
	.byte	0x2c
	.4byte	0x62
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x3
	.byte	0x2d
	.4byte	0x74
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x4
	.byte	0x18
	.4byte	0xe5
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7f
	.byte	0x5
	.byte	0x19
	.4byte	0x12b
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x5
	.byte	0x1e
	.4byte	0x106
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7f
	.byte	0x6
	.byte	0x38
	.4byte	0x16d
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x6
	.byte	0x40
	.4byte	0x136
	.uleb128 0x6
	.byte	0x4
	.4byte	0xcf
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF35
	.uleb128 0xb
	.4byte	0xcf
	.4byte	0x195
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	0xcf
	.4byte	0x1a5
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.byte	0xc
	.byte	0x6
	.byte	0xf7
	.4byte	0x211
	.uleb128 0xe
	.string	"mac"
	.byte	0x6
	.byte	0xf8
	.4byte	0x185
	.byte	0
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x6
	.byte	0xf9
	.4byte	0xc4
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x6
	.byte	0xfa
	.4byte	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x6
	.byte	0xfb
	.4byte	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0x6
	.byte	0xfc
	.4byte	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0x6
	.byte	0xfd
	.4byte	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x6
	.byte	0xfe
	.4byte	0xf0
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x6
	.byte	0xff
	.4byte	0x1a5
	.uleb128 0x11
	.byte	0x7c
	.byte	0x6
	.2byte	0x104
	.4byte	0x240
	.uleb128 0x12
	.string	"sta"
	.byte	0x6
	.2byte	0x105
	.4byte	0x240
	.byte	0
	.uleb128 0x12
	.string	"num"
	.byte	0x6
	.2byte	0x106
	.4byte	0x6d
	.byte	0x78
	.byte	0
	.uleb128 0xb
	.4byte	0x211
	.4byte	0x250
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x107
	.4byte	0x21c
	.uleb128 0xb
	.4byte	0xcf
	.4byte	0x26c
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x272
	.uleb128 0x14
	.4byte	0x27d
	.uleb128 0x15
	.4byte	0x94
	.byte	0
	.uleb128 0xb
	.4byte	0x94
	.4byte	0x28d
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x7
	.byte	0x6e
	.4byte	0x94
	.uleb128 0x8
	.4byte	0xb9
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x8
	.byte	0x58
	.4byte	0x94
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0x9
	.byte	0x4f
	.4byte	0x29d
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0xa
	.byte	0x2f
	.4byte	0x2a8
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0xa
	.byte	0x31
	.4byte	0x28d
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x4
	.byte	0xb
	.byte	0x33
	.4byte	0x2e2
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0xb
	.byte	0x34
	.4byte	0xf0
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0xb
	.byte	0x39
	.4byte	0x2c9
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x10
	.byte	0xc
	.byte	0x3a
	.4byte	0x306
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0xc
	.byte	0x3b
	.4byte	0x306
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xf0
	.4byte	0x316
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0xc
	.byte	0x3f
	.4byte	0x2ed
	.uleb128 0x17
	.4byte	.LASF65
	.byte	0x4
	.4byte	0x7f
	.byte	0xd
	.byte	0x36
	.4byte	0x344
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x2e
	.byte	0
	.uleb128 0x18
	.byte	0x10
	.byte	0xd
	.byte	0x46
	.4byte	0x363
	.uleb128 0x19
	.string	"ip6"
	.byte	0xd
	.byte	0x47
	.4byte	0x316
	.uleb128 0x19
	.string	"ip4"
	.byte	0xd
	.byte	0x48
	.4byte	0x2e2
	.byte	0
	.uleb128 0x16
	.4byte	.LASF57
	.byte	0x14
	.byte	0xd
	.byte	0x45
	.4byte	0x388
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0xd
	.byte	0x49
	.4byte	0x344
	.byte	0
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0xd
	.byte	0x4b
	.4byte	0xcf
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0xd
	.byte	0x4c
	.4byte	0x363
	.uleb128 0xd
	.byte	0xc
	.byte	0xe
	.byte	0x27
	.4byte	0x3c0
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0xe
	.byte	0x28
	.4byte	0x17e
	.byte	0
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0xe
	.byte	0x29
	.4byte	0x2e2
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0xe
	.byte	0x2a
	.4byte	0x2e2
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0xe
	.byte	0x2b
	.4byte	0x393
	.uleb128 0x17
	.4byte	.LASF66
	.byte	0x4
	.4byte	0x7f
	.byte	0xe
	.byte	0x2d
	.4byte	0x3f4
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.byte	0xc
	.byte	0xf
	.byte	0x46
	.4byte	0x41f
	.uleb128 0xe
	.string	"ip"
	.byte	0xf
	.byte	0x47
	.4byte	0x2e2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0xf
	.byte	0x48
	.4byte	0x2e2
	.byte	0x4
	.uleb128 0xe
	.string	"gw"
	.byte	0xf
	.byte	0x49
	.4byte	0x2e2
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0xf
	.byte	0x4a
	.4byte	0x3f4
	.uleb128 0xd
	.byte	0x10
	.byte	0xf
	.byte	0x4c
	.4byte	0x43e
	.uleb128 0xe
	.string	"ip"
	.byte	0xf
	.byte	0x4d
	.4byte	0x316
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0xf
	.byte	0x4e
	.4byte	0x42a
	.uleb128 0xd
	.byte	0xc
	.byte	0xf
	.byte	0x52
	.4byte	0x469
	.uleb128 0xe
	.string	"mac"
	.byte	0xf
	.byte	0x53
	.4byte	0x185
	.byte	0
	.uleb128 0xe
	.string	"ip"
	.byte	0xf
	.byte	0x54
	.4byte	0x2e2
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0xf
	.byte	0x55
	.4byte	0x449
	.uleb128 0xd
	.byte	0x7c
	.byte	0xf
	.byte	0x57
	.4byte	0x495
	.uleb128 0xe
	.string	"sta"
	.byte	0xf
	.byte	0x58
	.4byte	0x495
	.byte	0
	.uleb128 0xe
	.string	"num"
	.byte	0xf
	.byte	0x59
	.4byte	0x6d
	.byte	0x78
	.byte	0
	.uleb128 0xb
	.4byte	0x469
	.4byte	0x4a5
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0xf
	.byte	0x5a
	.4byte	0x474
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7f
	.byte	0xf
	.byte	0x67
	.4byte	0x4d5
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0xf
	.byte	0x6c
	.4byte	0x4b0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7f
	.byte	0xf
	.byte	0x6f
	.4byte	0x505
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0xf
	.byte	0x74
	.4byte	0x4e0
	.uleb128 0xd
	.byte	0x14
	.byte	0xf
	.byte	0x77
	.4byte	0x524
	.uleb128 0xe
	.string	"ip"
	.byte	0xf
	.byte	0x78
	.4byte	0x388
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0xf
	.byte	0x79
	.4byte	0x510
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7f
	.byte	0xf
	.byte	0x7c
	.4byte	0x554
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0xf
	.byte	0x81
	.4byte	0x52f
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7f
	.byte	0xf
	.byte	0x84
	.4byte	0x584
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF95
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0xf
	.byte	0x89
	.4byte	0x55f
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7f
	.byte	0xf
	.byte	0x8b
	.4byte	0x5ba
	.uleb128 0xa
	.4byte	.LASF97
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF98
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF99
	.byte	0x32
	.uleb128 0xa
	.4byte	.LASF100
	.byte	0x33
	.uleb128 0xa
	.4byte	.LASF101
	.byte	0x34
	.byte	0
	.uleb128 0x2
	.4byte	.LASF102
	.byte	0xf
	.byte	0x91
	.4byte	0x58f
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0xf
	.byte	0x94
	.4byte	0x5d0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5d6
	.uleb128 0x1a
	.4byte	0x6d
	.4byte	0x5e5
	.uleb128 0x15
	.4byte	0x5e5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5eb
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0x1c
	.byte	0xf
	.byte	0x95
	.4byte	0x64c
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0xf
	.byte	0x96
	.4byte	0x6d
	.byte	0
	.uleb128 0xe
	.string	"ret"
	.byte	0xf
	.byte	0x97
	.4byte	0x6d
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF105
	.byte	0xf
	.byte	0x98
	.4byte	0x5c5
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF106
	.byte	0xf
	.byte	0x99
	.4byte	0x4d5
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF107
	.byte	0xf
	.byte	0x9a
	.4byte	0x64c
	.byte	0x10
	.uleb128 0xe
	.string	"mac"
	.byte	0xf
	.byte	0x9b
	.4byte	0x178
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF108
	.byte	0xf
	.byte	0x9c
	.4byte	0x94
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x41f
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xf
	.byte	0x9d
	.4byte	0x5eb
	.uleb128 0x16
	.4byte	.LASF110
	.byte	0x8
	.byte	0xf
	.byte	0x9f
	.4byte	0x682
	.uleb128 0xf
	.4byte	.LASF111
	.byte	0xf
	.byte	0xa0
	.4byte	0x505
	.byte	0
	.uleb128 0xf
	.4byte	.LASF112
	.byte	0xf
	.byte	0xa1
	.4byte	0x682
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x524
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0xf
	.byte	0xa2
	.4byte	0x65d
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x1
	.byte	0xf
	.byte	0xbc
	.4byte	0x6ac
	.uleb128 0xf
	.4byte	.LASF115
	.byte	0xf
	.byte	0xbd
	.4byte	0x17e
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0xf
	.byte	0xbe
	.4byte	0x693
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0x10
	.byte	0x39
	.4byte	0xc4
	.uleb128 0x9
	.byte	0x4
	.4byte	0x6d
	.byte	0x10
	.byte	0x3d
	.4byte	0x735
	.uleb128 0xa
	.4byte	.LASF118
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF119
	.sleb128 -1
	.uleb128 0x1b
	.4byte	.LASF120
	.sleb128 -2
	.uleb128 0x1b
	.4byte	.LASF121
	.sleb128 -3
	.uleb128 0x1b
	.4byte	.LASF122
	.sleb128 -4
	.uleb128 0x1b
	.4byte	.LASF123
	.sleb128 -5
	.uleb128 0x1b
	.4byte	.LASF124
	.sleb128 -6
	.uleb128 0x1b
	.4byte	.LASF125
	.sleb128 -7
	.uleb128 0x1b
	.4byte	.LASF126
	.sleb128 -8
	.uleb128 0x1b
	.4byte	.LASF127
	.sleb128 -9
	.uleb128 0x1b
	.4byte	.LASF128
	.sleb128 -10
	.uleb128 0x1b
	.4byte	.LASF129
	.sleb128 -11
	.uleb128 0x1b
	.4byte	.LASF130
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF131
	.sleb128 -13
	.uleb128 0x1b
	.4byte	.LASF132
	.sleb128 -14
	.uleb128 0x1b
	.4byte	.LASF133
	.sleb128 -15
	.uleb128 0x1b
	.4byte	.LASF134
	.sleb128 -16
	.byte	0
	.uleb128 0x16
	.4byte	.LASF135
	.byte	0x18
	.byte	0x11
	.byte	0x8e
	.4byte	0x7ae
	.uleb128 0xf
	.4byte	.LASF136
	.byte	0x11
	.byte	0x90
	.4byte	0x7ae
	.byte	0
	.uleb128 0xf
	.4byte	.LASF137
	.byte	0x11
	.byte	0x93
	.4byte	0x94
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF138
	.byte	0x11
	.byte	0x9c
	.4byte	0xda
	.byte	0x8
	.uleb128 0xe
	.string	"len"
	.byte	0x11
	.byte	0x9f
	.4byte	0xda
	.byte	0xa
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x11
	.byte	0xa2
	.4byte	0xcf
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF139
	.byte	0x11
	.byte	0xa5
	.4byte	0xcf
	.byte	0xd
	.uleb128 0xe
	.string	"ref"
	.byte	0x11
	.byte	0xac
	.4byte	0xda
	.byte	0xe
	.uleb128 0xf
	.4byte	.LASF140
	.byte	0x11
	.byte	0xaf
	.4byte	0x94c
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF141
	.byte	0x11
	.byte	0xb0
	.4byte	0x94
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x735
	.uleb128 0x16
	.4byte	.LASF142
	.byte	0xf0
	.byte	0x12
	.byte	0xeb
	.4byte	0x94c
	.uleb128 0xf
	.4byte	.LASF136
	.byte	0x12
	.byte	0xed
	.4byte	0x94c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x12
	.byte	0xf1
	.4byte	0x388
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x12
	.byte	0xf2
	.4byte	0x388
	.byte	0x18
	.uleb128 0xe
	.string	"gw"
	.byte	0x12
	.byte	0xf3
	.4byte	0x388
	.byte	0x2c
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x12
	.byte	0xf7
	.4byte	0xb4a
	.byte	0x40
	.uleb128 0xf
	.4byte	.LASF143
	.byte	0x12
	.byte	0xfa
	.4byte	0x25c
	.byte	0x7c
	.uleb128 0xf
	.4byte	.LASF144
	.byte	0x12
	.byte	0xfc
	.4byte	0xb6a
	.byte	0x80
	.uleb128 0x1c
	.4byte	.LASF145
	.byte	0x12
	.2byte	0x102
	.4byte	0xa37
	.byte	0x84
	.uleb128 0x1c
	.4byte	.LASF146
	.byte	0x12
	.2byte	0x108
	.4byte	0xa5c
	.byte	0x88
	.uleb128 0x1c
	.4byte	.LASF147
	.byte	0x12
	.2byte	0x10d
	.4byte	0xac6
	.byte	0x8c
	.uleb128 0x1c
	.4byte	.LASF148
	.byte	0x12
	.2byte	0x113
	.4byte	0xa91
	.byte	0x90
	.uleb128 0x1c
	.4byte	.LASF149
	.byte	0x12
	.2byte	0x125
	.4byte	0x94
	.byte	0x94
	.uleb128 0x1c
	.4byte	.LASF150
	.byte	0x12
	.2byte	0x127
	.4byte	0x27d
	.byte	0x98
	.uleb128 0x1c
	.4byte	.LASF151
	.byte	0x12
	.2byte	0x12b
	.4byte	0xc19
	.byte	0xa4
	.uleb128 0x1c
	.4byte	.LASF152
	.byte	0x12
	.2byte	0x12c
	.4byte	0xb3f
	.byte	0xa8
	.uleb128 0x1c
	.4byte	.LASF153
	.byte	0x12
	.2byte	0x131
	.4byte	0xcf
	.byte	0xac
	.uleb128 0x1c
	.4byte	.LASF154
	.byte	0x12
	.2byte	0x135
	.4byte	0xcf
	.byte	0xad
	.uleb128 0x1c
	.4byte	.LASF155
	.byte	0x12
	.2byte	0x139
	.4byte	0xb9
	.byte	0xb0
	.uleb128 0x12
	.string	"mtu"
	.byte	0x12
	.2byte	0x13f
	.4byte	0xda
	.byte	0xb4
	.uleb128 0x1c
	.4byte	.LASF156
	.byte	0x12
	.2byte	0x141
	.4byte	0xcf
	.byte	0xb6
	.uleb128 0x1c
	.4byte	.LASF157
	.byte	0x12
	.2byte	0x143
	.4byte	0x185
	.byte	0xb7
	.uleb128 0x1c
	.4byte	.LASF139
	.byte	0x12
	.2byte	0x145
	.4byte	0xcf
	.byte	0xbd
	.uleb128 0x1c
	.4byte	.LASF158
	.byte	0x12
	.2byte	0x147
	.4byte	0xc1f
	.byte	0xbe
	.uleb128 0x12
	.string	"num"
	.byte	0x12
	.2byte	0x149
	.4byte	0xcf
	.byte	0xc0
	.uleb128 0x1c
	.4byte	.LASF159
	.byte	0x12
	.2byte	0x157
	.4byte	0xaeb
	.byte	0xc4
	.uleb128 0x1c
	.4byte	.LASF160
	.byte	0x12
	.2byte	0x15c
	.4byte	0xb15
	.byte	0xc8
	.uleb128 0x1c
	.4byte	.LASF161
	.byte	0x12
	.2byte	0x163
	.4byte	0x7ae
	.byte	0xcc
	.uleb128 0x1c
	.4byte	.LASF162
	.byte	0x12
	.2byte	0x164
	.4byte	0x7ae
	.byte	0xd0
	.uleb128 0x1c
	.4byte	.LASF163
	.byte	0x12
	.2byte	0x166
	.4byte	0xda
	.byte	0xd4
	.uleb128 0x1c
	.4byte	.LASF164
	.byte	0x12
	.2byte	0x16b
	.4byte	0x26c
	.byte	0xd8
	.uleb128 0x1c
	.4byte	.LASF165
	.byte	0x12
	.2byte	0x16c
	.4byte	0x388
	.byte	0xdc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7b4
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7f
	.byte	0x13
	.byte	0x34
	.4byte	0x9d1
	.uleb128 0xa
	.4byte	.LASF166
	.byte	0
	.uleb128 0xa
	.4byte	.LASF167
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF168
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF169
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF170
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF171
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF172
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF173
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF174
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF175
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF176
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF177
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF178
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF179
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF180
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF181
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF182
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF183
	.byte	0x11
	.uleb128 0xa
	.4byte	.LASF184
	.byte	0x12
	.byte	0
	.uleb128 0x17
	.4byte	.LASF185
	.byte	0x4
	.4byte	0x7f
	.byte	0x12
	.byte	0x70
	.4byte	0x9fa
	.uleb128 0xa
	.4byte	.LASF186
	.byte	0
	.uleb128 0xa
	.4byte	.LASF187
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF188
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF189
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.4byte	.LASF190
	.byte	0x4
	.4byte	0x7f
	.byte	0x12
	.byte	0x94
	.4byte	0xa17
	.uleb128 0xa
	.4byte	.LASF191
	.byte	0
	.uleb128 0xa
	.4byte	.LASF192
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF193
	.byte	0x12
	.byte	0xa0
	.4byte	0xa22
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa28
	.uleb128 0x1a
	.4byte	0x6b7
	.4byte	0xa37
	.uleb128 0x15
	.4byte	0x94c
	.byte	0
	.uleb128 0x2
	.4byte	.LASF194
	.byte	0x12
	.byte	0xa7
	.4byte	0xa42
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa48
	.uleb128 0x1a
	.4byte	0x6b7
	.4byte	0xa5c
	.uleb128 0x15
	.4byte	0x7ae
	.uleb128 0x15
	.4byte	0x94c
	.byte	0
	.uleb128 0x2
	.4byte	.LASF195
	.byte	0x12
	.byte	0xb2
	.4byte	0xa67
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa6d
	.uleb128 0x1a
	.4byte	0x6b7
	.4byte	0xa86
	.uleb128 0x15
	.4byte	0x94c
	.uleb128 0x15
	.4byte	0x7ae
	.uleb128 0x15
	.4byte	0xa86
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa8c
	.uleb128 0x8
	.4byte	0x2e2
	.uleb128 0x2
	.4byte	.LASF196
	.byte	0x12
	.byte	0xbf
	.4byte	0xa9c
	.uleb128 0x6
	.byte	0x4
	.4byte	0xaa2
	.uleb128 0x1a
	.4byte	0x6b7
	.4byte	0xabb
	.uleb128 0x15
	.4byte	0x94c
	.uleb128 0x15
	.4byte	0x7ae
	.uleb128 0x15
	.4byte	0xabb
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xac1
	.uleb128 0x8
	.4byte	0x316
	.uleb128 0x2
	.4byte	.LASF197
	.byte	0x12
	.byte	0xc9
	.4byte	0xad1
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad7
	.uleb128 0x1a
	.4byte	0x6b7
	.4byte	0xaeb
	.uleb128 0x15
	.4byte	0x94c
	.uleb128 0x15
	.4byte	0x7ae
	.byte	0
	.uleb128 0x2
	.4byte	.LASF198
	.byte	0x12
	.byte	0xce
	.4byte	0xaf6
	.uleb128 0x6
	.byte	0x4
	.4byte	0xafc
	.uleb128 0x1a
	.4byte	0x6b7
	.4byte	0xb15
	.uleb128 0x15
	.4byte	0x94c
	.uleb128 0x15
	.4byte	0xa86
	.uleb128 0x15
	.4byte	0x9fa
	.byte	0
	.uleb128 0x2
	.4byte	.LASF199
	.byte	0x12
	.byte	0xd3
	.4byte	0xb20
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb26
	.uleb128 0x1a
	.4byte	0x6b7
	.4byte	0xb3f
	.uleb128 0x15
	.4byte	0x94c
	.uleb128 0x15
	.4byte	0xabb
	.uleb128 0x15
	.4byte	0x9fa
	.byte	0
	.uleb128 0x2
	.4byte	.LASF200
	.byte	0x12
	.byte	0xe5
	.4byte	0xab
	.uleb128 0xb
	.4byte	0x388
	.4byte	0xb5a
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	0xb6a
	.uleb128 0x15
	.4byte	0x94c
	.uleb128 0x15
	.4byte	0xcf
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb5a
	.uleb128 0x16
	.4byte	.LASF201
	.byte	0x58
	.byte	0x14
	.byte	0x51
	.4byte	0xc19
	.uleb128 0xf
	.4byte	.LASF202
	.byte	0x14
	.byte	0x53
	.4byte	0x388
	.byte	0
	.uleb128 0xf
	.4byte	.LASF203
	.byte	0x14
	.byte	0x53
	.4byte	0x388
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF204
	.byte	0x14
	.byte	0x53
	.4byte	0xcf
	.byte	0x28
	.uleb128 0xe
	.string	"tos"
	.byte	0x14
	.byte	0x53
	.4byte	0xcf
	.byte	0x29
	.uleb128 0xe
	.string	"ttl"
	.byte	0x14
	.byte	0x53
	.4byte	0xcf
	.byte	0x2a
	.uleb128 0xf
	.4byte	.LASF136
	.byte	0x14
	.byte	0x57
	.4byte	0xc19
	.byte	0x2c
	.uleb128 0xf
	.4byte	.LASF139
	.byte	0x14
	.byte	0x59
	.4byte	0xcf
	.byte	0x30
	.uleb128 0xf
	.4byte	.LASF205
	.byte	0x14
	.byte	0x5b
	.4byte	0xda
	.byte	0x32
	.uleb128 0xf
	.4byte	.LASF206
	.byte	0x14
	.byte	0x5b
	.4byte	0xda
	.byte	0x34
	.uleb128 0xf
	.4byte	.LASF207
	.byte	0x14
	.byte	0x5f
	.4byte	0x388
	.byte	0x38
	.uleb128 0xf
	.4byte	.LASF208
	.byte	0x14
	.byte	0x61
	.4byte	0xcf
	.byte	0x4c
	.uleb128 0xf
	.4byte	.LASF209
	.byte	0x14
	.byte	0x6a
	.4byte	0xc3a
	.byte	0x50
	.uleb128 0xf
	.4byte	.LASF210
	.byte	0x14
	.byte	0x6c
	.4byte	0x94
	.byte	0x54
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb70
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0xc2f
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF211
	.byte	0x15
	.byte	0x46
	.4byte	0x26c
	.uleb128 0x2
	.4byte	.LASF212
	.byte	0x14
	.byte	0x4d
	.4byte	0xc45
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc4b
	.uleb128 0x14
	.4byte	0xc6a
	.uleb128 0x15
	.4byte	0x94
	.uleb128 0x15
	.4byte	0xc19
	.uleb128 0x15
	.4byte	0x7ae
	.uleb128 0x15
	.4byte	0xc6a
	.uleb128 0x15
	.4byte	0xda
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc70
	.uleb128 0x8
	.4byte	0x388
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7f
	.byte	0x16
	.byte	0x1d
	.4byte	0xd1e
	.uleb128 0xa
	.4byte	.LASF213
	.byte	0
	.uleb128 0xa
	.4byte	.LASF214
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF215
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF216
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF217
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF218
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF219
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF220
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF221
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF222
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF223
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF224
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF225
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF226
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF227
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF228
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF229
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF230
	.byte	0x11
	.uleb128 0xa
	.4byte	.LASF231
	.byte	0x12
	.uleb128 0xa
	.4byte	.LASF232
	.byte	0x13
	.uleb128 0xa
	.4byte	.LASF233
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF234
	.byte	0x15
	.uleb128 0xa
	.4byte	.LASF235
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF236
	.byte	0x17
	.uleb128 0xa
	.4byte	.LASF237
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF238
	.byte	0x19
	.byte	0
	.uleb128 0x2
	.4byte	.LASF239
	.byte	0x16
	.byte	0x38
	.4byte	0xc75
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7f
	.byte	0x16
	.byte	0x3f
	.4byte	0xd48
	.uleb128 0xa
	.4byte	.LASF240
	.byte	0
	.uleb128 0xa
	.4byte	.LASF241
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF242
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF243
	.byte	0x16
	.byte	0x43
	.4byte	0xd29
	.uleb128 0xd
	.byte	0x8
	.byte	0x16
	.byte	0x44
	.4byte	0xd80
	.uleb128 0xf
	.4byte	.LASF244
	.byte	0x16
	.byte	0x45
	.4byte	0xf0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF245
	.byte	0x16
	.byte	0x46
	.4byte	0xcf
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF246
	.byte	0x16
	.byte	0x47
	.4byte	0xcf
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF247
	.byte	0x16
	.byte	0x48
	.4byte	0xd53
	.uleb128 0xd
	.byte	0x2c
	.byte	0x16
	.byte	0x4a
	.4byte	0xdd0
	.uleb128 0xf
	.4byte	.LASF248
	.byte	0x16
	.byte	0x4b
	.4byte	0x195
	.byte	0
	.uleb128 0xf
	.4byte	.LASF249
	.byte	0x16
	.byte	0x4c
	.4byte	0xcf
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF250
	.byte	0x16
	.byte	0x4d
	.4byte	0x185
	.byte	0x21
	.uleb128 0xf
	.4byte	.LASF251
	.byte	0x16
	.byte	0x4e
	.4byte	0xcf
	.byte	0x27
	.uleb128 0xf
	.4byte	.LASF252
	.byte	0x16
	.byte	0x4f
	.4byte	0x16d
	.byte	0x28
	.byte	0
	.uleb128 0x2
	.4byte	.LASF253
	.byte	0x16
	.byte	0x50
	.4byte	0xd8b
	.uleb128 0xd
	.byte	0x28
	.byte	0x16
	.byte	0x52
	.4byte	0xe14
	.uleb128 0xf
	.4byte	.LASF248
	.byte	0x16
	.byte	0x53
	.4byte	0x195
	.byte	0
	.uleb128 0xf
	.4byte	.LASF249
	.byte	0x16
	.byte	0x54
	.4byte	0xcf
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF250
	.byte	0x16
	.byte	0x55
	.4byte	0x185
	.byte	0x21
	.uleb128 0xf
	.4byte	.LASF254
	.byte	0x16
	.byte	0x56
	.4byte	0xcf
	.byte	0x27
	.byte	0
	.uleb128 0x2
	.4byte	.LASF255
	.byte	0x16
	.byte	0x57
	.4byte	0xddb
	.uleb128 0xd
	.byte	0x8
	.byte	0x16
	.byte	0x59
	.4byte	0xe40
	.uleb128 0xf
	.4byte	.LASF256
	.byte	0x16
	.byte	0x5a
	.4byte	0x16d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF257
	.byte	0x16
	.byte	0x5b
	.4byte	0x16d
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF258
	.byte	0x16
	.byte	0x5c
	.4byte	0xe1f
	.uleb128 0xd
	.byte	0x10
	.byte	0x16
	.byte	0x5e
	.4byte	0xe6c
	.uleb128 0xf
	.4byte	.LASF107
	.byte	0x16
	.byte	0x5f
	.4byte	0x41f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF259
	.byte	0x16
	.byte	0x60
	.4byte	0x17e
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF260
	.byte	0x16
	.byte	0x61
	.4byte	0xe4b
	.uleb128 0xd
	.byte	0x8
	.byte	0x16
	.byte	0x63
	.4byte	0xe8c
	.uleb128 0xf
	.4byte	.LASF261
	.byte	0x16
	.byte	0x64
	.4byte	0xe8c
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xcf
	.4byte	0xe9c
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF262
	.byte	0x16
	.byte	0x65
	.4byte	0xe77
	.uleb128 0xd
	.byte	0x14
	.byte	0x16
	.byte	0x67
	.4byte	0xec8
	.uleb128 0xf
	.4byte	.LASF263
	.byte	0x16
	.byte	0x68
	.4byte	0x4d5
	.byte	0
	.uleb128 0xf
	.4byte	.LASF264
	.byte	0x16
	.byte	0x69
	.4byte	0x43e
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF265
	.byte	0x16
	.byte	0x6a
	.4byte	0xea7
	.uleb128 0xd
	.byte	0x7
	.byte	0x16
	.byte	0x6c
	.4byte	0xef4
	.uleb128 0xe
	.string	"mac"
	.byte	0x16
	.byte	0x6d
	.4byte	0x185
	.byte	0
	.uleb128 0xe
	.string	"aid"
	.byte	0x16
	.byte	0x6e
	.4byte	0xcf
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF266
	.byte	0x16
	.byte	0x6f
	.4byte	0xed3
	.uleb128 0xd
	.byte	0x7
	.byte	0x16
	.byte	0x71
	.4byte	0xf20
	.uleb128 0xe
	.string	"mac"
	.byte	0x16
	.byte	0x72
	.4byte	0x185
	.byte	0
	.uleb128 0xe
	.string	"aid"
	.byte	0x16
	.byte	0x73
	.4byte	0xcf
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF267
	.byte	0x16
	.byte	0x74
	.4byte	0xeff
	.uleb128 0xd
	.byte	0xc
	.byte	0x16
	.byte	0x76
	.4byte	0xf4c
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x16
	.byte	0x77
	.4byte	0x6d
	.byte	0
	.uleb128 0xe
	.string	"mac"
	.byte	0x16
	.byte	0x78
	.4byte	0x185
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF268
	.byte	0x16
	.byte	0x79
	.4byte	0xf2b
	.uleb128 0x18
	.byte	0x2c
	.byte	0x16
	.byte	0x7b
	.4byte	0xfd9
	.uleb128 0x1d
	.4byte	.LASF269
	.byte	0x16
	.byte	0x7c
	.4byte	0xdd0
	.uleb128 0x1d
	.4byte	.LASF270
	.byte	0x16
	.byte	0x7d
	.4byte	0xe14
	.uleb128 0x1d
	.4byte	.LASF271
	.byte	0x16
	.byte	0x7e
	.4byte	0xd80
	.uleb128 0x1d
	.4byte	.LASF272
	.byte	0x16
	.byte	0x7f
	.4byte	0xe40
	.uleb128 0x1d
	.4byte	.LASF273
	.byte	0x16
	.byte	0x80
	.4byte	0xe6c
	.uleb128 0x1d
	.4byte	.LASF274
	.byte	0x16
	.byte	0x81
	.4byte	0xe9c
	.uleb128 0x1d
	.4byte	.LASF275
	.byte	0x16
	.byte	0x82
	.4byte	0xd48
	.uleb128 0x1d
	.4byte	.LASF276
	.byte	0x16
	.byte	0x83
	.4byte	0xef4
	.uleb128 0x1d
	.4byte	.LASF277
	.byte	0x16
	.byte	0x84
	.4byte	0xf20
	.uleb128 0x1d
	.4byte	.LASF278
	.byte	0x16
	.byte	0x85
	.4byte	0xf4c
	.uleb128 0x1d
	.4byte	.LASF279
	.byte	0x16
	.byte	0x86
	.4byte	0xec8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF280
	.byte	0x16
	.byte	0x87
	.4byte	0xf57
	.uleb128 0xd
	.byte	0x30
	.byte	0x16
	.byte	0x89
	.4byte	0x1005
	.uleb128 0xf
	.4byte	.LASF281
	.byte	0x16
	.byte	0x8a
	.4byte	0xd1e
	.byte	0
	.uleb128 0xf
	.4byte	.LASF282
	.byte	0x16
	.byte	0x8b
	.4byte	0xfd9
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF283
	.byte	0x16
	.byte	0x8c
	.4byte	0xfe4
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7f
	.byte	0x17
	.byte	0x15
	.4byte	0x1239
	.uleb128 0x1e
	.string	"PAD"
	.byte	0
	.uleb128 0x1e
	.string	"END"
	.byte	0xff
	.uleb128 0xa
	.4byte	.LASF284
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF285
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF286
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF287
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF288
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF289
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF290
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF291
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF292
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF293
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF294
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF295
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF296
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF297
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF298
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF299
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF300
	.byte	0x11
	.uleb128 0xa
	.4byte	.LASF301
	.byte	0x12
	.uleb128 0xa
	.4byte	.LASF302
	.byte	0x13
	.uleb128 0xa
	.4byte	.LASF303
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF304
	.byte	0x15
	.uleb128 0xa
	.4byte	.LASF305
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF306
	.byte	0x17
	.uleb128 0xa
	.4byte	.LASF307
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF308
	.byte	0x19
	.uleb128 0xa
	.4byte	.LASF309
	.byte	0x1a
	.uleb128 0xa
	.4byte	.LASF310
	.byte	0x1b
	.uleb128 0xa
	.4byte	.LASF311
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF312
	.byte	0x1d
	.uleb128 0xa
	.4byte	.LASF313
	.byte	0x1e
	.uleb128 0xa
	.4byte	.LASF314
	.byte	0x1f
	.uleb128 0xa
	.4byte	.LASF315
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF316
	.byte	0x21
	.uleb128 0xa
	.4byte	.LASF317
	.byte	0x22
	.uleb128 0xa
	.4byte	.LASF318
	.byte	0x23
	.uleb128 0xa
	.4byte	.LASF319
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF320
	.byte	0x25
	.uleb128 0xa
	.4byte	.LASF321
	.byte	0x26
	.uleb128 0xa
	.4byte	.LASF322
	.byte	0x27
	.uleb128 0xa
	.4byte	.LASF323
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF324
	.byte	0x29
	.uleb128 0xa
	.4byte	.LASF325
	.byte	0x2a
	.uleb128 0xa
	.4byte	.LASF326
	.byte	0x2b
	.uleb128 0xa
	.4byte	.LASF327
	.byte	0x2c
	.uleb128 0xa
	.4byte	.LASF328
	.byte	0x2d
	.uleb128 0xa
	.4byte	.LASF329
	.byte	0x2e
	.uleb128 0xa
	.4byte	.LASF330
	.byte	0x2f
	.uleb128 0xa
	.4byte	.LASF331
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF332
	.byte	0x31
	.uleb128 0xa
	.4byte	.LASF333
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF334
	.byte	0x41
	.uleb128 0xa
	.4byte	.LASF335
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF336
	.byte	0x45
	.uleb128 0xa
	.4byte	.LASF337
	.byte	0x46
	.uleb128 0xa
	.4byte	.LASF338
	.byte	0x47
	.uleb128 0xa
	.4byte	.LASF339
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF340
	.byte	0x49
	.uleb128 0xa
	.4byte	.LASF341
	.byte	0x4a
	.uleb128 0xa
	.4byte	.LASF342
	.byte	0x4b
	.uleb128 0xa
	.4byte	.LASF343
	.byte	0x4c
	.uleb128 0xa
	.4byte	.LASF344
	.byte	0x32
	.uleb128 0xa
	.4byte	.LASF345
	.byte	0x33
	.uleb128 0xa
	.4byte	.LASF346
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF347
	.byte	0x42
	.uleb128 0xa
	.4byte	.LASF348
	.byte	0x43
	.uleb128 0xa
	.4byte	.LASF349
	.byte	0x35
	.uleb128 0xa
	.4byte	.LASF350
	.byte	0x36
	.uleb128 0xa
	.4byte	.LASF351
	.byte	0x37
	.uleb128 0xa
	.4byte	.LASF352
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF353
	.byte	0x39
	.uleb128 0xa
	.4byte	.LASF354
	.byte	0x3a
	.uleb128 0xa
	.4byte	.LASF355
	.byte	0x3b
	.uleb128 0xa
	.4byte	.LASF356
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF357
	.byte	0x3d
	.uleb128 0xa
	.4byte	.LASF358
	.byte	0x4d
	.uleb128 0xa
	.4byte	.LASF359
	.byte	0x51
	.uleb128 0xa
	.4byte	.LASF360
	.byte	0x52
	.uleb128 0xa
	.4byte	.LASF361
	.byte	0x55
	.uleb128 0xa
	.4byte	.LASF362
	.byte	0x56
	.uleb128 0xa
	.4byte	.LASF363
	.byte	0x57
	.uleb128 0xa
	.4byte	.LASF364
	.byte	0x5b
	.uleb128 0xa
	.4byte	.LASF365
	.byte	0x5c
	.uleb128 0xa
	.4byte	.LASF366
	.byte	0x62
	.uleb128 0xa
	.4byte	.LASF367
	.byte	0x74
	.uleb128 0xa
	.4byte	.LASF368
	.byte	0x75
	.uleb128 0xa
	.4byte	.LASF369
	.byte	0x76
	.uleb128 0xa
	.4byte	.LASF370
	.byte	0x77
	.uleb128 0xa
	.4byte	.LASF371
	.byte	0x79
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7f
	.byte	0x18
	.byte	0x1f
	.4byte	0x126a
	.uleb128 0xa
	.4byte	.LASF372
	.byte	0
	.uleb128 0xa
	.4byte	.LASF373
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF374
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF375
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF376
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF377
	.byte	0x5
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF518
	.byte	0x1
	.byte	0x7d
	.4byte	0xa17
	.byte	0x3
	.4byte	0x1286
	.uleb128 0x20
	.4byte	.LASF106
	.byte	0x1
	.byte	0x7d
	.4byte	0x4d5
	.byte	0
	.uleb128 0x21
	.4byte	.LASF384
	.byte	0x1
	.2byte	0x4b3
	.4byte	0xfb
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12b1
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x4b3
	.4byte	0x4d5
	.4byte	.LLST0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF397
	.byte	0x1
	.2byte	0x155
	.4byte	0xfb
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12eb
	.uleb128 0x24
	.string	"msg"
	.byte	0x1
	.2byte	0x155
	.4byte	0x12eb
	.4byte	.LLST1
	.uleb128 0x25
	.4byte	.LVL4
	.4byte	0x316c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x652
	.uleb128 0x27
	.4byte	.LASF379
	.byte	0x1
	.byte	0x59
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1374
	.uleb128 0x28
	.4byte	.LASF378
	.byte	0x1
	.byte	0x59
	.4byte	0x178
	.4byte	.LLST2
	.uleb128 0x29
	.string	"evt"
	.byte	0x1
	.byte	0x5d
	.4byte	0x1005
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.4byte	.LVL7
	.4byte	0x3175
	.uleb128 0x2b
	.4byte	.LVL9
	.4byte	0x3180
	.4byte	0x1362
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL10
	.4byte	0x318b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF380
	.byte	0x1
	.2byte	0x3c2
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13f0
	.uleb128 0x24
	.string	"arg"
	.byte	0x1
	.2byte	0x3c2
	.4byte	0x94
	.4byte	.LLST3
	.uleb128 0x2d
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x3c4
	.4byte	0x4d5
	.4byte	.LLST4
	.uleb128 0x2e
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x2d
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x3ca
	.4byte	0x94c
	.4byte	.LLST5
	.uleb128 0x2e
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x2f
	.string	"evt"
	.byte	0x1
	.2byte	0x3cd
	.4byte	0x1005
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.4byte	.LVL16
	.4byte	0x318b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF381
	.byte	0x1
	.2byte	0x1cb
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1458
	.uleb128 0x22
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x94c
	.4byte	.LLST6
	.uleb128 0x22
	.4byte	.LASF383
	.byte	0x1
	.2byte	0x1cb
	.4byte	0xcf
	.4byte	.LLST7
	.uleb128 0x2d
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x1cd
	.4byte	0x1458
	.4byte	.LLST8
	.uleb128 0x2f
	.string	"evt"
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x1005
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.4byte	.LVL29
	.4byte	0x318b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x43e
	.uleb128 0x30
	.4byte	.LASF385
	.byte	0x1
	.byte	0x85
	.4byte	0x6d
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14ee
	.uleb128 0x31
	.string	"msg"
	.byte	0x1
	.byte	0x85
	.4byte	0x12eb
	.4byte	.LLST9
	.uleb128 0x32
	.4byte	.LASF386
	.byte	0x1
	.byte	0x88
	.4byte	0x28d
	.4byte	.LLST10
	.uleb128 0x2a
	.4byte	.LVL31
	.4byte	0x3196
	.uleb128 0x2b
	.4byte	.LVL33
	.4byte	0x31a2
	.4byte	0x14b7
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL34
	.4byte	0x31ad
	.4byte	0x14dd
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	tcpip_adapter_api_cb
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	api_sync_sem
	.byte	0
	.uleb128 0x25
	.4byte	.LVL35
	.4byte	0x31b8
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF387
	.byte	0x1
	.byte	0x49
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1541
	.uleb128 0x33
	.4byte	.LASF388
	.byte	0x1
	.byte	0x49
	.4byte	0x94
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.string	"msg"
	.byte	0x1
	.byte	0x4b
	.4byte	0x12eb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x34
	.4byte	.LVL41
	.4byte	0x152d
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL42
	.4byte	0x31b8
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	api_sync_sem
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF389
	.byte	0x1
	.byte	0x98
	.4byte	0xfb
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1576
	.uleb128 0x2a
	.4byte	.LVL43
	.4byte	0x31c3
	.uleb128 0x2a
	.4byte	.LVL44
	.4byte	0x31c3
	.uleb128 0x2a
	.4byte	.LVL45
	.4byte	0x31c3
	.byte	0
	.uleb128 0x30
	.4byte	.LASF390
	.byte	0x1
	.byte	0xa5
	.4byte	0xfb
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1733
	.uleb128 0x28
	.4byte	.LASF106
	.byte	0x1
	.byte	0xa5
	.4byte	0x4d5
	.4byte	.LLST11
	.uleb128 0x31
	.string	"mac"
	.byte	0x1
	.byte	0xa5
	.4byte	0x178
	.4byte	.LLST12
	.uleb128 0x33
	.4byte	.LASF107
	.byte	0x1
	.byte	0xa5
	.4byte	0x64c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x35
	.4byte	.LASF391
	.byte	0x1
	.byte	0xa7
	.4byte	0xa17
	.uleb128 0x36
	.4byte	.LASF392
	.4byte	0x1743
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8484
	.uleb128 0x37
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x1640
	.uleb128 0x29
	.string	"msg"
	.byte	0x1
	.byte	0xa9
	.4byte	0x652
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.4byte	.LVL47
	.4byte	0x3175
	.uleb128 0x2b
	.4byte	.LVL48
	.4byte	0x3180
	.4byte	0x1626
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL49
	.4byte	0x31cf
	.uleb128 0x25
	.4byte	.LVL50
	.4byte	0x145e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0x126a
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0xb9
	.4byte	0x165d
	.uleb128 0x39
	.4byte	0x127a
	.4byte	.LLST13
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL53
	.4byte	0x31da
	.4byte	0x1676
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xf0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL54
	.4byte	0x316c
	.4byte	0x1696
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x75
	.sleb128 183
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL58
	.4byte	0x31e5
	.4byte	0x16c5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xba
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8484
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL59
	.4byte	0x31f0
	.4byte	0x16f7
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL60
	.4byte	0x31fc
	.uleb128 0x2a
	.4byte	.LVL61
	.4byte	0x3208
	.uleb128 0x2b
	.4byte	.LVL62
	.4byte	0x3214
	.4byte	0x1720
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	tcpip_adapter_dhcps_cb
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL64
	.4byte	0x321f
	.uleb128 0x2a
	.4byte	.LVL65
	.4byte	0x1541
	.byte	0
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0x1743
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.4byte	0x1733
	.uleb128 0x30
	.4byte	.LASF393
	.byte	0x1
	.byte	0xea
	.4byte	0xfb
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x177a
	.uleb128 0x31
	.string	"msg"
	.byte	0x1
	.byte	0xea
	.4byte	0x12eb
	.4byte	.LLST14
	.uleb128 0x2a
	.4byte	.LVL73
	.4byte	0x1576
	.byte	0
	.uleb128 0x21
	.4byte	.LASF394
	.byte	0x1
	.2byte	0x3a5
	.4byte	0xfb
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17e7
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x3a5
	.4byte	0x4d5
	.4byte	.LLST15
	.uleb128 0x2d
	.4byte	.LASF395
	.byte	0x1
	.2byte	0x3a7
	.4byte	0x64c
	.4byte	.LLST16
	.uleb128 0x2d
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x3a8
	.4byte	0x94c
	.4byte	.LLST17
	.uleb128 0x25
	.4byte	.LVL79
	.4byte	0x322a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x1d4c0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	tcpip_adapter_ip_lost_timer
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF396
	.byte	0x1
	.2byte	0x364
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18d6
	.uleb128 0x22
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x364
	.4byte	0x94c
	.4byte	.LLST18
	.uleb128 0x2d
	.4byte	.LASF395
	.byte	0x1
	.2byte	0x366
	.4byte	0x64c
	.4byte	.LLST19
	.uleb128 0x2d
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x367
	.4byte	0x64c
	.4byte	.LLST20
	.uleb128 0x2d
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x368
	.4byte	0x4d5
	.4byte	.LLST21
	.uleb128 0x37
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x18cc
	.uleb128 0x2f
	.string	"evt"
	.byte	0x1
	.2byte	0x382
	.4byte	0x1005
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.4byte	.LVL88
	.4byte	0x3235
	.4byte	0x1879
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL89
	.4byte	0x316c
	.4byte	0x189a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL90
	.4byte	0x316c
	.4byte	0x18ba
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL91
	.4byte	0x318b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL96
	.4byte	0x177a
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF519
	.byte	0x1
	.byte	0x62
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19b5
	.uleb128 0x3b
	.string	"ret"
	.byte	0x1
	.byte	0x64
	.4byte	0x6d
	.4byte	.LLST22
	.uleb128 0x2b
	.4byte	.LVL97
	.4byte	0x3240
	.4byte	0x1912
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL98
	.4byte	0x324b
	.4byte	0x192e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	api_sync_sem
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL100
	.4byte	0x3175
	.uleb128 0x2b
	.4byte	.LVL101
	.4byte	0x3180
	.4byte	0x1965
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL102
	.4byte	0x324b
	.4byte	0x1981
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	api_lock_sem
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL104
	.4byte	0x3175
	.uleb128 0x25
	.4byte	.LVL105
	.4byte	0x3180
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC55
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF398
	.byte	0x1
	.byte	0xd8
	.4byte	0xfb
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a06
	.uleb128 0x31
	.string	"mac"
	.byte	0x1
	.byte	0xd8
	.4byte	0x178
	.4byte	.LLST23
	.uleb128 0x33
	.4byte	.LASF107
	.byte	0x1
	.byte	0xd8
	.4byte	0x64c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.LVL107
	.4byte	0x1576
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF399
	.byte	0x1
	.byte	0xde
	.4byte	0xfb
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a57
	.uleb128 0x31
	.string	"mac"
	.byte	0x1
	.byte	0xde
	.4byte	0x178
	.4byte	.LLST24
	.uleb128 0x33
	.4byte	.LASF107
	.byte	0x1
	.byte	0xde
	.4byte	0x64c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.LVL110
	.4byte	0x1576
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF400
	.byte	0x1
	.byte	0xe4
	.4byte	0xfb
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1aa8
	.uleb128 0x31
	.string	"mac"
	.byte	0x1
	.byte	0xe4
	.4byte	0x178
	.4byte	.LLST25
	.uleb128 0x33
	.4byte	.LASF107
	.byte	0x1
	.byte	0xe4
	.4byte	0x64c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.LVL113
	.4byte	0x1576
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF401
	.byte	0x1
	.byte	0xef
	.4byte	0xfb
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b99
	.uleb128 0x28
	.4byte	.LASF106
	.byte	0x1
	.byte	0xef
	.4byte	0x4d5
	.4byte	.LLST26
	.uleb128 0x37
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x1b3c
	.uleb128 0x29
	.string	"msg"
	.byte	0x1
	.byte	0xf1
	.4byte	0x652
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.4byte	.LVL116
	.4byte	0x3175
	.uleb128 0x2b
	.4byte	.LVL117
	.4byte	0x3180
	.4byte	0x1b22
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL118
	.4byte	0x31cf
	.uleb128 0x25
	.4byte	.LVL119
	.4byte	0x145e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL122
	.4byte	0x3256
	.uleb128 0x2a
	.4byte	.LVL125
	.4byte	0x3262
	.uleb128 0x2a
	.4byte	.LVL126
	.4byte	0x326d
	.uleb128 0x2a
	.4byte	.LVL127
	.4byte	0x3278
	.uleb128 0x2a
	.4byte	.LVL128
	.4byte	0x3283
	.uleb128 0x2b
	.4byte	.LVL129
	.4byte	0x1286
	.4byte	0x1b7d
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL131
	.4byte	0x328e
	.uleb128 0x2a
	.4byte	.LVL132
	.4byte	0x3256
	.uleb128 0x2a
	.4byte	.LVL133
	.4byte	0x1541
	.byte	0
	.uleb128 0x21
	.4byte	.LASF402
	.byte	0x1
	.2byte	0x116
	.4byte	0xfb
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bcd
	.uleb128 0x24
	.string	"msg"
	.byte	0x1
	.2byte	0x116
	.4byte	0x12eb
	.4byte	.LLST27
	.uleb128 0x2a
	.4byte	.LVL139
	.4byte	0x1aa8
	.byte	0
	.uleb128 0x23
	.4byte	.LASF403
	.byte	0x1
	.2byte	0x11c
	.4byte	0xfb
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cbe
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x11c
	.4byte	0x4d5
	.4byte	.LLST28
	.uleb128 0x37
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x1c64
	.uleb128 0x2f
	.string	"msg"
	.byte	0x1
	.2byte	0x11e
	.4byte	0x652
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.4byte	.LVL142
	.4byte	0x3175
	.uleb128 0x2b
	.4byte	.LVL143
	.4byte	0x3180
	.4byte	0x1c4a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL144
	.4byte	0x31cf
	.uleb128 0x25
	.4byte	.LVL145
	.4byte	0x145e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL148
	.4byte	0x329a
	.4byte	0x1cab
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xf
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	esp_ip
	.byte	0x22
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xf
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	esp_ip+4
	.byte	0x22
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0xf
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	esp_ip+8
	.byte	0x22
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL150
	.4byte	0x3208
	.uleb128 0x2a
	.4byte	.LVL151
	.4byte	0x1541
	.byte	0
	.uleb128 0x21
	.4byte	.LASF404
	.byte	0x1
	.2byte	0x12f
	.4byte	0xfb
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cf2
	.uleb128 0x24
	.string	"msg"
	.byte	0x1
	.2byte	0x12f
	.4byte	0x12eb
	.4byte	.LLST29
	.uleb128 0x2a
	.4byte	.LVL155
	.4byte	0x1bcd
	.byte	0
	.uleb128 0x23
	.4byte	.LASF405
	.byte	0x1
	.2byte	0x135
	.4byte	0xfb
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dd6
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x135
	.4byte	0x4d5
	.4byte	.LLST30
	.uleb128 0x37
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x1d89
	.uleb128 0x2f
	.string	"msg"
	.byte	0x1
	.2byte	0x137
	.4byte	0x652
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.4byte	.LVL158
	.4byte	0x3175
	.uleb128 0x2b
	.4byte	.LVL159
	.4byte	0x3180
	.4byte	0x1d6f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL160
	.4byte	0x31cf
	.uleb128 0x25
	.4byte	.LVL161
	.4byte	0x145e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL164
	.4byte	0x3278
	.uleb128 0x2b
	.4byte	.LVL165
	.4byte	0x1286
	.4byte	0x1da6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL166
	.4byte	0x329a
	.uleb128 0x2a
	.4byte	.LVL167
	.4byte	0x328e
	.uleb128 0x2b
	.4byte	.LVL168
	.4byte	0x177a
	.4byte	0x1dcc
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL169
	.4byte	0x1541
	.byte	0
	.uleb128 0x21
	.4byte	.LASF406
	.byte	0x1
	.2byte	0x150
	.4byte	0xfb
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e0a
	.uleb128 0x24
	.string	"msg"
	.byte	0x1
	.2byte	0x150
	.4byte	0x12eb
	.4byte	.LLST31
	.uleb128 0x2a
	.4byte	.LVL174
	.4byte	0x1cf2
	.byte	0
	.uleb128 0x23
	.4byte	.LASF407
	.byte	0x1
	.2byte	0x15b
	.4byte	0xfb
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1eac
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x15b
	.4byte	0x4d5
	.4byte	.LLST32
	.uleb128 0x3d
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x15b
	.4byte	0x64c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x2f
	.string	"msg"
	.byte	0x1
	.2byte	0x161
	.4byte	0x652
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.4byte	.LVL177
	.4byte	0x3175
	.uleb128 0x2b
	.4byte	.LVL178
	.4byte	0x3180
	.4byte	0x1e91
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL179
	.4byte	0x31cf
	.uleb128 0x25
	.4byte	.LVL181
	.4byte	0x145e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF408
	.byte	0x1
	.2byte	0x166
	.4byte	0xfb
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f08
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x166
	.4byte	0x4d5
	.4byte	.LLST33
	.uleb128 0x3d
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x166
	.4byte	0x64c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.LVL186
	.4byte	0x316c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xa
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	esp_ip_old
	.byte	0x22
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF409
	.byte	0x1
	.2byte	0x170
	.4byte	0xfb
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f51
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x170
	.4byte	0x4d5
	.4byte	.LLST34
	.uleb128 0x3d
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x170
	.4byte	0x64c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x172
	.4byte	0x94c
	.4byte	.LLST35
	.byte	0
	.uleb128 0x23
	.4byte	.LASF410
	.byte	0x1
	.2byte	0x1ec
	.4byte	0xfb
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x202b
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x1ec
	.4byte	0x4d5
	.4byte	.LLST36
	.uleb128 0x2d
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x94c
	.4byte	.LLST37
	.uleb128 0x37
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x1ff8
	.uleb128 0x2f
	.string	"msg"
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x652
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.4byte	.LVL198
	.4byte	0x3175
	.uleb128 0x2b
	.4byte	.LVL199
	.4byte	0x3180
	.4byte	0x1fde
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL200
	.4byte	0x31cf
	.uleb128 0x25
	.4byte	.LVL201
	.4byte	0x145e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL206
	.4byte	0x32a6
	.4byte	0x2011
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.4byte	.LVL207
	.4byte	0x32b2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	tcpip_adapter_nd6_cb
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF411
	.byte	0x1
	.2byte	0x201
	.4byte	0xfb
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x205f
	.uleb128 0x24
	.string	"msg"
	.byte	0x1
	.2byte	0x201
	.4byte	0x12eb
	.4byte	.LLST38
	.uleb128 0x2a
	.4byte	.LVL216
	.4byte	0x1f51
	.byte	0
	.uleb128 0x23
	.4byte	.LASF412
	.byte	0x1
	.2byte	0x206
	.4byte	0xfb
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20bd
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x206
	.4byte	0x4d5
	.4byte	.LLST39
	.uleb128 0x3d
	.4byte	.LASF413
	.byte	0x1
	.2byte	0x206
	.4byte	0x20bd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x208
	.4byte	0x94c
	.4byte	.LLST40
	.uleb128 0x25
	.4byte	.LVL222
	.4byte	0x316c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x316
	.uleb128 0x23
	.4byte	.LASF414
	.byte	0x1
	.2byte	0x23f
	.4byte	0xfb
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x222b
	.uleb128 0x22
	.4byte	.LASF415
	.byte	0x1
	.2byte	0x23f
	.4byte	0x584
	.4byte	.LLST41
	.uleb128 0x22
	.4byte	.LASF416
	.byte	0x1
	.2byte	0x23f
	.4byte	0x5ba
	.4byte	.LLST42
	.uleb128 0x3d
	.4byte	.LASF417
	.byte	0x1
	.2byte	0x23f
	.4byte	0x94
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3d
	.4byte	.LASF418
	.byte	0x1
	.2byte	0x23f
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3e
	.4byte	.LASF419
	.byte	0x1
	.2byte	0x241
	.4byte	0x94
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x37
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x21d4
	.uleb128 0x3e
	.4byte	.LASF420
	.byte	0x1
	.2byte	0x277
	.4byte	0x41f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.4byte	.LASF421
	.byte	0x1
	.2byte	0x278
	.4byte	0xf0
	.4byte	.LLST43
	.uleb128 0x2d
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x279
	.4byte	0xf0
	.4byte	.LLST44
	.uleb128 0x2d
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x27a
	.4byte	0xf0
	.4byte	.LLST45
	.uleb128 0x2d
	.4byte	.LASF422
	.byte	0x1
	.2byte	0x27b
	.4byte	0x222b
	.4byte	.LLST46
	.uleb128 0x2b
	.4byte	.LVL234
	.4byte	0x1f08
	.4byte	0x219c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL235
	.4byte	0x32bd
	.uleb128 0x2a
	.4byte	.LVL237
	.4byte	0x32bd
	.uleb128 0x2a
	.4byte	.LVL239
	.4byte	0x32bd
	.uleb128 0x25
	.4byte	.LVL244
	.4byte	0x316c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL227
	.4byte	0x32c8
	.4byte	0x21ee
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL230
	.4byte	0x316c
	.4byte	0x220e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL254
	.4byte	0x32d3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3c0
	.uleb128 0x23
	.4byte	.LASF423
	.byte	0x1
	.2byte	0x2b4
	.4byte	0xfb
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2324
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x2b4
	.4byte	0x4d5
	.4byte	.LLST47
	.uleb128 0x3d
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x2b4
	.4byte	0x505
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3f
	.string	"dns"
	.byte	0x1
	.2byte	0x2b4
	.4byte	0x682
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3e
	.4byte	.LASF424
	.byte	0x1
	.2byte	0x2b6
	.4byte	0x688
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x37
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x22f6
	.uleb128 0x2f
	.string	"msg"
	.byte	0x1
	.2byte	0x2bb
	.4byte	0x652
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.4byte	.LVL260
	.4byte	0x3175
	.uleb128 0x2b
	.4byte	.LVL261
	.4byte	0x3180
	.4byte	0x22db
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL262
	.4byte	0x31cf
	.uleb128 0x25
	.4byte	.LVL263
	.4byte	0x145e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL267
	.4byte	0x32de
	.4byte	0x2313
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL268
	.4byte	0x32e9
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF425
	.byte	0x1
	.2byte	0x2e2
	.4byte	0xfb
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2368
	.uleb128 0x24
	.string	"msg"
	.byte	0x1
	.2byte	0x2e2
	.4byte	0x12eb
	.4byte	.LLST48
	.uleb128 0x2d
	.4byte	.LASF424
	.byte	0x1
	.2byte	0x2e4
	.4byte	0x2368
	.4byte	.LLST49
	.uleb128 0x2a
	.4byte	.LVL280
	.4byte	0x2231
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x688
	.uleb128 0x23
	.4byte	.LASF426
	.byte	0x1
	.2byte	0x2e9
	.4byte	0xfb
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2479
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x2e9
	.4byte	0x4d5
	.4byte	.LLST50
	.uleb128 0x3d
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x2e9
	.4byte	0x505
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3f
	.string	"dns"
	.byte	0x1
	.2byte	0x2e9
	.4byte	0x682
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3e
	.4byte	.LASF424
	.byte	0x1
	.2byte	0x2eb
	.4byte	0x688
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x37
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0x2433
	.uleb128 0x2f
	.string	"msg"
	.byte	0x1
	.2byte	0x2f0
	.4byte	0x652
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.4byte	.LVL283
	.4byte	0x3175
	.uleb128 0x2b
	.4byte	.LVL284
	.4byte	0x3180
	.4byte	0x2418
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL285
	.4byte	0x31cf
	.uleb128 0x25
	.4byte	.LVL286
	.4byte	0x145e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL290
	.4byte	0x32f4
	.4byte	0x2450
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL291
	.4byte	0x316c
	.4byte	0x246f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL292
	.4byte	0x32ff
	.byte	0
	.uleb128 0x21
	.4byte	.LASF427
	.byte	0x1
	.2byte	0x309
	.4byte	0xfb
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24bd
	.uleb128 0x24
	.string	"msg"
	.byte	0x1
	.2byte	0x309
	.4byte	0x12eb
	.4byte	.LLST51
	.uleb128 0x2d
	.4byte	.LASF424
	.byte	0x1
	.2byte	0x30b
	.4byte	0x2368
	.4byte	.LLST52
	.uleb128 0x2a
	.4byte	.LVL301
	.4byte	0x236e
	.byte	0
	.uleb128 0x23
	.4byte	.LASF428
	.byte	0x1
	.2byte	0x310
	.4byte	0xfb
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24f6
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x310
	.4byte	0x4d5
	.4byte	.LLST53
	.uleb128 0x3d
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x310
	.4byte	0x24f6
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x554
	.uleb128 0x23
	.4byte	.LASF429
	.byte	0x1
	.2byte	0x317
	.4byte	0xfb
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25f0
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x317
	.4byte	0x4d5
	.4byte	.LLST54
	.uleb128 0x37
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x2593
	.uleb128 0x2f
	.string	"msg"
	.byte	0x1
	.2byte	0x319
	.4byte	0x652
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.4byte	.LVL306
	.4byte	0x3175
	.uleb128 0x2b
	.4byte	.LVL307
	.4byte	0x3180
	.4byte	0x2579
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL308
	.4byte	0x31cf
	.uleb128 0x25
	.4byte	.LVL309
	.4byte	0x145e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x2d
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x322
	.4byte	0x94c
	.4byte	.LLST55
	.uleb128 0x2e
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.uleb128 0x3e
	.4byte	.LASF430
	.byte	0x1
	.2byte	0x325
	.4byte	0x41f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.4byte	.LVL314
	.4byte	0x1f08
	.4byte	0x25dd
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x25
	.4byte	.LVL315
	.4byte	0x321f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF431
	.byte	0x1
	.2byte	0x336
	.4byte	0xfb
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2624
	.uleb128 0x24
	.string	"msg"
	.byte	0x1
	.2byte	0x336
	.4byte	0x12eb
	.4byte	.LLST56
	.uleb128 0x2a
	.4byte	.LVL324
	.4byte	0x24fc
	.byte	0
	.uleb128 0x23
	.4byte	.LASF432
	.byte	0x1
	.2byte	0x33c
	.4byte	0xfb
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26db
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x33c
	.4byte	0x4d5
	.4byte	.LLST57
	.uleb128 0x37
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0x26bb
	.uleb128 0x2f
	.string	"msg"
	.byte	0x1
	.2byte	0x33e
	.4byte	0x652
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.4byte	.LVL327
	.4byte	0x3175
	.uleb128 0x2b
	.4byte	.LVL328
	.4byte	0x3180
	.4byte	0x26a1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL329
	.4byte	0x31cf
	.uleb128 0x25
	.4byte	.LVL330
	.4byte	0x145e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x40
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2d
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x347
	.4byte	0x94c
	.4byte	.LLST58
	.uleb128 0x2a
	.4byte	.LVL335
	.4byte	0x3262
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF433
	.byte	0x1
	.2byte	0x359
	.4byte	0xfb
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x270f
	.uleb128 0x24
	.string	"msg"
	.byte	0x1
	.2byte	0x359
	.4byte	0x12eb
	.4byte	.LLST59
	.uleb128 0x2a
	.4byte	.LVL344
	.4byte	0x2624
	.byte	0
	.uleb128 0x23
	.4byte	.LASF434
	.byte	0x1
	.2byte	0x35e
	.4byte	0xfb
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2764
	.uleb128 0x22
	.4byte	.LASF415
	.byte	0x1
	.2byte	0x35e
	.4byte	0x584
	.4byte	.LLST60
	.uleb128 0x3d
	.4byte	.LASF416
	.byte	0x1
	.2byte	0x35e
	.4byte	0x5ba
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3d
	.4byte	.LASF417
	.byte	0x1
	.2byte	0x35e
	.4byte	0x94
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3d
	.4byte	.LASF418
	.byte	0x1
	.2byte	0x35e
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x23
	.4byte	.LASF435
	.byte	0x1
	.2byte	0x3db
	.4byte	0xfb
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x279d
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x3db
	.4byte	0x4d5
	.4byte	.LLST61
	.uleb128 0x3d
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x3db
	.4byte	0x24f6
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x23
	.4byte	.LASF436
	.byte	0x1
	.2byte	0x189
	.4byte	0xfb
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2959
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x189
	.4byte	0x4d5
	.4byte	.LLST62
	.uleb128 0x3d
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x189
	.4byte	0x64c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x18b
	.4byte	0x94c
	.4byte	.LLST63
	.uleb128 0x3e
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x18c
	.4byte	0x554
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x37
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0x2864
	.uleb128 0x2f
	.string	"msg"
	.byte	0x1
	.2byte	0x18e
	.4byte	0x652
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2a
	.4byte	.LVL351
	.4byte	0x3175
	.uleb128 0x2b
	.4byte	.LVL352
	.4byte	0x3180
	.4byte	0x2849
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL353
	.4byte	0x31cf
	.uleb128 0x25
	.4byte	.LVL354
	.4byte	0x145e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.4byte	0x28f3
	.uleb128 0x2f
	.string	"evt"
	.byte	0x1
	.2byte	0x1af
	.4byte	0x1005
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.4byte	.LVL364
	.4byte	0x3235
	.4byte	0x28a0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL365
	.4byte	0x316c
	.4byte	0x28c1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL366
	.4byte	0x316c
	.4byte	0x28e1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL367
	.4byte	0x318b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL357
	.4byte	0x24bd
	.4byte	0x290e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL358
	.4byte	0x2764
	.4byte	0x2929
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL359
	.4byte	0x330a
	.4byte	0x293c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.4byte	.LVL361
	.4byte	0x329a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 8
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF437
	.byte	0x1
	.2byte	0x1c6
	.4byte	0xfb
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x298d
	.uleb128 0x24
	.string	"msg"
	.byte	0x1
	.2byte	0x1c6
	.4byte	0x12eb
	.4byte	.LLST64
	.uleb128 0x2a
	.4byte	.LVL387
	.4byte	0x279d
	.byte	0
	.uleb128 0x23
	.4byte	.LASF438
	.byte	0x1
	.2byte	0x3e2
	.4byte	0xfb
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2aa3
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x3e2
	.4byte	0x4d5
	.4byte	.LLST65
	.uleb128 0x37
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0x2a24
	.uleb128 0x2f
	.string	"msg"
	.byte	0x1
	.2byte	0x3e4
	.4byte	0x652
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.4byte	.LVL390
	.4byte	0x3175
	.uleb128 0x2b
	.4byte	.LVL391
	.4byte	0x3180
	.4byte	0x2a0a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL392
	.4byte	0x31cf
	.uleb128 0x25
	.4byte	.LVL393
	.4byte	0x145e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x40
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x2d
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x3ec
	.4byte	0x94c
	.4byte	.LLST66
	.uleb128 0x2b
	.4byte	.LVL397
	.4byte	0x1286
	.4byte	0x2a4d
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL398
	.4byte	0x330a
	.4byte	0x2a60
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL399
	.4byte	0x177a
	.4byte	0x2a74
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL400
	.4byte	0x3315
	.4byte	0x2a88
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL404
	.4byte	0x3320
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	tcpip_adapter_dhcpc_cb
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF439
	.byte	0x1
	.2byte	0x415
	.4byte	0xfb
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ad7
	.uleb128 0x24
	.string	"msg"
	.byte	0x1
	.2byte	0x415
	.4byte	0x12eb
	.4byte	.LLST67
	.uleb128 0x2a
	.4byte	.LVL418
	.4byte	0x298d
	.byte	0
	.uleb128 0x23
	.4byte	.LASF440
	.byte	0x1
	.2byte	0x41a
	.4byte	0xfb
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2bb2
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x41a
	.4byte	0x4d5
	.4byte	.LLST68
	.uleb128 0x37
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0x2b6e
	.uleb128 0x2f
	.string	"msg"
	.byte	0x1
	.2byte	0x41c
	.4byte	0x652
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.4byte	.LVL421
	.4byte	0x3175
	.uleb128 0x2b
	.4byte	.LVL422
	.4byte	0x3180
	.4byte	0x2b54
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL423
	.4byte	0x31cf
	.uleb128 0x25
	.4byte	.LVL424
	.4byte	0x145e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x40
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x2d
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x424
	.4byte	0x94c
	.4byte	.LLST69
	.uleb128 0x2a
	.4byte	.LVL428
	.4byte	0x3278
	.uleb128 0x2b
	.4byte	.LVL429
	.4byte	0x1286
	.4byte	0x2ba0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL430
	.4byte	0x177a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF441
	.byte	0x1
	.2byte	0x43b
	.4byte	0xfb
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2be6
	.uleb128 0x24
	.string	"msg"
	.byte	0x1
	.2byte	0x43b
	.4byte	0x12eb
	.4byte	.LLST70
	.uleb128 0x2a
	.4byte	.LVL441
	.4byte	0x2ad7
	.byte	0
	.uleb128 0x23
	.4byte	.LASF442
	.byte	0x1
	.2byte	0x440
	.4byte	0xfb
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c46
	.uleb128 0x22
	.4byte	.LASF443
	.byte	0x1
	.2byte	0x440
	.4byte	0x94
	.4byte	.LLST71
	.uleb128 0x3f
	.string	"len"
	.byte	0x1
	.2byte	0x440
	.4byte	0xda
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3f
	.string	"eb"
	.byte	0x1
	.2byte	0x440
	.4byte	0x94
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x25
	.4byte	.LVL444
	.4byte	0x332b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF444
	.byte	0x1
	.2byte	0x446
	.4byte	0xfb
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2cac
	.uleb128 0x22
	.4byte	.LASF443
	.byte	0x1
	.2byte	0x446
	.4byte	0x94
	.4byte	.LLST72
	.uleb128 0x3f
	.string	"len"
	.byte	0x1
	.2byte	0x446
	.4byte	0xda
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3f
	.string	"eb"
	.byte	0x1
	.2byte	0x446
	.4byte	0x94
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x25
	.4byte	.LVL447
	.4byte	0x3336
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF445
	.byte	0x1
	.2byte	0x44c
	.4byte	0xfb
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d12
	.uleb128 0x22
	.4byte	.LASF443
	.byte	0x1
	.2byte	0x44c
	.4byte	0x94
	.4byte	.LLST73
	.uleb128 0x3f
	.string	"len"
	.byte	0x1
	.2byte	0x44c
	.4byte	0xda
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3f
	.string	"eb"
	.byte	0x1
	.2byte	0x44c
	.4byte	0x94
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x25
	.4byte	.LVL450
	.4byte	0x3336
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF446
	.byte	0x1
	.2byte	0x45a
	.4byte	0x12b
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d4d
	.uleb128 0x24
	.string	"dev"
	.byte	0x1
	.2byte	0x45a
	.4byte	0x94
	.4byte	.LLST74
	.uleb128 0x2d
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x45c
	.4byte	0x94c
	.4byte	.LLST75
	.byte	0
	.uleb128 0x23
	.4byte	.LASF447
	.byte	0x1
	.2byte	0x469
	.4byte	0xfb
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2df2
	.uleb128 0x22
	.4byte	.LASF448
	.byte	0x1
	.2byte	0x469
	.4byte	0x2df2
	.4byte	.LLST76
	.uleb128 0x3d
	.4byte	.LASF449
	.byte	0x1
	.2byte	0x469
	.4byte	0x2df8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x41
	.string	"i"
	.byte	0x1
	.2byte	0x46b
	.4byte	0x6d
	.4byte	.LLST77
	.uleb128 0x2b
	.4byte	.LVL462
	.4byte	0x3341
	.4byte	0x2db2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x7c
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL465
	.4byte	0x316c
	.4byte	0x2ddb
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xc
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x25
	.4byte	.LVL466
	.4byte	0x334a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x250
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4a5
	.uleb128 0x23
	.4byte	.LASF450
	.byte	0x1
	.2byte	0x47b
	.4byte	0xfb
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f15
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x47b
	.4byte	0x4d5
	.4byte	.LLST78
	.uleb128 0x3d
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x47b
	.4byte	0xb9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x47f
	.4byte	0x94c
	.4byte	.LLST79
	.uleb128 0x3e
	.4byte	.LASF451
	.byte	0x1
	.2byte	0x480
	.4byte	0x2f15
	.uleb128 0x5
	.byte	0x3
	.4byte	hostinfo$8712
	.uleb128 0x37
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.4byte	0x2ec5
	.uleb128 0x2f
	.string	"msg"
	.byte	0x1
	.2byte	0x47e
	.4byte	0x652
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.4byte	.LVL472
	.4byte	0x3175
	.uleb128 0x2b
	.4byte	.LVL473
	.4byte	0x3180
	.4byte	0x2eab
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL474
	.4byte	0x31cf
	.uleb128 0x25
	.4byte	.LVL475
	.4byte	0x145e
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL478
	.4byte	0x3355
	.4byte	0x2ed9
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL481
	.4byte	0x3341
	.4byte	0x2ef8
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL482
	.4byte	0x3360
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0x2f2b
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x2
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF452
	.byte	0x1
	.2byte	0x498
	.4byte	0xfb
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f6f
	.uleb128 0x24
	.string	"msg"
	.byte	0x1
	.2byte	0x498
	.4byte	0x12eb
	.4byte	.LLST80
	.uleb128 0x2d
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x49a
	.4byte	0xb9
	.4byte	.LLST81
	.uleb128 0x2a
	.4byte	.LVL491
	.4byte	0x2dfe
	.byte	0
	.uleb128 0x23
	.4byte	.LASF453
	.byte	0x1
	.2byte	0x49f
	.4byte	0xfb
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2fb8
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x49f
	.4byte	0x4d5
	.4byte	.LLST82
	.uleb128 0x3d
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x49f
	.4byte	0x2fb8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x4a2
	.4byte	0x94c
	.4byte	.LLST83
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb9
	.uleb128 0x23
	.4byte	.LASF454
	.byte	0x1
	.2byte	0x4bb
	.4byte	0xfb
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ff7
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x4bb
	.4byte	0x4d5
	.4byte	.LLST84
	.uleb128 0x3d
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x4bb
	.4byte	0x2ff7
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x94
	.uleb128 0x23
	.4byte	.LASF455
	.byte	0x1
	.2byte	0x4c9
	.4byte	0x17e
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3028
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x4c9
	.4byte	0x4d5
	.4byte	.LLST85
	.byte	0
	.uleb128 0xb
	.4byte	0x94c
	.4byte	0x3038
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x2
	.byte	0
	.uleb128 0x42
	.4byte	.LASF456
	.byte	0x1
	.byte	0x2a
	.4byte	0x3028
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_netif
	.uleb128 0xb
	.4byte	0x41f
	.4byte	0x3059
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x2
	.byte	0
	.uleb128 0x42
	.4byte	.LASF457
	.byte	0x1
	.byte	0x2b
	.4byte	0x3049
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_ip
	.uleb128 0x42
	.4byte	.LASF458
	.byte	0x1
	.byte	0x2c
	.4byte	0x3049
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_ip_old
	.uleb128 0xb
	.4byte	0x43e
	.4byte	0x308b
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x2
	.byte	0
	.uleb128 0x42
	.4byte	.LASF459
	.byte	0x1
	.byte	0x2d
	.4byte	0x307b
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_ip6
	.uleb128 0xb
	.4byte	0xa17
	.4byte	0x30ac
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x2
	.byte	0
	.uleb128 0x42
	.4byte	.LASF460
	.byte	0x1
	.byte	0x2e
	.4byte	0x309c
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_netif_init_fn
	.uleb128 0xb
	.4byte	0x6ac
	.4byte	0x30cd
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x2
	.byte	0
	.uleb128 0x42
	.4byte	.LASF461
	.byte	0x1
	.byte	0x2f
	.4byte	0x30bd
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_ip_lost_timer
	.uleb128 0x42
	.4byte	.LASF462
	.byte	0x1
	.byte	0x31
	.4byte	0x554
	.uleb128 0x5
	.byte	0x3
	.4byte	dhcps_status
	.uleb128 0xb
	.4byte	0x554
	.4byte	0x30ff
	.uleb128 0xc
	.4byte	0x9d
	.byte	0x2
	.byte	0
	.uleb128 0x42
	.4byte	.LASF463
	.byte	0x1
	.byte	0x32
	.4byte	0x30ef
	.uleb128 0x5
	.byte	0x3
	.4byte	dhcpc_status
	.uleb128 0x42
	.4byte	.LASF464
	.byte	0x1
	.byte	0x43
	.4byte	0x2b3
	.uleb128 0x5
	.byte	0x3
	.4byte	api_sync_sem
	.uleb128 0x42
	.4byte	.LASF465
	.byte	0x1
	.byte	0x44
	.4byte	0x17e
	.uleb128 0x5
	.byte	0x3
	.4byte	tcpip_inited
	.uleb128 0x42
	.4byte	.LASF466
	.byte	0x1
	.byte	0x45
	.4byte	0x2b3
	.uleb128 0x5
	.byte	0x3
	.4byte	api_lock_sem
	.uleb128 0x29
	.string	"TAG"
	.byte	0x1
	.byte	0x47
	.4byte	0x298
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.uleb128 0x43
	.4byte	.LASF467
	.byte	0xd
	.2byte	0x157
	.4byte	0xc70
	.uleb128 0x44
	.4byte	.LASF468
	.byte	0x1
	.byte	0x46
	.4byte	0x2be
	.uleb128 0x45
	.4byte	.LASF510
	.4byte	.LASF510
	.uleb128 0x46
	.4byte	.LASF469
	.4byte	.LASF469
	.byte	0x18
	.byte	0x57
	.uleb128 0x46
	.4byte	.LASF470
	.4byte	.LASF470
	.byte	0x18
	.byte	0x6b
	.uleb128 0x46
	.4byte	.LASF471
	.4byte	.LASF471
	.byte	0x16
	.byte	0x9a
	.uleb128 0x47
	.4byte	.LASF472
	.4byte	.LASF472
	.byte	0x7
	.2byte	0x899
	.uleb128 0x46
	.4byte	.LASF473
	.4byte	.LASF473
	.byte	0x19
	.byte	0xc6
	.uleb128 0x46
	.4byte	.LASF474
	.4byte	.LASF474
	.byte	0x1a
	.byte	0x5f
	.uleb128 0x46
	.4byte	.LASF475
	.4byte	.LASF475
	.byte	0x19
	.byte	0xb5
	.uleb128 0x47
	.4byte	.LASF476
	.4byte	.LASF476
	.byte	0x12
	.2byte	0x196
	.uleb128 0x46
	.4byte	.LASF477
	.4byte	.LASF477
	.byte	0x1b
	.byte	0x47
	.uleb128 0x46
	.4byte	.LASF478
	.4byte	.LASF478
	.byte	0x1b
	.byte	0x57
	.uleb128 0x46
	.4byte	.LASF479
	.4byte	.LASF479
	.byte	0x1c
	.byte	0x29
	.uleb128 0x47
	.4byte	.LASF480
	.4byte	.LASF480
	.byte	0x12
	.2byte	0x180
	.uleb128 0x47
	.4byte	.LASF481
	.4byte	.LASF481
	.byte	0x12
	.2byte	0x18b
	.uleb128 0x47
	.4byte	.LASF482
	.4byte	.LASF482
	.byte	0x12
	.2byte	0x1aa
	.uleb128 0x46
	.4byte	.LASF483
	.4byte	.LASF483
	.byte	0xe
	.byte	0x5c
	.uleb128 0x46
	.4byte	.LASF484
	.4byte	.LASF484
	.byte	0xe
	.byte	0x55
	.uleb128 0x46
	.4byte	.LASF485
	.4byte	.LASF485
	.byte	0x1d
	.byte	0x66
	.uleb128 0x46
	.4byte	.LASF486
	.4byte	.LASF486
	.byte	0x1e
	.byte	0x16
	.uleb128 0x46
	.4byte	.LASF487
	.4byte	.LASF487
	.byte	0x15
	.byte	0x4b
	.uleb128 0x46
	.4byte	.LASF488
	.4byte	.LASF488
	.byte	0x19
	.byte	0xaf
	.uleb128 0x47
	.4byte	.LASF489
	.4byte	.LASF489
	.byte	0x12
	.2byte	0x18e
	.uleb128 0x46
	.4byte	.LASF490
	.4byte	.LASF490
	.byte	0xe
	.byte	0x56
	.uleb128 0x46
	.4byte	.LASF491
	.4byte	.LASF491
	.byte	0x1f
	.byte	0x7f
	.uleb128 0x46
	.4byte	.LASF492
	.4byte	.LASF492
	.byte	0x1f
	.byte	0x80
	.uleb128 0x46
	.4byte	.LASF493
	.4byte	.LASF493
	.byte	0x1f
	.byte	0x7c
	.uleb128 0x47
	.4byte	.LASF494
	.4byte	.LASF494
	.byte	0x12
	.2byte	0x1ab
	.uleb128 0x47
	.4byte	.LASF495
	.4byte	.LASF495
	.byte	0x12
	.2byte	0x186
	.uleb128 0x47
	.4byte	.LASF496
	.4byte	.LASF496
	.byte	0x12
	.2byte	0x1ed
	.uleb128 0x46
	.4byte	.LASF497
	.4byte	.LASF497
	.byte	0x20
	.byte	0x50
	.uleb128 0x46
	.4byte	.LASF498
	.4byte	.LASF498
	.byte	0x21
	.byte	0x5a
	.uleb128 0x46
	.4byte	.LASF499
	.4byte	.LASF499
	.byte	0xe
	.byte	0x57
	.uleb128 0x46
	.4byte	.LASF500
	.4byte	.LASF500
	.byte	0xe
	.byte	0x58
	.uleb128 0x46
	.4byte	.LASF501
	.4byte	.LASF501
	.byte	0x22
	.byte	0x6b
	.uleb128 0x46
	.4byte	.LASF502
	.4byte	.LASF502
	.byte	0xe
	.byte	0x5a
	.uleb128 0x46
	.4byte	.LASF503
	.4byte	.LASF503
	.byte	0x22
	.byte	0x6d
	.uleb128 0x46
	.4byte	.LASF504
	.4byte	.LASF504
	.byte	0xe
	.byte	0x5b
	.uleb128 0x46
	.4byte	.LASF505
	.4byte	.LASF505
	.byte	0x22
	.byte	0x77
	.uleb128 0x46
	.4byte	.LASF506
	.4byte	.LASF506
	.byte	0x1f
	.byte	0x7d
	.uleb128 0x46
	.4byte	.LASF507
	.4byte	.LASF507
	.byte	0x1f
	.byte	0x87
	.uleb128 0x46
	.4byte	.LASF508
	.4byte	.LASF508
	.byte	0x23
	.byte	0x1b
	.uleb128 0x46
	.4byte	.LASF509
	.4byte	.LASF509
	.byte	0x24
	.byte	0x20
	.uleb128 0x45
	.4byte	.LASF511
	.4byte	.LASF511
	.uleb128 0x46
	.4byte	.LASF512
	.4byte	.LASF512
	.byte	0xe
	.byte	0x59
	.uleb128 0x46
	.4byte	.LASF513
	.4byte	.LASF513
	.byte	0x1e
	.byte	0x21
	.uleb128 0x46
	.4byte	.LASF514
	.4byte	.LASF514
	.byte	0x1e
	.byte	0x77
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL2
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	esp_netif
	.byte	0x22
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	esp_netif
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
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
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL17
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x6
	.byte	0x3
	.4byte	esp_ip6
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x6
	.byte	0x3
	.4byte	esp_ip6+16
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x6
	.byte	0x3
	.4byte	esp_ip6+32
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL30
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL46
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
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
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
	.4byte	.LVL68
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL46
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL54
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL75
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LFE61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL76
	.4byte	.LVL80
	.2byte	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.4byte	esp_ip_old
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LFE61
	.2byte	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.4byte	esp_ip_old
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL78
	.4byte	.LVL79-1
	.2byte	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	esp_netif
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL81
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LVL92
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LFE60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0xf
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	esp_ip
	.byte	0x22
	.byte	0x3
	.4byte	esp_ip_old
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0xc
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.4byte	esp_ip_old
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL83
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL92
	.4byte	.LVL96-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL99
	.4byte	.LVL100-1
	.2byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104-1
	.2byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL111
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL114
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL115
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LVL134
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL137
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL141
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL149
	.4byte	.LVL152
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL153
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL154
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL156
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL157
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL163
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL170
	.4byte	.LVL171
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL172
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL173
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL175
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL176
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL180
	.4byte	.LVL181-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL181-1
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
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL184
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL185
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
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL189
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL192
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL196
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL190
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	esp_netif
	.byte	0x22
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	esp_netif
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL197
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
	.4byte	.LVL209
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL210
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL205
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL212
	.4byte	.LVL213
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL213
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL214
	.4byte	.LFE46
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	esp_netif
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL215
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL217
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL218
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL219
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
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL221
	.4byte	.LVL222-1
	.2byte	0x3
	.byte	0x7b
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL225
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL226
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL229
	.4byte	.LVL231
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL231
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL232
	.4byte	.LVL255
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL255
	.4byte	.LVL256
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL256
	.4byte	.LVL257
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL257
	.4byte	.LVL258
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL258
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL226
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL238
	.4byte	.LVL246
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL246
	.4byte	.LVL247
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL247
	.4byte	.LVL248
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL249
	.4byte	.LVL250
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL250
	.4byte	.LVL251
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL251
	.4byte	.LVL252
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL252
	.4byte	.LVL253
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL253
	.4byte	.LVL255
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL255
	.4byte	.LFE49
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL233
	.4byte	.LVL236
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL236
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL233
	.4byte	.LVL238
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL238
	.4byte	.LVL241
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL233
	.4byte	.LVL239
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL239
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL245
	.4byte	.LVL246
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL233
	.4byte	.LVL246
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL259
	.4byte	.LVL264
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL264
	.4byte	.LVL265
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL265
	.4byte	.LVL266
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL266
	.4byte	.LVL267-1
	.2byte	0x3
	.byte	0x78
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL267-1
	.4byte	.LVL269
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL269
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL270
	.4byte	.LVL271
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL271
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL272
	.4byte	.LVL273
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL273
	.4byte	.LVL274
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL274
	.4byte	.LVL275
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL275
	.4byte	.LVL276
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL276
	.4byte	.LVL277
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL277
	.4byte	.LFE50
	.2byte	0x3
	.byte	0x78
	.sleb128 2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL278
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL281
	.4byte	.LFE51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL279
	.4byte	.LVL280-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL282
	.4byte	.LVL287
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL287
	.4byte	.LVL288
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL288
	.4byte	.LVL289
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL289
	.4byte	.LVL290-1
	.2byte	0x3
	.byte	0x78
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL290-1
	.4byte	.LVL293
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL293
	.4byte	.LVL294
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL294
	.4byte	.LVL295
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL295
	.4byte	.LVL296
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL296
	.4byte	.LVL297
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL297
	.4byte	.LVL298
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL298
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL299
	.4byte	.LVL302
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL302
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL300
	.4byte	.LVL301-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL303
	.4byte	.LVL304
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL304
	.4byte	.LFE54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL305
	.4byte	.LVL310
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL310
	.4byte	.LVL311
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL311
	.4byte	.LVL312
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL312
	.4byte	.LVL319
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL319
	.4byte	.LVL320
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL320
	.4byte	.LVL321
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL321
	.4byte	.LVL322
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL322
	.4byte	.LFE55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL313
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL317
	.4byte	.LVL318
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL318
	.4byte	.LVL319
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	esp_netif
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL323
	.4byte	.LVL325
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL325
	.4byte	.LFE56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL326
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
	.4byte	.LVL336
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL336
	.4byte	.LVL337
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL337
	.4byte	.LVL338
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL338
	.4byte	.LVL339
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL339
	.4byte	.LVL341
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL341
	.4byte	.LVL342
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL342
	.4byte	.LFE57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL334
	.4byte	.LVL335-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL340
	.4byte	.LVL341
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL343
	.4byte	.LVL345
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL345
	.4byte	.LFE58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL346
	.4byte	.LVL347
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL347
	.4byte	.LFE59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL348
	.4byte	.LVL349
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL349
	.4byte	.LFE63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL350
	.4byte	.LVL355
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL355
	.4byte	.LVL356
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL356
	.4byte	.LVL362
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL362
	.4byte	.LVL363
	.2byte	0x3
	.byte	0x7a
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL363
	.4byte	.LVL368
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL368
	.4byte	.LVL369
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL369
	.4byte	.LVL370
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL370
	.4byte	.LVL371
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL371
	.4byte	.LVL372
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL372
	.4byte	.LVL373
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL373
	.4byte	.LVL374
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL374
	.4byte	.LVL375
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL375
	.4byte	.LVL376
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL376
	.4byte	.LVL377
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL377
	.4byte	.LVL378
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL378
	.4byte	.LVL379
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL379
	.4byte	.LVL380
	.2byte	0x3
	.byte	0x7a
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL380
	.4byte	.LVL381
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL381
	.4byte	.LVL382
	.2byte	0x3
	.byte	0x7a
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL382
	.4byte	.LVL383
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL383
	.4byte	.LVL384
	.2byte	0x3
	.byte	0x7a
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL384
	.4byte	.LVL385
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL385
	.4byte	.LFE43
	.2byte	0x3
	.byte	0x7a
	.sleb128 2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL360
	.4byte	.LVL361-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL374
	.4byte	.LVL378
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL386
	.4byte	.LVL388
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL388
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL389
	.4byte	.LVL394
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL394
	.4byte	.LVL395
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL395
	.4byte	.LVL402
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL402
	.4byte	.LVL403
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL403
	.4byte	.LVL406
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL406
	.4byte	.LVL407
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL407
	.4byte	.LVL408
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL408
	.4byte	.LVL409
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL409
	.4byte	.LVL410
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL410
	.4byte	.LVL411
	.2byte	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL411
	.4byte	.LVL412
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL412
	.4byte	.LVL413
	.2byte	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL413
	.4byte	.LVL414
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL414
	.4byte	.LVL415
	.2byte	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL415
	.4byte	.LVL416
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL416
	.4byte	.LFE64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL396
	.4byte	.LVL401
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL403
	.4byte	.LVL405
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL407
	.4byte	.LVL409
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL415
	.4byte	.LFE64
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL417
	.4byte	.LVL419
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL419
	.4byte	.LFE65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL420
	.4byte	.LVL425
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL425
	.4byte	.LVL426
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL426
	.4byte	.LVL431
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL431
	.4byte	.LVL432
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL432
	.4byte	.LVL433
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL433
	.4byte	.LVL434
	.2byte	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL434
	.4byte	.LVL435
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL435
	.4byte	.LVL436
	.2byte	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL436
	.4byte	.LVL437
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL437
	.4byte	.LVL438
	.2byte	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL438
	.4byte	.LVL439
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL439
	.4byte	.LFE66
	.2byte	0x3
	.byte	0x79
	.sleb128 2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL427
	.4byte	.LVL428-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL436
	.4byte	.LVL438
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL440
	.4byte	.LVL442
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL442
	.4byte	.LFE67
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL443
	.4byte	.LVL445
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL445
	.4byte	.LFE68
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL446
	.4byte	.LVL448
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL448
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL449
	.4byte	.LVL451
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL451
	.4byte	.LFE70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL452
	.4byte	.LVL454
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL454
	.4byte	.LVL455
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL455
	.4byte	.LVL456
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL456
	.4byte	.LVL457
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL457
	.4byte	.LVL458
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL458
	.4byte	.LVL459
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL459
	.4byte	.LVL460
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL460
	.4byte	.LFE71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL453
	.4byte	.LVL454
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL454
	.4byte	.LVL455
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL455
	.4byte	.LVL456
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL456
	.4byte	.LVL457
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL457
	.4byte	.LVL458
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL458
	.4byte	.LVL459
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL459
	.4byte	.LVL460
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL460
	.4byte	.LFE71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL461
	.4byte	.LVL468
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL468
	.4byte	.LVL469
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL469
	.4byte	.LVL470
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL470
	.4byte	.LFE72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL463
	.4byte	.LVL464
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL464
	.4byte	.LVL469
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL471
	.4byte	.LVL476
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL476
	.4byte	.LVL477
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL477
	.4byte	.LVL480
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL480
	.4byte	.LVL483
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL483
	.4byte	.LVL484
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL484
	.4byte	.LVL485
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL485
	.4byte	.LVL486
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL486
	.4byte	.LVL487
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL487
	.4byte	.LVL488
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL488
	.4byte	.LFE73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL479
	.4byte	.LVL483
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL487
	.4byte	.LFE73
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL489
	.4byte	.LVL492
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL492
	.4byte	.LFE74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL490
	.4byte	.LVL491-1
	.2byte	0x2
	.byte	0x72
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL493
	.4byte	.LVL495
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL495
	.4byte	.LVL498
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL498
	.4byte	.LVL499
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL499
	.4byte	.LFE75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL494
	.4byte	.LVL496
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL496
	.4byte	.LVL497
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL497
	.4byte	.LVL498
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL498
	.4byte	.LVL500
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL500
	.4byte	.LVL501
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL501
	.4byte	.LFE75
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL502
	.4byte	.LVL503
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL503
	.4byte	.LVL504
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL504
	.4byte	.LVL505
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL505
	.4byte	.LFE77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL506
	.4byte	.LVL507
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL507
	.4byte	.LFE78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1d4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
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
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	0
	.4byte	0
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	0
	.4byte	0
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	0
	.4byte	0
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
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
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LFB78
	.4byte	.LFE78
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF96:
	.string	"tcpip_adapter_option_mode_t"
.LASF41:
	.string	"reserved"
.LASF173:
	.string	"MEMP_TCPIP_MSG_API"
.LASF165:
	.string	"last_ip_addr"
.LASF392:
	.string	"__func__"
.LASF454:
	.string	"tcpip_adapter_get_netif"
.LASF25:
	.string	"ESP_IF_MAX"
.LASF240:
	.string	"WPS_FAIL_REASON_NORMAL"
.LASF452:
	.string	"tcpip_adapter_set_hostname_api"
.LASF248:
	.string	"ssid"
.LASF269:
	.string	"connected"
.LASF1:
	.string	"__uint8_t"
.LASF114:
	.string	"tcpip_adatper_ip_lost_timer_s"
.LASF35:
	.string	"_Bool"
.LASF137:
	.string	"payload"
.LASF519:
	.string	"tcpip_adapter_init"
.LASF428:
	.string	"tcpip_adapter_dhcps_get_status"
.LASF163:
	.string	"loop_cnt_current"
.LASF410:
	.string	"tcpip_adapter_create_ip6_linklocal"
.LASF57:
	.string	"ip_addr"
.LASF65:
	.string	"lwip_ip_addr_type"
.LASF259:
	.string	"ip_changed"
.LASF483:
	.string	"dhcps_set_new_lease_cb"
.LASF324:
	.string	"NETWORK_INFORMATION_SERVERS"
.LASF74:
	.string	"tcpip_adapter_sta_info_t"
.LASF502:
	.string	"dhcps_dns_setserver"
.LASF18:
	.string	"uint16_t"
.LASF330:
	.string	"NETBIOS_OVER_TCP_IP_SCOPE"
.LASF204:
	.string	"so_options"
.LASF492:
	.string	"dhcp_stop"
.LASF403:
	.string	"tcpip_adapter_up"
.LASF136:
	.string	"next"
.LASF486:
	.string	"memcmp"
.LASF344:
	.string	"REQUESTED_IP_ADDRESS"
.LASF478:
	.string	"calloc"
.LASF99:
	.string	"TCPIP_ADAPTER_REQUESTED_IP_ADDRESS"
.LASF154:
	.string	"rs_count"
.LASF345:
	.string	"IP_ADDRESS_LEASE_TIME"
.LASF406:
	.string	"tcpip_adapter_down_api"
.LASF509:
	.string	"wlanif_input"
.LASF503:
	.string	"dns_getserver"
.LASF206:
	.string	"remote_port"
.LASF117:
	.string	"err_t"
.LASF27:
	.string	"WIFI_AUTH_OPEN"
.LASF284:
	.string	"SUBNET_MASK"
.LASF228:
	.string	"SYSTEM_EVENT_AP_STACONNECTED"
.LASF209:
	.string	"recv"
.LASF518:
	.string	"tcpip_if_to_netif_init_fn"
.LASF480:
	.string	"netif_add"
.LASF347:
	.string	"TFTP_SERVER_NAME"
.LASF385:
	.string	"tcpip_adapter_ipc_check"
.LASF372:
	.string	"ESP_LOG_NONE"
.LASF151:
	.string	"dhcps_pcb"
.LASF80:
	.string	"tcpip_adapter_if_t"
.LASF234:
	.string	"SYSTEM_EVENT_ETH_STOP"
.LASF299:
	.string	"SWAP_SERVER"
.LASF29:
	.string	"WIFI_AUTH_WPA_PSK"
.LASF409:
	.string	"tcpip_adapter_get_ip_info"
.LASF246:
	.string	"scan_id"
.LASF439:
	.string	"tcpip_adapter_dhcpc_start_api"
.LASF19:
	.string	"int32_t"
.LASF267:
	.string	"system_event_ap_stadisconnected_t"
.LASF501:
	.string	"dns_setserver"
.LASF504:
	.string	"dhcps_dns_getserver"
.LASF397:
	.string	"tcpip_adapter_set_old_ip_info_api"
.LASF172:
	.string	"MEMP_NETCONN"
.LASF423:
	.string	"tcpip_adapter_set_dns_info"
.LASF510:
	.string	"memcpy"
.LASF297:
	.string	"MERIT_DUMP_FILE"
.LASF66:
	.string	"dhcps_offer_option"
.LASF381:
	.string	"tcpip_adapter_nd6_cb"
.LASF280:
	.string	"system_event_info_t"
.LASF477:
	.string	"abort"
.LASF384:
	.string	"tcpip_adapter_reset_ip_info"
.LASF290:
	.string	"LOG_SERVER"
.LASF190:
	.string	"netif_mac_filter_action"
.LASF198:
	.string	"netif_igmp_mac_filter_fn"
.LASF83:
	.string	"TCPIP_ADAPTER_DNS_FALLBACK"
.LASF241:
	.string	"WPS_FAIL_REASON_RECV_M2D"
.LASF77:
	.string	"TCPIP_ADAPTER_IF_AP"
.LASF68:
	.string	"OFFER_ROUTER"
.LASF187:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF407:
	.string	"tcpip_adapter_set_old_ip_info"
.LASF239:
	.string	"system_event_id_t"
.LASF482:
	.string	"netif_set_up"
.LASF459:
	.string	"esp_ip6"
.LASF37:
	.string	"phy_11b"
.LASF38:
	.string	"phy_11g"
.LASF39:
	.string	"phy_11n"
.LASF462:
	.string	"dhcps_status"
.LASF355:
	.string	"REBINDING_T2_TIME_VALUE"
.LASF468:
	.string	"g_lwip_task"
.LASF112:
	.string	"dns_info"
.LASF505:
	.string	"dns_clear_servers"
.LASF59:
	.string	"type"
.LASF323:
	.string	"NETWORK_INFORMATION_SERVICE_DOMAIN"
.LASF315:
	.string	"ROUTER_SOLICITATION_ADDRESS"
.LASF5:
	.string	"__uint16_t"
.LASF343:
	.string	"STREETTALK_DIRECTORY_ASSISTANCE_SERVER"
.LASF189:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF242:
	.string	"WPS_FAIL_REASON_MAX"
.LASF216:
	.string	"SYSTEM_EVENT_STA_STOP"
.LASF115:
	.string	"timer_running"
.LASF90:
	.string	"TCPIP_ADAPTER_DHCP_STATUS_MAX"
.LASF434:
	.string	"tcpip_adapter_dhcpc_option"
.LASF116:
	.string	"tcpip_adapter_ip_lost_timer_t"
.LASF196:
	.string	"netif_output_ip6_fn"
.LASF332:
	.string	"X_WINDOW_SYSTEM_DISPLAY_MANAGER"
.LASF427:
	.string	"tcpip_adapter_get_dns_info_api"
.LASF174:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF61:
	.string	"enable"
.LASF420:
	.string	"info"
.LASF283:
	.string	"system_event_t"
.LASF455:
	.string	"tcpip_adapter_is_netif_up"
.LASF3:
	.string	"unsigned char"
.LASF127:
	.string	"ERR_ALREADY"
.LASF76:
	.string	"TCPIP_ADAPTER_IF_STA"
.LASF453:
	.string	"tcpip_adapter_get_hostname"
.LASF275:
	.string	"sta_er_fail_reason"
.LASF296:
	.string	"BOOT_FILE_SIZE"
.LASF146:
	.string	"output"
.LASF356:
	.string	"VENDOR_CLASS_IDENTIFIER"
.LASF364:
	.string	"CLIENT_LAST_TRANSACTION_TIME"
.LASF366:
	.string	"USER_AUTHENTICATION_PROTOCOL"
.LASF445:
	.string	"tcpip_adapter_ap_input"
.LASF71:
	.string	"netmask"
.LASF95:
	.string	"TCPIP_ADAPTER_OP_MAX"
.LASF245:
	.string	"number"
.LASF288:
	.string	"NAME_SERVER"
.LASF182:
	.string	"MEMP_PBUF"
.LASF278:
	.string	"ap_probereqrecved"
.LASF391:
	.string	"netif_init"
.LASF211:
	.string	"tcpip_callback_fn"
.LASF26:
	.string	"esp_interface_t"
.LASF232:
	.string	"SYSTEM_EVENT_GOT_IP6"
.LASF179:
	.string	"MEMP_ND6_QUEUE"
.LASF161:
	.string	"loop_first"
.LASF390:
	.string	"tcpip_adapter_start"
.LASF348:
	.string	"BOOTFILE_NAME"
.LASF375:
	.string	"ESP_LOG_INFO"
.LASF446:
	.string	"tcpip_adapter_get_esp_if"
.LASF498:
	.string	"lwip_htonl"
.LASF276:
	.string	"sta_connected"
.LASF169:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF257:
	.string	"new_mode"
.LASF185:
	.string	"lwip_internal_netif_client_data_index"
.LASF334:
	.string	"NETWORK_INFORMATION_SERVICE_PLUS_SERVERS"
.LASF221:
	.string	"SYSTEM_EVENT_STA_LOST_IP"
.LASF485:
	.string	"sys_timeout"
.LASF352:
	.string	"MESSAGE"
.LASF139:
	.string	"flags"
.LASF148:
	.string	"output_ip6"
.LASF398:
	.string	"tcpip_adapter_eth_start"
.LASF307:
	.string	"PATH_MTU_AGING_TIMEOUT"
.LASF237:
	.string	"SYSTEM_EVENT_ETH_GOT_IP"
.LASF358:
	.string	"USER_CLASS"
.LASF63:
	.string	"end_ip"
.LASF273:
	.string	"got_ip"
.LASF156:
	.string	"hwaddr_len"
.LASF496:
	.string	"netif_create_ip6_linklocal_address"
.LASF150:
	.string	"client_data"
.LASF91:
	.string	"tcpip_adapter_dhcp_status_t"
.LASF514:
	.string	"strlcpy"
.LASF491:
	.string	"dhcp_release"
.LASF17:
	.string	"uint8_t"
.LASF104:
	.string	"tcpip_adapter_api_msg_s"
.LASF109:
	.string	"tcpip_adapter_api_msg_t"
.LASF444:
	.string	"tcpip_adapter_sta_input"
.LASF79:
	.string	"TCPIP_ADAPTER_IF_MAX"
.LASF50:
	.string	"ip4_addr_t"
.LASF353:
	.string	"MAXIMUM_DHCP_MESSAGE_SIZE"
.LASF101:
	.string	"TCPIP_ADAPTER_IP_REQUEST_RETRY_TIME"
.LASF431:
	.string	"tcpip_adapter_dhcps_start_api"
.LASF110:
	.string	"tcpip_adapter_dns_param_s"
.LASF113:
	.string	"tcpip_adapter_dns_param_t"
.LASF191:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF303:
	.string	"NON_LOCAL_SOURCE_ROUTING"
.LASF441:
	.string	"tcpip_adapter_dhcpc_stop_api"
.LASF177:
	.string	"MEMP_SYS_TIMEOUT"
.LASF489:
	.string	"netif_remove"
.LASF314:
	.string	"PERFORM_ROUTER_DISCOVERY"
.LASF49:
	.string	"addr"
.LASF195:
	.string	"netif_output_fn"
.LASF301:
	.string	"EXTENSIONS_PATH"
.LASF339:
	.string	"DEFAULT_WWW_SERVER"
.LASF213:
	.string	"SYSTEM_EVENT_WIFI_READY"
.LASF176:
	.string	"MEMP_IGMP_GROUP"
.LASF393:
	.string	"tcpip_adapter_start_api"
.LASF253:
	.string	"system_event_sta_connected_t"
.LASF286:
	.string	"ROUTER"
.LASF342:
	.string	"STREETTALK_SERVER"
.LASF141:
	.string	"l2_buf"
.LASF295:
	.string	"HOST_NAME"
.LASF205:
	.string	"local_port"
.LASF268:
	.string	"system_event_ap_probe_req_rx_t"
.LASF408:
	.string	"tcpip_adapter_get_old_ip_info"
.LASF277:
	.string	"sta_disconnected"
.LASF121:
	.string	"ERR_TIMEOUT"
.LASF22:
	.string	"ESP_IF_WIFI_STA"
.LASF53:
	.string	"ip6_addr_t"
.LASF81:
	.string	"TCPIP_ADAPTER_DNS_MAIN"
.LASF350:
	.string	"SERVER_IDENTIFIER"
.LASF495:
	.string	"netif_set_addr"
.LASF461:
	.string	"esp_ip_lost_timer"
.LASF447:
	.string	"tcpip_adapter_get_sta_list"
.LASF229:
	.string	"SYSTEM_EVENT_AP_STADISCONNECTED"
.LASF281:
	.string	"event_id"
.LASF512:
	.string	"dhcp_search_ip_on_mac"
.LASF471:
	.string	"esp_event_send"
.LASF271:
	.string	"scan_done"
.LASF175:
	.string	"MEMP_ARP_QUEUE"
.LASF313:
	.string	"MASK_SUPPLIER"
.LASF325:
	.string	"NETWORK_TIME_PROTOCOL_SERVERS"
.LASF188:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MLD6"
.LASF349:
	.string	"DHCP_MESSAGE_TYPE"
.LASF258:
	.string	"system_event_sta_authmode_change_t"
.LASF425:
	.string	"tcpip_adapter_set_dns_info_api"
.LASF183:
	.string	"MEMP_PBUF_POOL"
.LASF143:
	.string	"ip6_addr_state"
.LASF437:
	.string	"tcpip_adapter_set_ip_info_api"
.LASF311:
	.string	"BROADCAST_ADDRESS"
.LASF130:
	.string	"ERR_IF"
.LASF497:
	.string	"nd6_set_cb"
.LASF251:
	.string	"channel"
.LASF414:
	.string	"tcpip_adapter_dhcps_option"
.LASF247:
	.string	"system_event_sta_scan_done_t"
.LASF481:
	.string	"netif_set_garp_flag"
.LASF128:
	.string	"ERR_ISCONN"
.LASF328:
	.string	"NETBIOS_OVER_TCP_IP_DATAGRAM_DISTRIBUTION_SERVER"
.LASF351:
	.string	"PARAMETER_REQUEST_LIST"
.LASF326:
	.string	"VENDOR_SPECIFIC_INFORMATION"
.LASF69:
	.string	"OFFER_DNS"
.LASF31:
	.string	"WIFI_AUTH_WPA_WPA2_PSK"
.LASF279:
	.string	"got_ip6"
.LASF488:
	.string	"sys_sem_new"
.LASF51:
	.string	"ip4_addr"
.LASF215:
	.string	"SYSTEM_EVENT_STA_START"
.LASF476:
	.string	"netif_set_default"
.LASF511:
	.string	"memset"
.LASF86:
	.string	"tcpip_adapter_dns_info_t"
.LASF298:
	.string	"DOMAIN_NAME"
.LASF223:
	.string	"SYSTEM_EVENT_STA_WPS_ER_FAILED"
.LASF125:
	.string	"ERR_WOULDBLOCK"
.LASF158:
	.string	"name"
.LASF132:
	.string	"ERR_RST"
.LASF16:
	.string	"int8_t"
.LASF64:
	.string	"dhcps_lease_t"
.LASF67:
	.string	"OFFER_START"
.LASF157:
	.string	"hwaddr"
.LASF82:
	.string	"TCPIP_ADAPTER_DNS_BACKUP"
.LASF105:
	.string	"api_fn"
.LASF122:
	.string	"ERR_RTE"
.LASF451:
	.string	"hostinfo"
.LASF133:
	.string	"ERR_CLSD"
.LASF458:
	.string	"esp_ip_old"
.LASF208:
	.string	"mcast_ttl"
.LASF225:
	.string	"SYSTEM_EVENT_STA_WPS_ER_PIN"
.LASF479:
	.string	"__assert_func"
.LASF44:
	.string	"TaskHandle_t"
.LASF13:
	.string	"sizetype"
.LASF162:
	.string	"loop_last"
.LASF73:
	.string	"tcpip_adapter_ip6_info_t"
.LASF365:
	.string	"ASSOCIATED_IP"
.LASF354:
	.string	"RENEWAL_T1_TIME_VALUE"
.LASF6:
	.string	"short unsigned int"
.LASF401:
	.string	"tcpip_adapter_stop"
.LASF2:
	.string	"signed char"
.LASF46:
	.string	"SemaphoreHandle_t"
.LASF291:
	.string	"COOKIE_SERVER"
.LASF118:
	.string	"ERR_OK"
.LASF24:
	.string	"ESP_IF_ETH"
.LASF45:
	.string	"QueueHandle_t"
.LASF244:
	.string	"status"
.LASF469:
	.string	"esp_log_timestamp"
.LASF377:
	.string	"ESP_LOG_VERBOSE"
.LASF58:
	.string	"u_addr"
.LASF465:
	.string	"tcpip_inited"
.LASF388:
	.string	"api_msg"
.LASF164:
	.string	"l2_buffer_free_notify"
.LASF448:
	.string	"wifi_sta_list"
.LASF70:
	.string	"OFFER_END"
.LASF149:
	.string	"state"
.LASF422:
	.string	"poll"
.LASF235:
	.string	"SYSTEM_EVENT_ETH_CONNECTED"
.LASF131:
	.string	"ERR_ABRT"
.LASF270:
	.string	"disconnected"
.LASF34:
	.string	"wifi_auth_mode_t"
.LASF43:
	.string	"wifi_sta_list_t"
.LASF145:
	.string	"input"
.LASF236:
	.string	"SYSTEM_EVENT_ETH_DISCONNECTED"
.LASF272:
	.string	"auth_change"
.LASF255:
	.string	"system_event_sta_disconnected_t"
.LASF168:
	.string	"MEMP_TCP_PCB"
.LASF124:
	.string	"ERR_VAL"
.LASF302:
	.string	"IP_FORWARDING"
.LASF321:
	.string	"TCP_KEEPALIVE_INTERVAL"
.LASF197:
	.string	"netif_linkoutput_fn"
.LASF33:
	.string	"WIFI_AUTH_MAX"
.LASF12:
	.string	"long int"
.LASF62:
	.string	"start_ip"
.LASF214:
	.string	"SYSTEM_EVENT_SCAN_DONE"
.LASF438:
	.string	"tcpip_adapter_dhcpc_start"
.LASF357:
	.string	"CLIENT_IDENTIFIER"
.LASF412:
	.string	"tcpip_adapter_get_ip6_linklocal"
.LASF322:
	.string	"TCP_KEEPALIVE_GARBAGE"
.LASF417:
	.string	"opt_val"
.LASF88:
	.string	"TCPIP_ADAPTER_DHCP_STARTED"
.LASF23:
	.string	"ESP_IF_WIFI_AP"
.LASF238:
	.string	"SYSTEM_EVENT_MAX"
.LASF424:
	.string	"dns_param"
.LASF84:
	.string	"TCPIP_ADAPTER_DNS_MAX"
.LASF75:
	.string	"tcpip_adapter_sta_list_t"
.LASF20:
	.string	"uint32_t"
.LASF28:
	.string	"WIFI_AUTH_WEP"
.LASF261:
	.string	"pin_code"
.LASF300:
	.string	"ROOT_PATH"
.LASF14:
	.string	"long unsigned int"
.LASF30:
	.string	"WIFI_AUTH_WPA2_PSK"
.LASF89:
	.string	"TCPIP_ADAPTER_DHCP_STOPPED"
.LASF493:
	.string	"dhcp_cleanup"
.LASF285:
	.string	"TIME_OFFSET"
.LASF370:
	.string	"DOMAIN_SEARCH"
.LASF474:
	.string	"tcpip_send_msg_wait_sem"
.LASF426:
	.string	"tcpip_adapter_get_dns_info"
.LASF254:
	.string	"reason"
.LASF265:
	.string	"system_event_got_ip6_t"
.LASF450:
	.string	"tcpip_adapter_set_hostname"
.LASF200:
	.string	"dhcp_event_fn"
.LASF15:
	.string	"char"
.LASF507:
	.string	"dhcp_set_cb"
.LASF262:
	.string	"system_event_sta_wps_er_pin_t"
.LASF266:
	.string	"system_event_ap_staconnected_t"
.LASF379:
	.string	"tcpip_adapter_dhcps_cb"
.LASF367:
	.string	"AUTO_CONFIGURE"
.LASF231:
	.string	"SYSTEM_EVENT_AP_PROBEREQRECVED"
.LASF418:
	.string	"opt_len"
.LASF274:
	.string	"sta_er_pin"
.LASF186:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF135:
	.string	"pbuf"
.LASF457:
	.string	"esp_ip"
.LASF140:
	.string	"l2_owner"
.LASF319:
	.string	"ETHERNET_ENCAPSULATION"
.LASF327:
	.string	"NETBIOS_OVER_TCP_IP_NAME_SERVER"
.LASF36:
	.string	"rssi"
.LASF464:
	.string	"api_sync_sem"
.LASF227:
	.string	"SYSTEM_EVENT_AP_STOP"
.LASF193:
	.string	"netif_init_fn"
.LASF178:
	.string	"MEMP_NETDB"
.LASF513:
	.string	"strlen"
.LASF411:
	.string	"tcpip_adapter_create_ip6_linklocal_api"
.LASF305:
	.string	"MAXIMUM_DATAGRAM_REASSEMBLY_SIZE"
.LASF443:
	.string	"buffer"
.LASF340:
	.string	"DEFAULT_FINGER_SERVER"
.LASF436:
	.string	"tcpip_adapter_set_ip_info"
.LASF360:
	.string	"DHCP_AGENT_OPTIONS"
.LASF320:
	.string	"TCP_DEFAULT_TTL"
.LASF129:
	.string	"ERR_CONN"
.LASF111:
	.string	"dns_type"
.LASF333:
	.string	"NETWORK_INFORMATION_SERVICE_PLUS_DOMAIN"
.LASF419:
	.string	"opt_info"
.LASF171:
	.string	"MEMP_NETBUF"
.LASF460:
	.string	"esp_netif_init_fn"
.LASF184:
	.string	"MEMP_MAX"
.LASF470:
	.string	"esp_log_write"
.LASF472:
	.string	"xTaskGetCurrentTaskHandle"
.LASF202:
	.string	"local_ip"
.LASF494:
	.string	"netif_set_down"
.LASF264:
	.string	"ip6_info"
.LASF449:
	.string	"tcpip_sta_list"
.LASF152:
	.string	"dhcp_event"
.LASF60:
	.string	"ip_addr_t"
.LASF212:
	.string	"udp_recv_fn"
.LASF361:
	.string	"NDS_SERVERS"
.LASF94:
	.string	"TCPIP_ADAPTER_OP_GET"
.LASF243:
	.string	"system_event_sta_wps_fail_reason_t"
.LASF159:
	.string	"igmp_mac_filter"
.LASF335:
	.string	"MOBILE_IP_HOME_AGENT"
.LASF304:
	.string	"POLICY_FILTER"
.LASF369:
	.string	"SUBNET_SELECTION"
.LASF421:
	.string	"softap_ip"
.LASF199:
	.string	"netif_mld_mac_filter_fn"
.LASF102:
	.string	"tcpip_adapter_option_id_t"
.LASF155:
	.string	"hostname"
.LASF218:
	.string	"SYSTEM_EVENT_STA_DISCONNECTED"
.LASF7:
	.string	"__int32_t"
.LASF432:
	.string	"tcpip_adapter_dhcps_stop"
.LASF402:
	.string	"tcpip_adapter_stop_api"
.LASF119:
	.string	"ERR_MEM"
.LASF8:
	.string	"__uint32_t"
.LASF126:
	.string	"ERR_USE"
.LASF108:
	.string	"data"
.LASF167:
	.string	"MEMP_UDP_PCB"
.LASF260:
	.string	"system_event_sta_got_ip_t"
.LASF336:
	.string	"SMTP_SERVER"
.LASF40:
	.string	"phy_lr"
.LASF362:
	.string	"NDS_TREE_NAME"
.LASF429:
	.string	"tcpip_adapter_dhcps_start"
.LASF72:
	.string	"tcpip_adapter_ip_info_t"
.LASF32:
	.string	"WIFI_AUTH_WPA2_ENTERPRISE"
.LASF106:
	.string	"tcpip_if"
.LASF331:
	.string	"X_WINDOW_SYSTEM_FONT_SERVER"
.LASF389:
	.string	"tcpip_adapter_update_default_netif"
.LASF316:
	.string	"STATIC_ROUTE"
.LASF400:
	.string	"tcpip_adapter_ap_start"
.LASF475:
	.string	"sys_sem_signal"
.LASF100:
	.string	"TCPIP_ADAPTER_IP_ADDRESS_LEASE_TIME"
.LASF138:
	.string	"tot_len"
.LASF180:
	.string	"MEMP_IP6_REASSDATA"
.LASF287:
	.string	"TIME_SERVER"
.LASF368:
	.string	"NAME_SERVICE_SEARCH"
.LASF442:
	.string	"tcpip_adapter_eth_input"
.LASF433:
	.string	"tcpip_adapter_dhcps_stop_api"
.LASF500:
	.string	"dhcps_set_option_info"
.LASF318:
	.string	"ARP_CACHE_TIMEOUT"
.LASF181:
	.string	"MEMP_MLD6_GROUP"
.LASF515:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF219:
	.string	"SYSTEM_EVENT_STA_AUTHMODE_CHANGE"
.LASF226:
	.string	"SYSTEM_EVENT_AP_START"
.LASF499:
	.string	"dhcps_option_info"
.LASF217:
	.string	"SYSTEM_EVENT_STA_CONNECTED"
.LASF378:
	.string	"client_ip"
.LASF376:
	.string	"ESP_LOG_DEBUG"
.LASF220:
	.string	"SYSTEM_EVENT_STA_GOT_IP"
.LASF516:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/tcpip_adapter/tcpip_adapter_lwip.c"
.LASF440:
	.string	"tcpip_adapter_dhcpc_stop"
.LASF292:
	.string	"LPR_SERVER"
.LASF210:
	.string	"recv_arg"
.LASF230:
	.string	"SYSTEM_EVENT_AP_STAIPASSIGNED"
.LASF263:
	.string	"if_index"
.LASF98:
	.string	"TCPIP_ADAPTER_ROUTER_SOLICITATION_ADDRESS"
.LASF508:
	.string	"ethernetif_input"
.LASF308:
	.string	"PATH_MTU_PLATEAU_TABLE"
.LASF134:
	.string	"ERR_ARG"
.LASF11:
	.string	"long long unsigned int"
.LASF54:
	.string	"IPADDR_TYPE_V4"
.LASF55:
	.string	"IPADDR_TYPE_V6"
.LASF249:
	.string	"ssid_len"
.LASF294:
	.string	"RESOURCE_LOCATION_SERVER"
.LASF47:
	.string	"sys_sem_t"
.LASF404:
	.string	"tcpip_adapter_up_api"
.LASF222:
	.string	"SYSTEM_EVENT_STA_WPS_ER_SUCCESS"
.LASF329:
	.string	"NETBIOS_OVER_TCP_IP_NODE_TYPE"
.LASF309:
	.string	"INTERFACE_MTU"
.LASF506:
	.string	"dhcp_start"
.LASF416:
	.string	"opt_id"
.LASF144:
	.string	"ipv6_addr_cb"
.LASF382:
	.string	"p_netif"
.LASF224:
	.string	"SYSTEM_EVENT_STA_WPS_ER_TIMEOUT"
.LASF92:
	.string	"TCPIP_ADAPTER_OP_START"
.LASF207:
	.string	"multicast_ip"
.LASF371:
	.string	"CLASSLESS_ROUTE"
.LASF306:
	.string	"DEFAULT_IP_TIME_TO_LIVE"
.LASF373:
	.string	"ESP_LOG_ERROR"
.LASF317:
	.string	"TRAILER_ENCAPSULATION"
.LASF456:
	.string	"esp_netif"
.LASF346:
	.string	"OPTION_OVERLOAD"
.LASF484:
	.string	"dhcps_start"
.LASF413:
	.string	"if_ip6"
.LASF203:
	.string	"remote_ip"
.LASF473:
	.string	"sys_arch_sem_wait"
.LASF399:
	.string	"tcpip_adapter_sta_start"
.LASF194:
	.string	"netif_input_fn"
.LASF250:
	.string	"bssid"
.LASF338:
	.string	"NNTP_SERVER"
.LASF52:
	.string	"ip6_addr"
.LASF78:
	.string	"TCPIP_ADAPTER_IF_ETH"
.LASF153:
	.string	"ip6_autoconfig_enabled"
.LASF160:
	.string	"mld_mac_filter"
.LASF466:
	.string	"api_lock_sem"
.LASF10:
	.string	"long long int"
.LASF87:
	.string	"TCPIP_ADAPTER_DHCP_INIT"
.LASF107:
	.string	"ip_info"
.LASF256:
	.string	"old_mode"
.LASF170:
	.string	"MEMP_TCP_SEG"
.LASF56:
	.string	"IPADDR_TYPE_ANY"
.LASF430:
	.string	"default_ip"
.LASF123:
	.string	"ERR_INPROGRESS"
.LASF383:
	.string	"ip_idex"
.LASF93:
	.string	"TCPIP_ADAPTER_OP_SET"
.LASF192:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF310:
	.string	"ALL_SUBNETS_ARE_LOCAL"
.LASF380:
	.string	"tcpip_adapter_ip_lost_timer"
.LASF395:
	.string	"ip_info_old"
.LASF282:
	.string	"event_info"
.LASF233:
	.string	"SYSTEM_EVENT_ETH_START"
.LASF48:
	.string	"sys_thread_t"
.LASF517:
	.string	"/home/raphael/rtone/lcd/build/tcpip_adapter"
.LASF387:
	.string	"tcpip_adapter_api_cb"
.LASF490:
	.string	"dhcps_stop"
.LASF85:
	.string	"tcpip_adapter_dns_type_t"
.LASF252:
	.string	"authmode"
.LASF166:
	.string	"MEMP_RAW_PCB"
.LASF405:
	.string	"tcpip_adapter_down"
.LASF415:
	.string	"opt_op"
.LASF0:
	.string	"__int8_t"
.LASF463:
	.string	"dhcpc_status"
.LASF435:
	.string	"tcpip_adapter_dhcpc_get_status"
.LASF341:
	.string	"DEFAULT_IRC_SERVER"
.LASF467:
	.string	"ip_addr_any"
.LASF21:
	.string	"esp_err_t"
.LASF396:
	.string	"tcpip_adapter_dhcpc_cb"
.LASF9:
	.string	"unsigned int"
.LASF363:
	.string	"NDS_CONTEXT"
.LASF201:
	.string	"udp_pcb"
.LASF394:
	.string	"tcpip_adapter_start_ip_lost_timer"
.LASF103:
	.string	"tcpip_adapter_api_fn"
.LASF4:
	.string	"short int"
.LASF312:
	.string	"PERFORM_MASK_DISCOVERY"
.LASF337:
	.string	"POP3_SERVER"
.LASF359:
	.string	"FQDN"
.LASF120:
	.string	"ERR_BUF"
.LASF386:
	.string	"local_task"
.LASF97:
	.string	"TCPIP_ADAPTER_DOMAIN_NAME_SERVER"
.LASF289:
	.string	"DOMAIN_NAME_SERVER"
.LASF142:
	.string	"netif"
.LASF147:
	.string	"linkoutput"
.LASF374:
	.string	"ESP_LOG_WARN"
.LASF42:
	.string	"wifi_sta_info_t"
.LASF293:
	.string	"IMPRESS_SERVER"
.LASF487:
	.string	"tcpip_init"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
