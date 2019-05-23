	.file	"sys_arch.c"
	.text
.Ltext0:
	.section	.text.sys_thread_sem_free,"ax",@progbits
	.align	4
	.type	sys_thread_sem_free, @function
sys_thread_sem_free:
.LFB44:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/port/esp32/freertos/sys_arch.c"
	.loc 1 501 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 504 0
	beqz.n	a2, .L2
	.loc 1 504 0 is_stmt 0 discriminator 1
	l32i.n	a10, a2, 0
	beqz.n	a10, .L2
	.loc 1 506 0 is_stmt 1
	call8	vQueueDelete
.LVL2:
.L2:
	.loc 1 509 0
	beqz.n	a2, .L1
	.loc 1 511 0
	mov.n	a10, a2
	call8	free
.LVL3:
.L1:
	retw.n
.LFE44:
	.size	sys_thread_sem_free, .-sys_thread_sem_free
	.section	.text.sys_mutex_new,"ax",@progbits
	.align	4
	.global	sys_mutex_new
	.type	sys_mutex_new, @function
sys_mutex_new:
.LFB20:
	.loc 1 59 0
.LVL4:
	entry	sp, 32
.LCFI1:
.LVL5:
	.loc 1 62 0
	movi.n	a10, 1
	call8	xQueueCreateMutex
.LVL6:
	s32i.n	a10, a2, 0
	.loc 1 64 0
	bnez.n	a10, .L6
	.loc 1 60 0
	movi	a2, 0xff
.LVL7:
	retw.n
.LVL8:
.L6:
	.loc 1 65 0
	movi.n	a2, 0
.LVL9:
	.loc 1 71 0
	retw.n
.LFE20:
	.size	sys_mutex_new, .-sys_mutex_new
	.section	.text.sys_mutex_lock,"ax",@progbits
	.align	4
	.global	sys_mutex_lock
	.type	sys_mutex_lock, @function
sys_mutex_lock:
.LFB21:
	.loc 1 77 0
.LVL10:
	entry	sp, 32
.LCFI2:
.L8:
	.loc 1 78 0 discriminator 1
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32i.n	a10, a2, 0
	call8	xQueueGenericReceive
.LVL11:
	bnei	a10, 1, .L8
	.loc 1 79 0
	retw.n
.LFE21:
	.size	sys_mutex_lock, .-sys_mutex_lock
	.section	.text.sys_mutex_trylock,"ax",@progbits
	.align	4
	.global	sys_mutex_trylock
	.type	sys_mutex_trylock, @function
sys_mutex_trylock:
.LFB22:
	.loc 1 83 0
.LVL12:
	entry	sp, 32
.LCFI3:
	.loc 1 84 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32i.n	a10, a2, 0
	call8	xQueueGenericReceive
.LVL13:
	bnei	a10, 1, .L11
	.loc 1 84 0
	movi.n	a2, 0
.LVL14:
	retw.n
.LVL15:
.L11:
	.loc 1 85 0
	movi	a2, 0xff
.LVL16:
	.loc 1 86 0
	retw.n
.LFE22:
	.size	sys_mutex_trylock, .-sys_mutex_trylock
	.section	.text.sys_mutex_unlock,"ax",@progbits
	.align	4
	.global	sys_mutex_unlock
	.type	sys_mutex_unlock, @function
sys_mutex_unlock:
.LFB23:
	.loc 1 92 0
.LVL17:
	entry	sp, 32
.LCFI4:
	.loc 1 93 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32i.n	a10, a2, 0
	call8	xQueueGenericSend
.LVL18:
	retw.n
.LFE23:
	.size	sys_mutex_unlock, .-sys_mutex_unlock
	.section	.text.sys_mutex_free,"ax",@progbits
	.align	4
	.global	sys_mutex_free
	.type	sys_mutex_free, @function
sys_mutex_free:
.LFB24:
	.loc 1 100 0
.LVL19:
	entry	sp, 32
.LCFI5:
	.loc 1 102 0
	l32i.n	a10, a2, 0
	call8	vQueueDelete
.LVL20:
	retw.n
.LFE24:
	.size	sys_mutex_free, .-sys_mutex_free
	.section	.text.sys_sem_new,"ax",@progbits
	.align	4
	.global	sys_sem_new
	.type	sys_sem_new, @function
sys_sem_new:
.LFB25:
	.loc 1 111 0
.LVL21:
	entry	sp, 32
.LCFI6:
	extui	a3, a3, 0, 8
.LVL22:
	.loc 1 113 0
	movi.n	a12, 3
	movi.n	a11, 0
	movi.n	a10, 1
	call8	xQueueGenericCreate
.LVL23:
	s32i.n	a10, a2, 0
	beqz.n	a10, .L15
	.loc 1 113 0 discriminator 1
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	call8	xQueueGenericSend
.LVL24:
.L15:
	.loc 1 115 0
	l32i.n	a10, a2, 0
	beqz.n	a10, .L17
	.loc 1 116 0
	bnez.n	a3, .L18
	.loc 1 117 0
	movi.n	a13, 0
	movi.n	a12, 1
	mov.n	a11, a13
	call8	xQueueGenericReceive
.LVL25:
	.loc 1 120 0
	movi.n	a2, 0
.LVL26:
	retw.n
.LVL27:
.L17:
	.loc 1 112 0
	movi	a2, 0xff
.LVL28:
	retw.n
.LVL29:
.L18:
	.loc 1 120 0
	movi.n	a2, 0
.LVL30:
	.loc 1 126 0
	retw.n
.LFE25:
	.size	sys_sem_new, .-sys_sem_new
	.section	.text.sys_sem_signal,"ax",@progbits
	.align	4
	.global	sys_sem_signal
	.type	sys_sem_signal, @function
sys_sem_signal:
.LFB26:
	.loc 1 132 0
.LVL31:
	entry	sp, 32
.LCFI7:
	.loc 1 133 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32i.n	a10, a2, 0
	call8	xQueueGenericSend
.LVL32:
	retw.n
.LFE26:
	.size	sys_sem_signal, .-sys_sem_signal
	.section	.text.sys_sem_signal_isr,"ax",@progbits
	.align	4
	.global	sys_sem_signal_isr
	.type	sys_sem_signal_isr, @function
sys_sem_signal_isr:
.LFB27:
	.loc 1 139 0
.LVL33:
	entry	sp, 48
.LCFI8:
	.loc 1 140 0
	movi.n	a3, 0
	s32i.n	a3, sp, 0
	.loc 1 141 0
	mov.n	a11, sp
	l32i.n	a10, a2, 0
	call8	xQueueGiveFromISR
.LVL34:
	.loc 1 142 0
	l32i.n	a2, sp, 0
.LVL35:
	addi.n	a2, a2, -1
	movi.n	a8, 1
	moveqz	a3, a8, a2
	mov.n	a2, a3
	.loc 1 143 0
	retw.n
