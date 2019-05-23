	.file	"cpu_start.c"
	.text
.Ltext0:
	.section	.rodata
	.align	4
.LC0:
	.word	0
	.word	-2147483648
	.word	-1610612736
	.word	-1073741824
	.word	-536870912
	.section	.text.cpu_configure_region_protection,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, 536870912
	.align	4
	.type	cpu_configure_region_protection, @function
cpu_configure_region_protection:
.LFB13:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/cpu.h"
	.loc 1 75 0
	entry	sp, 64
.LCFI0:
	.loc 1 76 0
	movi.n	a12, 0x14
	l32r	a11, .LC1
	mov.n	a10, sp
	call8	memcpy
.LVL0:
.LBB34:
	.loc 1 77 0
	movi.n	a8, 0
	j	.L2
.LVL1:
.L3:
	.loc 1 78 0 discriminator 3
	addx4	a9, a8, sp
	l32i.n	a9, a9, 0
.LVL2:
.LBB35:
.LBB36:
	.loc 1 46 0 discriminator 3
	movi.n	a10, 0xf
#APP
# 46 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
	wdtlb  a10, a9; dsync

# 0 "" 2
.LVL3:
#NO_APP
.LBE36:
.LBE35:
.LBB37:
.LBB38:
	.loc 1 52 0 discriminator 3
#APP
# 52 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
	witlb  a10, a9; isync

# 0 "" 2
#NO_APP
.LBE38:
.LBE37:
	.loc 1 77 0 discriminator 3
	addi.n	a8, a8, 1
.LVL4:
.L2:
	.loc 1 77 0 is_stmt 0 discriminator 1
	bltui	a8, 5, .L3
.LVL5:
.LBE34:
.LBB39:
.LBB40:
	.loc 1 46 0 is_stmt 1
	l32r	a8, .LC2
.LVL6:
	movi.n	a9, 0
#APP
# 46 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
	wdtlb  a9, a8; dsync

# 0 "" 2
.LVL7:
#NO_APP
.LBE40:
.LBE39:
.LBB41:
.LBB42:
	.loc 1 52 0
#APP
# 52 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
	witlb  a9, a8; isync

# 0 "" 2
#NO_APP
	retw.n
.LBE42:
.LBE41:
.LFE13:
	.size	cpu_configure_region_protection, .-cpu_configure_region_protection
	.section	.text.do_global_ctors,"ax",@progbits
	.literal_position
	.literal .LC3, __init_array_end-4
	.literal .LC4, __init_array_start
	.align	4
	.type	do_global_ctors, @function
do_global_ctors:
.LFB48:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/cpu_start.c"
	.loc 2 439 0
	entry	sp, 32
.LCFI1:
.LVL8:
	.loc 2 446 0
	l32r	a2, .LC3
.LVL9:
	j	.L5
.L6:
	.loc 2 447 0 discriminator 3
	l32i.n	a8, a2, 0
	callx8	a8
.LVL10:
	.loc 2 446 0 discriminator 3
	addi	a2, a2, -4
.LVL11:
.L5:
	.loc 2 446 0 is_stmt 0 discriminator 1
	l32r	a8, .LC4
	bgeu	a2, a8, .L6
	.loc 2 449 0 is_stmt 1
	retw.n
.LFE48:
	.size	do_global_ctors, .-do_global_ctors
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC6:
	.string	"esp_task_wdt_init(CONFIG_TASK_WDT_TIMEOUT_S, false)"
	.align	4
.LC9:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/cpu_start.c"
	.align	4
.LC11:
	.string	"esp_task_wdt_add(idle_0)"
	.align	4
.LC13:
	.string	"esp_task_wdt_add(idle_1)"
	.section	.text.main_task,"ax",@progbits
	.literal_position
	.literal .LC5, port_xSchedulerRunning
	.literal .LC7, .LC6
	.literal .LC8, __func__$8583
	.literal .LC10, .LC9
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.align	4
	.type	main_task, @function
main_task:
.LFB49:
	.loc 2 452 0
.LVL12:
	entry	sp, 32
.LCFI2:
.L8:
	.loc 2 455 0 discriminator 1
	l32r	a8, .LC5
	memw
	l32i.n	a8, a8, 4
	beqz.n	a8, .L8
	.loc 2 460 0
	call8	heap_caps_enable_nonos_stack_heaps
.LVL13:
.LBB43:
	.loc 2 475 0
	movi.n	a11, 0
	movi.n	a10, 5
	call8	esp_task_wdt_init
.LVL14:
	.loc 2 475 0
	beqz.n	a10, .L9
	.loc 2 475 0 is_stmt 0 discriminator 1
	l32r	a14, .LC7
	l32r	a13, .LC8
	movi	a12, 0x1db
	l32r	a11, .LC10
	call8	_esp_error_check_failed
.LVL15:
.L9:
.LBE43:
	.loc 2 480 0 is_stmt 1
	movi.n	a10, 0
.LVL16:
	call8	xTaskGetIdleTaskHandleForCPU
.LVL17:
	.loc 2 481 0
	beqz.n	a10, .L10
.LBB44:
	.loc 2 482 0
	call8	esp_task_wdt_add
.LVL18:
	beqz.n	a10, .L10
	.loc 2 482 0 is_stmt 0 discriminator 1
	l32r	a14, .LC12
	l32r	a13, .LC8
	movi	a12, 0x1e2
	l32r	a11, .LC10
	call8	_esp_error_check_failed
.LVL19:
.L10:
.LBE44:
	.loc 2 487 0 is_stmt 1
	movi.n	a10, 1
	call8	xTaskGetIdleTaskHandleForCPU
.LVL20:
	.loc 2 488 0
	beqz.n	a10, .L11
.LBB45:
	.loc 2 489 0
	call8	esp_task_wdt_add
.LVL21:
	beqz.n	a10, .L11
	.loc 2 489 0 is_stmt 0 discriminator 1
	l32r	a14, .LC14
	l32r	a13, .LC8
	movi	a12, 0x1e9
	l32r	a11, .LC10
	call8	_esp_error_check_failed
.LVL22:
.L11:
.LBE45:
	.loc 2 495 0 is_stmt 1
	call8	rtc_wdt_disable
.LVL23:
	.loc 2 497 0
	call8	app_main
.LVL24:
	.loc 2 498 0
	movi.n	a10, 0
	call8	vTaskDelete
.LVL25:
	retw.n
.LFE49:
	.size	main_task, .-main_task
	.section	.text.intr_matrix_clear,"ax",@progbits
	.align	4
	.type	intr_matrix_clear, @function
intr_matrix_clear:
.LFB45:
	.loc 2 272 0
	entry	sp, 32
.LCFI3:
.LVL26:
.LBB46:
	.loc 2 274 0
	movi.n	a2, 0
	j	.L13
.LVL27:
.L14:
	.loc 2 275 0 discriminator 3
	movi.n	a12, 6
	mov.n	a11, a2
	movi.n	a10, 0
	call8	intr_matrix_set
.LVL28:
	.loc 2 277 0 discriminator 3
	movi.n	a12, 6
	mov.n	a11, a2
	movi.n	a10, 1
	call8	intr_matrix_set
.LVL29:
	.loc 2 274 0 discriminator 3
	addi.n	a2, a2, 1
.LVL30:
.L13:
	.loc 2 274 0 is_stmt 0 discriminator 1
	movi.n	a8, 0x44
	bge	a8, a2, .L14
.LBE46:
	.loc 2 280 0 is_stmt 1
	retw.n
.LFE45:
	.size	intr_matrix_clear, .-intr_matrix_clear
	.section	.text.wdt_reset_cpu1_info_enable,"ax",@progbits
	.literal_position
	.literal .LC15, 1072694376
	.align	4
	.type	wdt_reset_cpu1_info_enable, @function
wdt_reset_cpu1_info_enable:
.LFB43:
	.loc 2 240 0
	entry	sp, 32
.LCFI4:
.LVL31:
.LBB47:
.LBB48:
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/dport_access.h"
	.loc 3 79 0
	l32r	a2, .LC15
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL32:
.LBE48:
.LBE47:
	.loc 2 241 0
	movi	a8, 0x101
	or	a10, a10, a8
	memw
	s32i.n	a10, a2, 0
.LVL33:
.LBB49:
.LBB50:
	.loc 3 79 0
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL34:
.LBE50:
.LBE49:
	.loc 2 242 0
	movi.n	a8, -2
	and	a10, a10, a8
	memw
	s32i.n	a10, a2, 0
	retw.n
.LFE43:
	.size	wdt_reset_cpu1_info_enable, .-wdt_reset_cpu1_info_enable
	.section	.rodata.str1.4
	.align	4
.LC18:
	.string	"r"
	.align	4
.LC20:
	.string	"/dev/uart/0"
	.align	4
.LC22:
	.string	"w"
	.align	4
.LC24:
	.string	"err == ESP_OK && \"Failed to init pthread module!\""
	.align	4
.LC30:
	.string	"main"
	.align	4
.LC33:
	.string	"res == pdTRUE"
	.align	4
.LC35:
	.string	"cpu_start"
	.align	4
.LC37:
	.string	"\033[0;32mI (%d) %s: Starting scheduler on PRO CPU.\033[0m\n"
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC16, 11111
	.literal .LC17, _global_impure_ptr
	.literal .LC19, .LC18
	.literal .LC21, .LC20
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.literal .LC26, __func__$8560
	.literal .LC27, .LC9
	.literal .LC28, g_flash_guard_default_ops
	.literal .LC29, 4096
	.literal .LC31, .LC30
	.literal .LC32, main_task
	.literal .LC34, .LC33
	.literal .LC36, .LC35
	.literal .LC38, .LC37
	.align	4
	.global	start_cpu0_default
	.type	start_cpu0_default, @function
start_cpu0_default:
.LFB46:
	.loc 2 283 0
	entry	sp, 48
.LCFI5:
	.loc 2 285 0
	call8	esp_setup_syscall_table
.LVL35:
	.loc 2 309 0
	call8	esp_clk_init
.LVL36:
	.loc 2 310 0
	call8	esp_perip_clk_init
.LVL37:
	.loc 2 311 0
	call8	intr_matrix_clear
.LVL38:
	.loc 2 321 0
	l32r	a11, .LC16
	movi.n	a10, 0
	call8	uart_div_modify
.LVL39:
	.loc 2 325 0
	call8	esp_brownout_init
.LVL40:
	.loc 2 330 0
	call8	rtc_gpio_force_hold_dis_all
.LVL41:
	.loc 2 331 0
	call8	esp_vfs_dev_uart_register
.LVL42:
	.loc 2 332 0
	l32r	a2, .LC17
	l32i.n	a10, a2, 0
	call8	esp_reent_init
