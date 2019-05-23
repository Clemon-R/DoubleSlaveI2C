	.file	"esp_timer.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.align	4
	.type	timer_armed, @function
timer_armed:
.LFB27:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/esp_timer.c"
	.loc 1 250 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 251 0
	l32i.n	a8, a2, 0
	l32i.n	a2, a2, 4
.LVL1:
	or	a8, a8, a2
	movi.n	a2, 0
	movi.n	a9, 1
	movnez	a2, a9, a8
	.loc 1 252 0
	retw.n
.LFE27:
	.size	timer_armed, .-timer_armed
	.literal_position
	.literal .LC0, s_timer_task
	.align	4
	.type	is_initialized, @function
is_initialized:
.LFB33:
	.loc 1 335 0
	entry	sp, 32
.LCFI1:
	.loc 1 336 0
	l32r	a2, .LC0
	l32i.n	a8, a2, 0
	movi.n	a2, 0
	movi.n	a9, 1
	movnez	a2, a9, a8
	.loc 1 337 0
	retw.n
.LFE33:
	.size	is_initialized, .-is_initialized
	.literal_position
	.literal .LC1, s_timer_lock
	.align	4
	.type	timer_list_lock, @function
timer_list_lock:
.LFB28:
	.loc 1 255 0
	entry	sp, 32
.LCFI2:
	.loc 1 256 0
	l32r	a10, .LC1
	call8	vTaskEnterCritical
.LVL2:
	retw.n
.LFE28:
	.size	timer_list_lock, .-timer_list_lock
	.literal_position
	.literal .LC2, s_timer_lock
	.align	4
	.type	timer_list_unlock, @function
timer_list_unlock:
.LFB29:
	.loc 1 260 0
	entry	sp, 32
.LCFI3:
	.loc 1 261 0
	l32r	a10, .LC2
	call8	vTaskExitCritical
.LVL3:
	retw.n
.LFE29:
	.size	timer_list_unlock, .-timer_list_unlock
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC4:
	.string	"last"
	.align	4
.LC7:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/esp_timer.c"
	.section	.iram1
	.literal_position
	.literal .LC3, s_timers
	.literal .LC5, .LC4
	.literal .LC6, __func__$5443
	.literal .LC8, .LC7
	.align	4
	.type	timer_insert, @function
timer_insert:
.LFB25:
	.loc 1 179 0
.LVL4:
	entry	sp, 32
.LCFI4:
	.loc 1 180 0
	call8	timer_list_lock
.LVL5:
	.loc 1 185 0
	l32r	a8, .LC3
	l32i.n	a8, a8, 0
	bnez.n	a8, .L16
	.loc 1 186 0
	s32i.n	a8, a2, 24
	beqz.n	a8, .L7
	.loc 1 186 0 discriminator 1
	addi	a9, a2, 24
	s32i.n	a9, a8, 28
.L7:
	.loc 1 186 0 is_stmt 0 discriminator 3
	l32r	a8, .LC3
	s32i.n	a2, a8, 0
	s32i.n	a8, a2, 28
	j	.L8
.LVL6:
.L12:
	.loc 1 189 0 is_stmt 1
	l32i.n	a13, a2, 0
	l32i.n	a9, a2, 4
	l32i.n	a12, a8, 0
	l32i.n	a10, a8, 4
	bltu	a9, a10, .L17
	bne	a10, a9, .L9
	bgeu	a13, a12, .L9
.L17:
	.loc 1 190 0
	l32i.n	a9, a8, 28
	s32i.n	a9, a2, 28
	s32i.n	a8, a2, 24
	l32i.n	a9, a8, 28
	s32i.n	a2, a9, 0
	addi	a9, a2, 24
	s32i.n	a9, a8, 28
	.loc 1 191 0
	j	.L11
.L9:
.LVL7:
	.loc 1 193 0 discriminator 2
	mov.n	a11, a8
	.loc 1 188 0 discriminator 2
	l32i.n	a8, a8, 24
.LVL8:
	j	.L6
.LVL9:
.L16:
	movi.n	a11, 0
.LVL10:
.L6:
	.loc 1 188 0 is_stmt 0 discriminator 1
	bnez.n	a8, .L12
.L11:
	.loc 1 195 0 is_stmt 1
	bnez.n	a8, .L8
	.loc 1 196 0
	bnez.n	a11, .L13
	.loc 1 196 0 is_stmt 0 discriminator 1
	l32r	a13, .LC5
	l32r	a12, .LC6
	movi	a11, 0xc4
.LVL11:
	l32r	a10, .LC8
	call8	__assert_func
.LVL12:
.L13:
	.loc 1 197 0 is_stmt 1
	l32i.n	a8, a11, 24
.LVL13:
	s32i.n	a8, a2, 24
	beqz.n	a8, .L14
	.loc 1 197 0 discriminator 1
	l32i.n	a8, a11, 24
	addi	a9, a2, 24
	s32i.n	a9, a8, 28
.L14:
	.loc 1 197 0 is_stmt 0 discriminator 3
	s32i.n	a2, a11, 24
	addi	a11, a11, 24
.LVL14:
	s32i.n	a11, a2, 28
.LVL15:
.L8:
	.loc 1 200 0 is_stmt 1
	l32r	a8, .LC3
	l32i.n	a8, a8, 0
	bne	a2, a8, .L15
	.loc 1 201 0
	l32i.n	a10, a2, 0
	l32i.n	a11, a2, 4
	call8	esp_timer_impl_set_alarm
.LVL16:
.L15:
	.loc 1 203 0
	call8	timer_list_unlock
.LVL17:
	.loc 1 205 0
	movi.n	a2, 0
.LVL18:
	retw.n
.LFE25:
	.size	timer_insert, .-timer_insert
	.literal_position
	.literal .LC9, 0, 0
	.align	4
	.type	timer_remove, @function
timer_remove:
.LFB26:
	.loc 1 208 0
.LVL19:
	entry	sp, 32
.LCFI5:
	.loc 1 209 0
	call8	timer_list_lock
.LVL20:
	.loc 1 210 0
	l32i.n	a8, a2, 24
	beqz.n	a8, .L19
	.loc 1 210 0 discriminator 1
	l32i.n	a9, a2, 28
	s32i.n	a9, a8, 28
.L19:
	.loc 1 210 0 is_stmt 0 discriminator 3
	l32i.n	a8, a2, 28
	l32i.n	a9, a2, 24
	s32i.n	a9, a8, 0
	.loc 1 211 0 is_stmt 1 discriminator 3
	l32r	a8, .LC9
	l32r	a9, .LC9+4
	s32i.n	a8, a2, 0
	s32i.n	a9, a2, 4
	.loc 1 212 0 discriminator 3
	s32i.n	a8, a2, 8
	s32i.n	a9, a2, 12
	.loc 1 216 0 discriminator 3
	call8	timer_list_unlock
.LVL21:
	.loc 1 218 0 discriminator 3
	movi.n	a2, 0
.LVL22:
	retw.n
.LFE26:
	.size	timer_remove, .-timer_remove
	.literal_position
	.literal .LC10, s_timer_semaphore
	.align	4
	.type	timer_alarm_handler, @function
timer_alarm_handler:
.LFB32:
	.loc 1 323 0
.LVL23:
	entry	sp, 48
.LCFI6:
	.loc 1 325 0
	mov.n	a11, sp
	l32r	a8, .LC10
	l32i.n	a10, a8, 0
	call8	xQueueGiveFromISR
.LVL24:
	bnei	a10, 1, .L20
	.loc 1 329 0
	l32i.n	a8, sp, 0
	bnei	a8, 1, .L20
	.loc 1 330 0
	call8	_frxt_setup_switch
.LVL25:
.L20:
	retw.n
.LFE32:
	.size	timer_alarm_handler, .-timer_alarm_handler
	.section	.text.timer_process_alarm,"ax",@progbits
	.literal_position
	.literal .LC11, s_timer_delete_mutex
	.literal .LC12, s_timers
	.literal .LC13, 0, 0
	.align	4
	.type	timer_process_alarm, @function
timer_process_alarm:
.LFB30:
	.loc 1 265 0
.LVL26:
	entry	sp, 32
.LCFI7:
	.loc 1 269 0
	movi.n	a11, -1
	l32r	a2, .LC11
.LVL27:
	l32i.n	a10, a2, 0
	call8	xQueueTakeMutexRecursive
.LVL28:
	.loc 1 270 0
	call8	timer_list_lock
.LVL29:
	.loc 1 271 0
	call8	esp_timer_impl_get_time
.LVL30:
	.loc 1 272 0
	l32r	a2, .LC12
	l32i.n	a2, a2, 0
.LVL31:
	.loc 1 273 0
	j	.L25
.L32:
	.loc 1 275 0
	l32i.n	a8, a2, 24
	beqz.n	a8, .L26
	.loc 1 275 0 discriminator 1
	l32i.n	a9, a2, 28
	s32i.n	a9, a8, 28
.L26:
	.loc 1 275 0 is_stmt 0 discriminator 3
	l32i.n	a8, a2, 28
	l32i.n	a9, a2, 24
	s32i.n	a9, a8, 0
	.loc 1 276 0 is_stmt 1 discriminator 3
	l32i.n	a8, a2, 8
	l32i.n	a9, a2, 12
	or	a10, a8, a9