.LFE27:
	.size	sys_sem_signal_isr, .-sys_sem_signal_isr
	.section	.text.sys_arch_sem_wait,"ax",@progbits
	.literal_position
	.literal .LC0, -858993459
	.align	4
	.global	sys_arch_sem_wait
	.type	sys_arch_sem_wait, @function
sys_arch_sem_wait:
.LFB28:
	.loc 1 163 0
.LVL36:
	entry	sp, 32
.LCFI9:
	.loc 1 167 0
	call8	xTaskGetTickCount
.LVL37:
	mov.n	a4, a10
.LVL38:
	.loc 1 169 0
	beqz.n	a3, .L22
	.loc 1 170 0
	l32r	a12, .LC0
	muluh	a12, a3, a12
	movi.n	a13, 0
	srli	a12, a12, 3
	mov.n	a11, a13
	l32i.n	a10, a2, 0
	call8	xQueueGenericReceive
.LVL39:
	bnei	a10, 1, .L24
	.loc 1 171 0
	call8	xTaskGetTickCount
.LVL40:
	.loc 1 172 0
	sub	a10, a10, a4
.LVL41:
	addx4	a10, a10, a10
	slli	a2, a10, 1
.LVL42:
	.loc 1 174 0
	beqz.n	a2, .L25
	retw.n
.LVL43:
.L22:
	.loc 1 183 0 discriminator 1
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32i.n	a10, a2, 0
	call8	xQueueGenericReceive
.LVL44:
	bnei	a10, 1, .L22
	.loc 1 185 0
	call8	xTaskGetTickCount
.LVL45:
	.loc 1 186 0
	sub	a10, a10, a4
.LVL46:
	addx4	a10, a10, a10
	slli	a2, a10, 1
.LVL47:
	.loc 1 188 0
	beqz.n	a2, .L26
	retw.n
.LVL48:
.L24:
	.loc 1 180 0
	movi.n	a2, -1
.LVL49:
	retw.n
.LVL50:
.L25:
	.loc 1 175 0
	movi.n	a2, 1
.LVL51:
	retw.n
.LVL52:
.L26:
	.loc 1 189 0
	movi.n	a2, 1
.LVL53:
	.loc 1 196 0
	retw.n
.LFE28:
	.size	sys_arch_sem_wait, .-sys_arch_sem_wait
	.section	.text.sys_sem_free,"ax",@progbits
	.align	4
	.global	sys_sem_free
	.type	sys_sem_free, @function
sys_sem_free:
.LFB29:
	.loc 1 202 0
.LVL54:
	entry	sp, 32
.LCFI10:
	.loc 1 203 0
	l32i.n	a10, a2, 0
	call8	vQueueDelete
.LVL55:
	retw.n
.LFE29:
	.size	sys_sem_free, .-sys_sem_free
	.section	.text.sys_mbox_new,"ax",@progbits
	.align	4
	.global	sys_mbox_new
	.type	sys_mbox_new, @function
sys_mbox_new:
.LFB30:
	.loc 1 210 0
.LVL56:
	entry	sp, 32
.LCFI11:
	.loc 1 211 0
	movi.n	a10, 8
	call8	mem_malloc
.LVL57:
	mov.n	a4, a10
	s32i.n	a10, a2, 0
	.loc 1 212 0
	beqz.n	a10, .L31
	.loc 1 217 0
	movi.n	a12, 0
	movi.n	a11, 4
	mov.n	a10, a3
	call8	xQueueGenericCreate
.LVL58:
	s32i.n	a10, a4, 0
	.loc 1 219 0
	l32i.n	a10, a2, 0
	l32i.n	a2, a10, 0
.LVL59:
	bnez.n	a2, .L30
	.loc 1 221 0
	call8	free
.LVL60:
	.loc 1 222 0
	movi	a2, 0xff
	retw.n
.L30:
	.loc 1 226 0
	movi.n	a2, 0
	s32i.n	a2, a10, 4
	.loc 1 230 0
	retw.n
.LVL61:
.L31:
	.loc 1 214 0
	movi	a2, 0xff
.LVL62:
	.loc 1 231 0
	retw.n
.LFE30:
	.size	sys_mbox_new, .-sys_mbox_new
	.section	.text.sys_mbox_post,"ax",@progbits
	.align	4
	.global	sys_mbox_post
	.type	sys_mbox_post, @function
sys_mbox_post:
.LFB31:
	.loc 1 237 0
.LVL63:
	entry	sp, 48
.LCFI12:
	s32i.n	a3, sp, 0
.LVL64:
.L33:
	.loc 1 238 0 discriminator 1
	l32i.n	a8, a2, 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, sp
.LVL65:
	l32i.n	a10, a8, 0
	call8	xQueueGenericSend
.LVL66:
	bnei	a10, 1, .L33
	.loc 1 239 0
	retw.n
.LFE31:
	.size	sys_mbox_post, .-sys_mbox_post
	.section	.text.sys_mbox_trypost,"ax",@progbits
	.align	4
	.global	sys_mbox_trypost
	.type	sys_mbox_trypost, @function
sys_mbox_trypost:
.LFB32:
	.loc 1 244 0
.LVL67:
	entry	sp, 48
.LCFI13:
	s32i.n	a3, sp, 0
	.loc 1 247 0
	l32i.n	a8, a2, 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, sp
	l32i.n	a10, a8, 0
	call8	xQueueGenericSend
.LVL68:
	bnei	a10, 1, .L36
	.loc 1 248 0
	movi.n	a2, 0
.LVL69:
	retw.n
.LVL70:
.L36:
	.loc 1 251 0
	movi	a2, 0xff
.LVL71:
	.loc 1 255 0
	retw.n
.LFE32:
	.size	sys_mbox_trypost, .-sys_mbox_trypost
	.section	.text.sys_arch_mbox_fetch,"ax",@progbits
	.literal_position
	.literal .LC1, -858993459
	.align	4
	.global	sys_arch_mbox_fetch
	.type	sys_arch_mbox_fetch, @function
sys_arch_mbox_fetch:
.LFB33:
	.loc 1 275 0
.LVL72:
	entry	sp, 48
.LCFI14:
	.loc 1 280 0
	call8	xTaskGetTickCount
.LVL73:
	mov.n	a5, a10
.LVL74:
	.loc 1 281 0
	bnez.n	a3, .L38
	.loc 1 282 0
	mov.n	a3, sp
.LVL75:
.L38:
	.loc 1 285 0
	l32i.n	a8, a2, 0
	bnez.n	a8, .L39
	.loc 1 286 0
	movi.n	a2, 0
.LVL76:
	s32i.n	a2, a3, 0
	.loc 1 287 0
	movi.n	a2, -1
	retw.n
.LVL77:
.L39:
	.loc 1 290 0
	beqz.n	a4, .L43
	.loc 1 293 0
	l32r	a12, .LC1
	muluh	a12, a4, a12
	srli	a12, a12, 3