.LVL43:
	.loc 2 335 0
	l32i.n	a4, a2, 0
	l32r	a3, .LC21
	l32r	a11, .LC19
	mov.n	a10, a3
	call8	fopen
.LVL44:
	s32i.n	a10, a4, 4
	.loc 2 336 0
	l32i.n	a5, a2, 0
	l32r	a4, .LC23
	mov.n	a11, a4
	mov.n	a10, a3
	call8	fopen
.LVL45:
	s32i.n	a10, a5, 8
	.loc 2 337 0
	l32i.n	a2, a2, 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	fopen
.LVL46:
	s32i.n	a10, a2, 12
	.loc 2 343 0
	call8	esp_timer_init
.LVL47:
	.loc 2 344 0
	call8	esp_set_time_from_rtc
.LVL48:
	.loc 2 353 0
	call8	esp_dbg_stubs_init
.LVL49:
	.loc 2 355 0
	call8	esp_pthread_init
.LVL50:
	.loc 2 356 0
	beqz.n	a10, .L17
	.loc 2 356 0 is_stmt 0 discriminator 1
	l32r	a13, .LC25
	l32r	a12, .LC26
	movi	a11, 0x164
	l32r	a10, .LC27
.LVL51:
	call8	__assert_func
.LVL52:
.L17:
	.loc 2 358 0 is_stmt 1
	call8	do_global_ctors
.LVL53:
	.loc 2 360 0
	call8	esp_int_wdt_init
.LVL54:
	.loc 2 362 0
	call8	esp_int_wdt_cpu_init
.LVL55:
	.loc 2 364 0
	call8	esp_cache_err_int_init
.LVL56:
	.loc 2 365 0
	call8	esp_crosscore_int_init
.LVL57:
	.loc 2 367 0
	call8	esp_dport_access_int_init
.LVL58:
	.loc 2 369 0
	call8	spi_flash_init
.LVL59:
	.loc 2 371 0
	l32r	a10, .LC28
	call8	spi_flash_guard_set
.LVL60:
	.loc 2 392 0
	movi.n	a13, 0
	s32i.n	a13, sp, 0
	mov.n	a15, a13
	movi.n	a14, 1
	l32r	a12, .LC29
	l32r	a11, .LC31
	l32r	a10, .LC32
	call8	xTaskCreatePinnedToCore
.LVL61:
	.loc 2 395 0
	beqi	a10, 1, .L18
	.loc 2 395 0 is_stmt 0 discriminator 1
	l32r	a13, .LC34
	l32r	a12, .LC26
	movi	a11, 0x18b
	l32r	a10, .LC27
.LVL62:
	call8	__assert_func
.LVL63:
.L18:
	.loc 2 396 0 is_stmt 1 discriminator 9
	call8	esp_log_timestamp
.LVL64:
	l32r	a11, .LC36
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC38
	movi.n	a10, 3
	call8	esp_log_write
.LVL65:
	.loc 2 397 0 discriminator 9
	call8	vTaskStartScheduler
.LVL66:
	.loc 2 398 0 discriminator 9
	call8	abort
.LVL67:
.LFE46:
	.size	start_cpu0_default, .-start_cpu0_default
	.weak	start_cpu0
	.set	start_cpu0,start_cpu0_default
	.section	.rodata.str1.4
	.align	4
.LC41:
	.string	"\033[0;32mI (%d) %s: Starting scheduler on APP CPU.\033[0m\n"
	.section	.iram1
	.literal_position
	.literal .LC39, port_xSchedulerRunning
	.literal .LC40, .LC35
	.literal .LC42, .LC41
	.align	4
	.global	start_cpu1_default
	.type	start_cpu1_default, @function
start_cpu1_default:
.LFB47:
	.loc 2 403 0
	entry	sp, 32
.LCFI6:
.L20:
	.loc 2 405 0 discriminator 1
	l32r	a8, .LC39
	memw
	l32i.n	a8, a8, 0
	beqz.n	a8, .L20
	.loc 2 417 0
	call8	esp_int_wdt_cpu_init
.LVL68:
	.loc 2 421 0
	call8	esp_cache_err_int_init
.LVL69:
	.loc 2 422 0
	call8	esp_crosscore_int_init
.LVL70:
	.loc 2 423 0
	call8	esp_dport_access_int_init
.LVL71:
	.loc 2 425 0
	call8	esp_log_timestamp
.LVL72:
	l32r	a12, .LC40
	mov.n	a11, a10
	l32r	a10, .LC42
	call8	ets_printf
.LVL73:
	.loc 2 426 0
	call8	xPortStartScheduler
.LVL74:
	.loc 2 427 0
	call8	abort
.LVL75:
.LFE47:
	.size	start_cpu1_default, .-start_cpu1_default
	.weak	start_cpu1
	.set	start_cpu1,start_cpu1_default
	.section	.rodata.str1.4
	.align	4
.LC45:
	.string	"\033[0;32mI (%d) %s: App cpu up.\033[0m\n"
	.section	.iram1
	.literal_position
	.literal .LC43, _init_start
	.literal .LC44, .LC35
	.literal .LC46, .LC45
	.literal .LC47, app_cpu_started
	.align	4
	.type	call_start_cpu1, @function
call_start_cpu1:
.LFB44:
	.loc 2 246 0
	entry	sp, 32
.LCFI7:
	.loc 2 247 0
	l32r	a2, .LC43
#APP
# 247 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/cpu_start.c" 1
	wsr    a2, vecbase

# 0 "" 2
	.loc 2 251 0
#NO_APP
	movi.n	a10, 0
	call8	ets_set_appcpu_boot_addr
.LVL76:
	.loc 2 252 0
	call8	cpu_configure_region_protection
.LVL77:
.LBB51:
.LBB52:
	.loc 1 59 0
	movi.n	a2, 0
#APP
# 59 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
	wsr a2, MEMCTL
# 0 "" 2
#NO_APP
.LBE52:
.LBE51:
	.loc 2 259 0
	call8	uartAttach
.LVL78:
	.loc 2 260 0
	call8	ets_install_uart_printf
.LVL79:
	.loc 2 261 0
	mov.n	a10, a2
	call8	uart_tx_switch
.LVL80:
	.loc 2 264 0
	call8	wdt_reset_cpu1_info_enable
.LVL81:
	.loc 2 265 0
	call8	esp_log_timestamp
.LVL82:
	l32r	a12, .LC44
	mov.n	a11, a10
	l32r	a10, .LC46
	call8	ets_printf
.LVL83:
	.loc 2 266 0
	movi.n	a8, 1
	l32r	a2, .LC47
	s8i	a8, a2, 0
	.loc 2 267 0
	call8	start_cpu1
.LVL84:
.LFE44:
	.size	call_start_cpu1, .-call_start_cpu1
	.section	.rodata.str1.4
	.align	4
.LC54:
	.string	"\033[0;32mI (%d) %s: Pro cpu up.\033[0m\n"
	.align	4
.LC57:
	.string	"\033[0;31mE (%d) %s: Running on single core chip, but application is built with dual core support.\033[0m\n"
	.align	4
.LC59:
	.string	"\033[0;31mE (%d) %s: Please enable CONFIG_FREERTOS_UNICORE option in menuconfig.\033[0m\n"
	.align	4
.LC62:
	.string	"\033[0;32mI (%d) %s: Starting app cpu, entry point is %p\033[0m\n"
	.align	4
.LC68:
	.string	"\033[0;32mI (%d) %s: Pro cpu start user code\033[0m\n"
	.section	.iram1
	.literal_position
	.literal .LC48, _init_start
	.literal .LC49, _bss_end
	.literal .LC50, _bss_start
	.literal .LC51, _rtc_bss_end
	.literal .LC52, _rtc_bss_start
	.literal .LC53, .LC35
	.literal .LC55, .LC54
	.literal .LC56, 1073061900
	.literal .LC58, .LC57
	.literal .LC60, .LC59
	.literal .LC61, call_start_cpu1
	.literal .LC63, .LC62
	.literal .LC64, 1072693296
	.literal .LC65, 1072693300
	.literal .LC66, 1072693292
	.literal .LC67, app_cpu_started
	.literal .LC69, .LC68
	.align	4
	.global	call_start_cpu0
	.type	call_start_cpu0, @function
call_start_cpu0:
.LFB42:
	.loc 2 120 0
	entry	sp, 32
.LCFI8:
	.loc 2 126 0
	call8	cpu_configure_region_protection
.LVL85:
.LBB53:
.LBB54:
	.loc 1 59 0
	movi.n	a2, 0
#APP
# 59 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/esp32/include/soc/cpu.h" 1
	wsr a2, MEMCTL
# 0 "" 2
#NO_APP
.LBE54:
.LBE53:
	.loc 2 130 0
	l32r	a3, .LC48
#APP
# 130 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/cpu_start.c" 1
	wsr    a3, vecbase

# 0 "" 2
	.loc 2 134 0
#NO_APP
	mov.n	a10, a2
	call8	rtc_get_reset_reason
.LVL86:
	mov.n	a3, a10
	.loc 2 137 0
	movi.n	a10, 1
	call8	rtc_get_reset_reason
.LVL87:
	.loc 2 152 0
	l32r	a10, .LC50
	l32r	a12, .LC49
	sub	a12, a12, a10
	mov.n	a11, a2
	call8	memset
.LVL88:
	.loc 2 155 0
	beqi	a3, 5, .L23
	.loc 2 156 0
	l32r	a10, .LC52
	l32r	a12, .LC51
	sub	a12, a12, a10
	mov.n	a11, a2
	call8	memset
.LVL89:
.L23:
	.loc 2 177 0 discriminator 1
	call8	esp_log_timestamp
.LVL90:
	l32r	a12, .LC53
	mov.n	a11, a10
	l32r	a10, .LC55
	call8	ets_printf
.LVL91:
.LBB55:
	.loc 2 180 0 discriminator 1
	l32r	a2, .LC56
	memw
	l32i.n	a2, a2, 0
.LBE55:
	bbci	a2, 0, .L24
	.loc 2 181 0 discriminator 1
	call8	esp_log_timestamp
.LVL92:
	l32r	a2, .LC53
	mov.n	a12, a2
	mov.n	a11, a10
	l32r	a10, .LC58
	call8	ets_printf
.LVL93:
	.loc 2 182 0 discriminator 1
	call8	esp_log_timestamp
.LVL94:
	mov.n	a12, a2
	mov.n	a11, a10
	l32r	a10, .LC60
	call8	ets_printf
.LVL95:
	.loc 2 183 0 discriminator 1
	call8	abort
