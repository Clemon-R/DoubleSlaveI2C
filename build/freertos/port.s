	.file	"port.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"FreeRTOS"
	.align	4
.LC2:
	.string	"\033[0;31mE (%d) %s: FreeRTOS Task \"%s\" should not return, Aborting now!\033[0m\n"
	.section	.text.vPortTaskWrapper,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.align	4
	.type	vPortTaskWrapper, @function
vPortTaskWrapper:
.LFB26:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/port.c"
	.loc 1 142 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 143 0
	mov.n	a10, a3
	callx8	a2
.LVL1:
	.loc 1 145 0
	movi.n	a10, 0
	call8	pcTaskGetTaskName
.LVL2:
	mov.n	a2, a10
.LVL3:
	.loc 1 146 0
	call8	esp_log_timestamp
.LVL4:
	l32r	a11, .LC1
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC3
	movi.n	a10, 1
	call8	esp_log_write
.LVL5:
	.loc 1 147 0
	call8	abort
.LVL6:
.LFE26:
	.size	vPortTaskWrapper, .-vPortTaskWrapper
	.section	.text.pxPortInitialiseStack,"ax",@progbits
	.literal_position
	.literal .LC4, _thread_local_end
	.literal .LC5, _thread_local_start
	.literal .LC6, vPortTaskWrapper
	.literal .LC7, _xt_user_exit
	.literal .LC8, 327728
	.literal .LC9, _rodata_start
	.align	4
	.global	pxPortInitialiseStack
	.type	pxPortInitialiseStack, @function
pxPortInitialiseStack:
.LFB27:
	.loc 1 159 0
.LVL7:
	entry	sp, 32
.LCFI1:
	mov.n	a5, a2
.LVL8:
	.loc 1 169 0
	l32r	a12, .LC5
	l32r	a2, .LC4
.LVL9:
	sub	a12, a2, a12
.LVL10:
	.loc 1 171 0
	addi.n	a12, a12, 15
.LVL11:
	movi.n	a7, -0x10
	and	a12, a12, a7
.LVL12:
	.loc 1 182 0
	addi.n	a2, a5, 1
	sub	a2, a2, a12
	movi	a6, -0x120
	add.n	a2, a2, a6
	and	a2, a2, a7
.LVL13:
	.loc 1 185 0
	mov.n	a8, a2
	j	.L3
.LVL14:
.L4:
	.loc 1 186 0 discriminator 3
	movi.n	a9, 0
	s8i	a9, a8, 0
	.loc 1 185 0 discriminator 3
	addi.n	a8, a8, 1
.LVL15:
.L3:
	.loc 1 185 0 is_stmt 0 discriminator 1
	bgeu	a5, a8, .L4
.LVL16:
	.loc 1 192 0 is_stmt 1
	l32r	a6, .LC6
	s32i.n	a6, a2, 4
	.loc 1 196 0
	movi.n	a6, 0
	s32i.n	a6, a2, 12
	.loc 1 197 0
	movi	a7, 0xc0
	add.n	a7, a2, a7
	s32i.n	a7, a2, 16
	.loc 1 198 0
	l32r	a7, .LC7
	s32i.n	a7, a2, 0
	.loc 1 213 0
	s32i.n	a3, a2, 36
	.loc 1 214 0
	s32i.n	a4, a2, 40
	.loc 1 218 0
	l32r	a3, .LC8
.LVL17:
	s32i.n	a3, a2, 8
	.loc 1 227 0
	sub	a3, a5, a12
	addi	a3, a3, -96
	movi.n	a4, -0x10
.LVL18:
	and	a3, a3, a4
.LVL19:
	.loc 1 228 0
	l32r	a7, .LC5
	mov.n	a11, a7
	mov.n	a10, a3
	call8	memcpy
.LVL20:
	.loc 1 232 0
	sub	a3, a3, a7
.LVL21:
	l32r	a7, .LC9
.LVL22:
	add.n	a7, a7, a4
	add.n	a3, a7, a3
	s32i	a3, a2, 112
	.loc 1 239 0
	addi	a5, a5, -96
.LVL23:
	and	a5, a5, a4
.LVL24:
	.loc 1 240 0
	s32i.n	a6, a5, 0
	.loc 1 241 0
	s32i.n	a6, a5, 4
	.loc 1 242 0
	addi.n	a4, a5, 15
.LVL25:
	movi.n	a3, -4
	and	a3, a4, a3
	s32i.n	a3, a5, 8
	.loc 1 246 0
	retw.n
.LFE27:
	.size	pxPortInitialiseStack, .-pxPortInitialiseStack
	.section	.text.vPortEndScheduler,"ax",@progbits
	.align	4
	.global	vPortEndScheduler
	.type	vPortEndScheduler, @function
vPortEndScheduler:
.LFB28:
	.loc 1 251 0
	entry	sp, 32
.LCFI2:
	retw.n
.LFE28:
	.size	vPortEndScheduler, .-vPortEndScheduler
	.section	.text.xPortStartScheduler,"ax",@progbits
	.literal_position
	.literal .LC10, port_xSchedulerRunning
	.align	4
	.global	xPortStartScheduler
	.type	xPortStartScheduler, @function
xPortStartScheduler:
.LFB29:
	.loc 1 259 0
	.loc 1 259 0
	entry	sp, 32
.LCFI3:
	.loc 1 264 0
	call8	_xt_coproc_init
.LVL26:
	.loc 1 268 0
	call8	_xt_tick_divisor_init
.LVL27:
	.loc 1 271 0
	call8	_frxt_tick_timer_init
.LVL28:
.LBB49:
.LBB50:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE50:
.LBE49:
	.loc 1 273 0
	l32r	a2, .LC10
	addx4	a8, a8, a2
	movi.n	a2, 1
	s32i.n	a2, a8, 0
	.loc 1 276 0
#APP
# 276 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/port.c" 1
	call0    _frxt_dispatch

# 0 "" 2
	.loc 1 280 0
#NO_APP
	retw.n
.LFE29:
	.size	xPortStartScheduler, .-xPortStartScheduler
	.section	.text.xPortSysTickHandler,"ax",@progbits
	.align	4
	.global	xPortSysTickHandler
	.type	xPortSysTickHandler, @function
xPortSysTickHandler:
.LFB30:
	.loc 1 284 0
	entry	sp, 32
.LCFI4:
	.loc 1 289 0
	call8	xTaskIncrementTick
.LVL29:
	mov.n	a2, a10
.LVL30:
	.loc 1 290 0
	beqz.n	a10, .L8
	.loc 1 292 0
	call8	_frxt_setup_switch
.LVL31:
.L8:
	.loc 1 297 0
	retw.n
.LFE30:
	.size	xPortSysTickHandler, .-xPortSysTickHandler
	.section	.text.vPortYieldOtherCore,"ax",@progbits
	.align	4
	.global	vPortYieldOtherCore
	.type	vPortYieldOtherCore, @function
vPortYieldOtherCore:
.LFB31:
	.loc 1 300 0
.LVL32:
	entry	sp, 32
.LCFI5:
	.loc 1 301 0
	mov.n	a10, a2
	call8	esp_crosscore_int_send_yield
.LVL33:
	retw.n
.LFE31:
	.size	vPortYieldOtherCore, .-vPortYieldOtherCore
	.section	.text.vPortStoreTaskMPUSettings,"ax",@progbits
	.align	4
	.global	vPortStoreTaskMPUSettings
	.type	vPortStoreTaskMPUSettings, @function