.LVL78:
	j	.L41
.LVL79:
.L43:
	.loc 1 291 0
	movi.n	a12, -1
.LVL80:
.L41:
	.loc 1 296 0
	movi.n	a13, 0
	s32i.n	a13, a3, 0
	.loc 1 297 0
	l32i.n	a2, a2, 0
.LVL81:
	mov.n	a11, a3
	l32i.n	a10, a2, 0
	call8	xQueueGenericReceive
.LVL82:
	bnei	a10, 1, .L44
	.loc 1 298 0
	call8	xTaskGetTickCount
.LVL83:
	.loc 1 299 0
	sub	a10, a10, a5
.LVL84:
	addx4	a10, a10, a10
	slli	a2, a10, 1
.LVL85:
	.loc 1 301 0
	beqz.n	a2, .L45
	retw.n
.LVL86:
.L44:
	.loc 1 307 0
	movi.n	a2, -1
	retw.n
.LVL87:
.L45:
	.loc 1 302 0
	movi.n	a2, 1
.LVL88:
	.loc 1 311 0
	retw.n
.LFE33:
	.size	sys_arch_mbox_fetch, .-sys_arch_mbox_fetch
	.section	.text.sys_arch_mbox_tryfetch,"ax",@progbits
	.align	4
	.global	sys_arch_mbox_tryfetch
	.type	sys_arch_mbox_tryfetch, @function
sys_arch_mbox_tryfetch:
.LFB34:
	.loc 1 316 0
.LVL89:
	entry	sp, 48
.LCFI15:
	mov.n	a11, a3
	.loc 1 320 0
	bnez.n	a3, .L47
	.loc 1 321 0
	mov.n	a11, sp
.L47:
.LVL90:
	.loc 1 324 0
	l32i.n	a8, a2, 0
	movi.n	a13, 0
	mov.n	a12, a13
	l32i.n	a10, a8, 0
	call8	xQueueGenericReceive
.LVL91:
	bnei	a10, 1, .L50
	.loc 1 325 0
	movi.n	a2, 0
.LVL92:
	retw.n
.LVL93:
.L50:
	.loc 1 327 0
	movi.n	a2, -1
.LVL94:
	.loc 1 331 0
	retw.n
.LFE34:
	.size	sys_arch_mbox_tryfetch, .-sys_arch_mbox_tryfetch
	.section	.text.sys_mbox_set_owner,"ax",@progbits
	.align	4
	.global	sys_mbox_set_owner
	.type	sys_mbox_set_owner, @function
sys_mbox_set_owner:
.LFB35:
	.loc 1 337 0
.LVL95:
	entry	sp, 32
.LCFI16:
	.loc 1 338 0
	beqz.n	a2, .L51
	.loc 1 338 0 is_stmt 0 discriminator 1
	l32i.n	a2, a2, 0
.LVL96:
	beqz.n	a2, .L51
	.loc 1 339 0 is_stmt 1
	s32i.n	a3, a2, 4
.L51:
	retw.n
.LFE35:
	.size	sys_mbox_set_owner, .-sys_mbox_set_owner
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"lwip_arch"
	.align	4
.LC4:
	.string	"\033[0;33mW (%d) %s: WARNING: failed to post NULL msg to mbox\n\033[0m\n"
	.align	4
.LC6:
	.string	"\033[0;33mW (%d) %s: WARNING: mbox has %d message, potential memory leaking\n\033[0m\n"
	.section	.text.sys_mbox_free,"ax",@progbits
	.literal_position
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.align	4
	.global	sys_mbox_free
	.type	sys_mbox_free, @function
sys_mbox_free:
.LFB36:
	.loc 1 351 0
.LVL97:
	entry	sp, 32
.LCFI17:
.LVL98:
	.loc 1 354 0
	beqz.n	a2, .L53
	.loc 1 354 0 discriminator 1
	l32i.n	a8, a2, 0
	.loc 1 354 0 discriminator 1
	beqz.n	a8, .L53
	.loc 1 358 0
	l32i.n	a10, a8, 0
	call8	uxQueueMessagesWaiting
.LVL99:
	mov.n	a3, a10
.LVL100:
	.loc 1 364 0
	l32i.n	a8, a2, 0
	l32i.n	a8, a8, 4
	beqz.n	a8, .L55
	.loc 1 365 0
	bnez.n	a10, .L56
	.loc 1 371 0
	movi.n	a11, 0
	mov.n	a10, a2
	call8	sys_mbox_trypost
.LVL101:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L56
	.loc 1 373 0 discriminator 4
	call8	esp_log_timestamp
.LVL102:
	l32r	a11, .LC3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC5
	movi.n	a10, 2
	call8	esp_log_write
.LVL103:
.L56:
	.loc 1 378 0
	l32i.n	a2, a2, 0
.LVL104:
	movi.n	a3, 0
.LVL105:
	s32i.n	a3, a2, 4
	retw.n
.LVL106:
.L55:
	.loc 1 380 0
	bltui	a10, 2, .L57
	.loc 1 381 0 discriminator 4
	call8	esp_log_timestamp
.LVL107:
	l32r	a11, .LC3
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC7
	movi.n	a10, 2
	call8	esp_log_write
.LVL108:
.L57:
	.loc 1 384 0
	beqz.n	a3, .L58
	.loc 1 386 0
	l32i.n	a3, a2, 0
.LVL109:
	movi.n	a11, 0
	l32i.n	a10, a3, 0
	call8	xQueueGenericReset
.LVL110:
.L58:
	.loc 1 390 0
	l32i.n	a3, a2, 0
	l32i.n	a10, a3, 0
	call8	vQueueDelete
.LVL111:
	.loc 1 391 0
	l32i.n	a10, a2, 0
	call8	free
.LVL112:
	.loc 1 392 0
	movi.n	a3, 0
	s32i.n	a3, a2, 0
.L53:
	retw.n
.LFE36:
	.size	sys_mbox_free, .-sys_mbox_free
	.section	.text.sys_thread_new,"ax",@progbits
	.literal_position
	.literal .LC8, 2147483647
	.align	4
	.global	sys_thread_new
	.type	sys_thread_new, @function
sys_thread_new:
.LFB37:
	.loc 1 410 0
.LVL113:
	entry	sp, 64
.LCFI18:
	.loc 1 414 0
	l32r	a8, .LC8
	s32i.n	a8, sp, 0
	addi	a15, sp, 16
	mov.n	a14, a6
	mov.n	a13, a4
	mov.n	a12, a5
	mov.n	a11, a2
	mov.n	a10, a3
	call8	xTaskCreatePinnedToCore
.LVL114:
	.loc 1 417 0
	bnei	a10, 1, .L61
	.loc 1 421 0
	l32i.n	a2, sp, 16
.LVL115:
	retw.n
.LVL116:
.L61:
	.loc 1 418 0
	movi.n	a2, 0
