	.file	"vfs_lwip.c"
	.text
.Ltext0:
	.section	.text.lwip_stop_socket_select_isr,"ax",@progbits
	.align	4
	.type	lwip_stop_socket_select_isr, @function
lwip_stop_socket_select_isr:
.LFB39:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/port/esp32/vfs_lwip.c"
	.loc 1 37 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 38 0
	call8	sys_thread_sem_get
.LVL1:
	call8	sys_sem_signal_isr
.LVL2:
	beqz.n	a10, .L1
	.loc 1 38 0 is_stmt 0 discriminator 1
	beqz.n	a2, .L1
	.loc 1 39 0 is_stmt 1
	movi.n	a8, 1
	s32i.n	a8, a2, 0
.L1:
	retw.n
.LFE39:
	.size	lwip_stop_socket_select_isr, .-lwip_stop_socket_select_isr
	.section	.text.lwip_stop_socket_select,"ax",@progbits
	.align	4
	.type	lwip_stop_socket_select, @function
lwip_stop_socket_select:
.LFB38:
	.loc 1 32 0
	entry	sp, 32
.LCFI1:
	.loc 1 33 0
	call8	sys_thread_sem_get
.LVL3:
	call8	sys_sem_signal
.LVL4:
	retw.n
.LFE38:
	.size	lwip_stop_socket_select, .-lwip_stop_socket_select
	.section	.text.lwip_ioctl_r_wrapper,"ax",@progbits
	.align	4
	.type	lwip_ioctl_r_wrapper, @function
lwip_ioctl_r_wrapper:
.LFB41:
	.loc 1 49 0
.LVL5:
	entry	sp, 48
.LCFI2:
	mov.n	a10, a2
	mov.n	a11, a3
	s32i.n	a4, sp, 0
	s32i.n	a5, sp, 4
	.loc 1 50 0
	addi.n	a8, a6, 4
	s32i.n	a8, sp, 8
	movi.n	a9, 0x18
	blt	a9, a8, .L5
	.loc 1 50 0 is_stmt 0 discriminator 2
	mov.n	a6, a5
	j	.L6
.L5:
	.loc 1 50 0 discriminator 1
	movi.n	a8, 0x18
	blt	a8, a6, .L7
	.loc 1 50 0 discriminator 5
	movi.n	a6, 0x24
	s32i.n	a6, sp, 8
.L7:
	.loc 1 50 0 discriminator 6
	l32i.n	a6, sp, 0
.L6:
	.loc 1 50 0 discriminator 7
	l32i.n	a8, sp, 8
	add.n	a8, a6, a8
	addi	a8, a8, -4
	l32i.n	a12, a8, 0
	call8	lwip_ioctl_r
.LVL6:
	.loc 1 51 0 is_stmt 1 discriminator 7
	mov.n	a2, a10
.LVL7:
	retw.n
.LFE41:
	.size	lwip_ioctl_r_wrapper, .-lwip_ioctl_r_wrapper
	.section	.text.lwip_fcntl_r_wrapper,"ax",@progbits
	.align	4
	.type	lwip_fcntl_r_wrapper, @function
lwip_fcntl_r_wrapper:
.LFB40:
	.loc 1 44 0
.LVL8:
	entry	sp, 48
.LCFI3:
	mov.n	a10, a2
	mov.n	a11, a3
	s32i.n	a4, sp, 0
	s32i.n	a5, sp, 4
	.loc 1 45 0
	addi.n	a8, a6, 4
	s32i.n	a8, sp, 8
	movi.n	a9, 0x18
	blt	a9, a8, .L9
	.loc 1 45 0 is_stmt 0 discriminator 2
	mov.n	a6, a5
	j	.L10
.L9:
	.loc 1 45 0 discriminator 1
	movi.n	a8, 0x18
	blt	a8, a6, .L11
	.loc 1 45 0 discriminator 5
	movi.n	a6, 0x24
	s32i.n	a6, sp, 8
.L11:
	.loc 1 45 0 discriminator 6
	l32i.n	a6, sp, 0
.L10:
	.loc 1 45 0 discriminator 7
	l32i.n	a8, sp, 8
	add.n	a8, a6, a8
	addi	a8, a8, -4
	l32i.n	a12, a8, 0
	call8	lwip_fcntl_r
.LVL9:
	.loc 1 46 0 is_stmt 1 discriminator 7
	mov.n	a2, a10
.LVL10:
	retw.n
.LFE40:
	.size	lwip_fcntl_r_wrapper, .-lwip_fcntl_r_wrapper
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC8:
	.string	"esp_vfs_register_fd_range(&vfs, NULL, LWIP_SOCKET_OFFSET, MAX_FDS)"
	.align	4