vPortStoreTaskMPUSettings:
.LFB32:
	.loc 1 311 0
.LVL34:
	entry	sp, 32
.LCFI6:
	.loc 1 313 0
	addi.n	a5, a5, -1
.LVL35:
	add.n	a4, a4, a5
.LVL36:
	addi	a5, a4, -96
.LVL37:
	movi.n	a4, -0x10
	and	a5, a5, a4
	s32i.n	a5, a2, 0
	retw.n
.LFE32:
	.size	vPortStoreTaskMPUSettings, .-vPortStoreTaskMPUSettings
	.section	.text.vPortReleaseTaskMPUSettings,"ax",@progbits
	.align	4
	.global	vPortReleaseTaskMPUSettings
	.type	vPortReleaseTaskMPUSettings, @function
vPortReleaseTaskMPUSettings:
.LFB33:
	.loc 1 323 0
.LVL38:
	entry	sp, 32
.LCFI7:
	.loc 1 325 0
	l32i.n	a10, a2, 0
	call8	_xt_coproc_release
.LVL39:
	retw.n
.LFE33:
	.size	vPortReleaseTaskMPUSettings, .-vPortReleaseTaskMPUSettings
	.section	.text.xPortInIsrContext,"ax",@progbits
	.literal_position
	.literal .LC11, port_interruptNesting
	.align	4
	.global	xPortInIsrContext
	.type	xPortInIsrContext, @function
xPortInIsrContext:
.LFB34:
	.loc 1 335 0
	entry	sp, 32
.LCFI8:
.LBB51:
.LBB52:
.LBB53:
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h"
	.loc 3 249 0
#APP
# 249 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h" 1
	rsil	a10, 3

# 0 "" 2
.LVL40:
#NO_APP
.LBE53:
.LBE52:
.LBE51:
.LBB54:
.LBB55:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
#NO_APP
.LBE55:
.LBE54:
	.loc 1 339 0
	l32r	a8, .LC11
	addx4	a2, a2, a8
	l32i.n	a8, a2, 0
	movi.n	a2, 0
	movi.n	a9, 1
	movnez	a2, a9, a8
	extui	a2, a2, 0, 8
.LVL41:
	.loc 1 340 0
	call8	_xtos_set_intlevel
.LVL42:
	.loc 1 342 0
	retw.n
.LFE34:
	.size	xPortInIsrContext, .-xPortInIsrContext
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC12, port_interruptNesting
	.align	4
	.global	xPortInterruptedFromISRContext
	.type	xPortInterruptedFromISRContext, @function
xPortInterruptedFromISRContext:
.LFB35:
	.loc 1 349 0
	entry	sp, 32
.LCFI9:
.LBB56:
.LBB57:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE57:
.LBE56:
	.loc 1 350 0
	l32r	a2, .LC12
	addx4	a8, a8, a2
	l32i.n	a8, a8, 0
	movi.n	a2, 0
	movi.n	a9, 1
	movnez	a2, a9, a8
	.loc 1 351 0
	retw.n
.LFE35:
	.size	xPortInterruptedFromISRContext, .-xPortInterruptedFromISRContext
	.section	.rodata.str1.4
	.align	4
.LC14:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/port.c"
	.align	4
.LC16:
	.string	"%s:%d (%s)- assert failed!\n"
	.section	.text.vPortAssertIfInISR,"ax",@progbits
	.literal_position
	.literal .LC13, __FUNCTION__$5373
	.literal .LC15, .LC14
	.literal .LC17, .LC16
	.align	4
	.global	vPortAssertIfInISR
	.type	vPortAssertIfInISR, @function
vPortAssertIfInISR:
.LFB36:
	.loc 1 354 0
	entry	sp, 32
.LCFI10:
	.loc 1 355 0
	call8	xPortInIsrContext
.LVL43:
	bnez.n	a10, .L14
	.loc 1 355 0 is_stmt 0 discriminator 1
	l32r	a13, .LC13
	movi	a12, 0x163
	l32r	a11, .LC15
	l32r	a10, .LC17
	call8	ets_printf
.LVL44:
	call8	abort
.LVL45:
.L14:
	retw.n
.LFE36:
	.size	vPortAssertIfInISR, .-vPortAssertIfInISR
	.section	.text.vPortCPUInitializeMutex,"ax",@progbits
	.literal_position
	.literal .LC18, -1287651329
	.align	4
	.global	vPortCPUInitializeMutex
	.type	vPortCPUInitializeMutex, @function
vPortCPUInitializeMutex:
.LFB37:
	.loc 1 361 0 is_stmt 1
.LVL46:
	entry	sp, 32
.LCFI11:
	.loc 1 368 0
	l32r	a8, .LC18
	s32i.n	a8, a2, 0
	.loc 1 369 0
	movi.n	a8, 0
	s32i.n	a8, a2, 4
	retw.n
.LFE37:
	.size	vPortCPUInitializeMutex, .-vPortCPUInitializeMutex
	.section	.rodata.str1.4
	.align	4
.LC21:
	.string	"res == coreID || res == portMUX_FREE_VAL"
	.align	4
.LC24:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/portmux_impl.inc.h"
	.align	4
.LC27:
	.string	"(res == portMUX_FREE_VAL) == (mux->count == 0)"
	.align	4
.LC29:
	.string	"mux->count < 0xFF"
	.section	.text.vPortCPUAcquireMutex,"ax",@progbits
	.literal_position
	.literal .LC19, 26214
	.literal .LC20, -1287651329
	.literal .LC22, .LC21
	.literal .LC23, __func__$5389
	.literal .LC25, .LC24
	.literal .LC26, 1287651329
	.literal .LC28, .LC27
	.literal .LC30, .LC29
	.align	4
	.global	vPortCPUAcquireMutex
	.type	vPortCPUAcquireMutex, @function
vPortCPUAcquireMutex:
.LFB42:
	.loc 1 392 0
.LVL47:
	entry	sp, 32
.LCFI12:
.LBB58:
.LBB59:
.LBB60:
	.loc 3 249 0
#APP
# 249 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h" 1
	rsil	a10, 3

# 0 "" 2
.LVL48:
#NO_APP
.LBE60:
.LBE59:
.LBE58:
.LBB61:
.LBB62:
.LBB63:
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/portmux_impl.inc.h"
	.loc 4 72 0
#APP
# 72 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/portmux_impl.inc.h" 1
	rsr a9, PRID
# 0 "" 2
.LVL49:
	.loc 4 76 0
#NO_APP
	l32r	a12, .LC19
	xor	a12, a9, a12
.LVL50:
.L18:
.LBB64:
.LBB65:
	.loc 3 285 0
	mov.n	a8, a9
	l32r	a11, .LC20
#APP
# 285 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h" 1
	WSR 	    a11,SCOMPARE1 
S32C1I     a8, a2, 0	 

# 0 "" 2
.LVL51:
#NO_APP
.LBE65:
.LBE64:
	.loc 4 88 0
	beq	a12, a8, .L18
	.loc 4 105 0
	beq	a9, a8, .L19
	beq	a8, a11, .L19
	l32r	a13, .LC22
	l32r	a12, .LC23
.LVL52:
	movi	a11, 0x69
	l32r	a10, .LC25
.LVL53:
	call8	__assert_func
.LVL54:
.L19:
	.loc 4 106 0
	l32r	a9, .LC26