.LVL96:
.L24:
	.loc 2 185 0 discriminator 1
	call8	esp_log_timestamp
.LVL97:
	l32r	a13, .LC61
	l32r	a12, .LC53
	mov.n	a11, a10
	l32r	a10, .LC63
	call8	ets_printf
.LVL98:
.LBB56:
.LBB57:
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/cache.h"
	.loc 4 141 0 discriminator 1
	call8	esp_dport_access_stall_other_cpu_start
.LVL99:
	.loc 4 142 0 discriminator 1
	movi.n	a10, 1
	call8	Cache_Flush_rom
.LVL100:
	.loc 4 143 0 discriminator 1
	call8	esp_dport_access_stall_other_cpu_end
.LVL101:
.LBE57:
.LBE56:
.LBB58:
.LBB59:
	.loc 4 173 0 discriminator 1
	call8	esp_dport_access_stall_other_cpu_start
.LVL102:
	.loc 4 174 0 discriminator 1
	movi.n	a10, 1
	call8	Cache_Read_Enable_rom
.LVL103:
	.loc 4 175 0 discriminator 1
	call8	esp_dport_access_stall_other_cpu_end
.LVL104:
.LBE59:
.LBE58:
	.loc 2 189 0 discriminator 1
	movi.n	a10, 1
	call8	esp_cpu_unstall
.LVL105:
.LBB60:
.LBB61:
	.loc 3 172 0 discriminator 1
	l32r	a10, .LC64
	call8	esp_dport_access_reg_read
.LVL106:
.LBE61:
.LBE60:
	.loc 2 194 0 discriminator 1
	bbsi	a10, 0, .L25
.LVL107:
.LBB62:
.LBB63:
	.loc 3 172 0
	l32r	a2, .LC64
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL108:
.LBE63:
.LBE62:
	.loc 2 195 0
	movi.n	a4, 1
	or	a10, a10, a4
	memw
	s32i.n	a10, a2, 0
.LVL109:
.LBB64:
.LBB65:
	.loc 3 172 0
	l32r	a2, .LC65
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL110:
.LBE65:
.LBE64:
	.loc 2 196 0
	movi.n	a3, -2
	and	a10, a10, a3
	memw
	s32i.n	a10, a2, 0
.LVL111:
.LBB66:
.LBB67:
	.loc 3 172 0
	l32r	a2, .LC66
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL112:
.LBE67:
.LBE66:
	.loc 2 197 0
	or	a10, a10, a4
	memw
	s32i.n	a10, a2, 0
.LVL113:
.LBB68:
.LBB69:
	.loc 3 172 0
	mov.n	a10, a2
	call8	esp_dport_access_reg_read
.LVL114:
.LBE69:
.LBE68:
	.loc 2 198 0
	and	a10, a10, a3
	memw
	s32i.n	a10, a2, 0
.LVL115:
.L25:
	.loc 2 200 0
	l32r	a10, .LC61
	call8	ets_set_appcpu_boot_addr
.LVL116:
	.loc 2 202 0
	j	.L26
.L27:
	.loc 2 203 0
	movi	a10, 0x64
	call8	ets_delay_us
.LVL117:
.L26:
	.loc 2 202 0
	l32r	a8, .LC67
	l8ui	a8, a8, 0
	beqz.n	a8, .L27
	.loc 2 231 0
	call8	heap_caps_init
.LVL118:
	.loc 2 233 0
	call8	esp_log_timestamp
.LVL119:
	l32r	a12, .LC53
	mov.n	a11, a10
	l32r	a10, .LC69
	call8	ets_printf
.LVL120:
	.loc 2 234 0
	call8	start_cpu0
.LVL121:
.LFE42:
	.size	call_start_cpu0, .-call_start_cpu0
	.section	.rodata.__func__$8583,"a",@progbits
	.align	4
	.type	__func__$8583, @object
	.size	__func__$8583, 10
__func__$8583:
	.string	"main_task"
	.section	.rodata.__func__$8560,"a",@progbits
	.align	4
	.type	__func__$8560, @object
	.size	__func__$8560, 19
__func__$8560:
	.string	"start_cpu0_default"
	.section	.bss.app_cpu_started,"aw",@nobits
	.type	app_cpu_started, @object
	.size	app_cpu_started, 1
app_cpu_started:
	.zero	1
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI0-.LFB13
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI1-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI2-.LFB49
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI3-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI4-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI5-.LFB46
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI6-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI7-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI8-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
	.text