.LVL117:
	.loc 1 422 0
	retw.n
.LFE37:
	.size	sys_thread_new, .-sys_thread_new
	.section	.rodata.str1.4
	.align	4
.LC11:
	.string	"\033[0;31mE (%d) %s: sys_init: failed to init lwip protect mutex\n\033[0m\n"
	.section	.text.sys_init,"ax",@progbits
	.literal_position
	.literal .LC9, g_lwip_protect_mutex
	.literal .LC10, .LC2
	.literal .LC12, .LC11
	.literal .LC13, sys_thread_sem_free
	.literal .LC14, sys_thread_sem_key
	.align	4
	.global	sys_init
	.type	sys_init, @function
sys_init:
.LFB38:
	.loc 1 428 0
	entry	sp, 32
.LCFI19:
	.loc 1 429 0
	l32r	a10, .LC9
	call8	sys_mutex_new
.LVL118:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L63
	.loc 1 430 0 discriminator 2
	call8	esp_log_timestamp
.LVL119:
	l32r	a11, .LC10
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC12
	movi.n	a10, 1
	call8	esp_log_write
.LVL120:
.L63:
	.loc 1 434 0
	l32r	a11, .LC13
	l32r	a10, .LC14
	call8	pthread_key_create
.LVL121:
	.loc 1 436 0
	call8	esp_vfs_lwip_sockets_register
.LVL122:
	retw.n
.LFE38:
	.size	sys_init, .-sys_init
	.section	.text.sys_jiffies,"ax",@progbits
	.align	4
	.global	sys_jiffies
	.type	sys_jiffies, @function
sys_jiffies:
.LFB39:
	.loc 1 442 0
	entry	sp, 32
.LCFI20:
	.loc 1 443 0
	call8	xTaskGetTickCount
.LVL123:
	.loc 1 444 0
	mov.n	a2, a10
	retw.n
.LFE39:
	.size	sys_jiffies, .-sys_jiffies
	.section	.text.sys_now,"ax",@progbits
	.align	4
	.global	sys_now
	.type	sys_now, @function
sys_now:
.LFB40:
	.loc 1 449 0
	entry	sp, 32
.LCFI21:
	.loc 1 450 0
	call8	xTaskGetTickCount
.LVL124:
	addx4	a10, a10, a10
	slli	a2, a10, 1
	.loc 1 451 0
	retw.n
.LFE40:
	.size	sys_now, .-sys_now
	.section	.text.sys_arch_protect,"ax",@progbits
	.literal_position
	.literal .LC15, g_lwip_protect_mutex
	.align	4
	.global	sys_arch_protect
	.type	sys_arch_protect, @function
sys_arch_protect:
.LFB41:
	.loc 1 468 0
	entry	sp, 32
.LCFI22:
	.loc 1 469 0
	l32r	a10, .LC15
	call8	sys_mutex_lock
.LVL125:
	.loc 1 471 0
	movi.n	a2, 1
	retw.n
.LFE41:
	.size	sys_arch_protect, .-sys_arch_protect
	.section	.text.sys_arch_unprotect,"ax",@progbits
	.literal_position
	.literal .LC16, g_lwip_protect_mutex
	.align	4
	.global	sys_arch_unprotect
	.type	sys_arch_unprotect, @function
sys_arch_unprotect:
.LFB42:
	.loc 1 482 0
.LVL126:
	entry	sp, 32
.LCFI23:
	.loc 1 483 0
	l32r	a10, .LC16
	call8	sys_mutex_unlock
.LVL127:
	retw.n
.LFE42:
	.size	sys_arch_unprotect, .-sys_arch_unprotect
	.section	.rodata.str1.4
	.align	4
.LC18:
	.string	"\033[0;31mE (%d) %s: thread_sem_init: out of memory\033[0m\n"
	.section	.text.sys_thread_sem_init,"ax",@progbits
	.literal_position
	.literal .LC17, .LC2
	.literal .LC19, .LC18
	.literal .LC20, sys_thread_sem_key
	.align	4
	.global	sys_thread_sem_init
	.type	sys_thread_sem_init, @function
sys_thread_sem_init:
.LFB45:
	.loc 1 516 0
	entry	sp, 32
.LCFI24:
	.loc 1 517 0
	movi.n	a10, 4
	call8	mem_malloc
.LVL128:
	mov.n	a2, a10
.LVL129:
	.loc 1 519 0
	bnez.n	a10, .L69
	.loc 1 520 0 discriminator 2
	call8	esp_log_timestamp
.LVL130:
	l32r	a11, .LC17
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC19
	movi.n	a10, 1
	call8	esp_log_write
.LVL131:
	.loc 1 521 0 discriminator 2
	retw.n
.L69:
	.loc 1 524 0
	movi.n	a12, 3
	movi.n	a11, 0
	movi.n	a10, 1
	call8	xQueueGenericCreate
.LVL132:
	s32i.n	a10, a2, 0
	.loc 1 525 0
	bnez.n	a10, .L71
	.loc 1 526 0
	mov.n	a10, a2
	call8	free
.LVL133:
	.loc 1 527 0
	call8	esp_log_timestamp
.LVL134:
	l32r	a11, .LC17
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC19
	movi.n	a10, 1
	call8	esp_log_write
.LVL135:
	.loc 1 528 0
	movi.n	a2, 0
.LVL136:
	retw.n
.LVL137:
.L71:
	.loc 1 531 0
	mov.n	a11, a2
	l32r	a8, .LC20
	l32i.n	a10, a8, 0
	call8	pthread_setspecific
.LVL138:
	.loc 1 533 0
	retw.n
.LFE45:
	.size	sys_thread_sem_init, .-sys_thread_sem_init
	.section	.text.sys_thread_sem_get,"ax",@progbits
	.literal_position
	.literal .LC21, sys_thread_sem_key
	.align	4
	.global	sys_thread_sem_get
	.type	sys_thread_sem_get, @function
sys_thread_sem_get:
.LFB43:
	.loc 1 490 0
	entry	sp, 32
.LCFI25:
	.loc 1 491 0
	l32r	a8, .LC21
	l32i.n	a10, a8, 0
	call8	pthread_getspecific
.LVL139:
	.loc 1 493 0
	bnez.n	a10, .L73
	.loc 1 494 0
	call8	sys_thread_sem_init
.LVL140:
.L73:
	.loc 1 498 0
	mov.n	a2, a10
	retw.n
.LFE43:
	.size	sys_thread_sem_get, .-sys_thread_sem_get
	.section	.text.sys_thread_sem_deinit,"ax",@progbits
	.literal_position
	.literal .LC22, sys_thread_sem_key
	.align	4
	.global	sys_thread_sem_deinit
	.type	sys_thread_sem_deinit, @function
sys_thread_sem_deinit:
.LFB46:
	.loc 1 536 0
	entry	sp, 32