.LVL55:
	add.n	a8, a8, a9
.LVL56:
	movi.n	a9, 1
	movi.n	a12, 0
.LVL57:
	mov.n	a3, a12
	movnez	a3, a9, a8
	extui	a8, a3, 0, 8
.LVL58:
	l32i.n	a11, a2, 4
	movnez	a9, a12, a11
	extui	a9, a9, 0, 8
	bne	a8, a9, .L20
	l32r	a13, .LC28
	l32r	a12, .LC23
	movi	a11, 0x6a
	l32r	a10, .LC25
.LVL59:
	call8	__assert_func
.LVL60:
.L20:
	.loc 4 107 0
	movi	a8, 0xfe
	bgeu	a8, a11, .L21
	l32r	a13, .LC30
	l32r	a12, .LC23
	movi	a11, 0x6b
	l32r	a10, .LC25
.LVL61:
	call8	__assert_func
.LVL62:
.L21:
	.loc 4 110 0
	addi.n	a11, a11, 1
	s32i.n	a11, a2, 4
.LBE63:
.LBE62:
.LBE61:
	.loc 1 395 0
	call8	_xtos_set_intlevel
.LVL63:
	retw.n
.LFE42:
	.size	vPortCPUAcquireMutex, .-vPortCPUAcquireMutex
	.section	.text.vPortCPUAcquireMutexTimeout,"ax",@progbits
	.literal_position
	.literal .LC31, 26214
	.literal .LC32, -1287651329
	.literal .LC33, .LC21
	.literal .LC34, __func__$5389
	.literal .LC35, .LC24
	.literal .LC36, 1287651329
	.literal .LC37, .LC27
	.literal .LC38, .LC29
	.align	4
	.global	vPortCPUAcquireMutexTimeout
	.type	vPortCPUAcquireMutexTimeout, @function
vPortCPUAcquireMutexTimeout:
.LFB43:
	.loc 1 398 0
.LVL64:
	entry	sp, 32
.LCFI13:
.LBB66:
.LBB67:
.LBB68:
	.loc 3 249 0
#APP
# 249 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h" 1
	rsil	a10, 3

# 0 "" 2
.LVL65:
#NO_APP
.LBE68:
.LBE67:
.LBE66:
.LBB69:
.LBB70:
.LBB71:
	.loc 4 58 0
	bltz	a3, .L23
	.loc 4 59 0
#APP
# 59 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/portmux_impl.inc.h" 1
	rsr a14, CCOUNT
# 0 "" 2
.LVL66:
#NO_APP
.L23:
	.loc 4 72 0
#APP
# 72 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/portmux_impl.inc.h" 1
	rsr a9, PRID
# 0 "" 2
.LVL67:
	.loc 4 76 0
#NO_APP
	l32r	a12, .LC31
	xor	a12, a9, a12
.LVL68:
.L25:
.LBB72:
.LBB73:
	.loc 3 285 0
	mov.n	a8, a9
	l32r	a11, .LC32
#APP
# 285 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h" 1
	WSR 	    a11,SCOMPARE1 
S32C1I     a8, a2, 0	 

# 0 "" 2
.LVL69:
#NO_APP
.LBE73:
.LBE72:
	.loc 4 88 0
	bne	a12, a8, .L24
	.loc 4 92 0
	bltz	a3, .L25
.LBB74:
	.loc 4 94 0
#APP
# 94 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/portmux_impl.inc.h" 1
	rsr a8, CCOUNT
# 0 "" 2
.LVL70:
	.loc 4 95 0
#NO_APP
	sub	a8, a8, a14
.LVL71:
	bgeu	a3, a8, .L25
	j	.L31
.LVL72:
.L24:
.LBE74:
	.loc 4 105 0
	beq	a9, a8, .L28
	l32r	a3, .LC32
.LVL73:
	beq	a8, a3, .L28
	l32r	a13, .LC33
	l32r	a12, .LC34
.LVL74:
	movi	a11, 0x69
	l32r	a10, .LC35
.LVL75:
	call8	__assert_func
.LVL76:
.L28:
	.loc 4 106 0
	l32r	a3, .LC36
	add.n	a3, a8, a3
	movi.n	a8, 1
.LVL77:
	movi.n	a11, 0
	mov.n	a4, a11
	movnez	a4, a8, a3
	extui	a3, a4, 0, 8
.LVL78:
	l32i.n	a9, a2, 4
.LVL79:
	movnez	a8, a11, a9
	extui	a8, a8, 0, 8
	bne	a3, a8, .L29
	l32r	a13, .LC37
	l32r	a12, .LC34
.LVL80:
	movi	a11, 0x6a
	l32r	a10, .LC35
.LVL81:
	call8	__assert_func
.LVL82:
.L29:
	.loc 4 107 0
	movi	a3, 0xfe
	bgeu	a3, a9, .L30
	l32r	a13, .LC38
	l32r	a12, .LC34
.LVL83:
	movi	a11, 0x6b
	l32r	a10, .LC35
.LVL84:
	call8	__assert_func
.LVL85:
.L30:
	.loc 4 110 0
	addi.n	a9, a9, 1
	s32i.n	a9, a2, 4
	.loc 4 123 0
	movi.n	a2, 1
.LVL86:
	j	.L26
.LVL87:
.L31:
.LBB75:
	.loc 4 100 0
	movi.n	a2, 0
.LVL88:
.L26:
.LBE75:
.LBE71:
.LBE70:
.LBE69:
	.loc 1 401 0
	call8	_xtos_set_intlevel
.LVL89:
	.loc 1 403 0
	retw.n
.LFE43:
	.size	vPortCPUAcquireMutexTimeout, .-vPortCPUAcquireMutexTimeout
	.section	.rodata.str1.4
	.align	4
.LC39:
	.string	"coreID == mux->owner"
	.align	4
.LC44:
	.string	"mux->count < 0x100"
	.section	.text.vPortCPUReleaseMutex,"ax",@progbits
	.literal_position
	.literal .LC40, .LC39
	.literal .LC41, __func__$5394
	.literal .LC42, .LC24
	.literal .LC43, -1287651329
	.literal .LC45, .LC44
	.align	4
	.global	vPortCPUReleaseMutex
	.type	vPortCPUReleaseMutex, @function
vPortCPUReleaseMutex:
.LFB44:
	.loc 1 419 0
.LVL90:
	entry	sp, 32
.LCFI14:
.LBB83:
.LBB84:
.LBB85:
	.loc 3 249 0
#APP
# 249 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h" 1
	rsil	a10, 3

# 0 "" 2
.LVL91:
#NO_APP
.LBE85:
.LBE84:
.LBE83:
.LBB86:
.LBB87:
.LBB88:
	.loc 4 147 0
#APP
# 147 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/portmux_impl.inc.h" 1
	rsr a8, PRID
# 0 "" 2
	.loc 4 157 0
#NO_APP
	l32i.n	a9, a2, 0
	beq	a9, a8, .L33
	l32r	a13, .LC40
	l32r	a12, .LC41
	movi	a11, 0x9d
	l32r	a10, .LC42
.LVL92:
	call8	__assert_func
.LVL93:
.L33:
	.loc 4 159 0
	l32i.n	a8, a2, 4
	addi.n	a8, a8, -1
	s32i.n	a8, a2, 4
	.loc 4 160 0
	bnez.n	a8, .L34
	.loc 4 161 0
	l32r	a8, .LC43
	s32i.n	a8, a2, 0
	j	.L35