.Letext0:
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/lock.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/_types.h"
	.file 9 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/reent.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/rtc.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/rtc_periph.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/task.h"
	.file 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/spi_flash/include/esp_spi_flash.h"
	.file 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_task_wdt.h"
	.file 19 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/heap/include/esp_heap_caps_init.h"
	.file 20 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/soc/include/soc/rtc_wdt.h"
	.file 21 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 22 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_dport_access.h"
	.file 23 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/platform_include/esp_newlib.h"
	.file 24 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/esp_clk_internal.h"
	.file 25 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/uart.h"
	.file 26 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_brownout.h"
	.file 27 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/driver/include/driver/rtc_io.h"
	.file 28 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/vfs/include/esp_vfs_dev.h"
	.file 29 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdio.h"
	.file 30 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_timer.h"
	.file 31 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_dbg_stubs.h"
	.file 32 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.file 33 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_int_wdt.h"
	.file 34 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_cache_err_int.h"
	.file 35 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_crosscore_int.h"
	.file 36 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.file 37 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1957
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF273
	.byte	0xc
	.4byte	.LASF274
	.4byte	.LASF275
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x5
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x5
	.byte	0x1a
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x6
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x6
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x7
	.byte	0xb
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x7
	.byte	0xc
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x8
	.byte	0x10
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x8
	.byte	0x27
	.4byte	0xaa
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x9
	.2byte	0x165
	.4byte	0x5e
	.uleb128 0x6
	.byte	0x4
	.byte	0x8
	.byte	0x4a
	.4byte	0xe7
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x8
	.byte	0x4c
	.4byte	0xbc
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x8
	.byte	0x4d
	.4byte	0xe7
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0xf7
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0xa
	.byte	0x8
	.byte	0x8
	.byte	0x47
	.4byte	0x11f
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x8
	.byte	0x49
	.4byte	0x4c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x8
	.byte	0x4e
	.4byte	0xc8
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x8
	.byte	0x4f
	.4byte	0xfe
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x8
	.byte	0x53
	.4byte	0x94
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0xa
	.byte	0x16
	.4byte	0x142
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF25
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x18
	.byte	0xa
	.byte	0x2d
	.4byte	0x19c
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0xa
	.byte	0x2f
	.4byte	0x19c
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0xa
	.byte	0x30
	.4byte	0x4c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0xa
	.byte	0x30
	.4byte	0x4c
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0xa
	.byte	0x30
	.4byte	0x4c
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0xa
	.byte	0x30
	.4byte	0x4c
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0xa
	.byte	0x31
	.4byte	0x1a2
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x149
	.uleb128 0x8
	.4byte	0x137
	.4byte	0x1b2
	.uleb128 0x9
	.4byte	0xf7
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x24
	.byte	0xa
	.byte	0x35
	.4byte	0x22b
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0xa
	.byte	0x37
	.4byte	0x4c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0xa
	.byte	0x38
	.4byte	0x4c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0xa
	.byte	0x39
	.4byte	0x4c
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0xa
	.byte	0x3a
	.4byte	0x4c
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0xa
	.byte	0x3b
	.4byte	0x4c
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0xa
	.byte	0x3c
	.4byte	0x4c
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0xa
	.byte	0x3d
	.4byte	0x4c
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0xa
	.byte	0x3e
	.4byte	0x4c
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0xa
	.byte	0x3f
	.4byte	0x4c
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF41
	.2byte	0x108
	.byte	0xa
	.byte	0x48
	.4byte	0x26b
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0xa
	.byte	0x49
	.4byte	0x26b
	.byte	0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0xa
	.byte	0x4a
	.4byte	0x26b
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0xa
	.byte	0x4c
	.4byte	0x137
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0xa
	.byte	0x4f
	.4byte	0x137
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x135
	.4byte	0x27b
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x8c
	.byte	0xa
	.byte	0x53
	.4byte	0x2b8
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0xa
	.byte	0x54
	.4byte	0x2b8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0xa
	.byte	0x55
	.4byte	0x4c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0xa
	.byte	0x56
	.4byte	0x2be
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0xa
	.byte	0x57
	.4byte	0x2d5
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x27b
	.uleb128 0x8
	.4byte	0x2ce
	.4byte	0x2ce
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2d4
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x22b
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x8
	.byte	0xa
	.byte	0x73
	.4byte	0x300
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0xa
	.byte	0x74
	.4byte	0x300
	.byte	0
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0xa
	.byte	0x75
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0xf0
	.byte	0xa
	.2byte	0x172
	.4byte	0x44c
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0xa
	.2byte	0x176
	.4byte	0x4c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0xa
	.2byte	0x17b
	.4byte	0x681
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0xa
	.2byte	0x17b
	.4byte	0x681
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0xa
	.2byte	0x17b
	.4byte	0x681
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0xa
	.2byte	0x17d
	.4byte	0x4c
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0xa
	.2byte	0x17f
	.4byte	0x59a
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0xa
	.2byte	0x181
	.4byte	0x4c
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0xa
	.2byte	0x183
	.4byte	0x4c
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0xa
	.2byte	0x184
	.4byte	0x5cb
	.byte	0x20
	.uleb128 0x15
	.string	"_mp"
	.byte	0xa
	.2byte	0x186
	.4byte	0x7ce
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0xa
	.2byte	0x188
	.4byte	0x7df
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0xa
	.2byte	0x18a
	.4byte	0x4c
	.byte	0x2c
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0xa
	.2byte	0x18d
	.4byte	0x4c
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0xa
	.2byte	0x18e
	.4byte	0x59a
	.byte	0x34
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0xa
	.2byte	0x190
	.4byte	0x7e5
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0xa
	.2byte	0x191
	.4byte	0x7eb
	.byte	0x3c
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0xa
	.2byte	0x192
	.4byte	0x59a
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0xa
	.2byte	0x195
	.4byte	0x7fc
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0xa
	.2byte	0x199
	.4byte	0x2b8
	.byte	0x48
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0xa
	.2byte	0x19a
	.4byte	0x27b
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0xa
	.2byte	0x19d
	.4byte	0x646
	.byte	0xd8
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0xa
	.2byte	0x19e
	.4byte	0x681
	.byte	0xe4
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0xa
	.2byte	0x19f
	.4byte	0x808
	.byte	0xe8
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0xa
	.2byte	0x1a0
	.4byte	0x59a
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x306
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x68
	.byte	0xa
	.byte	0xb3
	.4byte	0x57c
	.uleb128 0xe
	.string	"_p"
	.byte	0xa
	.byte	0xb4
	.4byte	0x300
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0xa
	.byte	0xb5
	.4byte	0x4c
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0xa
	.byte	0xb6
	.4byte	0x4c
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0xa
	.byte	0xb7
	.4byte	0x33
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0xa
	.byte	0xb8
	.4byte	0x33
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0xa
	.byte	0xb9
	.4byte	0x2db
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0xa
	.byte	0xba
	.4byte	0x4c
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0xa
	.byte	0xbd
	.4byte	0x44c
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0xa
	.byte	0xc1
	.4byte	0x135
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0xa
	.byte	0xc3
	.4byte	0x5a7
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0xa
	.byte	0xc5
	.4byte	0x5d6
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0xa
	.byte	0xc8
	.4byte	0x5fa
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0xa
	.byte	0xc9
	.4byte	0x614
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0xa
	.byte	0xcc
	.4byte	0x2db
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0xa
	.byte	0xcd
	.4byte	0x300
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0xa
	.byte	0xce
	.4byte	0x4c
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0xa
	.byte	0xd1
	.4byte	0x61a
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0xa
	.byte	0xd2
	.4byte	0x62a
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0xa
	.byte	0xd5
	.4byte	0x2db
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0xa
	.byte	0xd8
	.4byte	0x4c
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0xa
	.byte	0xd9
	.4byte	0x9f
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0xa
	.byte	0xe0
	.4byte	0x12a
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0xa
	.byte	0xe2
	.4byte	0x11f
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0xa
	.byte	0xe3
	.4byte	0x4c
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.4byte	0x4c
	.4byte	0x59a
	.uleb128 0x17
	.4byte	0x44c
	.uleb128 0x17
	.4byte	0x135
	.uleb128 0x17
	.4byte	0x59a
	.uleb128 0x17
	.4byte	0x4c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5a0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF93
	.uleb128 0xf
	.byte	0x4
	.4byte	0x57c
	.uleb128 0x16
	.4byte	0x4c
	.4byte	0x5cb
	.uleb128 0x17
	.4byte	0x44c
	.uleb128 0x17
	.4byte	0x135
	.uleb128 0x17
	.4byte	0x5cb
	.uleb128 0x17
	.4byte	0x4c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5d1
	.uleb128 0x18
	.4byte	0x5a0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5ad
	.uleb128 0x16
	.4byte	0xb1
	.4byte	0x5fa
	.uleb128 0x17
	.4byte	0x44c
	.uleb128 0x17
	.4byte	0x135
	.uleb128 0x17
	.4byte	0xb1
	.uleb128 0x17
	.4byte	0x4c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5dc
	.uleb128 0x16
	.4byte	0x4c
	.4byte	0x614
	.uleb128 0x17
	.4byte	0x44c
	.uleb128 0x17
	.4byte	0x135
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x600
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x62a
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x63a
	.uleb128 0x9
	.4byte	0xf7
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF94
	.byte	0xa
	.2byte	0x11d
	.4byte	0x452
	.uleb128 0x13
	.4byte	.LASF95
	.byte	0xc
	.byte	0xa
	.2byte	0x121
	.4byte	0x67b
	.uleb128 0x14
	.4byte	.LASF26
	.byte	0xa
	.2byte	0x123
	.4byte	0x67b
	.byte	0
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0xa
	.2byte	0x124
	.4byte	0x4c
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0xa
	.2byte	0x125
	.4byte	0x681
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x646
	.uleb128 0xf
	.byte	0x4
	.4byte	0x63a
	.uleb128 0x13
	.4byte	.LASF98
	.byte	0x18
	.byte	0xa
	.2byte	0x13d
	.4byte	0x6c9
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0xa
	.2byte	0x13e
	.4byte	0x6c9
	.byte	0
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0xa
	.2byte	0x13f
	.4byte	0x6c9
	.byte	0x6
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0xa
	.2byte	0x140
	.4byte	0x3a
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0xa
	.2byte	0x143
	.4byte	0x6c
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x3a
	.4byte	0x6d9
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF103
	.byte	0x10
	.byte	0xa
	.2byte	0x156
	.4byte	0x71b
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0xa
	.2byte	0x159
	.4byte	0x19c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0xa
	.2byte	0x15a
	.4byte	0x4c
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0xa
	.2byte	0x15b
	.4byte	0x19c
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0xa
	.2byte	0x15c
	.4byte	0x71b
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x19c
	.uleb128 0x13
	.4byte	.LASF108
	.byte	0x50
	.byte	0xa
	.2byte	0x160
	.4byte	0x7be
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0xa
	.2byte	0x163
	.4byte	0x59a
	.byte	0
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0xa
	.2byte	0x164
	.4byte	0x11f
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0xa
	.2byte	0x165
	.4byte	0x11f
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0xa
	.2byte	0x166
	.4byte	0x11f
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0xa
	.2byte	0x167
	.4byte	0x7be
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0xa
	.2byte	0x168
	.4byte	0x4c
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0xa
	.2byte	0x169
	.4byte	0x11f
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0xa
	.2byte	0x16a
	.4byte	0x11f
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0xa
	.2byte	0x16b
	.4byte	0x11f
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0xa
	.2byte	0x16c
	.4byte	0x11f
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0xa
	.2byte	0x16d
	.4byte	0x11f
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	0x5a0
	.4byte	0x7ce
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6d9
	.uleb128 0x19
	.4byte	0x7df
	.uleb128 0x17
	.4byte	0x44c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7d4
	.uleb128 0xf
	.byte	0x4
	.4byte	0x687
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1b2
	.uleb128 0x19
	.4byte	0x7fc
	.uleb128 0x17
	.4byte	0x4c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x802
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7f1
	.uleb128 0xf
	.byte	0x4
	.4byte	0x721
	.uleb128 0x3
	.4byte	.LASF120
	.byte	0xb
	.byte	0x18
	.4byte	0x73
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x5e
	.byte	0xc
	.byte	0x52
	.4byte	0x886
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x3
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF126
	.byte	0x6
	.uleb128 0x1b
	.4byte	.LASF127
	.byte	0x7
	.uleb128 0x1b
	.4byte	.LASF128
	.byte	0x8
	.uleb128 0x1b
	.4byte	.LASF129
	.byte	0x9
	.uleb128 0x1b
	.4byte	.LASF130
	.byte	0xa
	.uleb128 0x1b
	.4byte	.LASF131
	.byte	0xb
	.uleb128 0x1b
	.4byte	.LASF132
	.byte	0xc
	.uleb128 0x1b
	.4byte	.LASF133
	.byte	0xd
	.uleb128 0x1b
	.4byte	.LASF134
	.byte	0xe
	.uleb128 0x1b
	.4byte	.LASF135
	.byte	0xf
	.uleb128 0x1b
	.4byte	.LASF136
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF137
	.byte	0xc
	.byte	0x63
	.4byte	0x819
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x5e
	.byte	0xc
	.byte	0x65
	.4byte	0x8e9
	.uleb128 0x1b
	.4byte	.LASF138
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF139
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF140
	.byte	0x2
	.uleb128 0x1b
	.4byte	.LASF141
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF142
	.byte	0x8
	.uleb128 0x1b
	.4byte	.LASF143
	.byte	0x10
	.uleb128 0x1b
	.4byte	.LASF144
	.byte	0x20
	.uleb128 0x1b
	.4byte	.LASF145
	.byte	0x40
	.uleb128 0x1b
	.4byte	.LASF146
	.byte	0x80
	.uleb128 0x1c
	.4byte	.LASF147
	.2byte	0x100
	.uleb128 0x1c
	.4byte	.LASF148
	.2byte	0x200
	.uleb128 0x1c
	.4byte	.LASF149
	.2byte	0x400
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x5e
	.byte	0xc
	.byte	0x83
	.4byte	0x91a
	.uleb128 0x1b
	.4byte	.LASF150
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF151
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF152
	.byte	0x2
	.uleb128 0x1b
	.4byte	.LASF153
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF154
	.byte	0x8
	.uleb128 0x1b
	.4byte	.LASF155
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF156
	.uleb128 0xa
	.byte	0x34
	.byte	0xd
	.byte	0x21
	.4byte	0x9c5
	.uleb128 0xe
	.string	"reg"
	.byte	0xd
	.byte	0x22
	.4byte	0x7e
	.byte	0
	.uleb128 0xe
	.string	"mux"
	.byte	0xd
	.byte	0x23
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0xd
	.byte	0x24
	.4byte	0x7e
	.byte	0x8
	.uleb128 0xe
	.string	"ie"
	.byte	0xd
	.byte	0x25
	.4byte	0x7e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0xd
	.byte	0x26
	.4byte	0x7e
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0xd
	.byte	0x27
	.4byte	0x7e
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF160
	.byte	0xd
	.byte	0x28
	.4byte	0x7e
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF161
	.byte	0xd
	.byte	0x29
	.4byte	0x7e
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF162
	.byte	0xd
	.byte	0x2a
	.4byte	0x7e
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF163
	.byte	0xd
	.byte	0x2b
	.4byte	0x7e
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF164
	.byte	0xd
	.byte	0x2c
	.4byte	0x7e
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF165
	.byte	0xd
	.byte	0x2d
	.4byte	0x7e
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0xd
	.byte	0x2e
	.4byte	0x4c
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.4byte	.LASF167
	.byte	0xd
	.byte	0x2f
	.4byte	0x921
	.uleb128 0x3
	.4byte	.LASF168
	.byte	0xe
	.byte	0x6f
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF169
	.byte	0xf
	.byte	0x6e
	.4byte	0x135
	.uleb128 0x18
	.4byte	0x5cb
	.uleb128 0x5
	.4byte	.LASF170
	.byte	0x10
	.2byte	0x12f
	.4byte	0x2ce
	.uleb128 0x5
	.4byte	.LASF171
	.byte	0x10
	.2byte	0x133
	.4byte	0x2ce
	.uleb128 0x5
	.4byte	.LASF172
	.byte	0x10
	.2byte	0x137
	.4byte	0x2ce
	.uleb128 0x5
	.4byte	.LASF173
	.byte	0x10
	.2byte	0x13b
	.4byte	0x2ce
	.uleb128 0x1d
	.byte	0x10
	.byte	0x10
	.2byte	0x159
	.4byte	0xa59
	.uleb128 0x14
	.4byte	.LASF174
	.byte	0x10
	.2byte	0x15a
	.4byte	0x9eb
	.byte	0
	.uleb128 0x15
	.string	"end"
	.byte	0x10
	.2byte	0x15b
	.4byte	0x9f7
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF175
	.byte	0x10
	.2byte	0x15c
	.4byte	0xa03
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF176
	.byte	0x10
	.2byte	0x15d
	.4byte	0xa0f
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	.LASF177
	.byte	0x10
	.2byte	0x15e
	.4byte	0xa1b
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x5e
	.byte	0x11
	.byte	0x1f
	.4byte	0xa96
	.uleb128 0x1b
	.4byte	.LASF178
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF179
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF180
	.byte	0x2
	.uleb128 0x1b
	.4byte	.LASF181
	.byte	0x3
	.uleb128 0x1b
	.4byte	.LASF182
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF183
	.byte	0x5
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF185
	.byte	0x1
	.byte	0x32
	.byte	0x3
	.4byte	0xab9
	.uleb128 0x1f
	.string	"vpn"
	.byte	0x1
	.byte	0x32
	.4byte	0x5e
	.uleb128 0x20
	.4byte	.LASF184
	.byte	0x1
	.byte	0x32
	.4byte	0x5e
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF186
	.byte	0x1
	.byte	0x2c
	.byte	0x3
	.4byte	0xadc
	.uleb128 0x1f
	.string	"vpn"
	.byte	0x1
	.byte	0x2c
	.4byte	0x7e
	.uleb128 0x20
	.4byte	.LASF184
	.byte	0x1
	.byte	0x2c
	.4byte	0x5e
	.byte	0
	.uleb128 0x21
	.4byte	.LASF187
	.byte	0x3
	.byte	0x4a
	.4byte	0x7e
	.byte	0x3
	.4byte	0xaf8
	.uleb128 0x1f
	.string	"reg"
	.byte	0x3
	.byte	0x4a
	.4byte	0x7e
	.byte	0
	.uleb128 0x22
	.4byte	.LASF276
	.byte	0x1
	.byte	0x37
	.byte	0x3
	.4byte	0xb10
	.uleb128 0x23
	.4byte	.LASF197
	.byte	0x1
	.byte	0x3a
	.4byte	0x7e
	.byte	0
	.uleb128 0x21
	.4byte	.LASF188
	.byte	0x3
	.byte	0xa7
	.4byte	0x7e
	.byte	0x3
	.4byte	0xb2c
	.uleb128 0x1f
	.string	"reg"
	.byte	0x3
	.byte	0xa7
	.4byte	0x7e
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF189
	.byte	0x4
	.byte	0xaa
	.byte	0x3
	.4byte	0xb4c
	.uleb128 0x20
	.4byte	.LASF190
	.byte	0x4
	.byte	0xaa
	.4byte	0x4c
	.uleb128 0x24
	.4byte	.LASF192
	.byte	0x4
	.byte	0xac
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF191
	.byte	0x4
	.byte	0x8a
	.byte	0x3
	.4byte	0xb6c
	.uleb128 0x20
	.4byte	.LASF190
	.byte	0x4
	.byte	0x8a
	.4byte	0x4c
	.uleb128 0x24
	.4byte	.LASF193
	.byte	0x4
	.byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF277
	.byte	0x1
	.byte	0x4a
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc57
	.uleb128 0x26
	.4byte	.LASF194
	.byte	0x1
	.byte	0x4c
	.4byte	0xc67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.4byte	0xbf2
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.byte	0x4d
	.4byte	0x4c
	.4byte	.LLST0
	.uleb128 0x29
	.4byte	0xab9
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.byte	0x1
	.byte	0x4e
	.4byte	0xbcf
	.uleb128 0x2a
	.4byte	0xad0
	.4byte	.LLST1
	.uleb128 0x2a
	.4byte	0xac5
	.4byte	.LLST2
	.byte	0
	.uleb128 0x2b
	.4byte	0xa96
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.byte	0x1
	.byte	0x4f
	.uleb128 0x2a
	.4byte	0xaad
	.4byte	.LLST3
	.uleb128 0x2a
	.4byte	0xaa2
	.4byte	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0xab9
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.byte	0x1
	.byte	0x51
	.4byte	0xc15
	.uleb128 0x2c
	.4byte	0xad0
	.byte	0
	.uleb128 0x2d
	.4byte	0xac5
	.4byte	0x20000000
	.byte	0
	.uleb128 0x29
	.4byte	0xa96
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.byte	0x1
	.byte	0x52
	.4byte	0xc38
	.uleb128 0x2c
	.4byte	0xaad
	.byte	0
	.uleb128 0x2d
	.4byte	0xaa2
	.4byte	0x20000000
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL0
	.4byte	0x171a
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x7e
	.4byte	0xc67
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.4byte	0xc57
	.uleb128 0x30
	.4byte	.LASF195
	.byte	0x2
	.2byte	0x1b6
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc91
	.uleb128 0x31
	.string	"p"
	.byte	0x2
	.2byte	0x1bd
	.4byte	0xc91
	.4byte	.LLST5
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2ce
	.uleb128 0x32
	.4byte	.LASF196
	.byte	0x2
	.2byte	0x1c3
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe43
	.uleb128 0x33
	.4byte	.LASF278
	.byte	0x2
	.2byte	0x1c3
	.4byte	0x135
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x34
	.4byte	.LASF198
	.4byte	0xe53
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8583
	.uleb128 0x35
	.4byte	.LASF199
	.byte	0x2
	.2byte	0x1e0
	.4byte	0x9db
	.4byte	.LLST6
	.uleb128 0x35
	.4byte	.LASF200
	.byte	0x2
	.2byte	0x1e7
	.4byte	0x9db
	.4byte	.LLST7
	.uleb128 0x27
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.4byte	0xd4c
	.uleb128 0x35
	.4byte	.LASF201
	.byte	0x2
	.2byte	0x1db
	.4byte	0x80e
	.4byte	.LLST8
	.uleb128 0x36
	.4byte	.LVL14
	.4byte	0x1723
	.4byte	0xd1f
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL15
	.4byte	0x172e
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1db
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8583
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.4byte	0xd9f
	.uleb128 0x35
	.4byte	.LASF201
	.byte	0x2
	.2byte	0x1e2
	.4byte	0x80e
	.4byte	.LLST9
	.uleb128 0x37
	.4byte	.LVL18
	.4byte	0x1739
	.uleb128 0x2e
	.4byte	.LVL19
	.4byte	0x172e
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1e2
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8583
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.4byte	0xdf2
	.uleb128 0x35
	.4byte	.LASF201
	.byte	0x2
	.2byte	0x1e9
	.4byte	0x80e
	.4byte	.LLST10
	.uleb128 0x37
	.4byte	.LVL21
	.4byte	0x1739
	.uleb128 0x2e
	.4byte	.LVL22
	.4byte	0x172e
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1e9
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8583
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL13
	.4byte	0x1744
	.uleb128 0x36
	.4byte	.LVL17
	.4byte	0x174f
	.4byte	0xe0e
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x36
	.4byte	.LVL20
	.4byte	0x174f
	.4byte	0xe21
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x37
	.4byte	.LVL23
	.4byte	0x175b
	.uleb128 0x37
	.4byte	.LVL24
	.4byte	0x1766
	.uleb128 0x2e
	.4byte	.LVL25
	.4byte	0x1771
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x5a0
	.4byte	0xe53
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x9
	.byte	0
	.uleb128 0x18
	.4byte	0xe43
	.uleb128 0x32
	.4byte	.LASF202
	.byte	0x2
	.2byte	0x10f
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xebf
	.uleb128 0x38
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.uleb128 0x31
	.string	"i"
	.byte	0x2
	.2byte	0x112
	.4byte	0x4c
	.4byte	.LLST11
	.uleb128 0x36
	.4byte	.LVL28
	.4byte	0x177d
	.4byte	0xea3
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL29
	.4byte	0x177d
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF203
	.byte	0x2
	.byte	0xef
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf2b
	.uleb128 0x29
	.4byte	0xadc
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.byte	0x2
	.byte	0xf1
	.4byte	0xf01
	.uleb128 0x2d
	.4byte	0xaec
	.4byte	0x3ff00468
	.uleb128 0x2e
	.4byte	.LVL32
	.4byte	0x1789
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0xadc
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.byte	0x2
	.byte	0xf2
	.uleb128 0x2d
	.4byte	0xaec
	.4byte	0x3ff00468
	.uleb128 0x2e
	.4byte	.LVL34
	.4byte	0x1789
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF206
	.byte	0x2
	.2byte	0x11a
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1198
	.uleb128 0x31
	.string	"err"
	.byte	0x2
	.2byte	0x11c
	.4byte	0x80e
	.4byte	.LLST12
	.uleb128 0x3b
	.4byte	.LASF204
	.byte	0x2
	.2byte	0x13f
	.4byte	0x1198
	.4byte	0x4c4b400
	.uleb128 0x3c
	.4byte	.LASF205
	.byte	0x2
	.2byte	0x14e
	.4byte	0x5cb
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC20
	.byte	0x9f
	.uleb128 0x34
	.4byte	.LASF198
	.4byte	0x11ad
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8560
	.uleb128 0x31
	.string	"res"
	.byte	0x2
	.2byte	0x188
	.4byte	0x4c
	.4byte	.LLST13
	.uleb128 0x37
	.4byte	.LVL35
	.4byte	0x1794
	.uleb128 0x37
	.4byte	.LVL36
	.4byte	0x179f
	.uleb128 0x37
	.4byte	.LVL37
	.4byte	0x17aa
	.uleb128 0x37
	.4byte	.LVL38
	.4byte	0xe58
	.uleb128 0x36
	.4byte	.LVL39
	.4byte	0x17b5
	.4byte	0xfd1
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2b67
	.byte	0
	.uleb128 0x37
	.4byte	.LVL40
	.4byte	0x17c0
	.uleb128 0x37
	.4byte	.LVL41
	.4byte	0x17cb
	.uleb128 0x37
	.4byte	.LVL42
	.4byte	0x17d6
	.uleb128 0x37
	.4byte	.LVL43
	.4byte	0x17e1
	.uleb128 0x36
	.4byte	.LVL44
	.4byte	0x17ec
	.4byte	0x1012
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.uleb128 0x36
	.4byte	.LVL45
	.4byte	0x17ec
	.4byte	0x102c
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL46
	.4byte	0x17ec
	.4byte	0x1046
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL47
	.4byte	0x17f7
	.uleb128 0x37
	.4byte	.LVL48
	.4byte	0x1802
	.uleb128 0x37
	.4byte	.LVL49
	.4byte	0x180d
	.uleb128 0x37
	.4byte	.LVL50
	.4byte	0x1818
	.uleb128 0x36
	.4byte	.LVL52
	.4byte	0x1823
	.4byte	0x109a
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x164
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8560
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.uleb128 0x37
	.4byte	.LVL53
	.4byte	0xc6c
	.uleb128 0x37
	.4byte	.LVL54
	.4byte	0x182e
	.uleb128 0x37
	.4byte	.LVL55
	.4byte	0x1839
	.uleb128 0x37
	.4byte	.LVL56
	.4byte	0x1844
	.uleb128 0x37
	.4byte	.LVL57
	.4byte	0x184f
	.uleb128 0x37
	.4byte	.LVL58
	.4byte	0x185a
	.uleb128 0x37
	.4byte	.LVL59
	.4byte	0x1865
	.uleb128 0x37
	.4byte	.LVL60
	.4byte	0x1870
	.uleb128 0x36
	.4byte	.LVL61
	.4byte	0x187c
	.4byte	0x111e
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	main_task
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2f
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x36
	.4byte	.LVL63
	.4byte	0x1823
	.4byte	0x114e
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x18b
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8560
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.byte	0
	.uleb128 0x37
	.4byte	.LVL64
	.4byte	0x1888
	.uleb128 0x36
	.4byte	.LVL65
	.4byte	0x1893
	.4byte	0x1185
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.byte	0
	.uleb128 0x37
	.4byte	.LVL66
	.4byte	0x189e
	.uleb128 0x37
	.4byte	.LVL67
	.4byte	0x18aa
	.byte	0
	.uleb128 0x18
	.4byte	0x4c
	.uleb128 0x8
	.4byte	0x5a0
	.4byte	0x11ad
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x12
	.byte	0
	.uleb128 0x18
	.4byte	0x119d
	.uleb128 0x3a
	.4byte	.LASF207
	.byte	0x2
	.2byte	0x192
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1228
	.uleb128 0x37
	.4byte	.LVL68
	.4byte	0x1839
	.uleb128 0x37
	.4byte	.LVL69
	.4byte	0x1844
	.uleb128 0x37
	.4byte	.LVL70
	.4byte	0x184f
	.uleb128 0x37
	.4byte	.LVL71
	.4byte	0x185a
	.uleb128 0x37
	.4byte	.LVL72
	.4byte	0x1888
	.uleb128 0x36
	.4byte	.LVL73
	.4byte	0x18b5
	.4byte	0x1215
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.byte	0
	.uleb128 0x37
	.4byte	.LVL74
	.4byte	0x18c0
	.uleb128 0x37
	.4byte	.LVL75
	.4byte	0x18aa
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF208
	.byte	0x2
	.byte	0xf5
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12db
	.uleb128 0x29
	.4byte	0xaf8
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.byte	0x2
	.byte	0xfd
	.4byte	0x1261
	.uleb128 0x38
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.uleb128 0x3e
	.4byte	0xb04
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL76
	.4byte	0x18cb
	.4byte	0x1274
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x37
	.4byte	.LVL77
	.4byte	0xb6c
	.uleb128 0x37
	.4byte	.LVL78
	.4byte	0x18d6
	.uleb128 0x37
	.4byte	.LVL79
	.4byte	0x18e1
	.uleb128 0x36
	.4byte	.LVL80
	.4byte	0x18ed
	.4byte	0x12a3
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL81
	.4byte	0xebf
	.uleb128 0x37
	.4byte	.LVL82
	.4byte	0x1888
	.uleb128 0x36
	.4byte	.LVL83
	.4byte	0x18b5
	.4byte	0x12d5
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.byte	0
	.uleb128 0x3f
	.4byte	.LVL84
	.byte	0
	.uleb128 0x40
	.4byte	.LASF279
	.byte	0x2
	.byte	0x77
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x161c
	.uleb128 0x23
	.4byte	.LASF209
	.byte	0x2
	.byte	0x7c
	.4byte	0x161c
	.uleb128 0x41
	.4byte	.LASF198
	.4byte	0x163c
	.uleb128 0x29
	.4byte	0xaf8
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.byte	0x2
	.byte	0x7f
	.4byte	0x1328
	.uleb128 0x38
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.uleb128 0x3e
	.4byte	0xb04
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0xb4c
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x2
	.byte	0xbb
	.4byte	0x1371
	.uleb128 0x2c
	.4byte	0xb58
	.byte	0x1
	.uleb128 0x38
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.uleb128 0x37
	.4byte	.LVL99
	.4byte	0x18f8
	.uleb128 0x36
	.4byte	.LVL100
	.4byte	0x1903
	.4byte	0x1366
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x37
	.4byte	.LVL101
	.4byte	0x190e
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0xb2c
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.byte	0x2
	.byte	0xbc
	.4byte	0x13ba
	.uleb128 0x2c
	.4byte	0xb38
	.byte	0x1
	.uleb128 0x38
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.uleb128 0x37
	.4byte	.LVL102
	.4byte	0x18f8
	.uleb128 0x36
	.4byte	.LVL103
	.4byte	0x1919
	.4byte	0x13af
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x37
	.4byte	.LVL104
	.4byte	0x190e
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0xb10
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.byte	0x2
	.byte	0xc2
	.4byte	0x13ea
	.uleb128 0x2d
	.4byte	0xb20
	.4byte	0x3ff00030
	.uleb128 0x2e
	.4byte	.LVL106
	.4byte	0x1789
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x3ff00030
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0xb10
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.byte	0x2
	.byte	0xc3
	.4byte	0x1417
	.uleb128 0x2a
	.4byte	0xb20
	.4byte	.LLST14
	.uleb128 0x2e
	.4byte	.LVL108
	.4byte	0x1789
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0xb10
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.byte	0x2
	.byte	0xc4
	.4byte	0x1444
	.uleb128 0x2a
	.4byte	0xb20
	.4byte	.LLST15
	.uleb128 0x2e
	.4byte	.LVL110
	.4byte	0x1789
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0xb10
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.byte	0x2
	.byte	0xc5
	.4byte	0x1471
	.uleb128 0x2a
	.4byte	0xb20
	.4byte	.LLST16
	.uleb128 0x2e
	.4byte	.LVL112
	.4byte	0x1789
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0xb10
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.byte	0x2
	.byte	0xc6
	.4byte	0x149e
	.uleb128 0x2a
	.4byte	0xb20
	.4byte	.LLST17
	.uleb128 0x2e
	.4byte	.LVL114
	.4byte	0x1789
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL85
	.4byte	0xb6c
	.uleb128 0x36
	.4byte	.LVL86
	.4byte	0x1924
	.4byte	0x14bb
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL87
	.4byte	0x1924
	.4byte	0x14ce
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x36
	.4byte	.LVL88
	.4byte	0x192f
	.4byte	0x14e2
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL89
	.4byte	0x192f
	.4byte	0x14f6
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL90
	.4byte	0x1888
	.uleb128 0x36
	.4byte	.LVL91
	.4byte	0x18b5
	.4byte	0x151f
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.byte	0
	.uleb128 0x37
	.4byte	.LVL92
	.4byte	0x1888
	.uleb128 0x36
	.4byte	.LVL93
	.4byte	0x18b5
	.4byte	0x1545
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC57
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL94
	.4byte	0x1888
	.uleb128 0x36
	.4byte	.LVL95
	.4byte	0x18b5
	.4byte	0x156b
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC59
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL96
	.4byte	0x18aa
	.uleb128 0x37
	.4byte	.LVL97
	.4byte	0x1888
	.uleb128 0x36
	.4byte	.LVL98
	.4byte	0x18b5
	.4byte	0x15a6
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	call_start_cpu1
	.byte	0
	.uleb128 0x36
	.4byte	.LVL105
	.4byte	0x1938
	.4byte	0x15b9
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x36
	.4byte	.LVL116
	.4byte	0x18cb
	.4byte	0x15d0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	call_start_cpu1
	.byte	0
	.uleb128 0x36
	.4byte	.LVL117
	.4byte	0x1943
	.4byte	0x15e4
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x37
	.4byte	.LVL118
	.4byte	0x194f
	.uleb128 0x37
	.4byte	.LVL119
	.4byte	0x1888
	.uleb128 0x36
	.4byte	.LVL120
	.4byte	0x18b5
	.4byte	0x1616
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC68
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.byte	0
	.uleb128 0x3f
	.4byte	.LVL121
	.byte	0
	.uleb128 0x8
	.4byte	0x886
	.4byte	0x162c
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x5a0
	.4byte	0x163c
	.uleb128 0x9
	.4byte	0xf7
	.byte	0xf
	.byte	0
	.uleb128 0x18
	.4byte	0x162c
	.uleb128 0x26
	.4byte	.LASF210
	.byte	0x2
	.byte	0x54
	.4byte	0x91a
	.uleb128 0x5
	.byte	0x3
	.4byte	app_cpu_started
	.uleb128 0x42
	.string	"TAG"
	.byte	0x2
	.byte	0x69
	.4byte	0x9e6
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC35
	.byte	0x9f
	.uleb128 0x43
	.4byte	.LASF211
	.byte	0x2
	.byte	0x70
	.4byte	0x91a
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF212
	.byte	0xa
	.2byte	0x303
	.4byte	0x44c
	.uleb128 0x8
	.4byte	0x9c5
	.4byte	0x168c
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x27
	.byte	0
	.uleb128 0x45
	.4byte	.LASF213
	.byte	0xd
	.byte	0x38
	.4byte	0x1697
	.uleb128 0x18
	.4byte	0x167c
	.uleb128 0x44
	.4byte	.LASF214
	.byte	0x10
	.2byte	0x176
	.4byte	0x16a8
	.uleb128 0x18
	.4byte	0xa59
	.uleb128 0x45
	.4byte	.LASF215
	.byte	0x2
	.byte	0x5c
	.4byte	0x4c
	.uleb128 0x45
	.4byte	.LASF216
	.byte	0x2
	.byte	0x5d
	.4byte	0x4c
	.uleb128 0x45
	.4byte	.LASF217
	.byte	0x2
	.byte	0x5e
	.4byte	0x4c
	.uleb128 0x45
	.4byte	.LASF218
	.byte	0x2
	.byte	0x5f
	.4byte	0x4c
	.uleb128 0x45
	.4byte	.LASF219
	.byte	0x2
	.byte	0x64
	.4byte	0x4c
	.uleb128 0x45
	.4byte	.LASF220
	.byte	0x2
	.byte	0x65
	.4byte	0x2ce
	.uleb128 0x45
	.4byte	.LASF221
	.byte	0x2
	.byte	0x66
	.4byte	0x2ce
	.uleb128 0x8
	.4byte	0x4c
	.4byte	0x170a
	.uleb128 0x9
	.4byte	0xf7
	.byte	0x1
	.byte	0
	.uleb128 0x45
	.4byte	.LASF222
	.byte	0x2
	.byte	0x67
	.4byte	0x1715
	.uleb128 0x46
	.4byte	0x16fa
	.uleb128 0x47
	.4byte	.LASF268
	.4byte	.LASF268
	.uleb128 0x48
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0x12
	.byte	0x2d
	.uleb128 0x48
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0xb
	.byte	0x4f
	.uleb128 0x48
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0x12
	.byte	0x53
	.uleb128 0x48
	.4byte	.LASF226
	.4byte	.LASF226
	.byte	0x13
	.byte	0x28
	.uleb128 0x49
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0xf
	.2byte	0x5d6
	.uleb128 0x48
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0x14
	.byte	0x85
	.uleb128 0x48
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0x2
	.byte	0x59
	.uleb128 0x49
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0xf
	.2byte	0x2fb
	.uleb128 0x49
	.4byte	.LASF231
	.4byte	.LASF231
	.byte	0x15
	.2byte	0x21b
	.uleb128 0x48
	.4byte	.LASF232
	.4byte	.LASF232
	.byte	0x16
	.byte	0x1e
	.uleb128 0x48
	.4byte	.LASF233
	.4byte	.LASF233
	.byte	0x17
	.byte	0x22
	.uleb128 0x48
	.4byte	.LASF234
	.4byte	.LASF234
	.byte	0x18
	.byte	0x1e
	.uleb128 0x48
	.4byte	.LASF235
	.4byte	.LASF235
	.byte	0x18
	.byte	0x27
	.uleb128 0x48
	.4byte	.LASF236
	.4byte	.LASF236
	.byte	0x19
	.byte	0xc6
	.uleb128 0x48
	.4byte	.LASF237
	.4byte	.LASF237
	.byte	0x1a
	.byte	0x13
	.uleb128 0x48
	.4byte	.LASF238
	.4byte	.LASF238
	.byte	0x1b
	.byte	0xdf
	.uleb128 0x48
	.4byte	.LASF239
	.4byte	.LASF239
	.byte	0x1c
	.byte	0x25
	.uleb128 0x48
	.4byte	.LASF240
	.4byte	.LASF240
	.byte	0x17
	.byte	0x1a
	.uleb128 0x48
	.4byte	.LASF241
	.4byte	.LASF241
	.byte	0x1d
	.byte	0xdd
	.uleb128 0x48
	.4byte	.LASF242
	.4byte	.LASF242
	.byte	0x1e
	.byte	0x62
	.uleb128 0x48
	.4byte	.LASF243
	.4byte	.LASF243
	.byte	0x17
	.byte	0x27
	.uleb128 0x48
	.4byte	.LASF244
	.4byte	.LASF244
	.byte	0x1f
	.byte	0x23
	.uleb128 0x48
	.4byte	.LASF245
	.4byte	.LASF245
	.byte	0x2
	.byte	0x5a
	.uleb128 0x48
	.4byte	.LASF246
	.4byte	.LASF246
	.byte	0x20
	.byte	0x29
	.uleb128 0x48
	.4byte	.LASF247
	.4byte	.LASF247
	.byte	0x21
	.byte	0x2e
	.uleb128 0x48
	.4byte	.LASF248
	.4byte	.LASF248
	.byte	0x21
	.byte	0x36
	.uleb128 0x48
	.4byte	.LASF249
	.4byte	.LASF249
	.byte	0x22
	.byte	0x17
	.uleb128 0x48
	.4byte	.LASF250
	.4byte	.LASF250
	.byte	0x23
	.byte	0x1b
	.uleb128 0x48
	.4byte	.LASF251
	.4byte	.LASF251
	.byte	0x16
	.byte	0x1a
	.uleb128 0x48
	.4byte	.LASF252
	.4byte	.LASF252
	.byte	0x10
	.byte	0x2d
	.uleb128 0x49
	.4byte	.LASF253
	.4byte	.LASF253
	.byte	0x10
	.2byte	0x168
	.uleb128 0x49
	.4byte	.LASF254
	.4byte	.LASF254
	.byte	0xf
	.2byte	0x151
	.uleb128 0x48
	.4byte	.LASF255
	.4byte	.LASF255
	.byte	0x11
	.byte	0x57
	.uleb128 0x48
	.4byte	.LASF256
	.4byte	.LASF256
	.byte	0x11
	.byte	0x6b
	.uleb128 0x49
	.4byte	.LASF257
	.4byte	.LASF257
	.byte	0xf
	.2byte	0x464
	.uleb128 0x48
	.4byte	.LASF258
	.4byte	.LASF258
	.byte	0x24
	.byte	0x47
	.uleb128 0x48
	.4byte	.LASF259
	.4byte	.LASF259
	.byte	0x15
	.byte	0xde
	.uleb128 0x48
	.4byte	.LASF260
	.4byte	.LASF260
	.byte	0x25
	.byte	0x9c
	.uleb128 0x48
	.4byte	.LASF261
	.4byte	.LASF261
	.byte	0x15
	.byte	0xa3
	.uleb128 0x48
	.4byte	.LASF262
	.4byte	.LASF262
	.byte	0x19
	.byte	0xae
	.uleb128 0x49
	.4byte	.LASF263
	.4byte	.LASF263
	.byte	0x15
	.2byte	0x106
	.uleb128 0x48
	.4byte	.LASF264
	.4byte	.LASF264
	.byte	0x19
	.byte	0xdd
	.uleb128 0x48
	.4byte	.LASF265
	.4byte	.LASF265
	.byte	0x16
	.byte	0x18
	.uleb128 0x48
	.4byte	.LASF193
	.4byte	.LASF193
	.byte	0x4
	.byte	0x8c
	.uleb128 0x48
	.4byte	.LASF266
	.4byte	.LASF266
	.byte	0x16
	.byte	0x19
	.uleb128 0x48
	.4byte	.LASF192
	.4byte	.LASF192
	.byte	0x4
	.byte	0xac
	.uleb128 0x48
	.4byte	.LASF267
	.4byte	.LASF267
	.byte	0xc
	.byte	0x9c
	.uleb128 0x47
	.4byte	.LASF269
	.4byte	.LASF269
	.uleb128 0x48
	.4byte	.LASF270
	.4byte	.LASF270
	.byte	0x1
	.byte	0x5f
	.uleb128 0x49
	.4byte	.LASF271
	.4byte	.LASF271
	.byte	0x15
	.2byte	0x17f
	.uleb128 0x48
	.4byte	.LASF272
	.4byte	.LASF272
	.byte	0x13
	.byte	0x1e
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3b
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
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
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL107
	.4byte	.LVL115
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00030
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL109
	.4byte	.LVL115
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff00034
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL111
	.4byte	.LVL115
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0002c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x6
	.byte	0xc
	.4byte	0x3ff0002c
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"_flock_t"
.LASF140:
	.string	"EXT_EVENT1_TRIG"