.LCFI26:
	.loc 1 537 0
	l32r	a8, .LC22
	l32i.n	a10, a8, 0
	call8	pthread_getspecific
.LVL141:
	.loc 1 538 0
	beqz.n	a10, .L74
	.loc 1 539 0
	call8	sys_thread_sem_free
.LVL142:
	.loc 1 540 0
	movi.n	a11, 0
	l32r	a8, .LC22
	l32i.n	a10, a8, 0
	call8	pthread_setspecific
.LVL143:
.L74:
	retw.n
.LFE46:
	.size	sys_thread_sem_deinit, .-sys_thread_sem_deinit
	.section	.text.sys_delay_ms,"ax",@progbits
	.literal_position
	.literal .LC23, -858993459
	.align	4
	.global	sys_delay_ms
	.type	sys_delay_ms, @function
sys_delay_ms:
.LFB47:
	.loc 1 545 0
.LVL144:
	entry	sp, 32
.LCFI27:
	.loc 1 546 0
	l32r	a8, .LC23
	muluh	a10, a2, a8
	srli	a10, a10, 3
	call8	vTaskDelay
.LVL145:
	retw.n
.LFE47:
	.size	sys_delay_ms, .-sys_delay_ms
	.section	.bss.sys_thread_sem_key,"aw",@nobits
	.align	4
	.type	sys_thread_sem_key, @object
	.size	sys_thread_sem_key, 4
sys_thread_sem_key:
	.zero	4
	.section	.bss.g_lwip_protect_mutex,"aw",@nobits
	.align	4
	.type	g_lwip_protect_mutex, @object
	.size	g_lwip_protect_mutex, 4