.L34:
	.loc 4 163 0
	movi	a2, 0xff
.LVL94:
	bgeu	a2, a8, .L35
	l32r	a13, .LC45
	l32r	a12, .LC41
	movi	a11, 0xa3
	l32r	a10, .LC42
.LVL95:
	call8	__assert_func
.LVL96:
.L35:
.LBE88:
.LBE87:
.LBE86:
	.loc 1 422 0
	call8	_xtos_set_intlevel
.LVL97:
	retw.n
.LFE44:
	.size	vPortCPUReleaseMutex, .-vPortCPUReleaseMutex
	.section	.text.vPortSetStackWatchpoint,"ax",@progbits
	.literal_position
	.literal .LC46, -2147483648
	.align	4
	.global	vPortSetStackWatchpoint
	.type	vPortSetStackWatchpoint, @function
vPortSetStackWatchpoint:
.LFB45:
	.loc 1 426 0
.LVL98:
	entry	sp, 32
.LCFI15:
.LVL99:
	.loc 1 434 0
	addi	a11, a2, 31
.LVL100:
	.loc 1 435 0
	l32r	a13, .LC46
	movi.n	a12, 0x20
	movi.n	a8, -0x20
	and	a11, a11, a8
.LVL101:
	movi.n	a10, 1
	call8	esp_set_watchpoint
.LVL102:
	retw.n
.LFE45:
	.size	vPortSetStackWatchpoint, .-vPortSetStackWatchpoint
	.section	.text.xPortGetTickRateHz,"ax",@progbits
	.align	4
	.global	xPortGetTickRateHz
	.type	xPortGetTickRateHz, @function
xPortGetTickRateHz:
.LFB46:
	.loc 1 466 0
	entry	sp, 32
.LCFI16:
	.loc 1 468 0
	movi	a2, 0x64
	retw.n
.LFE46:
	.size	xPortGetTickRateHz, .-xPortGetTickRateHz
	.section	.rodata.__func__$5394,"a",@progbits
	.align	4
	.type	__func__$5394, @object
	.size	__func__$5394, 41
__func__$5394:
	.string	"vPortCPUReleaseMutexIntsDisabledInternal"
	.section	.rodata.__func__$5389,"a",@progbits
	.align	4
	.type	__func__$5389, @object
	.size	__func__$5389, 41
__func__$5389:
	.string	"vPortCPUAcquireMutexIntsDisabledInternal"
	.section	.rodata.__FUNCTION__$5373,"a",@progbits
	.align	4
	.type	__FUNCTION__$5373, @object
	.size	__FUNCTION__$5373, 19
__FUNCTION__$5373:
	.string	"vPortAssertIfInISR"
	.global	port_interruptNesting
	.section	.bss.port_interruptNesting,"aw",@nobits
	.align	4
	.type	port_interruptNesting, @object
	.size	port_interruptNesting, 8
port_interruptNesting:
	.zero	8
	.global	port_xSchedulerRunning
	.section	.bss.port_xSchedulerRunning,"aw",@nobits
	.align	4
	.type	port_xSchedulerRunning, @object
	.size	port_xSchedulerRunning, 8
port_xSchedulerRunning:
	.zero	8
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI0-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI1-.LFB27
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI4-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI5-.LFB31
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
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI7-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI8-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI9-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI10-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI11-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI12-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI13-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI14-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI15-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI16-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
	.text