.LC11:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/port/esp32/vfs_lwip.c"
	.section	.text.esp_vfs_lwip_sockets_register,"ax",@progbits
	.literal_position
	.literal .LC0, lwip_write_r
	.literal .LC1, lwip_read_r
	.literal .LC2, lwip_close_r
	.literal .LC3, lwip_fcntl_r_wrapper
	.literal .LC4, lwip_ioctl_r_wrapper
	.literal .LC5, lwip_select
	.literal .LC6, lwip_stop_socket_select
	.literal .LC7, lwip_stop_socket_select_isr
	.literal .LC9, .LC8
	.literal .LC10, __func__$7229
	.literal .LC12, .LC11
	.align	4
	.global	esp_vfs_lwip_sockets_register
	.type	esp_vfs_lwip_sockets_register, @function
esp_vfs_lwip_sockets_register:
.LFB42:
	.loc 1 54 0
	entry	sp, 176
.LCFI4:
	.loc 1 55 0
	movi	a12, 0x90
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL11:
	l32r	a8, .LC0
	s32i.n	a8, sp, 4
	l32r	a8, .LC1
	s32i.n	a8, sp, 12
	l32r	a8, .LC2
	s32i.n	a8, sp, 20
	l32r	a8, .LC3
	s32i	a8, sp, 76
	l32r	a8, .LC4
	s32i	a8, sp, 80
	l32r	a8, .LC5
	s32i	a8, sp, 128
	l32r	a8, .LC6
	s32i	a8, sp, 132
	l32r	a8, .LC7
	s32i	a8, sp, 136
.LBB2:
	.loc 1 73 0
	movi.n	a13, 0x40
	movi.n	a12, 0x36
	movi.n	a11, 0
	mov.n	a10, sp
	call8	esp_vfs_register_fd_range
.LVL12:
	.loc 1 73 0
	beqz.n	a10, .L12
	.loc 1 73 0 is_stmt 0 discriminator 1
	l32r	a14, .LC9
	l32r	a13, .LC10
	movi.n	a12, 0x49
	l32r	a11, .LC12
	call8	_esp_error_check_failed
.LVL13:
.L12:
	retw.n
.LBE2:
.LFE42:
	.size	esp_vfs_lwip_sockets_register, .-esp_vfs_lwip_sockets_register
	.section	.rodata.__func__$7229,"a",@progbits
	.align	4
	.type	__func__$7229, @object
	.size	__func__$7229, 30