.LVL32:
	beqz.n	a10, .L27
	.loc 1 277 0 discriminator 3
	l32i.n	a11, a2, 0
	l32i.n	a12, a2, 4
	add.n	a8, a11, a8
	movi.n	a10, 1
	bltu	a8, a11, .L29
	.loc 1 277 0 is_stmt 0
	movi.n	a10, 0
.L29:
	add.n	a9, a12, a9
	add.n	a10, a10, a9
	s32i.n	a8, a2, 0
	s32i.n	a10, a2, 4
	.loc 1 278 0 is_stmt 1
	mov.n	a10, a2
	call8	timer_insert
.LVL33:
	j	.L30
.L27:
	.loc 1 280 0
	l32r	a8, .LC13
	l32r	a9, .LC13+4
	s32i.n	a8, a2, 0
	s32i.n	a9, a2, 4
.L30:
	.loc 1 289 0
	call8	timer_list_unlock
.LVL34:
	.loc 1 290 0
	l32i.n	a8, a2, 16
	l32i.n	a10, a2, 20
	callx8	a8
.LVL35:
	.loc 1 291 0
	call8	timer_list_lock
.LVL36:
	.loc 1 292 0
	call8	esp_timer_impl_get_time
.LVL37:
	.loc 1 303 0
	l32r	a2, .LC12
.LVL38:
	l32i.n	a2, a2, 0
.LVL39:
.L25:
	.loc 1 273 0
	beqz.n	a2, .L31
	.loc 1 274 0 discriminator 1
	l32i.n	a9, a2, 0
	l32i.n	a8, a2, 4
	.loc 1 273 0 discriminator 1
	bltu	a8, a11, .L32
	bne	a11, a8, .L31
	bltu	a9, a10, .L32
.L31:
	.loc 1 305 0
	l32r	a2, .LC12
.LVL40:
	l32i.n	a2, a2, 0
.LVL41:
	.loc 1 306 0
	beqz.n	a2, .L34
	.loc 1 307 0
	l32i.n	a10, a2, 0
.LVL42:
	l32i.n	a11, a2, 4
	call8	esp_timer_impl_set_alarm
.LVL43:
.L34:
	.loc 1 309 0
	call8	timer_list_unlock
.LVL44:
	.loc 1 310 0
	l32r	a2, .LC11
.LVL45:
	l32i.n	a10, a2, 0
	call8	xQueueGiveMutexRecursive
.LVL46:
	retw.n
.LFE30:
	.size	timer_process_alarm, .-timer_process_alarm
	.section	.rodata.str1.4
	.align	4
.LC15:
	.string	"res == pdTRUE"
	.section	.text.timer_task,"ax",@progbits
	.literal_position
	.literal .LC14, s_timer_semaphore
	.literal .LC16, .LC15
	.literal .LC17, __func__$5467
	.literal .LC18, .LC7
	.align	4
	.type	timer_task, @function
timer_task:
.LFB31:
	.loc 1 314 0
.LVL47:
	entry	sp, 32
.LCFI8:
.L37:
.LBB2:
	.loc 1 316 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32r	a8, .LC14
	l32i.n	a10, a8, 0
	call8	xQueueGenericReceive
.LVL48:
	.loc 1 317 0
	beqi	a10, 1, .L36
	.loc 1 317 0 is_stmt 0 discriminator 1
	l32r	a13, .LC16
	l32r	a12, .LC17
	movi	a11, 0x13d
	l32r	a10, .LC18
.LVL49:
	call8	__assert_func
.LVL50:
.L36:
	.loc 1 318 0 is_stmt 1
	movi.n	a10, 0
.LVL51:
	call8	timer_process_alarm
.LVL52:
.LBE2:
	.loc 1 319 0
	j	.L37
.LFE31:
	.size	timer_task, .-timer_task
	.section	.rodata.str1.4
	.align	4
.LC19:
	.string	"timer@%p  %12lld  %12lld\n"
	.section	.text.print_timer_info,"ax",@progbits
	.literal_position
	.literal .LC20, .LC19
	.align	4
	.type	print_timer_info, @function
print_timer_info:
.LFB36:
	.loc 1 430 0
.LVL53:
	entry	sp, 48
.LCFI9:
	mov.n	a13, a2
	.loc 1 431 0
	l32i.n	a14, a2, 8
	l32i.n	a15, a2, 12
	l32i.n	a8, a2, 0
	l32i.n	a9, a2, 4
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
	l32r	a12, .LC20
	l32i.n	a11, a4, 0
	l32i.n	a10, a3, 0
	call8	snprintf
.LVL54:
	.loc 1 442 0
	l32i.n	a8, a3, 0
	add.n	a8, a8, a10
	s32i.n	a8, a3, 0
	.loc 1 443 0
	l32i.n	a3, a4, 0
.LVL55:
	sub	a10, a3, a10
.LVL56:
	s32i.n	a10, a4, 0
	retw.n
.LFE36:
	.size	print_timer_info, .-print_timer_info
	.section	.text.esp_timer_create,"ax",@progbits
	.align	4
	.global	esp_timer_create
	.type	esp_timer_create, @function
esp_timer_create:
.LFB20:
	.loc 1 102 0
.LVL57:
	entry	sp, 32
.LCFI10:
	.loc 1 103 0
	call8	is_initialized
.LVL58:
	beqz.n	a10, .L41
	.loc 1 106 0
	l32i.n	a4, a2, 0
	beqz.n	a4, .L42
	.loc 1 109 0
	movi.n	a11, 0x20
	movi.n	a10, 1
	call8	calloc
.LVL59:
	.loc 1 110 0
	beqz.n	a10, .L43
	.loc 1 113 0
	s32i.n	a4, a10, 16
	.loc 1 114 0
	l32i.n	a2, a2, 4
.LVL60:
	s32i.n	a2, a10, 20
	.loc 1 119 0
	s32i.n	a10, a3, 0
	.loc 1 120 0
	movi.n	a2, 0
	retw.n
.LVL61:
.L41:
	.loc 1 104 0
	movi	a2, 0x103
.LVL62:
	retw.n
.LVL63:
.L42:
	.loc 1 107 0
	movi	a2, 0x102
.LVL64:
	retw.n
.LVL65:
.L43:
	.loc 1 111 0
	movi	a2, 0x101
.LVL66:
	.loc 1 121 0
	retw.n
.LFE20:
	.size	esp_timer_create, .-esp_timer_create
	.section	.iram1
	.align	4
	.global	esp_timer_stop
	.type	esp_timer_stop, @function
esp_timer_stop:
.LFB23:
	.loc 1 151 0
.LVL67:
	entry	sp, 32
.LCFI11:
	.loc 1 152 0
	call8	is_initialized
.LVL68:
	beqz.n	a10, .L46
	.loc 1 152 0 is_stmt 0 discriminator 1
	mov.n	a10, a2
	call8	timer_armed
.LVL69:
	beqz.n	a10, .L47
	.loc 1 155 0 is_stmt 1
	mov.n	a10, a2
	call8	timer_remove
.LVL70:
	mov.n	a2, a10
.LVL71:
	retw.n
.LVL72:
.L46:
	.loc 1 153 0
	movi	a2, 0x103
.LVL73:
	retw.n
.LVL74:
.L47:
	movi	a2, 0x103
.LVL75:
	.loc 1 156 0
	retw.n
.LFE23:
	.size	esp_timer_stop, .-esp_timer_stop
	.section	.text.esp_timer_delete,"ax",@progbits
	.literal_position
	.literal .LC21, s_timer_delete_mutex
	.align	4
	.global	esp_timer_delete
	.type	esp_timer_delete, @function
esp_timer_delete:
.LFB24:
	.loc 1 159 0
.LVL76:
	entry	sp, 32
.LCFI12:
	.loc 1 160 0
	beqz.n	a2, .L50
	.loc 1 163 0
	mov.n	a10, a2
	call8	timer_armed
.LVL77:
	bnez.n	a10, .L51
	.loc 1 166 0
	l32r	a3, .LC21
	movi.n	a11, -1
	l32i.n	a10, a3, 0
	call8	xQueueTakeMutexRecursive
.LVL78:
	.loc 1 173 0
	mov.n	a10, a2
	call8	free
.LVL79:
	.loc 1 174 0
	l32i.n	a10, a3, 0
	call8	xQueueGiveMutexRecursive
.LVL80:
	.loc 1 175 0
	movi.n	a2, 0
.LVL81:
	retw.n
.LVL82:
.L50:
	.loc 1 161 0
	movi	a2, 0x102
.LVL83:
	retw.n
.LVL84:
.L51:
	.loc 1 164 0
	movi	a2, 0x103
.LVL85:
	.loc 1 176 0
	retw.n
.LFE24:
	.size	esp_timer_delete, .-esp_timer_delete
	.section	.rodata.str1.4
	.align	4
.LC26:
	.string	"esp_timer"
	.section	.text.esp_timer_init,"ax",@progbits
	.literal_position
	.literal .LC22, s_timer_semaphore
	.literal .LC23, s_timer_delete_mutex
	.literal .LC24, s_timer_task
	.literal .LC25, 4096
	.literal .LC27, .LC26
	.literal .LC28, timer_task
	.literal .LC29, timer_alarm_handler
	.align	4
	.global	esp_timer_init
	.type	esp_timer_init, @function