.LASF175:
	.string	"op_lock"
.LASF251:
	.string	"esp_dport_access_int_init"
.LASF74:
	.string	"_misc"
.LASF165:
	.string	"drv_s"
.LASF164:
	.string	"drv_v"
.LASF133:
	.string	"RTCWDT_CPU_RESET"
.LASF213:
	.string	"rtc_gpio_desc"
.LASF11:
	.string	"_lock_t"
.LASF260:
	.string	"xPortStartScheduler"
.LASF41:
	.string	"_on_exit_args"
.LASF122:
	.string	"POWERON_RESET"
.LASF166:
	.string	"rtc_num"
.LASF111:
	.string	"_wctomb_state"
.LASF67:
	.string	"_r48"
.LASF246:
	.string	"__assert_func"
.LASF254:
	.string	"xTaskCreatePinnedToCore"
.LASF153:
	.string	"SDIO_IDLE_INT"
.LASF75:
	.string	"_signal_buf"
.LASF6:
	.string	"unsigned int"
.LASF225:
	.string	"esp_task_wdt_add"
.LASF79:
	.string	"_lbfsize"
.LASF77:
	.string	"_flags"
.LASF185:
	.string	"cpu_write_itlb"
.LASF4:
	.string	"__int32_t"
.LASF54:
	.string	"_errno"