__func__$7229:
	.string	"esp_vfs_lwip_sockets_register"
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
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI1-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI2-.LFB41
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI3-.LFB40
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI4-.LFB42
	.byte	0xe
	.uleb128 0xb0
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/_types.h"
	.file 5 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stdarg.h"
	.file 6 "<built-in>"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/types.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/stat.h"
	.file 9 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 10 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/esp32/include/esp_err.h"
	.file 11 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/portmacro.h"
	.file 12 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/queue.h"
	.file 13 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/freertos/include/freertos/semphr.h"
	.file 14 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/sys/time.h"
	.file 15 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/platform_include/sys/termios.h"
	.file 16 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/vfs/include/sys/dirent.h"
	.file 17 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/vfs/include/esp_vfs.h"
	.file 18 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/port/esp32/include/arch/sys_arch.h"
	.file 19 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/sys.h"
	.file 20 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/lwip/src/include/lwip/sockets.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1100
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF166
	.byte	0xc
	.4byte	.LASF167
	.4byte	.LASF168
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0xd8
	.4byte	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x10
	.4byte	0x9f
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x14
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x18
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x1b
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x37
	.4byte	0x25
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.uleb128 0x6
	.byte	0x4
	.4byte	0xef
	.uleb128 0x7
	.4byte	0xe2
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x28
	.4byte	0xff
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0xc
	.byte	0x6
	.byte	0
	.4byte	0x130
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x6
	.byte	0
	.4byte	0xd9
	.byte	0
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x6
	.byte	0
	.4byte	0xd9
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x6
	.byte	0
	.4byte	0x25
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0x62
	.4byte	0xf4
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x7
	.byte	0x7a
	.4byte	0x9f
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x7
	.byte	0x9b
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0xb8
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0xb9
	.4byte	0xa6
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x7
	.byte	0xba
	.4byte	0xb1
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x7
	.byte	0xbb
	.4byte	0xbc
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x7
	.byte	0xc1
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x7
	.byte	0xcb
	.4byte	0xc7
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x7
	.byte	0xd9
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x7
	.byte	0xde
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x7
	.byte	0xf4
	.4byte	0x9f
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x8
	.byte	0x7
	.byte	0xfc
	.4byte	0x1cd
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x7
	.byte	0xfd
	.4byte	0x1cd
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x1a9
	.4byte	0x1dd
	.uleb128 0xb
	.4byte	0xd2
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x7
	.byte	0xfe
	.4byte	0x1b4
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x7
	.2byte	0x11d
	.4byte	0x9f
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x3c
	.byte	0x8
	.byte	0x1a
	.4byte	0x2cd
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x8
	.byte	0x1c
	.4byte	0x15c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x8
	.byte	0x1d
	.4byte	0x146
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x8
	.byte	0x1e
	.4byte	0x193
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x8
	.byte	0x1f
	.4byte	0x19e
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x8
	.byte	0x20
	.4byte	0x167
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x8
	.byte	0x21
	.4byte	0x172
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x8
	.byte	0x22
	.4byte	0x15c
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x8
	.byte	0x23
	.4byte	0x151
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x8
	.byte	0x31
	.4byte	0x13b
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x8
	.byte	0x32
	.4byte	0x9f
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x8
	.byte	0x33
	.4byte	0x13b
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x8
	.byte	0x34
	.4byte	0x9f
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x8
	.byte	0x35
	.4byte	0x13b
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x8
	.byte	0x36
	.4byte	0x9f
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x8
	.byte	0x37
	.4byte	0x9f
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x8
	.byte	0x38
	.4byte	0x9f
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x8
	.byte	0x39
	.4byte	0x2cd
	.byte	0x34
	.byte	0
	.uleb128 0xa
	.4byte	0x9f
	.4byte	0x2dd
	.uleb128 0xb
	.4byte	0xd2
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x9
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x9
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x9
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x9
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x30f
	.uleb128 0xd
	.uleb128 0xe
	.4byte	0x317
	.uleb128 0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xa
	.byte	0x18
	.4byte	0x2f3
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF64
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xb
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xc
	.byte	0x58
	.4byte	0xd9
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0xd
	.byte	0x4f
	.4byte	0x334
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x8
	.byte	0xe
	.byte	0x11
	.4byte	0x36f
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0xe
	.byte	0x12
	.4byte	0x13b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0xe
	.byte	0x13
	.4byte	0x1e8
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0xf
	.byte	0xab
	.4byte	0x2dd
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xf
	.byte	0xac
	.4byte	0x2fe
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xf
	.byte	0xad
	.4byte	0x2e8
	.uleb128 0x8
	.4byte	.LASF74
	.byte	0x1c
	.byte	0xf
	.byte	0xaf
	.4byte	0x3f1
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0xf
	.byte	0xb1
	.4byte	0x385
	.byte	0
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0xf
	.byte	0xb2
	.4byte	0x385
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0xf
	.byte	0xb3
	.4byte	0x385
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0xf
	.byte	0xb4
	.4byte	0x385
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0xf
	.byte	0xb5
	.4byte	0x3f1
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0xf
	.byte	0xb6
	.4byte	0x37a
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0xf
	.byte	0xb7
	.4byte	0x37a
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.4byte	0x36f
	.4byte	0x401
	.uleb128 0xb
	.4byte	0xd2
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x10
	.byte	0x1e
	.4byte	0x422
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x10
	.byte	0x1f
	.4byte	0x2e8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x10
	.byte	0x20
	.4byte	0x2e8
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.string	"DIR"
	.byte	0x10
	.byte	0x22
	.4byte	0x401
	.uleb128 0x12
	.4byte	.LASF84
	.2byte	0x108
	.byte	0x10
	.byte	0x27
	.4byte	0x45f
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x10
	.byte	0x28
	.4byte	0x25
	.byte	0
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x10
	.byte	0x29
	.4byte	0x2dd
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x10
	.byte	0x2d
	.4byte	0x45f
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	0xe2
	.4byte	0x46f
	.uleb128 0xb
	.4byte	0xd2
	.byte	0xff
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0x5c
	.4byte	0x48e
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0x11
	.byte	0x5d
	.4byte	0x4ac
	.uleb128 0x14
	.4byte	.LASF89
	.byte	0x11
	.byte	0x5e
	.4byte	0x4cb
	.byte	0
	.uleb128 0x15
	.4byte	0x188
	.4byte	0x4ac
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x309
	.uleb128 0x16
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x48e
	.uleb128 0x15
	.4byte	0x188
	.4byte	0x4cb
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x309
	.uleb128 0x16
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4b2
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0x60
	.4byte	0x4f0
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0x11
	.byte	0x61
	.4byte	0x50e
	.uleb128 0x14
	.4byte	.LASF91
	.byte	0x11
	.byte	0x62
	.4byte	0x52d
	.byte	0
	.uleb128 0x15
	.4byte	0x151
	.4byte	0x50e
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x151
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4f0
	.uleb128 0x15
	.4byte	0x151
	.4byte	0x52d
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x151
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x514
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0x64
	.4byte	0x552
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0x11
	.byte	0x65
	.4byte	0x570
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x11
	.byte	0x66
	.4byte	0x58f
	.byte	0
	.uleb128 0x15
	.4byte	0x188
	.4byte	0x570
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x552
	.uleb128 0x15
	.4byte	0x188
	.4byte	0x58f
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x576
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0x68
	.4byte	0x5b4
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0x11
	.byte	0x69
	.4byte	0x5d2
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x11
	.byte	0x6a
	.4byte	0x5f1
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x5d2
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5b4
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x5f1
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5d8
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0x6c
	.4byte	0x616
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x11
	.byte	0x6d
	.4byte	0x62a
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x11
	.byte	0x6e
	.4byte	0x63f
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x62a
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x616
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x63f
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x630
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0x70
	.4byte	0x664
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x11
	.byte	0x71
	.4byte	0x683
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x11
	.byte	0x72
	.4byte	0x69d
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x67d
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x67d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1f4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x664
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x69d
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x67d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x689
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0x74
	.4byte	0x6c2
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x11
	.byte	0x75
	.4byte	0x6db
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x11
	.byte	0x76
	.4byte	0x6f5
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x6db
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0x67d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6c2
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x6f5
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0x67d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6e1
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0x78
	.4byte	0x71a
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x11
	.byte	0x79
	.4byte	0x733
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x11
	.byte	0x7a
	.4byte	0x74d
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x733
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0xe9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x71a
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x74d
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0xe9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x739
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0x7c
	.4byte	0x772
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x11
	.byte	0x7d
	.4byte	0x786
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x11
	.byte	0x7e
	.4byte	0x79b
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x786
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0xe9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x772
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x79b
	.uleb128 0x16
	.4byte	0xe9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x78c
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0x80
	.4byte	0x7c0
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x11
	.byte	0x81
	.4byte	0x733
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x11
	.byte	0x82
	.4byte	0x74d
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0x84
	.4byte	0x7df
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x11
	.byte	0x85
	.4byte	0x7f9
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x11
	.byte	0x86
	.4byte	0x80e
	.byte	0
	.uleb128 0x15
	.4byte	0x7f3
	.4byte	0x7f3
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0xe9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x422
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7df
	.uleb128 0x15
	.4byte	0x7f3
	.4byte	0x80e
	.uleb128 0x16
	.4byte	0xe9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7ff
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0x88
	.4byte	0x833
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x11
	.byte	0x89
	.4byte	0x84d
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x11
	.byte	0x8a
	.4byte	0x862
	.byte	0
	.uleb128 0x15
	.4byte	0x847
	.4byte	0x847
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x7f3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x42d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x833
	.uleb128 0x15
	.4byte	0x847
	.4byte	0x862
	.uleb128 0x16
	.4byte	0x7f3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x853
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0x8c
	.4byte	0x887
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x11
	.byte	0x8d
	.4byte	0x8ab
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x11
	.byte	0x8e
	.4byte	0x8ca
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x8a5
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x7f3
	.uleb128 0x16
	.4byte	0x847
	.uleb128 0x16
	.4byte	0x8a5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x847
	.uleb128 0x6
	.byte	0x4
	.4byte	0x887
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x8ca
	.uleb128 0x16
	.4byte	0x7f3
	.uleb128 0x16
	.4byte	0x847
	.uleb128 0x16
	.4byte	0x8a5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8b1
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0x90
	.4byte	0x8ef
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0x11
	.byte	0x91
	.4byte	0x903
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x11
	.byte	0x92
	.4byte	0x918
	.byte	0
	.uleb128 0x15
	.4byte	0x9f
	.4byte	0x903
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x7f3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8ef
	.uleb128 0x15
	.4byte	0x9f
	.4byte	0x918
	.uleb128 0x16
	.4byte	0x7f3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x909
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0x94
	.4byte	0x93d
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x11
	.byte	0x95
	.4byte	0x952
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x11
	.byte	0x96
	.4byte	0x968
	.byte	0
	.uleb128 0x17
	.4byte	0x952
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x7f3
	.uleb128 0x16
	.4byte	0x9f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x93d
	.uleb128 0x17
	.4byte	0x968
	.uleb128 0x16
	.4byte	0x7f3
	.uleb128 0x16
	.4byte	0x9f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x958
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0x98
	.4byte	0x98d
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x11
	.byte	0x99
	.4byte	0x9a1
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x11
	.byte	0x9a
	.4byte	0x9b6
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x9a1
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x7f3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x98d
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x9b6
	.uleb128 0x16
	.4byte	0x7f3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9a7
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0x9c
	.4byte	0x9db
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0x11
	.byte	0x9d
	.4byte	0x9f4
	.uleb128 0x14
	.4byte	.LASF120
	.byte	0x11
	.byte	0x9e
	.4byte	0xa0e
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x9f4
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0x193
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9db
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xa0e
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0x193
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9fa
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0xa0
	.4byte	0xa33
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0x11
	.byte	0xa1
	.4byte	0x786
	.uleb128 0x14
	.4byte	.LASF122
	.byte	0x11
	.byte	0xa2
	.4byte	0x79b
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0xa4
	.4byte	0xa52
	.uleb128 0x14
	.4byte	.LASF123
	.byte	0x11
	.byte	0xa5
	.4byte	0xa70
	.uleb128 0x14
	.4byte	.LASF124
	.byte	0x11
	.byte	0xa6
	.4byte	0xa8f
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xa70
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x130
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa52
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xa8f
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x130
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa76
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0xa8
	.4byte	0xab4
	.uleb128 0x14
	.4byte	.LASF125
	.byte	0x11
	.byte	0xa9
	.4byte	0xa70
	.uleb128 0x14
	.4byte	.LASF126
	.byte	0x11
	.byte	0xaa
	.4byte	0xa8f
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0xac
	.4byte	0xad3
	.uleb128 0x14
	.4byte	.LASF127
	.byte	0x11
	.byte	0xad
	.4byte	0x62a
	.uleb128 0x14
	.4byte	.LASF128
	.byte	0x11
	.byte	0xae
	.4byte	0x63f
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0xb0
	.4byte	0xaf2
	.uleb128 0x14
	.4byte	.LASF129
	.byte	0x11
	.byte	0xb1
	.4byte	0xb0b
	.uleb128 0x14
	.4byte	.LASF130
	.byte	0x11
	.byte	0xb2
	.4byte	0xb25
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xb0b
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xaf2
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xb25
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb11
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0xb4
	.4byte	0xb4a
	.uleb128 0x14
	.4byte	.LASF131
	.byte	0x11
	.byte	0xb5
	.4byte	0xb63
	.uleb128 0x14
	.4byte	.LASF132
	.byte	0x11
	.byte	0xb6
	.4byte	0xb7d
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xb63
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0x151
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb4a
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xb7d
	.uleb128 0x16
	.4byte	0xe9
	.uleb128 0x16
	.4byte	0x151
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb69
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0xb9
	.4byte	0xba2
	.uleb128 0x14
	.4byte	.LASF133
	.byte	0x11
	.byte	0xba
	.4byte	0xbcb
	.uleb128 0x14
	.4byte	.LASF134
	.byte	0x11
	.byte	0xbb
	.4byte	0xbea
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xbc0
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0xbc0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbc6
	.uleb128 0x7
	.4byte	0x390
	.uleb128 0x6
	.byte	0x4
	.4byte	0xba2
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xbea
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0xbc0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbd1
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0xbd
	.4byte	0xc0f
	.uleb128 0x14
	.4byte	.LASF135
	.byte	0x11
	.byte	0xbe
	.4byte	0xc2e
	.uleb128 0x14
	.4byte	.LASF136
	.byte	0x11
	.byte	0xbf
	.4byte	0xc48
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xc28
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0xc28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x390
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc0f
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xc48
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0xc28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc34
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0xc1
	.4byte	0xc6d
	.uleb128 0x14
	.4byte	.LASF137
	.byte	0x11
	.byte	0xc2
	.4byte	0x62a
	.uleb128 0x14
	.4byte	.LASF138
	.byte	0x11
	.byte	0xc3
	.4byte	0x63f
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0xc5
	.4byte	0xc8c
	.uleb128 0x14
	.4byte	.LASF139
	.byte	0x11
	.byte	0xc6
	.4byte	0xca5
	.uleb128 0x14
	.4byte	.LASF140
	.byte	0x11
	.byte	0xc7
	.4byte	0xcbf
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xca5
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc8c
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xcbf
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xcab
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0xc9
	.4byte	0xce4
	.uleb128 0x14
	.4byte	.LASF141
	.byte	0x11
	.byte	0xca
	.4byte	0xca5
	.uleb128 0x14
	.4byte	.LASF142
	.byte	0x11
	.byte	0xcb
	.4byte	0xcbf
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0xcd
	.4byte	0xd03
	.uleb128 0x14
	.4byte	.LASF143
	.byte	0x11
	.byte	0xce
	.4byte	0xd17
	.uleb128 0x14
	.4byte	.LASF144
	.byte	0x11
	.byte	0xcf
	.4byte	0xd2c
	.byte	0
	.uleb128 0x15
	.4byte	0x17d
	.4byte	0xd17
	.uleb128 0x16
	.4byte	0xd9
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd03
	.uleb128 0x15
	.4byte	0x17d
	.4byte	0xd2c
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd1d
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.byte	0xd1
	.4byte	0xd51
	.uleb128 0x14
	.4byte	.LASF145
	.byte	0x11
	.byte	0xd2
	.4byte	0xca5
	.uleb128 0x14
	.4byte	.LASF146
	.byte	0x11
	.byte	0xd3
	.4byte	0xcbf
	.byte	0
	.uleb128 0x10
	.byte	0x90
	.byte	0x11
	.byte	0x59
	.4byte	0xe56
	.uleb128 0x9
	.4byte	.LASF147
	.byte	0x11
	.byte	0x5b
	.4byte	0x25
	.byte	0
	.uleb128 0x18
	.4byte	0x46f
	.byte	0x4
	.uleb128 0x18
	.4byte	0x4d1
	.byte	0x8
	.uleb128 0x18
	.4byte	0x533
	.byte	0xc
	.uleb128 0x18
	.4byte	0x595
	.byte	0x10
	.uleb128 0x18
	.4byte	0x5f7
	.byte	0x14
	.uleb128 0x18
	.4byte	0x645
	.byte	0x18
	.uleb128 0x18
	.4byte	0x6a3
	.byte	0x1c
	.uleb128 0x18
	.4byte	0x6fb
	.byte	0x20
	.uleb128 0x18
	.4byte	0x753
	.byte	0x24
	.uleb128 0x18
	.4byte	0x7a1
	.byte	0x28
	.uleb128 0x18
	.4byte	0x7c0
	.byte	0x2c
	.uleb128 0x18
	.4byte	0x814
	.byte	0x30
	.uleb128 0x18
	.4byte	0x868
	.byte	0x34
	.uleb128 0x18
	.4byte	0x8d0
	.byte	0x38
	.uleb128 0x18
	.4byte	0x91e
	.byte	0x3c
	.uleb128 0x18
	.4byte	0x96e
	.byte	0x40
	.uleb128 0x18
	.4byte	0x9bc
	.byte	0x44
	.uleb128 0x18
	.4byte	0xa14
	.byte	0x48
	.uleb128 0x18
	.4byte	0xa33
	.byte	0x4c
	.uleb128 0x18
	.4byte	0xa95
	.byte	0x50
	.uleb128 0x18
	.4byte	0xab4
	.byte	0x54
	.uleb128 0x18
	.4byte	0xad3
	.byte	0x58
	.uleb128 0x18
	.4byte	0xb2b
	.byte	0x5c
	.uleb128 0x18
	.4byte	0xb83
	.byte	0x60
	.uleb128 0x18
	.4byte	0xbf0
	.byte	0x64
	.uleb128 0x18
	.4byte	0xc4e
	.byte	0x68
	.uleb128 0x18
	.4byte	0xc6d
	.byte	0x6c
	.uleb128 0x18
	.4byte	0xcc5
	.byte	0x70
	.uleb128 0x18
	.4byte	0xce4
	.byte	0x74
	.uleb128 0x18
	.4byte	0xd32
	.byte	0x78
	.uleb128 0x9
	.4byte	.LASF148
	.byte	0x11
	.byte	0xd8
	.4byte	0xe85
	.byte	0x7c
	.uleb128 0x9
	.4byte	.LASF149
	.byte	0x11
	.byte	0xda
	.4byte	0xeb4
	.byte	0x80
	.uleb128 0x9
	.4byte	.LASF150
	.byte	0x11
	.byte	0xdc
	.4byte	0xeba
	.byte	0x84
	.uleb128 0x9
	.4byte	.LASF151
	.byte	0x11
	.byte	0xde
	.4byte	0xed1
	.byte	0x88
	.uleb128 0x9
	.4byte	.LASF152
	.byte	0x11
	.byte	0xe0
	.4byte	0xeba
	.byte	0x8c
	.byte	0
	.uleb128 0x15
	.4byte	0x317
	.4byte	0xe79
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0xe79
	.uleb128 0x16
	.4byte	0xe79
	.uleb128 0x16
	.4byte	0xe79
	.uleb128 0x16
	.4byte	0xe7f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1dd
	.uleb128 0x6
	.byte	0x4
	.4byte	0x33f
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe56
	.uleb128 0x15
	.4byte	0x25
	.4byte	0xeae
	.uleb128 0x16
	.4byte	0x25
	.uleb128 0x16
	.4byte	0xe79
	.uleb128 0x16
	.4byte	0xe79
	.uleb128 0x16
	.4byte	0xe79
	.uleb128 0x16
	.4byte	0xeae
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x34a
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe8b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x310
	.uleb128 0x17
	.4byte	0xecb
	.uleb128 0x16
	.4byte	0xecb
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x329
	.uleb128 0x6
	.byte	0x4
	.4byte	0xec0
	.uleb128 0x3
	.4byte	.LASF153
	.byte	0x11
	.byte	0xe1
	.4byte	0xd51
	.uleb128 0x19
	.4byte	.LASF169
	.byte	0x1
	.byte	0x24
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf17
	.uleb128 0x1a
	.4byte	.LASF154
	.byte	0x1
	.byte	0x24
	.4byte	0xecb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LVL1
	.4byte	0x10aa
	.uleb128 0x1b
	.4byte	.LVL2
	.4byte	0x10b5
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF170
	.byte	0x1
	.byte	0x1f
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf3f
	.uleb128 0x1b
	.4byte	.LVL3
	.4byte	0x10aa
	.uleb128 0x1b
	.4byte	.LVL4
	.4byte	0x10c0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF156
	.byte	0x1
	.byte	0x30
	.4byte	0x25
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf8b
	.uleb128 0x1e
	.string	"fd"
	.byte	0x1
	.byte	0x30
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x1f
	.string	"cmd"
	.byte	0x1
	.byte	0x30
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF155
	.byte	0x1
	.byte	0x30
	.4byte	0x130
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.4byte	.LVL6
	.4byte	0x10cb
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF157
	.byte	0x1
	.byte	0x2b
	.4byte	0x25
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfd7
	.uleb128 0x1e
	.string	"fd"
	.byte	0x1
	.byte	0x2b
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x1f
	.string	"cmd"
	.byte	0x1
	.byte	0x2b
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF155
	.byte	0x1
	.byte	0x2b
	.4byte	0x130
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.4byte	.LVL9
	.4byte	0x10d7
	.byte	0
	.uleb128 0x20
	.4byte	.LASF171
	.byte	0x1
	.byte	0x35
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1095
	.uleb128 0x21
	.string	"vfs"
	.byte	0x1
	.byte	0x37
	.4byte	0xed7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x22
	.4byte	.LASF172
	.4byte	0x10a5
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7229
	.uleb128 0x23
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x1078
	.uleb128 0x24
	.4byte	.LASF158
	.byte	0x1
	.byte	0x49
	.4byte	0x317
	.4byte	.LLST2
	.uleb128 0x25
	.4byte	.LVL12
	.4byte	0x10e3
	.4byte	0x104c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
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
	.byte	0x36
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x27
	.4byte	.LVL13
	.4byte	0x10ef
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x49
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$7229
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL11
	.4byte	0x10fa
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
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
	.byte	0x90
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xe2
	.4byte	0x10a5
	.uleb128 0xb
	.4byte	0xd2
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.4byte	0x1095
	.uleb128 0x28
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0x12
	.byte	0x5b
	.uleb128 0x28
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0x13
	.byte	0xbb
	.uleb128 0x28
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0x13
	.byte	0xb5
	.uleb128 0x29
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0x14
	.2byte	0x22d
	.uleb128 0x29
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0x14
	.2byte	0x22e
	.uleb128 0x29
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0x11
	.2byte	0x109
	.uleb128 0x28
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0xa
	.byte	0x4f
	.uleb128 0x2a
	.4byte	.LASF173
	.4byte	.LASF173
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
	.uleb128 0x8
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
	.uleb128 0xe
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x16
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1e
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF112:
	.string	"readdir_r"