esp_timer_init:
.LFB34:
	.loc 1 341 0
	entry	sp, 48
.LCFI13:
	.loc 1 343 0
	call8	is_initialized
.LVL86:
	bnez.n	a10, .L57
	.loc 1 351 0
	movi.n	a11, 0
	movi.n	a10, 0x10
	call8	xQueueCreateCountingSemaphore
.LVL87:
	l32r	a2, .LC22
	s32i.n	a10, a2, 0
	.loc 1 353 0
	beqz.n	a10, .L54
	.loc 1 362 0
	movi.n	a10, 4
	call8	xQueueCreateMutex
.LVL88:
	l32r	a2, .LC23
	s32i.n	a10, a2, 0
	.loc 1 364 0
	beqz.n	a10, .L54
	.loc 1 370 0
	movi.n	a13, 0
	s32i.n	a13, sp, 0
	l32r	a15, .LC24
	movi.n	a14, 0x16
	l32r	a12, .LC25
	l32r	a11, .LC27
	l32r	a10, .LC28
	call8	xTaskCreatePinnedToCore
.LVL89:
	.loc 1 372 0
	bnei	a10, 1, .L54
	.loc 1 377 0
	l32r	a10, .LC29
.LVL90:
	call8	esp_timer_impl_init
.LVL91:
	.loc 1 378 0
	beqz.n	a10, .L58
.LVL92:
.L54:
	.loc 1 385 0
	l32r	a2, .LC24
	l32i.n	a10, a2, 0
	beqz.n	a10, .L55
	.loc 1 386 0
	call8	vTaskDelete
.LVL93:
	.loc 1 387 0
	movi.n	a8, 0
	l32r	a2, .LC24
	s32i.n	a8, a2, 0
.L55:
	.loc 1 389 0
	l32r	a2, .LC22
	l32i.n	a10, a2, 0
	beqz.n	a10, .L56
	.loc 1 390 0
	call8	vQueueDelete
.LVL94:
	.loc 1 391 0
	movi.n	a8, 0
	l32r	a2, .LC22
	s32i.n	a8, a2, 0
.L56:
	.loc 1 393 0
	l32r	a2, .LC23
	l32i.n	a10, a2, 0
	beqz.n	a10, .L59
	.loc 1 394 0
	call8	vQueueDelete
.LVL95:
	.loc 1 395 0
	movi.n	a8, 0
	l32r	a2, .LC23
	s32i.n	a8, a2, 0
	.loc 1 397 0
	movi	a2, 0x101
	retw.n
.L57:
	.loc 1 344 0
	movi	a2, 0x103
	retw.n
.LVL96:
.L58:
	.loc 1 382 0
	movi.n	a2, 0
	retw.n
.LVL97:
.L59:
	.loc 1 397 0
	movi	a2, 0x101
	.loc 1 398 0
	retw.n
.LFE34:
	.size	esp_timer_init, .-esp_timer_init
	.section	.text.esp_timer_deinit,"ax",@progbits
	.literal_position
	.literal .LC30, s_timers
	.literal .LC31, s_timer_task
	.literal .LC32, s_timer_semaphore
	.align	4
	.global	esp_timer_deinit
	.type	esp_timer_deinit, @function
esp_timer_deinit:
.LFB35:
	.loc 1 401 0
	entry	sp, 32
.LCFI14:
	.loc 1 402 0
	call8	is_initialized
.LVL98:
	beqz.n	a10, .L62
	.loc 1 407 0
	l32r	a2, .LC30
	l32i.n	a2, a2, 0
	bnez.n	a2, .L63
	.loc 1 420 0
	call8	esp_timer_impl_deinit
.LVL99:
	.loc 1 422 0
	l32r	a3, .LC31
	l32i.n	a10, a3, 0
	call8	vTaskDelete
.LVL100:
	.loc 1 423 0
	s32i.n	a2, a3, 0
	.loc 1 424 0
	l32r	a3, .LC32
	l32i.n	a10, a3, 0
	call8	vQueueDelete
.LVL101:
	.loc 1 425 0
	s32i.n	a2, a3, 0
	.loc 1 426 0
	retw.n
.L62:
	.loc 1 403 0
	movi	a2, 0x103
	retw.n
.L63:
	.loc 1 408 0
	movi	a2, 0x103
	.loc 1 427 0
	retw.n
.LFE35:
	.size	esp_timer_deinit, .-esp_timer_deinit
	.section	.text.esp_timer_dump,"ax",@progbits
	.literal_position
	.literal .LC33, s_timers
	.align	4
	.global	esp_timer_dump
	.type	esp_timer_dump, @function
esp_timer_dump:
.LFB37:
	.loc 1 448 0
.LVL102:
	entry	sp, 48
.LCFI15:
.LVL103:
	.loc 1 459 0
	call8	timer_list_lock
.LVL104:
	.loc 1 460 0
	l32r	a3, .LC33
	l32i.n	a8, a3, 0
.LVL105:
	.loc 1 458 0
	movi.n	a3, 0
	.loc 1 460 0
	j	.L65
.LVL106:
.L66:
	.loc 1 461 0 discriminator 3
	addi.n	a3, a3, 1
.LVL107:
	.loc 1 460 0 discriminator 3
	l32i.n	a8, a8, 24
.LVL108:
.L65:
	.loc 1 460 0 is_stmt 0 discriminator 1
	bnez.n	a8, .L66
	.loc 1 468 0 is_stmt 1
	call8	timer_list_unlock
.LVL109:
	.loc 1 475 0
	addx2	a8, a3, a3
	subx8	a3, a8, a3
.LVL110:
	slli	a11, a3, 1
	movi	a3, 0x8a
	add.n	a11, a11, a3
	s32i.n	a11, sp, 0
	.loc 1 476 0
	addi.n	a11, a11, 1
	movi.n	a10, 1
	call8	calloc
.LVL111:
	mov.n	a4, a10
.LVL112:
	.loc 1 477 0
	beqz.n	a10, .L70
	.loc 1 482 0
	call8	timer_list_lock
.LVL113:
	.loc 1 483 0
	s32i.n	a4, sp, 4
	.loc 1 484 0
	l32r	a3, .LC33
	l32i.n	a3, a3, 0
.LVL114:
	j	.L68
.L69:
	.loc 1 485 0 discriminator 3
	mov.n	a12, sp
	addi.n	a11, sp, 4
	mov.n	a10, a3
	call8	print_timer_info
.LVL115:
	.loc 1 484 0 discriminator 3
	l32i.n	a3, a3, 24
.LVL116:
.L68:
	.loc 1 484 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L69
	.loc 1 492 0 is_stmt 1
	call8	timer_list_unlock
.LVL117:
	.loc 1 495 0
	mov.n	a11, a2
	mov.n	a10, a4
	call8	fputs
.LVL118:
	.loc 1 497 0
	mov.n	a10, a4
	call8	free
.LVL119:
	.loc 1 498 0
	movi.n	a2, 0
.LVL120:
	retw.n
.LVL121:
.L70:
	.loc 1 478 0
	movi	a2, 0x101
.LVL122:
	.loc 1 499 0
	retw.n
.LFE37:
	.size	esp_timer_dump, .-esp_timer_dump
	.section	.iram1
	.literal_position
	.literal .LC34, -1, 2147483647
	.literal .LC35, s_timers
	.align	4
	.global	esp_timer_get_next_alarm
	.type	esp_timer_get_next_alarm, @function
esp_timer_get_next_alarm:
.LFB38:
	.loc 1 502 0
	entry	sp, 32
.LCFI16:
.LVL123:
	.loc 1 504 0
	call8	timer_list_lock
.LVL124:
	.loc 1 505 0
	l32r	a8, .LC35
	l32i.n	a8, a8, 0
.LVL125:
	.loc 1 506 0
	beqz.n	a8, .L73
	.loc 1 507 0
	l32i.n	a2, a8, 0
	l32i.n	a3, a8, 4
.LVL126:
	j	.L72
.LVL127:
.L73:
	.loc 1 503 0
	l32r	a2, .LC34
	l32r	a3, .LC34+4
.LVL128:
.L72:
	.loc 1 509 0
	call8	timer_list_unlock
.LVL129:
	.loc 1 511 0
	retw.n
.LFE38:
	.size	esp_timer_get_next_alarm, .-esp_timer_get_next_alarm
	.align	4
	.global	esp_timer_get_time
	.type	esp_timer_get_time, @function
esp_timer_get_time:
.LFB39:
	.loc 1 514 0
	entry	sp, 32
.LCFI17:
	.loc 1 515 0
	call8	esp_timer_impl_get_time
.LVL130:
	.loc 1 516 0
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
.LFE39:
	.size	esp_timer_get_time, .-esp_timer_get_time
	.literal_position
	.literal .LC36, 0, 0
	.align	4
	.global	esp_timer_start_once
	.type	esp_timer_start_once, @function
esp_timer_start_once:
.LFB21:
	.loc 1 124 0
.LVL131:
	entry	sp, 32
.LCFI18:
	.loc 1 125 0
	call8	is_initialized
.LVL132:
	beqz.n	a10, .L78
	.loc 1 125 0 is_stmt 0 discriminator 1
	mov.n	a10, a2
	call8	timer_armed