g_lwip_protect_mutex:
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
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI0-.LFB44
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x30
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
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI11-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI12-.LFB31
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI13-.LFB32
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI14-.LFB33
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI15-.LFB34
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI16-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI17-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI18-.LFB37
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI19-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI20-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI21-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI22-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI23-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI24-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI25-.LFB43
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
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/task.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/queue.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/port/esp32/include/arch/sys_arch.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/port/esp32/include/arch/cc.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/err.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/sys.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/memp.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.file 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/mem.h"
	.file 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/pthread.h"
	.file 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/port/esp32/include/arch/vfs_lwip.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xeb3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0xc
	.4byte	.LASF149
	.4byte	.LASF150
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x11
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x12
	.4byte	0x50
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x15
	.4byte	0x62
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x3
	.2byte	0x1d9
	.4byte	0x77
	.uleb128 0x7
	.byte	0x4
	.4byte	0xb9
	.uleb128 0x8
	.4byte	0xa0
	.uleb128 0x9
	.4byte	0xc9
	.uleb128 0xa
	.4byte	0x97
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x14
	.4byte	0x33
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x15
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x20
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2d
	.4byte	0x77
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x6f
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x70
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x76
	.4byte	0xf0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x6e
	.4byte	0x97
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x7
	.byte	0x58
	.4byte	0x97
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x8
	.byte	0x4f
	.4byte	0x12e
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x9
	.byte	0x2f
	.4byte	0x139
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x9
	.byte	0x30
	.4byte	0x139
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x9
	.byte	0x31
	.4byte	0x123
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0x8
	.byte	0x9
	.byte	0x33
	.4byte	0x18a
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x9
	.byte	0x34
	.4byte	0x12e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x9
	.byte	0x35
	.4byte	0x97
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x9
	.byte	0x36
	.4byte	0x195
	.uleb128 0x7
	.byte	0x4
	.4byte	0x165
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0xa
	.byte	0x36
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0xb
	.byte	0x39
	.4byte	0xcf
	.uleb128 0xd
	.byte	0x4
	.4byte	0x70
	.byte	0xb
	.byte	0x3d
	.4byte	0x224
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0
	.uleb128 0xf
	.4byte	.LASF36
	.sleb128 -1
	.uleb128 0xf
	.4byte	.LASF37
	.sleb128 -2
	.uleb128 0xf
	.4byte	.LASF38
	.sleb128 -3
	.uleb128 0xf
	.4byte	.LASF39
	.sleb128 -4
	.uleb128 0xf
	.4byte	.LASF40
	.sleb128 -5
	.uleb128 0xf
	.4byte	.LASF41
	.sleb128 -6
	.uleb128 0xf
	.4byte	.LASF42
	.sleb128 -7
	.uleb128 0xf
	.4byte	.LASF43
	.sleb128 -8
	.uleb128 0xf
	.4byte	.LASF44
	.sleb128 -9
	.uleb128 0xf
	.4byte	.LASF45
	.sleb128 -10
	.uleb128 0xf
	.4byte	.LASF46
	.sleb128 -11
	.uleb128 0xf
	.4byte	.LASF47
	.sleb128 -12
	.uleb128 0xf
	.4byte	.LASF48
	.sleb128 -13
	.uleb128 0xf
	.4byte	.LASF49
	.sleb128 -14
	.uleb128 0xf
	.4byte	.LASF50
	.sleb128 -15
	.uleb128 0xf
	.4byte	.LASF51
	.sleb128 -16
	.byte	0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0xc
	.byte	0x62
	.4byte	0xc9
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c
	.byte	0xd
	.byte	0x34
	.4byte	0x2ae
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x7
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0xb
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0xd
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0xf
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x11
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x1f
	.4byte	0x2df
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x1f4
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x32b
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x97
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.string	"sem"
	.byte	0x1
	.2byte	0x1f6
	.4byte	0x32b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LVL2
	.4byte	0xdd7
	.uleb128 0x14
	.4byte	.LVL3
	.4byte	0xde3
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x144
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x1
	.byte	0x3a
	.4byte	0x1a6
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x378
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0x1
	.byte	0x3a
	.4byte	0x378
	.4byte	.LLST0
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x1
	.byte	0x3c
	.4byte	0x1a6
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	.LVL6
	.4byte	0xdee
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x14f
	.uleb128 0x19
	.4byte	.LASF83
	.byte	0x1
	.byte	0x4c
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3bb
	.uleb128 0x1a
	.4byte	.LASF79
	.byte	0x1
	.byte	0x4c
	.4byte	0x378
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LVL11
	.4byte	0xdfa
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x1
	.byte	0x52
	.4byte	0x1a6
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3fd
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0x1
	.byte	0x52
	.4byte	0x378
	.4byte	.LLST2
	.uleb128 0x14
	.4byte	.LVL13
	.4byte	0xdfa
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF84
	.byte	0x1
	.byte	0x5b
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x439
	.uleb128 0x1a
	.4byte	.LASF79
	.byte	0x1
	.byte	0x5b
	.4byte	0x378
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LVL18
	.4byte	0xe06
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF85
	.byte	0x1
	.byte	0x63
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x465
	.uleb128 0x1a
	.4byte	.LASF79
	.byte	0x1
	.byte	0x63
	.4byte	0x378
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LVL20
	.4byte	0xdd7
	.byte	0
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0x1
	.byte	0x6e
	.4byte	0x1a6
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4fd
	.uleb128 0x1b
	.string	"sem"
	.byte	0x1
	.byte	0x6e
	.4byte	0x32b
	.4byte	.LLST3
	.uleb128 0x1a
	.4byte	.LASF87
	.byte	0x1
	.byte	0x6e
	.4byte	0xda
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x1
	.byte	0x70
	.4byte	0x1a6
	.4byte	.LLST4
	.uleb128 0x1c
	.4byte	.LVL23
	.4byte	0xe12
	.4byte	0x4c6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL24
	.4byte	0xe06
	.4byte	0x4e3
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.4byte	.LVL25
	.4byte	0xdfa
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF88
	.byte	0x1
	.byte	0x83
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x539
	.uleb128 0x1d
	.string	"sem"
	.byte	0x1
	.byte	0x83
	.4byte	0x32b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LVL32
	.4byte	0xe06
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x1
	.byte	0x8a
	.4byte	0x70
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x580
	.uleb128 0x1b
	.string	"sem"
	.byte	0x1
	.byte	0x8a
	.4byte	0x32b
	.4byte	.LLST5
	.uleb128 0x1e
	.4byte	.LASF90
	.byte	0x1
	.byte	0x8c
	.4byte	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.4byte	.LVL34
	.4byte	0xe1e
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0x1
	.byte	0xa2
	.4byte	0xf0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65e
	.uleb128 0x1b
	.string	"sem"
	.byte	0x1
	.byte	0xa2
	.4byte	0x32b
	.4byte	.LLST6
	.uleb128 0x1a
	.4byte	.LASF92
	.byte	0x1
	.byte	0xa2
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF93
	.byte	0x1
	.byte	0xa4
	.4byte	0x118
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x1
	.byte	0xa4
	.4byte	0x118
	.4byte	.LLST7
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x1
	.byte	0xa4
	.4byte	0x118
	.4byte	.LLST8
	.uleb128 0x1e
	.4byte	.LASF96
	.byte	0x1
	.byte	0xa5
	.4byte	0x99
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LVL37
	.4byte	0xe2a
	.uleb128 0x1c
	.4byte	.LVL39
	.4byte	0xdfa
	.4byte	0x62d
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1b
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xcccccccd
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x33
	.byte	0x25
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL40
	.4byte	0xe2a
	.uleb128 0x1c
	.4byte	.LVL44
	.4byte	0xdfa
	.4byte	0x654
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL45
	.4byte	0xe2a
	.byte	0
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0x1
	.byte	0xc9
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x68a
	.uleb128 0x1d
	.string	"sem"
	.byte	0x1
	.byte	0xc9
	.4byte	0x32b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LVL55
	.4byte	0xdd7
	.byte	0
	.uleb128 0x16
	.4byte	.LASF98
	.byte	0x1
	.byte	0xd1
	.4byte	0x1a6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6fa
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0x1
	.byte	0xd1
	.4byte	0x6fa
	.4byte	.LLST9
	.uleb128 0x1a
	.4byte	.LASF100
	.byte	0x1
	.byte	0xd1
	.4byte	0x70
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LVL57
	.4byte	0xe36
	.4byte	0x6d2
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL58
	.4byte	0xe12
	.4byte	0x6f0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL60
	.4byte	0xde3
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x18a
	.uleb128 0x19
	.4byte	.LASF101
	.byte	0x1
	.byte	0xec
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x74d
	.uleb128 0x1a
	.4byte	.LASF99
	.byte	0x1
	.byte	0xec
	.4byte	0x6fa
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.string	"msg"
	.byte	0x1
	.byte	0xec
	.4byte	0x97
	.4byte	.LLST10
	.uleb128 0x14
	.4byte	.LVL66
	.4byte	0xe06
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x1
	.byte	0xf3
	.4byte	0x1a6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7aa
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0x1
	.byte	0xf3
	.4byte	0x6fa
	.4byte	.LLST11
	.uleb128 0x1d
	.string	"msg"
	.byte	0x1
	.byte	0xf3
	.4byte	0x97
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF80
	.byte	0x1
	.byte	0xf5
	.4byte	0x1a6
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LVL68
	.4byte	0xe06
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x112
	.4byte	0xf0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x869
	.uleb128 0x20
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x112
	.4byte	0x6fa
	.4byte	.LLST12
	.uleb128 0x21
	.string	"msg"
	.byte	0x1
	.2byte	0x112
	.4byte	0x869
	.4byte	.LLST13
	.uleb128 0x20
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x112
	.4byte	0xf0
	.4byte	.LLST14
	.uleb128 0x22
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x114
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x115
	.4byte	0x118
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x115
	.4byte	0x118
	.4byte	.LLST15
	.uleb128 0x23
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x115
	.4byte	0x118
	.4byte	.LLST16
	.uleb128 0x24
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x116
	.4byte	0x99
	.uleb128 0x13
	.4byte	.LVL73
	.4byte	0xe2a
	.uleb128 0x1c
	.4byte	.LVL82
	.4byte	0xdfa
	.4byte	0x85f
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL83
	.4byte	0xe2a
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x97
	.uleb128 0x1f
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x13b
	.4byte	0xf0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8db
	.uleb128 0x20
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x13b
	.4byte	0x6fa
	.4byte	.LLST17
	.uleb128 0x21
	.string	"msg"
	.byte	0x1
	.2byte	0x13b
	.4byte	0x869
	.4byte	.LLST18
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x13d
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x13e
	.4byte	0x99
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LVL91
	.4byte	0xdfa
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x150
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x910
	.uleb128 0x20
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x150
	.4byte	0x6fa
	.4byte	.LLST19
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x150
	.4byte	0x97
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x25
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x15e
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa02
	.uleb128 0x20
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x15e
	.4byte	0x6fa
	.4byte	.LLST20
	.uleb128 0x23
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x160
	.4byte	0xf0
	.4byte	.LLST21
	.uleb128 0x13
	.4byte	.LVL99
	.4byte	0xe41
	.uleb128 0x1c
	.4byte	.LVL101
	.4byte	0x74d
	.4byte	0x968
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL102
	.4byte	0xe4d
	.uleb128 0x1c
	.4byte	.LVL103
	.4byte	0xe58
	.4byte	0x99f
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x13
	.4byte	.LVL107
	.4byte	0xe4d
	.uleb128 0x1c
	.4byte	.LVL108
	.4byte	0xe58
	.4byte	0x9dc
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL110
	.4byte	0xe63
	.4byte	0x9ef
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL111
	.4byte	0xdd7
	.uleb128 0x13
	.4byte	.LVL112
	.4byte	0xde3
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x199
	.4byte	0x15a
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaba
	.uleb128 0x20
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x199
	.4byte	0xb3
	.4byte	.LLST22
	.uleb128 0x11
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x199
	.4byte	0x224
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.string	"arg"
	.byte	0x1
	.2byte	0x199
	.4byte	0x97
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x199
	.4byte	0x70
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x11
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x199
	.4byte	0x70
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x22
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x19b
	.4byte	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x19c
	.4byte	0x70
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x14
	.4byte	.LVL114
	.4byte	0xe6f
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x1ab
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb48
	.uleb128 0x1c
	.4byte	.LVL118
	.4byte	0x331
	.4byte	0xae7
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	g_lwip_protect_mutex
	.byte	0
	.uleb128 0x13
	.4byte	.LVL119
	.4byte	0xe4d
	.uleb128 0x1c
	.4byte	.LVL120
	.4byte	0xe58
	.4byte	0xb1e
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL121
	.4byte	0xe7b
	.4byte	0xb3e
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	sys_thread_sem_key
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	sys_thread_sem_free
	.byte	0
	.uleb128 0x13
	.4byte	.LVL122
	.4byte	0xe87
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x1b9
	.4byte	0xf0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb6c
	.uleb128 0x13
	.4byte	.LVL123
	.4byte	0xe2a
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x1c0
	.4byte	0xf0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb90
	.uleb128 0x13
	.4byte	.LVL124
	.4byte	0xe2a
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x1d3
	.4byte	0x19b
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbbe
	.uleb128 0x14
	.4byte	.LVL125
	.4byte	0x37e
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	g_lwip_protect_mutex
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x1e1
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf6
	.uleb128 0x11
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x1e1
	.4byte	0x19b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LVL127
	.4byte	0x3fd
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	g_lwip_protect_mutex
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x203
	.4byte	0x32b
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce3
	.uleb128 0x27
	.string	"sem"
	.byte	0x1
	.2byte	0x205
	.4byte	0x32b
	.4byte	.LLST23
	.uleb128 0x1c
	.4byte	.LVL128
	.4byte	0xe36
	.4byte	0xc33
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x13
	.4byte	.LVL130
	.4byte	0xe4d
	.uleb128 0x1c
	.4byte	.LVL131
	.4byte	0xe58
	.4byte	0xc6a
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL132
	.4byte	0xe12
	.4byte	0xc87
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL133
	.4byte	0xde3
	.4byte	0xc9b
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL134
	.4byte	0xe4d
	.uleb128 0x1c
	.4byte	.LVL135
	.4byte	0xe58
	.4byte	0xcd2
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x14
	.4byte	.LVL138
	.4byte	0xe92
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x32b
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd20
	.uleb128 0x27
	.string	"sem"
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x32b
	.4byte	.LLST24
	.uleb128 0x13
	.4byte	.LVL139
	.4byte	0xe9e
	.uleb128 0x13
	.4byte	.LVL140
	.4byte	0xbf6
	.byte	0
	.uleb128 0x25
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x217
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd68
	.uleb128 0x27
	.string	"sem"
	.byte	0x1
	.2byte	0x219
	.4byte	0x32b
	.4byte	.LLST25
	.uleb128 0x13
	.4byte	.LVL141
	.4byte	0xe9e
	.uleb128 0x13
	.4byte	.LVL142
	.4byte	0x2df
	.uleb128 0x14
	.4byte	.LVL143
	.4byte	0xe92
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x220
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdb5
	.uleb128 0x26
	.string	"ms"
	.byte	0x1
	.2byte	0x220
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LVL145
	.4byte	0xeaa
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1b
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xcccccccd
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x33
	.byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF127
	.byte	0x1
	.byte	0x30
	.4byte	0x14f
	.uleb128 0x5
	.byte	0x3
	.4byte	g_lwip_protect_mutex
	.uleb128 0x1e
	.4byte	.LASF128
	.byte	0x1
	.byte	0x32
	.4byte	0xa7
	.uleb128 0x5
	.byte	0x3
	.4byte	sys_thread_sem_key
	.uleb128 0x28
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x7
	.2byte	0x3ac
	.uleb128 0x29
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0xf
	.byte	0x5a
	.uleb128 0x28
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x7
	.2byte	0x578
	.uleb128 0x28
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0x7
	.2byte	0x38a
	.uleb128 0x28
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0x7
	.2byte	0x265
	.uleb128 0x28
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0x7
	.2byte	0x5d0
	.uleb128 0x28
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x7
	.2byte	0x4f4
	.uleb128 0x28
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x6
	.2byte	0x50a
	.uleb128 0x29
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x10
	.byte	0x5a
	.uleb128 0x28
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0x7
	.2byte	0x395
	.uleb128 0x29
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0xe
	.byte	0x57
	.uleb128 0x29
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0xe
	.byte	0x6b
	.uleb128 0x28
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x7
	.2byte	0x665
	.uleb128 0x28
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x6
	.2byte	0x151
	.uleb128 0x28
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0x11
	.2byte	0x119
	.uleb128 0x29
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x12
	.byte	0x13
	.uleb128 0x28
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0x11
	.2byte	0x11e
	.uleb128 0x28
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0x11
	.2byte	0x120
	.uleb128 0x28
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x6
	.2byte	0x32b
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
	.uleb128 0xc
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL4
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
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL21
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
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL22
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL33
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
.LLST6:
	.4byte	.LVL36
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
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE28
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL66-1
	.4byte	.LFE31
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL67
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
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL72
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
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL72
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL80
	.4byte	.LVL82-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88
	.4byte	.LFE33
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL89
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
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL90
	.4byte	.LVL91-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL97
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
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL129
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL137
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL139
	.4byte	.LVL140-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL140
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL141
	.4byte	.LVL142-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xf4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
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
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB44
	.4byte	.LFE44
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
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF87:
	.string	"count"