.LASF206:
	.string	"start_cpu0_default"
.LASF255:
	.string	"esp_log_timestamp"
.LASF182:
	.string	"ESP_LOG_DEBUG"
.LASF146:
	.string	"UART1_TRIG"
.LASF247:
	.string	"esp_int_wdt_init"
.LASF91:
	.string	"_mbstate"
.LASF24:
	.string	"__ULong"
.LASF115:
	.string	"_mbrlen_state"
.LASF152:
	.string	"REJECT_INT"
.LASF56:
	.string	"_stdout"
.LASF273:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF15:
	.string	"_fpos_t"
.LASF48:
	.string	"_fns"
.LASF81:
	.string	"_cookie"
.LASF215:
	.string	"_bss_start"
.LASF197:
	.string	"memctl"
.LASF30:
	.string	"_Bigint"
.LASF237:
	.string	"esp_brownout_init"
.LASF203:
	.string	"wdt_reset_cpu1_info_enable"
.LASF38:
	.string	"__tm_wday"
.LASF104:
	.string	"_result"
.LASF10:
	.string	"uint32_t"
.LASF34:
	.string	"__tm_hour"
.LASF248:
	.string	"esp_int_wdt_cpu_init"
.LASF186:
	.string	"cpu_write_dtlb"
.LASF194:
	.string	"pages_to_protect"