.LASF16:
	.string	"__gid_t"
.LASF107:
	.string	"opendir_p"
.LASF148:
	.string	"start_select"
.LASF3:
	.string	"size_t"
.LASF103:
	.string	"unlink_p"
.LASF97:
	.string	"close"
.LASF4:
	.string	"__uint8_t"
.LASF33:
	.string	"ssize_t"
.LASF25:
	.string	"va_list"
.LASF11:
	.string	"long long unsigned int"
.LASF121:
	.string	"rmdir_p"
.LASF80:
	.string	"c_ispeed"
.LASF66:
	.string	"QueueHandle_t"
.LASF111:
	.string	"readdir_r_p"
.LASF74:
	.string	"termios"
.LASF123:
	.string	"fcntl_p"
.LASF41:
	.string	"stat"
.LASF120:
	.string	"mkdir"
.LASF144:
	.string	"tcgetsid"
.LASF2:
	.string	"signed char"
.LASF152:
	.string	"end_select"
.LASF43:
	.string	"st_ino"
.LASF90:
	.string	"lseek_p"
.LASF82:
	.string	"dd_vfs_idx"
.LASF162:
	.string	"lwip_ioctl_r"
.LASF158:
	.string	"__err_rc"
.LASF149:
	.string	"socket_select"
.LASF13:
	.string	"long int"