.Letext0:
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/xtensa_context.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/projdefs.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/task.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/portmux_impl.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/log/include/esp_log.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/xtensa_timer.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_crosscore_int.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/xtensa/xtruntime.h"
	.file 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.file 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_panic.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf52
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0xc
	.4byte	.LASF114
	.4byte	.LASF115
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x5
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
	.byte	0x5
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x6
	.byte	0x4
	.4byte	0x90
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x7
	.byte	0x70
	.byte	0x6
	.byte	0x67
	.4byte	0x1e4
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x6
	.byte	0x68
	.4byte	0x73
	.byte	0
	.uleb128 0x9
	.string	"pc"
	.byte	0x6
	.byte	0x69
	.4byte	0x73
	.byte	0x4
	.uleb128 0x9
	.string	"ps"
	.byte	0x6
	.byte	0x6a
	.4byte	0x73
	.byte	0x8
	.uleb128 0x9
	.string	"a0"
	.byte	0x6
	.byte	0x6b
	.4byte	0x73
	.byte	0xc
	.uleb128 0x9
	.string	"a1"
	.byte	0x6
	.byte	0x6c
	.4byte	0x73
	.byte	0x10
	.uleb128 0x9
	.string	"a2"
	.byte	0x6
	.byte	0x6d
	.4byte	0x73
	.byte	0x14
	.uleb128 0x9
	.string	"a3"
	.byte	0x6
	.byte	0x6e
	.4byte	0x73
	.byte	0x18
	.uleb128 0x9
	.string	"a4"
	.byte	0x6
	.byte	0x6f
	.4byte	0x73
	.byte	0x1c
	.uleb128 0x9
	.string	"a5"
	.byte	0x6
	.byte	0x70
	.4byte	0x73
	.byte	0x20
	.uleb128 0x9
	.string	"a6"
	.byte	0x6
	.byte	0x71
	.4byte	0x73
	.byte	0x24
	.uleb128 0x9
	.string	"a7"
	.byte	0x6
	.byte	0x72
	.4byte	0x73
	.byte	0x28
	.uleb128 0x9
	.string	"a8"
	.byte	0x6
	.byte	0x73
	.4byte	0x73
	.byte	0x2c
	.uleb128 0x9
	.string	"a9"
	.byte	0x6
	.byte	0x74
	.4byte	0x73
	.byte	0x30
	.uleb128 0x9
	.string	"a10"
	.byte	0x6
	.byte	0x75
	.4byte	0x73
	.byte	0x34
	.uleb128 0x9
	.string	"a11"
	.byte	0x6
	.byte	0x76
	.4byte	0x73
	.byte	0x38
	.uleb128 0x9
	.string	"a12"
	.byte	0x6
	.byte	0x77
	.4byte	0x73
	.byte	0x3c
	.uleb128 0x9
	.string	"a13"
	.byte	0x6
	.byte	0x78
	.4byte	0x73
	.byte	0x40
	.uleb128 0x9
	.string	"a14"
	.byte	0x6
	.byte	0x79
	.4byte	0x73
	.byte	0x44
	.uleb128 0x9
	.string	"a15"
	.byte	0x6
	.byte	0x7a
	.4byte	0x73
	.byte	0x48
	.uleb128 0x9
	.string	"sar"
	.byte	0x6
	.byte	0x7b
	.4byte	0x73
	.byte	0x4c
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x6
	.byte	0x7c
	.4byte	0x73
	.byte	0x50
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x6
	.byte	0x7d
	.4byte	0x73
	.byte	0x54
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x6
	.byte	0x7f
	.4byte	0x73
	.byte	0x58
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x6
	.byte	0x80
	.4byte	0x73
	.byte	0x5c
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x6
	.byte	0x81
	.4byte	0x73
	.byte	0x60
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x6
	.byte	0x85
	.4byte	0x73
	.byte	0x64
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x6
	.byte	0x86
	.4byte	0x73
	.byte	0x68
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x6
	.byte	0x87
	.4byte	0x73
	.byte	0x6c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x6
	.byte	0x91
	.4byte	0x97
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x7
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x7
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x20b
	.uleb128 0xa
	.4byte	0x216
	.uleb128 0xb
	.4byte	0x81
	.byte	0
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x8
	.byte	0x4d
	.4byte	0x205
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF26
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x3
	.byte	0x6e
	.4byte	0x1ef
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x3
	.byte	0x6f
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x3
	.byte	0x70
	.4byte	0x25
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.byte	0x82
	.4byte	0x26a
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x3
	.byte	0x8a
	.4byte	0x1fa
	.byte	0
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x3
	.byte	0x8f
	.4byte	0x1fa
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x3
	.byte	0x94
	.4byte	0x249
	.uleb128 0xc
	.byte	0x4
	.byte	0x3
	.2byte	0x156
	.4byte	0x28c
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x3
	.2byte	0x158
	.4byte	0x28c
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x292
	.uleb128 0xe
	.4byte	0x228
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x3
	.2byte	0x167
	.4byte	0x275
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e4
	.uleb128 0x10
	.4byte	.LASF116
	.byte	0xc
	.byte	0x9
	.byte	0x97
	.4byte	0x2da
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x9
	.byte	0x99
	.4byte	0x81
	.byte	0
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x9
	.byte	0x9a
	.4byte	0x1fa
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x9
	.byte	0x9b
	.4byte	0x1fa
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x228
	.uleb128 0x11
	.byte	0x4
	.4byte	0x25
	.byte	0xb
	.byte	0x1f
	.4byte	0x311
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0x4
	.byte	0x2b
	.4byte	0x221
	.byte	0x3
	.4byte	0x389
	.uleb128 0x14
	.string	"mux"
	.byte	0x4
	.byte	0x2b
	.4byte	0x389
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x4
	.byte	0x2b
	.4byte	0x33
	.uleb128 0x16
	.string	"res"
	.byte	0x4
	.byte	0x30
	.4byte	0x1fa
	.uleb128 0x17
	.4byte	.LASF45
	.byte	0x4
	.byte	0x31
	.4byte	0x33
	.uleb128 0x17
	.4byte	.LASF46
	.byte	0x4
	.byte	0x31
	.4byte	0x33
	.uleb128 0x17
	.4byte	.LASF47
	.byte	0x4
	.byte	0x32
	.4byte	0x1fa
	.uleb128 0x17
	.4byte	.LASF48
	.byte	0x4
	.byte	0x33
	.4byte	0x221
	.uleb128 0x18
	.4byte	.LASF49
	.4byte	0x39f
	.4byte	.LASF55
	.uleb128 0x19
	.uleb128 0x17
	.4byte	.LASF50
	.byte	0x4
	.byte	0x5d
	.4byte	0x1fa
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x26a
	.uleb128 0x1a
	.4byte	0x90
	.4byte	0x39f
	.uleb128 0x1b
	.4byte	0x7a
	.byte	0x28
	.byte	0
	.uleb128 0x1c
	.4byte	0x38f
	.uleb128 0x1d
	.4byte	.LASF51
	.byte	0x2
	.byte	0xce
	.4byte	0x1fa
	.byte	0x3
	.4byte	0x3bf
	.uleb128 0x16
	.string	"id"
	.byte	0x2
	.byte	0xcf
	.4byte	0x33
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF52
	.byte	0x3
	.byte	0xf8
	.4byte	0x25
	.byte	0x3
	.4byte	0x3e8
	.uleb128 0x17
	.4byte	.LASF53
	.byte	0x3
	.byte	0xf9
	.4byte	0x25
	.uleb128 0x19
	.uleb128 0x17
	.4byte	.LASF54
	.byte	0x3
	.byte	0xf9
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0xa
	.byte	0x5c
	.4byte	0x221
	.byte	0x3
	.4byte	0x40f
	.uleb128 0x14
	.string	"mux"
	.byte	0xa
	.byte	0x5c
	.4byte	0x389
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0xa
	.byte	0x5c
	.4byte	0x33
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF57
	.byte	0x3
	.2byte	0x11c
	.byte	0x3
	.4byte	0x441
	.uleb128 0x1f
	.4byte	.LASF58
	.byte	0x3
	.2byte	0x11c
	.4byte	0x441
	.uleb128 0x1f
	.4byte	.LASF59
	.byte	0x3
	.2byte	0x11c
	.4byte	0x1fa
	.uleb128 0x20
	.string	"set"
	.byte	0x3
	.2byte	0x11c
	.4byte	0x44c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x447
	.uleb128 0xe
	.4byte	0x1fa
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1fa
	.uleb128 0x21
	.4byte	.LASF60
	.byte	0xa
	.byte	0x66
	.byte	0x3
	.4byte	0x46a
	.uleb128 0x14
	.string	"mux"
	.byte	0xa
	.byte	0x66
	.4byte	0x389
	.byte	0
	.uleb128 0x22
	.4byte	.LASF117
	.byte	0x1
	.byte	0x8d
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x515
	.uleb128 0x23
	.4byte	.LASF61
	.byte	0x1
	.byte	0x8d
	.4byte	0x216
	.4byte	.LLST0
	.uleb128 0x24
	.4byte	.LASF62
	.byte	0x1
	.byte	0x8d
	.4byte	0x81
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.LASF65
	.byte	0x1
	.byte	0x91
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.4byte	.LVL1
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x4bb
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL2
	.4byte	0xea3
	.4byte	0x4ce
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL4
	.4byte	0xeaf
	.uleb128 0x28
	.4byte	.LVL5
	.4byte	0xeba
	.4byte	0x50b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL6
	.4byte	0xec5
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF73
	.byte	0x1
	.byte	0x9b
	.4byte	0x2da
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x602
	.uleb128 0x23
	.4byte	.LASF63
	.byte	0x1
	.byte	0x9b
	.4byte	0x2da
	.4byte	.LLST1
	.uleb128 0x23
	.4byte	.LASF61
	.byte	0x1
	.byte	0x9b
	.4byte	0x216
	.4byte	.LLST2
	.uleb128 0x23
	.4byte	.LASF62
	.byte	0x1
	.byte	0x9b
	.4byte	0x81
	.4byte	.LLST3
	.uleb128 0x23
	.4byte	.LASF64
	.byte	0x1
	.byte	0x9b
	.4byte	0x233
	.4byte	.LLST4
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.byte	0xa0
	.4byte	0x2da
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2c
	.string	"tp"
	.byte	0x1
	.byte	0xa0
	.4byte	0x2da
	.4byte	.LLST5
	.uleb128 0x25
	.4byte	.LASF66
	.byte	0x1
	.byte	0xa1
	.4byte	0x2a3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.byte	0xa3
	.4byte	0x44c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x25
	.4byte	.LASF67
	.byte	0x1
	.byte	0xa5
	.4byte	0x44c
	.uleb128 0x4
	.byte	0x72
	.sleb128 112
	.byte	0x9f
	.uleb128 0x2d
	.4byte	.LASF68
	.byte	0x1
	.byte	0xa6
	.4byte	0x81
	.4byte	.LLST6
	.uleb128 0x2e
	.4byte	.LASF69
	.byte	0x1
	.byte	0xa7
	.4byte	0x33
	.uleb128 0x2e
	.4byte	.LASF70
	.byte	0x1
	.byte	0xa7
	.4byte	0x33
	.uleb128 0x2e
	.4byte	.LASF71
	.byte	0x1
	.byte	0xa7
	.4byte	0x33
	.uleb128 0x2d
	.4byte	.LASF72
	.byte	0x1
	.byte	0xa9
	.4byte	0x1fa
	.4byte	.LLST7
	.uleb128 0x2f
	.4byte	.LVL20
	.4byte	0xed0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF118
	.byte	0x1
	.byte	0xfa
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x102
	.4byte	0x233
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x66d
	.uleb128 0x32
	.4byte	0x3a4
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.byte	0x1
	.2byte	0x111
	.4byte	0x651
	.uleb128 0x33
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.uleb128 0x34
	.4byte	0x3b4
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL26
	.4byte	0xed9
	.uleb128 0x29
	.4byte	.LVL27
	.4byte	0xee4
	.uleb128 0x29
	.4byte	.LVL28
	.4byte	0xeef
	.byte	0
	.uleb128 0x31
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x11b
	.4byte	0x233
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a8
	.uleb128 0x35
	.string	"ret"
	.byte	0x1
	.2byte	0x11d
	.4byte	0x233
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.4byte	.LVL29
	.4byte	0xefa
	.uleb128 0x29
	.4byte	.LVL31
	.4byte	0xf06
	.byte	0
	.uleb128 0x36
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x12c
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6dd
	.uleb128 0x37
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x12c
	.4byte	0x233
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2f
	.4byte	.LVL33
	.4byte	0xf12
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x136
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x730
	.uleb128 0x37
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x136
	.4byte	0x730
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x37
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x136
	.4byte	0x741
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x136
	.4byte	0x2da
	.4byte	.LLST8
	.uleb128 0x38
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x136
	.4byte	0x1fa
	.4byte	.LLST9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x297
	.uleb128 0x6
	.byte	0x4
	.4byte	0x73c
	.uleb128 0x1c
	.4byte	0x2a9
	.uleb128 0x1c
	.4byte	0x736
	.uleb128 0x36
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x142
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x774
	.uleb128 0x37
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x142
	.4byte	0x730
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.4byte	.LVL39
	.4byte	0xf1d
	.byte	0
	.uleb128 0x39
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x14e
	.4byte	0x233
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x811
	.uleb128 0x3a
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x150
	.4byte	0x25
	.uleb128 0x35
	.string	"ret"
	.byte	0x1
	.2byte	0x151
	.4byte	0x233
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x32
	.4byte	0x3bf
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.byte	0x1
	.2byte	0x152
	.4byte	0x7e3
	.uleb128 0x33
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.uleb128 0x3b
	.4byte	0x3cf
	.4byte	.LLST10
	.uleb128 0x33
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.uleb128 0x3b
	.4byte	0x3db
	.4byte	.LLST10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x3a4
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x1
	.2byte	0x153
	.4byte	0x807
	.uleb128 0x33
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.uleb128 0x34
	.4byte	0x3b4
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL42
	.4byte	0xf29
	.byte	0
	.uleb128 0x39
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x15c
	.4byte	0x233
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x84c
	.uleb128 0x3c
	.4byte	0x3a4
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x1
	.2byte	0x15e
	.uleb128 0x33
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.uleb128 0x34
	.4byte	0x3b4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x161
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b4
	.uleb128 0x3e
	.4byte	.LASF87
	.4byte	0x8c4
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5373
	.uleb128 0x29
	.4byte	.LVL43
	.4byte	0x774
	.uleb128 0x28
	.4byte	.LVL44
	.4byte	0xf34
	.4byte	0x8aa
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x163
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5373
	.byte	0
	.uleb128 0x29
	.4byte	.LVL45
	.4byte	0xec5
	.byte	0
	.uleb128 0x1a
	.4byte	0x90
	.4byte	0x8c4
	.uleb128 0x1b
	.4byte	0x7a
	.byte	0x12
	.byte	0
	.uleb128 0x1c
	.4byte	0x8b4
	.uleb128 0x36
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x169
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ee
	.uleb128 0x3f
	.string	"mux"
	.byte	0x1
	.2byte	0x169
	.4byte	0x389
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x36
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x188
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa97
	.uleb128 0x3f
	.string	"mux"
	.byte	0x1
	.2byte	0x188
	.4byte	0x389
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3a
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x189
	.4byte	0x25
	.uleb128 0x32
	.4byte	0x3bf
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.byte	0x1
	.2byte	0x189
	.4byte	0x959
	.uleb128 0x33
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.uleb128 0x3b
	.4byte	0x3cf
	.4byte	.LLST12
	.uleb128 0x33
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.uleb128 0x3b
	.4byte	0x3db
	.4byte	.LLST12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x3e8
	.4byte	.LBB61
	.4byte	.LBE61-.LBB61
	.byte	0x1
	.2byte	0x18a
	.4byte	0xa8d
	.uleb128 0x40
	.4byte	0x403
	.sleb128 -1
	.uleb128 0x41
	.4byte	0x3f8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x42
	.4byte	0x311
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.byte	0xa
	.byte	0x62
	.uleb128 0x40
	.4byte	0x32c
	.sleb128 -1
	.uleb128 0x41
	.4byte	0x321
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x33
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.uleb128 0x3b
	.4byte	0x337
	.4byte	.LLST14
	.uleb128 0x3b
	.4byte	0x342
	.4byte	.LLST15
	.uleb128 0x3b
	.4byte	0x34d
	.4byte	.LLST16
	.uleb128 0x34
	.4byte	0x358
	.uleb128 0x43
	.4byte	0x363
	.byte	0
	.uleb128 0x44
	.4byte	0x36e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5389
	.uleb128 0x45
	.4byte	0x40f
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.byte	0x4
	.byte	0x56
	.4byte	0xa01
	.uleb128 0x41
	.4byte	0x434
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2463
	.sleb128 0
	.uleb128 0x40
	.4byte	0x428
	.sleb128 -1287651329
	.uleb128 0x41
	.4byte	0x41c
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x28
	.4byte	.LVL54
	.4byte	0xf3f
	.4byte	0xa30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5389
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.uleb128 0x28
	.4byte	.LVL60
	.4byte	0xf3f
	.4byte	0xa5f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6a
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5389
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL62
	.4byte	0xf3f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5389
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL63
	.4byte	0xf29
	.byte	0
	.uleb128 0x31
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x18e
	.4byte	0x221
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc88
	.uleb128 0x46
	.string	"mux"
	.byte	0x1
	.2byte	0x18e
	.4byte	0x389
	.4byte	.LLST17
	.uleb128 0x38
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x18e
	.4byte	0x33
	.4byte	.LLST18
	.uleb128 0x3a
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x18f
	.4byte	0x25
	.uleb128 0x3a
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x190
	.4byte	0x221
	.uleb128 0x32
	.4byte	0x3bf
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.byte	0x1
	.2byte	0x18f
	.4byte	0xb24
	.uleb128 0x33
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.uleb128 0x3b
	.4byte	0x3cf
	.4byte	.LLST19
	.uleb128 0x33
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.uleb128 0x3b
	.4byte	0x3db
	.4byte	.LLST19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x3e8
	.4byte	.LBB69
	.4byte	.LBE69-.LBB69
	.byte	0x1
	.2byte	0x190
	.4byte	0xc7e
	.uleb128 0x47
	.4byte	0x403
	.4byte	.LLST21
	.uleb128 0x47
	.4byte	0x3f8
	.4byte	.LLST22
	.uleb128 0x42
	.4byte	0x311
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.byte	0xa
	.byte	0x62
	.uleb128 0x47
	.4byte	0x32c
	.4byte	.LLST23
	.uleb128 0x47
	.4byte	0x321
	.4byte	.LLST24
	.uleb128 0x33
	.4byte	.LBB71
	.4byte	.LBE71-.LBB71
	.uleb128 0x3b
	.4byte	0x337
	.4byte	.LLST25
	.uleb128 0x3b
	.4byte	0x342
	.4byte	.LLST26
	.uleb128 0x3b
	.4byte	0x34d
	.4byte	.LLST27
	.uleb128 0x3b
	.4byte	0x358
	.4byte	.LLST28
	.uleb128 0x3b
	.4byte	0x363
	.4byte	.LLST29
	.uleb128 0x44
	.4byte	0x36e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5389
	.uleb128 0x45
	.4byte	0x40f
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.byte	0x4
	.byte	0x56
	.4byte	0xbdf
	.uleb128 0x41
	.4byte	0x434
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2932
	.sleb128 0
	.uleb128 0x40
	.4byte	0x428
	.sleb128 -1287651329
	.uleb128 0x47
	.4byte	0x41c
	.4byte	.LLST30
	.byte	0
	.uleb128 0x48
	.4byte	.Ldebug_ranges0+0
	.4byte	0xbf2
	.uleb128 0x3b
	.4byte	0x37c
	.4byte	.LLST31
	.byte	0
	.uleb128 0x28
	.4byte	.LVL76
	.4byte	0xf3f
	.4byte	0xc21
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5389
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.uleb128 0x28
	.4byte	.LVL82
	.4byte	0xf3f
	.4byte	0xc50
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6a
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5389
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL85
	.4byte	0xf3f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5389
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL89
	.4byte	0xf29
	.byte	0
	.uleb128 0x21
	.4byte	.LASF92
	.byte	0x4
	.byte	0x81
	.byte	0x3
	.4byte	0xcb8
	.uleb128 0x14
	.string	"mux"
	.byte	0x4
	.byte	0x81
	.4byte	0x389
	.uleb128 0x17
	.4byte	.LASF45
	.byte	0x4
	.byte	0x86
	.4byte	0x33
	.uleb128 0x18
	.4byte	.LASF49
	.4byte	0xcb8
	.4byte	.LASF92
	.byte	0
	.uleb128 0x1c
	.4byte	0x38f
	.uleb128 0x36
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x1a3
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xddf
	.uleb128 0x46
	.string	"mux"
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x389
	.4byte	.LLST32
	.uleb128 0x3a
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x1a4
	.4byte	0x25
	.uleb128 0x32
	.4byte	0x3bf
	.4byte	.LBB83
	.4byte	.LBE83-.LBB83
	.byte	0x1
	.2byte	0x1a4
	.4byte	0xd2a
	.uleb128 0x33
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.uleb128 0x3b
	.4byte	0x3cf
	.4byte	.LLST33
	.uleb128 0x33
	.4byte	.LBB85
	.4byte	.LBE85-.LBB85
	.uleb128 0x3b
	.4byte	0x3db
	.4byte	.LLST33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x452
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.byte	0x1
	.2byte	0x1a5
	.4byte	0xdd5
	.uleb128 0x47
	.4byte	0x45e
	.4byte	.LLST35
	.uleb128 0x42
	.4byte	0xc88
	.4byte	.LBB87
	.4byte	.LBE87-.LBB87
	.byte	0xa
	.byte	0x6d
	.uleb128 0x47
	.4byte	0xc94
	.4byte	.LLST36
	.uleb128 0x33
	.4byte	.LBB88
	.4byte	.LBE88-.LBB88
	.uleb128 0x34
	.4byte	0xc9f
	.uleb128 0x44
	.4byte	0xcaa
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5394
	.uleb128 0x28
	.4byte	.LVL93
	.4byte	0xf3f
	.4byte	0xda7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x9d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5394
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL96
	.4byte	0xf3f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa3
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5394
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL97
	.4byte	0xf29
	.byte	0
	.uleb128 0x36
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x1aa
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe3a
	.uleb128 0x37
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x81
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x49
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x33
	.4byte	.LLST37
	.uleb128 0x2f
	.4byte	.LVL102
	.4byte	0xf4a
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x72
	.sleb128 31
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x4
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x1fa
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.4byte	0x25
	.4byte	0xe60
	.uleb128 0x1b
	.4byte	0x7a
	.byte	0x1
	.byte	0
	.uleb128 0x4b
	.4byte	.LASF96
	.byte	0x1
	.byte	0x83
	.4byte	0xe50
	.uleb128 0x5
	.byte	0x3
	.4byte	port_xSchedulerRunning
	.uleb128 0x4b
	.4byte	.LASF97
	.byte	0x1
	.byte	0x84
	.4byte	0xe50
	.uleb128 0x5
	.byte	0x3
	.4byte	port_interruptNesting
	.uleb128 0x2e
	.4byte	.LASF69
	.byte	0x1
	.byte	0xa7
	.4byte	0x33
	.uleb128 0x2e
	.4byte	.LASF70
	.byte	0x1
	.byte	0xa7
	.4byte	0x33
	.uleb128 0x2e
	.4byte	.LASF71
	.byte	0x1
	.byte	0xa7
	.4byte	0x33
	.uleb128 0x4c
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x9
	.2byte	0x530
	.uleb128 0x4d
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0xb
	.byte	0x57
	.uleb128 0x4d
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0xb
	.byte	0x6b
	.uleb128 0x4d
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0xc
	.byte	0x47
	.uleb128 0x4e
	.4byte	.LASF121
	.4byte	.LASF121
	.uleb128 0x4d
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x1
	.byte	0x75
	.uleb128 0x4d
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0xd
	.byte	0x9b
	.uleb128 0x4d
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x1
	.byte	0x72
	.uleb128 0x4c
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x9
	.2byte	0x83a
	.uleb128 0x4c
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0x3
	.2byte	0x13d
	.uleb128 0x4d
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0xe
	.byte	0x28
	.uleb128 0x4c
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x3
	.2byte	0x17a
	.uleb128 0x4d
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0xf
	.byte	0x99
	.uleb128 0x4d
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x10
	.byte	0xde
	.uleb128 0x4d
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x11
	.byte	0x29
	.uleb128 0x4d
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0x12
	.byte	0x35
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4a
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LVL20-1
	.2byte	0x2
	.byte	0x72
	.sleb128 36
	.4byte	.LVL20-1
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18
	.4byte	.LVL20-1
	.2byte	0x2
	.byte	0x72
	.sleb128 40
	.4byte	.LVL20-1
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL8
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x7c
	.sleb128 -15
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL36
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL40
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL48
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL51
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x7
	.byte	0x78
	.sleb128 -1287651329
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL49
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x7
	.byte	0x7c
	.sleb128 0
	.byte	0xa
	.2byte	0x6666
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL52
	.4byte	.LVL54-1
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0xa
	.2byte	0x6666
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL64
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
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL64
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL73
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL88
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL65
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL85
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL65
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL73
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL88
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL65
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
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL65
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL73
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL88
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL65
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
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL72
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x7
	.byte	0x73
	.sleb128 -1287651329
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL67
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL76
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x7
	.byte	0x7c
	.sleb128 0
	.byte	0xa
	.2byte	0x6666
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x7
	.byte	0x7c
	.sleb128 0
	.byte	0xa
	.2byte	0x6666
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x7
	.byte	0x7c
	.sleb128 0
	.byte	0xa
	.2byte	0x6666
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL88
	.4byte	.LVL89-1
	.2byte	0x7
	.byte	0x7c
	.sleb128 0
	.byte	0xa
	.2byte	0x6666
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL68
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL74
	.4byte	.LVL76-1
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0xa
	.2byte	0x6666
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL85
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL66
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL76
	.4byte	.LVL82-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL82
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL85
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL65
	.4byte	.LVL73
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x2a
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL87
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x30
	.byte	0x2a
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x2a
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LFE43
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x30
	.byte	0x2a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL68
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
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL90
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL96
	.4byte	.LVL97-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL102-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL102-1
	.4byte	.LFE45
	.2byte	0x6
	.byte	0x72
	.sleb128 31
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x9c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB74
	.4byte	.LBE74
	.4byte	.LBB75
	.4byte	.LBE75
	.4byte	0
	.4byte	0
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
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"count"
.LASF55:
	.string	"vPortCPUAcquireMutexIntsDisabledInternal"