.LVL133:
	bnez.n	a10, .L79
	.loc 1 128 0 is_stmt 1
	call8	esp_timer_get_time
.LVL134:
	add.n	a4, a10, a4
.LVL135:
	movi.n	a8, 1
	bltu	a4, a10, .L77
	movi.n	a8, 0
.L77:
	add.n	a5, a11, a5
	add.n	a8, a8, a5
	s32i.n	a4, a2, 0
	s32i.n	a8, a2, 4
	.loc 1 129 0
	l32r	a4, .LC36
	l32r	a5, .LC36+4
	s32i.n	a4, a2, 8
	s32i.n	a5, a2, 12
	.loc 1 133 0
	mov.n	a10, a2
	call8	timer_insert
.LVL136:
	mov.n	a2, a10
.LVL137:
	retw.n
.LVL138:
.L78:
	.loc 1 126 0
	movi	a2, 0x103
.LVL139:
	retw.n
.LVL140:
.L79:
	movi	a2, 0x103
.LVL141:
	.loc 1 134 0
	retw.n
.LFE21:
	.size	esp_timer_start_once, .-esp_timer_start_once
	.align	4
	.global	esp_timer_start_periodic
	.type	esp_timer_start_periodic, @function
esp_timer_start_periodic:
.LFB22:
	.loc 1 137 0
.LVL142:
	entry	sp, 32
.LCFI19:
	.loc 1 138 0
	call8	is_initialized
.LVL143:
	beqz.n	a10, .L85
	.loc 1 138 0 is_stmt 0 discriminator 1
	mov.n	a10, a2
	call8	timer_armed
.LVL144:
	bnez.n	a10, .L86
	.loc 1 141 0 is_stmt 1
	call8	esp_timer_impl_get_min_period_us
.LVL145:
	bltu	a11, a5, .L82
	bne	a5, a11, .L87
	bltu	a10, a4, .L82
.L87:
	.loc 1 141 0 is_stmt 0 discriminator 1
	call8	esp_timer_impl_get_min_period_us
.LVL146:
	mov.n	a4, a10
.LVL147:
	mov.n	a5, a11
.L82:
.LVL148:
	.loc 1 142 0 is_stmt 1 discriminator 4
	call8	esp_timer_get_time
.LVL149:
	add.n	a9, a10, a4
	movi.n	a8, 1
	bltu	a9, a10, .L84
	movi.n	a8, 0
.L84:
	add.n	a11, a11, a5
	add.n	a8, a8, a11
	s32i.n	a9, a2, 0
	s32i.n	a8, a2, 4
	.loc 1 143 0 discriminator 4
	s32i.n	a4, a2, 8
	s32i.n	a5, a2, 12
	.loc 1 147 0 discriminator 4
	mov.n	a10, a2
	call8	timer_insert
.LVL150:
	mov.n	a2, a10
.LVL151:
	retw.n
.LVL152:
.L85:
	.loc 1 139 0
	movi	a2, 0x103
.LVL153:
	retw.n
.LVL154:
.L86:
	movi	a2, 0x103
.LVL155:
	.loc 1 148 0
	retw.n
.LFE22:
	.size	esp_timer_start_periodic, .-esp_timer_start_periodic
	.section	.rodata.__func__$5467,"a",@progbits
	.align	4
	.type	__func__$5467, @object
	.size	__func__$5467, 11
__func__$5467:
	.string	"timer_task"
	.section	.rodata.__func__$5443,"a",@progbits
	.align	4
	.type	__func__$5443, @object
	.size	__func__$5443, 13
__func__$5443:
	.string	"timer_insert"
	.section	.data.s_timer_lock,"aw",@progbits
	.align	4
	.type	s_timer_lock, @object
	.size	s_timer_lock, 8
s_timer_lock:
	.word	-1287651329
	.word	0
	.section	.bss.s_timer_delete_mutex,"aw",@nobits
	.align	4
	.type	s_timer_delete_mutex, @object
	.size	s_timer_delete_mutex, 4
s_timer_delete_mutex:
	.zero	4
	.section	.bss.s_timer_semaphore,"aw",@nobits
	.align	4
	.type	s_timer_semaphore, @object
	.size	s_timer_semaphore, 4
s_timer_semaphore:
	.zero	4
	.section	.bss.s_timer_task,"aw",@nobits
	.align	4
	.type	s_timer_task, @object
	.size	s_timer_task, 4
s_timer_task:
	.zero	4
	.section	.bss.s_timers,"aw",@nobits
	.align	4
	.type	s_timers, @object
	.size	s_timers, 4