.LASF145:
	.string	"tcsendbreak_p"
.LASF83:
	.string	"dd_rsv"
.LASF76:
	.string	"c_oflag"
.LASF114:
	.string	"telldir"
.LASF10:
	.string	"long long int"
.LASF67:
	.string	"SemaphoreHandle_t"
.LASF60:
	.string	"uint16_t"
.LASF65:
	.string	"BaseType_t"
.LASF106:
	.string	"rename"
.LASF133:
	.string	"tcsetattr_p"
.LASF87:
	.string	"d_name"
.LASF35:
	.string	"nlink_t"
.LASF28:
	.string	"off_t"
.LASF31:
	.string	"gid_t"
.LASF9:
	.string	"__uint32_t"
.LASF102:
	.string	"link"
.LASF151:
	.string	"stop_socket_select_isr"
.LASF40:
	.string	"suseconds_t"
.LASF57:
	.string	"st_blocks"
.LASF46:
	.string	"st_uid"
.LASF51:
	.string	"st_spare1"
.LASF132:
	.string	"truncate"
.LASF92:
	.string	"read_p"
.LASF58:
	.string	"st_spare4"
.LASF165:
	.string	"_esp_error_check_failed"
.LASF23:
	.string	"__va_reg"
.LASF78:
	.string	"c_lflag"