.LASF5:
	.string	"__uint8_t"
.LASF35:
	.string	"pvBaseAddress"
.LASF81:
	.string	"pxBottomOfStack"
.LASF70:
	.string	"_thread_local_end"
.LASF8:
	.string	"long long unsigned int"
.LASF18:
	.string	"lcount"
.LASF52:
	.string	"portENTER_CRITICAL_NESTED"
.LASF75:
	.string	"xPortSysTickHandler"
.LASF66:
	.string	"frame"
.LASF48:
	.string	"set_timeout"
.LASF57:
	.string	"uxPortCompareSet"
.LASF62:
	.string	"pvParameters"
.LASF86:
	.string	"xPortInterruptedFromISRContext"
.LASF19:
	.string	"tmp0"
.LASF20:
	.string	"tmp1"
.LASF21:
	.string	"tmp2"
.LASF42:
	.string	"ESP_LOG_DEBUG"
.LASF7:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF79:
	.string	"xMPUSettings"
.LASF56:
	.string	"vPortCPUAcquireMutexIntsDisabled"
.LASF96:
	.string	"port_xSchedulerRunning"
.LASF108:
	.string	"_xt_coproc_release"
.LASF110:
	.string	"ets_printf"
.LASF14:
	.string	"exccause"
.LASF53:
	.string	"state"
