	.file	"tasks.c"
	.text
.Ltext0:
	.section	.text.prvTaskCheckFreeStackSpace,"ax",@progbits
	.align	4
	.type	prvTaskCheckFreeStackSpace, @function
prvTaskCheckFreeStackSpace:
.LFB67:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/tasks.c"
	.loc 1 3828 0
.LVL0:
	entry	sp, 32
.LCFI0:
	mov.n	a8, a2
.LVL1:
	.loc 1 3829 0
	movi.n	a2, 0
.LVL2:
	.loc 1 3831 0
	j	.L2
.LVL3:
.L3:
	.loc 1 3833 0
	addi.n	a8, a8, 1
.LVL4:
	.loc 1 3834 0
	addi.n	a2, a2, 1
.LVL5:
.L2:
	.loc 1 3831 0
	l8ui	a10, a8, 0
	movi	a9, 0xa5
	beq	a10, a9, .L3
	.loc 1 3840 0
	retw.n
.LFE67:
	.size	prvTaskCheckFreeStackSpace, .-prvTaskCheckFreeStackSpace
	.section	.text.prvResetNextTaskUnblockTime,"ax",@progbits
	.literal_position
	.literal .LC0, pxDelayedTaskList
	.literal .LC1, xNextTaskUnblockTime
	.align	4
	.type	prvResetNextTaskUnblockTime, @function
prvResetNextTaskUnblockTime:
.LFB72:
	.loc 1 3966 0
	entry	sp, 32
.LCFI1:
	.loc 1 3969 0
	l32r	a8, .LC0
	memw
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 0
	bnez.n	a8, .L5
	.loc 1 3976 0
	movi.n	a9, -1
	l32r	a8, .LC1
	memw
	s32i.n	a9, a8, 0
	retw.n
.L5:
	.loc 1 3984 0
	l32r	a8, .LC0
	memw
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 12
	l32i.n	a8, a8, 12
.LVL6:
	.loc 1 3985 0
	l32i.n	a9, a8, 8
	l32r	a8, .LC1
.LVL7:
	memw
	s32i.n	a9, a8, 0
	retw.n
.LFE72:
	.size	prvResetNextTaskUnblockTime, .-prvResetNextTaskUnblockTime
	.section	.text.prvTaskGetSnapshot,"ax",@progbits
	.align	4
	.type	prvTaskGetSnapshot, @function
prvTaskGetSnapshot:
.LFB96:
	.loc 1 5100 0
.LVL8:
	entry	sp, 32
.LCFI2:
	.loc 1 5101 0
	beqz.n	a4, .L7
	.loc 1 5104 0
	l32i.n	a8, a3, 0
	addx2	a8, a8, a8
	slli	a9, a8, 2
	add.n	a9, a2, a9
	s32i.n	a4, a9, 0
	.loc 1 5105 0
	l32i.n	a8, a3, 0
	addx2	a8, a8, a8
	slli	a10, a8, 2
	add.n	a10, a2, a10
	l32i.n	a8, a4, 0
	s32i.n	a8, a10, 4
	.loc 1 5108 0
	l32i.n	a8, a3, 0
	addx2	a8, a8, a8
	slli	a9, a8, 2
	add.n	a9, a2, a9
	l32i	a2, a4, 76
.LVL9:
	s32i.n	a2, a9, 8
	.loc 1 5115 0
	l32i.n	a2, a3, 0
	addi.n	a2, a2, 1
	s32i.n	a2, a3, 0
.L7:
	retw.n
.LFE96:
	.size	prvTaskGetSnapshot, .-prvTaskGetSnapshot
	.section	.text.prvTaskGetSnapshotsFromList,"ax",@progbits
	.align	4
	.type	prvTaskGetSnapshotsFromList, @function
prvTaskGetSnapshotsFromList:
.LFB97:
	.loc 1 5119 0
.LVL10:
	entry	sp, 48
.LCFI3:
	.loc 1 5122 0
	l32i.n	a6, a5, 0
	beqz.n	a6, .L9
.LVL11:
.LBB342:
	.loc 1 5124 0
	l32i.n	a6, a5, 4
	l32i.n	a6, a6, 4
	s32i.n	a6, a5, 4
	addi.n	a7, a5, 8
	bne	a6, a7, .L11
	.loc 1 5124 0 is_stmt 0 discriminator 1
	l32i.n	a6, a6, 4
	s32i.n	a6, a5, 4
.L11:
	.loc 1 5124 0 discriminator 3
	l32i.n	a6, a5, 4
	l32i.n	a6, a6, 12
	s32i.n	a6, sp, 0
.LVL12:
.L13:
.LBE342:
	.loc 1 5127 0 is_stmt 1
	l32i.n	a6, a3, 0
	bgeu	a6, a4, .L9
.LVL13:
.LBB343:
	.loc 1 5130 0
	l32i.n	a6, a5, 4
	l32i.n	a6, a6, 4
	s32i.n	a6, a5, 4
	bne	a7, a6, .L12
	.loc 1 5130 0 is_stmt 0 discriminator 1
	l32i.n	a6, a6, 4
	s32i.n	a6, a5, 4
.L12:
	.loc 1 5130 0 discriminator 3
	l32i.n	a6, a5, 4
	l32i.n	a6, a6, 12
.LVL14:
.LBE343:
	.loc 1 5131 0 is_stmt 1 discriminator 3
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a2
	call8	prvTaskGetSnapshot
.LVL15:
	.loc 1 5132 0 discriminator 3
	l32i.n	a8, sp, 0
	bne	a8, a6, .L13
.LVL16:
.L9:
	retw.n
.LFE97:
	.size	prvTaskGetSnapshotsFromList, .-prvTaskGetSnapshotsFromList
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC4:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/tasks.c"
	.align	4
.LC6:
	.string	"%s:%d (%s)- assert failed!\n"
	.section	.text.prvDeleteTLS,"ax",@progbits
	.literal_position
	.literal .LC2, __FUNCTION__$5857
	.literal .LC3, 3952
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.align	4
	.type	prvDeleteTLS, @function
prvDeleteTLS:
.LFB71:
	.loc 1 3951 0
.LVL17:
	entry	sp, 32
.LCFI4:
	.loc 1 3952 0
	bnez.n	a2, .L18
	.loc 1 3952 0 is_stmt 0 discriminator 1
	l32r	a13, .LC2
	l32r	a12, .LC3
	l32r	a11, .LC5
	l32r	a10, .LC7
	call8	ets_printf
.LVL18:
	call8	abort
.LVL19:
.L17:
.LBB344:
	.loc 1 3955 0 is_stmt 1
	addi	a8, a3, 24
	addx4	a8, a8, a2
	l32i.n	a9, a8, 4
	beqz.n	a9, .L16
	.loc 1 3957 0
	addi	a8, a3, 24
	addx4	a8, a8, a2
	l32i.n	a11, a8, 0
	mov.n	a10, a3
	callx8	a9
.LVL20:
.L16:
	.loc 1 3953 0 discriminator 2
	addi.n	a3, a3, 1
.LVL21:
	j	.L15
.LVL22:
.L18:
.LBE344:
	movi.n	a3, 0
.L15:
.LVL23:
.LBB345:
	.loc 1 3953 0 is_stmt 0 discriminator 1
	beqz.n	a3, .L17
.LBE345:
	.loc 1 3960 0 is_stmt 1
	retw.n
.LFE71:
	.size	prvDeleteTLS, .-prvDeleteTLS
	.section	.text.prvTaskIsTaskSuspended,"ax",@progbits
	.literal_position
	.literal .LC8, __FUNCTION__$5607
	.literal .LC9, .LC4
	.literal .LC10, .LC6
	.literal .LC11, xSuspendedTaskList
	.literal .LC12, xPendingReadyList
	.align	4
	.type	prvTaskIsTaskSuspended, @function
prvTaskIsTaskSuspended:
.LFB34:
	.loc 1 1870 0
.LVL24:
	entry	sp, 32
.LCFI5:
.LVL25:
	.loc 1 1878 0
	bnez.n	a2, .L20
	.loc 1 1878 0 is_stmt 0 discriminator 1
	l32r	a13, .LC8
	movi	a12, 0x756
	l32r	a11, .LC9
	l32r	a10, .LC10
	call8	ets_printf
.LVL26:
	call8	abort
.LVL27:
.L20:
	.loc 1 1881 0 is_stmt 1
	l32i.n	a9, a2, 24
	l32r	a8, .LC11
	bne	a9, a8, .L22
	.loc 1 1884 0
	l32i.n	a9, a2, 44
.LBB346:
.LBB347:
	.file 2 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h"
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL28:
#NO_APP
.LBE347:
.LBE346:
	.loc 1 1884 0
	addx4	a2, a2, a2
.LVL29:
	slli	a8, a2, 2
	l32r	a2, .LC12
	add.n	a2, a8, a2
	beq	a9, a2, .L23
	.loc 1 1888 0
	beqz.n	a9, .L24
	.loc 1 1871 0
	movi.n	a2, 0
	retw.n
.LVL30:
.L22:
	movi.n	a2, 0
.LVL31:
	retw.n
.L23:
	movi.n	a2, 0
	retw.n
.L24:
	.loc 1 1890 0
	movi.n	a2, 1
.LVL32:
	.loc 1 1908 0
	retw.n
.LFE34:
	.size	prvTaskIsTaskSuspended, .-prvTaskIsTaskSuspended
	.section	.text.prvInitialiseNewTask,"ax",@progbits
	.align	4
	.type	prvInitialiseNewTask, @function
prvInitialiseNewTask:
.LFB24:
	.loc 1 864 0
.LVL33:
	entry	sp, 48
.LCFI6:
	s32i.n	a2, sp, 0
	s32i.n	a5, sp, 4
	s32i.n	a7, sp, 8
	l32i.n	a2, sp, 48
.LVL34:
	.loc 1 886 0
	mov.n	a12, a4
	movi	a11, 0xa5
	l32i.n	a10, a2, 52
	call8	memset
.LVL35:
	.loc 1 896 0
	l32i.n	a8, a2, 52
	addi.n	a5, a4, -1
.LVL36:
	add.n	a5, a8, a5
.LVL37:
	.loc 1 897 0
	movi.n	a8, -4
	and	a5, a5, a8
.LVL38:
	.loc 1 904 0
	s32i	a5, a2, 76
.LVL39:
	.loc 1 922 0
	movi.n	a8, 0
	j	.L26
.LVL40:
.L28:
	.loc 1 924 0
	add.n	a9, a3, a8
	l8ui	a11, a9, 0
	add.n	a10, a2, a8
	s8i	a11, a10, 56
	.loc 1 929 0
	l8ui	a9, a9, 0
	beqz.n	a9, .L27
	.loc 1 922 0 discriminator 2
	addi.n	a8, a8, 1
.LVL41:
.L26:
	.loc 1 922 0 is_stmt 0 discriminator 1
	movi.n	a9, 0xf
	bgeu	a9, a8, .L28
.L27:
	.loc 1 941 0 is_stmt 1
	movi.n	a3, 0
.LVL42:
	s8i	a3, a2, 71
	.loc 1 945 0
	movi.n	a3, 0x18
	bgeu	a3, a6, .L29
	.loc 1 947 0
	mov.n	a6, a3
.LVL43:
.L29:
	.loc 1 954 0
	s32i.n	a6, a2, 48
	.loc 1 955 0
	l32i.n	a3, sp, 56
	s32i	a3, a2, 72
	.loc 1 958 0
	s32i	a6, a2, 88
	.loc 1 959 0
	movi.n	a3, 0
	s32i	a3, a2, 92
	.loc 1 963 0
	addi.n	a10, a2, 8
	call8	vListInitialiseItem
.LVL44:
	.loc 1 964 0
	addi	a10, a2, 28
	call8	vListInitialiseItem
.LVL45:
	.loc 1 968 0
	s32i.n	a2, a2, 20
	.loc 1 971 0
	movi.n	a8, 0x19
	sub	a6, a8, a6
.LVL46:
	s32i.n	a6, a2, 28
	.loc 1 972 0
	s32i.n	a2, a2, 40
	.loc 1 976 0
	s32i	a3, a2, 80
	.loc 1 994 0
	mov.n	a13, a4
	l32i.n	a12, a2, 52
	l32i.n	a11, sp, 52
	addi.n	a10, a2, 4
	call8	vPortStoreTaskMPUSettings
.LVL47:
	.loc 1 1005 0
	j	.L30
.LVL48:
.L31:
	.loc 1 1007 0 discriminator 3
	addi	a4, a3, 24
	addx4	a4, a4, a2
	movi.n	a6, 0
	s32i.n	a6, a4, 0
	.loc 1 1009 0 discriminator 3
	s32i.n	a6, a4, 4
	.loc 1 1005 0 discriminator 3
	addi.n	a3, a3, 1
.LVL49:
.L30:
	.loc 1 1005 0 is_stmt 0 discriminator 1
	beqz.n	a3, .L31
	.loc 1 1017 0 is_stmt 1
	movi.n	a3, 0
.LVL50:
	memw
	s32i	a3, a2, 344
	.loc 1 1018 0
	memw
	s32i	a3, a2, 348
	.loc 1 1025 0
	addi	a10, a2, 104
	call8	esp_reent_init
.LVL51:
	.loc 1 1041 0
	mov.n	a13, a3
	l32i.n	a12, sp, 4
	l32i.n	a11, sp, 0
	mov.n	a10, a5
	call8	pxPortInitialiseStack
.LVL52:
	s32i.n	a10, a2, 0
	.loc 1 1049 0
	l32i.n	a3, sp, 8
	beqz.n	a3, .L25
	.loc 1 1053 0
	s32i.n	a2, a7, 0
.L25:
	retw.n
.LFE24:
	.size	prvInitialiseNewTask, .-prvInitialiseNewTask
	.section	.text.prvInitialiseTaskLists,"ax",@progbits
	.literal_position
	.literal .LC13, pxReadyTasksLists
	.literal .LC14, xDelayedTaskList1
	.literal .LC15, xDelayedTaskList2
	.literal .LC16, xPendingReadyList
	.literal .LC17, xPendingReadyList+20
	.literal .LC18, xTasksWaitingTermination
	.literal .LC19, xSuspendedTaskList
	.literal .LC20, pxDelayedTaskList
	.literal .LC21, pxOverflowDelayedTaskList
	.align	4
	.type	prvInitialiseTaskLists, @function
prvInitialiseTaskLists:
.LFB63:
	.loc 1 3599 0
	entry	sp, 32
.LCFI7:
.LVL53:
	.loc 1 3602 0
	movi.n	a2, 0
	j	.L35
.LVL54:
.L36:
	.loc 1 3604 0 discriminator 3
	addx4	a9, a2, a2
	slli	a8, a9, 2
	l32r	a10, .LC13
	add.n	a10, a10, a8
	call8	vListInitialise
.LVL55:
	.loc 1 3602 0 discriminator 3
	addi.n	a2, a2, 1
.LVL56:
.L35:
	.loc 1 3602 0 is_stmt 0 discriminator 1
	movi.n	a8, 0x18
	bgeu	a8, a2, .L36
	.loc 1 3607 0 is_stmt 1
	l32r	a3, .LC14
	mov.n	a10, a3
	call8	vListInitialise
.LVL57:
	.loc 1 3608 0
	l32r	a2, .LC15
.LVL58:
	mov.n	a10, a2
	call8	vListInitialise
.LVL59:
	.loc 1 3609 0
	l32r	a10, .LC16
	call8	vListInitialise
.LVL60:
	.loc 1 3611 0
	l32r	a10, .LC17
	call8	vListInitialise
.LVL61:
	.loc 1 3616 0
	l32r	a10, .LC18
	call8	vListInitialise
.LVL62:
	.loc 1 3622 0
	l32r	a10, .LC19
	call8	vListInitialise
.LVL63:
	.loc 1 3628 0
	l32r	a8, .LC20
	memw
	s32i.n	a3, a8, 0
	.loc 1 3629 0
	l32r	a3, .LC21
	memw
	s32i.n	a2, a3, 0
	retw.n
.LFE63:
	.size	prvInitialiseTaskLists, .-prvInitialiseTaskLists
	.section	.text.prvDeleteTCB,"ax",@progbits
	.literal_position
	.literal .LC22, __FUNCTION__$5853
	.literal .LC23, 3938
	.literal .LC24, .LC4
	.literal .LC25, .LC6
	.align	4
	.type	prvDeleteTCB, @function
prvDeleteTCB:
.LFB70:
	.loc 1 3892 0
.LVL64:
	entry	sp, 32
.LCFI8:
	.loc 1 3901 0
	addi	a10, a2, 104
	call8	_reclaim_reent
.LVL65:
	.loc 1 3906 0
	addi.n	a10, a2, 4
	call8	vPortReleaseTaskMPUSettings
.LVL66:
	.loc 1 3921 0
	addmi	a8, a2, 0x100
	l8ui	a8, a8, 96
	bnez.n	a8, .L38
	.loc 1 3925 0
	l32i.n	a10, a2, 52
	call8	free
.LVL67:
	.loc 1 3926 0
	mov.n	a10, a2
	call8	free
.LVL68:
	retw.n
.L38:
	.loc 1 3928 0
	bnei	a8, 1, .L40
	.loc 1 3932 0
	mov.n	a10, a2
	call8	free
.LVL69:
	retw.n
.L40:
	.loc 1 3938 0
	beqi	a8, 2, .L37
	.loc 1 3938 0 is_stmt 0 discriminator 1
	l32r	a13, .LC22
	l32r	a12, .LC23
	l32r	a11, .LC24
	l32r	a10, .LC25
	call8	ets_printf
.LVL70:
	call8	abort
.LVL71:
.L37:
	retw.n
.LFE70:
	.size	prvDeleteTCB, .-prvDeleteTCB
	.section	.text.prvAddCurrentTaskToDelayedList,"ax",@progbits
	.literal_position
	.literal .LC26, pxCurrentTCB
	.literal .LC27, xTickCount
	.literal .LC28, pxOverflowDelayedTaskList
	.literal .LC29, pxDelayedTaskList
	.literal .LC30, xNextTaskUnblockTime
	.align	4
	.type	prvAddCurrentTaskToDelayedList, @function
prvAddCurrentTaskToDelayedList:
.LFB65:
	.loc 1 3694 0 is_stmt 1
.LVL72:
	entry	sp, 32
.LCFI9:
	.loc 1 3696 0
	l32r	a8, .LC26
	addx4	a8, a2, a8
	memw
	l32i.n	a8, a8, 0
	s32i.n	a3, a8, 8
	.loc 1 3698 0
	l32r	a8, .LC27
	memw
	l32i.n	a8, a8, 0
	bgeu	a3, a8, .L42
	.loc 1 3702 0
	l32r	a3, .LC28
.LVL73:
	memw
	l32i.n	a10, a3, 0
	l32r	a3, .LC26
	addx4	a2, a2, a3
.LVL74:
	memw
	l32i.n	a11, a2, 0
	addi.n	a11, a11, 8
	call8	vListInsert
.LVL75:
	retw.n
.LVL76:
.L42:
	.loc 1 3708 0
	l32r	a8, .LC29
	memw
	l32i.n	a10, a8, 0
	l32r	a8, .LC26
	addx4	a2, a2, a8
.LVL77:
	memw
	l32i.n	a11, a2, 0
	addi.n	a11, a11, 8
	call8	vListInsert
.LVL78:
	.loc 1 3713 0
	l32r	a2, .LC30
	memw
	l32i.n	a2, a2, 0
	bgeu	a3, a2, .L41
	.loc 1 3715 0
	l32r	a2, .LC30
	memw
	s32i.n	a3, a2, 0
.L41:
	retw.n
.LFE65:
	.size	prvAddCurrentTaskToDelayedList, .-prvAddCurrentTaskToDelayedList
	.section	.text.taskYIELD_OTHER_CORE,"ax",@progbits
	.literal_position
	.literal .LC31, pxCurrentTCB
	.literal .LC32, 2147483647
	.align	4
	.global	taskYIELD_OTHER_CORE
	.type	taskYIELD_OTHER_CORE, @function
taskYIELD_OTHER_CORE:
.LFB21:
	.loc 1 647 0
.LVL79:
	entry	sp, 32
.LCFI10:
	.loc 1 648 0
	l32r	a8, .LC31
	addx4	a8, a2, a8
	memw
	l32i.n	a9, a8, 0
.LVL80:
	.loc 1 651 0
	l32r	a8, .LC32
	beq	a2, a8, .L49
	.loc 1 652 0
	l32i.n	a8, a9, 48
	bgeu	a8, a3, .L44
	.loc 1 653 0
	mov.n	a10, a2
	call8	vPortYieldOtherCore
.LVL81:
	retw.n
.LVL82:
.L48:
.LBB348:
.LBB349:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL83:
#NO_APP
.LBE349:
.LBE348:
	.loc 1 660 0
	beq	a10, a2, .L47
	.loc 1 660 0 is_stmt 0 discriminator 1
	l32r	a2, .LC31
.LVL84:
	addx4	a2, a10, a2
	memw
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 48
	bgeu	a2, a3, .L47
	.loc 1 662 0 is_stmt 1
	call8	vPortYieldOtherCore
.LVL85:
	.loc 1 663 0
	retw.n
.LVL86:
.L47:
	.loc 1 659 0 discriminator 2
	addi.n	a10, a10, 1
.LVL87:
	j	.L45
.LVL88:
.L49:
	movi.n	a10, 0
.LVL89:
.L45:
	.loc 1 659 0 is_stmt 0 discriminator 1
	blti	a10, 2, .L48
.LVL90:
.L44:
	retw.n
.LFE21:
	.size	taskYIELD_OTHER_CORE, .-taskYIELD_OTHER_CORE
	.section	.text.vTaskEndScheduler,"ax",@progbits
	.literal_position
	.literal .LC33, xSchedulerRunning
	.align	4
	.global	vTaskEndScheduler
	.type	vTaskEndScheduler, @function
vTaskEndScheduler:
.LFB38:
	.loc 1 2107 0 is_stmt 1
	entry	sp, 32
.LCFI11:
.LBB350:
	.loc 1 2111 0
#APP
# 2111 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/tasks.c" 1
	rsil	a8, 3

# 0 "" 2
.LVL91:
#NO_APP
.LBE350:
	.loc 1 2112 0
	movi.n	a9, 0
	l32r	a8, .LC33
	memw
	s32i.n	a9, a8, 0
	.loc 1 2113 0
	call8	vPortEndScheduler
.LVL92:
	retw.n
.LFE38:
	.size	vTaskEndScheduler, .-vTaskEndScheduler
	.section	.text.vTaskSuspendAll,"ax",@progbits
	.literal_position
	.literal .LC34, uxSchedulerSuspended
	.align	4
	.global	vTaskSuspendAll
	.type	vTaskSuspendAll, @function
vTaskSuspendAll:
.LFB40:
	.loc 1 2135 0
	entry	sp, 32
.LCFI12:
.LBB351:
.LBB352:
.LBB353:
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h"
	.loc 3 249 0
#APP
# 249 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h" 1
	rsil	a10, 3

# 0 "" 2
.LVL93:
#NO_APP
.LBE353:
.LBE352:
.LBE351:
.LBB354:
.LBB355:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE355:
.LBE354:
	.loc 1 2143 0
	l32r	a9, .LC34
	addx4	a8, a8, a9
	memw
	l32i.n	a9, a8, 0
	addi.n	a9, a9, 1
	memw
	s32i.n	a9, a8, 0
	.loc 1 2144 0
	call8	_xtos_set_intlevel
.LVL94:
	retw.n
.LFE40:
	.size	vTaskSuspendAll, .-vTaskSuspendAll
	.section	.text.xTaskGetTickCount,"ax",@progbits
	.literal_position
	.literal .LC35, xTickCount
	.align	4
	.global	xTaskGetTickCount
	.type	xTaskGetTickCount, @function
xTaskGetTickCount:
.LFB42:
	.loc 1 2305 0
	entry	sp, 32
.LCFI13:
	.loc 1 2306 0
	l32r	a2, .LC35
	memw
	l32i.n	a2, a2, 0
	.loc 1 2307 0
	retw.n
.LFE42:
	.size	xTaskGetTickCount, .-xTaskGetTickCount
	.section	.text.xTaskGetTickCountFromISR,"ax",@progbits
	.literal_position
	.literal .LC36, xTickCount
	.align	4
	.global	xTaskGetTickCountFromISR
	.type	xTaskGetTickCountFromISR, @function
xTaskGetTickCountFromISR:
.LFB43:
	.loc 1 2311 0
	entry	sp, 32
.LCFI14:
	.loc 1 2312 0
	l32r	a2, .LC36
	memw
	l32i.n	a2, a2, 0
	.loc 1 2313 0
	retw.n
.LFE43:
	.size	xTaskGetTickCountFromISR, .-xTaskGetTickCountFromISR
	.section	.text.uxTaskGetNumberOfTasks,"ax",@progbits
	.literal_position
	.literal .LC37, uxCurrentNumberOfTasks
	.align	4
	.global	uxTaskGetNumberOfTasks
	.type	uxTaskGetNumberOfTasks, @function
uxTaskGetNumberOfTasks:
.LFB44:
	.loc 1 2317 0
	entry	sp, 32
.LCFI15:
	.loc 1 2320 0
	l32r	a2, .LC37
	memw
	l32i.n	a2, a2, 0
	.loc 1 2321 0
	retw.n
.LFE44:
	.size	uxTaskGetNumberOfTasks, .-uxTaskGetNumberOfTasks
	.section	.text.xTaskGetIdleTaskHandle,"ax",@progbits
	.literal_position
	.literal .LC38, xIdleTaskHandle
	.literal .LC39, __FUNCTION__$5672
	.literal .LC40, 2417
	.literal .LC41, .LC4
	.literal .LC42, .LC6
	.align	4
	.global	xTaskGetIdleTaskHandle
	.type	xTaskGetIdleTaskHandle, @function
xTaskGetIdleTaskHandle:
.LFB46:
	.loc 1 2414 0
	entry	sp, 32
.LCFI16:
.LBB356:
.LBB357:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE357:
.LBE356:
	.loc 1 2417 0
	l32r	a9, .LC38
	addx4	a8, a8, a9
	l32i.n	a8, a8, 0
	bnez.n	a8, .L56
	.loc 1 2417 0 discriminator 1
	l32r	a13, .LC39
	l32r	a12, .LC40
	l32r	a11, .LC41
	l32r	a10, .LC42
	call8	ets_printf
.LVL95:
	call8	abort
.LVL96:
.L56:
.LBB358:
.LBB359:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE359:
.LBE358:
	.loc 1 2418 0
	l32r	a9, .LC38
	addx4	a8, a8, a9
	.loc 1 2419 0
	l32i.n	a2, a8, 0
	retw.n
.LFE46:
	.size	xTaskGetIdleTaskHandle, .-xTaskGetIdleTaskHandle
	.section	.text.xTaskGetIdleTaskHandleForCPU,"ax",@progbits
	.literal_position
	.literal .LC43, xIdleTaskHandle
	.literal .LC44, __FUNCTION__$5677
	.literal .LC45, 2427
	.literal .LC46, .LC4
	.literal .LC47, .LC6
	.align	4
	.global	xTaskGetIdleTaskHandleForCPU
	.type	xTaskGetIdleTaskHandleForCPU, @function
xTaskGetIdleTaskHandleForCPU:
.LFB47:
	.loc 1 2422 0
.LVL97:
	entry	sp, 32
.LCFI17:
.LVL98:
	.loc 1 2426 0
	bgeui	a2, 2, .L59
	.loc 1 2427 0
	l32r	a8, .LC43
	addx4	a2, a2, a8
.LVL99:
	l32i.n	a2, a2, 0
	bnez.n	a2, .L58
	.loc 1 2427 0 discriminator 1
	l32r	a13, .LC44
	l32r	a12, .LC45
	l32r	a11, .LC46
	l32r	a10, .LC47
	call8	ets_printf
.LVL100:
	call8	abort
.LVL101:
.L59:
	.loc 1 2423 0
	movi.n	a2, 0
.LVL102:
.L58:
	.loc 1 2431 0
	retw.n
.LFE47:
	.size	xTaskGetIdleTaskHandleForCPU, .-xTaskGetIdleTaskHandleForCPU
	.section	.text.vTaskSwitchContext,"ax",@progbits
	.literal_position
	.literal .LC48, uxSchedulerSuspended
	.literal .LC49, xYieldPending
	.literal .LC50, xSwitchingContext
	.literal .LC51, pxCurrentTCB
	.literal .LC52, ucExpectedStackBytes$5694
	.literal .LC53, xTaskQueueMutex
	.literal .LC54, uxTopReadyPriority
	.literal .LC55, pxReadyTasksLists
	.literal .LC56, 2147483647
	.align	4
	.global	vTaskSwitchContext
	.type	vTaskSwitchContext, @function
vTaskSwitchContext:
.LFB49:
	.loc 1 2752 0
	entry	sp, 32
.LCFI18:
.LBB360:
.LBB361:
.LBB362:
	.loc 3 249 0
#APP
# 249 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h" 1
	rsil	a2, 3

# 0 "" 2
.LVL103:
#NO_APP
.LBE362:
.LBE361:
.LBE360:
.LBB363:
.LBB364:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
#NO_APP
.LBE364:
.LBE363:
	.loc 1 2757 0
	l32r	a4, .LC48
	addx4	a3, a3, a4
	memw
	l32i.n	a3, a3, 0
	beqz.n	a3, .L61
.LBB365:
.LBB366:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
#NO_APP
.LBE366:
.LBE365:
	.loc 1 2761 0
	l32r	a4, .LC49
	addx4	a3, a3, a4
	movi.n	a4, 1
	memw
	s32i.n	a4, a3, 0
	j	.L62
.L61:
.LBB367:
.LBB368:
.LBB369:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
#NO_APP
.LBE369:
.LBE368:
	.loc 1 2765 0
	l32r	a4, .LC49
	addx4	a3, a3, a4
	movi.n	a4, 0
	memw
	s32i.n	a4, a3, 0
.LBB370:
.LBB371:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
#NO_APP
.LBE371:
.LBE370:
	.loc 1 2766 0
	l32r	a4, .LC50
	addx4	a3, a3, a4
	movi.n	a4, 1
	memw
	s32i.n	a4, a3, 0
.LBB372:
.LBB373:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
#NO_APP
.LBE373:
.LBE372:
	.loc 1 2799 0
	l32r	a4, .LC51
	addx4	a3, a3, a4
	memw
	l32i.n	a3, a3, 0
	l32i.n	a5, a3, 0
.LBB374:
.LBB375:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL104:
#NO_APP
.LBE375:
.LBE374:
	.loc 1 2799 0
	addx4	a3, a3, a4
.LVL105:
	memw
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 52
	bltu	a3, a5, .L63
.LBB376:
.LBB377:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
#NO_APP
.LBE377:
.LBE376:
	.loc 1 2799 0
	addx4	a3, a3, a4
	memw
	l32i.n	a10, a3, 0
.LBB378:
.LBB379:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL106:
#NO_APP
.LBE379:
.LBE378:
	.loc 1 2799 0
	addx4	a3, a3, a4
.LVL107:
	memw
	l32i.n	a11, a3, 0
	addi	a11, a11, 56
	call8	vApplicationStackOverflowHook
.LVL108:
.L63:
.LBB380:
.LBB381:
.LBB382:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
#NO_APP
.LBE382:
.LBE381:
	.loc 1 2800 0
	l32r	a4, .LC51
	addx4	a3, a3, a4
	memw
	l32i.n	a3, a3, 0
	movi.n	a12, 0x14
	l32r	a11, .LC52
	l32i.n	a10, a3, 52
	call8	memcmp
.LVL109:
	beqz.n	a10, .L64
.LBB383:
.LBB384:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
#NO_APP
.LBE384:
.LBE383:
	.loc 1 2800 0
	addx4	a3, a3, a4
	memw
	l32i.n	a10, a3, 0
.LBB385:
.LBB386:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL110:
#NO_APP
.LBE386:
.LBE385:
	.loc 1 2800 0
	addx4	a3, a3, a4
.LVL111:
	memw
	l32i.n	a11, a3, 0
	addi	a11, a11, 56
	call8	vApplicationStackOverflowHook
.LVL112:
.L64:
.LBE380:
	.loc 1 2812 0
	l32r	a10, .LC53
	call8	vPortCPUAcquireMutex
.LVL113:
	.loc 1 2816 0
	l32r	a3, .LC54
	memw
	l32i.n	a8, a3, 0
.LVL114:
	.loc 1 2817 0
	movi.n	a15, 0
	.loc 1 2815 0
	mov.n	a3, a15
	.loc 1 2827 0
	j	.L65
.LVL115:
.L81:
	.loc 1 2831 0
	addx4	a5, a8, a8
	slli	a4, a5, 2
	l32r	a5, .LC55
	add.n	a4, a5, a4
	l32i.n	a4, a4, 0
	beqz.n	a4, .L66
.LVL116:
.LBB387:
	.loc 1 2842 0
	slli	a4, a8, 2
	add.n	a4, a4, a8
	slli	a3, a4, 2
	add.n	a12, a5, a3
	l32i.n	a3, a12, 4
	l32i.n	a13, a3, 12
.LVL117:
	.loc 1 2844 0
	addi.n	a12, a12, 8
	bne	a3, a12, .L67
.LVL118:
.LBB388:
	.loc 1 2846 0
	l32i.n	a4, a3, 4
	addx4	a5, a8, a8
	slli	a3, a5, 2
	l32r	a5, .LC55
	add.n	a3, a5, a3
	s32i.n	a4, a3, 4
	bne	a12, a4, .L68
	.loc 1 2846 0 is_stmt 0 discriminator 1
	l32i.n	a5, a4, 4
	addx4	a4, a8, a8
	slli	a3, a4, 2
	l32r	a4, .LC55
	add.n	a3, a4, a3
	s32i.n	a5, a3, 4
.L68:
	.loc 1 2846 0 discriminator 3
	addx4	a4, a8, a8
	slli	a3, a4, 2
	l32r	a4, .LC55
	add.n	a3, a4, a3
	l32i.n	a3, a3, 4
	l32i.n	a13, a3, 12
.LVL119:
.L67:
.LBE388:
.LBE387:
.LBE367:
	.loc 1 2752 0 is_stmt 1
	movi.n	a14, 0
.LVL120:
.L79:
.LBB404:
.LBB401:
.LBB389:
.LBB390:
	.loc 1 2850 0
	slli	a9, a8, 2
	add.n	a9, a9, a8
	slli	a3, a9, 2
	l32r	a4, .LC55
	add.n	a3, a4, a3
	l32i.n	a4, a3, 4
	l32i.n	a9, a4, 4
	s32i.n	a9, a3, 4
	bne	a12, a9, .L69
	.loc 1 2850 0 is_stmt 0 discriminator 1
	l32i.n	a5, a9, 4
	addx4	a4, a8, a8
	slli	a3, a4, 2
	l32r	a4, .LC55
	add.n	a3, a4, a3
	s32i.n	a5, a3, 4
.L69:
	.loc 1 2850 0 discriminator 3
	addx4	a4, a8, a8
	slli	a3, a4, 2
	l32r	a4, .LC55
	add.n	a3, a4, a3
	l32i.n	a3, a3, 4
	l32i.n	a11, a3, 12
.LVL121:
.LBE390:
	.loc 1 2855 0 is_stmt 1 discriminator 3
	movi.n	a9, 0
	j	.L70
.LVL122:
.L73:
.LBB391:
.LBB392:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL123:
#NO_APP
.LBE392:
.LBE391:
	.loc 1 2856 0
	beq	a9, a3, .L71
	.loc 1 2858 0
	l32r	a3, .LC51
.LVL124:
	addx4	a3, a9, a3
	memw
	l32i.n	a3, a3, 0
	beq	a11, a3, .L82
.L71:
	.loc 1 2855 0 discriminator 2
	addi.n	a9, a9, 1
.LVL125:
.L70:
	.loc 1 2855 0 is_stmt 0 discriminator 1
	blti	a9, 2, .L73
	.loc 1 2853 0 is_stmt 1
	movi.n	a3, 1
	j	.L72
.L82:
	.loc 1 2859 0
	movi.n	a15, 1
.LVL126:
	.loc 1 2860 0
	movi.n	a3, 0
.L72:
.LVL127:
	.loc 1 2865 0
	bnei	a3, 1, .L83
	.loc 1 2870 0
	l32i	a3, a11, 72
.LVL128:
	l32r	a4, .LC56
	bne	a3, a4, .L75
.LBB393:
.LBB394:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
#NO_APP
.LBE394:
.LBE393:
	.loc 1 2871 0
	l32r	a4, .LC51
	addx4	a3, a3, a4
	memw
	s32i.n	a11, a3, 0
.LVL129:
	.loc 1 2872 0
	movi.n	a3, 1
	j	.L74
.LVL130:
.L75:
.LBB395:
.LBB396:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a4
 extui a4,a4,13,1
# 0 "" 2
.LVL131:
#NO_APP
.LBE396:
.LBE395:
	.loc 1 2873 0
	bne	a3, a4, .L84
.LBB397:
.LBB398:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
#NO_APP
.LBE398:
.LBE397:
	.loc 1 2874 0
	l32r	a4, .LC51
.LVL132:
	addx4	a3, a3, a4
	memw
	s32i.n	a11, a3, 0
.LVL133:
	.loc 1 2875 0
	movi.n	a3, 1
	j	.L74
.LVL134:
.L83:
	.loc 1 2881 0
	movi.n	a3, 0
.LVL135:
	j	.L74
.LVL136:
.L84:
	.loc 1 2878 0
	movi.n	a15, 1
.LVL137:
	.loc 1 2877 0
	movi.n	a3, 0
.LVL138:
.L74:
	.loc 1 2884 0
	beqz.n	a3, .L85
	.loc 1 2886 0
	bnone	a3, a14, .L76
.LVL139:
.L78:
.LBB399:
.LBB400:
	.loc 1 2889 0
	slli	a10, a8, 2
	add.n	a10, a10, a8
	slli	a9, a10, 2
	l32r	a10, .LC55
	add.n	a9, a10, a9
	l32i.n	a10, a9, 4
	l32i.n	a10, a10, 4
	s32i.n	a10, a9, 4
	bne	a12, a10, .L77
	.loc 1 2889 0 is_stmt 0 discriminator 1
	l32i.n	a9, a10, 4
	addx4	a5, a8, a8
	slli	a4, a5, 2
	l32r	a5, .LC55
	add.n	a4, a5, a4
	s32i.n	a9, a4, 4
.L77:
	.loc 1 2889 0 discriminator 3
	addx4	a10, a8, a8
	slli	a9, a10, 2
	l32r	a10, .LC55
	add.n	a9, a10, a9
	l32i.n	a9, a9, 4
	l32i.n	a9, a9, 12
.LVL140:
.LBE400:
	.loc 1 2890 0 is_stmt 1 discriminator 3
	bne	a9, a13, .L78
	j	.L76
.LVL141:
.L85:
.LBE399:
	.loc 1 2885 0
	movi.n	a14, 1
.LVL142:
.L76:
.LBE389:
	.loc 1 2892 0
	movi.n	a4, 1
	movi.n	a10, 0
	mov.n	a5, a10
	moveqz	a5, a4, a3
	sub	a9, a11, a13
	mov.n	a11, a10
.LVL143:
	movnez	a11, a4, a9
	bany	a11, a5, .L79
	j	.L80
.LVL144:
.L66:
.LBE401:
	.loc 1 2894 0
	bnez.n	a15, .L80
	.loc 1 2894 0 is_stmt 0 discriminator 1
	l32r	a5, .LC54
	memw
	l32i.n	a4, a5, 0
	addi.n	a4, a4, -1
	memw
	s32i.n	a4, a5, 0
.LVL145:
.L80:
	.loc 1 2896 0 is_stmt 1
	addi.n	a8, a8, -1
.LVL146:
.L65:
	.loc 1 2827 0
	movi.n	a5, 0
	movi.n	a4, 1
	moveqz	a5, a4, a3
	movi.n	a4, -1
	xor	a4, a4, a8
	extui	a4, a4, 31, 1
	bany	a5, a4, .L81
.LBB402:
.LBB403:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL147:
#NO_APP
.LBE403:
.LBE402:
	.loc 1 2900 0
	l32r	a4, .LC50
	addx4	a3, a3, a4
	movi.n	a4, 0
	memw
	s32i.n	a4, a3, 0
	.loc 1 2907 0
	l32r	a10, .LC53
	call8	vPortCPUReleaseMutex
.LVL148:
.L62:
.LBE404:
	.loc 1 2915 0
	mov.n	a10, a2
	call8	_xtos_set_intlevel
.LVL149:
	retw.n
.LFE49:
	.size	vTaskSwitchContext, .-vTaskSwitchContext
	.section	.text.vTaskSetTimeOutState,"ax",@progbits
	.literal_position
	.literal .LC57, __FUNCTION__$5758
	.literal .LC58, 3251
	.literal .LC59, .LC4
	.literal .LC60, .LC6
	.literal .LC61, xNumOfOverflows
	.literal .LC62, xTickCount
	.align	4
	.global	vTaskSetTimeOutState
	.type	vTaskSetTimeOutState, @function
vTaskSetTimeOutState:
.LFB55:
	.loc 1 3250 0
.LVL150:
	entry	sp, 32
.LCFI19:
	.loc 1 3251 0
	bnez.n	a2, .L87
	.loc 1 3251 0 is_stmt 0 discriminator 1
	l32r	a13, .LC57
	l32r	a12, .LC58
	l32r	a11, .LC59
	l32r	a10, .LC60
	call8	ets_printf
.LVL151:
	call8	abort
.LVL152:
.L87:
	.loc 1 3252 0 is_stmt 1
	l32r	a8, .LC61
	memw
	l32i.n	a8, a8, 0
	s32i.n	a8, a2, 0
	.loc 1 3253 0
	l32r	a8, .LC62
	memw
	l32i.n	a8, a8, 0
	s32i.n	a8, a2, 4
	retw.n
.LFE55:
	.size	vTaskSetTimeOutState, .-vTaskSetTimeOutState
	.section	.text.vTaskMissedYield,"ax",@progbits
	.literal_position
	.literal .LC63, xYieldPending
	.align	4
	.global	vTaskMissedYield
	.type	vTaskMissedYield, @function
vTaskMissedYield:
.LFB57:
	.loc 1 3307 0
	entry	sp, 32
.LCFI20:
.LBB405:
.LBB406:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE406:
.LBE405:
	.loc 1 3308 0
	l32r	a9, .LC63
	addx4	a8, a8, a9
	movi.n	a9, 1
	memw
	s32i.n	a9, a8, 0
	retw.n
.LFE57:
	.size	vTaskMissedYield, .-vTaskMissedYield
	.section	.rodata.str1.4
	.align	4
.LC65:
	.string	"Untested FreeRTOS function %s\r\n"
	.section	.text.vTaskAllocateMPURegions,"ax",@progbits
	.literal_position
	.literal .LC64, __FUNCTION__$5799
	.literal .LC66, .LC65
	.literal .LC67, 3588
	.literal .LC68, .LC4
	.literal .LC69, .LC6
	.align	4
	.global	vTaskAllocateMPURegions
	.type	vTaskAllocateMPURegions, @function
vTaskAllocateMPURegions:
.LFB62:
	.loc 1 3585 0
.LVL153:
	entry	sp, 32
.LCFI21:
	.loc 1 3588 0
	l32r	a2, .LC64
.LVL154:
	mov.n	a11, a2
	l32r	a10, .LC66
	call8	ets_printf
.LVL155:
	.loc 1 3588 0
	mov.n	a13, a2
	l32r	a12, .LC67
	l32r	a11, .LC68
	l32r	a10, .LC69
	call8	ets_printf
.LVL156:
	call8	abort
.LVL157:
.LFE62:
	.size	vTaskAllocateMPURegions, .-vTaskAllocateMPURegions
	.section	.text.xTaskGetCurrentTaskHandle,"ax",@progbits
	.literal_position
	.literal .LC70, pxCurrentTCB
	.align	4
	.global	xTaskGetCurrentTaskHandle
	.type	xTaskGetCurrentTaskHandle, @function
xTaskGetCurrentTaskHandle:
.LFB73:
	.loc 1 3993 0
	entry	sp, 32
.LCFI22:
.LBB407:
.LBB408:
.LBB409:
	.loc 3 249 0
#APP
# 249 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h" 1
	rsil	a10, 3

# 0 "" 2
.LVL158:
#NO_APP
.LBE409:
.LBE408:
.LBE407:
.LBB410:
.LBB411:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE411:
.LBE410:
	.loc 1 3998 0
	l32r	a2, .LC70
	addx4	a8, a8, a2
	memw
	l32i.n	a2, a8, 0
.LVL159:
	.loc 1 3999 0
	call8	_xtos_set_intlevel
.LVL160:
	.loc 1 4002 0
	retw.n
.LFE73:
	.size	xTaskGetCurrentTaskHandle, .-xTaskGetCurrentTaskHandle
	.section	.text.__getreent,"ax",@progbits
	.literal_position
	.literal .LC71, _global_impure_ptr
	.align	4
	.global	__getreent
	.type	__getreent, @function
__getreent:
.LFB39:
	.loc 1 2120 0
	entry	sp, 32
.LCFI23:
	.loc 1 2122 0
	call8	xTaskGetCurrentTaskHandle
.LVL161:
	.loc 1 2123 0
	bnez.n	a10, .L92
	.loc 1 2125 0
	l32r	a2, .LC71
	l32i.n	a2, a2, 0
	retw.n
.L92:
	.loc 1 2128 0
	addi	a2, a10, 104
	.loc 1 2130 0
	retw.n
.LFE39:
	.size	__getreent, .-__getreent
	.section	.text.pcTaskGetTaskName,"ax",@progbits
	.literal_position
	.literal .LC72, __FUNCTION__$5668
	.literal .LC73, 2331
	.literal .LC74, .LC4
	.literal .LC75, .LC6
	.align	4
	.global	pcTaskGetTaskName
	.type	pcTaskGetTaskName, @function
pcTaskGetTaskName:
.LFB45:
	.loc 1 2326 0
.LVL162:
	entry	sp, 32
.LCFI24:
	.loc 1 2330 0
	bnez.n	a2, .L95
	.loc 1 2330 0 is_stmt 0 discriminator 1
	call8	xTaskGetCurrentTaskHandle
.LVL163:
	mov.n	a2, a10
.LVL164:
.L95:
	.loc 1 2331 0 is_stmt 1 discriminator 4
	bnez.n	a2, .L96
	.loc 1 2331 0 is_stmt 0 discriminator 1
	l32r	a13, .LC72
	l32r	a12, .LC73
	l32r	a11, .LC74
	l32r	a10, .LC75
	call8	ets_printf
.LVL165:
	call8	abort
.LVL166:
.L96:
	.loc 1 2333 0 is_stmt 1
	addi	a2, a2, 56
.LVL167:
	retw.n
.LFE45:
	.size	pcTaskGetTaskName, .-pcTaskGetTaskName
	.section	.text.pvTaskGetThreadLocalStoragePointer,"ax",@progbits
	.align	4
	.global	pvTaskGetThreadLocalStoragePointer
	.type	pvTaskGetThreadLocalStoragePointer, @function
pvTaskGetThreadLocalStoragePointer:
.LFB61:
	.loc 1 3562 0
.LVL168:
	entry	sp, 32
.LCFI25:
.LVL169:
	.loc 1 3566 0
	bgei	a3, 1, .L100
	.loc 1 3568 0
	bnez.n	a2, .L99
	.loc 1 3568 0 is_stmt 0 discriminator 1
	call8	xTaskGetCurrentTaskHandle
.LVL170:
	mov.n	a2, a10
.LVL171:
.L99:
	.loc 1 3569 0 is_stmt 1 discriminator 4
	addi	a3, a3, 24
.LVL172:
	addx4	a2, a3, a2
.LVL173:
	l32i.n	a2, a2, 0
.LVL174:
	retw.n
.LVL175:
.L100:
	.loc 1 3573 0
	movi.n	a2, 0
.LVL176:
	.loc 1 3577 0
	retw.n
.LFE61:
	.size	pvTaskGetThreadLocalStoragePointer, .-pvTaskGetThreadLocalStoragePointer
	.section	.text.xTaskGetAffinity,"ax",@progbits
	.align	4
	.global	xTaskGetAffinity
	.type	xTaskGetAffinity, @function
xTaskGetAffinity:
.LFB66:
	.loc 1 3726 0
.LVL177:
	entry	sp, 32
.LCFI26:
	.loc 1 3729 0
	bnez.n	a2, .L102
	.loc 1 3729 0 is_stmt 0 discriminator 1
	call8	xTaskGetCurrentTaskHandle
.LVL178:
	mov.n	a2, a10
.LVL179:
.L102:
	.loc 1 3732 0 is_stmt 1 discriminator 4
	l32i	a2, a2, 72
.LVL180:
	retw.n
.LFE66:
	.size	xTaskGetAffinity, .-xTaskGetAffinity
	.section	.text.uxTaskGetStackHighWaterMark,"ax",@progbits
	.align	4
	.global	uxTaskGetStackHighWaterMark
	.type	uxTaskGetStackHighWaterMark, @function
uxTaskGetStackHighWaterMark:
.LFB68:
	.loc 1 3848 0
.LVL181:
	entry	sp, 32
.LCFI27:
	.loc 1 3853 0
	bnez.n	a2, .L104
	.loc 1 3853 0 is_stmt 0 discriminator 1
	call8	xTaskGetCurrentTaskHandle
.LVL182:
	mov.n	a2, a10
.LVL183:
.L104:
	.loc 1 3865 0 is_stmt 1 discriminator 4
	l32i.n	a10, a2, 52
	call8	prvTaskCheckFreeStackSpace
.LVL184:
	.loc 1 3868 0 discriminator 4
	mov.n	a2, a10
.LVL185:
	retw.n
.LFE68:
	.size	uxTaskGetStackHighWaterMark, .-uxTaskGetStackHighWaterMark
	.section	.text.pxTaskGetStackStart,"ax",@progbits
	.align	4
	.global	pxTaskGetStackStart
	.type	pxTaskGetStackStart, @function
pxTaskGetStackStart:
.LFB69:
	.loc 1 3876 0
.LVL186:
	entry	sp, 32
.LCFI28:
	.loc 1 3880 0
	bnez.n	a2, .L106
	.loc 1 3880 0 is_stmt 0 discriminator 1
	call8	xTaskGetCurrentTaskHandle
.LVL187:
	mov.n	a2, a10
.LVL188:
.L106:
	.loc 1 3884 0 is_stmt 1 discriminator 4
	l32i.n	a2, a2, 52
.LVL189:
	retw.n
.LFE69:
	.size	pxTaskGetStackStart, .-pxTaskGetStackStart
	.section	.text.xTaskGetCurrentTaskHandleForCPU,"ax",@progbits
	.literal_position
	.literal .LC76, pxCurrentTCB
	.align	4
	.global	xTaskGetCurrentTaskHandleForCPU
	.type	xTaskGetCurrentTaskHandleForCPU, @function
xTaskGetCurrentTaskHandleForCPU:
.LFB74:
	.loc 1 4005 0
.LVL190:
	entry	sp, 32
.LCFI29:
.LVL191:
	.loc 1 4009 0
	bgei	a2, 2, .L109
	.loc 1 4010 0
	l32r	a8, .LC76
	addx4	a2, a2, a8
.LVL192:
	memw
	l32i.n	a2, a2, 0
.LVL193:
	retw.n
.LVL194:
.L109:
	.loc 1 4006 0
	movi.n	a2, 0
.LVL195:
	.loc 1 4014 0
	retw.n
.LFE74:
	.size	xTaskGetCurrentTaskHandleForCPU, .-xTaskGetCurrentTaskHandleForCPU
	.section	.text.xTaskGetSchedulerState,"ax",@progbits
	.literal_position
	.literal .LC77, xSchedulerRunning
	.literal .LC78, uxSchedulerSuspended
	.align	4
	.global	xTaskGetSchedulerState
	.type	xTaskGetSchedulerState, @function
xTaskGetSchedulerState:
.LFB75:
	.loc 1 4023 0
	entry	sp, 32
.LCFI30:
.LBB412:
.LBB413:
.LBB414:
	.loc 3 249 0
#APP
# 249 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h" 1
	rsil	a10, 3

# 0 "" 2
.LVL196:
#NO_APP
.LBE414:
.LBE413:
.LBE412:
	.loc 1 4028 0
	l32r	a8, .LC77
	memw
	l32i.n	a8, a8, 0
	beqz.n	a8, .L112
.LBB415:
.LBB416:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE416:
.LBE415:
	.loc 1 4034 0
	l32r	a2, .LC78
	addx4	a8, a8, a2
	memw
	l32i.n	a2, a8, 0
	bnez.n	a2, .L113
	.loc 1 4036 0
	movi.n	a2, 2
	j	.L111
.L112:
	.loc 1 4030 0
	movi.n	a2, 1
	j	.L111
.L113:
	.loc 1 4040 0
	movi.n	a2, 0
.L111:
.LVL197:
	.loc 1 4043 0
	call8	_xtos_set_intlevel
.LVL198:
	.loc 1 4046 0
	retw.n
.LFE75:
	.size	xTaskGetSchedulerState, .-xTaskGetSchedulerState
	.section	.rodata.str1.4
	.align	4
.LC82:
	.string	"res == coreID || res == portMUX_FREE_VAL"
	.align	4
.LC85:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/portmux_impl.inc.h"
	.align	4
.LC88:
	.string	"(res == portMUX_FREE_VAL) == (mux->count == 0)"
	.align	4
.LC90:
	.string	"mux->count < 0xFF"
	.section	.text.vTaskEnterCritical,"ax",@progbits
	.literal_position
	.literal .LC79, xSchedulerRunning
	.literal .LC80, 26214
	.literal .LC81, -1287651329
	.literal .LC83, .LC82
	.literal .LC84, __func__$5930
	.literal .LC86, .LC85
	.literal .LC87, 1287651329
	.literal .LC89, .LC88
	.literal .LC91, .LC90
	.literal .LC92, pxCurrentTCB
	.align	4
	.global	vTaskEnterCritical
	.type	vTaskEnterCritical, @function
vTaskEnterCritical:
.LFB87:
	.loc 1 4218 0
.LVL199:
	entry	sp, 32
.LCFI31:
.LVL200:
	.loc 1 4220 0
	l32r	a8, .LC79
	memw
	l32i.n	a13, a8, 0
.LVL201:
	.loc 1 4221 0
	beqz.n	a13, .L121
.LBB417:
.LBB418:
.LBB419:
	.loc 3 249 0
#APP
# 249 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h" 1
	rsil	a14, 3

# 0 "" 2
.LVL202:
#NO_APP
	j	.L115
.LVL203:
.L121:
.LBE419:
.LBE418:
.LBE417:
	.loc 1 4219 0
	movi.n	a14, 0
.LVL204:
.L115:
.LBB420:
.LBB421:
.LBB422:
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/portmux_impl.inc.h"
	.loc 4 72 0
#APP
# 72 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/portmux_impl.inc.h" 1
	rsr a9, PRID
# 0 "" 2
.LVL205:
	.loc 4 76 0
#NO_APP
	l32r	a11, .LC80
	xor	a11, a9, a11
.LVL206:
.L116:
.LBB423:
.LBB424:
	.loc 3 285 0
	mov.n	a8, a9
	l32r	a10, .LC81
#APP
# 285 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h" 1
	WSR 	    a10,SCOMPARE1 
S32C1I     a8, a2, 0	 

# 0 "" 2
.LVL207:
#NO_APP
.LBE424:
.LBE423:
	.loc 4 88 0
	beq	a11, a8, .L116
	.loc 4 105 0
	beq	a9, a8, .L117
	beq	a8, a10, .L117
	l32r	a13, .LC83
.LVL208:
	l32r	a12, .LC84
	movi	a11, 0x69
.LVL209:
	l32r	a10, .LC86
	call8	__assert_func
.LVL210:
.L117:
	.loc 4 106 0
	l32r	a9, .LC87
.LVL211:
	add.n	a8, a8, a9
.LVL212:
	movi.n	a9, 1
	movi.n	a11, 0
.LVL213:
	mov.n	a3, a11
	movnez	a3, a9, a8
	extui	a8, a3, 0, 8
.LVL214:
	l32i.n	a10, a2, 4
	movnez	a9, a11, a10
	extui	a9, a9, 0, 8
	bne	a8, a9, .L118
	l32r	a13, .LC89
.LVL215:
	l32r	a12, .LC84
	movi	a11, 0x6a
	l32r	a10, .LC86
	call8	__assert_func
.LVL216:
.L118:
	.loc 4 107 0
	movi	a8, 0xfe
	bgeu	a8, a10, .L119
	l32r	a13, .LC91
.LVL217:
	l32r	a12, .LC84
	movi	a11, 0x6b
	l32r	a10, .LC86
	call8	__assert_func
.LVL218:
.L119:
	.loc 4 110 0
	addi.n	a10, a10, 1
	s32i.n	a10, a2, 4
.LBE422:
.LBE421:
.LBE420:
	.loc 1 4234 0
	beqz.n	a13, .L114
.LBB425:
.LBB426:
.LBB427:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL219:
#NO_APP
.LBE427:
.LBE426:
	.loc 1 4236 0
	l32r	a8, .LC92
	addx4	a2, a2, a8
	memw
	l32i.n	a8, a2, 0
.LVL220:
	.loc 1 4237 0
	l32i	a2, a8, 80
	addi.n	a2, a2, 1
.LVL221:
	.loc 1 4238 0
	s32i	a2, a8, 80
	.loc 1 4239 0
	bnei	a2, 1, .L114
	.loc 1 4242 0
	s32i	a14, a8, 84
.LVL222:
.L114:
	retw.n
.LBE425:
.LFE87:
	.size	vTaskEnterCritical, .-vTaskEnterCritical
	.section	.rodata.str1.4
	.align	4
.LC93:
	.string	"coreID == mux->owner"
	.align	4
.LC98:
	.string	"mux->count < 0x100"
	.section	.text.vTaskExitCritical,"ax",@progbits
	.literal_position
	.literal .LC94, .LC93
	.literal .LC95, __func__$5935
	.literal .LC96, .LC85
	.literal .LC97, -1287651329
	.literal .LC99, .LC98
	.literal .LC100, xSchedulerRunning
	.literal .LC101, pxCurrentTCB
	.align	4
	.global	vTaskExitCritical
	.type	vTaskExitCritical, @function
vTaskExitCritical:
.LFB88:
	.loc 1 4287 0
.LVL223:
	entry	sp, 32
.LCFI32:
.LVL224:
.LBB435:
.LBB436:
.LBB437:
	.loc 4 147 0
#APP
# 147 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/portmux_impl.inc.h" 1
	rsr a8, PRID
# 0 "" 2
	.loc 4 157 0
#NO_APP
	l32i.n	a9, a2, 0
	beq	a9, a8, .L123
	l32r	a13, .LC94
	l32r	a12, .LC95
	movi	a11, 0x9d
	l32r	a10, .LC96
	call8	__assert_func
.LVL225:
.L123:
	.loc 4 159 0
	l32i.n	a8, a2, 4
	addi.n	a8, a8, -1
	s32i.n	a8, a2, 4
	.loc 4 160 0
	bnez.n	a8, .L124
	.loc 4 161 0
	l32r	a8, .LC97
	s32i.n	a8, a2, 0
	j	.L125
.L124:
	.loc 4 163 0
	movi	a2, 0xff
.LVL226:
	bgeu	a2, a8, .L125
	l32r	a13, .LC99
	l32r	a12, .LC95
	movi	a11, 0xa3
	l32r	a10, .LC96
	call8	__assert_func
.LVL227:
.L125:
.LBE437:
.LBE436:
.LBE435:
	.loc 1 4293 0
	l32r	a2, .LC100
	memw
	l32i.n	a2, a2, 0
	beqz.n	a2, .L122
.LBB438:
.LBB439:
.LBB440:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
#NO_APP
.LBE440:
.LBE439:
	.loc 1 4295 0
	l32r	a8, .LC101
	addx4	a2, a2, a8
	memw
	l32i.n	a8, a2, 0
.LVL228:
	.loc 1 4296 0
	l32i	a2, a8, 80
.LVL229:
	.loc 1 4297 0
	beqz.n	a2, .L122
	.loc 1 4299 0
	addi.n	a2, a2, -1
.LVL230:
	.loc 1 4300 0
	s32i	a2, a8, 80
	.loc 1 4302 0
	bnez.n	a2, .L122
	.loc 1 4304 0
	l32i	a10, a8, 84
	call8	_xtos_set_intlevel
.LVL231:
.L122:
	retw.n
.LBE438:
.LFE88:
	.size	vTaskExitCritical, .-vTaskExitCritical
	.section	.text.prvAddNewTaskToReadyList,"ax",@progbits
	.literal_position
	.literal .LC102, 2147483644
	.literal .LC103, __FUNCTION__$5545
	.literal .LC104, .LC4
	.literal .LC105, .LC6
	.literal .LC106, xTaskQueueMutex
	.literal .LC107, uxCurrentNumberOfTasks
	.literal .LC108, 2147483647
	.literal .LC109, pxCurrentTCB
	.literal .LC110, xSchedulerRunning
	.literal .LC111, uxTaskNumber
	.literal .LC112, uxTopReadyPriority
	.literal .LC113, pxReadyTasksLists
	.align	4
	.type	prvAddNewTaskToReadyList, @function
prvAddNewTaskToReadyList:
.LFB25:
	.loc 1 1063 0
.LVL232:
	entry	sp, 32
.LCFI33:
	.loc 1 1069 0
	addi	a8, a4, -2
	l32r	a9, .LC102
	bltu	a9, a8, .L128
	.loc 1 1069 0 is_stmt 0 discriminator 1
	l32r	a13, .LC103
	movi	a12, 0x42d
	l32r	a11, .LC104
	l32r	a10, .LC105
	call8	ets_printf
.LVL233:
	call8	abort
.LVL234:
.L128:
	.loc 1 1073 0 is_stmt 1
	l32r	a10, .LC106
	call8	vTaskEnterCritical
.LVL235:
	.loc 1 1075 0
	l32r	a9, .LC107
	memw
	l32i.n	a8, a9, 0
	addi.n	a8, a8, 1
	memw
	s32i.n	a8, a9, 0
	.loc 1 1078 0
	l32r	a8, .LC108
	bne	a4, a8, .L129
	.loc 1 1089 0
	l32r	a4, .LC109
.LVL236:
	memw
	l32i.n	a8, a4, 0
.LVL237:
	.loc 1 1090 0
	memw
	l32i.n	a4, a4, 4
.LVL238:
	.loc 1 1091 0
	beqz.n	a8, .L139
	.loc 1 1095 0
	beqz.n	a4, .L140
	.loc 1 1099 0
	l32i.n	a9, a8, 48
	l32i.n	a8, a2, 48
.LVL239:
	bgeu	a9, a8, .L130
	.loc 1 1099 0 is_stmt 0 discriminator 1
	l32i.n	a10, a4, 48
	bltu	a9, a10, .L141
.L130:
	.loc 1 1103 0 is_stmt 1
	l32i.n	a4, a4, 48
.LVL240:
	bltu	a4, a8, .L142
.LBB441:
.LBB442:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a4
 extui a4,a4,13,1
# 0 "" 2
.LVL241:
#NO_APP
	j	.L129
.LVL242:
.L139:
.LBE442:
.LBE441:
	.loc 1 1093 0
	movi.n	a4, 0
.LVL243:
	j	.L129
.LVL244:
.L140:
	.loc 1 1097 0
	movi.n	a4, 1
.LVL245:
	j	.L129
.LVL246:
.L141:
	.loc 1 1101 0
	movi.n	a4, 0
.LVL247:
	j	.L129
.L142:
	.loc 1 1105 0
	movi.n	a4, 1
.LVL248:
.L129:
	.loc 1 1115 0
	l32r	a8, .LC109
	addx4	a8, a4, a8
	memw
	l32i.n	a8, a8, 0
	bnez.n	a8, .L131
	.loc 1 1119 0
	l32r	a8, .LC109
	addx4	a8, a4, a8
	memw
	s32i.n	a2, a8, 0
	.loc 1 1121 0
	l32r	a8, .LC107
	memw
	l32i.n	a8, a8, 0
	bnei	a8, 1, .L132
	.loc 1 1131 0
	call8	prvInitialiseTaskLists
.LVL249:
	j	.L132
.L131:
	.loc 1 1143 0
	l32r	a8, .LC110
	memw
	l32i.n	a8, a8, 0
	bnez.n	a8, .L132
	.loc 1 1147 0
	l32r	a8, .LC109
	addx4	a8, a4, a8
	memw
	l32i.n	a8, a8, 0
	beqz.n	a8, .L133
	.loc 1 1147 0 discriminator 1
	l32r	a8, .LC109
	addx4	a8, a4, a8
	memw
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 48
	l32i.n	a9, a2, 48
	bltu	a9, a8, .L132
.L133:
	.loc 1 1149 0
	l32r	a8, .LC109
	addx4	a8, a4, a8
	memw
	s32i.n	a2, a8, 0
.L132:
	.loc 1 1158 0
	l32r	a9, .LC111
	l32i.n	a8, a9, 0
	addi.n	a8, a8, 1
	s32i.n	a8, a9, 0
	.loc 1 1168 0
	l32i.n	a8, a2, 48
	l32r	a9, .LC112
	memw
	l32i.n	a9, a9, 0
	bgeu	a9, a8, .L134
	.loc 1 1168 0 is_stmt 0 discriminator 1
	l32r	a9, .LC112
	memw
	s32i.n	a8, a9, 0
.L134:
	.loc 1 1168 0 discriminator 3
	addx4	a8, a8, a8
	slli	a9, a8, 2
	addi.n	a11, a2, 8
	l32r	a10, .LC113
	add.n	a10, a10, a9
	call8	vListInsertEnd
.LVL250:
	.loc 1 1173 0 is_stmt 1 discriminator 3
	l32r	a10, .LC106
	call8	vTaskExitCritical
.LVL251:
	.loc 1 1175 0 discriminator 3
	l32r	a8, .LC110
	memw
	l32i.n	a8, a8, 0
	beqz.n	a8, .L127
	.loc 1 1177 0
	l32r	a10, .LC106
	call8	vTaskEnterCritical
.LVL252:
	.loc 1 1179 0
	l32r	a8, .LC109
	addx4	a8, a4, a8
	memw
	l32i.n	a8, a8, 0
.LVL253:
	.loc 1 1183 0
	beqz.n	a8, .L136
	.loc 1 1183 0 discriminator 1
	l32i.n	a9, a8, 48
	l32i.n	a8, a2, 48
.LVL254:
	bgeu	a9, a8, .L137
.L136:
.LBB443:
.LBB444:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL255:
#NO_APP
.LBE444:
.LBE443:
	.loc 1 1185 0
	bne	a4, a8, .L138
.LBB445:
.LBB446:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
.LVL256:
#NO_APP
.LBE446:
.LBE445:
	.loc 1 1187 0
	call8	esp_crosscore_int_send_yield
.LVL257:
	j	.L137
.LVL258:
.L138:
	.loc 1 1190 0
	l32i.n	a11, a2, 48
	mov.n	a10, a4
	call8	taskYIELD_OTHER_CORE
.LVL259:
.L137:
	.loc 1 1197 0
	l32r	a10, .LC106
	call8	vTaskExitCritical
.LVL260:
.L127:
	retw.n
.LFE25:
	.size	prvAddNewTaskToReadyList, .-prvAddNewTaskToReadyList
	.section	.text.xTaskCreateRestricted,"ax",@progbits
	.literal_position
	.literal .LC114, __FUNCTION__$5503
	.literal .LC115, .LC4
	.literal .LC116, .LC6
	.literal .LC117, 2052
	.literal .LC118, 2147483647
	.align	4
	.global	xTaskCreateRestricted
	.type	xTaskCreateRestricted, @function
xTaskCreateRestricted:
.LFB22:
	.loc 1 719 0
.LVL261:
	entry	sp, 48
.LCFI34:
.LVL262:
	.loc 1 723 0
	l32i.n	a4, a2, 20
	bnez.n	a4, .L144
	.loc 1 723 0 is_stmt 0 discriminator 1
	l32r	a13, .LC114
	movi	a12, 0x2d3
	l32r	a11, .LC115
	l32r	a10, .LC116
	call8	ets_printf
.LVL263:
	call8	abort
.LVL264:
.L144:
	.loc 1 725 0 is_stmt 1
	beqz.n	a4, .L146
	.loc 1 730 0
	l32r	a11, .LC117
	movi	a10, 0x164
	call8	heap_caps_malloc
.LVL265:
	mov.n	a4, a10
.LVL266:
	.loc 1 732 0
	beqz.n	a10, .L147
	.loc 1 735 0
	l32i.n	a5, a2, 20
	s32i.n	a5, a10, 52
	.loc 1 740 0
	addmi	a5, a10, 0x100
	movi.n	a8, 1
	s8i	a8, a5, 96
	.loc 1 748 0
	addi	a8, a2, 24
	.loc 1 742 0
	l32r	a5, .LC118
	s32i.n	a5, sp, 8
	s32i.n	a8, sp, 4
	s32i.n	a10, sp, 0
	mov.n	a15, a3
	l32i.n	a14, a2, 16
	l32i.n	a13, a2, 12
	l32i.n	a12, a2, 8
	l32i.n	a11, a2, 4
	l32i.n	a10, a2, 0
	call8	prvInitialiseNewTask
.LVL267:
	.loc 1 751 0
	mov.n	a12, a5
	l32i.n	a11, a2, 0
	mov.n	a10, a4
	call8	prvAddNewTaskToReadyList
.LVL268:
	.loc 1 752 0
	movi.n	a2, 1
.LVL269:
	retw.n
.LVL270:
.L146:
	.loc 1 721 0
	movi.n	a2, -1
.LVL271:
	retw.n
.LVL272:
.L147:
	movi.n	a2, -1
.LVL273:
	.loc 1 757 0
	retw.n
.LFE22:
	.size	xTaskCreateRestricted, .-xTaskCreateRestricted
	.section	.text.xTaskCreatePinnedToCore,"ax",@progbits
	.literal_position
	.literal .LC119, 2052
	.align	4
	.global	xTaskCreatePinnedToCore
	.type	xTaskCreatePinnedToCore, @function
xTaskCreatePinnedToCore:
.LFB23:
	.loc 1 771 0
.LVL274:
	entry	sp, 64
.LCFI35:
	s32i.n	a7, sp, 20
	s32i.n	a3, sp, 16
.LBB447:
	.loc 1 805 0
	l32r	a11, .LC119
	mov.n	a10, a4
	call8	heap_caps_malloc
.LVL275:
	mov.n	a7, a10
.LVL276:
	.loc 1 807 0
	beqz.n	a10, .L152
	.loc 1 810 0
	l32r	a11, .LC119
	movi	a10, 0x164
	call8	heap_caps_malloc
.LVL277:
	mov.n	a3, a10
.LVL278:
	.loc 1 812 0
	beqz.n	a10, .L150
	.loc 1 815 0
	s32i.n	a7, a10, 52
	j	.L149
.L150:
	.loc 1 821 0
	mov.n	a10, a7
	call8	free
.LVL279:
	j	.L149
.LVL280:
.L152:
	.loc 1 826 0
	movi.n	a3, 0
.LVL281:
.L149:
.LBE447:
	.loc 1 831 0
	beqz.n	a3, .L153
	.loc 1 837 0
	addmi	a7, a3, 0x100
.LVL282:
	movi.n	a8, 0
	s8i	a8, a7, 96
	.loc 1 841 0
	l32i	a8, sp, 64
	s32i.n	a8, sp, 8
	movi.n	a7, 0
	s32i.n	a7, sp, 4
	s32i.n	a3, sp, 0
	l32i.n	a15, sp, 20
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a4
	l32i.n	a11, sp, 16
	mov.n	a10, a2
	call8	prvInitialiseNewTask
.LVL283:
	.loc 1 842 0
	l32i	a12, sp, 64
	mov.n	a11, a2
	mov.n	a10, a3
	call8	prvAddNewTaskToReadyList
.LVL284:
	.loc 1 843 0
	movi.n	a2, 1
.LVL285:
	retw.n
.LVL286:
.L153:
	.loc 1 847 0
	movi.n	a2, -1
.LVL287:
	.loc 1 851 0
	retw.n
.LFE23:
	.size	xTaskCreatePinnedToCore, .-xTaskCreatePinnedToCore
	.section	.rodata.str1.4
	.align	4
.LC120:
	.string	"IDLE%d"
	.section	.text.vTaskStartScheduler,"ax",@progbits
	.literal_position
	.literal .LC121, .LC120
	.literal .LC122, xIdleTaskHandle
	.literal .LC123, prvIdleTask
	.literal .LC124, xTickCount
	.literal .LC125, xSchedulerRunning
	.literal .LC126, __FUNCTION__$5630
	.literal .LC127, 2101
	.literal .LC128, .LC4
	.literal .LC129, .LC6
	.align	4
	.global	vTaskStartScheduler
	.type	vTaskStartScheduler, @function
vTaskStartScheduler:
.LFB37:
	.loc 1 2030 0
	entry	sp, 64
.LCFI36:
.LVL288:
	.loc 1 2035 0
	movi.n	a2, 0
	j	.L155
.LVL289:
.L156:
.LBB448:
	.loc 1 2038 0 discriminator 3
	mov.n	a13, a2
	l32r	a12, .LC121
	movi.n	a11, 0x10
	add.n	a10, sp, a11
.LVL290:
	call8	snprintf
.LVL291:
	.loc 1 2043 0 discriminator 3
	s32i.n	a2, sp, 0
	l32r	a15, .LC122
	addx4	a15, a2, a15
	movi.n	a14, 0
	mov.n	a13, a14
	movi	a12, 0x600
	addi	a11, sp, 16
	l32r	a10, .LC123
	call8	xTaskCreatePinnedToCore
.LVL292:
.LBE448:
	.loc 1 2035 0 discriminator 3
	addi.n	a2, a2, 1
.LVL293:
.L155:
	.loc 1 2035 0 is_stmt 0 discriminator 1
	blti	a2, 2, .L156
	.loc 1 2055 0 is_stmt 1
	bnei	a10, 1, .L157
	.loc 1 2057 0
	call8	xTimerCreateTimerTask
.LVL294:
.L157:
	.loc 1 2066 0
	bnei	a10, 1, .L158
.LBB449:
	.loc 1 2073 0
#APP
# 2073 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/tasks.c" 1
	rsil	a2, 3

# 0 "" 2
.LVL295:
#NO_APP
.LBE449:
	.loc 1 2076 0
	movi.n	a8, 0
	l32r	a2, .LC124
	memw
	s32i.n	a8, a2, 0
	.loc 1 2082 0
	movi.n	a8, 1
	l32r	a2, .LC125
	memw
	s32i.n	a8, a2, 0
	.loc 1 2086 0
	call8	xPortStartScheduler
.LVL296:
	retw.n
.LVL297:
.L158:
	.loc 1 2101 0
	bnez.n	a10, .L154
	.loc 1 2101 0 is_stmt 0 discriminator 1
	l32r	a13, .LC126
	l32r	a12, .LC127
	l32r	a11, .LC128
	l32r	a10, .LC129
.LVL298:
	call8	ets_printf
.LVL299:
	call8	abort
.LVL300:
.L154:
	retw.n
.LFE37:
	.size	vTaskStartScheduler, .-vTaskStartScheduler
	.section	.text.vTaskDelete,"ax",@progbits
	.literal_position
	.literal .LC130, xTaskQueueMutex
	.literal .LC131, uxTaskNumber
	.literal .LC132, pxCurrentTCB
	.literal .LC133, xTasksWaitingTermination
	.literal .LC134, uxTasksDeleted
	.literal .LC135, uxCurrentNumberOfTasks
	.literal .LC136, xSchedulerRunning
	.literal .LC137, uxSchedulerSuspended
	.literal .LC138, __FUNCTION__$5552
	.literal .LC139, .LC4
	.literal .LC140, .LC6
	.align	4
	.global	vTaskDelete
	.type	vTaskDelete, @function
vTaskDelete:
.LFB26:
	.loc 1 1209 0 is_stmt 1
.LVL301:
	entry	sp, 32
.LCFI37:
.LBB450:
.LBB451:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL302:
#NO_APP
.LBE451:
.LBE450:
	.loc 1 1219 0
	l32r	a10, .LC130
	call8	vTaskEnterCritical
.LVL303:
	.loc 1 1223 0
	bnez.n	a2, .L161
	.loc 1 1223 0 is_stmt 0 discriminator 1
	call8	xTaskGetCurrentTaskHandle
.LVL304:
	mov.n	a2, a10
.LVL305:
.L161:
	.loc 1 1226 0 is_stmt 1 discriminator 4
	addi.n	a4, a2, 8
	mov.n	a10, a4
	call8	uxListRemove
.LVL306:
	.loc 1 1236 0 discriminator 4
	l32i.n	a8, a2, 44
	beqz.n	a8, .L162
	.loc 1 1238 0
	addi	a10, a2, 28
	call8	uxListRemove
.LVL307:
.L162:
	.loc 1 1249 0
	l32r	a9, .LC131
	l32i.n	a8, a9, 0
	addi.n	a8, a8, 1
	s32i.n	a8, a9, 0
	.loc 1 1252 0
	l32r	a8, .LC132
	addx4	a8, a3, a8
	memw
	l32i.n	a8, a8, 0
	beq	a2, a8, .L163
	.loc 1 1253 0 discriminator 1
	movi.n	a9, 0
	movi.n	a8, 1
	movnez	a8, a9, a3
	l32r	a9, .LC132
	addx4	a9, a8, a9
	memw
	l32i.n	a9, a9, 0
	.loc 1 1252 0 discriminator 1
	beq	a2, a9, .L163
	.loc 1 1254 0
	l32i	a9, a2, 72
	.loc 1 1253 0
	bne	a8, a9, .L164
.L163:
	.loc 1 1261 0
	mov.n	a11, a4
	l32r	a10, .LC133
	call8	vListInsertEnd
.LVL308:
	.loc 1 1266 0
	l32r	a8, .LC134
	memw
	l32i.n	a4, a8, 0
	addi.n	a4, a4, 1
	memw
	s32i.n	a4, a8, 0
.LVL309:
	.loc 1 1275 0
	movi.n	a4, 0
	j	.L165
.LVL310:
.L164:
	.loc 1 1279 0
	l32r	a8, .LC135
	memw
	l32i.n	a4, a8, 0
	addi.n	a4, a4, -1
	memw
	s32i.n	a4, a8, 0
	.loc 1 1283 0
	call8	prvResetNextTaskUnblockTime
.LVL311:
	.loc 1 1284 0
	movi.n	a4, 1
.LVL312:
.L165:
	.loc 1 1289 0
	l32r	a10, .LC130
	call8	vTaskExitCritical
.LVL313:
	.loc 1 1291 0
	bnei	a4, 1, .L166
	.loc 1 1293 0
	mov.n	a10, a2
	call8	prvDeleteTLS
.LVL314:
	.loc 1 1295 0
	mov.n	a10, a2
	call8	prvDeleteTCB
.LVL315:
.L166:
	.loc 1 1300 0
	l32r	a4, .LC136
.LVL316:
	memw
	l32i.n	a4, a4, 0
	beqz.n	a4, .L160
	.loc 1 1303 0
	l32r	a4, .LC132
	addx4	a4, a3, a4
	memw
	l32i.n	a4, a4, 0
	bne	a2, a4, .L168
	.loc 1 1305 0
	l32r	a10, .LC137
	addx4	a3, a3, a10
.LVL317:
	memw
	l32i.n	a2, a3, 0
.LVL318:
	beqz.n	a2, .L169
	.loc 1 1305 0 is_stmt 0 discriminator 1
	l32r	a13, .LC138
	movi	a12, 0x519
	l32r	a11, .LC139
	l32r	a10, .LC140
	call8	ets_printf
.LVL319:
	call8	abort
.LVL320:
.L169:
.LBB452:
.LBB453:
	.loc 2 208 0 is_stmt 1
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
.LVL321:
#NO_APP
.LBE453:
.LBE452:
	.loc 1 1313 0
	call8	esp_crosscore_int_send_yield
.LVL322:
	retw.n
.LVL323:
.L168:
	.loc 1 1315 0
	movi.n	a4, 0
	movi.n	a10, 1
	movnez	a10, a4, a3
	l32r	a3, .LC132
.LVL324:
	addx4	a3, a10, a3
	memw
	l32i.n	a3, a3, 0
	bne	a2, a3, .L160
	.loc 1 1318 0
	call8	vPortYieldOtherCore
.LVL325:
.L160:
	retw.n
.LFE26:
	.size	vTaskDelete, .-vTaskDelete
	.section	.text.vTaskDelayUntil,"ax",@progbits
	.literal_position
	.literal .LC141, __FUNCTION__$5560
	.literal .LC142, .LC4
	.literal .LC143, .LC6
	.literal .LC144, uxSchedulerSuspended
	.literal .LC145, xTaskQueueMutex
	.literal .LC146, xTickCount
	.literal .LC147, pxCurrentTCB
	.align	4
	.global	vTaskDelayUntil
	.type	vTaskDelayUntil, @function
vTaskDelayUntil:
.LFB27:
	.loc 1 1334 0
.LVL326:
	entry	sp, 32
.LCFI38:
.LVL327:
	.loc 1 1338 0
	bnez.n	a2, .L171
	.loc 1 1338 0 is_stmt 0 discriminator 1
	l32r	a13, .LC141
	movi	a12, 0x53a
	l32r	a11, .LC142
	l32r	a10, .LC143
	call8	ets_printf
.LVL328:
	call8	abort
.LVL329:
.L171:
	.loc 1 1339 0 is_stmt 1
	bnez.n	a3, .L172
	.loc 1 1339 0 is_stmt 0 discriminator 1
	l32r	a13, .LC141
	movi	a12, 0x53b
	l32r	a11, .LC142
	l32r	a10, .LC143
	call8	ets_printf
.LVL330:
	call8	abort
.LVL331:
.L172:
.LBB454:
.LBB455:
	.loc 2 208 0 is_stmt 1
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE455:
.LBE454:
	.loc 1 1340 0
	l32r	a9, .LC144
	addx4	a8, a8, a9
	memw
	l32i.n	a8, a8, 0
	beqz.n	a8, .L173
	.loc 1 1340 0 is_stmt 0 discriminator 1
	l32r	a13, .LC141
	movi	a12, 0x53c
	l32r	a11, .LC142
	l32r	a10, .LC143
	call8	ets_printf
.LVL332:
	call8	abort
.LVL333:
.L173:
	.loc 1 1342 0 is_stmt 1
	l32r	a10, .LC145
	call8	vTaskEnterCritical
.LVL334:
.LBB456:
	.loc 1 1347 0
	l32r	a8, .LC146
	memw
	l32i.n	a9, a8, 0
.LVL335:
	.loc 1 1350 0
	l32i.n	a8, a2, 0
	add.n	a3, a3, a8
.LVL336:
	.loc 1 1352 0
	bgeu	a9, a8, .L174
	.loc 1 1359 0
	bgeu	a3, a8, .L177
	.loc 1 1359 0 is_stmt 0 discriminator 1
	bltu	a9, a3, .L178
.LBE456:
	.loc 1 1336 0 is_stmt 1
	movi.n	a8, 0
	j	.L175
.L174:
.LBB461:
	.loc 1 1373 0
	bltu	a3, a8, .L179
	.loc 1 1373 0 is_stmt 0 discriminator 1
	bltu	a9, a3, .L180
.LBE461:
	.loc 1 1336 0 is_stmt 1
	movi.n	a8, 0
	j	.L175
.L177:
	movi.n	a8, 0
	j	.L175
.L178:
.LBB462:
	.loc 1 1361 0
	movi.n	a8, 1
	j	.L175
.L179:
	.loc 1 1375 0
	movi.n	a8, 1
	j	.L175
.L180:
	movi.n	a8, 1
.L175:
.LVL337:
	.loc 1 1384 0
	s32i.n	a3, a2, 0
	.loc 1 1386 0
	beqz.n	a8, .L176
.LBB457:
.LBB458:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL338:
#NO_APP
.LBE458:
.LBE457:
	.loc 1 1392 0
	l32r	a8, .LC147
.LVL339:
	addx4	a2, a2, a8
	memw
	l32i.n	a10, a2, 0
	addi.n	a10, a10, 8
	call8	uxListRemove
.LVL340:
.LBB459:
.LBB460:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
#NO_APP
.LBE460:
.LBE459:
	.loc 1 1404 0
	mov.n	a11, a3
	call8	prvAddCurrentTaskToDelayedList
.LVL341:
.L176:
.LBE462:
	.loc 1 1412 0
	l32r	a10, .LC145
	call8	vTaskExitCritical
.LVL342:
.LBB463:
.LBB464:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
.LVL343:
#NO_APP
.LBE464:
.LBE463:
	.loc 1 1418 0
	call8	esp_crosscore_int_send_yield
.LVL344:
	retw.n
.LFE27:
	.size	vTaskDelayUntil, .-vTaskDelayUntil
	.section	.text.vTaskDelay,"ax",@progbits
	.literal_position
	.literal .LC148, uxSchedulerSuspended
	.literal .LC149, __FUNCTION__$5567
	.literal .LC150, .LC4
	.literal .LC151, .LC6
	.literal .LC152, xTaskQueueMutex
	.literal .LC153, xTickCount
	.literal .LC154, pxCurrentTCB
	.align	4
	.global	vTaskDelay
	.type	vTaskDelay, @function
vTaskDelay:
.LFB28:
	.loc 1 1431 0
.LVL345:
	entry	sp, 32
.LCFI39:
.LVL346:
	.loc 1 1436 0
	beqz.n	a2, .L182
.LBB465:
.LBB466:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE466:
.LBE465:
	.loc 1 1438 0
	l32r	a3, .LC148
	addx4	a8, a8, a3
	memw
	l32i.n	a3, a8, 0
	beqz.n	a3, .L183
	.loc 1 1438 0 is_stmt 0 discriminator 1
	l32r	a13, .LC149
	movi	a12, 0x59e
	l32r	a11, .LC150
	l32r	a10, .LC151
	call8	ets_printf
.LVL347:
	call8	abort
.LVL348:
.L183:
	.loc 1 1439 0 is_stmt 1
	l32r	a3, .LC152
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL349:
	.loc 1 1454 0
	l32r	a8, .LC153
	memw
	l32i.n	a8, a8, 0
	add.n	a2, a2, a8
.LVL350:
.LBB467:
.LBB468:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE468:
.LBE467:
	.loc 1 1459 0
	l32r	a9, .LC154
	addx4	a8, a8, a9
	memw
	l32i.n	a10, a8, 0
	addi.n	a10, a10, 8
	call8	uxListRemove
.LVL351:
.LBB469:
.LBB470:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
#NO_APP
.LBE470:
.LBE469:
	.loc 1 1470 0
	mov.n	a11, a2
	call8	prvAddCurrentTaskToDelayedList
.LVL352:
	.loc 1 1473 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL353:
.L182:
.LBB471:
.LBB472:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
.LVL354:
#NO_APP
.LBE472:
.LBE471:
	.loc 1 1484 0
	call8	esp_crosscore_int_send_yield
.LVL355:
	retw.n
.LFE28:
	.size	vTaskDelay, .-vTaskDelay
	.section	.text.eTaskGetState,"ax",@progbits
	.literal_position
	.literal .LC155, __FUNCTION__$5576
	.literal .LC156, .LC4
	.literal .LC157, .LC6
	.literal .LC158, xTaskQueueMutex
	.literal .LC159, pxDelayedTaskList
	.literal .LC160, pxOverflowDelayedTaskList
	.literal .LC161, xSuspendedTaskList
	.literal .LC162, xTasksWaitingTermination
	.align	4
	.global	eTaskGetState
	.type	eTaskGetState, @function
eTaskGetState:
.LFB29:
	.loc 1 1497 0
.LVL356:
	entry	sp, 32
.LCFI40:
.LVL357:
	.loc 1 1501 0
	call8	xTaskGetCurrentTaskHandle
.LVL358:
	mov.n	a3, a10
.LVL359:
.LBB473:
.LBB474:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL360:
#NO_APP
.LBE474:
.LBE473:
	.loc 1 1502 0
	movi.n	a9, 0
	movi.n	a10, 1
	movnez	a10, a9, a8
	call8	xTaskGetCurrentTaskHandleForCPU
.LVL361:
	.loc 1 1504 0
	bnez.n	a2, .L185
	.loc 1 1504 0 is_stmt 0 discriminator 1
	l32r	a13, .LC155
	movi	a12, 0x5e0
	l32r	a11, .LC156
	l32r	a10, .LC157
.LVL362:
	call8	ets_printf
.LVL363:
	call8	abort
.LVL364:
.L185:
	.loc 1 1506 0 is_stmt 1
	sub	a3, a2, a3
.LVL365:
	movi.n	a11, 1
	movi.n	a9, 0
	mov.n	a8, a9
	moveqz	a8, a11, a3
	sub	a10, a2, a10
.LVL366:
	mov.n	a3, a9
	moveqz	a3, a11, a10
	or	a3, a3, a8
	bne	a3, a9, .L188
	.loc 1 1513 0
	l32r	a4, .LC158
	mov.n	a10, a4
	call8	vTaskEnterCritical
.LVL367:
	.loc 1 1515 0
	l32i.n	a3, a2, 24
.LVL368:
	.loc 1 1517 0
	mov.n	a10, a4
	call8	vTaskExitCritical
.LVL369:
	.loc 1 1519 0
	l32r	a4, .LC159
	memw
	l32i.n	a4, a4, 0
	beq	a3, a4, .L189
	.loc 1 1519 0 is_stmt 0 discriminator 1
	l32r	a4, .LC160
	memw
	l32i.n	a4, a4, 0
	beq	a3, a4, .L190
	.loc 1 1527 0 is_stmt 1
	l32r	a4, .LC161
	bne	a3, a4, .L187
	.loc 1 1532 0
	l32i.n	a2, a2, 44
.LVL370:
	bnez.n	a2, .L191
	.loc 1 1534 0
	movi.n	a2, 3
	retw.n
.LVL371:
.L187:
	.loc 1 1544 0
	l32r	a2, .LC162
.LVL372:
	bne	a3, a2, .L192
	.loc 1 1548 0
	movi.n	a2, 4
	retw.n
.LVL373:
.L188:
	.loc 1 1509 0
	movi.n	a2, 0
.LVL374:
	retw.n
.LVL375:
.L189:
	.loc 1 1523 0
	movi.n	a2, 2
.LVL376:
	retw.n
.LVL377:
.L190:
	movi.n	a2, 2
.LVL378:
	retw.n
.L191:
	.loc 1 1538 0
	movi.n	a2, 2
	retw.n
.L192:
	.loc 1 1556 0
	movi.n	a2, 1
.LVL379:
	.loc 1 1561 0
	retw.n
.LFE29:
	.size	eTaskGetState, .-eTaskGetState
	.section	.text.uxTaskPriorityGet,"ax",@progbits
	.literal_position
	.literal .LC163, xTaskQueueMutex
	.align	4
	.global	uxTaskPriorityGet
	.type	uxTaskPriorityGet, @function
uxTaskPriorityGet:
.LFB30:
	.loc 1 1568 0
.LVL380:
	entry	sp, 32
.LCFI41:
	.loc 1 1572 0
	l32r	a10, .LC163
	call8	vTaskEnterCritical
.LVL381:
	.loc 1 1576 0
	bnez.n	a2, .L194
	.loc 1 1576 0 is_stmt 0 discriminator 1
	call8	xTaskGetCurrentTaskHandle
.LVL382:
	mov.n	a2, a10
.LVL383:
.L194:
	.loc 1 1577 0 is_stmt 1 discriminator 4
	l32i.n	a2, a2, 48
.LVL384:
	.loc 1 1579 0 discriminator 4
	l32r	a10, .LC163
	call8	vTaskExitCritical
.LVL385:
	.loc 1 1582 0 discriminator 4
	retw.n
.LFE30:
	.size	uxTaskPriorityGet, .-uxTaskPriorityGet
	.section	.text.uxTaskPriorityGetFromISR,"ax",@progbits
	.literal_position
	.literal .LC164, xTaskQueueMutex
	.align	4
	.global	uxTaskPriorityGetFromISR
	.type	uxTaskPriorityGetFromISR, @function
uxTaskPriorityGetFromISR:
.LFB31:
	.loc 1 1589 0
.LVL386:
	entry	sp, 32
.LCFI42:
	.loc 1 1593 0
	l32r	a10, .LC164
	call8	vTaskEnterCritical
.LVL387:
	.loc 1 1597 0
	bnez.n	a2, .L196
	.loc 1 1597 0 is_stmt 0 discriminator 1
	call8	xTaskGetCurrentTaskHandle
.LVL388:
	mov.n	a2, a10
.LVL389:
.L196:
	.loc 1 1598 0 is_stmt 1 discriminator 4
	l32i.n	a2, a2, 48
.LVL390:
	.loc 1 1600 0 discriminator 4
	l32r	a10, .LC164
	call8	vTaskExitCritical
.LVL391:
	.loc 1 1603 0 discriminator 4
	retw.n
.LFE31:
	.size	uxTaskPriorityGetFromISR, .-uxTaskPriorityGetFromISR
	.section	.text.vTaskPrioritySet,"ax",@progbits
	.literal_position
	.literal .LC165, __FUNCTION__$5595
	.literal .LC166, .LC4
	.literal .LC167, .LC6
	.literal .LC168, xTaskQueueMutex
	.literal .LC169, pxCurrentTCB
	.literal .LC170, 2147483647
	.literal .LC171, pxReadyTasksLists
	.literal .LC172, uxTopReadyPriority
	.align	4
	.global	vTaskPrioritySet
	.type	vTaskPrioritySet, @function
vTaskPrioritySet:
.LFB32:
	.loc 1 1611 0
.LVL392:
	entry	sp, 32
.LCFI43:
.LVL393:
	.loc 1 1616 0
	movi.n	a4, 0x18
	bgeu	a4, a3, .L198
	.loc 1 1616 0 is_stmt 0 discriminator 1
	l32r	a13, .LC165
	movi	a12, 0x650
	l32r	a11, .LC166
	l32r	a10, .LC167
	call8	ets_printf
.LVL394:
	call8	abort
.LVL395:
.L198:
	.loc 1 1619 0 is_stmt 1
	movi.n	a4, 0x18
	bgeu	a4, a3, .L199
	.loc 1 1621 0
	mov.n	a3, a4
.LVL396:
.L199:
	.loc 1 1628 0
	l32r	a10, .LC168
	call8	vTaskEnterCritical
.LVL397:
	.loc 1 1632 0
	bnez.n	a2, .L200
	.loc 1 1632 0 is_stmt 0 discriminator 1
	call8	xTaskGetCurrentTaskHandle
.LVL398:
	mov.n	a2, a10
.LVL399:
.L200:
	.loc 1 1638 0 is_stmt 1 discriminator 4
	l32i	a4, a2, 88
.LVL400:
	.loc 1 1646 0 discriminator 4
	beq	a3, a4, .L201
	.loc 1 1650 0
	bgeu	a4, a3, .L202
.LBB475:
.LBB476:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a4
 extui a4,a4,13,1
# 0 "" 2
.LVL401:
#NO_APP
.LBE476:
.LBE475:
	.loc 1 1652 0
	l32r	a8, .LC169
	addx4	a4, a4, a8
	memw
	l32i.n	a4, a4, 0
	beq	a2, a4, .L211
	.loc 1 1657 0
	l32i	a10, a2, 72
	mov.n	a8, a10
.LBB477:
.LBB478:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a4
 extui a4,a4,13,1
# 0 "" 2
.LVL402:
#NO_APP
.LBE478:
.LBE477:
	.loc 1 1657 0
	beq	a10, a4, .L204
	.loc 1 1657 0 is_stmt 0 discriminator 2
	l32r	a4, .LC170
.LVL403:
	bne	a10, a4, .L205
.L204:
.LBB479:
.LBB480:
	.loc 2 208 0 is_stmt 1
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a4
 extui a4,a4,13,1
# 0 "" 2
#NO_APP
.LBE480:
.LBE479:
	.loc 1 1657 0
	l32r	a9, .LC169
	addx4	a4, a4, a9
	memw
	l32i.n	a4, a4, 0
	l32i.n	a4, a4, 48
	bgeu	a3, a4, .L212
.L205:
.LBB481:
.LBB482:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a4
 extui a4,a4,13,1
# 0 "" 2
.LVL404:
#NO_APP
.LBE482:
.LBE481:
	.loc 1 1661 0
	beq	a8, a4, .L213
	.loc 1 1663 0
	mov.n	a11, a3
	call8	taskYIELD_OTHER_CORE
.LVL405:
	.loc 1 1614 0
	movi.n	a4, 0
.LVL406:
	j	.L203
.LVL407:
.L202:
.LBB483:
.LBB484:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a4
 extui a4,a4,13,1
# 0 "" 2
.LVL408:
#NO_APP
.LBE484:
.LBE483:
	.loc 1 1677 0
	l32r	a8, .LC169
	addx4	a4, a4, a8
	memw
	l32i.n	a4, a4, 0
	beq	a2, a4, .L214
	.loc 1 1614 0
	movi.n	a4, 0
	j	.L203
.L211:
	movi.n	a4, 0
	j	.L203
.L212:
	.loc 1 1659 0
	movi.n	a4, 1
	j	.L203
.LVL409:
.L213:
	.loc 1 1614 0
	movi.n	a4, 0
.LVL410:
	j	.L203
.L214:
	.loc 1 1682 0
	movi.n	a4, 1
.LVL411:
.L203:
	.loc 1 1694 0
	l32i.n	a8, a2, 48
.LVL412:
	.loc 1 1700 0
	l32i	a9, a2, 88
	bne	a8, a9, .L206
	.loc 1 1702 0
	s32i.n	a3, a2, 48
.L206:
	.loc 1 1710 0
	s32i	a3, a2, 88
	.loc 1 1720 0
	l32i.n	a9, a2, 28
	bltz	a9, .L207
	.loc 1 1722 0
	movi.n	a9, 0x19
	sub	a3, a9, a3
.LVL413:
	s32i.n	a3, a2, 28
.L207:
	.loc 1 1733 0
	l32i.n	a10, a2, 24
	addx4	a8, a8, a8
.LVL414:
	slli	a9, a8, 2
	l32r	a3, .LC171
	add.n	a3, a9, a3
	bne	a10, a3, .L208
	.loc 1 1738 0
	addi.n	a5, a2, 8
	mov.n	a10, a5
	call8	uxListRemove
.LVL415:
	.loc 1 1749 0
	l32i.n	a2, a2, 48
.LVL416:
	l32r	a3, .LC172
	memw
	l32i.n	a3, a3, 0
	bgeu	a3, a2, .L209
	.loc 1 1749 0 is_stmt 0 discriminator 1
	l32r	a3, .LC172
	memw
	s32i.n	a2, a3, 0
.L209:
	.loc 1 1749 0 discriminator 3
	addx4	a2, a2, a2
	slli	a3, a2, 2
	mov.n	a2, a3
	mov.n	a11, a5
	l32r	a10, .LC171
	add.n	a10, a10, a3
	call8	vListInsertEnd
.LVL417:
.L208:
	.loc 1 1756 0 is_stmt 1
	bnei	a4, 1, .L201
.LBB485:
.LBB486:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
.LVL418:
#NO_APP
.LBE486:
.LBE485:
	.loc 1 1758 0
	call8	esp_crosscore_int_send_yield
.LVL419:
.L201:
	.loc 1 1770 0
	l32r	a10, .LC168
	call8	vTaskExitCritical
.LVL420:
	retw.n
.LFE32:
	.size	vTaskPrioritySet, .-vTaskPrioritySet
	.section	.text.vTaskSuspend,"ax",@progbits
	.literal_position
	.literal .LC173, xTaskQueueMutex
	.literal .LC174, xSuspendedTaskList
	.literal .LC175, pxCurrentTCB
	.literal .LC176, xSchedulerRunning
	.literal .LC177, uxSchedulerSuspended
	.literal .LC178, __FUNCTION__$5601
	.literal .LC179, .LC4
	.literal .LC180, .LC6
	.literal .LC181, uxCurrentNumberOfTasks
	.align	4
	.global	vTaskSuspend
	.type	vTaskSuspend, @function
vTaskSuspend:
.LFB33:
	.loc 1 1778 0
.LVL421:
	entry	sp, 32
.LCFI44:
	.loc 1 1782 0
	l32r	a10, .LC173
	call8	vTaskEnterCritical
.LVL422:
	.loc 1 1786 0
	bnez.n	a2, .L216
	.loc 1 1786 0 is_stmt 0 discriminator 1
	call8	xTaskGetCurrentTaskHandle
.LVL423:
	mov.n	a2, a10
.LVL424:
.L216:
	.loc 1 1792 0 is_stmt 1 discriminator 4
	addi.n	a3, a2, 8
	mov.n	a10, a3
	call8	uxListRemove
.LVL425:
	.loc 1 1802 0 discriminator 4
	l32i.n	a8, a2, 44
	beqz.n	a8, .L217
	.loc 1 1804 0
	addi	a10, a2, 28
	call8	uxListRemove
.LVL426:
.L217:
	.loc 1 1811 0
	mov.n	a11, a3
	l32r	a10, .LC174
	call8	vListInsertEnd
.LVL427:
.LBB487:
.LBB488:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE488:
.LBE487:
	.loc 1 1812 0
	l32r	a3, .LC175
	addx4	a8, a8, a3
	memw
	l32i.n	a3, a8, 0
.LVL428:
	.loc 1 1814 0
	l32r	a10, .LC173
	call8	vTaskExitCritical
.LVL429:
	.loc 1 1816 0
	bne	a2, a3, .L218
	.loc 1 1818 0
	l32r	a2, .LC176
.LVL430:
	memw
	l32i.n	a2, a2, 0
	beqz.n	a2, .L219
.LBB489:
.LBB490:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
#NO_APP
.LBE490:
.LBE489:
	.loc 1 1821 0
	l32r	a3, .LC177
.LVL431:
	addx4	a2, a2, a3
	memw
	l32i.n	a2, a2, 0
	beqz.n	a2, .L220
	.loc 1 1821 0 is_stmt 0 discriminator 1
	l32r	a13, .LC178
	movi	a12, 0x71d
	l32r	a11, .LC179
	l32r	a10, .LC180
	call8	ets_printf
.LVL432:
	call8	abort
.LVL433:
.L220:
.LBB491:
.LBB492:
	.loc 2 208 0 is_stmt 1
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
.LVL434:
#NO_APP
.LBE492:
.LBE491:
	.loc 1 1822 0
	call8	esp_crosscore_int_send_yield
.LVL435:
	retw.n
.LVL436:
.L219:
	.loc 1 1829 0
	l32r	a2, .LC174
	l32i.n	a3, a2, 0
.LVL437:
	l32r	a2, .LC181
	memw
	l32i.n	a2, a2, 0
	bne	a3, a2, .L222
	.loc 1 1835 0
	l32r	a3, .LC173
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL438:
.LBB493:
.LBB494:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
#NO_APP
.LBE494:
.LBE493:
	.loc 1 1836 0
	l32r	a8, .LC175
	addx4	a2, a2, a8
	movi.n	a8, 0
	memw
	s32i.n	a8, a2, 0
	.loc 1 1837 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL439:
	retw.n
.L222:
	.loc 1 1841 0
	call8	vTaskSwitchContext
.LVL440:
	retw.n
.LVL441:
.L218:
	.loc 1 1847 0
	l32r	a2, .LC176
.LVL442:
	memw
	l32i.n	a2, a2, 0
	beqz.n	a2, .L215
	.loc 1 1852 0
	l32r	a2, .LC173
	mov.n	a10, a2
	call8	vTaskEnterCritical
.LVL443:
	.loc 1 1854 0
	call8	prvResetNextTaskUnblockTime
.LVL444:
	.loc 1 1856 0
	mov.n	a10, a2
	call8	vTaskExitCritical
.LVL445:
.L215:
	retw.n
.LFE33:
	.size	vTaskSuspend, .-vTaskSuspend
	.section	.text.vTaskResume,"ax",@progbits
	.literal_position
	.literal .LC182, __FUNCTION__$5612
	.literal .LC183, .LC4
	.literal .LC184, .LC6
	.literal .LC185, xTaskQueueMutex
	.literal .LC186, pxCurrentTCB
	.literal .LC187, uxTopReadyPriority
	.literal .LC188, pxReadyTasksLists
	.literal .LC189, 2147483647
	.align	4
	.global	vTaskResume
	.type	vTaskResume, @function
vTaskResume:
.LFB35:
	.loc 1 1916 0
.LVL446:
	entry	sp, 32
.LCFI45:
.LVL447:
	.loc 1 1920 0
	bnez.n	a2, .L224
	.loc 1 1920 0 is_stmt 0 discriminator 1
	l32r	a13, .LC182
	movi	a12, 0x780
	l32r	a11, .LC183
	l32r	a10, .LC184
	call8	ets_printf
.LVL448:
	call8	abort
.LVL449:
.L224:
	.loc 1 1922 0 is_stmt 1
	l32r	a10, .LC185
	call8	vTaskEnterCritical
.LVL450:
	.loc 1 1925 0
	beqz.n	a2, .L225
.LBB495:
.LBB496:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE496:
.LBE495:
	.loc 1 1925 0
	l32r	a9, .LC186
	addx4	a8, a8, a9
	memw
	l32i.n	a8, a8, 0
	beq	a2, a8, .L225
	.loc 1 1928 0
	mov.n	a10, a2
	call8	prvTaskIsTaskSuspended
.LVL451:
	bnei	a10, 1, .L225
	.loc 1 1934 0
	addi.n	a3, a2, 8
	mov.n	a10, a3
	call8	uxListRemove
.LVL452:
	.loc 1 1935 0
	l32i.n	a8, a2, 48
	l32r	a9, .LC187
	memw
	l32i.n	a9, a9, 0
	bgeu	a9, a8, .L226
	.loc 1 1935 0 is_stmt 0 discriminator 1
	l32r	a9, .LC187
	memw
	s32i.n	a8, a9, 0
.L226:
	.loc 1 1935 0 discriminator 3
	addx4	a8, a8, a8
	slli	a9, a8, 2
	mov.n	a11, a3
	l32r	a10, .LC188
	add.n	a10, a10, a9
	call8	vListInsertEnd
.LVL453:
	.loc 1 1938 0 is_stmt 1 discriminator 3
	l32i	a10, a2, 72
	mov.n	a8, a10
.LBB497:
.LBB498:
	.loc 2 208 0 discriminator 3
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL454:
#NO_APP
.LBE498:
.LBE497:
	.loc 1 1938 0 discriminator 3
	beq	a10, a3, .L227
	.loc 1 1938 0 is_stmt 0 discriminator 2
	l32r	a3, .LC189
.LVL455:
	bne	a10, a3, .L228
.L227:
	.loc 1 1938 0 discriminator 3
	l32i.n	a9, a2, 48
.LBB499:
.LBB500:
	.loc 2 208 0 is_stmt 1 discriminator 3
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
#NO_APP
.LBE500:
.LBE499:
	.loc 1 1938 0 discriminator 3
	l32r	a11, .LC186
	addx4	a3, a3, a11
	memw
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 48
	bltu	a9, a3, .L228
.LBB501:
.LBB502:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
.LVL456:
#NO_APP
.LBE502:
.LBE501:
	.loc 1 1943 0
	call8	esp_crosscore_int_send_yield
.LVL457:
	j	.L225
.L228:
.LBB503:
.LBB504:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL458:
#NO_APP
.LBE504:
.LBE503:
	.loc 1 1945 0
	beq	a8, a3, .L225
	.loc 1 1947 0
	l32i.n	a11, a2, 48
	call8	taskYIELD_OTHER_CORE
.LVL459:
.L225:
	.loc 1 1964 0
	l32r	a10, .LC185
	call8	vTaskExitCritical
.LVL460:
	retw.n
.LFE35:
	.size	vTaskResume, .-vTaskResume
	.section	.text.xTaskResumeFromISR,"ax",@progbits
	.literal_position
	.literal .LC190, __FUNCTION__$5618
	.literal .LC191, .LC4
	.literal .LC192, .LC6
	.literal .LC193, xTaskQueueMutex
	.literal .LC194, uxSchedulerSuspended
	.literal .LC195, uxTopReadyPriority
	.literal .LC196, pxReadyTasksLists
	.literal .LC197, 2147483647
	.literal .LC198, pxCurrentTCB
	.literal .LC199, xPendingReadyList
	.align	4
	.global	xTaskResumeFromISR
	.type	xTaskResumeFromISR, @function
xTaskResumeFromISR:
.LFB36:
	.loc 1 1974 0
.LVL461:
	entry	sp, 32
.LCFI46:
.LVL462:
	.loc 1 1978 0
	bnez.n	a2, .L230
	.loc 1 1978 0 is_stmt 0 discriminator 1
	l32r	a13, .LC190
	movi	a12, 0x7ba
	l32r	a11, .LC191
	l32r	a10, .LC192
	call8	ets_printf
.LVL463:
	call8	abort
.LVL464:
.L230:
	.loc 1 1980 0 is_stmt 1
	l32r	a10, .LC193
	call8	vTaskEnterCritical
.LVL465:
	.loc 1 1983 0
	mov.n	a10, a2
	call8	prvTaskIsTaskSuspended
.LVL466:
	bnei	a10, 1, .L236
.LBB505:
.LBB506:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE506:
.LBE505:
	.loc 1 1988 0
	l32r	a9, .LC194
	addx4	a8, a8, a9
	memw
	l32i.n	a8, a8, 0
	bnez.n	a8, .L232
	.loc 1 1992 0
	addi.n	a3, a2, 8
	mov.n	a10, a3
	call8	uxListRemove
.LVL467:
	.loc 1 1993 0
	l32i.n	a8, a2, 48
	l32r	a9, .LC195
	memw
	l32i.n	a9, a9, 0
	bgeu	a9, a8, .L233
	.loc 1 1993 0 is_stmt 0 discriminator 1
	l32r	a9, .LC195
	memw
	s32i.n	a8, a9, 0
.L233:
	.loc 1 1993 0 discriminator 3
	addx4	a8, a8, a8
	slli	a9, a8, 2
	mov.n	a11, a3
	l32r	a10, .LC196
	add.n	a10, a10, a9
	call8	vListInsertEnd
.LVL468:
	.loc 1 1995 0 is_stmt 1 discriminator 3
	l32i	a10, a2, 72
	mov.n	a8, a10
.LBB507:
.LBB508:
	.loc 2 208 0 discriminator 3
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL469:
#NO_APP
.LBE508:
.LBE507:
	.loc 1 1995 0 discriminator 3
	beq	a10, a3, .L234
	.loc 1 1995 0 is_stmt 0 discriminator 2
	l32r	a3, .LC197
.LVL470:
	bne	a10, a3, .L235
.L234:
	.loc 1 1995 0 discriminator 3
	l32i.n	a9, a2, 48
.LBB509:
.LBB510:
	.loc 2 208 0 is_stmt 1 discriminator 3
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
#NO_APP
.LBE510:
.LBE509:
	.loc 1 1995 0 discriminator 3
	l32r	a11, .LC198
	addx4	a3, a3, a11
	memw
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 48
	bgeu	a9, a3, .L237
.L235:
.LBB511:
.LBB512:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL471:
#NO_APP
.LBE512:
.LBE511:
	.loc 1 1999 0
	beq	a8, a3, .L238
	.loc 1 2001 0
	l32i.n	a11, a2, 48
	call8	taskYIELD_OTHER_CORE
.LVL472:
	.loc 1 1975 0
	movi.n	a2, 0
.LVL473:
	j	.L231
.LVL474:
.L232:
.LBB513:
.LBB514:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL475:
#NO_APP
.LBE514:
.LBE513:
	.loc 1 2013 0
	addx4	a8, a8, a8
.LVL476:
	slli	a9, a8, 2
	addi	a11, a2, 28
	l32r	a10, .LC199
	add.n	a10, a10, a9
	call8	vListInsertEnd
.LVL477:
	.loc 1 1975 0
	movi.n	a2, 0
.LVL478:
	j	.L231
.LVL479:
.L236:
	movi.n	a2, 0
.LVL480:
	j	.L231
.LVL481:
.L237:
	.loc 1 1997 0
	movi.n	a2, 1
.LVL482:
	j	.L231
.LVL483:
.L238:
	.loc 1 1975 0
	movi.n	a2, 0
.LVL484:
.L231:
	.loc 1 2021 0
	l32r	a10, .LC193
	call8	vTaskExitCritical
.LVL485:
	.loc 1 2024 0
	retw.n
.LFE36:
	.size	xTaskResumeFromISR, .-xTaskResumeFromISR
	.section	.text.prvCheckTasksWaitingTermination,"ax",@progbits
	.literal_position
	.literal .LC200, xTaskQueueMutex
	.literal .LC201, xTasksWaitingTermination
	.literal .LC202, pxCurrentTCB
	.literal .LC203, -2147483647
	.literal .LC204, xTasksWaitingTermination+8
	.literal .LC205, uxCurrentNumberOfTasks
	.literal .LC206, uxTasksDeleted
	.align	4
	.type	prvCheckTasksWaitingTermination, @function
prvCheckTasksWaitingTermination:
.LFB64:
	.loc 1 3634 0
	entry	sp, 32
.LCFI47:
.LBB515:
.LBB516:
.LBB517:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL486:
#NO_APP
.LBE517:
.LBE516:
	.loc 1 3642 0
	j	.L240
.L247:
.LVL487:
.LBB518:
	.loc 1 3646 0
	l32r	a10, .LC200
	call8	vTaskEnterCritical
.LVL488:
	.loc 1 3648 0
	l32r	a2, .LC201
	l32i.n	a2, a2, 0
.LVL489:
	.loc 1 3649 0
	beqz.n	a2, .L248
.LBB519:
	.loc 1 3653 0
	l32r	a2, .LC201
.LVL490:
	l32i.n	a10, a2, 12
.LVL491:
	.loc 1 3654 0
	j	.L242
.LVL492:
.L245:
.LBB520:
	.loc 1 3655 0
	l32i.n	a2, a10, 12
.LVL493:
	.loc 1 3656 0
	l32i	a12, a2, 72
.LVL494:
	.loc 1 3658 0
	l32r	a9, .LC202
	addx4	a9, a3, a9
	memw
	l32i.n	a8, a9, 0
	beq	a2, a8, .L243
	.loc 1 3658 0 is_stmt 0 discriminator 1
	movi.n	a9, 0
	movi.n	a8, 1
	movnez	a8, a9, a3
	l32r	a9, .LC202
	addx4	a8, a8, a9
	memw
	l32i.n	a8, a8, 0
	beq	a2, a8, .L243
	.loc 1 3661 0 is_stmt 1
	sub	a9, a12, a3
	movi.n	a13, 1
	movi.n	a8, 0
	mov.n	a4, a8
	moveqz	a4, a13, a9
	l32r	a11, .LC203
	add.n	a11, a12, a11
	moveqz	a8, a13, a11
	or	a8, a8, a4
	bnez.n	a8, .L244
.L243:
.LBE520:
	.loc 1 3654 0
	l32i.n	a10, a10, 4
.LVL495:
.L242:
	.loc 1 3654 0 is_stmt 0 discriminator 1
	l32r	a2, .LC204
	bne	a10, a2, .L245
.LBE519:
	.loc 1 3644 0 is_stmt 1
	movi.n	a2, 0
.L244:
.LVL496:
.LBB521:
	.loc 1 3666 0
	beqz.n	a2, .L241
	.loc 1 3667 0
	call8	uxListRemove
.LVL497:
	.loc 1 3668 0
	l32r	a9, .LC205
	memw
	l32i.n	a8, a9, 0
	addi.n	a8, a8, -1
	memw
	s32i.n	a8, a9, 0
	.loc 1 3669 0
	l32r	a9, .LC206
	memw
	l32i.n	a8, a9, 0
	addi.n	a8, a8, -1
	memw
	s32i.n	a8, a9, 0
	j	.L241
.LVL498:
.L248:
.LBE521:
	.loc 1 3644 0
	movi.n	a2, 0
.LVL499:
.L241:
	.loc 1 3673 0
	l32r	a10, .LC200
	call8	vTaskExitCritical
.LVL500:
	.loc 1 3675 0
	beqz.n	a2, .L239
	.loc 1 3677 0
	mov.n	a10, a2
	call8	prvDeleteTLS
.LVL501:
	.loc 1 3679 0
	mov.n	a10, a2
	call8	prvDeleteTCB
.LVL502:
.L240:
.LBE518:
	.loc 1 3642 0
	l32r	a2, .LC206
	memw
	l32i.n	a2, a2, 0
	bnez.n	a2, .L247
.L239:
	retw.n
.LBE515:
.LFE64:
	.size	prvCheckTasksWaitingTermination, .-prvCheckTasksWaitingTermination
	.section	.text.prvIdleTask,"ax",@progbits
	.align	4
	.type	prvIdleTask, @function
prvIdleTask:
.LFB58:
	.loc 1 3362 0
.LVL503:
	entry	sp, 32
.LCFI48:
.L250:
	.loc 1 3369 0 discriminator 1
	call8	prvCheckTasksWaitingTermination
.LVL504:
.LBB522:
	.loc 1 3412 0 discriminator 1
	call8	esp_vApplicationIdleHook
.LVL505:
	j	.L250
.LBE522:
.LFE58:
	.size	prvIdleTask, .-prvIdleTask
	.section	.text.xTaskIncrementTick,"ax",@progbits
	.literal_position
	.literal .LC207, uxSchedulerSuspended
	.literal .LC208, xTaskQueueMutex
	.literal .LC209, xTickCount
	.literal .LC210, pxDelayedTaskList
	.literal .LC211, __FUNCTION__$5686
	.literal .LC212, 2503
	.literal .LC213, .LC4
	.literal .LC214, .LC6
	.literal .LC215, pxOverflowDelayedTaskList
	.literal .LC216, xNumOfOverflows
	.literal .LC217, xNextTaskUnblockTime
	.literal .LC218, uxTopReadyPriority
	.literal .LC219, pxReadyTasksLists
	.literal .LC220, pxCurrentTCB
	.literal .LC221, uxPendedTicks
	.literal .LC222, xYieldPending
	.align	4
	.global	xTaskIncrementTick
	.type	xTaskIncrementTick, @function
xTaskIncrementTick:
.LFB48:
	.loc 1 2458 0
	entry	sp, 32
.LCFI49:
.LVL506:
.LBB523:
.LBB524:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL507:
#NO_APP
.LBE524:
.LBE523:
	.loc 1 2472 0
	beqz.n	a2, .L252
	.loc 1 2474 0
	call8	esp_vApplicationTickHook
.LVL508:
	.loc 1 2484 0
	movi.n	a2, 1
.LVL509:
	retw.n
.LVL510:
.L252:
.LBB525:
.LBB526:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL511:
#NO_APP
.LBE526:
.LBE525:
	.loc 1 2490 0
	l32r	a3, .LC207
	addx4	a2, a2, a3
	memw
	l32i.n	a2, a2, 0
	bnez.n	a2, .L254
	.loc 1 2492 0
	l32r	a10, .LC208
	call8	vTaskEnterCritical
.LVL512:
	.loc 1 2495 0
	l32r	a2, .LC209
	memw
	l32i.n	a3, a2, 0
	addi.n	a3, a3, 1
	memw
	s32i.n	a3, a2, 0
.LBB527:
	.loc 1 2499 0
	memw
	l32i.n	a4, a2, 0
.LVL513:
	.loc 1 2501 0
	bnez.n	a4, .L255
.LBB528:
	.loc 1 2503 0
	l32r	a2, .LC210
	memw
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 0
	beqz.n	a2, .L256
	.loc 1 2503 0 is_stmt 0 discriminator 1
	l32r	a13, .LC211
	l32r	a12, .LC212
	l32r	a11, .LC213
	l32r	a10, .LC214
	call8	ets_printf
.LVL514:
	call8	abort
.LVL515:
.L256:
	.loc 1 2503 0 discriminator 2
	l32r	a3, .LC210
	memw
	l32i.n	a5, a3, 0
.LVL516:
	l32r	a2, .LC215
	memw
	l32i.n	a8, a2, 0
	memw
	s32i.n	a8, a3, 0
	memw
	s32i.n	a5, a2, 0
	l32r	a3, .LC216
	memw
	l32i.n	a2, a3, 0
	addi.n	a2, a2, 1
	memw
	s32i.n	a2, a3, 0
	call8	prvResetNextTaskUnblockTime
.LVL517:
.L255:
.LBE528:
	.loc 1 2514 0 is_stmt 1
	l32r	a2, .LC217
	memw
	l32i.n	a2, a2, 0
	bgeu	a4, a2, .L268
.LBE527:
	.loc 1 2461 0
	movi.n	a2, 0
	j	.L258
.LVL518:
.L269:
.LBB531:
	.loc 1 2580 0
	movi.n	a2, 1
.LVL519:
	j	.L257
.LVL520:
.L268:
	movi.n	a2, 0
.LVL521:
.L257:
	.loc 1 2518 0
	l32r	a3, .LC210
	memw
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 0
	bnez.n	a3, .L259
	.loc 1 2525 0
	movi.n	a4, -1
.LVL522:
	l32r	a3, .LC217
	memw
	s32i.n	a4, a3, 0
	.loc 1 2526 0
	j	.L258
.LVL523:
.L259:
	.loc 1 2534 0
	l32r	a3, .LC210
	memw
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 12
	l32i.n	a3, a3, 12
.LVL524:
	.loc 1 2535 0
	l32i.n	a5, a3, 8
.LVL525:
	.loc 1 2537 0
	bgeu	a4, a5, .L260
	.loc 1 2544 0
	l32r	a3, .LC217
.LVL526:
	memw
	s32i.n	a5, a3, 0
	.loc 1 2545 0
	j	.L258
.LVL527:
.L260:
	.loc 1 2553 0
	addi.n	a5, a3, 8
.LVL528:
	mov.n	a10, a5
	call8	uxListRemove
.LVL529:
	.loc 1 2557 0
	l32i.n	a8, a3, 44
	beqz.n	a8, .L261
	.loc 1 2559 0
	addi	a10, a3, 28
	call8	uxListRemove
.LVL530:
.L261:
	.loc 1 2568 0
	l32i.n	a8, a3, 48
	l32r	a9, .LC218
	memw
	l32i.n	a9, a9, 0
	bgeu	a9, a8, .L262
	.loc 1 2568 0 is_stmt 0 discriminator 1
	l32r	a9, .LC218
	memw
	s32i.n	a8, a9, 0
.L262:
	.loc 1 2568 0 discriminator 3
	addx4	a8, a8, a8
	slli	a9, a8, 2
	mov.n	a11, a5
	l32r	a10, .LC219
	add.n	a10, a10, a9
	call8	vListInsertEnd
.LVL531:
	.loc 1 2578 0 is_stmt 1 discriminator 3
	l32i.n	a5, a3, 48
.LBB529:
.LBB530:
	.loc 2 208 0 discriminator 3
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL532:
#NO_APP
.LBE530:
.LBE529:
	.loc 1 2578 0 discriminator 3
	l32r	a8, .LC220
	addx4	a3, a3, a8
	memw
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 48
	bgeu	a5, a3, .L269
	j	.L257
.LVL533:
.L258:
.LBE531:
.LBB532:
.LBB533:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
#NO_APP
.LBE533:
.LBE532:
	.loc 1 2598 0
	l32r	a4, .LC220
	addx4	a3, a3, a4
	memw
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 48
	addx4	a3, a3, a3
	slli	a4, a3, 2
	l32r	a3, .LC219
	add.n	a4, a3, a4
	l32i.n	a3, a4, 0
	bltui	a3, 2, .L265
	.loc 1 2600 0
	movi.n	a2, 1
.LVL534:
.L265:
	.loc 1 2612 0
	l32r	a3, .LC221
	memw
	l32i.n	a3, a3, 0
	bnez.n	a3, .L266
	.loc 1 2615 0
	call8	esp_vApplicationTickHook
.LVL535:
.L266:
	.loc 1 2626 0
	l32r	a10, .LC208
	call8	vTaskExitCritical
.LVL536:
	j	.L267
.LVL537:
.L254:
	.loc 1 2630 0
	l32r	a3, .LC221
	memw
	l32i.n	a2, a3, 0
	addi.n	a2, a2, 1
	memw
	s32i.n	a2, a3, 0
	.loc 1 2636 0
	call8	esp_vApplicationTickHook
.LVL538:
	.loc 1 2461 0
	movi.n	a2, 0
.LVL539:
.L267:
.LBB534:
.LBB535:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
#NO_APP
.LBE535:
.LBE534:
	.loc 1 2646 0
	l32r	a4, .LC222
	addx4	a3, a3, a4
	memw
	l32i.n	a3, a3, 0
	beqz.n	a3, .L253
	.loc 1 2648 0
	movi.n	a2, 1
.LVL540:
.L253:
	.loc 1 2658 0
	retw.n
.LFE48:
	.size	xTaskIncrementTick, .-xTaskIncrementTick
	.section	.text.xTaskResumeAll,"ax",@progbits
	.literal_position
	.literal .LC223, uxSchedulerSuspended
	.literal .LC224, __FUNCTION__$5648
	.literal .LC225, 2217
	.literal .LC226, .LC4
	.literal .LC227, .LC6
	.literal .LC228, xTaskQueueMutex
	.literal .LC229, uxCurrentNumberOfTasks
	.literal .LC230, xPendingReadyList
	.literal .LC231, uxTopReadyPriority
	.literal .LC232, pxReadyTasksLists
	.literal .LC233, 2147483647
	.literal .LC234, pxCurrentTCB
	.literal .LC235, xYieldPending
	.literal .LC236, uxPendedTicks
	.align	4
	.global	xTaskResumeAll
	.type	xTaskResumeAll, @function
xTaskResumeAll:
.LFB41:
	.loc 1 2211 0
	entry	sp, 32
.LCFI50:
.LVL541:
.LBB536:
.LBB537:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
#NO_APP
.LBE537:
.LBE536:
	.loc 1 2217 0
	l32r	a3, .LC223
	addx4	a2, a2, a3
	memw
	l32i.n	a2, a2, 0
	bnez.n	a2, .L273
	.loc 1 2217 0 is_stmt 0 discriminator 1
	l32r	a13, .LC224
	l32r	a12, .LC225
	l32r	a11, .LC226
	l32r	a10, .LC227
	call8	ets_printf
.LVL542:
	call8	abort
.LVL543:
.L273:
	.loc 1 2224 0 is_stmt 1
	l32r	a10, .LC228
	call8	vTaskEnterCritical
.LVL544:
.LBB538:
.LBB539:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
#NO_APP
.LBE539:
.LBE538:
	.loc 1 2226 0
	l32r	a8, .LC223
	addx4	a2, a2, a8
	memw
	l32i.n	a3, a2, 0
	addi.n	a3, a3, -1
	memw
	s32i.n	a3, a2, 0
.LBB540:
.LBB541:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL545:
#NO_APP
.LBE541:
.LBE540:
	.loc 1 2228 0
	addx4	a2, a2, a8
.LVL546:
	memw
	l32i.n	a2, a2, 0
	bnez.n	a2, .L284
	.loc 1 2230 0
	l32r	a2, .LC229
	memw
	l32i.n	a2, a2, 0
	bnez.n	a2, .L275
	j	.L274
.LVL547:
.L279:
.LBB542:
.LBB543:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL548:
#NO_APP
.LBE543:
.LBE542:
	.loc 1 2236 0
	addx4	a8, a8, a8
.LVL549:
	slli	a2, a8, 2
	l32r	a3, .LC230
	add.n	a2, a3, a2
	l32i.n	a2, a2, 12
	l32i.n	a2, a2, 12
.LVL550:
	.loc 1 2237 0
	addi	a10, a2, 28
	call8	uxListRemove
.LVL551:
	.loc 1 2238 0
	addi.n	a3, a2, 8
	mov.n	a10, a3
	call8	uxListRemove
.LVL552:
	.loc 1 2239 0
	l32i.n	a8, a2, 48
	l32r	a9, .LC231
	memw
	l32i.n	a9, a9, 0
	bgeu	a9, a8, .L276
	.loc 1 2239 0 is_stmt 0 discriminator 1
	l32r	a9, .LC231
	memw
	s32i.n	a8, a9, 0
.L276:
	.loc 1 2239 0 discriminator 3
	addx4	a8, a8, a8
	slli	a9, a8, 2
	mov.n	a11, a3
	l32r	a10, .LC232
	add.n	a10, a10, a9
	call8	vListInsertEnd
.LVL553:
	.loc 1 2243 0 is_stmt 1 discriminator 3
	l32i	a3, a2, 72
.LBB544:
.LBB545:
	.loc 2 208 0 discriminator 3
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL554:
#NO_APP
.LBE545:
.LBE544:
	.loc 1 2243 0 discriminator 3
	beq	a3, a8, .L277
	.loc 1 2243 0 is_stmt 0 discriminator 2
	l32r	a8, .LC233
.LVL555:
	bne	a3, a8, .L275
.L277:
	.loc 1 2243 0 discriminator 3
	l32i.n	a3, a2, 48
.LBB546:
.LBB547:
	.loc 2 208 0 is_stmt 1 discriminator 3
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL556:
#NO_APP
.LBE547:
.LBE546:
	.loc 1 2243 0 discriminator 3
	l32r	a8, .LC234
	addx4	a2, a2, a8
	memw
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 48
	bltu	a3, a2, .L275
.LBB548:
.LBB549:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
#NO_APP
.LBE549:
.LBE548:
	.loc 1 2246 0
	l32r	a3, .LC235
	addx4	a2, a2, a3
	movi.n	a3, 1
	memw
	s32i.n	a3, a2, 0
.L275:
.LBB550:
.LBB551:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL557:
#NO_APP
.LBE551:
.LBE550:
	.loc 1 2234 0
	addx4	a8, a8, a8
.LVL558:
	slli	a9, a8, 2
	l32r	a2, .LC230
	add.n	a9, a2, a9
	l32i.n	a2, a9, 0
	bnez.n	a2, .L279
	.loc 1 2258 0
	l32r	a2, .LC236
	memw
	l32i.n	a2, a2, 0
	bnez.n	a2, .L280
	j	.L281
.L283:
	.loc 1 2262 0
	call8	xTaskIncrementTick
.LVL559:
	beqz.n	a10, .L282
.LBB552:
.LBB553:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
#NO_APP
.LBE553:
.LBE552:
	.loc 1 2264 0
	l32r	a3, .LC235
	addx4	a2, a2, a3
	movi.n	a3, 1
	memw
	s32i.n	a3, a2, 0
.L282:
	.loc 1 2270 0
	l32r	a3, .LC236
	memw
	l32i.n	a2, a3, 0
	addi.n	a2, a2, -1
	memw
	s32i.n	a2, a3, 0
.L280:
	.loc 1 2260 0
	l32r	a2, .LC236
	memw
	l32i.n	a2, a2, 0
	bnez.n	a2, .L283
.L281:
.LBB554:
.LBB555:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
#NO_APP
.LBE555:
.LBE554:
	.loc 1 2278 0
	l32r	a3, .LC235
	addx4	a2, a2, a3
	memw
	l32i.n	a2, a2, 0
	bnei	a2, 1, .L285
.LVL560:
.LBB556:
.LBB557:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
.LVL561:
#NO_APP
.LBE557:
.LBE556:
	.loc 1 2285 0
	call8	esp_crosscore_int_send_yield
.LVL562:
	j	.L274
.LVL563:
.L284:
	.loc 1 2213 0
	movi.n	a2, 0
	j	.L274
.L285:
	movi.n	a2, 0
.LVL564:
.L274:
	.loc 1 2298 0
	l32r	a10, .LC228
	call8	vTaskExitCritical
.LVL565:
	.loc 1 2301 0
	retw.n
.LFE41:
	.size	xTaskResumeAll, .-xTaskResumeAll
	.section	.text.vTaskPlaceOnEventList,"ax",@progbits
	.literal_position
	.literal .LC237, __FUNCTION__$5722
	.literal .LC238, 2923
	.literal .LC239, .LC4
	.literal .LC240, .LC6
	.literal .LC241, xTaskQueueMutex
	.literal .LC242, pxCurrentTCB
	.literal .LC243, xSuspendedTaskList
	.literal .LC244, xTickCount
	.align	4
	.global	vTaskPlaceOnEventList
	.type	vTaskPlaceOnEventList, @function
vTaskPlaceOnEventList:
.LFB50:
	.loc 1 2920 0
.LVL566:
	entry	sp, 32
.LCFI51:
	.loc 1 2923 0
	bnez.n	a2, .L287
	.loc 1 2923 0 is_stmt 0 discriminator 1
	l32r	a13, .LC237
	l32r	a12, .LC238
	l32r	a11, .LC239
	l32r	a10, .LC240
	call8	ets_printf
.LVL567:
	call8	abort
.LVL568:
.L287:
	.loc 1 2925 0 is_stmt 1
	l32r	a10, .LC241
	call8	vTaskEnterCritical
.LVL569:
.LBB558:
.LBB559:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE559:
.LBE558:
	.loc 1 2931 0
	l32r	a4, .LC242
	addx4	a8, a8, a4
	memw
	l32i.n	a11, a8, 0
	addi	a11, a11, 28
	mov.n	a10, a2
	call8	vListInsert
.LVL570:
.LBB560:
.LBB561:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL571:
#NO_APP
.LBE561:
.LBE560:
	.loc 1 2936 0
	addx4	a8, a8, a4
.LVL572:
	memw
	l32i.n	a10, a8, 0
	addi.n	a10, a10, 8
	call8	uxListRemove
.LVL573:
	.loc 1 2949 0
	bnei	a3, -1, .L288
.LBB562:
.LBB563:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL574:
#NO_APP
.LBE563:
.LBE562:
	.loc 1 2955 0
	l32r	a3, .LC242
.LVL575:
	addx4	a2, a2, a3
	memw
	l32i.n	a11, a2, 0
	addi.n	a11, a11, 8
	l32r	a10, .LC243
	call8	vListInsertEnd
.LVL576:
	j	.L289
.LVL577:
.L288:
	.loc 1 2962 0
	l32r	a2, .LC244
.LVL578:
	memw
	l32i.n	a11, a2, 0
	add.n	a11, a3, a11
.LVL579:
.LBB564:
.LBB565:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
#NO_APP
.LBE565:
.LBE564:
	.loc 1 2963 0
	call8	prvAddCurrentTaskToDelayedList
.LVL580:
.L289:
	.loc 1 2976 0
	l32r	a10, .LC241
	call8	vTaskExitCritical
.LVL581:
	retw.n
.LFE50:
	.size	vTaskPlaceOnEventList, .-vTaskPlaceOnEventList
	.section	.text.vTaskPlaceOnUnorderedEventList,"ax",@progbits
	.literal_position
	.literal .LC245, __FUNCTION__$5729
	.literal .LC246, 2985
	.literal .LC247, .LC4
	.literal .LC248, .LC6
	.literal .LC249, xTaskQueueMutex
	.literal .LC250, uxSchedulerSuspended
	.literal .LC251, 2991
	.literal .LC252, pxCurrentTCB
	.literal .LC253, -2147483648
	.literal .LC254, xSuspendedTaskList
	.literal .LC255, xTickCount
	.align	4
	.global	vTaskPlaceOnUnorderedEventList
	.type	vTaskPlaceOnUnorderedEventList, @function
vTaskPlaceOnUnorderedEventList:
.LFB51:
	.loc 1 2982 0
.LVL582:
	entry	sp, 32
.LCFI52:
	.loc 1 2985 0
	bnez.n	a2, .L291
	.loc 1 2985 0 is_stmt 0 discriminator 1
	l32r	a13, .LC245
	l32r	a12, .LC246
	l32r	a11, .LC247
	l32r	a10, .LC248
	call8	ets_printf
.LVL583:
	call8	abort
.LVL584:
.L291:
	.loc 1 2987 0 is_stmt 1
	l32r	a10, .LC249
	call8	vTaskEnterCritical
.LVL585:
.LBB566:
.LBB567:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a5
 extui a5,a5,13,1
# 0 "" 2
#NO_APP
.LBE567:
.LBE566:
	.loc 1 2991 0
	l32r	a8, .LC250
	addx4	a5, a5, a8
	memw
	l32i.n	a5, a5, 0
	bnez.n	a5, .L292
	.loc 1 2991 0 is_stmt 0 discriminator 1
	l32r	a13, .LC245
	l32r	a12, .LC251
	l32r	a11, .LC247
	l32r	a10, .LC248
	call8	ets_printf
.LVL586:
	call8	abort
.LVL587:
.L292:
.LBB568:
.LBB569:
	.loc 2 208 0 is_stmt 1
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE569:
.LBE568:
	.loc 1 2996 0
	l32r	a5, .LC252
	addx4	a8, a8, a5
	memw
	l32i.n	a9, a8, 0
	l32r	a8, .LC253
	or	a3, a3, a8
.LVL588:
	s32i.n	a3, a9, 28
.LBB570:
.LBB571:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL589:
#NO_APP
.LBE571:
.LBE570:
	.loc 1 3003 0
	addx4	a3, a3, a5
.LVL590:
	memw
	l32i.n	a11, a3, 0
	addi	a11, a11, 28
	mov.n	a10, a2
	call8	vListInsertEnd
.LVL591:
.LBB572:
.LBB573:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL592:
#NO_APP
.LBE573:
.LBE572:
	.loc 1 3008 0
	addx4	a5, a2, a5
	memw
	l32i.n	a10, a5, 0
	addi.n	a10, a10, 8
	call8	uxListRemove
.LVL593:
	.loc 1 3021 0
	bnei	a4, -1, .L293
.LBB574:
.LBB575:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL594:
#NO_APP
.LBE575:
.LBE574:
	.loc 1 3026 0
	l32r	a3, .LC252
	addx4	a2, a2, a3
	memw
	l32i.n	a11, a2, 0
	addi.n	a11, a11, 8
	l32r	a10, .LC254
	call8	vListInsertEnd
.LVL595:
	j	.L294
.LVL596:
.L293:
	.loc 1 3033 0
	l32r	a2, .LC255
.LVL597:
	memw
	l32i.n	a11, a2, 0
	add.n	a11, a4, a11
.LVL598:
.LBB576:
.LBB577:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
#NO_APP
.LBE577:
.LBE576:
	.loc 1 3034 0
	call8	prvAddCurrentTaskToDelayedList
.LVL599:
.L294:
	.loc 1 3047 0
	l32r	a10, .LC249
	call8	vTaskExitCritical
.LVL600:
	retw.n
.LFE51:
	.size	vTaskPlaceOnUnorderedEventList, .-vTaskPlaceOnUnorderedEventList
	.section	.text.vTaskPlaceOnEventListRestricted,"ax",@progbits
	.literal_position
	.literal .LC256, xTaskQueueMutex
	.literal .LC257, __FUNCTION__$5735
	.literal .LC258, 3058
	.literal .LC259, .LC4
	.literal .LC260, .LC6
	.literal .LC261, pxCurrentTCB
	.literal .LC262, xTickCount
	.align	4
	.global	vTaskPlaceOnEventListRestricted
	.type	vTaskPlaceOnEventListRestricted, @function
vTaskPlaceOnEventListRestricted:
.LFB52:
	.loc 1 3054 0
.LVL601:
	entry	sp, 32
.LCFI53:
	.loc 1 3057 0
	l32r	a10, .LC256
	call8	vTaskEnterCritical
.LVL602:
	.loc 1 3058 0
	bnez.n	a2, .L296
	.loc 1 3058 0 is_stmt 0 discriminator 1
	l32r	a13, .LC257
	l32r	a12, .LC258
	l32r	a11, .LC259
	l32r	a10, .LC260
	call8	ets_printf
.LVL603:
	call8	abort
.LVL604:
.L296:
.LBB578:
.LBB579:
	.loc 2 208 0 is_stmt 1
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE579:
.LBE578:
	.loc 1 3070 0
	l32r	a4, .LC261
	addx4	a8, a8, a4
	memw
	l32i.n	a11, a8, 0
	addi	a11, a11, 28
	mov.n	a10, a2
	call8	vListInsertEnd
.LVL605:
.LBB580:
.LBB581:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL606:
#NO_APP
.LBE581:
.LBE580:
	.loc 1 3075 0
	addx4	a8, a8, a4
.LVL607:
	memw
	l32i.n	a10, a8, 0
	addi.n	a10, a10, 8
	call8	uxListRemove
.LVL608:
	.loc 1 3088 0
	l32r	a2, .LC262
.LVL609:
	memw
	l32i.n	a11, a2, 0
	add.n	a11, a11, a3
.LVL610:
.LBB582:
.LBB583:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
#NO_APP
.LBE583:
.LBE582:
	.loc 1 3091 0
	call8	prvAddCurrentTaskToDelayedList
.LVL611:
	.loc 1 3092 0
	l32r	a10, .LC256
	call8	vTaskExitCritical
.LVL612:
	retw.n
.LFE52:
	.size	vTaskPlaceOnEventListRestricted, .-vTaskPlaceOnEventListRestricted
	.section	.text.xTaskRemoveFromEventList,"ax",@progbits
	.literal_position
	.literal .LC263, xTaskQueueMutex
	.literal .LC264, __FUNCTION__$5744
	.literal .LC265, 3121
	.literal .LC266, .LC4
	.literal .LC267, .LC6
	.literal .LC268, 2147483647
	.literal .LC269, uxSchedulerSuspended
	.literal .LC270, uxTopReadyPriority
	.literal .LC271, pxReadyTasksLists
	.literal .LC272, xPendingReadyList
	.literal .LC273, pxCurrentTCB
	.literal .LC274, xYieldPending
	.align	4
	.global	xTaskRemoveFromEventList
	.type	xTaskRemoveFromEventList, @function
xTaskRemoveFromEventList:
.LFB53:
	.loc 1 3100 0
.LVL613:
	entry	sp, 32
.LCFI54:
	.loc 1 3108 0
	l32r	a10, .LC263
	call8	vTaskEnterCritical
.LVL614:
	.loc 1 3119 0
	l32i.n	a3, a2, 0
	beqz.n	a3, .L298
	.loc 1 3120 0
	l32i.n	a2, a2, 12
.LVL615:
	l32i.n	a2, a2, 12
.LVL616:
	.loc 1 3121 0
	bnez.n	a2, .L299
	.loc 1 3121 0 is_stmt 0 discriminator 1
	l32r	a13, .LC264
	l32r	a12, .LC265
	l32r	a11, .LC266
	l32r	a10, .LC267
	call8	ets_printf
.LVL617:
	call8	abort
.LVL618:
.L299:
	.loc 1 3122 0 is_stmt 1
	addi	a3, a2, 28
	mov.n	a10, a3
	call8	uxListRemove
.LVL619:
	.loc 1 3131 0
	l32i	a8, a2, 72
	l32r	a9, .LC268
	bne	a8, a9, .L314
	j	.L300
.LVL620:
.L298:
	.loc 1 3124 0
	l32r	a10, .LC263
	call8	vTaskExitCritical
.LVL621:
	.loc 1 3125 0
	movi.n	a2, 0
.LVL622:
	retw.n
.LVL623:
.L300:
.LBB584:
.LBB585:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
.LVL624:
#NO_APP
.LBE585:
.LBE584:
	.loc 1 3133 0
	movi.n	a8, 0
	j	.L303
.LVL625:
.L305:
	.loc 1 3134 0
	l32r	a9, .LC269
	addx4	a9, a8, a9
	memw
	l32i.n	a4, a9, 0
	beqz.n	a4, .L312
	.loc 1 3133 0 discriminator 2
	addi.n	a8, a8, 1
.LVL626:
.L303:
	.loc 1 3133 0 is_stmt 0 discriminator 1
	bltui	a8, 2, .L305
	.loc 1 3130 0 is_stmt 1
	movi.n	a8, 0
.LVL627:
	j	.L304
.LVL628:
.L314:
	.loc 1 3140 0
	mov.n	a10, a8
.LVL629:
	.loc 1 3141 0
	l32r	a4, .LC269
	addx4	a8, a8, a4
	memw
	l32i.n	a9, a8, 0
	movi.n	a4, 0
	movi.n	a8, 1
	movnez	a8, a4, a9
	extui	a8, a8, 0, 8
.LVL630:
	j	.L304
.LVL631:
.L312:
	.loc 1 3135 0
	movi.n	a8, 1
.LVL632:
.L304:
	.loc 1 3145 0
	beqz.n	a8, .L306
	.loc 1 3147 0
	addi.n	a4, a2, 8
	mov.n	a10, a4
.LVL633:
	call8	uxListRemove
.LVL634:
	.loc 1 3148 0
	l32i.n	a3, a2, 48
	l32r	a8, .LC270
	memw
	l32i.n	a8, a8, 0
	bgeu	a8, a3, .L307
	.loc 1 3148 0 is_stmt 0 discriminator 1
	l32r	a8, .LC270
	memw
	s32i.n	a3, a8, 0
.L307:
	.loc 1 3148 0 discriminator 3
	addx4	a3, a3, a3
	slli	a8, a3, 2
	mov.n	a11, a4
	l32r	a10, .LC271
	add.n	a10, a10, a8
	call8	vListInsertEnd
.LVL635:
	j	.L308
.LVL636:
.L306:
	.loc 1 3154 0 is_stmt 1
	addx4	a10, a10, a10
.LVL637:
	slli	a8, a10, 2
.LVL638:
	mov.n	a11, a3
	l32r	a10, .LC272
	add.n	a10, a10, a8
	call8	vListInsertEnd
.LVL639:
.L308:
	.loc 1 3157 0
	l32i	a10, a2, 72
	mov.n	a8, a10
.LBB586:
.LBB587:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL640:
#NO_APP
.LBE587:
.LBE586:
	.loc 1 3157 0
	beq	a10, a3, .L309
	.loc 1 3157 0 is_stmt 0 discriminator 2
	l32r	a3, .LC268
.LVL641:
	bne	a10, a3, .L310
.L309:
	.loc 1 3157 0 discriminator 3
	l32i.n	a4, a2, 48
.LBB588:
.LBB589:
	.loc 2 208 0 is_stmt 1 discriminator 3
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
#NO_APP
.LBE589:
.LBE588:
	.loc 1 3157 0 discriminator 3
	l32r	a9, .LC273
	addx4	a3, a3, a9
	memw
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 48
	bltu	a4, a3, .L310
.LVL642:
.LBB590:
.LBB591:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
#NO_APP
.LBE591:
.LBE590:
	.loc 1 3166 0
	l32r	a2, .LC274
.LVL643:
	addx4	a3, a3, a2
	movi.n	a2, 1
	memw
	s32i.n	a2, a3, 0
	j	.L311
.LVL644:
.L310:
.LBB592:
.LBB593:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL645:
#NO_APP
.LBE593:
.LBE592:
	.loc 1 3168 0
	beq	a8, a3, .L313
	.loc 1 3170 0
	l32i.n	a11, a2, 48
	call8	taskYIELD_OTHER_CORE
.LVL646:
	.loc 1 3171 0
	movi.n	a2, 0
.LVL647:
	j	.L311
.LVL648:
.L313:
	.loc 1 3175 0
	movi.n	a2, 0
.LVL649:
.L311:
	.loc 1 3191 0
	l32r	a10, .LC263
	call8	vTaskExitCritical
.LVL650:
	.loc 1 3194 0
	retw.n
.LFE53:
	.size	xTaskRemoveFromEventList, .-xTaskRemoveFromEventList
	.section	.text.xTaskRemoveFromUnorderedEventList,"ax",@progbits
	.literal_position
	.literal .LC275, xTaskQueueMutex
	.literal .LC276, uxSchedulerSuspended
	.literal .LC277, __FUNCTION__$5754
	.literal .LC278, 3205
	.literal .LC279, .LC4
	.literal .LC280, .LC6
	.literal .LC281, -2147483648
	.literal .LC282, 3213
	.literal .LC283, uxTopReadyPriority
	.literal .LC284, pxReadyTasksLists
	.literal .LC285, 2147483647
	.literal .LC286, pxCurrentTCB
	.literal .LC287, xYieldPending
	.align	4
	.global	xTaskRemoveFromUnorderedEventList
	.type	xTaskRemoveFromUnorderedEventList, @function
xTaskRemoveFromUnorderedEventList:
.LFB54:
	.loc 1 3198 0
.LVL651:
	entry	sp, 32
.LCFI55:
	.loc 1 3202 0
	l32r	a10, .LC275
	call8	vTaskEnterCritical
.LVL652:
.LBB594:
.LBB595:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE595:
.LBE594:
	.loc 1 3205 0
	l32r	a4, .LC276
	addx4	a8, a8, a4
	memw
	l32i.n	a4, a8, 0
	bnez.n	a4, .L316
	.loc 1 3205 0 is_stmt 0 discriminator 1
	l32r	a13, .LC277
	l32r	a12, .LC278
	l32r	a11, .LC279
	l32r	a10, .LC280
	call8	ets_printf
.LVL653:
	call8	abort
.LVL654:
.L316:
	.loc 1 3208 0 is_stmt 1
	l32r	a8, .LC281
	or	a3, a3, a8
.LVL655:
	s32i.n	a3, a2, 0
	.loc 1 3212 0
	l32i.n	a3, a2, 12
.LVL656:
	.loc 1 3213 0
	bnez.n	a3, .L317
	.loc 1 3213 0 is_stmt 0 discriminator 1
	l32r	a13, .LC277
	l32r	a12, .LC282
	l32r	a11, .LC279
	l32r	a10, .LC280
	call8	ets_printf
.LVL657:
	call8	abort
.LVL658:
.L317:
	.loc 1 3214 0 is_stmt 1
	mov.n	a10, a2
	call8	uxListRemove
.LVL659:
	.loc 1 3219 0
	addi.n	a4, a3, 8
	mov.n	a10, a4
	call8	uxListRemove
.LVL660:
	.loc 1 3220 0
	l32i.n	a8, a3, 48
	l32r	a2, .LC283
.LVL661:
	memw
	l32i.n	a2, a2, 0
	bgeu	a2, a8, .L318
	.loc 1 3220 0 is_stmt 0 discriminator 1
	l32r	a2, .LC283
	memw
	s32i.n	a8, a2, 0
.L318:
	.loc 1 3220 0 discriminator 3
	addx4	a8, a8, a8
	slli	a2, a8, 2
	mov.n	a11, a4
	l32r	a10, .LC284
	add.n	a10, a10, a2
	call8	vListInsertEnd
.LVL662:
	.loc 1 3222 0 is_stmt 1 discriminator 3
	l32i	a10, a3, 72
	mov.n	a4, a10
.LBB596:
.LBB597:
	.loc 2 208 0 discriminator 3
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL663:
#NO_APP
.LBE597:
.LBE596:
	.loc 1 3222 0 discriminator 3
	beq	a10, a2, .L319
	.loc 1 3222 0 is_stmt 0 discriminator 2
	l32r	a2, .LC285
.LVL664:
	bne	a10, a2, .L320
.L319:
	.loc 1 3222 0 discriminator 3
	l32i.n	a8, a3, 48
.LBB598:
.LBB599:
	.loc 2 208 0 is_stmt 1 discriminator 3
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
#NO_APP
.LBE599:
.LBE598:
	.loc 1 3222 0 discriminator 3
	l32r	a9, .LC286
	addx4	a2, a2, a9
	memw
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 48
	bltu	a8, a2, .L320
.LVL665:
.LBB600:
.LBB601:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL666:
#NO_APP
.LBE601:
.LBE600:
	.loc 1 3232 0
	l32r	a2, .LC287
	addx4	a3, a3, a2
	movi.n	a2, 1
	memw
	s32i.n	a2, a3, 0
	j	.L321
.LVL667:
.L320:
.LBB602:
.LBB603:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL668:
#NO_APP
.LBE603:
.LBE602:
	.loc 1 3234 0
	beq	a4, a2, .L322
	.loc 1 3236 0
	l32i.n	a11, a3, 48
	call8	taskYIELD_OTHER_CORE
.LVL669:
	.loc 1 3237 0
	movi.n	a2, 0
.LVL670:
	j	.L321
.LVL671:
.L322:
	.loc 1 3241 0
	movi.n	a2, 0
.LVL672:
.L321:
	.loc 1 3244 0
	l32r	a10, .LC275
	call8	vTaskExitCritical
.LVL673:
	.loc 1 3246 0
	retw.n
.LFE54:
	.size	xTaskRemoveFromUnorderedEventList, .-xTaskRemoveFromUnorderedEventList
	.section	.text.xTaskCheckForTimeOut,"ax",@progbits
	.literal_position
	.literal .LC288, __FUNCTION__$5764
	.literal .LC289, 3261
	.literal .LC290, .LC4
	.literal .LC291, .LC6
	.literal .LC292, 3262
	.literal .LC293, xTaskQueueMutex
	.literal .LC294, xTickCount
	.literal .LC295, xNumOfOverflows
	.align	4
	.global	xTaskCheckForTimeOut
	.type	xTaskCheckForTimeOut, @function
xTaskCheckForTimeOut:
.LFB56:
	.loc 1 3258 0
.LVL674:
	entry	sp, 32
.LCFI56:
	.loc 1 3261 0
	bnez.n	a2, .L324
	.loc 1 3261 0 is_stmt 0 discriminator 1
	l32r	a13, .LC288
	l32r	a12, .LC289
	l32r	a11, .LC290
	l32r	a10, .LC291
	call8	ets_printf
.LVL675:
	call8	abort
.LVL676:
.L324:
	.loc 1 3262 0 is_stmt 1
	bnez.n	a3, .L325
	.loc 1 3262 0 is_stmt 0 discriminator 1
	l32r	a13, .LC288
	l32r	a12, .LC292
	l32r	a11, .LC290
	l32r	a10, .LC291
	call8	ets_printf
.LVL677:
	call8	abort
.LVL678:
.L325:
	.loc 1 3264 0 is_stmt 1
	l32r	a10, .LC293
	call8	vTaskEnterCritical
.LVL679:
.LBB604:
	.loc 1 3267 0
	l32r	a8, .LC294
	memw
	l32i.n	a9, a8, 0
.LVL680:
	.loc 1 3273 0
	l32i.n	a8, a3, 0
	beqi	a8, -1, .L328
	.loc 1 3280 0
	l32i.n	a11, a2, 0
	l32r	a10, .LC295
	memw
	l32i.n	a10, a10, 0
	beq	a11, a10, .L327
	.loc 1 3280 0 is_stmt 0 discriminator 1
	l32i.n	a10, a2, 4
	bgeu	a9, a10, .L329
.L327:
	.loc 1 3288 0 is_stmt 1
	l32i.n	a10, a2, 4
	sub	a11, a9, a10
	bgeu	a11, a8, .L330
	.loc 1 3291 0
	sub	a9, a10, a9
.LVL681:
	add.n	a8, a8, a9
	s32i.n	a8, a3, 0
	.loc 1 3292 0
	mov.n	a10, a2
	call8	vTaskSetTimeOutState
.LVL682:
	.loc 1 3293 0
	movi.n	a2, 0
.LVL683:
	j	.L326
.LVL684:
.L328:
	.loc 1 3275 0
	movi.n	a2, 0
.LVL685:
	j	.L326
.LVL686:
.L329:
	.loc 1 3286 0
	movi.n	a2, 1
.LVL687:
	j	.L326
.LVL688:
.L330:
	.loc 1 3297 0
	movi.n	a2, 1
.LVL689:
.L326:
.LBE604:
	.loc 1 3300 0
	l32r	a10, .LC293
	call8	vTaskExitCritical
.LVL690:
	.loc 1 3303 0
	retw.n
.LFE56:
	.size	xTaskCheckForTimeOut, .-xTaskCheckForTimeOut
	.section	.text.vTaskSetThreadLocalStoragePointerAndDelCallback,"ax",@progbits
	.literal_position
	.literal .LC296, xTaskQueueMutex
	.align	4
	.global	vTaskSetThreadLocalStoragePointerAndDelCallback
	.type	vTaskSetThreadLocalStoragePointerAndDelCallback, @function
vTaskSetThreadLocalStoragePointerAndDelCallback:
.LFB59:
	.loc 1 3522 0
.LVL691:
	entry	sp, 32
.LCFI57:
	.loc 1 3525 0
	bgei	a3, 1, .L331
	.loc 1 3527 0
	l32r	a10, .LC296
	call8	vTaskEnterCritical
.LVL692:
	.loc 1 3528 0
	bnez.n	a2, .L333
	.loc 1 3528 0 is_stmt 0 discriminator 1
	call8	xTaskGetCurrentTaskHandle
.LVL693:
	mov.n	a2, a10
.LVL694:
.L333:
	.loc 1 3529 0 is_stmt 1 discriminator 4
	addi	a3, a3, 24
.LVL695:
	addx4	a2, a3, a2
.LVL696:
	s32i.n	a4, a2, 0
	.loc 1 3530 0 discriminator 4
	s32i.n	a5, a2, 4
	.loc 1 3531 0 discriminator 4
	l32r	a10, .LC296
	call8	vTaskExitCritical
.LVL697:
.L331:
	retw.n
.LFE59:
	.size	vTaskSetThreadLocalStoragePointerAndDelCallback, .-vTaskSetThreadLocalStoragePointerAndDelCallback
	.section	.text.vTaskSetThreadLocalStoragePointer,"ax",@progbits
	.align	4
	.global	vTaskSetThreadLocalStoragePointer
	.type	vTaskSetThreadLocalStoragePointer, @function
vTaskSetThreadLocalStoragePointer:
.LFB60:
	.loc 1 3536 0
.LVL698:
	entry	sp, 32
.LCFI58:
	.loc 1 3537 0
	movi.n	a13, 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	vTaskSetThreadLocalStoragePointerAndDelCallback
.LVL699:
	retw.n
.LFE60:
	.size	vTaskSetThreadLocalStoragePointer, .-vTaskSetThreadLocalStoragePointer
	.section	.text.vTaskPriorityInherit,"ax",@progbits
	.literal_position
	.literal .LC297, xTaskQueueMutex
	.literal .LC298, pxCurrentTCB
	.literal .LC299, pxReadyTasksLists
	.literal .LC300, uxTopReadyPriority
	.align	4
	.global	vTaskPriorityInherit
	.type	vTaskPriorityInherit, @function
vTaskPriorityInherit:
.LFB76:
	.loc 1 4054 0
.LVL700:
	entry	sp, 32
.LCFI59:
.LVL701:
	.loc 1 4057 0
	l32r	a10, .LC297
	call8	vTaskEnterCritical
.LVL702:
	.loc 1 4060 0
	beqz.n	a2, .L336
	.loc 1 4062 0
	l32i.n	a9, a2, 48
.LBB605:
.LBB606:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE606:
.LBE605:
	.loc 1 4062 0
	l32r	a10, .LC298
	addx4	a8, a8, a10
	memw
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 48
	bgeu	a9, a8, .L336
	.loc 1 4064 0
	l32r	a10, .LC297
	call8	vTaskEnterCritical
.LVL703:
	.loc 1 4068 0
	l32i.n	a8, a2, 28
	bltz	a8, .L337
.LBB607:
.LBB608:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE608:
.LBE607:
	.loc 1 4070 0
	l32r	a9, .LC298
	addx4	a8, a8, a9
	memw
	l32i.n	a8, a8, 0
	l32i.n	a9, a8, 48
	movi.n	a8, 0x19
	sub	a8, a8, a9
	s32i.n	a8, a2, 28
.L337:
	.loc 1 4079 0
	l32i.n	a10, a2, 24
	l32i.n	a8, a2, 48
	addx4	a8, a8, a8
	slli	a9, a8, 2
	l32r	a8, .LC299
	add.n	a8, a9, a8
	bne	a10, a8, .L338
	.loc 1 4081 0
	addi.n	a3, a2, 8
	mov.n	a10, a3
	call8	uxListRemove
.LVL704:
.LBB609:
.LBB610:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE610:
.LBE609:
	.loc 1 4091 0
	l32r	a9, .LC298
	addx4	a8, a8, a9
	memw
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 48
	s32i.n	a8, a2, 48
	.loc 1 4092 0
	l32r	a2, .LC300
.LVL705:
	memw
	l32i.n	a2, a2, 0
	bgeu	a2, a8, .L339
	.loc 1 4092 0 is_stmt 0 discriminator 1
	l32r	a2, .LC300
	memw
	s32i.n	a8, a2, 0
.L339:
	.loc 1 4092 0 discriminator 3
	addx4	a8, a8, a8
	slli	a2, a8, 2
	mov.n	a11, a3
	l32r	a10, .LC299
	add.n	a10, a10, a2
	call8	vListInsertEnd
.LVL706:
	j	.L340
.LVL707:
.L338:
.LBB611:
.LBB612:
	.loc 2 208 0 is_stmt 1
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE612:
.LBE611:
	.loc 1 4097 0
	l32r	a9, .LC298
	addx4	a8, a8, a9
	memw
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 48
	s32i.n	a8, a2, 48
.LVL708:
.L340:
	.loc 1 4100 0
	l32r	a10, .LC297
	call8	vTaskExitCritical
.LVL709:
.L336:
	.loc 1 4114 0
	l32r	a10, .LC297
	call8	vTaskExitCritical
.LVL710:
	retw.n
.LFE76:
	.size	vTaskPriorityInherit, .-vTaskPriorityInherit
	.section	.text.xTaskPriorityDisinherit,"ax",@progbits
	.literal_position
	.literal .LC301, xTaskQueueMutex
	.literal .LC302, __FUNCTION__$5889
	.literal .LC303, 4131
	.literal .LC304, .LC4
	.literal .LC305, .LC6
	.literal .LC306, uxTopReadyPriority
	.literal .LC307, pxReadyTasksLists
	.align	4
	.global	xTaskPriorityDisinherit
	.type	xTaskPriorityDisinherit, @function
xTaskPriorityDisinherit:
.LFB77:
	.loc 1 4124 0
.LVL711:
	entry	sp, 32
.LCFI60:
.LVL712:
	.loc 1 4127 0
	l32r	a10, .LC301
	call8	vTaskEnterCritical
.LVL713:
	.loc 1 4129 0
	beqz.n	a2, .L345
	.loc 1 4131 0
	l32i	a8, a2, 92
	bnez.n	a8, .L343
	.loc 1 4131 0 is_stmt 0 discriminator 1
	l32r	a13, .LC302
	l32r	a12, .LC303
	l32r	a11, .LC304
	l32r	a10, .LC305
	call8	ets_printf
.LVL714:
	call8	abort
.LVL715:
.L343:
	.loc 1 4132 0 is_stmt 1
	addi.n	a8, a8, -1
	s32i	a8, a2, 92
	.loc 1 4134 0
	l32i.n	a10, a2, 48
	l32i	a9, a2, 88
	beq	a10, a9, .L346
	.loc 1 4137 0
	bnez.n	a8, .L347
	.loc 1 4139 0
	l32r	a10, .LC301
	call8	vTaskEnterCritical
.LVL716:
	.loc 1 4145 0
	addi.n	a3, a2, 8
	mov.n	a10, a3
	call8	uxListRemove
.LVL717:
	.loc 1 4157 0
	l32i	a8, a2, 88
	s32i.n	a8, a2, 48
	.loc 1 4162 0
	movi.n	a9, 0x19
	sub	a9, a9, a8
	s32i.n	a9, a2, 28
	.loc 1 4163 0
	l32r	a2, .LC306
.LVL718:
	memw
	l32i.n	a2, a2, 0
	bgeu	a2, a8, .L344
	.loc 1 4163 0 is_stmt 0 discriminator 1
	l32r	a2, .LC306
	memw
	s32i.n	a8, a2, 0
.L344:
	.loc 1 4163 0 discriminator 3
	addx4	a8, a8, a8
	slli	a2, a8, 2
	mov.n	a11, a3
	l32r	a10, .LC307
	add.n	a10, a10, a2
	call8	vListInsertEnd
.LVL719:
	.loc 1 4174 0 is_stmt 1 discriminator 3
	l32r	a10, .LC301
	call8	vTaskExitCritical
.LVL720:
	.loc 1 4173 0 discriminator 3
	movi.n	a2, 1
	j	.L342
.LVL721:
.L345:
	.loc 1 4126 0
	movi.n	a2, 0
.LVL722:
	j	.L342
.LVL723:
.L346:
	movi.n	a2, 0
.LVL724:
	j	.L342
.LVL725:
.L347:
	movi.n	a2, 0
.LVL726:
.L342:
	.loc 1 4191 0
	l32r	a10, .LC301
	call8	vTaskExitCritical
.LVL727:
	.loc 1 4193 0
	retw.n
.LFE77:
	.size	xTaskPriorityDisinherit, .-xTaskPriorityDisinherit
	.section	.text.uxTaskResetEventItemValue,"ax",@progbits
	.literal_position
	.literal .LC308, xTaskQueueMutex
	.literal .LC309, pxCurrentTCB
	.align	4
	.global	uxTaskResetEventItemValue
	.type	uxTaskResetEventItemValue, @function
uxTaskResetEventItemValue:
.LFB89:
	.loc 1 4579 0
	entry	sp, 32
.LCFI61:
	.loc 1 4581 0
	l32r	a3, .LC308
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL728:
.LBB613:
.LBB614:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE614:
.LBE613:
	.loc 1 4582 0
	l32r	a9, .LC309
	addx4	a8, a8, a9
	memw
	l32i.n	a2, a8, 0
	l32i.n	a2, a2, 28
.LVL729:
.LBB615:
.LBB616:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL730:
#NO_APP
.LBE616:
.LBE615:
	.loc 1 4586 0
	addx4	a8, a8, a9
.LVL731:
	memw
	l32i.n	a10, a8, 0
.LBB617:
.LBB618:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL732:
#NO_APP
.LBE618:
.LBE617:
	.loc 1 4586 0
	addx4	a8, a8, a9
.LVL733:
	memw
	l32i.n	a8, a8, 0
	l32i.n	a9, a8, 48
	movi.n	a8, 0x19
	sub	a8, a8, a9
	s32i.n	a8, a10, 28
	.loc 1 4587 0
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL734:
	.loc 1 4590 0
	retw.n
.LFE89:
	.size	uxTaskResetEventItemValue, .-uxTaskResetEventItemValue
	.section	.text.pvTaskIncrementMutexHeldCount,"ax",@progbits
	.literal_position
	.literal .LC310, xTaskQueueMutex
	.literal .LC311, pxCurrentTCB
	.align	4
	.global	pvTaskIncrementMutexHeldCount
	.type	pvTaskIncrementMutexHeldCount, @function
pvTaskIncrementMutexHeldCount:
.LFB90:
	.loc 1 4596 0
	entry	sp, 32
.LCFI62:
	.loc 1 4601 0
	l32r	a10, .LC310
	call8	vTaskEnterCritical
.LVL735:
.LBB619:
.LBB620:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE620:
.LBE619:
	.loc 1 4602 0
	l32r	a2, .LC311
	addx4	a8, a8, a2
	memw
	l32i.n	a2, a8, 0
	beqz.n	a2, .L350
.LBB621:
.LBB622:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE622:
.LBE621:
	.loc 1 4604 0
	l32r	a2, .LC311
	addx4	a8, a8, a2
	memw
	l32i.n	a9, a8, 0
	l32i	a8, a9, 92
	addi.n	a8, a8, 1
	s32i	a8, a9, 92
.L350:
.LBB623:
.LBB624:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE624:
.LBE623:
	.loc 1 4606 0
	l32r	a2, .LC311
	addx4	a8, a8, a2
	memw
	l32i.n	a2, a8, 0
.LVL736:
	.loc 1 4607 0
	l32r	a10, .LC310
	call8	vTaskExitCritical
.LVL737:
	.loc 1 4610 0
	retw.n
.LFE90:
	.size	pvTaskIncrementMutexHeldCount, .-pvTaskIncrementMutexHeldCount
	.section	.text.ulTaskNotifyTake,"ax",@progbits
	.literal_position
	.literal .LC312, xTaskQueueMutex
	.literal .LC313, pxCurrentTCB
	.literal .LC314, xSuspendedTaskList
	.literal .LC315, xTickCount
	.align	4
	.global	ulTaskNotifyTake
	.type	ulTaskNotifyTake, @function
ulTaskNotifyTake:
.LFB91:
	.loc 1 4618 0
.LVL738:
	entry	sp, 32
.LCFI63:
	.loc 1 4622 0
	l32r	a10, .LC312
	call8	vTaskEnterCritical
.LVL739:
.LBB625:
.LBB626:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE626:
.LBE625:
	.loc 1 4625 0
	l32r	a9, .LC313
	addx4	a8, a8, a9
	memw
	l32i.n	a8, a8, 0
	memw
	l32i	a8, a8, 344
	bnez.n	a8, .L352
.LBB627:
.LBB628:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE628:
.LBE627:
	.loc 1 4628 0
	addx4	a8, a8, a9
	memw
	l32i.n	a8, a8, 0
	movi.n	a9, 1
	memw
	s32i	a9, a8, 348
	.loc 1 4630 0
	beqz.n	a3, .L352
.LBB629:
.LBB630:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE630:
.LBE629:
	.loc 1 4634 0
	l32r	a9, .LC313
	addx4	a8, a8, a9
	memw
	l32i.n	a10, a8, 0
	addi.n	a10, a10, 8
	call8	uxListRemove
.LVL740:
	.loc 1 4648 0
	bnei	a3, -1, .L353
.LBB631:
.LBB632:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL741:
#NO_APP
.LBE632:
.LBE631:
	.loc 1 4655 0
	l32r	a8, .LC313
	addx4	a3, a3, a8
	memw
	l32i.n	a11, a3, 0
	addi.n	a11, a11, 8
	l32r	a10, .LC314
	call8	vListInsertEnd
.LVL742:
	j	.L354
.LVL743:
.L353:
	.loc 1 4663 0
	l32r	a8, .LC315
	memw
	l32i.n	a11, a8, 0
	add.n	a11, a3, a11
.LVL744:
.LBB633:
.LBB634:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
#NO_APP
.LBE634:
.LBE633:
	.loc 1 4664 0
	call8	prvAddCurrentTaskToDelayedList
.LVL745:
.L354:
.LBB635:
.LBB636:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
.LVL746:
#NO_APP
.LBE636:
.LBE635:
	.loc 1 4682 0
	call8	esp_crosscore_int_send_yield
.LVL747:
.L352:
	.loc 1 4694 0
	l32r	a3, .LC312
	mov.n	a10, a3
	call8	vTaskExitCritical
.LVL748:
	.loc 1 4696 0
	mov.n	a10, a3
	call8	vTaskEnterCritical
.LVL749:
.LBB637:
.LBB638:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE638:
.LBE637:
	.loc 1 4698 0
	l32r	a3, .LC313
	addx4	a8, a8, a3
	memw
	l32i.n	a3, a8, 0
	memw
	l32i	a3, a3, 344
.LVL750:
	.loc 1 4700 0
	beqz.n	a3, .L355
	.loc 1 4702 0
	beqz.n	a2, .L356
.LBB639:
.LBB640:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL751:
#NO_APP
.LBE640:
.LBE639:
	.loc 1 4704 0
	l32r	a8, .LC313
	addx4	a2, a2, a8
	memw
	l32i.n	a2, a2, 0
	movi.n	a8, 0
	memw
	s32i	a8, a2, 344
	j	.L355
.LVL752:
.L356:
.LBB641:
.LBB642:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL753:
#NO_APP
.LBE642:
.LBE641:
	.loc 1 4708 0
	l32r	a8, .LC313
	addx4	a2, a2, a8
	memw
	l32i.n	a8, a2, 0
	memw
	l32i	a2, a8, 344
	addi.n	a2, a2, -1
	memw
	s32i	a2, a8, 344
.L355:
.LBB643:
.LBB644:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE644:
.LBE643:
	.loc 1 4716 0
	l32r	a2, .LC313
	addx4	a8, a8, a2
	memw
	l32i.n	a2, a8, 0
	movi.n	a8, 0
	memw
	s32i	a8, a2, 348
	.loc 1 4718 0
	l32r	a10, .LC312
	call8	vTaskExitCritical
.LVL754:
	.loc 1 4721 0
	mov.n	a2, a3
	retw.n
.LFE91:
	.size	ulTaskNotifyTake, .-ulTaskNotifyTake
	.section	.text.xTaskNotifyWait,"ax",@progbits
	.literal_position
	.literal .LC316, xTaskQueueMutex
	.literal .LC317, pxCurrentTCB
	.literal .LC318, xSuspendedTaskList
	.literal .LC319, xTickCount
	.align	4
	.global	xTaskNotifyWait
	.type	xTaskNotifyWait, @function
xTaskNotifyWait:
.LFB92:
	.loc 1 4729 0
.LVL755:
	entry	sp, 32
.LCFI64:
	.loc 1 4733 0
	l32r	a10, .LC316
	call8	vTaskEnterCritical
.LVL756:
.LBB645:
.LBB646:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE646:
.LBE645:
	.loc 1 4736 0
	l32r	a9, .LC317
	addx4	a8, a8, a9
	memw
	l32i.n	a8, a8, 0
	memw
	l32i	a8, a8, 348
	beqi	a8, 2, .L358
.LBB647:
.LBB648:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE648:
.LBE647:
	.loc 1 4741 0
	addx4	a8, a8, a9
	memw
	l32i.n	a8, a8, 0
	memw
	l32i	a10, a8, 344
	movi.n	a11, -1
	xor	a2, a11, a2
.LVL757:
	and	a2, a10, a2
	memw
	s32i	a2, a8, 344
.LBB649:
.LBB650:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
.LVL758:
#NO_APP
.LBE650:
.LBE649:
	.loc 1 4744 0
	addx4	a2, a2, a9
.LVL759:
	memw
	l32i.n	a2, a2, 0
	movi.n	a8, 1
	memw
	s32i	a8, a2, 348
	.loc 1 4746 0
	beqz.n	a5, .L358
.LBB651:
.LBB652:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
#NO_APP
.LBE652:
.LBE651:
	.loc 1 4750 0
	addx4	a2, a2, a9
	memw
	l32i.n	a10, a2, 0
	addi.n	a10, a10, 8
	call8	uxListRemove
.LVL760:
	.loc 1 4764 0
	bnei	a5, -1, .L359
.LBB653:
.LBB654:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
#NO_APP
.LBE654:
.LBE653:
	.loc 1 4771 0
	l32r	a5, .LC317
.LVL761:
	addx4	a2, a2, a5
	memw
	l32i.n	a11, a2, 0
	addi.n	a11, a11, 8
	l32r	a10, .LC318
	call8	vListInsertEnd
.LVL762:
	j	.L360
.LVL763:
.L359:
	.loc 1 4779 0
	l32r	a2, .LC319
	memw
	l32i.n	a11, a2, 0
	add.n	a11, a5, a11
.LVL764:
.LBB655:
.LBB656:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
#NO_APP
.LBE656:
.LBE655:
	.loc 1 4780 0
	call8	prvAddCurrentTaskToDelayedList
.LVL765:
.L360:
.LBB657:
.LBB658:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
.LVL766:
#NO_APP
.LBE658:
.LBE657:
	.loc 1 4798 0
	call8	esp_crosscore_int_send_yield
.LVL767:
.L358:
	.loc 1 4810 0
	l32r	a2, .LC316
	mov.n	a10, a2
	call8	vTaskExitCritical
.LVL768:
	.loc 1 4812 0
	mov.n	a10, a2
	call8	vTaskEnterCritical
.LVL769:
	.loc 1 4814 0
	beqz.n	a4, .L361
.LBB659:
.LBB660:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
#NO_APP
.LBE660:
.LBE659:
	.loc 1 4818 0
	l32r	a5, .LC317
	addx4	a2, a2, a5
	memw
	l32i.n	a2, a2, 0
	memw
	l32i	a2, a2, 344
	s32i.n	a2, a4, 0
.L361:
.LBB661:
.LBB662:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE662:
.LBE661:
	.loc 1 4825 0
	l32r	a2, .LC317
	addx4	a8, a8, a2
	memw
	l32i.n	a2, a8, 0
	memw
	l32i	a2, a2, 348
	beqi	a2, 1, .L363
.LBB663:
.LBB664:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a2
 extui a2,a2,13,1
# 0 "" 2
#NO_APP
.LBE664:
.LBE663:
	.loc 1 4834 0
	l32r	a4, .LC317
.LVL770:
	addx4	a2, a2, a4
	memw
	l32i.n	a2, a2, 0
	memw
	l32i	a4, a2, 344
	movi.n	a5, -1
	xor	a3, a5, a3
.LVL771:
	and	a3, a4, a3
	memw
	s32i	a3, a2, 344
.LVL772:
	.loc 1 4835 0
	movi.n	a2, 1
	j	.L362
.LVL773:
.L363:
	.loc 1 4828 0
	movi.n	a2, 0
.LVL774:
.L362:
.LBB665:
.LBB666:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE666:
.LBE665:
	.loc 1 4838 0
	l32r	a3, .LC317
	addx4	a8, a8, a3
	memw
	l32i.n	a3, a8, 0
	movi.n	a4, 0
	memw
	s32i	a4, a3, 348
	.loc 1 4840 0
	l32r	a10, .LC316
	call8	vTaskExitCritical
.LVL775:
	.loc 1 4843 0
	retw.n
.LFE92:
	.size	xTaskNotifyWait, .-xTaskNotifyWait
	.section	.text.xTaskNotify,"ax",@progbits
	.literal_position
	.literal .LC320, __FUNCTION__$5985
	.literal .LC321, 4856
	.literal .LC322, .LC4
	.literal .LC323, .LC6
	.literal .LC324, xTaskQueueMutex
	.literal .LC325, uxTopReadyPriority
	.literal .LC326, pxReadyTasksLists
	.literal .LC327, 4906
	.literal .LC328, 2147483647
	.literal .LC329, pxCurrentTCB
	.align	4
	.global	xTaskNotify
	.type	xTaskNotify, @function
xTaskNotify:
.LFB93:
	.loc 1 4851 0
.LVL776:
	entry	sp, 32
.LCFI65:
.LVL777:
	.loc 1 4856 0
	bnez.n	a2, .L365
	.loc 1 4856 0 is_stmt 0 discriminator 1
	l32r	a13, .LC320
	l32r	a12, .LC321
	l32r	a11, .LC322
	l32r	a10, .LC323
	call8	ets_printf
.LVL778:
	call8	abort
.LVL779:
.L365:
	.loc 1 4859 0 is_stmt 1
	l32r	a10, .LC324
	call8	vTaskEnterCritical
.LVL780:
	.loc 1 4861 0
	memw
	l32i	a8, a2, 348
.LVL781:
	.loc 1 4863 0
	movi.n	a9, 2
	memw
	s32i	a9, a2, 348
	.loc 1 4865 0
	beq	a4, a9, .L367
	bgeui	a4, 3, .L368
	beqi	a4, 1, .L369
	j	.L377
.L368:
	beqi	a4, 3, .L370
	beqi	a4, 4, .L371
	j	.L377
.L369:
	.loc 1 4868 0
	memw
	l32i	a4, a2, 344
.LVL782:
	or	a3, a4, a3
.LVL783:
	memw
	s32i	a3, a2, 344
	.loc 1 4854 0
	movi.n	a3, 1
	.loc 1 4869 0
	j	.L366
.LVL784:
.L367:
	.loc 1 4872 0
	memw
	l32i	a3, a2, 344
.LVL785:
	addi.n	a3, a3, 1
	memw
	s32i	a3, a2, 344
	.loc 1 4854 0
	movi.n	a3, 1
	.loc 1 4873 0
	j	.L366
.LVL786:
.L370:
	.loc 1 4876 0
	memw
	s32i	a3, a2, 344
	.loc 1 4854 0
	movi.n	a3, 1
.LVL787:
	.loc 1 4877 0
	j	.L366
.LVL788:
.L371:
	.loc 1 4880 0
	beqi	a8, 2, .L378
	.loc 1 4882 0
	memw
	s32i	a3, a2, 344
	.loc 1 4854 0
	movi.n	a3, 1
.LVL789:
	j	.L366
.LVL790:
.L377:
	movi.n	a3, 1
.LVL791:
	j	.L366
.LVL792:
.L378:
	.loc 1 4887 0
	movi.n	a3, 0
.LVL793:
.L366:
	.loc 1 4900 0
	bnei	a8, 1, .L372
	.loc 1 4902 0
	addi.n	a5, a2, 8
	mov.n	a10, a5
	call8	uxListRemove
.LVL794:
	.loc 1 4903 0
	l32i.n	a4, a2, 48
	l32r	a8, .LC325
	memw
	l32i.n	a8, a8, 0
	bgeu	a8, a4, .L373
	.loc 1 4903 0 is_stmt 0 discriminator 1
	l32r	a8, .LC325
	memw
	s32i.n	a4, a8, 0
.L373:
	.loc 1 4903 0 discriminator 3
	addx4	a4, a4, a4
	slli	a8, a4, 2
	mov.n	a11, a5
	l32r	a10, .LC326
	add.n	a10, a10, a8
	call8	vListInsertEnd
.LVL795:
	.loc 1 4906 0 is_stmt 1 discriminator 3
	l32i.n	a4, a2, 44
	beqz.n	a4, .L374
	.loc 1 4906 0 discriminator 1
	l32r	a13, .LC320
	l32r	a12, .LC327
	l32r	a11, .LC322
	l32r	a10, .LC323
	call8	ets_printf
.LVL796:
	call8	abort
.LVL797:
.L374:
	.loc 1 4908 0
	l32i	a10, a2, 72
	mov.n	a5, a10
.LBB667:
.LBB668:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a4
 extui a4,a4,13,1
# 0 "" 2
.LVL798:
#NO_APP
.LBE668:
.LBE667:
	.loc 1 4908 0
	beq	a10, a4, .L375
	.loc 1 4908 0 is_stmt 0 discriminator 2
	l32r	a4, .LC328
.LVL799:
	bne	a10, a4, .L376
.L375:
	.loc 1 4908 0 discriminator 3
	l32i.n	a8, a2, 48
.LBB669:
.LBB670:
	.loc 2 208 0 is_stmt 1 discriminator 3
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a4
 extui a4,a4,13,1
# 0 "" 2
#NO_APP
.LBE670:
.LBE669:
	.loc 1 4908 0 discriminator 3
	l32r	a9, .LC329
	addx4	a4, a4, a9
	memw
	l32i.n	a4, a4, 0
	l32i.n	a4, a4, 48
	bgeu	a4, a8, .L376
.LBB671:
.LBB672:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a10
 extui a10,a10,13,1
# 0 "" 2
.LVL800:
#NO_APP
.LBE672:
.LBE671:
	.loc 1 4912 0
	call8	esp_crosscore_int_send_yield
.LVL801:
	j	.L372
.L376:
.LBB673:
.LBB674:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a4
 extui a4,a4,13,1
# 0 "" 2
.LVL802:
#NO_APP
.LBE674:
.LBE673:
	.loc 1 4914 0
	beq	a5, a4, .L372
	.loc 1 4916 0
	l32i.n	a11, a2, 48
	call8	taskYIELD_OTHER_CORE
.LVL803:
.L372:
	.loc 1 4928 0
	l32r	a10, .LC324
	call8	vTaskExitCritical
.LVL804:
	.loc 1 4931 0
	mov.n	a2, a3
.LVL805:
	retw.n
.LFE93:
	.size	xTaskNotify, .-xTaskNotify
	.section	.text.xTaskNotifyFromISR,"ax",@progbits
	.literal_position
	.literal .LC330, __FUNCTION__$6001
	.literal .LC331, 4944
	.literal .LC332, .LC4
	.literal .LC333, .LC6
	.literal .LC334, xTaskQueueMutex
	.literal .LC335, 4993
	.literal .LC336, uxSchedulerSuspended
	.literal .LC337, uxTopReadyPriority
	.literal .LC338, pxReadyTasksLists
	.literal .LC339, xPendingReadyList
	.literal .LC340, 2147483647
	.literal .LC341, pxCurrentTCB
	.align	4
	.global	xTaskNotifyFromISR
	.type	xTaskNotifyFromISR, @function
xTaskNotifyFromISR:
.LFB94:
	.loc 1 4939 0
.LVL806:
	entry	sp, 32
.LCFI66:
.LVL807:
	.loc 1 4944 0
	bnez.n	a2, .L380
	.loc 1 4944 0 is_stmt 0 discriminator 1
	l32r	a13, .LC330
	l32r	a12, .LC331
	l32r	a11, .LC332
	l32r	a10, .LC333
	call8	ets_printf
.LVL808:
	call8	abort
.LVL809:
.L380:
	.loc 1 4948 0 is_stmt 1
	l32r	a10, .LC334
	call8	vTaskEnterCritical
.LVL810:
	.loc 1 4951 0
	memw
	l32i	a8, a2, 348
.LVL811:
	.loc 1 4953 0
	movi.n	a9, 2
	memw
	s32i	a9, a2, 348
	.loc 1 4955 0
	beq	a4, a9, .L382
	bgeui	a4, 3, .L383
	beqi	a4, 1, .L384
	j	.L394
.L383:
	beqi	a4, 3, .L385
	beqi	a4, 4, .L386
	j	.L394
.L384:
	.loc 1 4958 0
	memw
	l32i	a4, a2, 344
.LVL812:
	or	a3, a4, a3
.LVL813:
	memw
	s32i	a3, a2, 344
	.loc 1 4942 0
	movi.n	a3, 1
	.loc 1 4959 0
	j	.L381
.LVL814:
.L382:
	.loc 1 4962 0
	memw
	l32i	a3, a2, 344
.LVL815:
	addi.n	a3, a3, 1
	memw
	s32i	a3, a2, 344
	.loc 1 4942 0
	movi.n	a3, 1
	.loc 1 4963 0
	j	.L381
.LVL816:
.L385:
	.loc 1 4966 0
	memw
	s32i	a3, a2, 344
	.loc 1 4942 0
	movi.n	a3, 1
.LVL817:
	.loc 1 4967 0
	j	.L381
.LVL818:
.L386:
	.loc 1 4970 0
	beqi	a8, 2, .L395
	.loc 1 4972 0
	memw
	s32i	a3, a2, 344
	.loc 1 4942 0
	movi.n	a3, 1
.LVL819:
	j	.L381
.LVL820:
.L394:
	movi.n	a3, 1
.LVL821:
	j	.L381
.LVL822:
.L395:
	.loc 1 4977 0
	movi.n	a3, 0
.LVL823:
.L381:
	.loc 1 4990 0
	bnei	a8, 1, .L387
	.loc 1 4993 0
	l32i.n	a4, a2, 44
	beqz.n	a4, .L388
	.loc 1 4993 0 discriminator 1
	l32r	a13, .LC330
	l32r	a12, .LC335
	l32r	a11, .LC332
	l32r	a10, .LC333
	call8	ets_printf
.LVL824:
	call8	abort
.LVL825:
.L388:
.LBB675:
.LBB676:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a4
 extui a4,a4,13,1
# 0 "" 2
#NO_APP
.LBE676:
.LBE675:
	.loc 1 4995 0
	l32r	a8, .LC336
.LVL826:
	addx4	a4, a4, a8
	memw
	l32i.n	a4, a4, 0
	bnez.n	a4, .L389
	.loc 1 4997 0
	addi.n	a6, a2, 8
	mov.n	a10, a6
	call8	uxListRemove
.LVL827:
	.loc 1 4998 0
	l32i.n	a4, a2, 48
	l32r	a8, .LC337
	memw
	l32i.n	a8, a8, 0
	bgeu	a8, a4, .L390
	.loc 1 4998 0 is_stmt 0 discriminator 1
	l32r	a8, .LC337
	memw
	s32i.n	a4, a8, 0
.L390:
	.loc 1 4998 0 discriminator 3
	addx4	a4, a4, a4
	slli	a8, a4, 2
	mov.n	a11, a6
	l32r	a10, .LC338
	add.n	a10, a10, a8
	call8	vListInsertEnd
.LVL828:
	j	.L391
.L389:
.LBB677:
.LBB678:
	.loc 2 208 0 is_stmt 1
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a4
 extui a4,a4,13,1
# 0 "" 2
.LVL829:
#NO_APP
.LBE678:
.LBE677:
	.loc 1 5004 0
	addx4	a4, a4, a4
.LVL830:
	slli	a8, a4, 2
	addi	a11, a2, 28
	l32r	a10, .LC339
	add.n	a10, a10, a8
	call8	vListInsertEnd
.LVL831:
.L391:
	.loc 1 5007 0
	l32i	a10, a2, 72
	mov.n	a8, a10
.LBB679:
.LBB680:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a4
 extui a4,a4,13,1
# 0 "" 2
.LVL832:
#NO_APP
.LBE680:
.LBE679:
	.loc 1 5007 0
	beq	a10, a4, .L392
	.loc 1 5007 0 is_stmt 0 discriminator 2
	l32r	a4, .LC340
.LVL833:
	bne	a10, a4, .L393
.L392:
	.loc 1 5007 0 discriminator 3
	l32i.n	a6, a2, 48
.LBB681:
.LBB682:
	.loc 2 208 0 is_stmt 1 discriminator 3
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a4
 extui a4,a4,13,1
# 0 "" 2
#NO_APP
.LBE682:
.LBE681:
	.loc 1 5007 0 discriminator 3
	l32r	a9, .LC341
	addx4	a4, a4, a9
	memw
	l32i.n	a4, a4, 0
	l32i.n	a4, a4, 48
	bgeu	a4, a6, .L393
	.loc 1 5011 0
	beqz.n	a5, .L387
	.loc 1 5013 0
	movi.n	a2, 1
.LVL834:
	s32i.n	a2, a5, 0
	j	.L387
.LVL835:
.L393:
.LBB683:
.LBB684:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a4
 extui a4,a4,13,1
# 0 "" 2
.LVL836:
#NO_APP
.LBE684:
.LBE683:
	.loc 1 5016 0
	beq	a8, a4, .L387
	.loc 1 5018 0
	l32i.n	a11, a2, 48
	call8	taskYIELD_OTHER_CORE
.LVL837:
.L387:
	.loc 1 5026 0
	l32r	a10, .LC334
	call8	vTaskExitCritical
.LVL838:
	.loc 1 5029 0
	mov.n	a2, a3
	retw.n
.LFE94:
	.size	xTaskNotifyFromISR, .-xTaskNotifyFromISR
	.section	.text.vTaskNotifyGiveFromISR,"ax",@progbits
	.literal_position
	.literal .LC342, __FUNCTION__$6014
	.literal .LC343, 5041
	.literal .LC344, .LC4
	.literal .LC345, .LC6
	.literal .LC346, xTaskQueueMutex
	.literal .LC347, 5060
	.literal .LC348, uxSchedulerSuspended
	.literal .LC349, uxTopReadyPriority
	.literal .LC350, pxReadyTasksLists
	.literal .LC351, xPendingReadyList
	.literal .LC352, 2147483647
	.literal .LC353, pxCurrentTCB
	.align	4
	.global	vTaskNotifyGiveFromISR
	.type	vTaskNotifyGiveFromISR, @function
vTaskNotifyGiveFromISR:
.LFB95:
	.loc 1 5037 0
.LVL839:
	entry	sp, 32
.LCFI67:
	.loc 1 5041 0
	bnez.n	a2, .L397
	.loc 1 5041 0 is_stmt 0 discriminator 1
	l32r	a13, .LC342
	l32r	a12, .LC343
	l32r	a11, .LC344
	l32r	a10, .LC345
	call8	ets_printf
.LVL840:
	call8	abort
.LVL841:
.L397:
	.loc 1 5046 0 is_stmt 1
	l32r	a10, .LC346
	call8	vTaskEnterCritical
.LVL842:
	.loc 1 5048 0
	memw
	l32i	a9, a2, 348
.LVL843:
	.loc 1 5049 0
	movi.n	a8, 2
	memw
	s32i	a8, a2, 348
	.loc 1 5053 0
	memw
	l32i	a8, a2, 344
	addi.n	a8, a8, 1
	memw
	s32i	a8, a2, 344
	.loc 1 5057 0
	bnei	a9, 1, .L398
	.loc 1 5060 0
	l32i.n	a8, a2, 44
	beqz.n	a8, .L399
	.loc 1 5060 0 discriminator 1
	l32r	a13, .LC342
	l32r	a12, .LC347
	l32r	a11, .LC344
	l32r	a10, .LC345
	call8	ets_printf
.LVL844:
	call8	abort
.LVL845:
.L399:
.LBB685:
.LBB686:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
.LBE686:
.LBE685:
	.loc 1 5062 0
	l32r	a9, .LC348
.LVL846:
	addx4	a8, a8, a9
	memw
	l32i.n	a8, a8, 0
	bnez.n	a8, .L400
	.loc 1 5064 0
	addi.n	a4, a2, 8
	mov.n	a10, a4
	call8	uxListRemove
.LVL847:
	.loc 1 5065 0
	l32i.n	a8, a2, 48
	l32r	a9, .LC349
	memw
	l32i.n	a9, a9, 0
	bgeu	a9, a8, .L401
	.loc 1 5065 0 is_stmt 0 discriminator 1
	l32r	a9, .LC349
	memw
	s32i.n	a8, a9, 0
.L401:
	.loc 1 5065 0 discriminator 3
	addx4	a8, a8, a8
	slli	a9, a8, 2
	mov.n	a11, a4
	l32r	a10, .LC350
	add.n	a10, a10, a9
	call8	vListInsertEnd
.LVL848:
	j	.L402
.L400:
.LBB687:
.LBB688:
	.loc 2 208 0 is_stmt 1
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL849:
#NO_APP
.LBE688:
.LBE687:
	.loc 1 5071 0
	addx4	a8, a8, a8
.LVL850:
	slli	a9, a8, 2
	addi	a11, a2, 28
	l32r	a10, .LC351
	add.n	a10, a10, a9
	call8	vListInsertEnd
.LVL851:
.L402:
	.loc 1 5074 0
	l32i	a10, a2, 72
	mov.n	a9, a10
.LBB689:
.LBB690:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL852:
#NO_APP
.LBE690:
.LBE689:
	.loc 1 5074 0
	beq	a10, a8, .L403
	.loc 1 5074 0 is_stmt 0 discriminator 2
	l32r	a4, .LC352
	bne	a10, a4, .L404
.L403:
	.loc 1 5074 0 discriminator 3
	l32i.n	a4, a2, 48
.LBB691:
.LBB692:
	.loc 2 208 0 is_stmt 1 discriminator 3
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL853:
#NO_APP
.LBE692:
.LBE691:
	.loc 1 5074 0 discriminator 3
	l32r	a11, .LC353
	addx4	a8, a8, a11
	memw
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 48
	bgeu	a8, a4, .L404
	.loc 1 5078 0
	beqz.n	a3, .L398
	.loc 1 5080 0
	movi.n	a2, 1
.LVL854:
	s32i.n	a2, a3, 0
	j	.L398
.LVL855:
.L404:
.LBB693:
.LBB694:
	.loc 2 208 0
#APP
# 208 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portable.h" 1
	rsr.prid a3
 extui a3,a3,13,1
# 0 "" 2
.LVL856:
#NO_APP
.LBE694:
.LBE693:
	.loc 1 5083 0
	beq	a9, a3, .L398
	.loc 1 5085 0
	l32i.n	a11, a2, 48
	call8	taskYIELD_OTHER_CORE
.LVL857:
.L398:
	.loc 1 5093 0
	l32r	a10, .LC346
	call8	vTaskExitCritical
.LVL858:
	retw.n
.LFE95:
	.size	vTaskNotifyGiveFromISR, .-vTaskNotifyGiveFromISR
	.section	.text.uxTaskGetSnapshotAll,"ax",@progbits
	.literal_position
	.literal .LC354, pxReadyTasksLists
	.literal .LC355, pxDelayedTaskList
	.literal .LC356, pxOverflowDelayedTaskList
	.literal .LC357, xPendingReadyList
	.literal .LC358, xTasksWaitingTermination
	.literal .LC359, xSuspendedTaskList
	.align	4
	.global	uxTaskGetSnapshotAll
	.type	uxTaskGetSnapshotAll, @function
uxTaskGetSnapshotAll:
.LFB98:
	.loc 1 5141 0
.LVL859:
	entry	sp, 48
.LCFI68:
	.loc 1 5142 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
.LVL860:
	.loc 1 5145 0
	movi	a8, 0x164
	s32i.n	a8, a4, 0
.LVL861:
	.loc 1 5148 0
	movi.n	a4, 0x19
.LVL862:
.L406:
	.loc 1 5151 0 discriminator 1
	addi.n	a4, a4, -1
.LVL863:
	.loc 1 5152 0 discriminator 1
	addx4	a9, a4, a4
	slli	a8, a9, 2
	l32r	a13, .LC354
	add.n	a13, a13, a8
	mov.n	a12, a3
	mov.n	a11, sp
	mov.n	a10, a2
	call8	prvTaskGetSnapshotsFromList
.LVL864:
	.loc 1 5153 0 discriminator 1
	bnez.n	a4, .L406
	.loc 1 5157 0
	l32r	a8, .LC355
	memw
	l32i.n	a13, a8, 0
	mov.n	a12, a3
	mov.n	a11, sp
	mov.n	a10, a2
	call8	prvTaskGetSnapshotsFromList
.LVL865:
	.loc 1 5158 0
	l32r	a8, .LC356
	memw
	l32i.n	a13, a8, 0
	mov.n	a12, a3
	mov.n	a11, sp
	mov.n	a10, a2
	call8	prvTaskGetSnapshotsFromList
.LVL866:
	.loc 1 5159 0
	j	.L407
.LVL867:
.L409:
	.loc 1 5160 0
	l32i.n	a8, sp, 0
	bgeu	a8, a3, .L408
	.loc 1 5162 0 discriminator 2
	addx4	a9, a4, a4
	slli	a8, a9, 2
	l32r	a13, .LC357
	add.n	a13, a13, a8
	mov.n	a12, a3
	mov.n	a11, sp
	mov.n	a10, a2
	call8	prvTaskGetSnapshotsFromList
.LVL868:
	.loc 1 5159 0 discriminator 2
	addi.n	a4, a4, 1
.LVL869:
.L407:
	.loc 1 5159 0 is_stmt 0 discriminator 1
	bltui	a4, 2, .L409
.L408:
	.loc 1 5167 0 is_stmt 1
	l32r	a13, .LC358
	mov.n	a12, a3
	mov.n	a11, sp
	mov.n	a10, a2
	call8	prvTaskGetSnapshotsFromList
.LVL870:
	.loc 1 5173 0
	l32r	a13, .LC359
	mov.n	a12, a3
	mov.n	a11, sp
	mov.n	a10, a2
	call8	prvTaskGetSnapshotsFromList
.LVL871:
	.loc 1 5177 0
	l32i.n	a2, sp, 0
.LVL872:
	retw.n
.LFE98:
	.size	uxTaskGetSnapshotAll, .-uxTaskGetSnapshotAll
	.section	.rodata.__FUNCTION__$6014,"a",@progbits
	.align	4
	.type	__FUNCTION__$6014, @object
	.size	__FUNCTION__$6014, 23
__FUNCTION__$6014:
	.string	"vTaskNotifyGiveFromISR"
	.section	.rodata.__FUNCTION__$6001,"a",@progbits
	.align	4
	.type	__FUNCTION__$6001, @object
	.size	__FUNCTION__$6001, 19
__FUNCTION__$6001:
	.string	"xTaskNotifyFromISR"
	.section	.rodata.__FUNCTION__$5985,"a",@progbits
	.align	4
	.type	__FUNCTION__$5985, @object
	.size	__FUNCTION__$5985, 12
__FUNCTION__$5985:
	.string	"xTaskNotify"
	.section	.rodata.__func__$5935,"a",@progbits
	.align	4
	.type	__func__$5935, @object
	.size	__func__$5935, 41
__func__$5935:
	.string	"vPortCPUReleaseMutexIntsDisabledInternal"
	.section	.rodata.__func__$5930,"a",@progbits
	.align	4
	.type	__func__$5930, @object
	.size	__func__$5930, 41
__func__$5930:
	.string	"vPortCPUAcquireMutexIntsDisabledInternal"
	.section	.rodata.__FUNCTION__$5889,"a",@progbits
	.align	4
	.type	__FUNCTION__$5889, @object
	.size	__FUNCTION__$5889, 24
__FUNCTION__$5889:
	.string	"xTaskPriorityDisinherit"
	.section	.rodata.__FUNCTION__$5799,"a",@progbits
	.align	4
	.type	__FUNCTION__$5799, @object
	.size	__FUNCTION__$5799, 24
__FUNCTION__$5799:
	.string	"vTaskAllocateMPURegions"
	.section	.rodata.__FUNCTION__$5764,"a",@progbits
	.align	4
	.type	__FUNCTION__$5764, @object
	.size	__FUNCTION__$5764, 21
__FUNCTION__$5764:
	.string	"xTaskCheckForTimeOut"
	.section	.rodata.__FUNCTION__$5758,"a",@progbits
	.align	4
	.type	__FUNCTION__$5758, @object
	.size	__FUNCTION__$5758, 21
__FUNCTION__$5758:
	.string	"vTaskSetTimeOutState"
	.section	.rodata.__FUNCTION__$5754,"a",@progbits
	.align	4
	.type	__FUNCTION__$5754, @object
	.size	__FUNCTION__$5754, 34
__FUNCTION__$5754:
	.string	"xTaskRemoveFromUnorderedEventList"
	.section	.rodata.__FUNCTION__$5744,"a",@progbits
	.align	4
	.type	__FUNCTION__$5744, @object
	.size	__FUNCTION__$5744, 25
__FUNCTION__$5744:
	.string	"xTaskRemoveFromEventList"
	.section	.rodata.__FUNCTION__$5735,"a",@progbits
	.align	4
	.type	__FUNCTION__$5735, @object
	.size	__FUNCTION__$5735, 32
__FUNCTION__$5735:
	.string	"vTaskPlaceOnEventListRestricted"
	.section	.rodata.__FUNCTION__$5729,"a",@progbits
	.align	4
	.type	__FUNCTION__$5729, @object
	.size	__FUNCTION__$5729, 31
__FUNCTION__$5729:
	.string	"vTaskPlaceOnUnorderedEventList"
	.section	.rodata.__FUNCTION__$5722,"a",@progbits
	.align	4
	.type	__FUNCTION__$5722, @object
	.size	__FUNCTION__$5722, 22
__FUNCTION__$5722:
	.string	"vTaskPlaceOnEventList"
	.section	.rodata.ucExpectedStackBytes$5694,"a",@progbits
	.align	4
	.type	ucExpectedStackBytes$5694, @object
	.size	ucExpectedStackBytes$5694, 20
ucExpectedStackBytes$5694:
	.byte	-91
	.byte	-91
	.byte	-91
	.byte	-91
	.byte	-91
	.byte	-91
	.byte	-91
	.byte	-91
	.byte	-91
	.byte	-91
	.byte	-91
	.byte	-91
	.byte	-91
	.byte	-91
	.byte	-91
	.byte	-91
	.byte	-91
	.byte	-91
	.byte	-91
	.byte	-91
	.section	.rodata.__FUNCTION__$5686,"a",@progbits
	.align	4
	.type	__FUNCTION__$5686, @object
	.size	__FUNCTION__$5686, 19
__FUNCTION__$5686:
	.string	"xTaskIncrementTick"
	.section	.rodata.__FUNCTION__$5677,"a",@progbits
	.align	4
	.type	__FUNCTION__$5677, @object
	.size	__FUNCTION__$5677, 29
__FUNCTION__$5677:
	.string	"xTaskGetIdleTaskHandleForCPU"
	.section	.rodata.__FUNCTION__$5672,"a",@progbits
	.align	4
	.type	__FUNCTION__$5672, @object
	.size	__FUNCTION__$5672, 23
__FUNCTION__$5672:
	.string	"xTaskGetIdleTaskHandle"
	.section	.rodata.__FUNCTION__$5668,"a",@progbits
	.align	4
	.type	__FUNCTION__$5668, @object
	.size	__FUNCTION__$5668, 18
__FUNCTION__$5668:
	.string	"pcTaskGetTaskName"
	.section	.rodata.__FUNCTION__$5648,"a",@progbits
	.align	4
	.type	__FUNCTION__$5648, @object
	.size	__FUNCTION__$5648, 15
__FUNCTION__$5648:
	.string	"xTaskResumeAll"
	.section	.rodata.__FUNCTION__$5630,"a",@progbits
	.align	4
	.type	__FUNCTION__$5630, @object
	.size	__FUNCTION__$5630, 20
__FUNCTION__$5630:
	.string	"vTaskStartScheduler"
	.section	.rodata.__FUNCTION__$5618,"a",@progbits
	.align	4
	.type	__FUNCTION__$5618, @object
	.size	__FUNCTION__$5618, 19
__FUNCTION__$5618:
	.string	"xTaskResumeFromISR"
	.section	.rodata.__FUNCTION__$5607,"a",@progbits
	.align	4
	.type	__FUNCTION__$5607, @object
	.size	__FUNCTION__$5607, 23
__FUNCTION__$5607:
	.string	"prvTaskIsTaskSuspended"
	.section	.rodata.__FUNCTION__$5612,"a",@progbits
	.align	4
	.type	__FUNCTION__$5612, @object
	.size	__FUNCTION__$5612, 12
__FUNCTION__$5612:
	.string	"vTaskResume"
	.section	.rodata.__FUNCTION__$5601,"a",@progbits
	.align	4
	.type	__FUNCTION__$5601, @object
	.size	__FUNCTION__$5601, 13
__FUNCTION__$5601:
	.string	"vTaskSuspend"
	.section	.rodata.__FUNCTION__$5595,"a",@progbits
	.align	4
	.type	__FUNCTION__$5595, @object
	.size	__FUNCTION__$5595, 17
__FUNCTION__$5595:
	.string	"vTaskPrioritySet"
	.section	.rodata.__FUNCTION__$5576,"a",@progbits
	.align	4
	.type	__FUNCTION__$5576, @object
	.size	__FUNCTION__$5576, 14
__FUNCTION__$5576:
	.string	"eTaskGetState"
	.section	.rodata.__FUNCTION__$5567,"a",@progbits
	.align	4
	.type	__FUNCTION__$5567, @object
	.size	__FUNCTION__$5567, 11
__FUNCTION__$5567:
	.string	"vTaskDelay"
	.section	.rodata.__FUNCTION__$5560,"a",@progbits
	.align	4
	.type	__FUNCTION__$5560, @object
	.size	__FUNCTION__$5560, 16
__FUNCTION__$5560:
	.string	"vTaskDelayUntil"
	.section	.rodata.__FUNCTION__$5853,"a",@progbits
	.align	4
	.type	__FUNCTION__$5853, @object
	.size	__FUNCTION__$5853, 13
__FUNCTION__$5853:
	.string	"prvDeleteTCB"
	.section	.rodata.__FUNCTION__$5857,"a",@progbits
	.align	4
	.type	__FUNCTION__$5857, @object
	.size	__FUNCTION__$5857, 13
__FUNCTION__$5857:
	.string	"prvDeleteTLS"
	.section	.rodata.__FUNCTION__$5552,"a",@progbits
	.align	4
	.type	__FUNCTION__$5552, @object
	.size	__FUNCTION__$5552, 12
__FUNCTION__$5552:
	.string	"vTaskDelete"
	.section	.rodata.__FUNCTION__$5545,"a",@progbits
	.align	4
	.type	__FUNCTION__$5545, @object
	.size	__FUNCTION__$5545, 25
__FUNCTION__$5545:
	.string	"prvAddNewTaskToReadyList"
	.section	.rodata.__FUNCTION__$5503,"a",@progbits
	.align	4
	.type	__FUNCTION__$5503, @object
	.size	__FUNCTION__$5503, 22
__FUNCTION__$5503:
	.string	"xTaskCreateRestricted"
	.section	.bss.xSwitchingContext,"aw",@nobits
	.align	4
	.type	xSwitchingContext, @object
	.size	xSwitchingContext, 8
xSwitchingContext:
	.zero	8
	.section	.data.xTaskQueueMutex,"aw",@progbits
	.align	4
	.type	xTaskQueueMutex, @object
	.size	xTaskQueueMutex, 8
xTaskQueueMutex:
	.word	-1287651329
	.word	0
	.section	.bss.uxSchedulerSuspended,"aw",@nobits
	.align	4
	.type	uxSchedulerSuspended, @object
	.size	uxSchedulerSuspended, 8
uxSchedulerSuspended:
	.zero	8
	.section	.data.xNextTaskUnblockTime,"aw",@progbits
	.align	4
	.type	xNextTaskUnblockTime, @object
	.size	xNextTaskUnblockTime, 4
xNextTaskUnblockTime:
	.word	-1
	.section	.bss.uxTaskNumber,"aw",@nobits
	.align	4
	.type	uxTaskNumber, @object
	.size	uxTaskNumber, 4
uxTaskNumber:
	.zero	4
	.section	.bss.xNumOfOverflows,"aw",@nobits
	.align	4
	.type	xNumOfOverflows, @object
	.size	xNumOfOverflows, 4
xNumOfOverflows:
	.zero	4
	.section	.bss.xYieldPending,"aw",@nobits
	.align	4
	.type	xYieldPending, @object
	.size	xYieldPending, 8
xYieldPending:
	.zero	8
	.section	.bss.uxPendedTicks,"aw",@nobits
	.align	4
	.type	uxPendedTicks, @object
	.size	uxPendedTicks, 4
uxPendedTicks:
	.zero	4
	.section	.bss.xSchedulerRunning,"aw",@nobits
	.align	4
	.type	xSchedulerRunning, @object
	.size	xSchedulerRunning, 4
xSchedulerRunning:
	.zero	4
	.section	.bss.uxTopReadyPriority,"aw",@nobits
	.align	4
	.type	uxTopReadyPriority, @object
	.size	uxTopReadyPriority, 4
uxTopReadyPriority:
	.zero	4
	.section	.bss.xTickCount,"aw",@nobits
	.align	4
	.type	xTickCount, @object
	.size	xTickCount, 4
xTickCount:
	.zero	4
	.section	.bss.uxCurrentNumberOfTasks,"aw",@nobits
	.align	4
	.type	uxCurrentNumberOfTasks, @object
	.size	uxCurrentNumberOfTasks, 4
uxCurrentNumberOfTasks:
	.zero	4
	.section	.bss.xIdleTaskHandle,"aw",@nobits
	.align	4
	.type	xIdleTaskHandle, @object
	.size	xIdleTaskHandle, 8
xIdleTaskHandle:
	.zero	8
	.section	.bss.xSuspendedTaskList,"aw",@nobits
	.align	4
	.type	xSuspendedTaskList, @object
	.size	xSuspendedTaskList, 20
xSuspendedTaskList:
	.zero	20
	.section	.bss.uxTasksDeleted,"aw",@nobits
	.align	4
	.type	uxTasksDeleted, @object
	.size	uxTasksDeleted, 4
uxTasksDeleted:
	.zero	4
	.section	.bss.xTasksWaitingTermination,"aw",@nobits
	.align	4
	.type	xTasksWaitingTermination, @object
	.size	xTasksWaitingTermination, 20
xTasksWaitingTermination:
	.zero	20
	.section	.bss.xPendingReadyList,"aw",@nobits
	.align	4
	.type	xPendingReadyList, @object
	.size	xPendingReadyList, 40
xPendingReadyList:
	.zero	40
	.section	.bss.pxOverflowDelayedTaskList,"aw",@nobits
	.align	4
	.type	pxOverflowDelayedTaskList, @object
	.size	pxOverflowDelayedTaskList, 4
pxOverflowDelayedTaskList:
	.zero	4
	.section	.bss.pxDelayedTaskList,"aw",@nobits
	.align	4
	.type	pxDelayedTaskList, @object
	.size	pxDelayedTaskList, 4
pxDelayedTaskList:
	.zero	4
	.section	.bss.xDelayedTaskList2,"aw",@nobits
	.align	4
	.type	xDelayedTaskList2, @object
	.size	xDelayedTaskList2, 20
xDelayedTaskList2:
	.zero	20
	.section	.bss.xDelayedTaskList1,"aw",@nobits
	.align	4
	.type	xDelayedTaskList1, @object
	.size	xDelayedTaskList1, 20
xDelayedTaskList1:
	.zero	20
	.section	.bss.pxReadyTasksLists,"aw",@nobits
	.align	4
	.type	pxReadyTasksLists, @object
	.size	pxReadyTasksLists, 500
pxReadyTasksLists:
	.zero	500
	.global	pxCurrentTCB
	.section	.bss.pxCurrentTCB,"aw",@nobits
	.align	4
	.type	pxCurrentTCB, @object
	.size	pxCurrentTCB, 8
pxCurrentTCB:
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
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.byte	0x4
	.4byte	.LCFI0-.LFB67
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x4
	.4byte	.LCFI1-.LFB72
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.byte	0x4
	.4byte	.LCFI2-.LFB96
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.byte	0x4
	.4byte	.LCFI3-.LFB97
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x4
	.4byte	.LCFI4-.LFB71
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI5-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI6-.LFB24
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x4
	.4byte	.LCFI7-.LFB63
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x4
	.4byte	.LCFI8-.LFB70
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.byte	0x4
	.4byte	.LCFI9-.LFB65
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI10-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI11-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI12-.LFB40
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
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI14-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI15-.LFB44
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
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI17-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI18-.LFB49
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI19-.LFB55
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI20-.LFB57
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.byte	0x4
	.4byte	.LCFI21-.LFB62
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x4
	.4byte	.LCFI22-.LFB73
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI23-.LFB39
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
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.byte	0x4
	.4byte	.LCFI25-.LFB61
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x4
	.4byte	.LCFI26-.LFB66
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.byte	0x4
	.4byte	.LCFI27-.LFB68
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x4
	.4byte	.LCFI28-.LFB69
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x4
	.4byte	.LCFI29-.LFB74
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x4
	.4byte	.LCFI30-.LFB75
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.byte	0x4
	.4byte	.LCFI31-.LFB87
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.byte	0x4
	.4byte	.LCFI32-.LFB88
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI33-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI34-.LFB22
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI35-.LFB23
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI36-.LFB37
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI37-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI38-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI39-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI40-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE80:
.LSFDE82:
	.4byte	.LEFDE82-.LASFDE82
.LASFDE82:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI41-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE82:
.LSFDE84:
	.4byte	.LEFDE84-.LASFDE84
.LASFDE84:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI42-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE84:
.LSFDE86:
	.4byte	.LEFDE86-.LASFDE86
.LASFDE86:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI43-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE86:
.LSFDE88:
	.4byte	.LEFDE88-.LASFDE88
.LASFDE88:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI44-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE88:
.LSFDE90:
	.4byte	.LEFDE90-.LASFDE90
.LASFDE90:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI45-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE90:
.LSFDE92:
	.4byte	.LEFDE92-.LASFDE92
.LASFDE92:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI46-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE92:
.LSFDE94:
	.4byte	.LEFDE94-.LASFDE94
.LASFDE94:
	.4byte	.Lframe0
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.byte	0x4
	.4byte	.LCFI47-.LFB64
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE94:
.LSFDE96:
	.4byte	.LEFDE96-.LASFDE96
.LASFDE96:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI48-.LFB58
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE96:
.LSFDE98:
	.4byte	.LEFDE98-.LASFDE98
.LASFDE98:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI49-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE98:
.LSFDE100:
	.4byte	.LEFDE100-.LASFDE100
.LASFDE100:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI50-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE100:
.LSFDE102:
	.4byte	.LEFDE102-.LASFDE102
.LASFDE102:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI51-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE102:
.LSFDE104:
	.4byte	.LEFDE104-.LASFDE104
.LASFDE104:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI52-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE104:
.LSFDE106:
	.4byte	.LEFDE106-.LASFDE106
.LASFDE106:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI53-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE106:
.LSFDE108:
	.4byte	.LEFDE108-.LASFDE108
.LASFDE108:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI54-.LFB53
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE108:
.LSFDE110:
	.4byte	.LEFDE110-.LASFDE110
.LASFDE110:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI55-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE110:
.LSFDE112:
	.4byte	.LEFDE112-.LASFDE112
.LASFDE112:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI56-.LFB56
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE112:
.LSFDE114:
	.4byte	.LEFDE114-.LASFDE114
.LASFDE114:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI57-.LFB59
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE114:
.LSFDE116:
	.4byte	.LEFDE116-.LASFDE116
.LASFDE116:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.byte	0x4
	.4byte	.LCFI58-.LFB60
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE116:
.LSFDE118:
	.4byte	.LEFDE118-.LASFDE118
.LASFDE118:
	.4byte	.Lframe0
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x4
	.4byte	.LCFI59-.LFB76
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE118:
.LSFDE120:
	.4byte	.LEFDE120-.LASFDE120
.LASFDE120:
	.4byte	.Lframe0
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.byte	0x4
	.4byte	.LCFI60-.LFB77
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE120:
.LSFDE122:
	.4byte	.LEFDE122-.LASFDE122
.LASFDE122:
	.4byte	.Lframe0
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.byte	0x4
	.4byte	.LCFI61-.LFB89
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE122:
.LSFDE124:
	.4byte	.LEFDE124-.LASFDE124
.LASFDE124:
	.4byte	.Lframe0
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.byte	0x4
	.4byte	.LCFI62-.LFB90
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE124:
.LSFDE126:
	.4byte	.LEFDE126-.LASFDE126
.LASFDE126:
	.4byte	.Lframe0
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.byte	0x4
	.4byte	.LCFI63-.LFB91
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE126:
.LSFDE128:
	.4byte	.LEFDE128-.LASFDE128
.LASFDE128:
	.4byte	.Lframe0
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.byte	0x4
	.4byte	.LCFI64-.LFB92
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE128:
.LSFDE130:
	.4byte	.LEFDE130-.LASFDE130
.LASFDE130:
	.4byte	.Lframe0
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.byte	0x4
	.4byte	.LCFI65-.LFB93
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE130:
.LSFDE132:
	.4byte	.LEFDE132-.LASFDE132
.LASFDE132:
	.4byte	.Lframe0
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.byte	0x4
	.4byte	.LCFI66-.LFB94
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE132:
.LSFDE134:
	.4byte	.LEFDE134-.LASFDE134
.LASFDE134:
	.4byte	.Lframe0
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.byte	0x4
	.4byte	.LCFI67-.LFB95
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE134:
.LSFDE136:
	.4byte	.LEFDE136-.LASFDE136
.LASFDE136:
	.4byte	.Lframe0
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.byte	0x4
	.4byte	.LCFI68-.LFB98
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE136:
	.text
.Letext0:
	.file 5 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/lock.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/_types.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/reent.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/projdefs.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/list.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/task.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/portmux_impl.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/rom/ets_sys.h"
	.file 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdlib.h"
	.file 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/string.h"
	.file 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/platform_include/esp_newlib.h"
	.file 19 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/xtensa/xtruntime.h"
	.file 20 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.file 21 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_crosscore_int.h"
	.file 22 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/heap/include/esp_heap_caps.h"
	.file 23 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdio.h"
	.file 24 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/timers.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5fe0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF438
	.byte	0xc
	.4byte	.LASF439
	.4byte	.LASF440
	.4byte	.Ldebug_ranges0+0x98
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x5
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x6
	.byte	0x12
	.4byte	0x57
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x6
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x7
	.byte	0xb
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x7
	.byte	0xc
	.4byte	0x7e
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x8
	.byte	0x10
	.4byte	0x9f
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x8
	.byte	0x27
	.4byte	0x9f
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x5
	.2byte	0x165
	.4byte	0x30
	.uleb128 0x6
	.byte	0x4
	.byte	0x8
	.byte	0x4a
	.4byte	0xdc
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x8
	.byte	0x4c
	.4byte	0xb1
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x8
	.byte	0x4d
	.4byte	0xdc
	.byte	0
	.uleb128 0x8
	.4byte	0x57
	.4byte	0xec
	.uleb128 0x9
	.4byte	0xec
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0xa
	.byte	0x8
	.byte	0x8
	.byte	0x47
	.4byte	0x114
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x8
	.byte	0x49
	.4byte	0x3e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x8
	.byte	0x4e
	.4byte	0xbd
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x8
	.byte	0x4f
	.4byte	0xf3
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x8
	.byte	0x53
	.4byte	0x89
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x9
	.byte	0x16
	.4byte	0x137
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF24
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x18
	.byte	0x9
	.byte	0x2d
	.4byte	0x191
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x9
	.byte	0x2f
	.4byte	0x191
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x9
	.byte	0x30
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x9
	.byte	0x30
	.4byte	0x3e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x9
	.byte	0x30
	.4byte	0x3e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x9
	.byte	0x30
	.4byte	0x3e
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x9
	.byte	0x31
	.4byte	0x197
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x13e
	.uleb128 0x8
	.4byte	0x12c
	.4byte	0x1a7
	.uleb128 0x9
	.4byte	0xec
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x24
	.byte	0x9
	.byte	0x35
	.4byte	0x220
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x9
	.byte	0x37
	.4byte	0x3e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x9
	.byte	0x38
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x9
	.byte	0x39
	.4byte	0x3e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x9
	.byte	0x3a
	.4byte	0x3e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x9
	.byte	0x3b
	.4byte	0x3e
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x9
	.byte	0x3c
	.4byte	0x3e
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x9
	.byte	0x3d
	.4byte	0x3e
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x9
	.byte	0x3e
	.4byte	0x3e
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x9
	.byte	0x3f
	.4byte	0x3e
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF40
	.2byte	0x108
	.byte	0x9
	.byte	0x48
	.4byte	0x260
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x9
	.byte	0x49
	.4byte	0x260
	.byte	0
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x9
	.byte	0x4a
	.4byte	0x260
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x9
	.byte	0x4c
	.4byte	0x12c
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x9
	.byte	0x4f
	.4byte	0x12c
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x12a
	.4byte	0x270
	.uleb128 0x9
	.4byte	0xec
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x8c
	.byte	0x9
	.byte	0x53
	.4byte	0x2ad
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x9
	.byte	0x54
	.4byte	0x2ad
	.byte	0
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x9
	.byte	0x55
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x9
	.byte	0x56
	.4byte	0x2b3
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x9
	.byte	0x57
	.4byte	0x2ca
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x270
	.uleb128 0x8
	.4byte	0x2c3
	.4byte	0x2c3
	.uleb128 0x9
	.4byte	0xec
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c9
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x220
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x8
	.byte	0x9
	.byte	0x73
	.4byte	0x2f5
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x9
	.byte	0x74
	.4byte	0x2f5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x9
	.byte	0x75
	.4byte	0x3e
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x57
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0xf0
	.byte	0x9
	.2byte	0x172
	.4byte	0x441
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0x9
	.2byte	0x176
	.4byte	0x3e
	.byte	0
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0x9
	.2byte	0x17b
	.4byte	0x676
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x9
	.2byte	0x17b
	.4byte	0x676
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x9
	.2byte	0x17b
	.4byte	0x676
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x9
	.2byte	0x17d
	.4byte	0x3e
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x9
	.2byte	0x17f
	.4byte	0x58f
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x9
	.2byte	0x181
	.4byte	0x3e
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x9
	.2byte	0x183
	.4byte	0x3e
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x9
	.2byte	0x184
	.4byte	0x5c0
	.byte	0x20
	.uleb128 0x15
	.string	"_mp"
	.byte	0x9
	.2byte	0x186
	.4byte	0x7c3
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x9
	.2byte	0x188
	.4byte	0x7d4
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x9
	.2byte	0x18a
	.4byte	0x3e
	.byte	0x2c
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x9
	.2byte	0x18d
	.4byte	0x3e
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x9
	.2byte	0x18e
	.4byte	0x58f
	.byte	0x34
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x9
	.2byte	0x190
	.4byte	0x7da
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x9
	.2byte	0x191
	.4byte	0x7e0
	.byte	0x3c
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x9
	.2byte	0x192
	.4byte	0x58f
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x9
	.2byte	0x195
	.4byte	0x7f1
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x9
	.2byte	0x199
	.4byte	0x2ad
	.byte	0x48
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x9
	.2byte	0x19a
	.4byte	0x270
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x9
	.2byte	0x19d
	.4byte	0x63b
	.byte	0xd8
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x9
	.2byte	0x19e
	.4byte	0x676
	.byte	0xe4
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x9
	.2byte	0x19f
	.4byte	0x7fd
	.byte	0xe8
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x9
	.2byte	0x1a0
	.4byte	0x58f
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2fb
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x68
	.byte	0x9
	.byte	0xb3
	.4byte	0x571
	.uleb128 0xe
	.string	"_p"
	.byte	0x9
	.byte	0xb4
	.4byte	0x2f5
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x9
	.byte	0xb5
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x9
	.byte	0xb6
	.4byte	0x3e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x9
	.byte	0xb7
	.4byte	0x5e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x9
	.byte	0xb8
	.4byte	0x5e
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x9
	.byte	0xb9
	.4byte	0x2d0
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x9
	.byte	0xba
	.4byte	0x3e
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x9
	.byte	0xbd
	.4byte	0x441
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x9
	.byte	0xc1
	.4byte	0x12a
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x9
	.byte	0xc3
	.4byte	0x59c
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x9
	.byte	0xc5
	.4byte	0x5cb
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x9
	.byte	0xc8
	.4byte	0x5ef
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x9
	.byte	0xc9
	.4byte	0x609
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x9
	.byte	0xcc
	.4byte	0x2d0
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x9
	.byte	0xcd
	.4byte	0x2f5
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x9
	.byte	0xce
	.4byte	0x3e
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x9
	.byte	0xd1
	.4byte	0x60f
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x9
	.byte	0xd2
	.4byte	0x61f
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x9
	.byte	0xd5
	.4byte	0x2d0
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x9
	.byte	0xd8
	.4byte	0x3e
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x9
	.byte	0xd9
	.4byte	0x94
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x9
	.byte	0xe0
	.4byte	0x11f
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x9
	.byte	0xe2
	.4byte	0x114
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x9
	.byte	0xe3
	.4byte	0x3e
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.4byte	0x3e
	.4byte	0x58f
	.uleb128 0x17
	.4byte	0x441
	.uleb128 0x17
	.4byte	0x12a
	.uleb128 0x17
	.4byte	0x58f
	.uleb128 0x17
	.4byte	0x3e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x595
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF92
	.uleb128 0xf
	.byte	0x4
	.4byte	0x571
	.uleb128 0x16
	.4byte	0x3e
	.4byte	0x5c0
	.uleb128 0x17
	.4byte	0x441
	.uleb128 0x17
	.4byte	0x12a
	.uleb128 0x17
	.4byte	0x5c0
	.uleb128 0x17
	.4byte	0x3e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5c6
	.uleb128 0x18
	.4byte	0x595
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5a2
	.uleb128 0x16
	.4byte	0xa6
	.4byte	0x5ef
	.uleb128 0x17
	.4byte	0x441
	.uleb128 0x17
	.4byte	0x12a
	.uleb128 0x17
	.4byte	0xa6
	.uleb128 0x17
	.4byte	0x3e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5d1
	.uleb128 0x16
	.4byte	0x3e
	.4byte	0x609
	.uleb128 0x17
	.4byte	0x441
	.uleb128 0x17
	.4byte	0x12a
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5f5
	.uleb128 0x8
	.4byte	0x57
	.4byte	0x61f
	.uleb128 0x9
	.4byte	0xec
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x57
	.4byte	0x62f
	.uleb128 0x9
	.4byte	0xec
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF93
	.byte	0x9
	.2byte	0x11d
	.4byte	0x447
	.uleb128 0x13
	.4byte	.LASF94
	.byte	0xc
	.byte	0x9
	.2byte	0x121
	.4byte	0x670
	.uleb128 0x14
	.4byte	.LASF25
	.byte	0x9
	.2byte	0x123
	.4byte	0x670
	.byte	0
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x9
	.2byte	0x124
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x9
	.2byte	0x125
	.4byte	0x676
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x63b
	.uleb128 0xf
	.byte	0x4
	.4byte	0x62f
	.uleb128 0x13
	.4byte	.LASF97
	.byte	0x18
	.byte	0x9
	.2byte	0x13d
	.4byte	0x6be
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x9
	.2byte	0x13e
	.4byte	0x6be
	.byte	0
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x9
	.2byte	0x13f
	.4byte	0x6be
	.byte	0x6
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x9
	.2byte	0x140
	.4byte	0x37
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x9
	.2byte	0x143
	.4byte	0x77
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x37
	.4byte	0x6ce
	.uleb128 0x9
	.4byte	0xec
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF102
	.byte	0x10
	.byte	0x9
	.2byte	0x156
	.4byte	0x710
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x9
	.2byte	0x159
	.4byte	0x191
	.byte	0
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x15a
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x9
	.2byte	0x15b
	.4byte	0x191
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x9
	.2byte	0x15c
	.4byte	0x710
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x191
	.uleb128 0x13
	.4byte	.LASF107
	.byte	0x50
	.byte	0x9
	.2byte	0x160
	.4byte	0x7b3
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x9
	.2byte	0x163
	.4byte	0x58f
	.byte	0
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x9
	.2byte	0x164
	.4byte	0x114
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x9
	.2byte	0x165
	.4byte	0x114
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x9
	.2byte	0x166
	.4byte	0x114
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x9
	.2byte	0x167
	.4byte	0x7b3
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0x9
	.2byte	0x168
	.4byte	0x3e
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x9
	.2byte	0x169
	.4byte	0x114
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x9
	.2byte	0x16a
	.4byte	0x114
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x9
	.2byte	0x16b
	.4byte	0x114
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x9
	.2byte	0x16c
	.4byte	0x114
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x9
	.2byte	0x16d
	.4byte	0x114
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	0x595
	.4byte	0x7c3
	.uleb128 0x9
	.4byte	0xec
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6ce
	.uleb128 0x19
	.4byte	0x7d4
	.uleb128 0x17
	.4byte	0x441
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7c9
	.uleb128 0xf
	.byte	0x4
	.4byte	0x67c
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1a7
	.uleb128 0x19
	.4byte	0x7f1
	.uleb128 0x17
	.4byte	0x3e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7f7
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7e6
	.uleb128 0xf
	.byte	0x4
	.4byte	0x716
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0xa
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0xa
	.byte	0x2d
	.4byte	0x65
	.uleb128 0xf
	.byte	0x4
	.4byte	0x81f
	.uleb128 0x19
	.4byte	0x82a
	.uleb128 0x17
	.4byte	0x12a
	.byte	0
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0xb
	.byte	0x4d
	.4byte	0x819
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF122
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0x3
	.byte	0x6e
	.4byte	0x803
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0x3
	.byte	0x6f
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0x3
	.byte	0x70
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0x3
	.byte	0x76
	.4byte	0x80e
	.uleb128 0xa
	.byte	0x8
	.byte	0x3
	.byte	0x82
	.4byte	0x889
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0x3
	.byte	0x8a
	.4byte	0x80e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x3
	.byte	0x8f
	.4byte	0x80e
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0x3
	.byte	0x94
	.4byte	0x868
	.uleb128 0x1a
	.byte	0x4
	.byte	0x3
	.2byte	0x156
	.4byte	0x8ab
	.uleb128 0x14
	.4byte	.LASF130
	.byte	0x3
	.2byte	0x158
	.4byte	0x8ab
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8b1
	.uleb128 0x1b
	.4byte	0x83c
	.uleb128 0x5
	.4byte	.LASF131
	.byte	0x3
	.2byte	0x167
	.4byte	0x894
	.uleb128 0x8
	.4byte	0x852
	.4byte	0x8d2
	.uleb128 0x9
	.4byte	0xec
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x12a
	.4byte	0x8e2
	.uleb128 0x9
	.4byte	0xec
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF132
	.byte	0x14
	.byte	0xc
	.byte	0xb5
	.4byte	0x92b
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0xc
	.byte	0xb8
	.4byte	0x85d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0xc
	.byte	0xb9
	.4byte	0x92b
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0xc
	.byte	0xba
	.4byte	0x92b
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0xc
	.byte	0xbb
	.4byte	0x12a
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0xc
	.byte	0xbc
	.4byte	0x12a
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8e2
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0xc
	.byte	0xbf
	.4byte	0x8e2
	.uleb128 0xd
	.4byte	.LASF139
	.byte	0xc
	.byte	0xc
	.byte	0xc5
	.4byte	0x96d
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0xc
	.byte	0xc8
	.4byte	0x85d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0xc
	.byte	0xc9
	.4byte	0x92b
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0xc
	.byte	0xca
	.4byte	0x92b
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF140
	.byte	0xc
	.byte	0xcc
	.4byte	0x93c
	.uleb128 0xd
	.4byte	.LASF141
	.byte	0x14
	.byte	0xc
	.byte	0xd6
	.4byte	0x9a9
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0xc
	.byte	0xd9
	.4byte	0x852
	.byte	0
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0xc
	.byte	0xda
	.4byte	0x9a9
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0xc
	.byte	0xdb
	.4byte	0x96d
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x931
	.uleb128 0x2
	.4byte	.LASF145
	.byte	0xc
	.byte	0xdd
	.4byte	0x978
	.uleb128 0x2
	.4byte	.LASF146
	.byte	0xd
	.byte	0x6e
	.4byte	0x12a
	.uleb128 0x1c
	.byte	0x4
	.4byte	0x30
	.byte	0xd
	.byte	0x78
	.4byte	0x9f0
	.uleb128 0x1d
	.4byte	.LASF147
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF148
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF149
	.byte	0x2
	.uleb128 0x1d
	.4byte	.LASF150
	.byte	0x3
	.uleb128 0x1d
	.4byte	.LASF151
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF152
	.byte	0xd
	.byte	0x7e
	.4byte	0x9c5
	.uleb128 0x1c
	.byte	0x4
	.4byte	0x30
	.byte	0xd
	.byte	0x82
	.4byte	0xa26
	.uleb128 0x1d
	.4byte	.LASF153
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF154
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF155
	.byte	0x2
	.uleb128 0x1d
	.4byte	.LASF156
	.byte	0x3
	.uleb128 0x1d
	.4byte	.LASF157
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF158
	.byte	0xd
	.byte	0x88
	.4byte	0x9fb
	.uleb128 0xd
	.4byte	.LASF159
	.byte	0x8
	.byte	0xd
	.byte	0x8e
	.4byte	0xa56
	.uleb128 0xb
	.4byte	.LASF160
	.byte	0xd
	.byte	0x90
	.4byte	0x847
	.byte	0
	.uleb128 0xb
	.4byte	.LASF161
	.byte	0xd
	.byte	0x91
	.4byte	0x85d
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF162
	.byte	0xd
	.byte	0x92
	.4byte	0xa31
	.uleb128 0xd
	.4byte	.LASF163
	.byte	0xc
	.byte	0xd
	.byte	0x97
	.4byte	0xa92
	.uleb128 0xb
	.4byte	.LASF164
	.byte	0xd
	.byte	0x99
	.4byte	0x12a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF165
	.byte	0xd
	.byte	0x9a
	.4byte	0x80e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0xd
	.byte	0x9b
	.4byte	0x80e
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF167
	.byte	0xd
	.byte	0x9c
	.4byte	0xa61
	.uleb128 0xd
	.4byte	.LASF168
	.byte	0x24
	.byte	0xd
	.byte	0xa1
	.4byte	0xafe
	.uleb128 0xb
	.4byte	.LASF169
	.byte	0xd
	.byte	0xa3
	.4byte	0x82a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF170
	.byte	0xd
	.byte	0xa4
	.4byte	0xafe
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF171
	.byte	0xd
	.byte	0xa5
	.4byte	0x80e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF172
	.byte	0xd
	.byte	0xa6
	.4byte	0x12a
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0xd
	.byte	0xa7
	.4byte	0x852
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF174
	.byte	0xd
	.byte	0xa8
	.4byte	0xb03
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF175
	.byte	0xd
	.byte	0xa9
	.4byte	0xb09
	.byte	0x18
	.byte	0
	.uleb128 0x18
	.4byte	0x5c0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x83c
	.uleb128 0x8
	.4byte	0xa92
	.4byte	0xb19
	.uleb128 0x9
	.4byte	0xec
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF176
	.byte	0xd
	.byte	0xaa
	.4byte	0xa9d
	.uleb128 0xd
	.4byte	.LASF177
	.byte	0xc
	.byte	0xd
	.byte	0xc4
	.4byte	0xb55
	.uleb128 0xb
	.4byte	.LASF178
	.byte	0xd
	.byte	0xc6
	.4byte	0x12a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF179
	.byte	0xd
	.byte	0xc7
	.4byte	0xb03
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF180
	.byte	0xd
	.byte	0xc8
	.4byte	0xb03
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF181
	.byte	0xd
	.byte	0xca
	.4byte	0xb24
	.uleb128 0x5
	.4byte	.LASF182
	.byte	0xd
	.2byte	0x597
	.4byte	0xb6c
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb72
	.uleb128 0x19
	.4byte	0xb82
	.uleb128 0x17
	.4byte	0x3e
	.uleb128 0x17
	.4byte	0x12a
	.byte	0
	.uleb128 0x1c
	.byte	0x4
	.4byte	0x30
	.byte	0x1
	.byte	0x84
	.4byte	0xba1
	.uleb128 0x1d
	.4byte	.LASF183
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF184
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF185
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF186
	.byte	0x1
	.byte	0x88
	.4byte	0xb82
	.uleb128 0x10
	.4byte	.LASF187
	.2byte	0x164
	.byte	0x1
	.byte	0xa3
	.4byte	0xca1
	.uleb128 0xb
	.4byte	.LASF179
	.byte	0x1
	.byte	0xa5
	.4byte	0x8ab
	.byte	0
	.uleb128 0xb
	.4byte	.LASF188
	.byte	0x1
	.byte	0xa8
	.4byte	0x8b6
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF189
	.byte	0x1
	.byte	0xab
	.4byte	0x931
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF190
	.byte	0x1
	.byte	0xac
	.4byte	0x931
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0x1
	.byte	0xad
	.4byte	0x852
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF191
	.byte	0x1
	.byte	0xae
	.4byte	0xb03
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF192
	.byte	0x1
	.byte	0xaf
	.4byte	0xca1
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF193
	.byte	0x1
	.byte	0xb0
	.4byte	0x847
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF180
	.byte	0x1
	.byte	0xb3
	.4byte	0xb03
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF194
	.byte	0x1
	.byte	0xb7
	.4byte	0x852
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF195
	.byte	0x1
	.byte	0xb8
	.4byte	0x80e
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF196
	.byte	0x1
	.byte	0xc1
	.4byte	0x852
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF197
	.byte	0x1
	.byte	0xc2
	.4byte	0x852
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF198
	.byte	0x1
	.byte	0xca
	.4byte	0x8d2
	.byte	0x60
	.uleb128 0xb
	.4byte	.LASF199
	.byte	0x1
	.byte	0xcc
	.4byte	0xcb1
	.byte	0x64
	.uleb128 0xb
	.4byte	.LASF200
	.byte	0x1
	.byte	0xdc
	.4byte	0x2fb
	.byte	0x68
	.uleb128 0x11
	.4byte	.LASF201
	.byte	0x1
	.byte	0xe0
	.4byte	0xcc1
	.2byte	0x158
	.uleb128 0x11
	.4byte	.LASF202
	.byte	0x1
	.byte	0xe1
	.4byte	0xcc6
	.2byte	0x15c
	.uleb128 0x11
	.4byte	.LASF203
	.byte	0x1
	.byte	0xe7
	.4byte	0x803
	.2byte	0x160
	.byte	0
	.uleb128 0x8
	.4byte	0x595
	.4byte	0xcb1
	.uleb128 0x9
	.4byte	0xec
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0xb60
	.4byte	0xcc1
	.uleb128 0x9
	.4byte	0xec
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x80e
	.uleb128 0x1b
	.4byte	0xba1
	.uleb128 0x2
	.4byte	.LASF204
	.byte	0x1
	.byte	0xea
	.4byte	0xbac
	.uleb128 0x2
	.4byte	.LASF205
	.byte	0x1
	.byte	0xee
	.4byte	0xccb
	.uleb128 0x1e
	.4byte	.LASF217
	.byte	0x4
	.byte	0x2b
	.4byte	0x835
	.byte	0x3
	.4byte	0xd59
	.uleb128 0x1f
	.string	"mux"
	.byte	0x4
	.byte	0x2b
	.4byte	0xd59
	.uleb128 0x20
	.4byte	.LASF206
	.byte	0x4
	.byte	0x2b
	.4byte	0x3e
	.uleb128 0x21
	.string	"res"
	.byte	0x4
	.byte	0x30
	.4byte	0x80e
	.uleb128 0x22
	.4byte	.LASF207
	.byte	0x4
	.byte	0x31
	.4byte	0x3e
	.uleb128 0x22
	.4byte	.LASF208
	.byte	0x4
	.byte	0x31
	.4byte	0x3e
	.uleb128 0x22
	.4byte	.LASF209
	.byte	0x4
	.byte	0x32
	.4byte	0x80e
	.uleb128 0x22
	.4byte	.LASF210
	.byte	0x4
	.byte	0x33
	.4byte	0x835
	.uleb128 0x23
	.4byte	.LASF211
	.4byte	0xd6f
	.4byte	.LASF217
	.uleb128 0x24
	.uleb128 0x22
	.4byte	.LASF212
	.byte	0x4
	.byte	0x5d
	.4byte	0x80e
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x889
	.uleb128 0x8
	.4byte	0x595
	.4byte	0xd6f
	.uleb128 0x9
	.4byte	0xec
	.byte	0x28
	.byte	0
	.uleb128 0x18
	.4byte	0xd5f
	.uleb128 0x25
	.4byte	.LASF213
	.byte	0x2
	.byte	0xce
	.4byte	0x80e
	.byte	0x3
	.4byte	0xd8f
	.uleb128 0x21
	.string	"id"
	.byte	0x2
	.byte	0xcf
	.4byte	0x3e
	.byte	0
	.uleb128 0x25
	.4byte	.LASF214
	.byte	0x3
	.byte	0xf8
	.4byte	0x30
	.byte	0x3
	.4byte	0xdb8
	.uleb128 0x22
	.4byte	.LASF215
	.byte	0x3
	.byte	0xf9
	.4byte	0x30
	.uleb128 0x24
	.uleb128 0x22
	.4byte	.LASF216
	.byte	0x3
	.byte	0xf9
	.4byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF218
	.byte	0xe
	.byte	0x5c
	.4byte	0x835
	.byte	0x3
	.4byte	0xddf
	.uleb128 0x1f
	.string	"mux"
	.byte	0xe
	.byte	0x5c
	.4byte	0xd59
	.uleb128 0x20
	.4byte	.LASF206
	.byte	0xe
	.byte	0x5c
	.4byte	0x3e
	.byte	0
	.uleb128 0x26
	.4byte	.LASF219
	.byte	0x3
	.2byte	0x11c
	.byte	0x3
	.4byte	0xe11
	.uleb128 0x27
	.4byte	.LASF220
	.byte	0x3
	.2byte	0x11c
	.4byte	0xe11
	.uleb128 0x27
	.4byte	.LASF221
	.byte	0x3
	.2byte	0x11c
	.4byte	0x80e
	.uleb128 0x28
	.string	"set"
	.byte	0x3
	.2byte	0x11c
	.4byte	0xe17
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xcc1
	.uleb128 0xf
	.byte	0x4
	.4byte	0x80e
	.uleb128 0x29
	.4byte	.LASF222
	.byte	0xe
	.byte	0x66
	.byte	0x3
	.4byte	0xe35
	.uleb128 0x1f
	.string	"mux"
	.byte	0xe
	.byte	0x66
	.4byte	0xd59
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF237
	.byte	0x1
	.2byte	0xef3
	.4byte	0x80e
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe70
	.uleb128 0x2b
	.4byte	.LASF226
	.byte	0x1
	.2byte	0xef3
	.4byte	0xe70
	.4byte	.LLST0
	.uleb128 0x2c
	.4byte	.LASF223
	.byte	0x1
	.2byte	0xef5
	.4byte	0x80e
	.4byte	.LLST1
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xe76
	.uleb128 0x18
	.4byte	0x803
	.uleb128 0x2d
	.4byte	.LASF224
	.byte	0x1
	.2byte	0xf7d
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xea2
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0xf7f
	.4byte	0xea2
	.4byte	.LLST2
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xcd6
	.uleb128 0x2d
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x13eb
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeeb
	.uleb128 0x2b
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x13eb
	.4byte	0xeeb
	.4byte	.LLST3
	.uleb128 0x2e
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x13eb
	.4byte	0xef1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x13eb
	.4byte	0xea2
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb55
	.uleb128 0xf
	.byte	0x4
	.4byte	0x852
	.uleb128 0x2d
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x13fe
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfbe
	.uleb128 0x2e
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x13fe
	.4byte	0xeeb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2e
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x13fe
	.4byte	0xef1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x13fe
	.4byte	0xfbe
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2e
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x13fe
	.4byte	0xfc3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2c
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x1400
	.4byte	0xea2
	.4byte	.LLST4
	.uleb128 0x2c
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x1400
	.4byte	0xea2
	.4byte	.LLST5
	.uleb128 0x2f
	.4byte	.LBB342
	.4byte	.LBE342-.LBB342
	.4byte	0xf83
	.uleb128 0x2c
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x1404
	.4byte	0xfc9
	.4byte	.LLST6
	.byte	0
	.uleb128 0x2f
	.4byte	.LBB343
	.4byte	.LBE343-.LBB343
	.4byte	0xfa1
	.uleb128 0x2c
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x140a
	.4byte	0xfc9
	.4byte	.LLST7
	.byte	0
	.uleb128 0x30
	.4byte	.LVL15
	.4byte	0xea8
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x852
	.uleb128 0xf
	.byte	0x4
	.4byte	0x9af
	.uleb128 0x18
	.4byte	0xfc3
	.uleb128 0x2d
	.4byte	.LASF235
	.byte	0x1
	.2byte	0xf6e
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x105f
	.uleb128 0x2e
	.4byte	.LASF178
	.byte	0x1
	.2byte	0xf6e
	.4byte	0xea2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x106f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5857
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0
	.4byte	0x1025
	.uleb128 0x34
	.string	"x"
	.byte	0x1
	.2byte	0xf71
	.4byte	0x3e
	.4byte	.LLST8
	.uleb128 0x35
	.4byte	.LVL20
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL18
	.4byte	0x5e99
	.4byte	0x1055
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xf70
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5857
	.byte	0
	.uleb128 0x37
	.4byte	.LVL19
	.4byte	0x5ea4
	.byte	0
	.uleb128 0x8
	.4byte	0x595
	.4byte	0x106f
	.uleb128 0x9
	.4byte	0xec
	.byte	0xc
	.byte	0
	.uleb128 0x18
	.4byte	0x105f
	.uleb128 0x2a
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x74d
	.4byte	0x847
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x112f
	.uleb128 0x2b
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x74d
	.4byte	0x112f
	.4byte	.LLST9
	.uleb128 0x2c
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x74f
	.4byte	0x847
	.4byte	.LLST10
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x750
	.4byte	0x113f
	.4byte	.LLST11
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x1154
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5607
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB346
	.4byte	.LBE346-.LBB346
	.byte	0x1
	.2byte	0x75c
	.4byte	0x10f5
	.uleb128 0x39
	.4byte	.LBB347
	.4byte	.LBE347-.LBB347
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL26
	.4byte	0x5e99
	.4byte	0x1125
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x756
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5607
	.byte	0
	.uleb128 0x37
	.4byte	.LVL27
	.4byte	0x5ea4
	.byte	0
	.uleb128 0x18
	.4byte	0x9ba
	.uleb128 0xf
	.byte	0x4
	.4byte	0x113a
	.uleb128 0x18
	.4byte	0xcd6
	.uleb128 0x18
	.4byte	0x1134
	.uleb128 0x8
	.4byte	0x595
	.4byte	0x1154
	.uleb128 0x9
	.4byte	0xec
	.byte	0x16
	.byte	0
	.uleb128 0x18
	.4byte	0x1144
	.uleb128 0x2d
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x358
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12c9
	.uleb128 0x2b
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x358
	.4byte	0x82a
	.4byte	.LLST13
	.uleb128 0x2b
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x359
	.4byte	0xafe
	.4byte	.LLST14
	.uleb128 0x2b
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x35a
	.4byte	0x12c9
	.4byte	.LLST15
	.uleb128 0x2b
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x35b
	.4byte	0x12ce
	.4byte	.LLST16
	.uleb128 0x2b
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x35c
	.4byte	0x852
	.4byte	.LLST17
	.uleb128 0x2e
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x35d
	.4byte	0x12d9
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2e
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x35e
	.4byte	0xea2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x35f
	.4byte	0x12e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x35f
	.4byte	0x12ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3b
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x361
	.4byte	0xb03
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x34
	.string	"x"
	.byte	0x1
	.2byte	0x362
	.4byte	0x852
	.4byte	.LLST18
	.uleb128 0x3c
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x366
	.4byte	0x847
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF236
	.4byte	0x1303
	.uleb128 0x36
	.4byte	.LVL35
	.4byte	0x5eaf
	.4byte	0x1246
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa5
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL44
	.4byte	0x5eba
	.4byte	0x125a
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.byte	0
	.uleb128 0x36
	.4byte	.LVL45
	.4byte	0x5eba
	.4byte	0x126e
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 28
	.byte	0
	.uleb128 0x36
	.4byte	.LVL47
	.4byte	0x5ec6
	.4byte	0x128f
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL51
	.4byte	0x5ed1
	.4byte	0x12a4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 104
	.byte	0
	.uleb128 0x30
	.4byte	.LVL52
	.4byte	0x5edc
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x80e
	.uleb128 0x18
	.4byte	0x12a
	.uleb128 0xf
	.byte	0x4
	.4byte	0x9ba
	.uleb128 0x18
	.4byte	0x12d3
	.uleb128 0xf
	.byte	0x4
	.4byte	0x12e4
	.uleb128 0x18
	.4byte	0xa92
	.uleb128 0x18
	.4byte	0x12de
	.uleb128 0x18
	.4byte	0x847
	.uleb128 0x8
	.4byte	0x595
	.4byte	0x1303
	.uleb128 0x9
	.4byte	0xec
	.byte	0x14
	.byte	0
	.uleb128 0x18
	.4byte	0x12f3
	.uleb128 0x2d
	.4byte	.LASF247
	.byte	0x1
	.2byte	0xe0e
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13d0
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0xe10
	.4byte	0x852
	.4byte	.LLST19
	.uleb128 0x36
	.4byte	.LVL55
	.4byte	0x5ee7
	.4byte	0x134f
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xf
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	pxReadyTasksLists
	.byte	0x22
	.byte	0
	.uleb128 0x36
	.4byte	.LVL57
	.4byte	0x5ee7
	.4byte	0x1363
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL59
	.4byte	0x5ee7
	.4byte	0x1377
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL60
	.4byte	0x5ee7
	.4byte	0x138e
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xPendingReadyList
	.byte	0
	.uleb128 0x36
	.4byte	.LVL61
	.4byte	0x5ee7
	.4byte	0x13a5
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xPendingReadyList+20
	.byte	0
	.uleb128 0x36
	.4byte	.LVL62
	.4byte	0x5ee7
	.4byte	0x13bc
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTasksWaitingTermination
	.byte	0
	.uleb128 0x30
	.4byte	.LVL63
	.4byte	0x5ee7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xSuspendedTaskList
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF248
	.byte	0x1
	.2byte	0xf33
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1497
	.uleb128 0x2e
	.4byte	.LASF178
	.byte	0x1
	.2byte	0xf33
	.4byte	0xea2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x1497
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5853
	.uleb128 0x36
	.4byte	.LVL65
	.4byte	0x5ef3
	.4byte	0x1418
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 104
	.byte	0
	.uleb128 0x36
	.4byte	.LVL66
	.4byte	0x5eff
	.4byte	0x142c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.uleb128 0x37
	.4byte	.LVL67
	.4byte	0x5f0a
	.uleb128 0x36
	.4byte	.LVL68
	.4byte	0x5f0a
	.4byte	0x1449
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL69
	.4byte	0x5f0a
	.4byte	0x145d
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL70
	.4byte	0x5e99
	.4byte	0x148d
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xf62
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5853
	.byte	0
	.uleb128 0x37
	.4byte	.LVL71
	.4byte	0x5ea4
	.byte	0
	.uleb128 0x18
	.4byte	0x105f
	.uleb128 0x2d
	.4byte	.LASF249
	.byte	0x1
	.2byte	0xe6d
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14e5
	.uleb128 0x2b
	.4byte	.LASF193
	.byte	0x1
	.2byte	0xe6d
	.4byte	0x12ee
	.4byte	.LLST20
	.uleb128 0x2b
	.4byte	.LASF250
	.byte	0x1
	.2byte	0xe6d
	.4byte	0x14e5
	.4byte	.LLST21
	.uleb128 0x37
	.4byte	.LVL75
	.4byte	0x5f15
	.uleb128 0x37
	.4byte	.LVL78
	.4byte	0x5f15
	.byte	0
	.uleb128 0x18
	.4byte	0x85d
	.uleb128 0x3e
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x286
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1582
	.uleb128 0x2b
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x286
	.4byte	0x847
	.4byte	.LLST22
	.uleb128 0x2e
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x286
	.4byte	0x852
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x288
	.4byte	0xea2
	.4byte	.LLST23
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.2byte	0x289
	.4byte	0x847
	.4byte	.LLST24
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB348
	.4byte	.LBE348-.LBB348
	.byte	0x1
	.2byte	0x294
	.4byte	0x1564
	.uleb128 0x39
	.4byte	.LBB349
	.4byte	.LBE349-.LBB349
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST25
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL81
	.4byte	0x5f21
	.4byte	0x1578
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL85
	.4byte	0x5f21
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x83a
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15bc
	.uleb128 0x2f
	.4byte	.LBB350
	.4byte	.LBE350-.LBB350
	.4byte	0x15b2
	.uleb128 0x3f
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x83f
	.4byte	0x30
	.byte	0
	.uleb128 0x37
	.4byte	.LVL92
	.4byte	0x5f2c
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x856
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1647
	.uleb128 0x3f
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x85c
	.4byte	0x30
	.uleb128 0x38
	.4byte	0xd8f
	.4byte	.LBB351
	.4byte	.LBE351-.LBB351
	.byte	0x1
	.2byte	0x85e
	.4byte	0x1619
	.uleb128 0x39
	.4byte	.LBB352
	.4byte	.LBE352-.LBB352
	.uleb128 0x3a
	.4byte	0xd9f
	.4byte	.LLST26
	.uleb128 0x39
	.4byte	.LBB353
	.4byte	.LBE353-.LBB353
	.uleb128 0x3a
	.4byte	0xdab
	.4byte	.LLST26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB354
	.4byte	.LBE354-.LBB354
	.byte	0x1
	.2byte	0x85f
	.4byte	0x163d
	.uleb128 0x39
	.4byte	.LBB355
	.4byte	.LBE355-.LBB355
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL94
	.4byte	0x5f37
	.byte	0
	.uleb128 0x41
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x900
	.4byte	0x85d
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x41
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x906
	.4byte	0x85d
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x41
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x90c
	.4byte	0x852
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x42
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x96d
	.4byte	0x9ba
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1734
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x1734
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5672
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB356
	.4byte	.LBE356-.LBB356
	.byte	0x1
	.2byte	0x971
	.4byte	0x16d6
	.uleb128 0x39
	.4byte	.LBB357
	.4byte	.LBE357-.LBB357
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB358
	.4byte	.LBE358-.LBB358
	.byte	0x1
	.2byte	0x972
	.4byte	0x16fa
	.uleb128 0x39
	.4byte	.LBB359
	.4byte	.LBE359-.LBB359
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL95
	.4byte	0x5e99
	.4byte	0x172a
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x971
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5672
	.byte	0
	.uleb128 0x37
	.4byte	.LVL96
	.4byte	0x5ea4
	.byte	0
	.uleb128 0x18
	.4byte	0x1144
	.uleb128 0x42
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x975
	.4byte	0x9ba
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17bc
	.uleb128 0x2b
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x975
	.4byte	0x852
	.4byte	.LLST28
	.uleb128 0x2c
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x977
	.4byte	0x9ba
	.4byte	.LLST29
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x17cc
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5677
	.uleb128 0x36
	.4byte	.LVL100
	.4byte	0x5e99
	.4byte	0x17b2
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x97b
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5677
	.byte	0
	.uleb128 0x37
	.4byte	.LVL101
	.4byte	0x5ea4
	.byte	0
	.uleb128 0x8
	.4byte	0x595
	.4byte	0x17cc
	.uleb128 0x9
	.4byte	0xec
	.byte	0x1c
	.byte	0
	.uleb128 0x18
	.4byte	0x17bc
	.uleb128 0x3e
	.4byte	.LASF261
	.byte	0x1
	.2byte	0xabf
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c15
	.uleb128 0x3b
	.4byte	.LASF262
	.byte	0x1
	.2byte	0xac3
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0xac4
	.4byte	0x1c15
	.4byte	.LLST30
	.uleb128 0x38
	.4byte	0xd8f
	.4byte	.LBB360
	.4byte	.LBE360-.LBB360
	.byte	0x1
	.2byte	0xac3
	.4byte	0x183c
	.uleb128 0x39
	.4byte	.LBB361
	.4byte	.LBE361-.LBB361
	.uleb128 0x43
	.4byte	0xd9f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x39
	.4byte	.LBB362
	.4byte	.LBE362-.LBB362
	.uleb128 0x43
	.4byte	0xdab
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB363
	.4byte	.LBE363-.LBB363
	.byte	0x1
	.2byte	0xac5
	.4byte	0x1860
	.uleb128 0x39
	.4byte	.LBB364
	.4byte	.LBE364-.LBB364
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB365
	.4byte	.LBE365-.LBB365
	.byte	0x1
	.2byte	0xac9
	.4byte	0x1884
	.uleb128 0x39
	.4byte	.LBB366
	.4byte	.LBE366-.LBB366
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x1c04
	.uleb128 0x2c
	.4byte	.LASF263
	.byte	0x1
	.2byte	0xaff
	.4byte	0x30
	.4byte	.LLST31
	.uleb128 0x2c
	.4byte	.LASF264
	.byte	0x1
	.2byte	0xaff
	.4byte	0x30
	.4byte	.LLST32
	.uleb128 0x2c
	.4byte	.LASF265
	.byte	0x1
	.2byte	0xaff
	.4byte	0x30
	.4byte	.LLST33
	.uleb128 0x2c
	.4byte	.LASF266
	.byte	0x1
	.2byte	0xb00
	.4byte	0x3e
	.4byte	.LLST34
	.uleb128 0x2c
	.4byte	.LASF267
	.byte	0x1
	.2byte	0xb01
	.4byte	0x30
	.4byte	.LLST35
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB368
	.4byte	.LBE368-.LBB368
	.byte	0x1
	.2byte	0xacd
	.4byte	0x1901
	.uleb128 0x39
	.4byte	.LBB369
	.4byte	.LBE369-.LBB369
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB370
	.4byte	.LBE370-.LBB370
	.byte	0x1
	.2byte	0xace
	.4byte	0x1925
	.uleb128 0x39
	.4byte	.LBB371
	.4byte	.LBE371-.LBB371
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB372
	.4byte	.LBE372-.LBB372
	.byte	0x1
	.2byte	0xaef
	.4byte	0x1949
	.uleb128 0x39
	.4byte	.LBB373
	.4byte	.LBE373-.LBB373
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB374
	.4byte	.LBE374-.LBB374
	.byte	0x1
	.2byte	0xaef
	.4byte	0x1971
	.uleb128 0x39
	.4byte	.LBB375
	.4byte	.LBE375-.LBB375
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST36
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB376
	.4byte	.LBE376-.LBB376
	.byte	0x1
	.2byte	0xaef
	.4byte	0x1995
	.uleb128 0x39
	.4byte	.LBB377
	.4byte	.LBE377-.LBB377
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB378
	.4byte	.LBE378-.LBB378
	.byte	0x1
	.2byte	0xaef
	.4byte	0x19bd
	.uleb128 0x39
	.4byte	.LBB379
	.4byte	.LBE379-.LBB379
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST37
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LBB380
	.4byte	.LBE380-.LBB380
	.4byte	0x1a72
	.uleb128 0x3b
	.4byte	.LASF268
	.byte	0x1
	.2byte	0xaf0
	.4byte	0x1c2b
	.uleb128 0x5
	.byte	0x3
	.4byte	ucExpectedStackBytes$5694
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB381
	.4byte	.LBE381-.LBB381
	.byte	0x1
	.2byte	0xaf0
	.4byte	0x1a00
	.uleb128 0x39
	.4byte	.LBB382
	.4byte	.LBE382-.LBB382
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB383
	.4byte	.LBE383-.LBB383
	.byte	0x1
	.2byte	0xaf0
	.4byte	0x1a24
	.uleb128 0x39
	.4byte	.LBB384
	.4byte	.LBE384-.LBB384
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB385
	.4byte	.LBE385-.LBB385
	.byte	0x1
	.2byte	0xaf0
	.4byte	0x1a4c
	.uleb128 0x39
	.4byte	.LBB386
	.4byte	.LBE386-.LBB386
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST38
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL109
	.4byte	0x5f42
	.4byte	0x1a68
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	ucExpectedStackBytes$5694
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x37
	.4byte	.LVL112
	.4byte	0x5f4d
	.byte	0
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x1bac
	.uleb128 0x2c
	.4byte	.LASF269
	.byte	0x1
	.2byte	0xb12
	.4byte	0x1c15
	.4byte	.LLST39
	.uleb128 0x2f
	.4byte	.LBB388
	.4byte	.LBE388-.LBB388
	.4byte	0x1aa9
	.uleb128 0x2c
	.4byte	.LASF234
	.byte	0x1
	.2byte	0xb1e
	.4byte	0xfc9
	.4byte	.LLST40
	.byte	0
	.uleb128 0x39
	.4byte	.LBB389
	.4byte	.LBE389-.LBB389
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.2byte	0xb26
	.4byte	0x3e
	.4byte	.LLST41
	.uleb128 0x2f
	.4byte	.LBB390
	.4byte	.LBE390-.LBB390
	.4byte	0x1ade
	.uleb128 0x2c
	.4byte	.LASF234
	.byte	0x1
	.2byte	0xb22
	.4byte	0xfc9
	.4byte	.LLST42
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB391
	.4byte	.LBE391-.LBB391
	.byte	0x1
	.2byte	0xb28
	.4byte	0x1b06
	.uleb128 0x39
	.4byte	.LBB392
	.4byte	.LBE392-.LBB392
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST43
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB393
	.4byte	.LBE393-.LBB393
	.byte	0x1
	.2byte	0xb37
	.4byte	0x1b2a
	.uleb128 0x39
	.4byte	.LBB394
	.4byte	.LBE394-.LBB394
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB395
	.4byte	.LBE395-.LBB395
	.byte	0x1
	.2byte	0xb39
	.4byte	0x1b52
	.uleb128 0x39
	.4byte	.LBB396
	.4byte	.LBE396-.LBB396
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST44
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB397
	.4byte	.LBE397-.LBB397
	.byte	0x1
	.2byte	0xb3a
	.4byte	0x1b76
	.uleb128 0x39
	.4byte	.LBB398
	.4byte	.LBE398-.LBB398
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LBB399
	.4byte	.LBE399-.LBB399
	.uleb128 0x2c
	.4byte	.LASF270
	.byte	0x1
	.2byte	0xb47
	.4byte	0x1c15
	.4byte	.LLST45
	.uleb128 0x39
	.4byte	.LBB400
	.4byte	.LBE400-.LBB400
	.uleb128 0x2c
	.4byte	.LASF234
	.byte	0x1
	.2byte	0xb49
	.4byte	0xfc9
	.4byte	.LLST46
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB402
	.4byte	.LBE402-.LBB402
	.byte	0x1
	.2byte	0xb54
	.4byte	0x1bd0
	.uleb128 0x39
	.4byte	.LBB403
	.4byte	.LBE403-.LBB403
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL108
	.4byte	0x5f4d
	.uleb128 0x36
	.4byte	.LVL113
	.4byte	0x5f59
	.4byte	0x1bf0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x30
	.4byte	.LVL148
	.4byte	0x5f64
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL149
	.4byte	0x5f37
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xccb
	.uleb128 0x8
	.4byte	0x803
	.4byte	0x1c2b
	.uleb128 0x9
	.4byte	0xec
	.byte	0x13
	.byte	0
	.uleb128 0x18
	.4byte	0x1c1b
	.uleb128 0x3e
	.4byte	.LASF271
	.byte	0x1
	.2byte	0xcb1
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c9d
	.uleb128 0x2e
	.4byte	.LASF272
	.byte	0x1
	.2byte	0xcb1
	.4byte	0x1ca3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x1ca8
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5758
	.uleb128 0x36
	.4byte	.LVL151
	.4byte	0x5e99
	.4byte	0x1c93
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xcb3
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5758
	.byte	0
	.uleb128 0x37
	.4byte	.LVL152
	.4byte	0x5ea4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa56
	.uleb128 0x18
	.4byte	0x1c9d
	.uleb128 0x18
	.4byte	0x12f3
	.uleb128 0x3e
	.4byte	.LASF273
	.byte	0x1
	.2byte	0xcea
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ce4
	.uleb128 0x44
	.4byte	0xd74
	.4byte	.LBB405
	.4byte	.LBE405-.LBB405
	.byte	0x1
	.2byte	0xcec
	.uleb128 0x39
	.4byte	.LBB406
	.4byte	.LBE406-.LBB406
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.4byte	.LASF274
	.byte	0x1
	.2byte	0xe00
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d87
	.uleb128 0x2b
	.4byte	.LASF275
	.byte	0x1
	.2byte	0xe00
	.4byte	0x9ba
	.4byte	.LLST47
	.uleb128 0x2e
	.4byte	.LASF175
	.byte	0x1
	.2byte	0xe00
	.4byte	0x12e9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3f
	.4byte	.LASF178
	.byte	0x1
	.2byte	0xe02
	.4byte	0xea2
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x1d97
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5799
	.uleb128 0x36
	.4byte	.LVL155
	.4byte	0x5e99
	.4byte	0x1d50
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC65
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL156
	.4byte	0x5e99
	.4byte	0x1d7d
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xe04
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL157
	.4byte	0x5ea4
	.byte	0
	.uleb128 0x8
	.4byte	0x595
	.4byte	0x1d97
	.uleb128 0x9
	.4byte	0xec
	.byte	0x17
	.byte	0
	.uleb128 0x18
	.4byte	0x1d87
	.uleb128 0x42
	.4byte	.LASF276
	.byte	0x1
	.2byte	0xf98
	.4byte	0x9ba
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e39
	.uleb128 0x3b
	.4byte	.LASF240
	.byte	0x1
	.2byte	0xf9a
	.4byte	0x9ba
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3f
	.4byte	.LASF215
	.byte	0x1
	.2byte	0xf9b
	.4byte	0x30
	.uleb128 0x38
	.4byte	0xd8f
	.4byte	.LBB407
	.4byte	.LBE407-.LBB407
	.byte	0x1
	.2byte	0xf9d
	.4byte	0x1e0b
	.uleb128 0x39
	.4byte	.LBB408
	.4byte	.LBE408-.LBB408
	.uleb128 0x3a
	.4byte	0xd9f
	.4byte	.LLST48
	.uleb128 0x39
	.4byte	.LBB409
	.4byte	.LBE409-.LBB409
	.uleb128 0x3a
	.4byte	0xdab
	.4byte	.LLST48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB410
	.4byte	.LBE410-.LBB410
	.byte	0x1
	.2byte	0xf9e
	.4byte	0x1e2f
	.uleb128 0x39
	.4byte	.LBB411
	.4byte	.LBE411-.LBB411
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL160
	.4byte	0x5f37
	.byte	0
	.uleb128 0x42
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x848
	.4byte	0x441
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e6b
	.uleb128 0x3b
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x84a
	.4byte	0xea2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x37
	.4byte	.LVL161
	.4byte	0x1d9c
	.byte	0
	.uleb128 0x42
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x915
	.4byte	0x58f
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ef7
	.uleb128 0x2b
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x915
	.4byte	0x9ba
	.4byte	.LLST50
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x917
	.4byte	0xea2
	.4byte	.LLST51
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x1f07
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5668
	.uleb128 0x37
	.4byte	.LVL163
	.4byte	0x1d9c
	.uleb128 0x36
	.4byte	.LVL165
	.4byte	0x5e99
	.4byte	0x1eed
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x91b
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5668
	.byte	0
	.uleb128 0x37
	.4byte	.LVL166
	.4byte	0x5ea4
	.byte	0
	.uleb128 0x8
	.4byte	0x595
	.4byte	0x1f07
	.uleb128 0x9
	.4byte	0xec
	.byte	0x11
	.byte	0
	.uleb128 0x18
	.4byte	0x1ef7
	.uleb128 0x42
	.4byte	.LASF281
	.byte	0x1
	.2byte	0xde9
	.4byte	0x12a
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f70
	.uleb128 0x2b
	.4byte	.LASF280
	.byte	0x1
	.2byte	0xde9
	.4byte	0x9ba
	.4byte	.LLST52
	.uleb128 0x2b
	.4byte	.LASF282
	.byte	0x1
	.2byte	0xde9
	.4byte	0x847
	.4byte	.LLST53
	.uleb128 0x2c
	.4byte	.LASF283
	.byte	0x1
	.2byte	0xdeb
	.4byte	0x12a
	.4byte	.LLST54
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0xdec
	.4byte	0xea2
	.4byte	.LLST55
	.uleb128 0x37
	.4byte	.LVL170
	.4byte	0x1d9c
	.byte	0
	.uleb128 0x42
	.4byte	.LASF284
	.byte	0x1
	.2byte	0xe8d
	.4byte	0x847
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fb4
	.uleb128 0x2b
	.4byte	.LASF239
	.byte	0x1
	.2byte	0xe8d
	.4byte	0x9ba
	.4byte	.LLST56
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0xe8f
	.4byte	0xea2
	.4byte	.LLST57
	.uleb128 0x37
	.4byte	.LVL178
	.4byte	0x1d9c
	.byte	0
	.uleb128 0x42
	.4byte	.LASF285
	.byte	0x1
	.2byte	0xf07
	.4byte	0x852
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x201f
	.uleb128 0x2b
	.4byte	.LASF239
	.byte	0x1
	.2byte	0xf07
	.4byte	0x9ba
	.4byte	.LLST58
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0xf09
	.4byte	0xea2
	.4byte	.LLST59
	.uleb128 0x2c
	.4byte	.LASF286
	.byte	0x1
	.2byte	0xf0a
	.4byte	0x201f
	.4byte	.LLST60
	.uleb128 0x3b
	.4byte	.LASF287
	.byte	0x1
	.2byte	0xf0b
	.4byte	0x852
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x37
	.4byte	.LVL182
	.4byte	0x1d9c
	.uleb128 0x37
	.4byte	.LVL184
	.4byte	0xe35
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x803
	.uleb128 0x42
	.4byte	.LASF288
	.byte	0x1
	.2byte	0xf23
	.4byte	0x201f
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2079
	.uleb128 0x2b
	.4byte	.LASF239
	.byte	0x1
	.2byte	0xf23
	.4byte	0x9ba
	.4byte	.LLST61
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0xf25
	.4byte	0xea2
	.4byte	.LLST62
	.uleb128 0x2c
	.4byte	.LASF287
	.byte	0x1
	.2byte	0xf26
	.4byte	0x201f
	.4byte	.LLST63
	.uleb128 0x37
	.4byte	.LVL187
	.4byte	0x1d9c
	.byte	0
	.uleb128 0x42
	.4byte	.LASF289
	.byte	0x1
	.2byte	0xfa4
	.4byte	0x9ba
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20b4
	.uleb128 0x2b
	.4byte	.LASF260
	.byte	0x1
	.2byte	0xfa4
	.4byte	0x847
	.4byte	.LLST64
	.uleb128 0x2c
	.4byte	.LASF240
	.byte	0x1
	.2byte	0xfa6
	.4byte	0x9ba
	.4byte	.LLST65
	.byte	0
	.uleb128 0x42
	.4byte	.LASF290
	.byte	0x1
	.2byte	0xfb6
	.4byte	0x847
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2151
	.uleb128 0x3b
	.4byte	.LASF240
	.byte	0x1
	.2byte	0xfb8
	.4byte	0x847
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3f
	.4byte	.LASF215
	.byte	0x1
	.2byte	0xfb9
	.4byte	0x30
	.uleb128 0x38
	.4byte	0xd8f
	.4byte	.LBB412
	.4byte	.LBE412-.LBB412
	.byte	0x1
	.2byte	0xfbb
	.4byte	0x2123
	.uleb128 0x39
	.4byte	.LBB413
	.4byte	.LBE413-.LBB413
	.uleb128 0x3a
	.4byte	0xd9f
	.4byte	.LLST66
	.uleb128 0x39
	.4byte	.LBB414
	.4byte	.LBE414-.LBB414
	.uleb128 0x3a
	.4byte	0xdab
	.4byte	.LLST66
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB415
	.4byte	.LBE415-.LBB415
	.byte	0x1
	.2byte	0xfc2
	.4byte	0x2147
	.uleb128 0x39
	.4byte	.LBB416
	.4byte	.LBE416-.LBB416
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL198
	.4byte	0x5f37
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF291
	.byte	0x1
	.2byte	0x1078
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2357
	.uleb128 0x46
	.string	"mux"
	.byte	0x1
	.2byte	0x1078
	.4byte	0xd59
	.4byte	.LLST68
	.uleb128 0x2c
	.4byte	.LASF292
	.byte	0x1
	.2byte	0x107b
	.4byte	0x847
	.4byte	.LLST69
	.uleb128 0x2c
	.4byte	.LASF293
	.byte	0x1
	.2byte	0x107c
	.4byte	0x847
	.4byte	.LLST70
	.uleb128 0x38
	.4byte	0xd8f
	.4byte	.LBB417
	.4byte	.LBE417-.LBB417
	.byte	0x1
	.2byte	0x1082
	.4byte	0x21d2
	.uleb128 0x39
	.4byte	.LBB418
	.4byte	.LBE418-.LBB418
	.uleb128 0x3a
	.4byte	0xd9f
	.4byte	.LLST71
	.uleb128 0x39
	.4byte	.LBB419
	.4byte	.LBE419-.LBB419
	.uleb128 0x3a
	.4byte	0xdab
	.4byte	.LLST71
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xdb8
	.4byte	.LBB420
	.4byte	.LBE420-.LBB420
	.byte	0x1
	.2byte	0x1087
	.4byte	0x230c
	.uleb128 0x47
	.4byte	0xdd3
	.sleb128 -1
	.uleb128 0x48
	.4byte	0xdc8
	.4byte	.LLST73
	.uleb128 0x49
	.4byte	0xce1
	.4byte	.LBB421
	.4byte	.LBE421-.LBB421
	.byte	0xe
	.byte	0x62
	.uleb128 0x47
	.4byte	0xcfc
	.sleb128 -1
	.uleb128 0x48
	.4byte	0xcf1
	.4byte	.LLST74
	.uleb128 0x39
	.4byte	.LBB422
	.4byte	.LBE422-.LBB422
	.uleb128 0x3a
	.4byte	0xd07
	.4byte	.LLST75
	.uleb128 0x3a
	.4byte	0xd12
	.4byte	.LLST76
	.uleb128 0x3a
	.4byte	0xd1d
	.4byte	.LLST77
	.uleb128 0x40
	.4byte	0xd28
	.uleb128 0x4a
	.4byte	0xd33
	.byte	0
	.uleb128 0x43
	.4byte	0xd3e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5930
	.uleb128 0x4b
	.4byte	0xddf
	.4byte	.LBB423
	.4byte	.LBE423-.LBB423
	.byte	0x4
	.byte	0x56
	.4byte	0x2280
	.uleb128 0x4c
	.4byte	0xe04
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+8732
	.sleb128 0
	.uleb128 0x47
	.4byte	0xdf8
	.sleb128 -1287651329
	.uleb128 0x48
	.4byte	0xdec
	.4byte	.LLST78
	.byte	0
	.uleb128 0x36
	.4byte	.LVL210
	.4byte	0x5f6f
	.4byte	0x22af
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC85
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5930
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC82
	.byte	0
	.uleb128 0x36
	.4byte	.LVL216
	.4byte	0x5f6f
	.4byte	0x22de
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC85
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6a
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5930
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC88
	.byte	0
	.uleb128 0x30
	.4byte	.LVL218
	.4byte	0x5f6f
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC85
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6b
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5930
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC90
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LBB425
	.4byte	.LBE425-.LBB425
	.uleb128 0x34
	.string	"tcb"
	.byte	0x1
	.2byte	0x108c
	.4byte	0xea2
	.4byte	.LLST79
	.uleb128 0x2c
	.4byte	.LASF294
	.byte	0x1
	.2byte	0x108d
	.4byte	0x847
	.4byte	.LLST80
	.uleb128 0x44
	.4byte	0xd74
	.4byte	.LBB426
	.4byte	.LBE426-.LBB426
	.byte	0x1
	.2byte	0x108c
	.uleb128 0x39
	.4byte	.LBB427
	.4byte	.LBE427-.LBB427
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF295
	.byte	0x4
	.byte	0x81
	.byte	0x3
	.4byte	0x2387
	.uleb128 0x1f
	.string	"mux"
	.byte	0x4
	.byte	0x81
	.4byte	0xd59
	.uleb128 0x22
	.4byte	.LASF207
	.byte	0x4
	.byte	0x86
	.4byte	0x3e
	.uleb128 0x23
	.4byte	.LASF211
	.4byte	0x2387
	.4byte	.LASF295
	.byte	0
	.uleb128 0x18
	.4byte	0xd5f
	.uleb128 0x3e
	.4byte	.LASF296
	.byte	0x1
	.2byte	0x10bd
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24b5
	.uleb128 0x46
	.string	"mux"
	.byte	0x1
	.2byte	0x10bd
	.4byte	0xd59
	.4byte	.LLST81
	.uleb128 0x38
	.4byte	0xe1d
	.4byte	.LBB435
	.4byte	.LBE435-.LBB435
	.byte	0x1
	.2byte	0x10c3
	.4byte	0x245d
	.uleb128 0x48
	.4byte	0xe29
	.4byte	.LLST82
	.uleb128 0x49
	.4byte	0x2357
	.4byte	.LBB436
	.4byte	.LBE436-.LBB436
	.byte	0xe
	.byte	0x6d
	.uleb128 0x48
	.4byte	0x2363
	.4byte	.LLST83
	.uleb128 0x39
	.4byte	.LBB437
	.4byte	.LBE437-.LBB437
	.uleb128 0x40
	.4byte	0x236e
	.uleb128 0x43
	.4byte	0x2379
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5935
	.uleb128 0x36
	.4byte	.LVL225
	.4byte	0x5f6f
	.4byte	0x242f
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC85
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x9d
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5935
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC93
	.byte	0
	.uleb128 0x30
	.4byte	.LVL227
	.4byte	0x5f6f
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC85
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xa3
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5935
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC98
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LBB438
	.4byte	.LBE438-.LBB438
	.uleb128 0x34
	.string	"tcb"
	.byte	0x1
	.2byte	0x10c7
	.4byte	0xea2
	.4byte	.LLST84
	.uleb128 0x2c
	.4byte	.LASF297
	.byte	0x1
	.2byte	0x10c8
	.4byte	0x847
	.4byte	.LLST85
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB439
	.4byte	.LBE439-.LBB439
	.byte	0x1
	.2byte	0x10c7
	.4byte	0x24aa
	.uleb128 0x39
	.4byte	.LBB440
	.4byte	.LBE440-.LBB440
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL231
	.4byte	0x5f37
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF298
	.byte	0x1
	.2byte	0x426
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x267a
	.uleb128 0x2e
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x426
	.4byte	0xea2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2e
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x426
	.4byte	0x82a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x426
	.4byte	0x847
	.4byte	.LLST86
	.uleb128 0x2c
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x428
	.4byte	0xea2
	.4byte	.LLST87
	.uleb128 0x2c
	.4byte	.LASF299
	.byte	0x1
	.2byte	0x428
	.4byte	0xea2
	.4byte	.LLST88
	.uleb128 0x2c
	.4byte	.LASF300
	.byte	0x1
	.2byte	0x428
	.4byte	0xea2
	.4byte	.LLST89
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x268a
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5545
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB441
	.4byte	.LBE441-.LBB441
	.byte	0x1
	.2byte	0x455
	.4byte	0x255e
	.uleb128 0x39
	.4byte	.LBB442
	.4byte	.LBE442-.LBB442
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST90
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB443
	.4byte	.LBE443-.LBB443
	.byte	0x1
	.2byte	0x4a1
	.4byte	0x2586
	.uleb128 0x39
	.4byte	.LBB444
	.4byte	.LBE444-.LBB444
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST91
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB445
	.4byte	.LBE445-.LBB445
	.byte	0x1
	.2byte	0x4a3
	.4byte	0x25ae
	.uleb128 0x39
	.4byte	.LBB446
	.4byte	.LBE446-.LBB446
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST92
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL233
	.4byte	0x5e99
	.4byte	0x25de
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x42d
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5545
	.byte	0
	.uleb128 0x37
	.4byte	.LVL234
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL235
	.4byte	0x2151
	.4byte	0x25fe
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x37
	.4byte	.LVL249
	.4byte	0x1308
	.uleb128 0x36
	.4byte	.LVL250
	.4byte	0x5f7a
	.4byte	0x261b
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.byte	0
	.uleb128 0x36
	.4byte	.LVL251
	.4byte	0x238c
	.4byte	0x2632
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x36
	.4byte	.LVL252
	.4byte	0x2151
	.4byte	0x2649
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x37
	.4byte	.LVL257
	.4byte	0x5f86
	.uleb128 0x36
	.4byte	.LVL259
	.4byte	0x14ea
	.4byte	0x2666
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL260
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x595
	.4byte	0x268a
	.uleb128 0x9
	.4byte	0xec
	.byte	0x18
	.byte	0
	.uleb128 0x18
	.4byte	0x267a
	.uleb128 0x42
	.4byte	.LASF301
	.byte	0x1
	.2byte	0x2ce
	.4byte	0x847
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x278b
	.uleb128 0x2b
	.4byte	.LASF302
	.byte	0x1
	.2byte	0x2ce
	.4byte	0x2796
	.4byte	.LLST93
	.uleb128 0x2e
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x2ce
	.4byte	0x12d3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x2d0
	.4byte	0xea2
	.4byte	.LLST94
	.uleb128 0x2c
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x2d1
	.4byte	0x847
	.4byte	.LLST95
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x27ab
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5503
	.uleb128 0x36
	.4byte	.LVL263
	.4byte	0x5e99
	.4byte	0x2726
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2d3
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5503
	.byte	0
	.uleb128 0x37
	.4byte	.LVL264
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL265
	.4byte	0x5f91
	.4byte	0x274b
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x164
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x804
	.byte	0
	.uleb128 0x36
	.4byte	.LVL267
	.4byte	0x1159
	.4byte	0x2774
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x72
	.sleb128 24
	.uleb128 0x31
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL268
	.4byte	0x24b5
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2791
	.uleb128 0x18
	.4byte	0xb19
	.uleb128 0x18
	.4byte	0x278b
	.uleb128 0x8
	.4byte	0x595
	.4byte	0x27ab
	.uleb128 0x9
	.4byte	0xec
	.byte	0x15
	.byte	0
	.uleb128 0x18
	.4byte	0x279b
	.uleb128 0x42
	.4byte	.LASF303
	.byte	0x1
	.2byte	0x2fc
	.4byte	0x847
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2920
	.uleb128 0x2b
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x2fc
	.4byte	0x82a
	.4byte	.LLST96
	.uleb128 0x2b
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x2fd
	.4byte	0xafe
	.4byte	.LLST97
	.uleb128 0x2e
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x2fe
	.4byte	0x12c9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2e
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x2ff
	.4byte	0x12ce
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2e
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x300
	.4byte	0x852
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2b
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x301
	.4byte	0x12d9
	.4byte	.LLST98
	.uleb128 0x2e
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x302
	.4byte	0x12ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x304
	.4byte	0xea2
	.4byte	.LLST99
	.uleb128 0x2c
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x305
	.4byte	0x847
	.4byte	.LLST100
	.uleb128 0x2f
	.4byte	.LBB447
	.4byte	.LBE447-.LBB447
	.4byte	0x28b8
	.uleb128 0x2c
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x322
	.4byte	0xb03
	.4byte	.LLST101
	.uleb128 0x36
	.4byte	.LVL275
	.4byte	0x5f91
	.4byte	0x288b
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x804
	.byte	0
	.uleb128 0x36
	.4byte	.LVL277
	.4byte	0x5f91
	.4byte	0x28a7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x164
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x804
	.byte	0
	.uleb128 0x30
	.4byte	.LVL279
	.4byte	0x5f0a
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL283
	.4byte	0x1159
	.4byte	0x2902
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x31
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.4byte	.LVL284
	.4byte	0x24b5
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF304
	.byte	0x1
	.2byte	0x7ed
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a4d
	.uleb128 0x2c
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x7ef
	.4byte	0x847
	.4byte	.LLST102
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.2byte	0x7f0
	.4byte	0x847
	.4byte	.LLST103
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x2a5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5630
	.uleb128 0x2f
	.4byte	.LBB448
	.4byte	.LBE448-.LBB448
	.4byte	0x29e7
	.uleb128 0x3b
	.4byte	.LASF305
	.byte	0x1
	.2byte	0x7f5
	.4byte	0xca1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.4byte	.LVL291
	.4byte	0x5f9c
	.4byte	0x29a7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC120
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL292
	.4byte	0x27b0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	prvIdleTask
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x600
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0xa
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	xIdleTaskHandle
	.byte	0x22
	.uleb128 0x31
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LBB449
	.4byte	.LBE449-.LBB449
	.4byte	0x2a01
	.uleb128 0x3f
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x819
	.4byte	0x30
	.byte	0
	.uleb128 0x37
	.4byte	.LVL294
	.4byte	0x5fa8
	.uleb128 0x37
	.4byte	.LVL296
	.4byte	0x5fb4
	.uleb128 0x36
	.4byte	.LVL299
	.4byte	0x5e99
	.4byte	0x2a43
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x835
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5630
	.byte	0
	.uleb128 0x37
	.4byte	.LVL300
	.4byte	0x5ea4
	.byte	0
	.uleb128 0x8
	.4byte	0x595
	.4byte	0x2a5d
	.uleb128 0x9
	.4byte	0xec
	.byte	0x13
	.byte	0
	.uleb128 0x18
	.4byte	0x2a4d
	.uleb128 0x3e
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x4b8
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c10
	.uleb128 0x2b
	.4byte	.LASF307
	.byte	0x1
	.2byte	0x4b8
	.4byte	0x9ba
	.4byte	.LLST104
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x4bf
	.4byte	0xea2
	.4byte	.LLST105
	.uleb128 0x2c
	.4byte	.LASF308
	.byte	0x1
	.2byte	0x4c0
	.4byte	0x3e
	.4byte	.LLST106
	.uleb128 0x2c
	.4byte	.LASF309
	.byte	0x1
	.2byte	0x4c1
	.4byte	0x852
	.4byte	.LLST107
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x2c20
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5552
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB450
	.4byte	.LBE450-.LBB450
	.byte	0x1
	.2byte	0x4c0
	.4byte	0x2aef
	.uleb128 0x39
	.4byte	.LBB451
	.4byte	.LBE451-.LBB451
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST106
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB452
	.4byte	.LBE452-.LBB452
	.byte	0x1
	.2byte	0x521
	.4byte	0x2b17
	.uleb128 0x39
	.4byte	.LBB453
	.4byte	.LBE453-.LBB453
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST109
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL303
	.4byte	0x2151
	.4byte	0x2b2e
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x37
	.4byte	.LVL304
	.4byte	0x1d9c
	.uleb128 0x36
	.4byte	.LVL306
	.4byte	0x5fbf
	.4byte	0x2b4b
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL307
	.4byte	0x5fbf
	.4byte	0x2b5f
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 28
	.byte	0
	.uleb128 0x36
	.4byte	.LVL308
	.4byte	0x5f7a
	.4byte	0x2b7c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTasksWaitingTermination
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL311
	.4byte	0xe7b
	.uleb128 0x36
	.4byte	.LVL313
	.4byte	0x238c
	.4byte	0x2b9c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x36
	.4byte	.LVL314
	.4byte	0xfce
	.4byte	0x2bb0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL315
	.4byte	0x13d0
	.4byte	0x2bc4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL319
	.4byte	0x5e99
	.4byte	0x2bf4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x519
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5552
	.byte	0
	.uleb128 0x37
	.4byte	.LVL320
	.4byte	0x5ea4
	.uleb128 0x37
	.4byte	.LVL322
	.4byte	0x5f86
	.uleb128 0x37
	.4byte	.LVL325
	.4byte	0x5f21
	.byte	0
	.uleb128 0x8
	.4byte	0x595
	.4byte	0x2c20
	.uleb128 0x9
	.4byte	0xec
	.byte	0xb
	.byte	0
	.uleb128 0x18
	.4byte	0x2c10
	.uleb128 0x3e
	.4byte	.LASF310
	.byte	0x1
	.2byte	0x535
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e3f
	.uleb128 0x2b
	.4byte	.LASF311
	.byte	0x1
	.2byte	0x535
	.4byte	0x2e45
	.4byte	.LLST110
	.uleb128 0x2b
	.4byte	.LASF312
	.byte	0x1
	.2byte	0x535
	.4byte	0x14e5
	.4byte	.LLST111
	.uleb128 0x3b
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x537
	.4byte	0x85d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3c
	.4byte	.LASF313
	.byte	0x1
	.2byte	0x538
	.4byte	0x847
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF314
	.byte	0x1
	.2byte	0x538
	.4byte	0x847
	.4byte	.LLST112
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x2e4a
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5560
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB454
	.4byte	.LBE454-.LBB454
	.byte	0x1
	.2byte	0x53c
	.4byte	0x2cb9
	.uleb128 0x39
	.4byte	.LBB455
	.4byte	.LBE455-.LBB455
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0x2d34
	.uleb128 0x2c
	.4byte	.LASF315
	.byte	0x1
	.2byte	0x543
	.4byte	0x14e5
	.4byte	.LLST113
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB457
	.4byte	.LBE457-.LBB457
	.byte	0x1
	.2byte	0x570
	.4byte	0x2cf6
	.uleb128 0x39
	.4byte	.LBB458
	.4byte	.LBE458-.LBB458
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB459
	.4byte	.LBE459-.LBB459
	.byte	0x1
	.2byte	0x57c
	.4byte	0x2d1a
	.uleb128 0x39
	.4byte	.LBB460
	.4byte	.LBE460-.LBB460
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL340
	.4byte	0x5fbf
	.uleb128 0x30
	.4byte	.LVL341
	.4byte	0x149c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB463
	.4byte	.LBE463-.LBB463
	.byte	0x1
	.2byte	0x58a
	.4byte	0x2d5c
	.uleb128 0x39
	.4byte	.LBB464
	.4byte	.LBE464-.LBB464
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST114
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL328
	.4byte	0x5e99
	.4byte	0x2d8c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x53a
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5560
	.byte	0
	.uleb128 0x37
	.4byte	.LVL329
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL330
	.4byte	0x5e99
	.4byte	0x2dc5
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x53b
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5560
	.byte	0
	.uleb128 0x37
	.4byte	.LVL331
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL332
	.4byte	0x5e99
	.4byte	0x2dfe
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x53c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5560
	.byte	0
	.uleb128 0x37
	.4byte	.LVL333
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL334
	.4byte	0x2151
	.4byte	0x2e1e
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x36
	.4byte	.LVL342
	.4byte	0x238c
	.4byte	0x2e35
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x37
	.4byte	.LVL344
	.4byte	0x5f86
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x85d
	.uleb128 0x18
	.4byte	0x2e3f
	.uleb128 0x18
	.4byte	0xca1
	.uleb128 0x3e
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x596
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2fbd
	.uleb128 0x2b
	.4byte	.LASF317
	.byte	0x1
	.2byte	0x596
	.4byte	0x14e5
	.4byte	.LLST115
	.uleb128 0x2c
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x598
	.4byte	0x85d
	.4byte	.LLST116
	.uleb128 0x3c
	.4byte	.LASF313
	.byte	0x1
	.2byte	0x599
	.4byte	0x847
	.byte	0
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x2fcd
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5567
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB465
	.4byte	.LBE465-.LBB465
	.byte	0x1
	.2byte	0x59e
	.4byte	0x2ec5
	.uleb128 0x39
	.4byte	.LBB466
	.4byte	.LBE466-.LBB466
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB467
	.4byte	.LBE467-.LBB467
	.byte	0x1
	.2byte	0x5b3
	.4byte	0x2ee9
	.uleb128 0x39
	.4byte	.LBB468
	.4byte	.LBE468-.LBB468
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB469
	.4byte	.LBE469-.LBB469
	.byte	0x1
	.2byte	0x5be
	.4byte	0x2f0d
	.uleb128 0x39
	.4byte	.LBB470
	.4byte	.LBE470-.LBB470
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB471
	.4byte	.LBE471-.LBB471
	.byte	0x1
	.2byte	0x5cc
	.4byte	0x2f35
	.uleb128 0x39
	.4byte	.LBB472
	.4byte	.LBE472-.LBB472
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST117
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL347
	.4byte	0x5e99
	.4byte	0x2f65
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x59e
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5567
	.byte	0
	.uleb128 0x37
	.4byte	.LVL348
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL349
	.4byte	0x2151
	.4byte	0x2f82
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL351
	.4byte	0x5fbf
	.uleb128 0x36
	.4byte	.LVL352
	.4byte	0x149c
	.4byte	0x2f9f
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL353
	.4byte	0x238c
	.4byte	0x2fb3
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL355
	.4byte	0x5f86
	.byte	0
	.uleb128 0x8
	.4byte	0x595
	.4byte	0x2fcd
	.uleb128 0x9
	.4byte	0xec
	.byte	0xa
	.byte	0
	.uleb128 0x18
	.4byte	0x2fbd
	.uleb128 0x42
	.4byte	.LASF318
	.byte	0x1
	.2byte	0x5d8
	.4byte	0x9f0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30f1
	.uleb128 0x2b
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x5d8
	.4byte	0x9ba
	.4byte	.LLST118
	.uleb128 0x3b
	.4byte	.LASF319
	.byte	0x1
	.2byte	0x5da
	.4byte	0x9f0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2c
	.4byte	.LASF320
	.byte	0x1
	.2byte	0x5db
	.4byte	0xfc3
	.4byte	.LLST119
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x5dc
	.4byte	0x113f
	.4byte	.LLST120
	.uleb128 0x2c
	.4byte	.LASF321
	.byte	0x1
	.2byte	0x5dd
	.4byte	0xea2
	.4byte	.LLST121
	.uleb128 0x2c
	.4byte	.LASF322
	.byte	0x1
	.2byte	0x5de
	.4byte	0xea2
	.4byte	.LLST122
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x3101
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5576
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB473
	.4byte	.LBE473-.LBB473
	.byte	0x1
	.2byte	0x5de
	.4byte	0x3081
	.uleb128 0x39
	.4byte	.LBB474
	.4byte	.LBE474-.LBB474
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST123
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL358
	.4byte	0x1d9c
	.uleb128 0x37
	.4byte	.LVL361
	.4byte	0x2079
	.uleb128 0x36
	.4byte	.LVL363
	.4byte	0x5e99
	.4byte	0x30c3
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x5e0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5576
	.byte	0
	.uleb128 0x37
	.4byte	.LVL364
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL367
	.4byte	0x2151
	.4byte	0x30e0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL369
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x595
	.4byte	0x3101
	.uleb128 0x9
	.4byte	0xec
	.byte	0xd
	.byte	0
	.uleb128 0x18
	.4byte	0x30f1
	.uleb128 0x42
	.4byte	.LASF323
	.byte	0x1
	.2byte	0x61f
	.4byte	0x852
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3182
	.uleb128 0x2b
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x61f
	.4byte	0x9ba
	.4byte	.LLST124
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x621
	.4byte	0xea2
	.4byte	.LLST125
	.uleb128 0x3b
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x622
	.4byte	0x852
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.4byte	.LVL381
	.4byte	0x2151
	.4byte	0x3165
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x37
	.4byte	.LVL382
	.4byte	0x1d9c
	.uleb128 0x30
	.4byte	.LVL385
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x634
	.4byte	0x852
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31fe
	.uleb128 0x2b
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x634
	.4byte	0x9ba
	.4byte	.LLST126
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x636
	.4byte	0xea2
	.4byte	.LLST127
	.uleb128 0x3b
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x637
	.4byte	0x852
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.4byte	.LVL387
	.4byte	0x2151
	.4byte	0x31e1
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x37
	.4byte	.LVL388
	.4byte	0x1d9c
	.uleb128 0x30
	.4byte	.LVL391
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF325
	.byte	0x1
	.2byte	0x64a
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3425
	.uleb128 0x2b
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x64a
	.4byte	0x9ba
	.4byte	.LLST128
	.uleb128 0x2b
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x64a
	.4byte	0x852
	.4byte	.LLST129
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x64c
	.4byte	0xea2
	.4byte	.LLST130
	.uleb128 0x2c
	.4byte	.LASF327
	.byte	0x1
	.2byte	0x64d
	.4byte	0x852
	.4byte	.LLST131
	.uleb128 0x2c
	.4byte	.LASF328
	.byte	0x1
	.2byte	0x64d
	.4byte	0x852
	.4byte	.LLST132
	.uleb128 0x2c
	.4byte	.LASF329
	.byte	0x1
	.2byte	0x64e
	.4byte	0x847
	.4byte	.LLST133
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x3435
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5595
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB475
	.4byte	.LBE475-.LBB475
	.byte	0x1
	.2byte	0x674
	.4byte	0x32a7
	.uleb128 0x39
	.4byte	.LBB476
	.4byte	.LBE476-.LBB476
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB477
	.4byte	.LBE477-.LBB477
	.byte	0x1
	.2byte	0x679
	.4byte	0x32cf
	.uleb128 0x39
	.4byte	.LBB478
	.4byte	.LBE478-.LBB478
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST134
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB479
	.4byte	.LBE479-.LBB479
	.byte	0x1
	.2byte	0x679
	.4byte	0x32f3
	.uleb128 0x39
	.4byte	.LBB480
	.4byte	.LBE480-.LBB480
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB481
	.4byte	.LBE481-.LBB481
	.byte	0x1
	.2byte	0x67d
	.4byte	0x331b
	.uleb128 0x39
	.4byte	.LBB482
	.4byte	.LBE482-.LBB482
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST135
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB483
	.4byte	.LBE483-.LBB483
	.byte	0x1
	.2byte	0x68d
	.4byte	0x333f
	.uleb128 0x39
	.4byte	.LBB484
	.4byte	.LBE484-.LBB484
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB485
	.4byte	.LBE485-.LBB485
	.byte	0x1
	.2byte	0x6de
	.4byte	0x3367
	.uleb128 0x39
	.4byte	.LBB486
	.4byte	.LBE486-.LBB486
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST136
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL394
	.4byte	0x5e99
	.4byte	0x3397
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x650
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5595
	.byte	0
	.uleb128 0x37
	.4byte	.LVL395
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL397
	.4byte	0x2151
	.4byte	0x33b7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x37
	.4byte	.LVL398
	.4byte	0x1d9c
	.uleb128 0x36
	.4byte	.LVL405
	.4byte	0x14ea
	.4byte	0x33d4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL415
	.4byte	0x5fbf
	.4byte	0x33e8
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL417
	.4byte	0x5f7a
	.4byte	0x3408
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	pxReadyTasksLists
	.byte	0x22
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL419
	.4byte	0x5f86
	.uleb128 0x30
	.4byte	.LVL420
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x595
	.4byte	0x3435
	.uleb128 0x9
	.4byte	0xec
	.byte	0x10
	.byte	0
	.uleb128 0x18
	.4byte	0x3425
	.uleb128 0x3e
	.4byte	.LASF330
	.byte	0x1
	.2byte	0x6f1
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3640
	.uleb128 0x2b
	.4byte	.LASF331
	.byte	0x1
	.2byte	0x6f1
	.4byte	0x9ba
	.4byte	.LLST137
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x6f3
	.4byte	0xea2
	.4byte	.LLST138
	.uleb128 0x2c
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x6f4
	.4byte	0xea2
	.4byte	.LLST139
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x3640
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5601
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB487
	.4byte	.LBE487-.LBB487
	.byte	0x1
	.2byte	0x714
	.4byte	0x34b3
	.uleb128 0x39
	.4byte	.LBB488
	.4byte	.LBE488-.LBB488
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB489
	.4byte	.LBE489-.LBB489
	.byte	0x1
	.2byte	0x71d
	.4byte	0x34d7
	.uleb128 0x39
	.4byte	.LBB490
	.4byte	.LBE490-.LBB490
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB491
	.4byte	.LBE491-.LBB491
	.byte	0x1
	.2byte	0x71e
	.4byte	0x34ff
	.uleb128 0x39
	.4byte	.LBB492
	.4byte	.LBE492-.LBB492
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST140
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB493
	.4byte	.LBE493-.LBB493
	.byte	0x1
	.2byte	0x72c
	.4byte	0x3523
	.uleb128 0x39
	.4byte	.LBB494
	.4byte	.LBE494-.LBB494
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL422
	.4byte	0x2151
	.4byte	0x353a
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x37
	.4byte	.LVL423
	.4byte	0x1d9c
	.uleb128 0x36
	.4byte	.LVL425
	.4byte	0x5fbf
	.4byte	0x3557
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL426
	.4byte	0x5fbf
	.4byte	0x356b
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 28
	.byte	0
	.uleb128 0x36
	.4byte	.LVL427
	.4byte	0x5f7a
	.4byte	0x3588
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xSuspendedTaskList
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL429
	.4byte	0x238c
	.4byte	0x359f
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x36
	.4byte	.LVL432
	.4byte	0x5e99
	.4byte	0x35cf
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x71d
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5601
	.byte	0
	.uleb128 0x37
	.4byte	.LVL433
	.4byte	0x5ea4
	.uleb128 0x37
	.4byte	.LVL435
	.4byte	0x5f86
	.uleb128 0x36
	.4byte	.LVL438
	.4byte	0x2151
	.4byte	0x35f5
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL439
	.4byte	0x238c
	.4byte	0x3609
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL440
	.4byte	0x17d1
	.uleb128 0x36
	.4byte	.LVL443
	.4byte	0x2151
	.4byte	0x3626
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL444
	.4byte	0xe7b
	.uleb128 0x30
	.4byte	.LVL445
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x105f
	.uleb128 0x3e
	.4byte	.LASF332
	.byte	0x1
	.2byte	0x77b
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x37f8
	.uleb128 0x2e
	.4byte	.LASF333
	.byte	0x1
	.2byte	0x77b
	.4byte	0x9ba
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3b
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x77d
	.4byte	0x37f8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x37fd
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5612
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB495
	.4byte	.LBE495-.LBB495
	.byte	0x1
	.2byte	0x785
	.4byte	0x36aa
	.uleb128 0x39
	.4byte	.LBB496
	.4byte	.LBE496-.LBB496
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB497
	.4byte	.LBE497-.LBB497
	.byte	0x1
	.2byte	0x792
	.4byte	0x36d2
	.uleb128 0x39
	.4byte	.LBB498
	.4byte	.LBE498-.LBB498
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST141
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB499
	.4byte	.LBE499-.LBB499
	.byte	0x1
	.2byte	0x792
	.4byte	0x36f6
	.uleb128 0x39
	.4byte	.LBB500
	.4byte	.LBE500-.LBB500
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB501
	.4byte	.LBE501-.LBB501
	.byte	0x1
	.2byte	0x797
	.4byte	0x371e
	.uleb128 0x39
	.4byte	.LBB502
	.4byte	.LBE502-.LBB502
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST142
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB503
	.4byte	.LBE503-.LBB503
	.byte	0x1
	.2byte	0x799
	.4byte	0x3746
	.uleb128 0x39
	.4byte	.LBB504
	.4byte	.LBE504-.LBB504
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST143
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL448
	.4byte	0x5e99
	.4byte	0x3776
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x780
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5612
	.byte	0
	.uleb128 0x37
	.4byte	.LVL449
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL450
	.4byte	0x2151
	.4byte	0x3796
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x36
	.4byte	.LVL451
	.4byte	0x1074
	.4byte	0x37aa
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL452
	.4byte	0x5fbf
	.4byte	0x37be
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL453
	.4byte	0x5f7a
	.4byte	0x37d2
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL457
	.4byte	0x5f86
	.uleb128 0x37
	.4byte	.LVL459
	.4byte	0x14ea
	.uleb128 0x30
	.4byte	.LVL460
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0xea2
	.uleb128 0x18
	.4byte	0x2c10
	.uleb128 0x42
	.4byte	.LASF334
	.byte	0x1
	.2byte	0x7b5
	.4byte	0x847
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x39d8
	.uleb128 0x2b
	.4byte	.LASF333
	.byte	0x1
	.2byte	0x7b5
	.4byte	0x9ba
	.4byte	.LLST144
	.uleb128 0x2c
	.4byte	.LASF329
	.byte	0x1
	.2byte	0x7b7
	.4byte	0x847
	.4byte	.LLST145
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x7b8
	.4byte	0x37f8
	.4byte	.LLST146
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x39e8
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5618
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB505
	.4byte	.LBE505-.LBB505
	.byte	0x1
	.2byte	0x7c4
	.4byte	0x387f
	.uleb128 0x39
	.4byte	.LBB506
	.4byte	.LBE506-.LBB506
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB507
	.4byte	.LBE507-.LBB507
	.byte	0x1
	.2byte	0x7cb
	.4byte	0x38a7
	.uleb128 0x39
	.4byte	.LBB508
	.4byte	.LBE508-.LBB508
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST147
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB509
	.4byte	.LBE509-.LBB509
	.byte	0x1
	.2byte	0x7cb
	.4byte	0x38cb
	.uleb128 0x39
	.4byte	.LBB510
	.4byte	.LBE510-.LBB510
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB511
	.4byte	.LBE511-.LBB511
	.byte	0x1
	.2byte	0x7cf
	.4byte	0x38f3
	.uleb128 0x39
	.4byte	.LBB512
	.4byte	.LBE512-.LBB512
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST148
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB513
	.4byte	.LBE513-.LBB513
	.byte	0x1
	.2byte	0x7dd
	.4byte	0x391b
	.uleb128 0x39
	.4byte	.LBB514
	.4byte	.LBE514-.LBB514
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST149
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL463
	.4byte	0x5e99
	.4byte	0x394b
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x7ba
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5618
	.byte	0
	.uleb128 0x37
	.4byte	.LVL464
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL465
	.4byte	0x2151
	.4byte	0x396b
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x36
	.4byte	.LVL466
	.4byte	0x1074
	.4byte	0x397f
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL467
	.4byte	0x5fbf
	.4byte	0x3993
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL468
	.4byte	0x5f7a
	.4byte	0x39a7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL472
	.4byte	0x14ea
	.uleb128 0x36
	.4byte	.LVL477
	.4byte	0x5f7a
	.4byte	0x39c4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 28
	.byte	0
	.uleb128 0x30
	.4byte	.LVL485
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x595
	.4byte	0x39e8
	.uleb128 0x9
	.4byte	0xec
	.byte	0x12
	.byte	0
	.uleb128 0x18
	.4byte	0x39d8
	.uleb128 0x2d
	.4byte	.LASF335
	.byte	0x1
	.2byte	0xe31
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b0f
	.uleb128 0x39
	.4byte	.LBB515
	.4byte	.LBE515-.LBB515
	.uleb128 0x2c
	.4byte	.LASF336
	.byte	0x1
	.2byte	0xe35
	.4byte	0x847
	.4byte	.LLST150
	.uleb128 0x3b
	.4byte	.LASF308
	.byte	0x1
	.2byte	0xe36
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB516
	.4byte	.LBE516-.LBB516
	.byte	0x1
	.2byte	0xe36
	.4byte	0x3a50
	.uleb128 0x39
	.4byte	.LBB517
	.4byte	.LBE517-.LBB517
	.uleb128 0x43
	.4byte	0xd84
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LBB518
	.4byte	.LBE518-.LBB518
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0xe3c
	.4byte	0xea2
	.4byte	.LLST151
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0x68
	.4byte	0x3aba
	.uleb128 0x2c
	.4byte	.LASF337
	.byte	0x1
	.2byte	0xe45
	.4byte	0x9a9
	.4byte	.LLST152
	.uleb128 0x2f
	.4byte	.LBB520
	.4byte	.LBE520-.LBB520
	.4byte	0x3ab0
	.uleb128 0x2c
	.4byte	.LASF338
	.byte	0x1
	.2byte	0xe47
	.4byte	0xea2
	.4byte	.LLST153
	.uleb128 0x2c
	.4byte	.LASF339
	.byte	0x1
	.2byte	0xe48
	.4byte	0x3e
	.4byte	.LLST154
	.byte	0
	.uleb128 0x37
	.4byte	.LVL497
	.4byte	0x5fbf
	.byte	0
	.uleb128 0x36
	.4byte	.LVL488
	.4byte	0x2151
	.4byte	0x3ad1
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x36
	.4byte	.LVL500
	.4byte	0x238c
	.4byte	0x3ae8
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x36
	.4byte	.LVL501
	.4byte	0xfce
	.4byte	0x3afc
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL502
	.4byte	0x13d0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4d
	.4byte	.LASF340
	.byte	0x1
	.2byte	0xd21
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b5c
	.uleb128 0x2e
	.4byte	.LASF172
	.byte	0x1
	.2byte	0xd21
	.4byte	0x12a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2f
	.4byte	.LBB522
	.4byte	.LBE522-.LBB522
	.4byte	0x3b52
	.uleb128 0x4e
	.4byte	.LASF436
	.byte	0x1
	.2byte	0xd4d
	.uleb128 0x37
	.4byte	.LVL505
	.4byte	0x5fcb
	.byte	0
	.uleb128 0x37
	.4byte	.LVL504
	.4byte	0x39ed
	.byte	0
	.uleb128 0x42
	.4byte	.LASF341
	.byte	0x1
	.2byte	0x999
	.4byte	0x847
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d69
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x99b
	.4byte	0xea2
	.4byte	.LLST155
	.uleb128 0x2c
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x99c
	.4byte	0x85d
	.4byte	.LLST156
	.uleb128 0x2c
	.4byte	.LASF342
	.byte	0x1
	.2byte	0x99d
	.4byte	0x847
	.4byte	.LLST157
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x3d69
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5686
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB523
	.4byte	.LBE523-.LBB523
	.byte	0x1
	.2byte	0x9a8
	.4byte	0x3bdd
	.uleb128 0x39
	.4byte	.LBB524
	.4byte	.LBE524-.LBB524
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST158
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB525
	.4byte	.LBE525-.LBB525
	.byte	0x1
	.2byte	0x9ba
	.4byte	0x3c01
	.uleb128 0x39
	.4byte	.LBB526
	.4byte	.LBE526-.LBB526
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0x80
	.4byte	0x3cd7
	.uleb128 0x2c
	.4byte	.LASF315
	.byte	0x1
	.2byte	0x9c3
	.4byte	0x14e5
	.4byte	.LLST159
	.uleb128 0x2f
	.4byte	.LBB528
	.4byte	.LBE528-.LBB528
	.4byte	0x3c7a
	.uleb128 0x2c
	.4byte	.LASF343
	.byte	0x1
	.2byte	0x9c7
	.4byte	0xfc3
	.4byte	.LLST160
	.uleb128 0x36
	.4byte	.LVL514
	.4byte	0x5e99
	.4byte	0x3c67
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x9c7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5686
	.byte	0
	.uleb128 0x37
	.4byte	.LVL515
	.4byte	0x5ea4
	.uleb128 0x37
	.4byte	.LVL517
	.4byte	0xe7b
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB529
	.4byte	.LBE529-.LBB529
	.byte	0x1
	.2byte	0xa12
	.4byte	0x3c9e
	.uleb128 0x39
	.4byte	.LBB530
	.4byte	.LBE530-.LBB530
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL529
	.4byte	0x5fbf
	.4byte	0x3cb2
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL530
	.4byte	0x5fbf
	.4byte	0x3cc6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 28
	.byte	0
	.uleb128 0x30
	.4byte	.LVL531
	.4byte	0x5f7a
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB532
	.4byte	.LBE532-.LBB532
	.byte	0x1
	.2byte	0xa26
	.4byte	0x3cfb
	.uleb128 0x39
	.4byte	.LBB533
	.4byte	.LBE533-.LBB533
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB534
	.4byte	.LBE534-.LBB534
	.byte	0x1
	.2byte	0xa56
	.4byte	0x3d1f
	.uleb128 0x39
	.4byte	.LBB535
	.4byte	.LBE535-.LBB535
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL508
	.4byte	0x5fd7
	.uleb128 0x36
	.4byte	.LVL512
	.4byte	0x2151
	.4byte	0x3d3f
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x37
	.4byte	.LVL535
	.4byte	0x5fd7
	.uleb128 0x36
	.4byte	.LVL536
	.4byte	0x238c
	.4byte	0x3d5f
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x37
	.4byte	.LVL538
	.4byte	0x5fd7
	.byte	0
	.uleb128 0x18
	.4byte	0x39d8
	.uleb128 0x42
	.4byte	.LASF344
	.byte	0x1
	.2byte	0x8a2
	.4byte	0x847
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4009
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x8a4
	.4byte	0xea2
	.4byte	.LLST161
	.uleb128 0x2c
	.4byte	.LASF313
	.byte	0x1
	.2byte	0x8a5
	.4byte	0x847
	.4byte	.LLST162
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x4019
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5648
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB536
	.4byte	.LBE536-.LBB536
	.byte	0x1
	.2byte	0x8a9
	.4byte	0x3ddb
	.uleb128 0x39
	.4byte	.LBB537
	.4byte	.LBE537-.LBB537
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB538
	.4byte	.LBE538-.LBB538
	.byte	0x1
	.2byte	0x8b2
	.4byte	0x3dff
	.uleb128 0x39
	.4byte	.LBB539
	.4byte	.LBE539-.LBB539
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB540
	.4byte	.LBE540-.LBB540
	.byte	0x1
	.2byte	0x8b4
	.4byte	0x3e27
	.uleb128 0x39
	.4byte	.LBB541
	.4byte	.LBE541-.LBB541
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST163
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB542
	.4byte	.LBE542-.LBB542
	.byte	0x1
	.2byte	0x8bc
	.4byte	0x3e4f
	.uleb128 0x39
	.4byte	.LBB543
	.4byte	.LBE543-.LBB543
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST164
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB544
	.4byte	.LBE544-.LBB544
	.byte	0x1
	.2byte	0x8c3
	.4byte	0x3e77
	.uleb128 0x39
	.4byte	.LBB545
	.4byte	.LBE545-.LBB545
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST165
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB546
	.4byte	.LBE546-.LBB546
	.byte	0x1
	.2byte	0x8c3
	.4byte	0x3e9b
	.uleb128 0x39
	.4byte	.LBB547
	.4byte	.LBE547-.LBB547
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB548
	.4byte	.LBE548-.LBB548
	.byte	0x1
	.2byte	0x8c6
	.4byte	0x3ebf
	.uleb128 0x39
	.4byte	.LBB549
	.4byte	.LBE549-.LBB549
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB550
	.4byte	.LBE550-.LBB550
	.byte	0x1
	.2byte	0x8ba
	.4byte	0x3ee7
	.uleb128 0x39
	.4byte	.LBB551
	.4byte	.LBE551-.LBB551
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST166
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB552
	.4byte	.LBE552-.LBB552
	.byte	0x1
	.2byte	0x8d8
	.4byte	0x3f0b
	.uleb128 0x39
	.4byte	.LBB553
	.4byte	.LBE553-.LBB553
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB554
	.4byte	.LBE554-.LBB554
	.byte	0x1
	.2byte	0x8e6
	.4byte	0x3f2f
	.uleb128 0x39
	.4byte	.LBB555
	.4byte	.LBE555-.LBB555
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB556
	.4byte	.LBE556-.LBB556
	.byte	0x1
	.2byte	0x8ed
	.4byte	0x3f57
	.uleb128 0x39
	.4byte	.LBB557
	.4byte	.LBE557-.LBB557
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST167
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL542
	.4byte	0x5e99
	.4byte	0x3f87
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x8a9
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5648
	.byte	0
	.uleb128 0x37
	.4byte	.LVL543
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL544
	.4byte	0x2151
	.4byte	0x3fa7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x36
	.4byte	.LVL551
	.4byte	0x5fbf
	.4byte	0x3fbb
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 28
	.byte	0
	.uleb128 0x36
	.4byte	.LVL552
	.4byte	0x5fbf
	.4byte	0x3fcf
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL553
	.4byte	0x5f7a
	.4byte	0x3fe3
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL559
	.4byte	0x3b5c
	.uleb128 0x37
	.4byte	.LVL562
	.4byte	0x5f86
	.uleb128 0x30
	.4byte	.LVL565
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x595
	.4byte	0x4019
	.uleb128 0x9
	.4byte	0xec
	.byte	0xe
	.byte	0
	.uleb128 0x18
	.4byte	0x4009
	.uleb128 0x3e
	.4byte	.LASF345
	.byte	0x1
	.2byte	0xb67
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41a8
	.uleb128 0x2b
	.4byte	.LASF346
	.byte	0x1
	.2byte	0xb67
	.4byte	0xfc9
	.4byte	.LLST168
	.uleb128 0x2b
	.4byte	.LASF347
	.byte	0x1
	.2byte	0xb67
	.4byte	0x14e5
	.4byte	.LLST169
	.uleb128 0x2c
	.4byte	.LASF250
	.byte	0x1
	.2byte	0xb69
	.4byte	0x85d
	.4byte	.LLST170
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x41a8
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5722
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB558
	.4byte	.LBE558-.LBB558
	.byte	0x1
	.2byte	0xb73
	.4byte	0x4097
	.uleb128 0x39
	.4byte	.LBB559
	.4byte	.LBE559-.LBB559
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB560
	.4byte	.LBE560-.LBB560
	.byte	0x1
	.2byte	0xb78
	.4byte	0x40bf
	.uleb128 0x39
	.4byte	.LBB561
	.4byte	.LBE561-.LBB561
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST171
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB562
	.4byte	.LBE562-.LBB562
	.byte	0x1
	.2byte	0xb8b
	.4byte	0x40e3
	.uleb128 0x39
	.4byte	.LBB563
	.4byte	.LBE563-.LBB563
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB564
	.4byte	.LBE564-.LBB564
	.byte	0x1
	.2byte	0xb93
	.4byte	0x4107
	.uleb128 0x39
	.4byte	.LBB565
	.4byte	.LBE565-.LBB565
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL567
	.4byte	0x5e99
	.4byte	0x4137
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xb6b
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5722
	.byte	0
	.uleb128 0x37
	.4byte	.LVL568
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL569
	.4byte	0x2151
	.4byte	0x4157
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x36
	.4byte	.LVL570
	.4byte	0x5f15
	.4byte	0x416b
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL573
	.4byte	0x5fbf
	.uleb128 0x36
	.4byte	.LVL576
	.4byte	0x5f7a
	.4byte	0x418b
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xSuspendedTaskList
	.byte	0
	.uleb128 0x37
	.4byte	.LVL580
	.4byte	0x149c
	.uleb128 0x30
	.4byte	.LVL581
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x279b
	.uleb128 0x3e
	.4byte	.LASF348
	.byte	0x1
	.2byte	0xba5
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43ca
	.uleb128 0x2b
	.4byte	.LASF346
	.byte	0x1
	.2byte	0xba5
	.4byte	0xfc3
	.4byte	.LLST172
	.uleb128 0x2b
	.4byte	.LASF133
	.byte	0x1
	.2byte	0xba5
	.4byte	0x14e5
	.4byte	.LLST173
	.uleb128 0x2e
	.4byte	.LASF347
	.byte	0x1
	.2byte	0xba5
	.4byte	0x14e5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2c
	.4byte	.LASF250
	.byte	0x1
	.2byte	0xba7
	.4byte	0x85d
	.4byte	.LLST174
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x43da
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5729
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB566
	.4byte	.LBE566-.LBB566
	.byte	0x1
	.2byte	0xbaf
	.4byte	0x4234
	.uleb128 0x39
	.4byte	.LBB567
	.4byte	.LBE567-.LBB567
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB568
	.4byte	.LBE568-.LBB568
	.byte	0x1
	.2byte	0xbb4
	.4byte	0x4258
	.uleb128 0x39
	.4byte	.LBB569
	.4byte	.LBE569-.LBB569
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB570
	.4byte	.LBE570-.LBB570
	.byte	0x1
	.2byte	0xbbb
	.4byte	0x4280
	.uleb128 0x39
	.4byte	.LBB571
	.4byte	.LBE571-.LBB571
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST175
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB572
	.4byte	.LBE572-.LBB572
	.byte	0x1
	.2byte	0xbc0
	.4byte	0x42a8
	.uleb128 0x39
	.4byte	.LBB573
	.4byte	.LBE573-.LBB573
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST176
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB574
	.4byte	.LBE574-.LBB574
	.byte	0x1
	.2byte	0xbd2
	.4byte	0x42cc
	.uleb128 0x39
	.4byte	.LBB575
	.4byte	.LBE575-.LBB575
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB576
	.4byte	.LBE576-.LBB576
	.byte	0x1
	.2byte	0xbda
	.4byte	0x42f0
	.uleb128 0x39
	.4byte	.LBB577
	.4byte	.LBE577-.LBB577
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL583
	.4byte	0x5e99
	.4byte	0x4320
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xba9
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5729
	.byte	0
	.uleb128 0x37
	.4byte	.LVL584
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL585
	.4byte	0x2151
	.4byte	0x4340
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x36
	.4byte	.LVL586
	.4byte	0x5e99
	.4byte	0x4370
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xbaf
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5729
	.byte	0
	.uleb128 0x37
	.4byte	.LVL587
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL591
	.4byte	0x5f7a
	.4byte	0x438d
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL593
	.4byte	0x5fbf
	.uleb128 0x36
	.4byte	.LVL595
	.4byte	0x5f7a
	.4byte	0x43ad
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xSuspendedTaskList
	.byte	0
	.uleb128 0x37
	.4byte	.LVL599
	.4byte	0x149c
	.uleb128 0x30
	.4byte	.LVL600
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x595
	.4byte	0x43da
	.uleb128 0x9
	.4byte	0xec
	.byte	0x1e
	.byte	0
	.uleb128 0x18
	.4byte	0x43ca
	.uleb128 0x3e
	.4byte	.LASF349
	.byte	0x1
	.2byte	0xbed
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x452c
	.uleb128 0x2b
	.4byte	.LASF346
	.byte	0x1
	.2byte	0xbed
	.4byte	0xfc9
	.4byte	.LLST177
	.uleb128 0x2e
	.4byte	.LASF347
	.byte	0x1
	.2byte	0xbed
	.4byte	0x14e5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF250
	.byte	0x1
	.2byte	0xbef
	.4byte	0x85d
	.4byte	.LLST178
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x453c
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5735
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB578
	.4byte	.LBE578-.LBB578
	.byte	0x1
	.2byte	0xbfe
	.4byte	0x4456
	.uleb128 0x39
	.4byte	.LBB579
	.4byte	.LBE579-.LBB579
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB580
	.4byte	.LBE580-.LBB580
	.byte	0x1
	.2byte	0xc03
	.4byte	0x447e
	.uleb128 0x39
	.4byte	.LBB581
	.4byte	.LBE581-.LBB581
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST179
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB582
	.4byte	.LBE582-.LBB582
	.byte	0x1
	.2byte	0xc13
	.4byte	0x44a2
	.uleb128 0x39
	.4byte	.LBB583
	.4byte	.LBE583-.LBB583
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL602
	.4byte	0x2151
	.4byte	0x44b9
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x36
	.4byte	.LVL603
	.4byte	0x5e99
	.4byte	0x44e9
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xbf2
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5735
	.byte	0
	.uleb128 0x37
	.4byte	.LVL604
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL605
	.4byte	0x5f7a
	.4byte	0x4506
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL608
	.4byte	0x5fbf
	.uleb128 0x37
	.4byte	.LVL611
	.4byte	0x149c
	.uleb128 0x30
	.4byte	.LVL612
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x595
	.4byte	0x453c
	.uleb128 0x9
	.4byte	0xec
	.byte	0x1f
	.byte	0
	.uleb128 0x18
	.4byte	0x452c
	.uleb128 0x42
	.4byte	.LASF350
	.byte	0x1
	.2byte	0xc1b
	.4byte	0x847
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x476a
	.uleb128 0x2b
	.4byte	.LASF346
	.byte	0x1
	.2byte	0xc1b
	.4byte	0x4775
	.4byte	.LLST180
	.uleb128 0x2c
	.4byte	.LASF351
	.byte	0x1
	.2byte	0xc1d
	.4byte	0xea2
	.4byte	.LLST181
	.uleb128 0x2c
	.4byte	.LASF240
	.byte	0x1
	.2byte	0xc1e
	.4byte	0x847
	.4byte	.LLST182
	.uleb128 0x2c
	.4byte	.LASF352
	.byte	0x1
	.2byte	0xc1f
	.4byte	0x847
	.4byte	.LLST183
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.2byte	0xc20
	.4byte	0x852
	.4byte	.LLST184
	.uleb128 0x2c
	.4byte	.LASF353
	.byte	0x1
	.2byte	0xc20
	.4byte	0x852
	.4byte	.LLST185
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x477a
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5744
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB584
	.4byte	.LBE584-.LBB584
	.byte	0x1
	.2byte	0xc3c
	.4byte	0x45f0
	.uleb128 0x39
	.4byte	.LBB585
	.4byte	.LBE585-.LBB585
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST186
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB586
	.4byte	.LBE586-.LBB586
	.byte	0x1
	.2byte	0xc55
	.4byte	0x4618
	.uleb128 0x39
	.4byte	.LBB587
	.4byte	.LBE587-.LBB587
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST187
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB588
	.4byte	.LBE588-.LBB588
	.byte	0x1
	.2byte	0xc55
	.4byte	0x463c
	.uleb128 0x39
	.4byte	.LBB589
	.4byte	.LBE589-.LBB589
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB590
	.4byte	.LBE590-.LBB590
	.byte	0x1
	.2byte	0xc5e
	.4byte	0x4660
	.uleb128 0x39
	.4byte	.LBB591
	.4byte	.LBE591-.LBB591
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB592
	.4byte	.LBE592-.LBB592
	.byte	0x1
	.2byte	0xc60
	.4byte	0x4688
	.uleb128 0x39
	.4byte	.LBB593
	.4byte	.LBE593-.LBB593
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST188
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL614
	.4byte	0x2151
	.4byte	0x469f
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x36
	.4byte	.LVL617
	.4byte	0x5e99
	.4byte	0x46cf
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc31
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5744
	.byte	0
	.uleb128 0x37
	.4byte	.LVL618
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL619
	.4byte	0x5fbf
	.4byte	0x46ec
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL621
	.4byte	0x238c
	.4byte	0x4703
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x36
	.4byte	.LVL634
	.4byte	0x5fbf
	.4byte	0x4717
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL635
	.4byte	0x5f7a
	.4byte	0x4739
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xa
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	pxReadyTasksLists
	.byte	0x22
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL639
	.4byte	0x5f7a
	.4byte	0x474d
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL646
	.4byte	0x14ea
	.uleb128 0x30
	.4byte	.LVL650
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x4770
	.uleb128 0x18
	.4byte	0x9af
	.uleb128 0x18
	.4byte	0x476a
	.uleb128 0x18
	.4byte	0x267a
	.uleb128 0x42
	.4byte	.LASF354
	.byte	0x1
	.2byte	0xc7d
	.4byte	0x847
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4992
	.uleb128 0x2b
	.4byte	.LASF355
	.byte	0x1
	.2byte	0xc7d
	.4byte	0x9a9
	.4byte	.LLST189
	.uleb128 0x2b
	.4byte	.LASF133
	.byte	0x1
	.2byte	0xc7d
	.4byte	0x14e5
	.4byte	.LLST190
	.uleb128 0x2c
	.4byte	.LASF351
	.byte	0x1
	.2byte	0xc7f
	.4byte	0xea2
	.4byte	.LLST191
	.uleb128 0x2c
	.4byte	.LASF240
	.byte	0x1
	.2byte	0xc80
	.4byte	0x847
	.4byte	.LLST192
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x49a2
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5754
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB594
	.4byte	.LBE594-.LBB594
	.byte	0x1
	.2byte	0xc85
	.4byte	0x480c
	.uleb128 0x39
	.4byte	.LBB595
	.4byte	.LBE595-.LBB595
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB596
	.4byte	.LBE596-.LBB596
	.byte	0x1
	.2byte	0xc96
	.4byte	0x4834
	.uleb128 0x39
	.4byte	.LBB597
	.4byte	.LBE597-.LBB597
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST193
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB598
	.4byte	.LBE598-.LBB598
	.byte	0x1
	.2byte	0xc96
	.4byte	0x4858
	.uleb128 0x39
	.4byte	.LBB599
	.4byte	.LBE599-.LBB599
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB600
	.4byte	.LBE600-.LBB600
	.byte	0x1
	.2byte	0xca0
	.4byte	0x487c
	.uleb128 0x39
	.4byte	.LBB601
	.4byte	.LBE601-.LBB601
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB602
	.4byte	.LBE602-.LBB602
	.byte	0x1
	.2byte	0xca2
	.4byte	0x48a4
	.uleb128 0x39
	.4byte	.LBB603
	.4byte	.LBE603-.LBB603
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST194
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL652
	.4byte	0x2151
	.4byte	0x48bb
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x36
	.4byte	.LVL653
	.4byte	0x5e99
	.4byte	0x48eb
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc85
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5754
	.byte	0
	.uleb128 0x37
	.4byte	.LVL654
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL657
	.4byte	0x5e99
	.4byte	0x4924
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc8d
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5754
	.byte	0
	.uleb128 0x37
	.4byte	.LVL658
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL659
	.4byte	0x5fbf
	.4byte	0x4941
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL660
	.4byte	0x5fbf
	.4byte	0x4955
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL662
	.4byte	0x5f7a
	.4byte	0x4975
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	pxReadyTasksLists
	.byte	0x22
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL669
	.4byte	0x14ea
	.uleb128 0x30
	.4byte	.LVL673
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x595
	.4byte	0x49a2
	.uleb128 0x9
	.4byte	0xec
	.byte	0x21
	.byte	0
	.uleb128 0x18
	.4byte	0x4992
	.uleb128 0x42
	.4byte	.LASF356
	.byte	0x1
	.2byte	0xcb9
	.4byte	0x847
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ac9
	.uleb128 0x2b
	.4byte	.LASF272
	.byte	0x1
	.2byte	0xcb9
	.4byte	0x1ca3
	.4byte	.LLST195
	.uleb128 0x2e
	.4byte	.LASF357
	.byte	0x1
	.2byte	0xcb9
	.4byte	0x2e45
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF240
	.byte	0x1
	.2byte	0xcbb
	.4byte	0x847
	.4byte	.LLST196
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x4ac9
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5764
	.uleb128 0x2f
	.4byte	.LBB604
	.4byte	.LBE604-.LBB604
	.4byte	0x4a2c
	.uleb128 0x2c
	.4byte	.LASF315
	.byte	0x1
	.2byte	0xcc3
	.4byte	0x14e5
	.4byte	.LLST197
	.uleb128 0x30
	.4byte	.LVL682
	.4byte	0x1c30
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL675
	.4byte	0x5e99
	.4byte	0x4a5c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xcbd
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5764
	.byte	0
	.uleb128 0x37
	.4byte	.LVL676
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL677
	.4byte	0x5e99
	.4byte	0x4a95
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xcbe
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5764
	.byte	0
	.uleb128 0x37
	.4byte	.LVL678
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL679
	.4byte	0x2151
	.4byte	0x4ab5
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x30
	.4byte	.LVL690
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x12f3
	.uleb128 0x3e
	.4byte	.LASF358
	.byte	0x1
	.2byte	0xdc1
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b64
	.uleb128 0x2b
	.4byte	.LASF359
	.byte	0x1
	.2byte	0xdc1
	.4byte	0x9ba
	.4byte	.LLST198
	.uleb128 0x2b
	.4byte	.LASF282
	.byte	0x1
	.2byte	0xdc1
	.4byte	0x847
	.4byte	.LLST199
	.uleb128 0x2e
	.4byte	.LASF360
	.byte	0x1
	.2byte	0xdc1
	.4byte	0x12a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2e
	.4byte	.LASF361
	.byte	0x1
	.2byte	0xdc1
	.4byte	0xb60
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0xdc3
	.4byte	0xea2
	.4byte	.LLST200
	.uleb128 0x36
	.4byte	.LVL692
	.4byte	0x2151
	.4byte	0x4b47
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x37
	.4byte	.LVL693
	.4byte	0x1d9c
	.uleb128 0x30
	.4byte	.LVL697
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF362
	.byte	0x1
	.2byte	0xdcf
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4bc6
	.uleb128 0x2e
	.4byte	.LASF359
	.byte	0x1
	.2byte	0xdcf
	.4byte	0x9ba
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2e
	.4byte	.LASF282
	.byte	0x1
	.2byte	0xdcf
	.4byte	0x847
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.4byte	.LASF360
	.byte	0x1
	.2byte	0xdcf
	.4byte	0x12a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x30
	.4byte	.LVL699
	.4byte	0x4ace
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF363
	.byte	0x1
	.2byte	0xfd5
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d19
	.uleb128 0x2b
	.4byte	.LASF364
	.byte	0x1
	.2byte	0xfd5
	.4byte	0x112f
	.4byte	.LLST201
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0xfd7
	.4byte	0x37f8
	.4byte	.LLST202
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB605
	.4byte	.LBE605-.LBB605
	.byte	0x1
	.2byte	0xfde
	.4byte	0x4c20
	.uleb128 0x39
	.4byte	.LBB606
	.4byte	.LBE606-.LBB606
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB607
	.4byte	.LBE607-.LBB607
	.byte	0x1
	.2byte	0xfe6
	.4byte	0x4c44
	.uleb128 0x39
	.4byte	.LBB608
	.4byte	.LBE608-.LBB608
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB609
	.4byte	.LBE609-.LBB609
	.byte	0x1
	.2byte	0xffb
	.4byte	0x4c68
	.uleb128 0x39
	.4byte	.LBB610
	.4byte	.LBE610-.LBB610
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB611
	.4byte	.LBE611-.LBB611
	.byte	0x1
	.2byte	0x1001
	.4byte	0x4c8c
	.uleb128 0x39
	.4byte	.LBB612
	.4byte	.LBE612-.LBB612
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL702
	.4byte	0x2151
	.4byte	0x4ca3
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x36
	.4byte	.LVL703
	.4byte	0x2151
	.4byte	0x4cba
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x36
	.4byte	.LVL704
	.4byte	0x5fbf
	.4byte	0x4cce
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL706
	.4byte	0x5f7a
	.4byte	0x4cee
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	pxReadyTasksLists
	.byte	0x22
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL709
	.4byte	0x238c
	.4byte	0x4d05
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x30
	.4byte	.LVL710
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LASF365
	.byte	0x1
	.2byte	0x101b
	.4byte	0x847
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e38
	.uleb128 0x2b
	.4byte	.LASF364
	.byte	0x1
	.2byte	0x101b
	.4byte	0x112f
	.4byte	.LLST203
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x101d
	.4byte	0x37f8
	.4byte	.LLST204
	.uleb128 0x2c
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x101e
	.4byte	0x847
	.4byte	.LLST205
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x4e38
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5889
	.uleb128 0x36
	.4byte	.LVL713
	.4byte	0x2151
	.4byte	0x4d89
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x36
	.4byte	.LVL714
	.4byte	0x5e99
	.4byte	0x4db9
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1023
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5889
	.byte	0
	.uleb128 0x37
	.4byte	.LVL715
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL716
	.4byte	0x2151
	.4byte	0x4dd9
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x36
	.4byte	.LVL717
	.4byte	0x5fbf
	.4byte	0x4ded
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL719
	.4byte	0x5f7a
	.4byte	0x4e0d
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	pxReadyTasksLists
	.byte	0x22
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL720
	.4byte	0x238c
	.4byte	0x4e24
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x30
	.4byte	.LVL727
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x1d87
	.uleb128 0x42
	.4byte	.LASF366
	.byte	0x1
	.2byte	0x11e2
	.4byte	0x85d
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4efe
	.uleb128 0x3b
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x11e4
	.4byte	0x85d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB613
	.4byte	.LBE613-.LBB613
	.byte	0x1
	.2byte	0x11e6
	.4byte	0x4e89
	.uleb128 0x39
	.4byte	.LBB614
	.4byte	.LBE614-.LBB614
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB615
	.4byte	.LBE615-.LBB615
	.byte	0x1
	.2byte	0x11ea
	.4byte	0x4eb1
	.uleb128 0x39
	.4byte	.LBB616
	.4byte	.LBE616-.LBB616
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST206
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB617
	.4byte	.LBE617-.LBB617
	.byte	0x1
	.2byte	0x11ea
	.4byte	0x4ed9
	.uleb128 0x39
	.4byte	.LBB618
	.4byte	.LBE618-.LBB618
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST207
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL728
	.4byte	0x2151
	.4byte	0x4eed
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL734
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LASF367
	.byte	0x1
	.2byte	0x11f3
	.4byte	0x12a
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4fbd
	.uleb128 0x3b
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x11f5
	.4byte	0xea2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB619
	.4byte	.LBE619-.LBB619
	.byte	0x1
	.2byte	0x11fa
	.4byte	0x4f4a
	.uleb128 0x39
	.4byte	.LBB620
	.4byte	.LBE620-.LBB620
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB621
	.4byte	.LBE621-.LBB621
	.byte	0x1
	.2byte	0x11fc
	.4byte	0x4f6e
	.uleb128 0x39
	.4byte	.LBB622
	.4byte	.LBE622-.LBB622
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB623
	.4byte	.LBE623-.LBB623
	.byte	0x1
	.2byte	0x11fe
	.4byte	0x4f92
	.uleb128 0x39
	.4byte	.LBB624
	.4byte	.LBE624-.LBB624
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL735
	.4byte	0x2151
	.4byte	0x4fa9
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x30
	.4byte	.LVL737
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LASF368
	.byte	0x1
	.2byte	0x1209
	.4byte	0x80e
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5206
	.uleb128 0x2b
	.4byte	.LASF369
	.byte	0x1
	.2byte	0x1209
	.4byte	0x847
	.4byte	.LLST208
	.uleb128 0x2b
	.4byte	.LASF347
	.byte	0x1
	.2byte	0x1209
	.4byte	0x85d
	.4byte	.LLST209
	.uleb128 0x2c
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x120b
	.4byte	0x85d
	.4byte	.LLST210
	.uleb128 0x3b
	.4byte	.LASF370
	.byte	0x1
	.2byte	0x120c
	.4byte	0x80e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB625
	.4byte	.LBE625-.LBB625
	.byte	0x1
	.2byte	0x1211
	.4byte	0x5039
	.uleb128 0x39
	.4byte	.LBB626
	.4byte	.LBE626-.LBB626
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB627
	.4byte	.LBE627-.LBB627
	.byte	0x1
	.2byte	0x1214
	.4byte	0x505d
	.uleb128 0x39
	.4byte	.LBB628
	.4byte	.LBE628-.LBB628
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB629
	.4byte	.LBE629-.LBB629
	.byte	0x1
	.2byte	0x121a
	.4byte	0x5081
	.uleb128 0x39
	.4byte	.LBB630
	.4byte	.LBE630-.LBB630
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB631
	.4byte	.LBE631-.LBB631
	.byte	0x1
	.2byte	0x122f
	.4byte	0x50a5
	.uleb128 0x39
	.4byte	.LBB632
	.4byte	.LBE632-.LBB632
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB633
	.4byte	.LBE633-.LBB633
	.byte	0x1
	.2byte	0x1238
	.4byte	0x50c9
	.uleb128 0x39
	.4byte	.LBB634
	.4byte	.LBE634-.LBB634
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB635
	.4byte	.LBE635-.LBB635
	.byte	0x1
	.2byte	0x124a
	.4byte	0x50f1
	.uleb128 0x39
	.4byte	.LBB636
	.4byte	.LBE636-.LBB636
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST211
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB637
	.4byte	.LBE637-.LBB637
	.byte	0x1
	.2byte	0x125a
	.4byte	0x5115
	.uleb128 0x39
	.4byte	.LBB638
	.4byte	.LBE638-.LBB638
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB639
	.4byte	.LBE639-.LBB639
	.byte	0x1
	.2byte	0x1260
	.4byte	0x5139
	.uleb128 0x39
	.4byte	.LBB640
	.4byte	.LBE640-.LBB640
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB641
	.4byte	.LBE641-.LBB641
	.byte	0x1
	.2byte	0x1264
	.4byte	0x515d
	.uleb128 0x39
	.4byte	.LBB642
	.4byte	.LBE642-.LBB642
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB643
	.4byte	.LBE643-.LBB643
	.byte	0x1
	.2byte	0x126c
	.4byte	0x5181
	.uleb128 0x39
	.4byte	.LBB644
	.4byte	.LBE644-.LBB644
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL739
	.4byte	0x2151
	.4byte	0x5198
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x37
	.4byte	.LVL740
	.4byte	0x5fbf
	.uleb128 0x36
	.4byte	.LVL742
	.4byte	0x5f7a
	.4byte	0x51b8
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xSuspendedTaskList
	.byte	0
	.uleb128 0x37
	.4byte	.LVL745
	.4byte	0x149c
	.uleb128 0x37
	.4byte	.LVL747
	.4byte	0x5f86
	.uleb128 0x36
	.4byte	.LVL748
	.4byte	0x238c
	.4byte	0x51de
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL749
	.4byte	0x2151
	.4byte	0x51f2
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL754
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LASF371
	.byte	0x1
	.2byte	0x1278
	.4byte	0x847
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5499
	.uleb128 0x2b
	.4byte	.LASF372
	.byte	0x1
	.2byte	0x1278
	.4byte	0x80e
	.4byte	.LLST212
	.uleb128 0x2b
	.4byte	.LASF373
	.byte	0x1
	.2byte	0x1278
	.4byte	0x80e
	.4byte	.LLST213
	.uleb128 0x2b
	.4byte	.LASF374
	.byte	0x1
	.2byte	0x1278
	.4byte	0xe17
	.4byte	.LLST214
	.uleb128 0x2b
	.4byte	.LASF347
	.byte	0x1
	.2byte	0x1278
	.4byte	0x85d
	.4byte	.LLST215
	.uleb128 0x2c
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x127a
	.4byte	0x85d
	.4byte	.LLST216
	.uleb128 0x2c
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x127b
	.4byte	0x847
	.4byte	.LLST217
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB645
	.4byte	.LBE645-.LBB645
	.byte	0x1
	.2byte	0x1280
	.4byte	0x52a4
	.uleb128 0x39
	.4byte	.LBB646
	.4byte	.LBE646-.LBB646
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB647
	.4byte	.LBE647-.LBB647
	.byte	0x1
	.2byte	0x1285
	.4byte	0x52c8
	.uleb128 0x39
	.4byte	.LBB648
	.4byte	.LBE648-.LBB648
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB649
	.4byte	.LBE649-.LBB649
	.byte	0x1
	.2byte	0x1288
	.4byte	0x52f0
	.uleb128 0x39
	.4byte	.LBB650
	.4byte	.LBE650-.LBB650
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST218
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB651
	.4byte	.LBE651-.LBB651
	.byte	0x1
	.2byte	0x128e
	.4byte	0x5314
	.uleb128 0x39
	.4byte	.LBB652
	.4byte	.LBE652-.LBB652
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB653
	.4byte	.LBE653-.LBB653
	.byte	0x1
	.2byte	0x12a3
	.4byte	0x5338
	.uleb128 0x39
	.4byte	.LBB654
	.4byte	.LBE654-.LBB654
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB655
	.4byte	.LBE655-.LBB655
	.byte	0x1
	.2byte	0x12ac
	.4byte	0x535c
	.uleb128 0x39
	.4byte	.LBB656
	.4byte	.LBE656-.LBB656
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB657
	.4byte	.LBE657-.LBB657
	.byte	0x1
	.2byte	0x12be
	.4byte	0x5384
	.uleb128 0x39
	.4byte	.LBB658
	.4byte	.LBE658-.LBB658
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST219
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB659
	.4byte	.LBE659-.LBB659
	.byte	0x1
	.2byte	0x12d2
	.4byte	0x53a8
	.uleb128 0x39
	.4byte	.LBB660
	.4byte	.LBE660-.LBB660
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB661
	.4byte	.LBE661-.LBB661
	.byte	0x1
	.2byte	0x12d9
	.4byte	0x53cc
	.uleb128 0x39
	.4byte	.LBB662
	.4byte	.LBE662-.LBB662
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB663
	.4byte	.LBE663-.LBB663
	.byte	0x1
	.2byte	0x12e2
	.4byte	0x53f0
	.uleb128 0x39
	.4byte	.LBB664
	.4byte	.LBE664-.LBB664
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB665
	.4byte	.LBE665-.LBB665
	.byte	0x1
	.2byte	0x12e6
	.4byte	0x5414
	.uleb128 0x39
	.4byte	.LBB666
	.4byte	.LBE666-.LBB666
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL756
	.4byte	0x2151
	.4byte	0x542b
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x37
	.4byte	.LVL760
	.4byte	0x5fbf
	.uleb128 0x36
	.4byte	.LVL762
	.4byte	0x5f7a
	.4byte	0x544b
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xSuspendedTaskList
	.byte	0
	.uleb128 0x37
	.4byte	.LVL765
	.4byte	0x149c
	.uleb128 0x37
	.4byte	.LVL767
	.4byte	0x5f86
	.uleb128 0x36
	.4byte	.LVL768
	.4byte	0x238c
	.4byte	0x5471
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL769
	.4byte	0x2151
	.4byte	0x5485
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL775
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LASF375
	.byte	0x1
	.2byte	0x12f2
	.4byte	0x847
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x56a3
	.uleb128 0x2b
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x12f2
	.4byte	0x9ba
	.4byte	.LLST220
	.uleb128 0x2b
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x12f2
	.4byte	0x80e
	.4byte	.LLST221
	.uleb128 0x2b
	.4byte	.LASF378
	.byte	0x1
	.2byte	0x12f2
	.4byte	0xa26
	.4byte	.LLST222
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x12f4
	.4byte	0xea2
	.4byte	.LLST223
	.uleb128 0x2c
	.4byte	.LASF379
	.byte	0x1
	.2byte	0x12f5
	.4byte	0xba1
	.4byte	.LLST224
	.uleb128 0x2c
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x12f6
	.4byte	0x847
	.4byte	.LLST225
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x56a3
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5985
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB667
	.4byte	.LBE667-.LBB667
	.byte	0x1
	.2byte	0x132c
	.4byte	0x554a
	.uleb128 0x39
	.4byte	.LBB668
	.4byte	.LBE668-.LBB668
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST226
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB669
	.4byte	.LBE669-.LBB669
	.byte	0x1
	.2byte	0x132c
	.4byte	0x556e
	.uleb128 0x39
	.4byte	.LBB670
	.4byte	.LBE670-.LBB670
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB671
	.4byte	.LBE671-.LBB671
	.byte	0x1
	.2byte	0x1330
	.4byte	0x5596
	.uleb128 0x39
	.4byte	.LBB672
	.4byte	.LBE672-.LBB672
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST227
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB673
	.4byte	.LBE673-.LBB673
	.byte	0x1
	.2byte	0x1332
	.4byte	0x55be
	.uleb128 0x39
	.4byte	.LBB674
	.4byte	.LBE674-.LBB674
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST228
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL778
	.4byte	0x5e99
	.4byte	0x55ee
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x12f8
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5985
	.byte	0
	.uleb128 0x37
	.4byte	.LVL779
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL780
	.4byte	0x2151
	.4byte	0x560e
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x36
	.4byte	.LVL794
	.4byte	0x5fbf
	.4byte	0x5622
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL795
	.4byte	0x5f7a
	.4byte	0x5644
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xa
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	pxReadyTasksLists
	.byte	0x22
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL796
	.4byte	0x5e99
	.4byte	0x5674
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x132a
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$5985
	.byte	0
	.uleb128 0x37
	.4byte	.LVL797
	.4byte	0x5ea4
	.uleb128 0x37
	.4byte	.LVL801
	.4byte	0x5f86
	.uleb128 0x37
	.4byte	.LVL803
	.4byte	0x14ea
	.uleb128 0x30
	.4byte	.LVL804
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x2c10
	.uleb128 0x42
	.4byte	.LASF380
	.byte	0x1
	.2byte	0x134a
	.4byte	0x847
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58fd
	.uleb128 0x2b
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x134a
	.4byte	0x9ba
	.4byte	.LLST229
	.uleb128 0x2b
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x134a
	.4byte	0x80e
	.4byte	.LLST230
	.uleb128 0x2b
	.4byte	.LASF378
	.byte	0x1
	.2byte	0x134a
	.4byte	0xa26
	.4byte	.LLST231
	.uleb128 0x2e
	.4byte	.LASF381
	.byte	0x1
	.2byte	0x134a
	.4byte	0x58fd
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x134c
	.4byte	0xea2
	.4byte	.LLST232
	.uleb128 0x2c
	.4byte	.LASF379
	.byte	0x1
	.2byte	0x134d
	.4byte	0xba1
	.4byte	.LLST233
	.uleb128 0x2c
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x134e
	.4byte	0x847
	.4byte	.LLST234
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x5903
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6001
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB675
	.4byte	.LBE675-.LBB675
	.byte	0x1
	.2byte	0x1383
	.4byte	0x5763
	.uleb128 0x39
	.4byte	.LBB676
	.4byte	.LBE676-.LBB676
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB677
	.4byte	.LBE677-.LBB677
	.byte	0x1
	.2byte	0x138c
	.4byte	0x578b
	.uleb128 0x39
	.4byte	.LBB678
	.4byte	.LBE678-.LBB678
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST235
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB679
	.4byte	.LBE679-.LBB679
	.byte	0x1
	.2byte	0x138f
	.4byte	0x57b3
	.uleb128 0x39
	.4byte	.LBB680
	.4byte	.LBE680-.LBB680
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST236
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB681
	.4byte	.LBE681-.LBB681
	.byte	0x1
	.2byte	0x138f
	.4byte	0x57d7
	.uleb128 0x39
	.4byte	.LBB682
	.4byte	.LBE682-.LBB682
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB683
	.4byte	.LBE683-.LBB683
	.byte	0x1
	.2byte	0x1398
	.4byte	0x57ff
	.uleb128 0x39
	.4byte	.LBB684
	.4byte	.LBE684-.LBB684
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST237
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL808
	.4byte	0x5e99
	.4byte	0x582f
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1350
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6001
	.byte	0
	.uleb128 0x37
	.4byte	.LVL809
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL810
	.4byte	0x2151
	.4byte	0x584f
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x36
	.4byte	.LVL824
	.4byte	0x5e99
	.4byte	0x587f
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1381
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6001
	.byte	0
	.uleb128 0x37
	.4byte	.LVL825
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL827
	.4byte	0x5fbf
	.4byte	0x589c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL828
	.4byte	0x5f7a
	.4byte	0x58be
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xa
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	pxReadyTasksLists
	.byte	0x22
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL831
	.4byte	0x5f7a
	.4byte	0x58e0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xa
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	xPendingReadyList
	.byte	0x22
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 28
	.byte	0
	.uleb128 0x37
	.4byte	.LVL837
	.4byte	0x14ea
	.uleb128 0x30
	.4byte	.LVL838
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x847
	.uleb128 0x18
	.4byte	0x39d8
	.uleb128 0x3e
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x13ac
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b0f
	.uleb128 0x2b
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x13ac
	.4byte	0x9ba
	.4byte	.LLST238
	.uleb128 0x2b
	.4byte	.LASF381
	.byte	0x1
	.2byte	0x13ac
	.4byte	0x58fd
	.4byte	.LLST239
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x13ae
	.4byte	0xea2
	.4byte	.LLST240
	.uleb128 0x2c
	.4byte	.LASF379
	.byte	0x1
	.2byte	0x13af
	.4byte	0xba1
	.4byte	.LLST241
	.uleb128 0x32
	.4byte	.LASF236
	.4byte	0x5b0f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6014
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB685
	.4byte	.LBE685-.LBB685
	.byte	0x1
	.2byte	0x13c6
	.4byte	0x5991
	.uleb128 0x39
	.4byte	.LBB686
	.4byte	.LBE686-.LBB686
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB687
	.4byte	.LBE687-.LBB687
	.byte	0x1
	.2byte	0x13cf
	.4byte	0x59b9
	.uleb128 0x39
	.4byte	.LBB688
	.4byte	.LBE688-.LBB688
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST242
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB689
	.4byte	.LBE689-.LBB689
	.byte	0x1
	.2byte	0x13d2
	.4byte	0x59e1
	.uleb128 0x39
	.4byte	.LBB690
	.4byte	.LBE690-.LBB690
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST243
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB691
	.4byte	.LBE691-.LBB691
	.byte	0x1
	.2byte	0x13d2
	.4byte	0x5a05
	.uleb128 0x39
	.4byte	.LBB692
	.4byte	.LBE692-.LBB692
	.uleb128 0x40
	.4byte	0xd84
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0xd74
	.4byte	.LBB693
	.4byte	.LBE693-.LBB693
	.byte	0x1
	.2byte	0x13db
	.4byte	0x5a2d
	.uleb128 0x39
	.4byte	.LBB694
	.4byte	.LBE694-.LBB694
	.uleb128 0x3a
	.4byte	0xd84
	.4byte	.LLST244
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL840
	.4byte	0x5e99
	.4byte	0x5a5d
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x13b1
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6014
	.byte	0
	.uleb128 0x37
	.4byte	.LVL841
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL842
	.4byte	0x2151
	.4byte	0x5a7d
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.uleb128 0x36
	.4byte	.LVL844
	.4byte	0x5e99
	.4byte	0x5aad
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x13c4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$6014
	.byte	0
	.uleb128 0x37
	.4byte	.LVL845
	.4byte	0x5ea4
	.uleb128 0x36
	.4byte	.LVL847
	.4byte	0x5fbf
	.4byte	0x5aca
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL848
	.4byte	0x5f7a
	.4byte	0x5ade
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL851
	.4byte	0x5f7a
	.4byte	0x5af2
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 28
	.byte	0
	.uleb128 0x37
	.4byte	.LVL857
	.4byte	0x14ea
	.uleb128 0x30
	.4byte	.LVL858
	.4byte	0x238c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x1144
	.uleb128 0x42
	.4byte	.LASF383
	.byte	0x1
	.2byte	0x1414
	.4byte	0x852
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c6e
	.uleb128 0x2b
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x1414
	.4byte	0x5c6e
	.4byte	.LLST245
	.uleb128 0x2e
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x1414
	.4byte	0xfbe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.4byte	.LASF384
	.byte	0x1
	.2byte	0x1414
	.4byte	0x5c73
	.4byte	.LLST246
	.uleb128 0x3b
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x1416
	.4byte	0x852
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.2byte	0x1416
	.4byte	0x852
	.4byte	.LLST247
	.uleb128 0x36
	.4byte	.LVL864
	.4byte	0xef7
	.4byte	0x5bac
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0xf
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	pxReadyTasksLists
	.byte	0x22
	.byte	0
	.uleb128 0x36
	.4byte	.LVL865
	.4byte	0xef7
	.4byte	0x5bcc
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL866
	.4byte	0xef7
	.4byte	0x5bec
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL868
	.4byte	0xef7
	.4byte	0x5c1f
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0xf
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	xPendingReadyList
	.byte	0x22
	.byte	0
	.uleb128 0x36
	.4byte	.LVL870
	.4byte	0xef7
	.4byte	0x5c48
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	xTasksWaitingTermination
	.byte	0
	.uleb128 0x30
	.4byte	.LVL871
	.4byte	0xef7
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	xSuspendedTaskList
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0xeeb
	.uleb128 0x18
	.4byte	0xef1
	.uleb128 0x8
	.4byte	0x9af
	.4byte	0x5c88
	.uleb128 0x9
	.4byte	0xec
	.byte	0x18
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF385
	.byte	0x1
	.2byte	0x102
	.4byte	0x5c78
	.uleb128 0x5
	.byte	0x3
	.4byte	pxReadyTasksLists
	.uleb128 0x3b
	.4byte	.LASF386
	.byte	0x1
	.2byte	0x103
	.4byte	0x9af
	.uleb128 0x5
	.byte	0x3
	.4byte	xDelayedTaskList1
	.uleb128 0x3b
	.4byte	.LASF387
	.byte	0x1
	.2byte	0x104
	.4byte	0x9af
	.uleb128 0x5
	.byte	0x3
	.4byte	xDelayedTaskList2
	.uleb128 0x3b
	.4byte	.LASF388
	.byte	0x1
	.2byte	0x105
	.4byte	0x5cd0
	.uleb128 0x5
	.byte	0x3
	.4byte	pxDelayedTaskList
	.uleb128 0x1b
	.4byte	0xfc3
	.uleb128 0x3b
	.4byte	.LASF389
	.byte	0x1
	.2byte	0x106
	.4byte	0x5cd0
	.uleb128 0x5
	.byte	0x3
	.4byte	pxOverflowDelayedTaskList
	.uleb128 0x8
	.4byte	0x9af
	.4byte	0x5cf7
	.uleb128 0x9
	.4byte	0xec
	.byte	0x1
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF390
	.byte	0x1
	.2byte	0x107
	.4byte	0x5ce7
	.uleb128 0x5
	.byte	0x3
	.4byte	xPendingReadyList
	.uleb128 0x3b
	.4byte	.LASF391
	.byte	0x1
	.2byte	0x10b
	.4byte	0x9af
	.uleb128 0x5
	.byte	0x3
	.4byte	xTasksWaitingTermination
	.uleb128 0x3b
	.4byte	.LASF392
	.byte	0x1
	.2byte	0x10c
	.4byte	0x5d2d
	.uleb128 0x5
	.byte	0x3
	.4byte	uxTasksDeleted
	.uleb128 0x1b
	.4byte	0x852
	.uleb128 0x3b
	.4byte	.LASF393
	.byte	0x1
	.2byte	0x112
	.4byte	0x9af
	.uleb128 0x5
	.byte	0x3
	.4byte	xSuspendedTaskList
	.uleb128 0x8
	.4byte	0x9ba
	.4byte	0x5d54
	.uleb128 0x9
	.4byte	0xec
	.byte	0x1
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF394
	.byte	0x1
	.2byte	0x118
	.4byte	0x5d44
	.uleb128 0x5
	.byte	0x3
	.4byte	xIdleTaskHandle
	.uleb128 0x3b
	.4byte	.LASF395
	.byte	0x1
	.2byte	0x11d
	.4byte	0x5d2d
	.uleb128 0x5
	.byte	0x3
	.4byte	uxCurrentNumberOfTasks
	.uleb128 0x3b
	.4byte	.LASF396
	.byte	0x1
	.2byte	0x11e
	.4byte	0x5d8a
	.uleb128 0x5
	.byte	0x3
	.4byte	xTickCount
	.uleb128 0x1b
	.4byte	0x85d
	.uleb128 0x3b
	.4byte	.LASF397
	.byte	0x1
	.2byte	0x11f
	.4byte	0x5d2d
	.uleb128 0x5
	.byte	0x3
	.4byte	uxTopReadyPriority
	.uleb128 0x3b
	.4byte	.LASF398
	.byte	0x1
	.2byte	0x120
	.4byte	0x5db3
	.uleb128 0x5
	.byte	0x3
	.4byte	xSchedulerRunning
	.uleb128 0x1b
	.4byte	0x847
	.uleb128 0x3b
	.4byte	.LASF399
	.byte	0x1
	.2byte	0x121
	.4byte	0x5d2d
	.uleb128 0x5
	.byte	0x3
	.4byte	uxPendedTicks
	.uleb128 0x8
	.4byte	0x847
	.4byte	0x5dda
	.uleb128 0x9
	.4byte	0xec
	.byte	0x1
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF400
	.byte	0x1
	.2byte	0x122
	.4byte	0x5dec
	.uleb128 0x5
	.byte	0x3
	.4byte	xYieldPending
	.uleb128 0x1b
	.4byte	0x5dca
	.uleb128 0x3b
	.4byte	.LASF401
	.byte	0x1
	.2byte	0x123
	.4byte	0x5db3
	.uleb128 0x5
	.byte	0x3
	.4byte	xNumOfOverflows
	.uleb128 0x3b
	.4byte	.LASF402
	.byte	0x1
	.2byte	0x124
	.4byte	0x852
	.uleb128 0x5
	.byte	0x3
	.4byte	uxTaskNumber
	.uleb128 0x3b
	.4byte	.LASF403
	.byte	0x1
	.2byte	0x125
	.4byte	0x5d8a
	.uleb128 0x5
	.byte	0x3
	.4byte	xNextTaskUnblockTime
	.uleb128 0x3b
	.4byte	.LASF404
	.byte	0x1
	.2byte	0x12f
	.4byte	0x5e39
	.uleb128 0x5
	.byte	0x3
	.4byte	uxSchedulerSuspended
	.uleb128 0x1b
	.4byte	0x8c2
	.uleb128 0x3b
	.4byte	.LASF405
	.byte	0x1
	.2byte	0x132
	.4byte	0x889
	.uleb128 0x5
	.byte	0x3
	.4byte	xTaskQueueMutex
	.uleb128 0x3b
	.4byte	.LASF406
	.byte	0x1
	.2byte	0x13f
	.4byte	0x5e62
	.uleb128 0x5
	.byte	0x3
	.4byte	xSwitchingContext
	.uleb128 0x1b
	.4byte	0x5dca
	.uleb128 0x4f
	.4byte	.LASF407
	.byte	0x9
	.2byte	0x303
	.4byte	0x441
	.uleb128 0x8
	.4byte	0xea2
	.4byte	0x5e83
	.uleb128 0x9
	.4byte	0xec
	.byte	0x1
	.byte	0
	.uleb128 0x50
	.4byte	.LASF408
	.byte	0x1
	.byte	0xff
	.4byte	0x5e94
	.uleb128 0x5
	.byte	0x3
	.4byte	pxCurrentTCB
	.uleb128 0x1b
	.4byte	0x5e73
	.uleb128 0x51
	.4byte	.LASF409
	.4byte	.LASF409
	.byte	0xf
	.byte	0xde
	.uleb128 0x51
	.4byte	.LASF410
	.4byte	.LASF410
	.byte	0x10
	.byte	0x47
	.uleb128 0x51
	.4byte	.LASF411
	.4byte	.LASF411
	.byte	0x11
	.byte	0x19
	.uleb128 0x52
	.4byte	.LASF412
	.4byte	.LASF412
	.byte	0xc
	.2byte	0x19a
	.uleb128 0x51
	.4byte	.LASF413
	.4byte	.LASF413
	.byte	0x2
	.byte	0xc9
	.uleb128 0x51
	.4byte	.LASF414
	.4byte	.LASF414
	.byte	0x12
	.byte	0x1a
	.uleb128 0x51
	.4byte	.LASF415
	.4byte	.LASF415
	.byte	0x2
	.byte	0x87
	.uleb128 0x52
	.4byte	.LASF416
	.4byte	.LASF416
	.byte	0xc
	.2byte	0x18f
	.uleb128 0x52
	.4byte	.LASF417
	.4byte	.LASF417
	.byte	0x9
	.2byte	0x305
	.uleb128 0x51
	.4byte	.LASF418
	.4byte	.LASF418
	.byte	0x2
	.byte	0xca
	.uleb128 0x51
	.4byte	.LASF419
	.4byte	.LASF419
	.byte	0x10
	.byte	0x5a
	.uleb128 0x52
	.4byte	.LASF420
	.4byte	.LASF420
	.byte	0xc
	.2byte	0x1a7
	.uleb128 0x51
	.4byte	.LASF421
	.4byte	.LASF421
	.byte	0x2
	.byte	0xab
	.uleb128 0x51
	.4byte	.LASF422
	.4byte	.LASF422
	.byte	0x2
	.byte	0xa3
	.uleb128 0x51
	.4byte	.LASF423
	.4byte	.LASF423
	.byte	0x13
	.byte	0x99
	.uleb128 0x51
	.4byte	.LASF424
	.4byte	.LASF424
	.byte	0x11
	.byte	0x16
	.uleb128 0x52
	.4byte	.LASF425
	.4byte	.LASF425
	.byte	0x1
	.2byte	0x1e4
	.uleb128 0x51
	.4byte	.LASF426
	.4byte	.LASF426
	.byte	0x3
	.byte	0xdb
	.uleb128 0x51
	.4byte	.LASF427
	.4byte	.LASF427
	.byte	0x3
	.byte	0xe6
	.uleb128 0x51
	.4byte	.LASF428
	.4byte	.LASF428
	.byte	0x14
	.byte	0x29
	.uleb128 0x52
	.4byte	.LASF429
	.4byte	.LASF429
	.byte	0xc
	.2byte	0x1bc
	.uleb128 0x51
	.4byte	.LASF430
	.4byte	.LASF430
	.byte	0x15
	.byte	0x28
	.uleb128 0x51
	.4byte	.LASF431
	.4byte	.LASF431
	.byte	0x16
	.byte	0x37
	.uleb128 0x52
	.4byte	.LASF432
	.4byte	.LASF432
	.byte	0x17
	.2byte	0x10c
	.uleb128 0x52
	.4byte	.LASF433
	.4byte	.LASF433
	.byte	0x18
	.2byte	0x4df
	.uleb128 0x51
	.4byte	.LASF434
	.4byte	.LASF434
	.byte	0x2
	.byte	0x9c
	.uleb128 0x52
	.4byte	.LASF435
	.4byte	.LASF435
	.byte	0xc
	.2byte	0x1cb
	.uleb128 0x52
	.4byte	.LASF436
	.4byte	.LASF436
	.byte	0x1
	.2byte	0xd4d
	.uleb128 0x52
	.4byte	.LASF437
	.4byte	.LASF437
	.byte	0x1
	.2byte	0x1e8
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
	.uleb128 0x1b
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x4c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x52
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE67
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE67
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE96
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23
	.4byte	.LFE71
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL24
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
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL25
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL25
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
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE24
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL33
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL33
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL48
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL36
	.4byte	.LFE24
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL33
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LFE65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL73
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LFE65
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL79
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LVL88
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL80
	.4byte	.LVL81-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL82
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL86
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL82
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL93
	.4byte	.LVL94-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL98
	.4byte	.LVL102
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LFE47
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL121
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL127
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL116
	.4byte	.LVL120
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL115
	.4byte	.LVL120
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL114
	.4byte	.LVL148-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL127
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL138
	.4byte	.LVL148-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL117
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0xb
	.byte	0x78
	.sleb128 0
	.byte	0x44
	.byte	0x1e
	.byte	0x3
	.4byte	pxReadyTasksLists
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL120
	.4byte	.LVL144
	.2byte	0xb
	.byte	0x78
	.sleb128 0
	.byte	0x44
	.byte	0x1e
	.byte	0x3
	.4byte	pxReadyTasksLists
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0xb
	.byte	0x78
	.sleb128 0
	.byte	0x44
	.byte	0x1e
	.byte	0x3
	.4byte	pxReadyTasksLists
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL154
	.4byte	.LFE62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL158
	.4byte	.LVL160-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL162
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL164
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL164
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL167
	.4byte	.LFE45
	.2byte	0x3
	.byte	0x72
	.sleb128 -56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL168
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL171
	.4byte	.LVL175
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL176
	.4byte	.LFE61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL168
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL172
	.4byte	.LVL175
	.2byte	0x3
	.byte	0x73
	.sleb128 -24
	.byte	0x9f
	.4byte	.LVL175
	.4byte	.LFE61
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL169
	.4byte	.LVL174
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LFE61
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL171
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL177
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL179
	.4byte	.LFE66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL181
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL183
	.4byte	.LFE68
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL183
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL183
	.4byte	.LVL184-1
	.2byte	0x2
	.byte	0x72
	.sleb128 52
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL186
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL188
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL188
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL188
	.4byte	.LVL189
	.2byte	0x2
	.byte	0x72
	.sleb128 52
	.4byte	.LVL189
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL190
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL192
	.4byte	.LVL194
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL195
	.4byte	.LFE74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL191
	.4byte	.LVL193
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL195
	.4byte	.LFE74
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL196
	.4byte	.LVL198-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL199
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL219
	.4byte	.LFE87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL200
	.4byte	.LVL202
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL204
	.4byte	.LVL210-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL210
	.4byte	.LVL216-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL216
	.4byte	.LVL218-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL218
	.4byte	.LFE87
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL201
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL210
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL216
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL218
	.4byte	.LFE87
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL204
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL219
	.4byte	.LFE87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL204
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL219
	.4byte	.LFE87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL207
	.4byte	.LVL210-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL210
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL212
	.4byte	.LVL214
	.2byte	0x7
	.byte	0x78
	.sleb128 -1287651329
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL205
	.4byte	.LVL210-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL210
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL211
	.4byte	.LVL213
	.2byte	0x7
	.byte	0x7b
	.sleb128 0
	.byte	0xa
	.2byte	0x6666
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL206
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL209
	.4byte	.LVL210-1
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0xa
	.2byte	0x6666
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL210
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL206
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL219
	.4byte	.LFE87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL220
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL221
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL223
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL226
	.4byte	.LFE88
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL224
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL226
	.4byte	.LFE88
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL224
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL226
	.4byte	.LFE88
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL228
	.4byte	.LVL231-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL229
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL232
	.4byte	.LVL236
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL236
	.4byte	.LVL241
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL241
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL242
	.4byte	.LVL248
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL248
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL253
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL237
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL242
	.4byte	.LVL246
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL238
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL242
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL244
	.4byte	.LVL245
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL246
	.4byte	.LVL247
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL241
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL255
	.4byte	.LVL257-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL258
	.4byte	.LVL259-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL256
	.4byte	.LVL257-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL261
	.4byte	.LVL269
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL269
	.4byte	.LVL270
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL270
	.4byte	.LVL271
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL271
	.4byte	.LVL272
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL272
	.4byte	.LVL273
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL273
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL266
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL272
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL262
	.4byte	.LVL268
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL268
	.4byte	.LVL270
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL270
	.4byte	.LVL273
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL273
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL274
	.4byte	.LVL285
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL285
	.4byte	.LVL286
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL286
	.4byte	.LVL287
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL287
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL274
	.4byte	.LVL278
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL278
	.4byte	.LVL280
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL280
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL281
	.4byte	.LFE23
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL274
	.4byte	.LVL276
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL276
	.4byte	.LFE23
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL278
	.4byte	.LVL280
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL281
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL284
	.4byte	.LVL286
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL287
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL276
	.4byte	.LVL282
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL286
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL289
	.4byte	.LVL290
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL292
	.4byte	.LVL294-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL294
	.4byte	.LVL296-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL297
	.4byte	.LVL298
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL300
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL288
	.4byte	.LVL289
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL289
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL297
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL301
	.4byte	.LVL305
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL305
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL305
	.4byte	.LVL318
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL323
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL302
	.4byte	.LVL317
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL323
	.4byte	.LVL324
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL309
	.4byte	.LVL310
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL311
	.4byte	.LVL312
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL312
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL321
	.4byte	.LVL322-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL326
	.4byte	.LVL338
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL338
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL326
	.4byte	.LVL336
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL336
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LVL327
	.4byte	.LVL337
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL337
	.4byte	.LVL339
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL335
	.4byte	.LVL340-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LVL343
	.4byte	.LVL344-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LVL345
	.4byte	.LVL350
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL350
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LVL350
	.4byte	.LVL353
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL354
	.4byte	.LVL355-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LVL356
	.4byte	.LVL370
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL370
	.4byte	.LVL371
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL371
	.4byte	.LVL372
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL372
	.4byte	.LVL373
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL373
	.4byte	.LVL374
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL374
	.4byte	.LVL375
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL375
	.4byte	.LVL376
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL376
	.4byte	.LVL377
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL377
	.4byte	.LVL378
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL378
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LVL368
	.4byte	.LVL373
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL375
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST120:
	.4byte	.LVL357
	.4byte	.LVL370
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL370
	.4byte	.LVL371
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL371
	.4byte	.LVL372
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL372
	.4byte	.LVL373
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL373
	.4byte	.LVL374
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL374
	.4byte	.LVL375
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL375
	.4byte	.LVL376
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL376
	.4byte	.LVL377
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL377
	.4byte	.LVL378
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL378
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST121:
	.4byte	.LVL359
	.4byte	.LVL365
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST122:
	.4byte	.LVL361
	.4byte	.LVL362
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL364
	.4byte	.LVL366
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL360
	.4byte	.LVL361-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST124:
	.4byte	.LVL380
	.4byte	.LVL383
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL383
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST125:
	.4byte	.LVL383
	.4byte	.LVL384
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST126:
	.4byte	.LVL386
	.4byte	.LVL389
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL389
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST127:
	.4byte	.LVL389
	.4byte	.LVL390
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST128:
	.4byte	.LVL392
	.4byte	.LVL399
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL399
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST129:
	.4byte	.LVL392
	.4byte	.LVL396
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL396
	.4byte	.LVL413
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL413
	.4byte	.LVL415-1
	.2byte	0x3
	.byte	0x72
	.sleb128 88
	.4byte	0
	.4byte	0
.LLST130:
	.4byte	.LVL399
	.4byte	.LVL416
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL416
	.4byte	.LVL417
	.2byte	0x3
	.byte	0x75
	.sleb128 -8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST131:
	.4byte	.LVL400
	.4byte	.LVL401
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL401
	.4byte	.LVL405-1
	.2byte	0x3
	.byte	0x72
	.sleb128 88
	.4byte	.LVL407
	.4byte	.LVL408
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL408
	.4byte	.LVL411
	.2byte	0x3
	.byte	0x72
	.sleb128 88
	.4byte	0
	.4byte	0
.LLST132:
	.4byte	.LVL412
	.4byte	.LVL414
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST133:
	.4byte	.LVL393
	.4byte	.LVL411
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL411
	.4byte	.LVL419
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST134:
	.4byte	.LVL402
	.4byte	.LVL403
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST135:
	.4byte	.LVL404
	.4byte	.LVL406
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL409
	.4byte	.LVL410
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST136:
	.4byte	.LVL418
	.4byte	.LVL419-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST137:
	.4byte	.LVL421
	.4byte	.LVL424
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL424
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST138:
	.4byte	.LVL424
	.4byte	.LVL430
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL441
	.4byte	.LVL442
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST139:
	.4byte	.LVL428
	.4byte	.LVL431
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL436
	.4byte	.LVL437
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL441
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST140:
	.4byte	.LVL434
	.4byte	.LVL435-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST141:
	.4byte	.LVL454
	.4byte	.LVL455
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST142:
	.4byte	.LVL456
	.4byte	.LVL457-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST143:
	.4byte	.LVL458
	.4byte	.LVL459
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST144:
	.4byte	.LVL461
	.4byte	.LVL473
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL473
	.4byte	.LVL474
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL474
	.4byte	.LVL478
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL478
	.4byte	.LVL479
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL479
	.4byte	.LVL480
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL480
	.4byte	.LVL481
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL481
	.4byte	.LVL482
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL482
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
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST145:
	.4byte	.LVL462
	.4byte	.LVL484
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL484
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST146:
	.4byte	.LVL462
	.4byte	.LVL473
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL473
	.4byte	.LVL474
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL474
	.4byte	.LVL478
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL478
	.4byte	.LVL479
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL479
	.4byte	.LVL480
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL480
	.4byte	.LVL481
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL481
	.4byte	.LVL482
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL482
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
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST147:
	.4byte	.LVL469
	.4byte	.LVL470
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST148:
	.4byte	.LVL471
	.4byte	.LVL474
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL483
	.4byte	.LVL484
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST149:
	.4byte	.LVL475
	.4byte	.LVL476
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST150:
	.4byte	.LVL489
	.4byte	.LVL490
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL490
	.4byte	.LVL492
	.2byte	0xc
	.byte	0x3
	.4byte	xTasksWaitingTermination
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL492
	.4byte	.LVL497-1
	.2byte	0xc
	.byte	0x3
	.4byte	xTasksWaitingTermination
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL498
	.4byte	.LVL499
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST151:
	.4byte	.LVL487
	.4byte	.LVL496
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL496
	.4byte	.LVL498
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL498
	.4byte	.LVL499
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL499
	.4byte	.LVL502
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST152:
	.4byte	.LVL491
	.4byte	.LVL497-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST153:
	.4byte	.LVL493
	.4byte	.LVL495
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST154:
	.4byte	.LVL494
	.4byte	.LVL495
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST155:
	.4byte	.LVL524
	.4byte	.LVL526
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL527
	.4byte	.LVL532
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST156:
	.4byte	.LVL525
	.4byte	.LVL528
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL528
	.4byte	.LVL529-1
	.2byte	0x2
	.byte	0x73
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST157:
	.4byte	.LVL506
	.4byte	.LVL518
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL518
	.4byte	.LVL519
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL520
	.4byte	.LVL521
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL521
	.4byte	.LVL537
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL537
	.4byte	.LVL539
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL539
	.4byte	.LVL540
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST158:
	.4byte	.LVL507
	.4byte	.LVL509
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL510
	.4byte	.LVL511
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST159:
	.4byte	.LVL513
	.4byte	.LVL522
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL523
	.4byte	.LVL533
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST160:
	.4byte	.LVL516
	.4byte	.LVL517
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST161:
	.4byte	.LVL550
	.4byte	.LVL556
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST162:
	.4byte	.LVL541
	.4byte	.LVL560
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL560
	.4byte	.LVL563
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL563
	.4byte	.LVL564
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL564
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST163:
	.4byte	.LVL545
	.4byte	.LVL546
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST164:
	.4byte	.LVL548
	.4byte	.LVL549
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST165:
	.4byte	.LVL554
	.4byte	.LVL555
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST166:
	.4byte	.LVL557
	.4byte	.LVL558
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST167:
	.4byte	.LVL561
	.4byte	.LVL562-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST168:
	.4byte	.LVL566
	.4byte	.LVL574
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL574
	.4byte	.LVL577
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL577
	.4byte	.LVL578
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL578
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST169:
	.4byte	.LVL566
	.4byte	.LVL575
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL575
	.4byte	.LVL577
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL577
	.4byte	.LVL580
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL580
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST170:
	.4byte	.LVL579
	.4byte	.LVL580-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST171:
	.4byte	.LVL571
	.4byte	.LVL572
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST172:
	.4byte	.LVL582
	.4byte	.LVL592
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL592
	.4byte	.LFE51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST173:
	.4byte	.LVL582
	.4byte	.LVL588
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL588
	.4byte	.LFE51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST174:
	.4byte	.LVL598
	.4byte	.LVL599-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST175:
	.4byte	.LVL589
	.4byte	.LVL590
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST176:
	.4byte	.LVL592
	.4byte	.LVL594
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL596
	.4byte	.LVL597
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST177:
	.4byte	.LVL601
	.4byte	.LVL609
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL609
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST178:
	.4byte	.LVL610
	.4byte	.LVL611-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST179:
	.4byte	.LVL606
	.4byte	.LVL607
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST180:
	.4byte	.LVL613
	.4byte	.LVL615
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL615
	.4byte	.LVL620
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL620
	.4byte	.LVL622
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL622
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST181:
	.4byte	.LVL616
	.4byte	.LVL620
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL623
	.4byte	.LVL643
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL644
	.4byte	.LVL647
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL648
	.4byte	.LVL649
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST182:
	.4byte	.LVL642
	.4byte	.LVL644
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL646
	.4byte	.LVL648
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL649
	.4byte	.LFE53
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST183:
	.4byte	.LVL619
	.4byte	.LVL620
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL623
	.4byte	.LVL630
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL630
	.4byte	.LVL631
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL631
	.4byte	.LVL632
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL632
	.4byte	.LVL634-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL636
	.4byte	.LVL638
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST184:
	.4byte	.LVL624
	.4byte	.LVL625
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL625
	.4byte	.LVL627
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL631
	.4byte	.LVL632
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST185:
	.4byte	.LVL629
	.4byte	.LVL631
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL632
	.4byte	.LVL633
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL636
	.4byte	.LVL637
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST186:
	.4byte	.LVL624
	.4byte	.LVL628
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL631
	.4byte	.LVL632
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST187:
	.4byte	.LVL640
	.4byte	.LVL641
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST188:
	.4byte	.LVL645
	.4byte	.LVL649
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST189:
	.4byte	.LVL651
	.4byte	.LVL661
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL661
	.4byte	.LFE54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST190:
	.4byte	.LVL651
	.4byte	.LVL655
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL655
	.4byte	.LFE54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST191:
	.4byte	.LVL656
	.4byte	.LVL666
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL667
	.4byte	.LVL672
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST192:
	.4byte	.LVL665
	.4byte	.LVL667
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL669
	.4byte	.LVL671
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL672
	.4byte	.LFE54
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST193:
	.4byte	.LVL663
	.4byte	.LVL664
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST194:
	.4byte	.LVL668
	.4byte	.LVL670
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL671
	.4byte	.LVL672
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST195:
	.4byte	.LVL674
	.4byte	.LVL683
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL683
	.4byte	.LVL684
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL684
	.4byte	.LVL685
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL685
	.4byte	.LVL686
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL686
	.4byte	.LVL687
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL687
	.4byte	.LVL688
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL688
	.4byte	.LVL689
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL689
	.4byte	.LFE56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST196:
	.4byte	.LVL682
	.4byte	.LVL684
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL689
	.4byte	.LFE56
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST197:
	.4byte	.LVL680
	.4byte	.LVL681
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL684
	.4byte	.LVL689
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST198:
	.4byte	.LVL691
	.4byte	.LVL694
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL694
	.4byte	.LFE59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST199:
	.4byte	.LVL691
	.4byte	.LVL695
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL695
	.4byte	.LVL697
	.2byte	0x3
	.byte	0x73
	.sleb128 -24
	.byte	0x9f
	.4byte	.LVL697
	.4byte	.LFE59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST200:
	.4byte	.LVL694
	.4byte	.LVL696
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST201:
	.4byte	.LVL700
	.4byte	.LVL705
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL705
	.4byte	.LVL707
	.2byte	0x3
	.byte	0x73
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL707
	.4byte	.LVL708
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL708
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST202:
	.4byte	.LVL701
	.4byte	.LVL705
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL705
	.4byte	.LVL707
	.2byte	0x3
	.byte	0x73
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL707
	.4byte	.LVL708
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL708
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST203:
	.4byte	.LVL711
	.4byte	.LVL718
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL718
	.4byte	.LVL721
	.2byte	0x3
	.byte	0x73
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL721
	.4byte	.LVL722
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL722
	.4byte	.LVL723
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL723
	.4byte	.LVL724
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL724
	.4byte	.LVL725
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL725
	.4byte	.LVL726
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL726
	.4byte	.LFE77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST204:
	.4byte	.LVL712
	.4byte	.LVL718
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL718
	.4byte	.LVL721
	.2byte	0x3
	.byte	0x73
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL721
	.4byte	.LVL722
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL722
	.4byte	.LVL723
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL723
	.4byte	.LVL724
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL724
	.4byte	.LVL725
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL725
	.4byte	.LVL726
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL726
	.4byte	.LFE77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST205:
	.4byte	.LVL712
	.4byte	.LVL719
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL719
	.4byte	.LVL721
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL721
	.4byte	.LVL726
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL726
	.4byte	.LFE77
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST206:
	.4byte	.LVL730
	.4byte	.LVL731
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST207:
	.4byte	.LVL732
	.4byte	.LVL733
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST208:
	.4byte	.LVL738
	.4byte	.LVL751
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL751
	.4byte	.LVL752
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL752
	.4byte	.LVL753
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL753
	.4byte	.LFE91
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST209:
	.4byte	.LVL738
	.4byte	.LVL741
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL741
	.4byte	.LVL743
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL743
	.4byte	.LVL745
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL745
	.4byte	.LFE91
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST210:
	.4byte	.LVL744
	.4byte	.LVL745-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST211:
	.4byte	.LVL746
	.4byte	.LVL747-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST212:
	.4byte	.LVL755
	.4byte	.LVL757
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL757
	.4byte	.LFE92
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST213:
	.4byte	.LVL755
	.4byte	.LVL771
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL771
	.4byte	.LVL773
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL773
	.4byte	.LVL774
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL774
	.4byte	.LFE92
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST214:
	.4byte	.LVL755
	.4byte	.LVL770
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL770
	.4byte	.LVL773
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL773
	.4byte	.LVL774
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL774
	.4byte	.LFE92
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST215:
	.4byte	.LVL755
	.4byte	.LVL761
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL761
	.4byte	.LVL763
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL763
	.4byte	.LVL765
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL765
	.4byte	.LFE92
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST216:
	.4byte	.LVL764
	.4byte	.LVL765-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST217:
	.4byte	.LVL772
	.4byte	.LVL773
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL774
	.4byte	.LFE92
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST218:
	.4byte	.LVL758
	.4byte	.LVL759
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST219:
	.4byte	.LVL766
	.4byte	.LVL767-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST220:
	.4byte	.LVL776
	.4byte	.LVL805
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL805
	.4byte	.LFE93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST221:
	.4byte	.LVL776
	.4byte	.LVL783
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL783
	.4byte	.LVL784
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL784
	.4byte	.LVL785
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL785
	.4byte	.LVL786
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL786
	.4byte	.LVL787
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL787
	.4byte	.LVL788
	.2byte	0x3
	.byte	0x72
	.sleb128 344
	.4byte	.LVL788
	.4byte	.LVL789
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL789
	.4byte	.LVL790
	.2byte	0x3
	.byte	0x72
	.sleb128 344
	.4byte	.LVL790
	.4byte	.LVL791
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL791
	.4byte	.LVL792
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL792
	.4byte	.LVL793
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL793
	.4byte	.LFE93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST222:
	.4byte	.LVL776
	.4byte	.LVL782
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL782
	.4byte	.LVL784
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL784
	.4byte	.LVL793
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL793
	.4byte	.LFE93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST223:
	.4byte	.LVL779
	.4byte	.LVL805
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL805
	.4byte	.LFE93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST224:
	.4byte	.LVL781
	.4byte	.LVL794-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST225:
	.4byte	.LVL777
	.4byte	.LVL793
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL793
	.4byte	.LFE93
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST226:
	.4byte	.LVL798
	.4byte	.LVL799
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST227:
	.4byte	.LVL800
	.4byte	.LVL801-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST228:
	.4byte	.LVL802
	.4byte	.LVL803
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST229:
	.4byte	.LVL806
	.4byte	.LVL834
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL834
	.4byte	.LVL835
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL835
	.4byte	.LVL837
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL837
	.4byte	.LFE94
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST230:
	.4byte	.LVL806
	.4byte	.LVL813
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL813
	.4byte	.LVL814
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL814
	.4byte	.LVL815
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL815
	.4byte	.LVL816
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL816
	.4byte	.LVL817
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL817
	.4byte	.LVL818
	.2byte	0x3
	.byte	0x72
	.sleb128 344
	.4byte	.LVL818
	.4byte	.LVL819
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL819
	.4byte	.LVL820
	.2byte	0x3
	.byte	0x72
	.sleb128 344
	.4byte	.LVL820
	.4byte	.LVL821
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL821
	.4byte	.LVL822
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL822
	.4byte	.LVL823
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL823
	.4byte	.LFE94
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST231:
	.4byte	.LVL806
	.4byte	.LVL812
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL812
	.4byte	.LVL814
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL814
	.4byte	.LVL823
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL823
	.4byte	.LFE94
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST232:
	.4byte	.LVL809
	.4byte	.LVL834
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL834
	.4byte	.LVL835
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL835
	.4byte	.LVL837
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL837
	.4byte	.LFE94
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST233:
	.4byte	.LVL811
	.4byte	.LVL824-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL825
	.4byte	.LVL826
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST234:
	.4byte	.LVL807
	.4byte	.LVL823
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL823
	.4byte	.LFE94
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST235:
	.4byte	.LVL829
	.4byte	.LVL830
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST236:
	.4byte	.LVL832
	.4byte	.LVL833
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST237:
	.4byte	.LVL836
	.4byte	.LVL837
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST238:
	.4byte	.LVL839
	.4byte	.LVL854
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL854
	.4byte	.LVL855
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL855
	.4byte	.LVL857
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL857
	.4byte	.LFE95
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST239:
	.4byte	.LVL839
	.4byte	.LVL856
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL856
	.4byte	.LFE95
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST240:
	.4byte	.LVL841
	.4byte	.LVL854
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL854
	.4byte	.LVL855
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL855
	.4byte	.LVL857
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL857
	.4byte	.LFE95
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST241:
	.4byte	.LVL843
	.4byte	.LVL844-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL845
	.4byte	.LVL846
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST242:
	.4byte	.LVL849
	.4byte	.LVL850
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST243:
	.4byte	.LVL852
	.4byte	.LVL853
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST244:
	.4byte	.LVL856
	.4byte	.LVL857
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST245:
	.4byte	.LVL859
	.4byte	.LVL872
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL872
	.4byte	.LFE98
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST246:
	.4byte	.LVL859
	.4byte	.LVL862
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL862
	.4byte	.LFE98
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST247:
	.4byte	.LVL860
	.4byte	.LVL861
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL861
	.4byte	.LVL862
	.2byte	0x2
	.byte	0x49
	.byte	0x9f
	.4byte	.LVL862
	.4byte	.LVL866
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL866
	.4byte	.LVL867
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL867
	.4byte	.LFE98
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x23c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
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
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
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
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB344
	.4byte	.LBE344
	.4byte	.LBB345
	.4byte	.LBE345
	.4byte	0
	.4byte	0
	.4byte	.LBB367
	.4byte	.LBE367
	.4byte	.LBB404
	.4byte	.LBE404
	.4byte	0
	.4byte	0
	.4byte	.LBB387
	.4byte	.LBE387
	.4byte	.LBB401
	.4byte	.LBE401
	.4byte	0
	.4byte	0
	.4byte	.LBB456
	.4byte	.LBE456
	.4byte	.LBB461
	.4byte	.LBE461
	.4byte	.LBB462
	.4byte	.LBE462
	.4byte	0
	.4byte	0
	.4byte	.LBB519
	.4byte	.LBE519
	.4byte	.LBB521
	.4byte	.LBE521
	.4byte	0
	.4byte	0
	.4byte	.LBB527
	.4byte	.LBE527
	.4byte	.LBB531
	.4byte	.LBE531
	.4byte	0
	.4byte	0
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LFB96
	.4byte	.LFE96
	.4byte	.LFB97
	.4byte	.LFE97
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LFB87
	.4byte	.LFE87
	.4byte	.LFB88
	.4byte	.LFE88
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB37
	.4byte	.LFE37
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
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB41
	.4byte	.LFE41
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
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LFB89
	.4byte	.LFE89
	.4byte	.LFB90
	.4byte	.LFE90
	.4byte	.LFB91
	.4byte	.LFE91
	.4byte	.LFB92
	.4byte	.LFE92
	.4byte	.LFB93
	.4byte	.LFE93
	.4byte	.LFB94
	.4byte	.LFE94
	.4byte	.LFB95
	.4byte	.LFE95
	.4byte	.LFB98
	.4byte	.LFE98
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF400:
	.string	"xYieldPending"
.LASF3:
	.string	"size_t"
.LASF18:
	.string	"sizetype"
.LASF366:
	.string	"uxTaskResetEventItemValue"
.LASF20:
	.string	"__value"
.LASF72:
	.string	"__sf"
.LASF127:
	.string	"owner"
.LASF171:
	.string	"usStackDepth"
.LASF81:
	.string	"_read"
.LASF252:
	.string	"taskYIELD_OTHER_CORE"
.LASF256:
	.string	"xTaskGetTickCountFromISR"
.LASF82:
	.string	"_write"
.LASF167:
	.string	"MemoryRegion_t"
.LASF190:
	.string	"xEventListItem"
.LASF152:
	.string	"eTaskState"
.LASF68:
	.string	"_asctime_buf"
.LASF64:
	.string	"_cvtlen"
.LASF194:
	.string	"uxCriticalNesting"
.LASF440:
	.string	"/home/raphael/rtone/lcd/build/freertos"
.LASF217:
	.string	"vPortCPUAcquireMutexIntsDisabledInternal"
.LASF159:
	.string	"xTIME_OUT"
.LASF396:
	.string	"xTickCount"
.LASF402:
	.string	"uxTaskNumber"
.LASF242:
	.string	"pxTaskCode"
.LASF211:
	.string	"__func__"
.LASF30:
	.string	"__tm"
.LASF118:
	.string	"_wcsrtombs_state"
.LASF86:
	.string	"_nbuf"
.LASF31:
	.string	"__tm_sec"
.LASF124:
	.string	"BaseType_t"
.LASF112:
	.string	"_l64a_buf"
.LASF151:
	.string	"eDeleted"
.LASF191:
	.string	"pxStack"
.LASF209:
	.string	"ccount_start"
.LASF332:
	.string	"vTaskResume"
.LASF410:
	.string	"abort"
.LASF215:
	.string	"state"
.LASF417:
	.string	"_reclaim_reent"
.LASF257:
	.string	"uxTaskGetNumberOfTasks"
.LASF89:
	.string	"_lock"
.LASF365:
	.string	"xTaskPriorityDisinherit"
.LASF246:
	.string	"xRunPrivileged"
.LASF427:
	.string	"vPortCPUReleaseMutex"
.LASF321:
	.string	"curTCBcurCore"
.LASF99:
	.string	"_mult"
.LASF420:
	.string	"vListInsert"
.LASF331:
	.string	"xTaskToSuspend"
.LASF239:
	.string	"xTask"
.LASF287:
	.string	"uxReturn"
.LASF134:
	.string	"pxNext"
.LASF288:
	.string	"pxTaskGetStackStart"
.LASF245:
	.string	"pxNewTCB"
.LASF281:
	.string	"pvTaskGetThreadLocalStoragePointer"
.LASF16:
	.string	"__wch"
.LASF4:
	.string	"__uint8_t"
.LASF196:
	.string	"uxBasePriority"
.LASF204:
	.string	"tskTCB"
.LASF77:
	.string	"_file"
.LASF40:
	.string	"_on_exit_args"
.LASF266:
	.string	"uxDynamicTopReady"
.LASF354:
	.string	"xTaskRemoveFromUnorderedEventList"
.LASF346:
	.string	"pxEventList"
.LASF327:
	.string	"uxCurrentBasePriority"
.LASF114:
	.string	"_mbrlen_state"
.LASF13:
	.string	"long int"
.LASF408:
	.string	"pxCurrentTCB"
.LASF104:
	.string	"_result_k"
.LASF394:
	.string	"xIdleTaskHandle"
.LASF322:
	.string	"curTCBothrCore"
.LASF51:
	.string	"_size"
.LASF349:
	.string	"vTaskPlaceOnEventListRestricted"
.LASF200:
	.string	"xNewLib_reent"
.LASF141:
	.string	"xLIST"
.LASF67:
	.string	"_localtime_buf"
.LASF255:
	.string	"xTaskGetTickCount"
.LASF199:
	.string	"pvThreadLocalStoragePointersDelCallback"
.LASF299:
	.string	"tcb0"
.LASF300:
	.string	"tcb1"
.LASF154:
	.string	"eSetBits"
.LASF298:
	.string	"prvAddNewTaskToReadyList"
.LASF35:
	.string	"__tm_mon"
.LASF265:
	.string	"resetListHead"
.LASF357:
	.string	"pxTicksToWait"
.LASF274:
	.string	"vTaskAllocateMPURegions"
.LASF295:
	.string	"vPortCPUReleaseMutexIntsDisabledInternal"
.LASF421:
	.string	"vPortYieldOtherCore"
.LASF170:
	.string	"pcName"
.LASF218:
	.string	"vPortCPUAcquireMutexIntsDisabled"
.LASF416:
	.string	"vListInitialise"
.LASF406:
	.string	"xSwitchingContext"
.LASF107:
	.string	"_misc_reent"
.LASF60:
	.string	"_current_category"
.LASF429:
	.string	"vListInsertEnd"
.LASF185:
	.string	"eNotified"
.LASF393:
	.string	"xSuspendedTaskList"
.LASF369:
	.string	"xClearCountOnExit"
.LASF2:
	.string	"signed char"
.LASF150:
	.string	"eSuspended"
.LASF119:
	.string	"uint8_t"
.LASF232:
	.string	"pxNextTCB"
.LASF176:
	.string	"TaskParameters_t"
.LASF374:
	.string	"pulNotificationValue"
.LASF5:
	.string	"unsigned char"
.LASF401:
	.string	"xNumOfOverflows"
.LASF308:
	.string	"core"
.LASF303:
	.string	"xTaskCreatePinnedToCore"
.LASF193:
	.string	"xCoreID"
.LASF405:
	.string	"xTaskQueueMutex"
.LASF240:
	.string	"xReturn"
.LASF325:
	.string	"vTaskPrioritySet"
.LASF140:
	.string	"MiniListItem_t"
.LASF229:
	.string	"prvTaskGetSnapshotsFromList"
.LASF437:
	.string	"esp_vApplicationTickHook"
.LASF236:
	.string	"__FUNCTION__"
.LASF52:
	.string	"_reent"
.LASF224:
	.string	"prvResetNextTaskUnblockTime"
.LASF407:
	.string	"_global_impure_ptr"
.LASF241:
	.string	"prvInitialiseNewTask"
.LASF146:
	.string	"TaskHandle_t"
.LASF161:
	.string	"xTimeOnEntering"
.LASF399:
	.string	"uxPendedTicks"
.LASF379:
	.string	"eOriginalNotifyState"
.LASF122:
	.string	"_Bool"
.LASF348:
	.string	"vTaskPlaceOnUnorderedEventList"
.LASF143:
	.string	"pxIndex"
.LASF179:
	.string	"pxTopOfStack"
.LASF398:
	.string	"xSchedulerRunning"
.LASF430:
	.string	"esp_crosscore_int_send_yield"
.LASF238:
	.string	"prvTaskIsTaskSuspended"
.LASF92:
	.string	"char"
.LASF251:
	.string	"curTCB"
.LASF411:
	.string	"memset"
.LASF425:
	.string	"vApplicationStackOverflowHook"
.LASF47:
	.string	"_fns"
.LASF293:
	.string	"schedulerRunning"
.LASF162:
	.string	"TimeOut_t"
.LASF139:
	.string	"xMINI_LIST_ITEM"
.LASF84:
	.string	"_close"
.LASF131:
	.string	"xMPU_SETTINGS"
.LASF212:
	.string	"ccount_now"
.LASF202:
	.string	"eNotifyState"
.LASF380:
	.string	"xTaskNotifyFromISR"
.LASF157:
	.string	"eSetValueWithoutOverwrite"
.LASF415:
	.string	"pxPortInitialiseStack"
.LASF278:
	.string	"currTask"
.LASF54:
	.string	"_stdin"
.LASF262:
	.string	"irqstate"
.LASF182:
	.string	"TlsDeleteCallbackFunction_t"
.LASF306:
	.string	"vTaskDelete"
.LASF223:
	.string	"ulCount"
.LASF269:
	.string	"pxRefTCB"
.LASF334:
	.string	"xTaskResumeFromISR"
.LASF404:
	.string	"uxSchedulerSuspended"
.LASF403:
	.string	"xNextTaskUnblockTime"
.LASF414:
	.string	"esp_reent_init"
.LASF384:
	.string	"pxTcbSz"
.LASF225:
	.string	"prvTaskGetSnapshot"
.LASF390:
	.string	"xPendingReadyList"
.LASF270:
	.string	"pxResetTCB"
.LASF221:
	.string	"compare"
.LASF353:
	.string	"uxTargetCPU"
.LASF201:
	.string	"ulNotifiedValue"
.LASF436:
	.string	"esp_vApplicationIdleHook"
.LASF296:
	.string	"vTaskExitCritical"
.LASF261:
	.string	"vTaskSwitchContext"
.LASF80:
	.string	"_cookie"
.LASF286:
	.string	"pucEndOfStack"
.LASF28:
	.string	"_wds"
.LASF244:
	.string	"pxCreatedTask"
.LASF367:
	.string	"pvTaskIncrementMutexHeldCount"
.LASF333:
	.string	"xTaskToResume"
.LASF69:
	.string	"_sig_func"
.LASF279:
	.string	"pcTaskGetTaskName"
.LASF320:
	.string	"pxStateList"
.LASF88:
	.string	"_offset"
.LASF392:
	.string	"uxTasksDeleted"
.LASF65:
	.string	"_cvtbuf"
.LASF428:
	.string	"__assert_func"
.LASF164:
	.string	"pvBaseAddress"
.LASF395:
	.string	"uxCurrentNumberOfTasks"
.LASF254:
	.string	"vTaskSuspendAll"
.LASF160:
	.string	"xOverflowCount"
.LASF419:
	.string	"free"
.LASF272:
	.string	"pxTimeOut"
.LASF311:
	.string	"pxPreviousWakeTime"
.LASF148:
	.string	"eReady"
.LASF203:
	.string	"ucStaticallyAllocated"
.LASF105:
	.string	"_p5s"
.LASF24:
	.string	"long unsigned int"
.LASF368:
	.string	"ulTaskNotifyTake"
.LASF273:
	.string	"vTaskMissedYield"
.LASF434:
	.string	"xPortStartScheduler"
.LASF277:
	.string	"__getreent"
.LASF75:
	.string	"__sFILE"
.LASF59:
	.string	"__sdidinit"
.LASF91:
	.string	"_flags2"
.LASF271:
	.string	"vTaskSetTimeOutState"
.LASF337:
	.string	"target"
.LASF302:
	.string	"pxTaskDefinition"
.LASF11:
	.string	"_LOCK_RECURSIVE_T"
.LASF328:
	.string	"uxPriorityUsedOnEntry"
.LASF163:
	.string	"xMEMORY_REGION"
.LASF294:
	.string	"newNesting"
.LASF53:
	.string	"_errno"
.LASF356:
	.string	"xTaskCheckForTimeOut"
.LASF339:
	.string	"affinity"
.LASF74:
	.string	"_signal_buf"
.LASF317:
	.string	"xTicksToDelay"
.LASF364:
	.string	"pxMutexHolder"
.LASF29:
	.string	"_Bigint"
.LASF26:
	.string	"_maxwds"
.LASF233:
	.string	"pxFirstTCB"
.LASF186:
	.string	"eNotifyValue"
.LASF352:
	.string	"xTaskCanBeReady"
.LASF62:
	.string	"__cleanup"
.LASF345:
	.string	"vTaskPlaceOnEventList"
.LASF70:
	.string	"_atexit0"
.LASF432:
	.string	"snprintf"
.LASF289:
	.string	"xTaskGetCurrentTaskHandleForCPU"
.LASF340:
	.string	"prvIdleTask"
.LASF137:
	.string	"pvContainer"
.LASF7:
	.string	"__uint32_t"
.LASF58:
	.string	"_emergency"
.LASF10:
	.string	"_lock_t"
.LASF8:
	.string	"long long int"
.LASF48:
	.string	"_on_exit_args_ptr"
.LASF329:
	.string	"xYieldRequired"
.LASF283:
	.string	"pvReturn"
.LASF95:
	.string	"_niobs"
.LASF71:
	.string	"__sglue"
.LASF243:
	.string	"ulStackDepth"
.LASF63:
	.string	"_gamma_signgam"
.LASF355:
	.string	"pxEventListItem"
.LASF132:
	.string	"xLIST_ITEM"
.LASF61:
	.string	"_current_locale"
.LASF206:
	.string	"timeout_cycles"
.LASF106:
	.string	"_freelist"
.LASF96:
	.string	"_iobs"
.LASF431:
	.string	"heap_caps_malloc"
.LASF94:
	.string	"_glue"
.LASF27:
	.string	"_sign"
.LASF438:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF230:
	.string	"uxArraySize"
.LASF385:
	.string	"pxReadyTasksLists"
.LASF147:
	.string	"eRunning"
.LASF121:
	.string	"TaskFunction_t"
.LASF128:
	.string	"count"
.LASF335:
	.string	"prvCheckTasksWaitingTermination"
.LASF220:
	.string	"addr"
.LASF250:
	.string	"xTimeToWake"
.LASF409:
	.string	"ets_printf"
.LASF195:
	.string	"uxOldInterruptState"
.LASF0:
	.string	"unsigned int"
.LASF375:
	.string	"xTaskNotify"
.LASF304:
	.string	"vTaskStartScheduler"
.LASF248:
	.string	"prvDeleteTCB"
.LASF360:
	.string	"pvValue"
.LASF142:
	.string	"uxNumberOfItems"
.LASF426:
	.string	"vPortCPUAcquireMutex"
.LASF237:
	.string	"prvTaskCheckFreeStackSpace"
.LASF117:
	.string	"_wcrtomb_state"
.LASF351:
	.string	"pxUnblockedTCB"
.LASF34:
	.string	"__tm_mday"
.LASF285:
	.string	"uxTaskGetStackHighWaterMark"
.LASF85:
	.string	"_ubuf"
.LASF56:
	.string	"_stderr"
.LASF110:
	.string	"_wctomb_state"
.LASF90:
	.string	"_mbstate"
.LASF145:
	.string	"List_t"
.LASF101:
	.string	"_rand_next"
.LASF338:
	.string	"tgt_tcb"
.LASF76:
	.string	"_flags"
.LASF347:
	.string	"xTicksToWait"
.LASF344:
	.string	"xTaskResumeAll"
.LASF45:
	.string	"_atexit"
.LASF264:
	.string	"ableToSchedule"
.LASF350:
	.string	"xTaskRemoveFromEventList"
.LASF373:
	.string	"ulBitsToClearOnExit"
.LASF144:
	.string	"xListEnd"
.LASF19:
	.string	"__count"
.LASF315:
	.string	"xConstTickCount"
.LASF149:
	.string	"eBlocked"
.LASF282:
	.string	"xIndex"
.LASF412:
	.string	"vListInitialiseItem"
.LASF323:
	.string	"uxTaskPriorityGet"
.LASF37:
	.string	"__tm_wday"
.LASF292:
	.string	"oldInterruptLevel"
.LASF38:
	.string	"__tm_yday"
.LASF330:
	.string	"vTaskSuspend"
.LASF156:
	.string	"eSetValueWithOverwrite"
.LASF183:
	.string	"eNotWaitingNotification"
.LASF136:
	.string	"pvOwner"
.LASF363:
	.string	"vTaskPriorityInherit"
.LASF297:
	.string	"nesting"
.LASF227:
	.string	"pxTaskSnapshotArray"
.LASF192:
	.string	"pcTaskName"
.LASF98:
	.string	"_seed"
.LASF83:
	.string	"_seek"
.LASF14:
	.string	"_fpos_t"
.LASF17:
	.string	"__wchb"
.LASF187:
	.string	"tskTaskControlBlock"
.LASF312:
	.string	"xTimeIncrement"
.LASF378:
	.string	"eAction"
.LASF316:
	.string	"vTaskDelay"
.LASF111:
	.string	"_mbtowc_state"
.LASF358:
	.string	"vTaskSetThreadLocalStoragePointerAndDelCallback"
.LASF222:
	.string	"vPortCPUReleaseMutexIntsDisabled"
.LASF168:
	.string	"xTASK_PARAMETERS"
.LASF197:
	.string	"uxMutexesHeld"
.LASF9:
	.string	"long long unsigned int"
.LASF377:
	.string	"ulValue"
.LASF290:
	.string	"xTaskGetSchedulerState"
.LASF362:
	.string	"vTaskSetThreadLocalStoragePointer"
.LASF301:
	.string	"xTaskCreateRestricted"
.LASF42:
	.string	"_dso_handle"
.LASF188:
	.string	"xMPUSettings"
.LASF97:
	.string	"_rand48"
.LASF341:
	.string	"xTaskIncrementTick"
.LASF258:
	.string	"xTaskGetIdleTaskHandle"
.LASF55:
	.string	"_stdout"
.LASF249:
	.string	"prvAddCurrentTaskToDelayedList"
.LASF125:
	.string	"UBaseType_t"
.LASF135:
	.string	"pxPrevious"
.LASF87:
	.string	"_blksize"
.LASF198:
	.string	"pvThreadLocalStoragePointers"
.LASF310:
	.string	"vTaskDelayUntil"
.LASF50:
	.string	"_base"
.LASF253:
	.string	"vTaskEndScheduler"
.LASF126:
	.string	"TickType_t"
.LASF108:
	.string	"_strtok_last"
.LASF181:
	.string	"TaskSnapshot_t"
.LASF219:
	.string	"uxPortCompareSet"
.LASF115:
	.string	"_mbrtowc_state"
.LASF318:
	.string	"eTaskGetState"
.LASF129:
	.string	"portMUX_TYPE"
.LASF22:
	.string	"_flock_t"
.LASF231:
	.string	"pxList"
.LASF342:
	.string	"xSwitchRequired"
.LASF93:
	.string	"__FILE"
.LASF413:
	.string	"vPortStoreTaskMPUSettings"
.LASF275:
	.string	"xTaskToModify"
.LASF21:
	.string	"_mbstate_t"
.LASF66:
	.string	"_r48"
.LASF15:
	.string	"wint_t"
.LASF397:
	.string	"uxTopReadyPriority"
.LASF213:
	.string	"xPortGetCoreID"
.LASF25:
	.string	"_next"
.LASF313:
	.string	"xAlreadyYielded"
.LASF79:
	.string	"_data"
.LASF424:
	.string	"memcmp"
.LASF343:
	.string	"pxTemp"
.LASF174:
	.string	"puxStackBuffer"
.LASF418:
	.string	"vPortReleaseTaskMPUSettings"
.LASF226:
	.string	"pucStackByte"
.LASF439:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/tasks.c"
.LASF276:
	.string	"xTaskGetCurrentTaskHandle"
.LASF435:
	.string	"uxListRemove"
.LASF165:
	.string	"ulLengthInBytes"
.LASF388:
	.string	"pxDelayedTaskList"
.LASF291:
	.string	"vTaskEnterCritical"
.LASF381:
	.string	"pxHigherPriorityTaskWoken"
.LASF433:
	.string	"xTimerCreateTimerTask"
.LASF314:
	.string	"xShouldDelay"
.LASF389:
	.string	"pxOverflowDelayedTaskList"
.LASF177:
	.string	"xTASK_SNAPSHOT"
.LASF109:
	.string	"_mblen_state"
.LASF6:
	.string	"short int"
.LASF423:
	.string	"_xtos_set_intlevel"
.LASF309:
	.string	"free_now"
.LASF207:
	.string	"coreID"
.LASF268:
	.string	"ucExpectedStackBytes"
.LASF169:
	.string	"pvTaskCode"
.LASF326:
	.string	"uxNewPriority"
.LASF155:
	.string	"eIncrement"
.LASF43:
	.string	"_fntypes"
.LASF280:
	.string	"xTaskToQuery"
.LASF36:
	.string	"__tm_year"
.LASF234:
	.string	"pxConstList"
.LASF216:
	.string	"__tmp"
.LASF391:
	.string	"xTasksWaitingTermination"
.LASF138:
	.string	"ListItem_t"
.LASF370:
	.string	"ulReturn"
.LASF78:
	.string	"_lbfsize"
.LASF184:
	.string	"eWaitingNotification"
.LASF57:
	.string	"_inc"
.LASF46:
	.string	"_ind"
.LASF208:
	.string	"otherCoreID"
.LASF205:
	.string	"TCB_t"
.LASF210:
	.string	"set_timeout"
.LASF235:
	.string	"prvDeleteTLS"
.LASF49:
	.string	"__sbuf"
.LASF44:
	.string	"_is_cxa"
.LASF172:
	.string	"pvParameters"
.LASF228:
	.string	"uxTask"
.LASF102:
	.string	"_mprec"
.LASF73:
	.string	"_misc"
.LASF23:
	.string	"__ULong"
.LASF324:
	.string	"uxTaskPriorityGetFromISR"
.LASF120:
	.string	"uint32_t"
.LASF376:
	.string	"xTaskToNotify"
.LASF180:
	.string	"pxEndOfStack"
.LASF103:
	.string	"_result"
.LASF175:
	.string	"xRegions"
.LASF158:
	.string	"eNotifyAction"
.LASF372:
	.string	"ulBitsToClearOnEntry"
.LASF123:
	.string	"StackType_t"
.LASF361:
	.string	"xDelCallback"
.LASF189:
	.string	"xGenericListItem"
.LASF12:
	.string	"_off_t"
.LASF383:
	.string	"uxTaskGetSnapshotAll"
.LASF260:
	.string	"cpuid"
.LASF100:
	.string	"_add"
.LASF307:
	.string	"xTaskToDelete"
.LASF1:
	.string	"short unsigned int"
.LASF33:
	.string	"__tm_hour"
.LASF130:
	.string	"coproc_area"
.LASF422:
	.string	"vPortEndScheduler"
.LASF247:
	.string	"prvInitialiseTaskLists"
.LASF386:
	.string	"xDelayedTaskList1"
.LASF387:
	.string	"xDelayedTaskList2"
.LASF116:
	.string	"_mbsrtowcs_state"
.LASF305:
	.string	"cIdleName"
.LASF153:
	.string	"eNoAction"
.LASF382:
	.string	"vTaskNotifyGiveFromISR"
.LASF166:
	.string	"ulParameters"
.LASF214:
	.string	"portENTER_CRITICAL_NESTED"
.LASF263:
	.string	"foundNonExecutingWaiter"
.LASF319:
	.string	"eReturn"
.LASF41:
	.string	"_fnargs"
.LASF267:
	.string	"holdTop"
.LASF39:
	.string	"__tm_isdst"
.LASF284:
	.string	"xTaskGetAffinity"
.LASF359:
	.string	"xTaskToSet"
.LASF336:
	.string	"xListIsEmpty"
.LASF371:
	.string	"xTaskNotifyWait"
.LASF32:
	.string	"__tm_min"
.LASF259:
	.string	"xTaskGetIdleTaskHandleForCPU"
.LASF113:
	.string	"_getdate_err"
.LASF133:
	.string	"xItemValue"
.LASF178:
	.string	"pxTCB"
.LASF173:
	.string	"uxPriority"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