.LASF150:
	.string	"stop_socket_select"
.LASF19:
	.string	"long unsigned int"
.LASF68:
	.string	"timeval"
.LASF30:
	.string	"uid_t"
.LASF118:
	.string	"closedir"
.LASF1:
	.string	"short unsigned int"
.LASF146:
	.string	"tcsendbreak"
.LASF91:
	.string	"lseek"
.LASF73:
	.string	"tcflag_t"
.LASF71:
	.string	"cc_t"
.LASF136:
	.string	"tcgetattr"
.LASF130:
	.string	"access"
.LASF142:
	.string	"tcflow"
.LASF125:
	.string	"ioctl_p"
.LASF50:
	.string	"st_atime"
.LASF75:
	.string	"c_iflag"
.LASF81:
	.string	"c_ospeed"
.LASF8:
	.string	"__int32_t"
.LASF110:
	.string	"readdir"
.LASF170:
	.string	"lwip_stop_socket_select"
.LASF119:
	.string	"mkdir_p"
.LASF49:
	.string	"st_size"
.LASF173:
	.string	"memset"
.LASF89:
	.string	"write"
.LASF140:
	.string	"tcflush"
.LASF154:
	.string	"woken"
.LASF104:
	.string	"unlink"
.LASF18:
	.string	"sizetype"