.LASF54:
	.string	"MEMP_UDP_PCB"
.LASF64:
	.string	"MEMP_SYS_TIMEOUT"
.LASF138:
	.string	"uxQueueMessagesWaiting"
.LASF128:
	.string	"sys_thread_sem_key"
.LASF35:
	.string	"ERR_OK"
.LASF65:
	.string	"MEMP_NETDB"
.LASF103:
	.string	"sys_arch_mbox_fetch"
.LASF4:
	.string	"__uint8_t"
.LASF147:
	.string	"vTaskDelay"
.LASF28:
	.string	"sys_mutex_t"
.LASF97:
	.string	"sys_sem_free"
.LASF0:
	.string	"long long unsigned int"
.LASF151:
	.string	"sys_mbox_s"
.LASF32:
	.string	"sys_mbox_t"
.LASF70:
	.string	"MEMP_PBUF_POOL"
.LASF57:
	.string	"MEMP_TCP_SEG"
.LASF25:
	.string	"QueueHandle_t"
.LASF117:
	.string	"sys_init"
.LASF130:
	.string	"free"
.LASF132:
	.string	"xQueueGenericReceive"
.LASF119:
	.string	"sys_now"
.LASF27:
	.string	"sys_sem_t"
.LASF76:
	.string	"ESP_LOG_DEBUG"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF120:
	.string	"sys_arch_protect"