.LASF9:
	.string	"long int"
.LASF100:
	.string	"esp_log_write"
.LASF121:
	.string	"memcpy"
.LASF105:
	.string	"xTaskIncrementTick"
.LASF109:
	.string	"_xtos_set_intlevel"
.LASF28:
	.string	"BaseType_t"
.LASF64:
	.string	"xRunPrivileged"
.LASF32:
	.string	"portMUX_TYPE"
.LASF15:
	.string	"excvaddr"
.LASF115:
	.string	"/home/raphael/rtone/lcd/build/freertos"
.LASF82:
	.string	"usStackDepth"
.LASF89:
	.string	"vPortCPUAcquireMutex"
.LASF6:
	.string	"__uint32_t"
.LASF77:
	.string	"vPortYieldOtherCore"
.LASF54:
	.string	"__tmp"
.LASF97:
	.string	"port_interruptNesting"
.LASF0:
	.string	"unsigned int"
.LASF90:
	.string	"vPortCPUAcquireMutexTimeout"
.LASF84:
	.string	"xPortInIsrContext"
.LASF11:
	.string	"long unsigned int"
.LASF16:
	.string	"lbeg"
.LASF63:
	.string	"pxTopOfStack"
.LASF87:
	.string	"__FUNCTION__"
.LASF119:
	.string	"vPortAssertIfInISR"