.LASF94:
	.string	"open_p"
.LASF36:
	.string	"fd_mask"
.LASF95:
	.string	"open"
.LASF14:
	.string	"__dev_t"
.LASF69:
	.string	"tv_sec"
.LASF21:
	.string	"__gnuc_va_list"
.LASF84:
	.string	"dirent"
.LASF137:
	.string	"tcdrain_p"
.LASF85:
	.string	"d_ino"
.LASF168:
	.string	"/home/raphael/rtone/lcd/build/lwip"
.LASF12:
	.string	"_off_t"
.LASF29:
	.string	"dev_t"
.LASF26:
	.string	"time_t"
.LASF98:
	.string	"fstat_p"
.LASF96:
	.string	"close_p"
.LASF38:
	.string	"_types_fd_set"
.LASF171:
	.string	"esp_vfs_lwip_sockets_register"
.LASF160:
	.string	"sys_sem_signal_isr"
.LASF72:
	.string	"speed_t"
.LASF117:
	.string	"closedir_p"
.LASF79:
	.string	"c_cc"
.LASF128:
	.string	"fsync"
.LASF108:
	.string	"opendir"
.LASF45:
	.string	"st_nlink"
.LASF64:
	.string	"_Bool"
.LASF61:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF143:
	.string	"tcgetsid_p"