.LASF20:
	.string	"__count"
.LASF192:
	.string	"Cache_Read_Enable_rom"
.LASF222:
	.string	"port_xSchedulerRunning"
.LASF33:
	.string	"__tm_min"
.LASF239:
	.string	"esp_vfs_dev_uart_register"
.LASF259:
	.string	"ets_printf"
.LASF191:
	.string	"Cache_Flush"
.LASF221:
	.string	"__init_array_end"
.LASF150:
	.string	"NO_INT"
.LASF207:
	.string	"start_cpu1_default"
.LASF171:
	.string	"spi_flash_guard_end_func_t"
.LASF8:
	.string	"long long unsigned int"
.LASF125:
	.string	"DEEPSLEEP_RESET"
.LASF69:
	.string	"_asctime_buf"
.LASF98:
	.string	"_rand48"
.LASF76:
	.string	"__sFILE"
.LASF29:
	.string	"_wds"
.LASF148:
	.string	"SAR_TRIG"
.LASF168:
	.string	"BaseType_t"
.LASF267:
	.string	"rtc_get_reset_reason"
.LASF184:
	.string	"attr"
.LASF263:
	.string	"ets_install_uart_printf"
.LASF205:
	.string	"default_uart_dev"
.LASF94:
	.string	"__FILE"