s_timers:
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
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI1-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI2-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI3-.LFB29
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
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
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI6-.LFB32
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI9-.LFB36
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI10-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI11-.LFB23
	.byte	0xe
	.uleb128 0x20
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI13-.LFB34
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI14-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI15-.LFB37
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI16-.LFB38
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI18-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI19-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/lock.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/_types.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/reent.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdio.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_timer.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/task.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/queue.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.file 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/esp_timer_impl.h"
	.file 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x141f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF222
	.byte	0xc
	.4byte	.LASF223
	.4byte	.LASF224
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0xd8
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x3
	.byte	0x12
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x19
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0x1a
	.4byte	0x3e
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x1d
	.4byte	0x8d
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0xb
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0xc
	.4byte	0x9f
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x5
	.byte	0x10
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x27
	.4byte	0xc0
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x2
	.2byte	0x165
	.4byte	0x3e
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.byte	0x4a
	.4byte	0xfd
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x4c
	.4byte	0xd2
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0x4d
	.4byte	0xfd
	.byte	0
	.uleb128 0x8
	.4byte	0x5e
	.4byte	0x10d
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.byte	0x47
	.4byte	0x135
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x5
	.byte	0x49
	.4byte	0x2c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0x4e
	.4byte	0xde
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0x4f
	.4byte	0x114
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x5
	.byte	0x53
	.4byte	0xaa
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x6
	.byte	0x16
	.4byte	0x158
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF27
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x18
	.byte	0x6
	.byte	0x2d
	.4byte	0x1b2
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x2f
	.4byte	0x1b2
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x6
	.byte	0x30
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x30
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0x30
	.4byte	0x2c
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x30
	.4byte	0x2c
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x6
	.byte	0x31
	.4byte	0x1b8
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x15f
	.uleb128 0x8
	.4byte	0x14d
	.4byte	0x1c8
	.uleb128 0x9
	.4byte	0x10d
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x24
	.byte	0x6
	.byte	0x35
	.4byte	0x241
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x37
	.4byte	0x2c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x38
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x39
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3a
	.4byte	0x2c
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0x3b
	.4byte	0x2c
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x3c
	.4byte	0x2c
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0x3d
	.4byte	0x2c
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x6
	.byte	0x3e
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.byte	0x3f
	.4byte	0x2c
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF43
	.2byte	0x108
	.byte	0x6
	.byte	0x48
	.4byte	0x281
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x6
	.byte	0x49
	.4byte	0x281
	.byte	0
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x6
	.byte	0x4a
	.4byte	0x281
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x6
	.byte	0x4c
	.4byte	0x14d
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x6
	.byte	0x4f
	.4byte	0x14d
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x14b
	.4byte	0x291
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x8c
	.byte	0x6
	.byte	0x53
	.4byte	0x2ce
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x54
	.4byte	0x2ce
	.byte	0
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6
	.byte	0x55
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x6
	.byte	0x56
	.4byte	0x2d4
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.byte	0x57
	.4byte	0x2eb
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x291
	.uleb128 0x8
	.4byte	0x2e4
	.4byte	0x2e4
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2ea
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x241
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x8
	.byte	0x6
	.byte	0x73
	.4byte	0x316
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x6
	.byte	0x74
	.4byte	0x316
	.byte	0
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x6
	.byte	0x75
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5e
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0xf0
	.byte	0x6
	.2byte	0x172
	.4byte	0x462
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x176
	.4byte	0x2c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x17b
	.4byte	0x697
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x17b
	.4byte	0x697
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x17b
	.4byte	0x697
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x17d
	.4byte	0x2c
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x17f
	.4byte	0x5b0
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x181
	.4byte	0x2c
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x183
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x184
	.4byte	0x5e1
	.byte	0x20
	.uleb128 0x15
	.string	"_mp"
	.byte	0x6
	.2byte	0x186
	.4byte	0x7e4
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x188
	.4byte	0x7f5
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x18a
	.4byte	0x2c
	.byte	0x2c
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x18d
	.4byte	0x2c
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x18e
	.4byte	0x5b0
	.byte	0x34
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x190
	.4byte	0x7fb
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x191
	.4byte	0x801
	.byte	0x3c
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x192
	.4byte	0x5b0
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x195
	.4byte	0x812
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x199
	.4byte	0x2ce
	.byte	0x48
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x19a
	.4byte	0x291
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x19d
	.4byte	0x65c
	.byte	0xd8
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x19e
	.4byte	0x697
	.byte	0xe4
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x19f
	.4byte	0x81e
	.byte	0xe8
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x1a0
	.4byte	0x5b0
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x31c
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x68
	.byte	0x6
	.byte	0xb3
	.4byte	0x592
	.uleb128 0xe
	.string	"_p"
	.byte	0x6
	.byte	0xb4
	.4byte	0x316
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x6
	.byte	0xb5
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x6
	.byte	0xb6
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x6
	.byte	0xb7
	.4byte	0x65
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x6
	.byte	0xb8
	.4byte	0x65
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x6
	.byte	0xb9
	.4byte	0x2f1
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x6
	.byte	0xba
	.4byte	0x2c
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x6
	.byte	0xbd
	.4byte	0x462
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x6
	.byte	0xc1
	.4byte	0x14b
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x6
	.byte	0xc3
	.4byte	0x5bd
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x6
	.byte	0xc5
	.4byte	0x5ec
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x6
	.byte	0xc8
	.4byte	0x610
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x6
	.byte	0xc9
	.4byte	0x62a
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x6
	.byte	0xcc
	.4byte	0x2f1
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x6
	.byte	0xcd
	.4byte	0x316
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x6
	.byte	0xce
	.4byte	0x2c
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x6
	.byte	0xd1
	.4byte	0x630
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x6
	.byte	0xd2
	.4byte	0x640
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x6
	.byte	0xd5
	.4byte	0x2f1
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x6
	.byte	0xd8
	.4byte	0x2c
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x6
	.byte	0xd9
	.4byte	0xb5
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x6
	.byte	0xe0
	.4byte	0x140
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0x6
	.byte	0xe2
	.4byte	0x135
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0x6
	.byte	0xe3
	.4byte	0x2c
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.4byte	0x2c
	.4byte	0x5b0
	.uleb128 0x17
	.4byte	0x462
	.uleb128 0x17
	.4byte	0x14b
	.uleb128 0x17
	.4byte	0x5b0
	.uleb128 0x17
	.4byte	0x2c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5b6
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF95
	.uleb128 0xf
	.byte	0x4
	.4byte	0x592
	.uleb128 0x16
	.4byte	0x2c
	.4byte	0x5e1
	.uleb128 0x17
	.4byte	0x462
	.uleb128 0x17
	.4byte	0x14b
	.uleb128 0x17
	.4byte	0x5e1
	.uleb128 0x17
	.4byte	0x2c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5e7
	.uleb128 0x18
	.4byte	0x5b6
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5c3
	.uleb128 0x16
	.4byte	0xc7
	.4byte	0x610
	.uleb128 0x17
	.4byte	0x462
	.uleb128 0x17
	.4byte	0x14b
	.uleb128 0x17
	.4byte	0xc7
	.uleb128 0x17
	.4byte	0x2c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5f2
	.uleb128 0x16
	.4byte	0x2c
	.4byte	0x62a
	.uleb128 0x17
	.4byte	0x462
	.uleb128 0x17
	.4byte	0x14b
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x616
	.uleb128 0x8
	.4byte	0x5e
	.4byte	0x640
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x5e
	.4byte	0x650
	.uleb128 0x9
	.4byte	0x10d
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x11d
	.4byte	0x468
	.uleb128 0x13
	.4byte	.LASF97
	.byte	0xc
	.byte	0x6
	.2byte	0x121
	.4byte	0x691
	.uleb128 0x14
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x123
	.4byte	0x691
	.byte	0
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x124
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x125
	.4byte	0x697
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x65c
	.uleb128 0xf
	.byte	0x4
	.4byte	0x650
	.uleb128 0x13
	.4byte	.LASF100
	.byte	0x18
	.byte	0x6
	.2byte	0x13d
	.4byte	0x6df
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x13e
	.4byte	0x6df
	.byte	0
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x13f
	.4byte	0x6df
	.byte	0x6
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x140
	.4byte	0x45
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x143
	.4byte	0x25
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x45
	.4byte	0x6ef
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x10
	.byte	0x6
	.2byte	0x156
	.4byte	0x731
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x159
	.4byte	0x1b2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x15a
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x15b
	.4byte	0x1b2
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x15c
	.4byte	0x731
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1b2
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0x50
	.byte	0x6
	.2byte	0x160
	.4byte	0x7d4
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x163
	.4byte	0x5b0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x164
	.4byte	0x135
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x165
	.4byte	0x135
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x166
	.4byte	0x135
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x167
	.4byte	0x7d4
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x168
	.4byte	0x2c
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x169
	.4byte	0x135
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x16a
	.4byte	0x135
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x16b
	.4byte	0x135
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x16c
	.4byte	0x135
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x16d
	.4byte	0x135
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	0x5b6
	.4byte	0x7e4
	.uleb128 0x9
	.4byte	0x10d
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6ef
	.uleb128 0x19
	.4byte	0x7f5
	.uleb128 0x17
	.4byte	0x462
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7ea
	.uleb128 0xf
	.byte	0x4
	.4byte	0x69d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1c8
	.uleb128 0x19
	.4byte	0x812
	.uleb128 0x17
	.4byte	0x2c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x818
	.uleb128 0xf
	.byte	0x4
	.4byte	0x807
	.uleb128 0xf
	.byte	0x4
	.4byte	0x737
	.uleb128 0x4
	.4byte	.LASF122
	.byte	0x7
	.byte	0x15
	.4byte	0x53
	.uleb128 0x4
	.4byte	.LASF123
	.byte	0x7
	.byte	0x2c
	.4byte	0x6c
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0x7
	.byte	0x2d
	.4byte	0x77
	.uleb128 0x4
	.4byte	.LASF125
	.byte	0x7
	.byte	0x38
	.4byte	0x82
	.uleb128 0x4
	.4byte	.LASF126
	.byte	0x7
	.byte	0x39
	.4byte	0x94
	.uleb128 0x4
	.4byte	.LASF127
	.byte	0x8
	.byte	0x34
	.4byte	0x650
	.uleb128 0x4
	.4byte	.LASF128
	.byte	0x9
	.byte	0x18
	.4byte	0x82f
	.uleb128 0x4
	.4byte	.LASF129
	.byte	0xa
	.byte	0x35
	.4byte	0x87c
	.uleb128 0xf
	.byte	0x4
	.4byte	0x882
	.uleb128 0xd
	.4byte	.LASF130
	.byte	0x20
	.byte	0x1
	.byte	0x2b
	.4byte	0x8cb
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x1
	.byte	0x2c
	.4byte	0x850
	.byte	0
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x1
	.byte	0x2d
	.4byte	0x850
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x1
	.byte	0x2e
	.4byte	0x8cb
	.byte	0x10
	.uleb128 0xe
	.string	"arg"
	.byte	0x1
	.byte	0x2f
	.4byte	0x14b
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x1
	.byte	0x36
	.4byte	0x9e4
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.4byte	.LASF135
	.byte	0xa
	.byte	0x3b
	.4byte	0x8d6
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8dc
	.uleb128 0x19
	.4byte	0x8e7
	.uleb128 0x17
	.4byte	0x14b
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x3e
	.byte	0xa
	.byte	0x41
	.4byte	0x8fa
	.uleb128 0x1b
	.4byte	.LASF140
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF136
	.byte	0xa
	.byte	0x4a
	.4byte	0x8e7
	.uleb128 0xa
	.byte	0x10
	.byte	0xa
	.byte	0x4f
	.4byte	0x93e
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0xa
	.byte	0x50
	.4byte	0x8cb
	.byte	0
	.uleb128 0xe
	.string	"arg"
	.byte	0xa
	.byte	0x51
	.4byte	0x14b
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0xa
	.byte	0x52
	.4byte	0x8fa
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0xa
	.byte	0x53
	.4byte	0x5e1
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF139
	.byte	0xa
	.byte	0x54
	.4byte	0x905
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x3e
	.byte	0xb
	.byte	0x1f
	.4byte	0x97a
	.uleb128 0x1b
	.4byte	.LASF141
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF142
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF143
	.byte	0x2
	.uleb128 0x1b
	.4byte	.LASF144
	.byte	0x3
	.uleb128 0x1b
	.4byte	.LASF145
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF146
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF147
	.uleb128 0x4
	.4byte	.LASF148
	.byte	0xc
	.byte	0x6f
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF149
	.byte	0xc
	.byte	0x76
	.4byte	0x83a
	.uleb128 0xa
	.byte	0x8
	.byte	0xc
	.byte	0x82
	.4byte	0x9b8
	.uleb128 0xb
	.4byte	.LASF150
	.byte	0xc
	.byte	0x8a
	.4byte	0x83a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0xc
	.byte	0x8f
	.4byte	0x83a
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF152
	.byte	0xc
	.byte	0x94
	.4byte	0x997
	.uleb128 0x4
	.4byte	.LASF153
	.byte	0xd
	.byte	0x6e
	.4byte	0x14b
	.uleb128 0x4
	.4byte	.LASF154
	.byte	0xe
	.byte	0x58
	.4byte	0x14b
	.uleb128 0x4
	.4byte	.LASF155
	.byte	0xf
	.byte	0x4f
	.4byte	0x9ce
	.uleb128 0xa
	.byte	0x8
	.byte	0x1
	.byte	0x36
	.4byte	0xa05
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0x1
	.byte	0x36
	.4byte	0x87c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0x1
	.byte	0x36
	.4byte	0xa05
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x87c
	.uleb128 0xd
	.4byte	.LASF158
	.byte	0x4
	.byte	0x1
	.byte	0x48
	.4byte	0xa24
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0x1
	.byte	0x48
	.4byte	0x87c
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF162
	.byte	0x1
	.byte	0xf9
	.4byte	0x97a
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa4d
	.uleb128 0x1d
	.4byte	.LASF164
	.byte	0x1
	.byte	0xf9
	.4byte	0x871
	.4byte	.LLST0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x14e
	.4byte	0x97a
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.4byte	.LASF160
	.byte	0x1
	.byte	0xfe
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa8c
	.uleb128 0x20
	.4byte	.LVL2
	.4byte	0x1317
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_lock
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x103
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab6
	.uleb128 0x20
	.4byte	.LVL3
	.4byte	0x1322
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_lock
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF163
	.byte	0x1
	.byte	0xb2
	.4byte	0x866
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb55
	.uleb128 0x1d
	.4byte	.LASF164
	.byte	0x1
	.byte	0xb2
	.4byte	0x871
	.4byte	.LLST1
	.uleb128 0x23
	.string	"it"
	.byte	0x1
	.byte	0xb8
	.4byte	0x871
	.4byte	.LLST2
	.uleb128 0x24
	.4byte	.LASF165
	.byte	0x1
	.byte	0xb8
	.4byte	0x871
	.4byte	.LLST3
	.uleb128 0x25
	.4byte	.LASF172
	.4byte	0xb65
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5443
	.uleb128 0x26
	.4byte	.LVL5
	.4byte	0xa63
	.uleb128 0x27
	.4byte	.LVL12
	.4byte	0x132d
	.4byte	0xb42
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5443
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x26
	.4byte	.LVL16
	.4byte	0x1338
	.uleb128 0x26
	.4byte	.LVL17
	.4byte	0xa8c
	.byte	0
	.uleb128 0x8
	.4byte	0x5b6
	.4byte	0xb65
	.uleb128 0x9
	.4byte	0x10d
	.byte	0xc
	.byte	0
	.uleb128 0x18
	.4byte	0xb55
	.uleb128 0x1c
	.4byte	.LASF166
	.byte	0x1
	.byte	0xcf
	.4byte	0x866
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba5
	.uleb128 0x1d
	.4byte	.LASF164
	.byte	0x1
	.byte	0xcf
	.4byte	0x871
	.4byte	.LLST4
	.uleb128 0x26
	.4byte	.LVL20
	.4byte	0xa63
	.uleb128 0x26
	.4byte	.LVL21
	.4byte	0xa8c
	.byte	0
	.uleb128 0x28
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x142
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf6
	.uleb128 0x29
	.string	"arg"
	.byte	0x1
	.2byte	0x142
	.4byte	0x14b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2a
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x144
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.4byte	.LVL24
	.4byte	0x1343
	.4byte	0xbec
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x26
	.4byte	.LVL25
	.4byte	0x134f
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x108
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcbc
	.uleb128 0x2c
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x108
	.4byte	0x8fa
	.4byte	.LLST5
	.uleb128 0x2d
	.string	"now"
	.byte	0x1
	.2byte	0x10f
	.4byte	0x850
	.4byte	.LLST6
	.uleb128 0x2d
	.string	"it"
	.byte	0x1
	.2byte	0x110
	.4byte	0x871
	.4byte	.LLST7
	.uleb128 0x2e
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x131
	.4byte	0x871
	.4byte	.LLST8
	.uleb128 0x27
	.4byte	.LVL28
	.4byte	0x135b
	.4byte	0xc5f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x26
	.4byte	.LVL29
	.4byte	0xa63
	.uleb128 0x26
	.4byte	.LVL30
	.4byte	0x1367
	.uleb128 0x27
	.4byte	.LVL33
	.4byte	0xab6
	.4byte	0xc85
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL34
	.4byte	0xa8c
	.uleb128 0x26
	.4byte	.LVL36
	.4byte	0xa63
	.uleb128 0x26
	.4byte	.LVL37
	.4byte	0x1367
	.uleb128 0x26
	.4byte	.LVL43
	.4byte	0x1338
	.uleb128 0x26
	.4byte	.LVL44
	.4byte	0xa8c
	.uleb128 0x26
	.4byte	.LVL46
	.4byte	0x1372
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x139
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd67
	.uleb128 0x29
	.string	"arg"
	.byte	0x1
	.2byte	0x139
	.4byte	0x14b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.4byte	.LASF172
	.4byte	0xd77
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5467
	.uleb128 0x30
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x2d
	.string	"res"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x2c
	.4byte	.LLST9
	.uleb128 0x27
	.4byte	.LVL48
	.4byte	0x137e
	.4byte	0xd26
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL50
	.4byte	0x132d
	.4byte	0xd56
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x13d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5467
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x20
	.4byte	.LVL52
	.4byte	0xbf6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x5b6
	.4byte	0xd77
	.uleb128 0x9
	.4byte	0x10d
	.byte	0xa
	.byte	0
	.uleb128 0x18
	.4byte	0xd67
	.uleb128 0x28
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x1ad
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xde5
	.uleb128 0x29
	.string	"t"
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x871
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.string	"dst"
	.byte	0x1
	.2byte	0x1ad
	.4byte	0xde5
	.4byte	.LLST10
	.uleb128 0x32
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x1ad
	.4byte	0xdeb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"cb"
	.byte	0x1
	.2byte	0x1af
	.4byte	0x33
	.4byte	.LLST11
	.uleb128 0x20
	.4byte	.LVL54
	.4byte	0x138a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5b0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x33
	.uleb128 0x33
	.4byte	.LASF178
	.byte	0x1
	.byte	0x64
	.4byte	0x866
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe54
	.uleb128 0x1d
	.4byte	.LASF175
	.byte	0x1
	.byte	0x64
	.4byte	0xe54
	.4byte	.LLST12
	.uleb128 0x34
	.4byte	.LASF176
	.byte	0x1
	.byte	0x65
	.4byte	0xe5f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LASF177
	.byte	0x1
	.byte	0x6d
	.4byte	0x871
	.4byte	.LLST13
	.uleb128 0x26
	.4byte	.LVL58
	.4byte	0xa4d
	.uleb128 0x20
	.4byte	.LVL59
	.4byte	0x1396
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xe5a
	.uleb128 0x18
	.4byte	0x93e
	.uleb128 0xf
	.byte	0x4
	.4byte	0x871
	.uleb128 0x33
	.4byte	.LASF179
	.byte	0x1
	.byte	0x96
	.4byte	0x866
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xebb
	.uleb128 0x1d
	.4byte	.LASF164
	.byte	0x1
	.byte	0x96
	.4byte	0x871
	.4byte	.LLST14
	.uleb128 0x26
	.4byte	.LVL68
	.4byte	0xa4d
	.uleb128 0x27
	.4byte	.LVL69
	.4byte	0xa24
	.4byte	0xeaa
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL70
	.4byte	0xb6a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF180
	.byte	0x1
	.byte	0x9e
	.4byte	0x866
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf29
	.uleb128 0x1d
	.4byte	.LASF164
	.byte	0x1
	.byte	0x9e
	.4byte	0x871
	.4byte	.LLST15
	.uleb128 0x27
	.4byte	.LVL77
	.4byte	0xa24
	.4byte	0xef7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL78
	.4byte	0x135b
	.4byte	0xf0b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x27
	.4byte	.LVL79
	.4byte	0x13a1
	.4byte	0xf1f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL80
	.4byte	0x1372
	.byte	0
	.uleb128 0x35
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x154
	.4byte	0x866
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1016
	.uleb128 0x2d
	.string	"err"
	.byte	0x1
	.2byte	0x156
	.4byte	0x866
	.4byte	.LLST16
	.uleb128 0x36
	.string	"out"
	.byte	0x1
	.2byte	0x180
	.4byte	.L54
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.2byte	0x172
	.4byte	0x2c
	.4byte	.LLST17
	.uleb128 0x26
	.4byte	.LVL86
	.4byte	0xa4d
	.uleb128 0x27
	.4byte	.LVL87
	.4byte	0x13ac
	.4byte	0xf90
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL88
	.4byte	0x13b8
	.4byte	0xfa3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x27
	.4byte	.LVL89
	.4byte	0x13c4
	.4byte	0xfe3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	timer_task
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x46
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_task
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL91
	.4byte	0x13d0
	.4byte	0xffa
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	timer_alarm_handler
	.byte	0
	.uleb128 0x26
	.4byte	.LVL93
	.4byte	0x13db
	.uleb128 0x26
	.4byte	.LVL94
	.4byte	0x13e7
	.uleb128 0x26
	.4byte	.LVL95
	.4byte	0x13e7
	.byte	0
	.uleb128 0x35
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x190
	.4byte	0x866
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1055
	.uleb128 0x26
	.4byte	.LVL98
	.4byte	0xa4d
	.uleb128 0x26
	.4byte	.LVL99
	.4byte	0x13f3
	.uleb128 0x26
	.4byte	.LVL100
	.4byte	0x13db
	.uleb128 0x26
	.4byte	.LVL101
	.4byte	0x13e7
	.byte	0
	.uleb128 0x35
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x866
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x114c
	.uleb128 0x2c
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x114c
	.4byte	.LLST18
	.uleb128 0x2d
	.string	"it"
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x871
	.4byte	.LLST19
	.uleb128 0x2e
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x33
	.4byte	.LLST20
	.uleb128 0x2a
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x1db
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x5b0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x37
	.string	"pos"
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x5b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.4byte	.LVL104
	.4byte	0xa63
	.uleb128 0x26
	.4byte	.LVL109
	.4byte	0xa8c
	.uleb128 0x27
	.4byte	.LVL111
	.4byte	0x1396
	.4byte	0x10ef
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x26
	.4byte	.LVL113
	.4byte	0xa63
	.uleb128 0x27
	.4byte	.LVL115
	.4byte	0xd7c
	.4byte	0x1118
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x26
	.4byte	.LVL117
	.4byte	0xa8c
	.uleb128 0x27
	.4byte	.LVL118
	.4byte	0x13fe
	.4byte	0x113b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL119
	.4byte	0x13a1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x85b
	.uleb128 0x38
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x1f5
	.4byte	0x845
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x119e
	.uleb128 0x2e
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x1f7
	.4byte	0x845
	.4byte	.LLST21
	.uleb128 0x2d
	.string	"it"
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x871
	.4byte	.LLST22
	.uleb128 0x26
	.4byte	.LVL124
	.4byte	0xa63
	.uleb128 0x26
	.4byte	.LVL129
	.4byte	0xa8c
	.byte	0
	.uleb128 0x38
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x201
	.4byte	0x845
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11c2
	.uleb128 0x26
	.4byte	.LVL130
	.4byte	0x1367
	.byte	0
	.uleb128 0x33
	.4byte	.LASF191
	.byte	0x1
	.byte	0x7b
	.4byte	0x866
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1230
	.uleb128 0x1d
	.4byte	.LASF164
	.byte	0x1
	.byte	0x7b
	.4byte	0x871
	.4byte	.LLST23
	.uleb128 0x1d
	.4byte	.LASF192
	.byte	0x1
	.byte	0x7b
	.4byte	0x850
	.4byte	.LLST24
	.uleb128 0x26
	.4byte	.LVL132
	.4byte	0xa4d
	.uleb128 0x27
	.4byte	.LVL133
	.4byte	0xa24
	.4byte	0x1216
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL134
	.4byte	0x119e
	.uleb128 0x20
	.4byte	.LVL136
	.4byte	0xab6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF193
	.byte	0x1
	.byte	0x88
	.4byte	0x866
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12b0
	.uleb128 0x1d
	.4byte	.LASF164
	.byte	0x1
	.byte	0x88
	.4byte	0x871
	.4byte	.LLST25
	.uleb128 0x1d
	.4byte	.LASF194
	.byte	0x1
	.byte	0x88
	.4byte	0x850
	.4byte	.LLST26
	.uleb128 0x26
	.4byte	.LVL143
	.4byte	0xa4d
	.uleb128 0x27
	.4byte	.LVL144
	.4byte	0xa24
	.4byte	0x1284
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL145
	.4byte	0x1409
	.uleb128 0x26
	.4byte	.LVL146
	.4byte	0x1409
	.uleb128 0x26
	.4byte	.LVL149
	.4byte	0x119e
	.uleb128 0x20
	.4byte	.LVL150
	.4byte	0xab6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.string	"TAG"
	.byte	0x1
	.byte	0x45
	.4byte	0x5e1
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5140
	.sleb128 0
	.uleb128 0x3a
	.4byte	.LASF195
	.byte	0x1
	.byte	0x48
	.4byte	0xa0b
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timers
	.uleb128 0x3a
	.4byte	.LASF196
	.byte	0x1
	.byte	0x53
	.4byte	0x9c3
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_task
	.uleb128 0x3a
	.4byte	.LASF197
	.byte	0x1
	.byte	0x55
	.4byte	0x9d9
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_semaphore
	.uleb128 0x3a
	.4byte	.LASF198
	.byte	0x1
	.byte	0x57
	.4byte	0x9d9
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_delete_mutex
	.uleb128 0x3a
	.4byte	.LASF199
	.byte	0x1
	.byte	0x60
	.4byte	0x9b8
	.uleb128 0x5
	.byte	0x3
	.4byte	s_timer_lock
	.uleb128 0x3b
	.4byte	.LASF200
	.4byte	.LASF200
	.byte	0xc
	.byte	0xda
	.uleb128 0x3b
	.4byte	.LASF201
	.4byte	.LASF201
	.byte	0xc
	.byte	0xd9
	.uleb128 0x3b
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0x10
	.byte	0x29
	.uleb128 0x3b
	.4byte	.LASF203
	.4byte	.LASF203
	.byte	0x11
	.byte	0x34
	.uleb128 0x3c
	.4byte	.LASF204
	.4byte	.LASF204
	.byte	0xe
	.2byte	0x4f4
	.uleb128 0x3c
	.4byte	.LASF205
	.4byte	.LASF205
	.byte	0xc
	.2byte	0x13d
	.uleb128 0x3c
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0xe
	.2byte	0x582
	.uleb128 0x3b
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0x11
	.byte	0x4c
	.uleb128 0x3c
	.4byte	.LASF208
	.4byte	.LASF208
	.byte	0xe
	.2byte	0x583
	.uleb128 0x3c
	.4byte	.LASF209
	.4byte	.LASF209
	.byte	0xe
	.2byte	0x38a
	.uleb128 0x3c
	.4byte	.LASF210
	.4byte	.LASF210
	.byte	0x8
	.2byte	0x10c
	.uleb128 0x3b
	.4byte	.LASF211
	.4byte	.LASF211
	.byte	0x12
	.byte	0x57
	.uleb128 0x3b
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0x12
	.byte	0x5a
	.uleb128 0x3c
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0xe
	.2byte	0x57a
	.uleb128 0x3c
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0xe
	.2byte	0x578
	.uleb128 0x3c
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0xd
	.2byte	0x151
	.uleb128 0x3b
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0x11
	.byte	0x24
	.uleb128 0x3c
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0xd
	.2byte	0x2fb
	.uleb128 0x3c
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0xe
	.2byte	0x3ac
	.uleb128 0x3b
	.4byte	.LASF219
	.4byte	.LASF219
	.byte	0x11
	.byte	0x29
	.uleb128 0x3b
	.4byte	.LASF220
	.4byte	.LASF220
	.byte	0x8
	.byte	0xc1
	.uleb128 0x3b
	.4byte	.LASF221
	.4byte	.LASF221
	.byte	0x11
	.byte	0x56
	.uleb128 0x3d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xa
	.byte	0x65
	.byte	0x73
	.byte	0x70
	.byte	0x5f
	.byte	0x74
	.byte	0x69
	.byte	0x6d
	.byte	0x65
	.byte	0x72
	.byte	0
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x87
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x36
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
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
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x78
	.sleb128 24
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x7b
	.sleb128 -24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL31
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL43-1
	.2byte	0x5
	.byte	0x3
	.4byte	s_timers
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL41
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL55
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
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
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL63
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
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL67
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL76
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL82
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
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL102
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
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL105
	.4byte	.LVL109-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL114
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL103
	.4byte	.LVL106
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL123
	.4byte	.LVL126
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x7fffffffffffffff
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x7fffffffffffffff
	.4byte	.LVL128
	.4byte	.LFE38
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL125
	.4byte	.LVL129-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL131
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL141
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL131
	.4byte	.LVL135
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL135
	.4byte	.LVL138
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LFE21
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL142
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL151
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
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL142
	.4byte	.LVL147
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL152
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL152
	.4byte	.LFE22
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF224:
	.string	"/home/raphael/rtone/lcd/build/esp32"