.LASF88:
	.string	"write_p"
.LASF86:
	.string	"d_type"
.LASF131:
	.string	"truncate_p"
.LASF166:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF39:
	.string	"fds_bits"
.LASF115:
	.string	"seekdir_p"
.LASF6:
	.string	"short int"
.LASF77:
	.string	"c_cflag"
.LASF56:
	.string	"st_blksize"
.LASF129:
	.string	"access_p"
.LASF22:
	.string	"__va_stk"
.LASF172:
	.string	"__func__"
.LASF54:
	.string	"st_ctime"
.LASF153:
	.string	"esp_vfs_t"
.LASF105:
	.string	"rename_p"
.LASF161:
	.string	"sys_sem_signal"
.LASF62:
	.string	"uint32_t"
.LASF159:
	.string	"sys_thread_sem_get"
.LASF48:
	.string	"st_rdev"
.LASF139:
	.string	"tcflush_p"
.LASF53:
	.string	"st_spare2"
.LASF55:
	.string	"st_spare3"
.LASF20:
	.string	"char"
.LASF169:
	.string	"lwip_stop_socket_select_isr"
.LASF0:
	.string	"unsigned int"
.LASF116:
	.string	"seekdir"
.LASF7:
	.string	"__uint16_t"
.LASF59:
	.string	"uint8_t"
.LASF127:
	.string	"fsync_p"
.LASF101:
	.string	"link_p"
.LASF126:
	.string	"ioctl"
.LASF15:
	.string	"__uid_t"
.LASF44:
	.string	"st_mode"
.LASF157:
	.string	"lwip_fcntl_r_wrapper"
.LASF47:
	.string	"st_gid"
.LASF113:
	.string	"telldir_p"
.LASF70:
	.string	"tv_usec"
.LASF163:
	.string	"lwip_fcntl_r"
.LASF124:
	.string	"fcntl"
.LASF138:
	.string	"tcdrain"
.LASF63:
	.string	"esp_err_t"
.LASF122:
	.string	"rmdir"
.LASF34:
	.string	"mode_t"
.LASF42:
	.string	"st_dev"
.LASF156:
	.string	"lwip_ioctl_r_wrapper"
.LASF17:
	.string	"_ssize_t"
.LASF167:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/lwip/port/esp32/vfs_lwip.c"
.LASF147:
	.string	"flags"
.LASF99:
	.string	"fstat"
.LASF93:
	.string	"read"
.LASF164:
	.string	"esp_vfs_register_fd_range"
.LASF32:
	.string	"pid_t"
.LASF134:
	.string	"tcsetattr"
.LASF135:
	.string	"tcgetattr_p"
.LASF24:
	.string	"__va_ndx"
.LASF141:
	.string	"tcflow_p"
.LASF155:
	.string	"args"
.LASF100:
	.string	"stat_p"
.LASF52:
	.string	"st_mtime"
.LASF37:
	.string	"__va_list_tag"
.LASF27:
	.string	"ino_t"
.LASF109:
	.string	"readdir_p"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