.LASF274:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/cpu_start.c"
.LASF276:
	.string	"cpu_init_memctl"
.LASF89:
	.string	"_offset"
.LASF86:
	.string	"_ubuf"
.LASF128:
	.string	"TG1WDT_SYS_RESET"
.LASF245:
	.string	"esp_pthread_init"
.LASF271:
	.string	"ets_delay_us"
.LASF59:
	.string	"_emergency"
.LASF258:
	.string	"abort"
.LASF62:
	.string	"_current_locale"
.LASF138:
	.string	"NO_SLEEP"
.LASF233:
	.string	"esp_setup_syscall_table"
.LASF127:
	.string	"TG0WDT_SYS_RESET"
.LASF224:
	.string	"_esp_error_check_failed"
.LASF32:
	.string	"__tm_sec"
.LASF157:
	.string	"func"
.LASF39:
	.string	"__tm_yday"
.LASF58:
	.string	"_inc"
.LASF156:
	.string	"_Bool"
.LASF26:
	.string	"_next"
.LASF117:
	.string	"_mbsrtowcs_state"
.LASF209:
	.string	"rst_reas"
.LASF126:
	.string	"SDIO_RESET"
.LASF139:
	.string	"EXT_EVENT0_TRIG"
.LASF178:
	.string	"ESP_LOG_NONE"
.LASF134:
	.string	"EXT_CPU_RESET"
.LASF189:
	.string	"Cache_Read_Enable"
.LASF277:
	.string	"cpu_configure_region_protection"
.LASF92:
	.string	"_flags2"
.LASF21:
	.string	"__value"
.LASF106:
	.string	"_p5s"
.LASF147:
	.string	"TOUCH_TRIG"
.LASF155:
	.string	"RTC_TIME_VALID_INT"
.LASF110:
	.string	"_mblen_state"
.LASF272:
	.string	"heap_caps_init"
.LASF232:
	.string	"esp_dport_access_reg_read"
.LASF93:
	.string	"char"
.LASF35:
	.string	"__tm_mday"
.LASF70:
	.string	"_sig_func"
.LASF116:
	.string	"_mbrtowc_state"
.LASF71:
	.string	"_atexit0"
.LASF217:
	.string	"_rtc_bss_start"
.LASF105:
	.string	"_result_k"
.LASF160:
	.string	"slpsel"
.LASF220:
	.string	"__init_array_start"
.LASF17:
	.string	"__wch"
.LASF123:
	.string	"SW_RESET"
.LASF49:
	.string	"_on_exit_args_ptr"
.LASF214:
	.string	"g_flash_guard_default_ops"
.LASF250:
	.string	"esp_crosscore_int_init"
.LASF85:
	.string	"_close"
.LASF158:
	.string	"pullup"
.LASF60:
	.string	"__sdidinit"
.LASF219:
	.string	"_init_start"
.LASF210:
	.string	"app_cpu_started"
.LASF161:
	.string	"slpie"
.LASF145:
	.string	"UART0_TRIG"
.LASF55:
	.string	"_stdin"
.LASF64:
	.string	"_gamma_signgam"
.LASF7:
	.string	"long long int"
.LASF121:
	.string	"NO_MEAN"
.LASF51:
	.string	"_base"
.LASF135:
	.string	"RTCWDT_BROWN_OUT_RESET"
.LASF107:
	.string	"_freelist"
.LASF218:
	.string	"_rtc_bss_end"
.LASF100:
	.string	"_mult"
.LASF101:
	.string	"_add"
.LASF118:
	.string	"_wcrtomb_state"
.LASF131:
	.string	"TGWDT_CPU_RESET"
.LASF270:
	.string	"esp_cpu_unstall"
.LASF187:
	.string	"DPORT_REG_READ"
.LASF234:
	.string	"esp_clk_init"
.LASF226:
	.string	"heap_caps_enable_nonos_stack_heaps"
.LASF269:
	.string	"memset"
.LASF63:
	.string	"__cleanup"
.LASF22:
	.string	"_mbstate_t"
.LASF223:
	.string	"esp_task_wdt_init"
.LASF103:
	.string	"_mprec"
.LASF170:
	.string	"spi_flash_guard_start_func_t"
.LASF163:
	.string	"hold_force"
.LASF40:
	.string	"__tm_isdst"
.LASF181:
	.string	"ESP_LOG_INFO"
.LASF169:
	.string	"TaskHandle_t"
.LASF119:
	.string	"_wcsrtombs_state"
.LASF142:
	.string	"TIMER_EXPIRE"
.LASF256:
	.string	"esp_log_write"
.LASF47:
	.string	"_ind"
.LASF235:
	.string	"esp_perip_clk_init"
.LASF240:
	.string	"esp_reent_init"
.LASF241:
	.string	"fopen"
.LASF228:
	.string	"rtc_wdt_disable"
.LASF211:
	.string	"s_spiram_okay"
.LASF36:
	.string	"__tm_mon"
.LASF278:
	.string	"args"
.LASF172:
	.string	"spi_flash_op_lock_func_t"
.LASF137:
	.string	"RESET_REASON"
.LASF196:
	.string	"main_task"
.LASF230:
	.string	"vTaskDelete"
.LASF50:
	.string	"__sbuf"
.LASF83:
	.string	"_write"
.LASF229:
	.string	"app_main"
.LASF252:
	.string	"spi_flash_init"
.LASF261:
	.string	"ets_set_appcpu_boot_addr"
.LASF46:
	.string	"_atexit"
.LASF236:
	.string	"uart_div_modify"
.LASF2:
	.string	"short int"
.LASF14:
	.string	"long int"
.LASF201:
	.string	"__err_rc"
.LASF275:
	.string	"/home/raphael/rtone/lcd/build/esp32"
.LASF73:
	.string	"__sf"
.LASF28:
	.string	"_sign"
.LASF154:
	.string	"RTC_WDT_INT"
.LASF132:
	.string	"SW_CPU_RESET"
.LASF80:
	.string	"_data"
.LASF18:
	.string	"__wchb"
.LASF212:
	.string	"_global_impure_ptr"
.LASF162:
	.string	"hold"
.LASF124:
	.string	"OWDT_RESET"
.LASF37:
	.string	"__tm_year"
.LASF78:
	.string	"_file"
.LASF108:
	.string	"_misc_reent"
.LASF177:
	.string	"spi_flash_guard_funcs_t"
.LASF159:
	.string	"pulldown"
.LASF244:
	.string	"esp_dbg_stubs_init"
.LASF68:
	.string	"_localtime_buf"
.LASF65:
	.string	"_cvtlen"
.LASF27:
	.string	"_maxwds"
.LASF174:
	.string	"start"
.LASF61:
	.string	"_current_category"
.LASF129:
	.string	"RTCWDT_SYS_RESET"
.LASF151:
	.string	"WAKEUP_INT"
.LASF88:
	.string	"_blksize"
.LASF31:
	.string	"__tm"
.LASF264:
	.string	"uart_tx_switch"
.LASF141:
	.string	"GPIO_TRIG"
.LASF90:
	.string	"_lock"
.LASF136:
	.string	"RTCWDT_RTC_RESET"
.LASF19:
	.string	"sizetype"
.LASF25:
	.string	"long unsigned int"
.LASF183:
	.string	"ESP_LOG_VERBOSE"
.LASF96:
	.string	"_niobs"
.LASF16:
	.string	"wint_t"
.LASF9:
	.string	"int32_t"
.LASF249:
	.string	"esp_cache_err_int_init"
.LASF265:
	.string	"esp_dport_access_stall_other_cpu_start"
.LASF43:
	.string	"_dso_handle"
.LASF257:
	.string	"vTaskStartScheduler"
.LASF143:
	.string	"SDIO_TRIG"
.LASF66:
	.string	"_cvtbuf"
.LASF1:
	.string	"unsigned char"
.LASF180:
	.string	"ESP_LOG_WARN"
.LASF5:
	.string	"__uint32_t"
.LASF262:
	.string	"uartAttach"
.LASF242:
	.string	"esp_timer_init"
.LASF227:
	.string	"xTaskGetIdleTaskHandleForCPU"
.LASF195:
	.string	"do_global_ctors"
.LASF12:
	.string	"_LOCK_RECURSIVE_T"
.LASF238:
	.string	"rtc_gpio_force_hold_dis_all"
.LASF199:
	.string	"idle_0"
.LASF200:
	.string	"idle_1"
.LASF82:
	.string	"_read"
.LASF120:
	.string	"esp_err_t"
.LASF204:
	.string	"uart_clk_freq"
.LASF216:
	.string	"_bss_end"
.LASF188:
	.string	"DPORT_READ_PERI_REG"
.LASF113:
	.string	"_l64a_buf"
.LASF208:
	.string	"call_start_cpu1"
.LASF95:
	.string	"_glue"
.LASF72:
	.string	"__sglue"
.LASF114:
	.string	"_getdate_err"
.LASF176:
	.string	"op_unlock"
.LASF109:
	.string	"_strtok_last"
.LASF112:
	.string	"_mbtowc_state"
.LASF130:
	.string	"INTRUSION_RESET"
.LASF190:
	.string	"cpu_no"
.LASF42:
	.string	"_fnargs"
.LASF0:
	.string	"signed char"
.LASF53:
	.string	"_reent"
.LASF3:
	.string	"short unsigned int"
.LASF268:
	.string	"memcpy"
.LASF149:
	.string	"BT_TRIG"
.LASF198:
	.string	"__func__"
.LASF253:
	.string	"spi_flash_guard_set"
.LASF44:
	.string	"_fntypes"
.LASF52:
	.string	"_size"
.LASF13:
	.string	"_off_t"
.LASF144:
	.string	"MAC_TRIG"
.LASF87:
	.string	"_nbuf"
.LASF193:
	.string	"Cache_Flush_rom"
.LASF173:
	.string	"spi_flash_op_unlock_func_t"
.LASF202:
	.string	"intr_matrix_clear"
.LASF45:
	.string	"_is_cxa"
.LASF266:
	.string	"esp_dport_access_stall_other_cpu_end"
.LASF99:
	.string	"_seed"
.LASF279:
	.string	"call_start_cpu0"
.LASF102:
	.string	"_rand_next"
.LASF243:
	.string	"esp_set_time_from_rtc"
.LASF84:
	.string	"_seek"
.LASF167:
	.string	"rtc_gpio_desc_t"
.LASF57:
	.string	"_stderr"
.LASF97:
	.string	"_iobs"
.LASF231:
	.string	"intr_matrix_set"
.LASF179:
	.string	"ESP_LOG_ERROR"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