.LASF43:
	.string	"ERR_USE"
.LASF93:
	.string	"StartTime"
.LASF38:
	.string	"ERR_TIMEOUT"
.LASF67:
	.string	"MEMP_IP6_REASSDATA"
.LASF142:
	.string	"xTaskCreatePinnedToCore"
.LASF11:
	.string	"long int"
.LASF85:
	.string	"sys_mutex_free"
.LASF53:
	.string	"MEMP_RAW_PCB"
.LASF121:
	.string	"sys_arch_unprotect"
.LASF107:
	.string	"sys_mbox_set_owner"
.LASF140:
	.string	"esp_log_write"
.LASF24:
	.string	"TaskHandle_t"
.LASF23:
	.string	"TickType_t"
.LASF47:
	.string	"ERR_IF"
.LASF143:
	.string	"pthread_key_create"
.LASF21:
	.string	"BaseType_t"
.LASF113:
	.string	"stacksize"
.LASF91:
	.string	"sys_arch_sem_wait"
.LASF81:
	.string	"sys_mutex_new"
.LASF9:
	.string	"__uint32_t"
.LASF56:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF6:
	.string	"__int16_t"
.LASF95:
	.string	"Elapsed"
.LASF84:
	.string	"sys_mutex_unlock"
.LASF1:
	.string	"unsigned int"
.LASF80:
	.string	"xReturn"
.LASF63:
	.string	"MEMP_IGMP_GROUP"
.LASF123:
	.string	"sys_thread_sem_init"
.LASF110:
	.string	"sys_thread_new"
.LASF13:
	.string	"long unsigned int"
.LASF145:
	.string	"pthread_setspecific"
.LASF44:
	.string	"ERR_ALREADY"
.LASF92:
	.string	"timeout"
.LASF111:
	.string	"name"
.LASF55:
	.string	"MEMP_TCP_PCB"
.LASF133:
	.string	"xQueueGenericSend"
.LASF78:
	.string	"data"
.LASF152:
	.string	"sys_thread_sem_free"
.LASF100:
	.string	"size"
.LASF8:
	.string	"short unsigned int"
.LASF61:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF49:
	.string	"ERR_RST"
.LASF131:
	.string	"xQueueCreateMutex"
.LASF108:
	.string	"sys_mbox_free"
.LASF115:
	.string	"created_task"
.LASF149:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/port/esp32/freertos/sys_arch.c"
.LASF136:
	.string	"xTaskGetTickCount"
.LASF118:
	.string	"sys_jiffies"
.LASF7:
	.string	"short int"
.LASF79:
	.string	"pxMutex"
.LASF102:
	.string	"sys_mbox_trypost"
.LASF75:
	.string	"ESP_LOG_INFO"
.LASF71:
	.string	"MEMP_MAX"
.LASF90:
	.string	"woken"
.LASF34:
	.string	"err_t"
.LASF12:
	.string	"sizetype"
.LASF52:
	.string	"lwip_thread_fn"
.LASF139:
	.string	"esp_log_timestamp"
.LASF68:
	.string	"MEMP_MLD6_GROUP"
.LASF129:
	.string	"vQueueDelete"
.LASF146:
	.string	"pthread_getspecific"
.LASF33:
	.string	"sys_prot_t"
.LASF150:
	.string	"/home/raphael/rtone/lcd/build/lwip"
.LASF114:
	.string	"prio"
.LASF40:
	.string	"ERR_INPROGRESS"
.LASF99:
	.string	"mbox"
.LASF144:
	.string	"esp_vfs_lwip_sockets_register"
.LASF89:
	.string	"sys_sem_signal_isr"
.LASF41:
	.string	"ERR_VAL"
.LASF125:
	.string	"sys_thread_sem_deinit"
.LASF112:
	.string	"thread"
.LASF20:
	.string	"_Bool"
.LASF3:
	.string	"__int8_t"
.LASF5:
	.string	"unsigned char"
.LASF51:
	.string	"ERR_ARG"
.LASF46:
	.string	"ERR_CONN"
.LASF148:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF127:
	.string	"g_lwip_protect_mutex"
.LASF126:
	.string	"sys_delay_ms"
.LASF135:
	.string	"xQueueGiveFromISR"
.LASF73:
	.string	"ESP_LOG_ERROR"
.LASF94:
	.string	"EndTime"
.LASF134:
	.string	"xQueueGenericCreate"
.LASF66:
	.string	"MEMP_ND6_QUEUE"
.LASF29:
	.string	"sys_thread_t"
.LASF88:
	.string	"sys_sem_signal"
.LASF101:
	.string	"sys_mbox_post"
.LASF124:
	.string	"sys_thread_sem_get"
.LASF48:
	.string	"ERR_ABRT"
.LASF31:
	.string	"owner"
.LASF60:
	.string	"MEMP_TCPIP_MSG_API"
.LASF141:
	.string	"xQueueGenericReset"
.LASF26:
	.string	"SemaphoreHandle_t"
.LASF14:
	.string	"char"
.LASF77:
	.string	"ESP_LOG_VERBOSE"
.LASF58:
	.string	"MEMP_NETBUF"
.LASF36:
	.string	"ERR_MEM"
.LASF104:
	.string	"dummyptr"
.LASF72:
	.string	"ESP_LOG_NONE"
.LASF122:
	.string	"pval"
.LASF15:
	.string	"pthread_key_t"
.LASF62:
	.string	"MEMP_ARP_QUEUE"
.LASF30:
	.string	"os_mbox"
.LASF83:
	.string	"sys_mutex_lock"
.LASF50:
	.string	"ERR_CLSD"
.LASF39:
	.string	"ERR_RTE"
.LASF16:
	.string	"int8_t"
.LASF137:
	.string	"mem_malloc"
.LASF37:
	.string	"ERR_BUF"
.LASF19:
	.string	"uint32_t"
.LASF86:
	.string	"sys_sem_new"
.LASF74:
	.string	"ESP_LOG_WARN"
.LASF109:
	.string	"mbox_message_num"
.LASF45:
	.string	"ERR_ISCONN"
.LASF105:
	.string	"sys_arch_mbox_tryfetch"
.LASF106:
	.string	"pvDummy"
.LASF59:
	.string	"MEMP_NETCONN"
.LASF17:
	.string	"uint8_t"
.LASF42:
	.string	"ERR_WOULDBLOCK"
.LASF98:
	.string	"sys_mbox_new"
.LASF96:
	.string	"ulReturn"
.LASF18:
	.string	"int16_t"
.LASF22:
	.string	"UBaseType_t"
.LASF69:
	.string	"MEMP_PBUF"
.LASF116:
	.string	"result"
.LASF82:
	.string	"sys_mutex_trylock"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