.LASF151:
	.string	"count"
.LASF114:
	.string	"_mbtowc_state"
.LASF44:
	.string	"_fnargs"
.LASF4:
	.string	"size_t"
.LASF100:
	.string	"_rand48"
.LASF213:
	.string	"xQueueCreateCountingSemaphore"
.LASF61:
	.string	"_emergency"
.LASF126:
	.string	"uint64_t"
.LASF140:
	.string	"ESP_TIMER_TASK"
.LASF176:
	.string	"out_handle"
.LASF173:
	.string	"print_timer_info"
.LASF5:
	.string	"__uint8_t"
.LASF73:
	.string	"_atexit0"
.LASF184:
	.string	"stream"
.LASF120:
	.string	"_wcrtomb_state"
.LASF225:
	.string	"is_initialized"
.LASF121:
	.string	"_wcsrtombs_state"
.LASF0:
	.string	"long long unsigned int"
.LASF174:
	.string	"dst_size"
.LASF10:
	.string	"__int64_t"
.LASF154:
	.string	"QueueHandle_t"
.LASF118:
	.string	"_mbrtowc_state"
.LASF212:
	.string	"free"
.LASF93:
	.string	"_mbstate"
.LASF113:
	.string	"_wctomb_state"
.LASF34:
	.string	"__tm_sec"