.LASF33:
	.string	"coproc_area"
.LASF1:
	.string	"short unsigned int"
.LASF120:
	.string	"xPortGetTickRateHz"
.LASF68:
	.string	"task_thread_local_start"
.LASF72:
	.string	"thread_local_sz"
.LASF41:
	.string	"ESP_LOG_INFO"
.LASF92:
	.string	"vPortCPUReleaseMutexIntsDisabledInternal"
.LASF39:
	.string	"ESP_LOG_ERROR"
.LASF85:
	.string	"irqStatus"
.LASF51:
	.string	"xPortGetCoreID"
.LASF93:
	.string	"vPortCPUReleaseMutex"
.LASF103:
	.string	"_xt_tick_divisor_init"
.LASF10:
	.string	"sizetype"
.LASF76:
	.string	"coreid"
.LASF80:
	.string	"xRegions"
.LASF112:
	.string	"esp_set_watchpoint"
.LASF74:
	.string	"xPortStartScheduler"
.LASF45:
	.string	"coreID"
.LASF59:
	.string	"compare"
.LASF118:
	.string	"vPortEndScheduler"
.LASF36:
	.string	"ulLengthInBytes"
.LASF34:
	.string	"xMPU_SETTINGS"
.LASF22:
	.string	"XtExcFrame"
.LASF46:
	.string	"otherCoreID"
.LASF116:
	.string	"xMEMORY_REGION"
.LASF58:
	.string	"addr"
.LASF71:
	.string	"_rodata_start"
.LASF26:
	.string	"_Bool"
.LASF111:
	.string	"__assert_func"
.LASF3:
	.string	"unsigned char"
.LASF113:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF61:
	.string	"pxCode"
.LASF4:
	.string	"short int"
.LASF99:
	.string	"esp_log_timestamp"
.LASF107:
	.string	"esp_crosscore_int_send_yield"
.LASF50:
	.string	"ccount_now"
.LASF49:
	.string	"__func__"
.LASF44:
	.string	"timeout_cycles"
.LASF78:
	.string	"vPortStoreTaskMPUSettings"
.LASF117:
	.string	"vPortTaskWrapper"
.LASF83:
	.string	"vPortReleaseTaskMPUSettings"
.LASF24:
	.string	"uint32_t"
.LASF37:
	.string	"ulParameters"
.LASF30:
	.string	"owner"
.LASF106:
	.string	"_frxt_setup_switch"
.LASF38:
	.string	"ESP_LOG_NONE"
.LASF12:
	.string	"char"
.LASF43:
	.string	"ESP_LOG_VERBOSE"
.LASF69:
	.string	"_thread_local_start"
.LASF98:
	.string	"pcTaskGetTaskName"
.LASF101:
	.string	"abort"
.LASF114:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/port.c"
.LASF67:
	.string	"threadptr"
.LASF102:
	.string	"_xt_coproc_init"
.LASF27:
	.string	"StackType_t"
.LASF25:
	.string	"TaskFunction_t"
.LASF95:
	.string	"pxStackStart"
.LASF94:
	.string	"vPortSetStackWatchpoint"
.LASF88:
	.string	"vPortCPUInitializeMutex"
.LASF40:
	.string	"ESP_LOG_WARN"
.LASF13:
	.string	"exit"
.LASF73:
	.string	"pxPortInitialiseStack"
.LASF65:
	.string	"pcTaskName"
.LASF23:
	.string	"uint8_t"
.LASF60:
	.string	"vPortCPUReleaseMutexIntsDisabled"
.LASF29:
	.string	"UBaseType_t"
.LASF91:
	.string	"result"
.LASF104:
	.string	"_frxt_tick_timer_init"
.LASF17:
	.string	"lend"
.LASF47:
	.string	"ccount_start"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