.LASF145:
	.string	"ESP_LOG_DEBUG"
.LASF87:
	.string	"_close"
.LASF3:
	.string	"signed char"
.LASF88:
	.string	"_ubuf"
.LASF185:
	.string	"timer_count"
.LASF53:
	.string	"_base"
.LASF219:
	.string	"esp_timer_impl_deinit"
.LASF36:
	.string	"__tm_hour"
.LASF75:
	.string	"__sf"
.LASF43:
	.string	"_on_exit_args"
.LASF200:
	.string	"vTaskEnterCritical"
.LASF83:
	.string	"_cookie"
.LASF74:
	.string	"__sglue"
.LASF189:
	.string	"esp_timer_get_next_alarm"
.LASF215:
	.string	"xTaskCreatePinnedToCore"
.LASF16:
	.string	"long int"
.LASF105:
	.string	"_mprec"
.LASF131:
	.string	"alarm"
.LASF79:
	.string	"_flags"
.LASF127:
	.string	"FILE"
.LASF195:
	.string	"s_timers"
.LASF96:
	.string	"__FILE"
.LASF153:
	.string	"TaskHandle_t"
.LASF107:
	.string	"_result_k"
.LASF13:
	.string	"_lock_t"
.LASF11:
	.string	"long long int"
.LASF135:
	.string	"esp_timer_cb_t"
.LASF148:
	.string	"BaseType_t"
.LASF68:
	.string	"_cvtbuf"
.LASF163:
	.string	"timer_insert"
.LASF152:
	.string	"portMUX_TYPE"
.LASF117:
	.string	"_mbrlen_state"
.LASF2:
	.string	"short unsigned int"
.LASF119:
	.string	"_mbsrtowcs_state"
.LASF50:
	.string	"_fns"
.LASF9:
	.string	"__uint32_t"
.LASF30:
	.string	"_sign"
.LASF59:
	.string	"_stderr"
.LASF32:
	.string	"_Bigint"
.LASF209:
	.string	"xQueueGenericReceive"
.LASF90:
	.string	"_blksize"
.LASF84:
	.string	"_read"
.LASF33:
	.string	"__tm"
.LASF51:
	.string	"_on_exit_args_ptr"
.LASF179:
	.string	"esp_timer_stop"
.LASF206:
	.string	"xQueueTakeMutexRecursive"
.LASF203:
	.string	"esp_timer_impl_set_alarm"
.LASF134:
	.string	"list_entry"
.LASF58:
	.string	"_stdout"
.LASF67:
	.string	"_cvtlen"
.LASF27:
	.string	"long unsigned int"
.LASF80:
	.string	"_file"
.LASF60:
	.string	"_inc"
.LASF197:
	.string	"s_timer_semaphore"
.LASF138:
	.string	"name"
.LASF82:
	.string	"_data"
.LASF98:
	.string	"_niobs"
.LASF190:
	.string	"esp_timer_get_time"
.LASF180:
	.string	"esp_timer_delete"
.LASF104:
	.string	"_rand_next"
.LASF129:
	.string	"esp_timer_handle_t"
.LASF77:
	.string	"_signal_buf"
.LASF71:
	.string	"_asctime_buf"
.LASF56:
	.string	"_errno"
.LASF214:
	.string	"xQueueCreateMutex"
.LASF106:
	.string	"_result"
.LASF19:
	.string	"__wch"
.LASF133:
	.string	"callback"
.LASF188:
	.string	"next_alarm"
.LASF194:
	.string	"period_us"
.LASF92:
	.string	"_lock"
.LASF102:
	.string	"_mult"
.LASF137:
	.string	"dispatch_method"
.LASF144:
	.string	"ESP_LOG_INFO"
.LASF85:
	.string	"_write"
.LASF156:
	.string	"le_next"
.LASF139:
	.string	"esp_timer_create_args_t"
.LASF157:
	.string	"le_prev"
.LASF76:
	.string	"_misc"
.LASF15:
	.string	"_off_t"
.LASF21:
	.string	"sizetype"
.LASF91:
	.string	"_offset"
.LASF186:
	.string	"buf_size"
.LASF218:
	.string	"vQueueDelete"
.LASF183:
	.string	"esp_timer_dump"
.LASF211:
	.string	"calloc"
.LASF187:
	.string	"print_buf"
.LASF192:
	.string	"timeout_us"
.LASF38:
	.string	"__tm_mon"
.LASF48:
	.string	"_atexit"
.LASF70:
	.string	"_localtime_buf"
.LASF62:
	.string	"__sdidinit"
.LASF66:
	.string	"_gamma_signgam"
.LASF136:
	.string	"esp_timer_dispatch_t"
.LASF18:
	.string	"wint_t"
.LASF165:
	.string	"last"
.LASF198:
	.string	"s_timer_delete_mutex"
.LASF12:
	.string	"__uint64_t"
.LASF109:
	.string	"_freelist"
.LASF40:
	.string	"__tm_wday"
.LASF216:
	.string	"esp_timer_impl_init"
.LASF14:
	.string	"_LOCK_RECURSIVE_T"
.LASF158:
	.string	"esp_timer_list"
.LASF159:
	.string	"lh_first"
.LASF37:
	.string	"__tm_mday"
.LASF147:
	.string	"_Bool"
.LASF123:
	.string	"int32_t"
.LASF6:
	.string	"unsigned char"
.LASF125:
	.string	"int64_t"
.LASF99:
	.string	"_iobs"
.LASF20:
	.string	"__wchb"
.LASF222:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF25:
	.string	"_flock_t"
.LASF41:
	.string	"__tm_yday"
.LASF182:
	.string	"esp_timer_deinit"
.LASF52:
	.string	"__sbuf"
.LASF94:
	.string	"_flags2"
.LASF204:
	.string	"xQueueGiveFromISR"
.LASF142:
	.string	"ESP_LOG_ERROR"
.LASF24:
	.string	"_mbstate_t"
.LASF78:
	.string	"__sFILE"
.LASF223:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/esp_timer.c"
.LASF172:
	.string	"__func__"
.LASF208:
	.string	"xQueueGiveMutexRecursive"
.LASF112:
	.string	"_mblen_state"
.LASF49:
	.string	"_ind"
.LASF64:
	.string	"_current_locale"
.LASF45:
	.string	"_dso_handle"
.LASF65:
	.string	"__cleanup"
.LASF196:
	.string	"s_timer_task"
.LASF29:
	.string	"_maxwds"
.LASF55:
	.string	"_reent"
.LASF101:
	.string	"_seed"
.LASF168:
	.string	"timer_alarm_handler"
.LASF22:
	.string	"__count"
.LASF23:
	.string	"__value"
.LASF86:
	.string	"_seek"
.LASF150:
	.string	"owner"
.LASF17:
	.string	"_fpos_t"
.LASF170:
	.string	"first"
.LASF193:
	.string	"esp_timer_start_periodic"
.LASF205:
	.string	"_frxt_setup_switch"
.LASF141:
	.string	"ESP_LOG_NONE"
.LASF155:
	.string	"SemaphoreHandle_t"
.LASF95:
	.string	"char"
.LASF146:
	.string	"ESP_LOG_VERBOSE"
.LASF54:
	.string	"_size"
.LASF1:
	.string	"unsigned int"
.LASF169:
	.string	"timer_process_alarm"
.LASF217:
	.string	"vTaskDelete"
.LASF201:
	.string	"vTaskExitCritical"
.LASF7:
	.string	"short int"
.LASF202:
	.string	"__assert_func"
.LASF8:
	.string	"__int32_t"
.LASF47:
	.string	"_is_cxa"
.LASF162:
	.string	"timer_armed"
.LASF132:
	.string	"period"
.LASF28:
	.string	"_next"
.LASF111:
	.string	"_strtok_last"
.LASF46:
	.string	"_fntypes"
.LASF110:
	.string	"_misc_reent"
.LASF221:
	.string	"esp_timer_impl_get_min_period_us"
.LASF103:
	.string	"_add"
.LASF26:
	.string	"__ULong"
.LASF116:
	.string	"_getdate_err"
.LASF210:
	.string	"snprintf"
.LASF175:
	.string	"args"
.LASF63:
	.string	"_current_category"
.LASF124:
	.string	"uint32_t"
.LASF171:
	.string	"timer_task"
.LASF143:
	.string	"ESP_LOG_WARN"
.LASF161:
	.string	"timer_list_unlock"
.LASF128:
	.string	"esp_err_t"
.LASF181:
	.string	"esp_timer_init"
.LASF31:
	.string	"_wds"
.LASF97:
	.string	"_glue"
.LASF57:
	.string	"_stdin"
.LASF39:
	.string	"__tm_year"
.LASF122:
	.string	"uint8_t"
.LASF115:
	.string	"_l64a_buf"
.LASF72:
	.string	"_sig_func"
.LASF164:
	.string	"timer"
.LASF149:
	.string	"TickType_t"
.LASF167:
	.string	"need_yield"
.LASF220:
	.string	"fputs"
.LASF89:
	.string	"_nbuf"
.LASF178:
	.string	"esp_timer_create"
.LASF42:
	.string	"__tm_isdst"
.LASF166:
	.string	"timer_remove"
.LASF35:
	.string	"__tm_min"
.LASF69:
	.string	"_r48"
.LASF207:
	.string	"esp_timer_impl_get_time"
.LASF199:
	.string	"s_timer_lock"
.LASF108:
	.string	"_p5s"
.LASF160:
	.string	"timer_list_lock"
.LASF81:
	.string	"_lbfsize"
.LASF191:
	.string	"esp_timer_start_once"
.LASF177:
	.string	"result"
.LASF130:
	.string	"esp_timer"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
