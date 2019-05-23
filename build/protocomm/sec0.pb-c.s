	.file	"sec0.pb-c.c"
	.text
.Ltext0:
	.section	.text.s0_session_cmd__init,"ax",@progbits
	.literal_position
	.literal .LC0, s0_session_cmd__descriptor
	.align	4
	.global	s0_session_cmd__init
	.type	s0_session_cmd__init, @function
s0_session_cmd__init:
.LFB0:
	.file 1 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/proto-c/sec0.pb-c.c"
	.loc 1 12 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 14 0
	l32r	a8, .LC0
	s32i.n	a8, a2, 0
	movi.n	a8, 0
	s32i.n	a8, a2, 4
	s32i.n	a8, a2, 8
	retw.n
.LFE0:
	.size	s0_session_cmd__init, .-s0_session_cmd__init
	.section	.text.s0_session_resp__init,"ax",@progbits
	.literal_position
	.literal .LC1, s0_session_resp__descriptor
	.align	4
	.global	s0_session_resp__init
	.type	s0_session_resp__init, @function
s0_session_resp__init:
.LFB6:
	.loc 1 57 0
.LVL1:
	entry	sp, 32
.LCFI1:
	.loc 1 59 0
	l32r	a8, .LC1
	s32i.n	a8, a2, 0
	movi.n	a8, 0
	s32i.n	a8, a2, 4
	s32i.n	a8, a2, 8
	s32i.n	a8, a2, 12
	retw.n
.LFE6:
	.size	s0_session_resp__init, .-s0_session_resp__init
	.section	.text.sec0_payload__init,"ax",@progbits
	.literal_position
	.literal .LC2, sec0_payload__descriptor
	.align	4
	.global	sec0_payload__init
	.type	sec0_payload__init, @function
sec0_payload__init:
.LFB12:
	.loc 1 102 0
.LVL2:
	entry	sp, 32
.LCFI2:
	.loc 1 104 0
	l32r	a8, .LC2
	s32i.n	a8, a2, 0
	movi.n	a8, 0
	s32i.n	a8, a2, 4
	s32i.n	a8, a2, 8
	s32i.n	a8, a2, 12
	s32i.n	a8, a2, 16
	s32i.n	a8, a2, 20
	retw.n
.LFE12:
	.size	sec0_payload__init, .-sec0_payload__init
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC4:
	.string	"message->base.descriptor == &s0_session_cmd__descriptor"
	.align	4
.LC7:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/proto-c/sec0.pb-c.c"
	.section	.text.s0_session_cmd__get_packed_size,"ax",@progbits
	.literal_position
	.literal .LC3, s0_session_cmd__descriptor
	.literal .LC5, .LC4
	.literal .LC6, __func__$2450
	.literal .LC8, .LC7
	.align	4
	.global	s0_session_cmd__get_packed_size
	.type	s0_session_cmd__get_packed_size, @function
s0_session_cmd__get_packed_size:
.LFB1:
	.loc 1 18 0
.LVL3:
	entry	sp, 32
.LCFI3:
	.loc 1 19 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC3
	beq	a9, a8, .L5
	.loc 1 19 0 is_stmt 0 discriminator 1
	l32r	a13, .LC5
	l32r	a12, .LC6
	movi.n	a11, 0x13
	l32r	a10, .LC8
	call8	__assert_func
.LVL4:
.L5:
	.loc 1 20 0 is_stmt 1
	mov.n	a10, a2
	call8	protobuf_c_message_get_packed_size
.LVL5:
	.loc 1 21 0
	mov.n	a2, a10
.LVL6:
	retw.n
.LFE1:
	.size	s0_session_cmd__get_packed_size, .-s0_session_cmd__get_packed_size
	.section	.text.s0_session_cmd__pack,"ax",@progbits
	.literal_position
	.literal .LC9, s0_session_cmd__descriptor
	.literal .LC10, .LC4
	.literal .LC11, __func__$2455
	.literal .LC12, .LC7
	.align	4
	.global	s0_session_cmd__pack
	.type	s0_session_cmd__pack, @function
s0_session_cmd__pack:
.LFB2:
	.loc 1 25 0
.LVL7:
	entry	sp, 32
.LCFI4:
	.loc 1 26 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC9
	beq	a9, a8, .L7
	.loc 1 26 0 is_stmt 0 discriminator 1
	l32r	a13, .LC10
	l32r	a12, .LC11
	movi.n	a11, 0x1a
	l32r	a10, .LC12
	call8	__assert_func
.LVL8:
.L7:
	.loc 1 27 0 is_stmt 1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	protobuf_c_message_pack
.LVL9:
	.loc 1 28 0
	mov.n	a2, a10
.LVL10:
	retw.n
.LFE2:
	.size	s0_session_cmd__pack, .-s0_session_cmd__pack
	.section	.text.s0_session_cmd__pack_to_buffer,"ax",@progbits
	.literal_position
	.literal .LC13, s0_session_cmd__descriptor
	.literal .LC14, .LC4
	.literal .LC15, __func__$2460
	.literal .LC16, .LC7
	.align	4
	.global	s0_session_cmd__pack_to_buffer
	.type	s0_session_cmd__pack_to_buffer, @function
s0_session_cmd__pack_to_buffer:
.LFB3:
	.loc 1 32 0
.LVL11:
	entry	sp, 32
.LCFI5:
	.loc 1 33 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC13
	beq	a9, a8, .L9
	.loc 1 33 0 is_stmt 0 discriminator 1
	l32r	a13, .LC14
	l32r	a12, .LC15
	movi.n	a11, 0x21
	l32r	a10, .LC16
	call8	__assert_func
.LVL12:
.L9:
	.loc 1 34 0 is_stmt 1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	protobuf_c_message_pack_to_buffer
.LVL13:
	.loc 1 35 0
	mov.n	a2, a10
.LVL14:
	retw.n
.LFE3:
	.size	s0_session_cmd__pack_to_buffer, .-s0_session_cmd__pack_to_buffer
	.section	.text.s0_session_cmd__unpack,"ax",@progbits
	.literal_position
	.literal .LC17, s0_session_cmd__descriptor
	.align	4
	.global	s0_session_cmd__unpack
	.type	s0_session_cmd__unpack, @function
s0_session_cmd__unpack:
.LFB4:
	.loc 1 41 0
.LVL15:
	entry	sp, 32
.LCFI6:
	.loc 1 42 0
	mov.n	a13, a4
	mov.n	a12, a3
	mov.n	a11, a2
	l32r	a10, .LC17
	call8	protobuf_c_message_unpack
.LVL16:
	.loc 1 45 0
	mov.n	a2, a10
.LVL17:
	retw.n
.LFE4:
	.size	s0_session_cmd__unpack, .-s0_session_cmd__unpack
	.section	.text.s0_session_cmd__free_unpacked,"ax",@progbits
	.literal_position
	.literal .LC18, s0_session_cmd__descriptor
	.literal .LC19, .LC4
	.literal .LC20, __func__$2470
	.literal .LC21, .LC7
	.align	4
	.global	s0_session_cmd__free_unpacked
	.type	s0_session_cmd__free_unpacked, @function
s0_session_cmd__free_unpacked:
.LFB5:
	.loc 1 49 0
.LVL18:
	entry	sp, 32
.LCFI7:
	.loc 1 50 0
	beqz.n	a2, .L11
	.loc 1 52 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC18
	beq	a9, a8, .L13
	.loc 1 52 0 is_stmt 0 discriminator 1
	l32r	a13, .LC19
	l32r	a12, .LC20
	movi.n	a11, 0x34
	l32r	a10, .LC21
	call8	__assert_func
.LVL19:
.L13:
	.loc 1 53 0 is_stmt 1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	protobuf_c_message_free_unpacked
.LVL20:
.L11:
	retw.n
.LFE5:
	.size	s0_session_cmd__free_unpacked, .-s0_session_cmd__free_unpacked
	.section	.rodata.str1.4
	.align	4
.LC23:
	.string	"message->base.descriptor == &s0_session_resp__descriptor"
	.section	.text.s0_session_resp__get_packed_size,"ax",@progbits
	.literal_position
	.literal .LC22, s0_session_resp__descriptor
	.literal .LC24, .LC23
	.literal .LC25, __func__$2478
	.literal .LC26, .LC7
	.align	4
	.global	s0_session_resp__get_packed_size
	.type	s0_session_resp__get_packed_size, @function
s0_session_resp__get_packed_size:
.LFB7:
	.loc 1 63 0
.LVL21:
	entry	sp, 32
.LCFI8:
	.loc 1 64 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC22
	beq	a9, a8, .L15
	.loc 1 64 0 is_stmt 0 discriminator 1
	l32r	a13, .LC24
	l32r	a12, .LC25
	movi.n	a11, 0x40
	l32r	a10, .LC26
	call8	__assert_func
.LVL22:
.L15:
	.loc 1 65 0 is_stmt 1
	mov.n	a10, a2
	call8	protobuf_c_message_get_packed_size
.LVL23:
	.loc 1 66 0
	mov.n	a2, a10
.LVL24:
	retw.n
.LFE7:
	.size	s0_session_resp__get_packed_size, .-s0_session_resp__get_packed_size
	.section	.text.s0_session_resp__pack,"ax",@progbits
	.literal_position
	.literal .LC27, s0_session_resp__descriptor
	.literal .LC28, .LC23
	.literal .LC29, __func__$2483
	.literal .LC30, .LC7
	.align	4
	.global	s0_session_resp__pack
	.type	s0_session_resp__pack, @function
s0_session_resp__pack:
.LFB8:
	.loc 1 70 0
.LVL25:
	entry	sp, 32
.LCFI9:
	.loc 1 71 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC27
	beq	a9, a8, .L17
	.loc 1 71 0 is_stmt 0 discriminator 1
	l32r	a13, .LC28
	l32r	a12, .LC29
	movi.n	a11, 0x47
	l32r	a10, .LC30
	call8	__assert_func
.LVL26:
.L17:
	.loc 1 72 0 is_stmt 1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	protobuf_c_message_pack
.LVL27:
	.loc 1 73 0
	mov.n	a2, a10
.LVL28:
	retw.n
.LFE8:
	.size	s0_session_resp__pack, .-s0_session_resp__pack
	.section	.text.s0_session_resp__pack_to_buffer,"ax",@progbits
	.literal_position
	.literal .LC31, s0_session_resp__descriptor
	.literal .LC32, .LC23
	.literal .LC33, __func__$2488
	.literal .LC34, .LC7
	.align	4
	.global	s0_session_resp__pack_to_buffer
	.type	s0_session_resp__pack_to_buffer, @function
s0_session_resp__pack_to_buffer:
.LFB9:
	.loc 1 77 0
.LVL29:
	entry	sp, 32
.LCFI10:
	.loc 1 78 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC31
	beq	a9, a8, .L19
	.loc 1 78 0 is_stmt 0 discriminator 1
	l32r	a13, .LC32
	l32r	a12, .LC33
	movi.n	a11, 0x4e
	l32r	a10, .LC34
	call8	__assert_func
.LVL30:
.L19:
	.loc 1 79 0 is_stmt 1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	protobuf_c_message_pack_to_buffer
.LVL31:
	.loc 1 80 0
	mov.n	a2, a10
.LVL32:
	retw.n
.LFE9:
	.size	s0_session_resp__pack_to_buffer, .-s0_session_resp__pack_to_buffer
	.section	.text.s0_session_resp__unpack,"ax",@progbits
	.literal_position
	.literal .LC35, s0_session_resp__descriptor
	.align	4
	.global	s0_session_resp__unpack
	.type	s0_session_resp__unpack, @function
s0_session_resp__unpack:
.LFB10:
	.loc 1 86 0
.LVL33:
	entry	sp, 32
.LCFI11:
	.loc 1 87 0
	mov.n	a13, a4
	mov.n	a12, a3
	mov.n	a11, a2
	l32r	a10, .LC35
	call8	protobuf_c_message_unpack
.LVL34:
	.loc 1 90 0
	mov.n	a2, a10
.LVL35:
	retw.n
.LFE10:
	.size	s0_session_resp__unpack, .-s0_session_resp__unpack
	.section	.text.s0_session_resp__free_unpacked,"ax",@progbits
	.literal_position
	.literal .LC36, s0_session_resp__descriptor
	.literal .LC37, .LC23
	.literal .LC38, __func__$2498
	.literal .LC39, .LC7
	.align	4
	.global	s0_session_resp__free_unpacked
	.type	s0_session_resp__free_unpacked, @function
s0_session_resp__free_unpacked:
.LFB11:
	.loc 1 94 0
.LVL36:
	entry	sp, 32
.LCFI12:
	.loc 1 95 0
	beqz.n	a2, .L21
	.loc 1 97 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC36
	beq	a9, a8, .L23
	.loc 1 97 0 is_stmt 0 discriminator 1
	l32r	a13, .LC37
	l32r	a12, .LC38
	movi	a11, 0x61
	l32r	a10, .LC39
	call8	__assert_func
.LVL37:
.L23:
	.loc 1 98 0 is_stmt 1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	protobuf_c_message_free_unpacked
.LVL38:
.L21:
	retw.n
.LFE11:
	.size	s0_session_resp__free_unpacked, .-s0_session_resp__free_unpacked
	.section	.rodata.str1.4
	.align	4
.LC41:
	.string	"message->base.descriptor == &sec0_payload__descriptor"
	.section	.text.sec0_payload__get_packed_size,"ax",@progbits
	.literal_position
	.literal .LC40, sec0_payload__descriptor
	.literal .LC42, .LC41
	.literal .LC43, __func__$2506
	.literal .LC44, .LC7
	.align	4
	.global	sec0_payload__get_packed_size
	.type	sec0_payload__get_packed_size, @function
sec0_payload__get_packed_size:
.LFB13:
	.loc 1 108 0
.LVL39:
	entry	sp, 32
.LCFI13:
	.loc 1 109 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC40
	beq	a9, a8, .L25
	.loc 1 109 0 is_stmt 0 discriminator 1
	l32r	a13, .LC42
	l32r	a12, .LC43
	movi	a11, 0x6d
	l32r	a10, .LC44
	call8	__assert_func
.LVL40:
.L25:
	.loc 1 110 0 is_stmt 1
	mov.n	a10, a2
	call8	protobuf_c_message_get_packed_size
.LVL41:
	.loc 1 111 0
	mov.n	a2, a10
.LVL42:
	retw.n
.LFE13:
	.size	sec0_payload__get_packed_size, .-sec0_payload__get_packed_size
	.section	.text.sec0_payload__pack,"ax",@progbits
	.literal_position
	.literal .LC45, sec0_payload__descriptor
	.literal .LC46, .LC41
	.literal .LC47, __func__$2511
	.literal .LC48, .LC7
	.align	4
	.global	sec0_payload__pack
	.type	sec0_payload__pack, @function
sec0_payload__pack:
.LFB14:
	.loc 1 115 0
.LVL43:
	entry	sp, 32
.LCFI14:
	.loc 1 116 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC45
	beq	a9, a8, .L27
	.loc 1 116 0 is_stmt 0 discriminator 1
	l32r	a13, .LC46
	l32r	a12, .LC47
	movi	a11, 0x74
	l32r	a10, .LC48
	call8	__assert_func
.LVL44:
.L27:
	.loc 1 117 0 is_stmt 1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	protobuf_c_message_pack
.LVL45:
	.loc 1 118 0
	mov.n	a2, a10
.LVL46:
	retw.n
.LFE14:
	.size	sec0_payload__pack, .-sec0_payload__pack
	.section	.text.sec0_payload__pack_to_buffer,"ax",@progbits
	.literal_position
	.literal .LC49, sec0_payload__descriptor
	.literal .LC50, .LC41
	.literal .LC51, __func__$2516
	.literal .LC52, .LC7
	.align	4
	.global	sec0_payload__pack_to_buffer
	.type	sec0_payload__pack_to_buffer, @function
sec0_payload__pack_to_buffer:
.LFB15:
	.loc 1 122 0
.LVL47:
	entry	sp, 32
.LCFI15:
	.loc 1 123 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC49
	beq	a9, a8, .L29
	.loc 1 123 0 is_stmt 0 discriminator 1
	l32r	a13, .LC50
	l32r	a12, .LC51
	movi	a11, 0x7b
	l32r	a10, .LC52
	call8	__assert_func
.LVL48:
.L29:
	.loc 1 124 0 is_stmt 1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	protobuf_c_message_pack_to_buffer
.LVL49:
	.loc 1 125 0
	mov.n	a2, a10
.LVL50:
	retw.n
.LFE15:
	.size	sec0_payload__pack_to_buffer, .-sec0_payload__pack_to_buffer
	.section	.text.sec0_payload__unpack,"ax",@progbits
	.literal_position
	.literal .LC53, sec0_payload__descriptor
	.align	4
	.global	sec0_payload__unpack
	.type	sec0_payload__unpack, @function
sec0_payload__unpack:
.LFB16:
	.loc 1 131 0
.LVL51:
	entry	sp, 32
.LCFI16:
	.loc 1 132 0
	mov.n	a13, a4
	mov.n	a12, a3
	mov.n	a11, a2
	l32r	a10, .LC53
	call8	protobuf_c_message_unpack
.LVL52:
	.loc 1 135 0
	mov.n	a2, a10
.LVL53:
	retw.n
.LFE16:
	.size	sec0_payload__unpack, .-sec0_payload__unpack
	.section	.text.sec0_payload__free_unpacked,"ax",@progbits
	.literal_position
	.literal .LC54, sec0_payload__descriptor
	.literal .LC55, .LC41
	.literal .LC56, __func__$2526
	.literal .LC57, .LC7
	.align	4
	.global	sec0_payload__free_unpacked
	.type	sec0_payload__free_unpacked, @function
sec0_payload__free_unpacked:
.LFB17:
	.loc 1 139 0
.LVL54:
	entry	sp, 32
.LCFI17:
	.loc 1 140 0
	beqz.n	a2, .L31
	.loc 1 142 0
	l32i.n	a9, a2, 0
	l32r	a8, .LC54
	beq	a9, a8, .L33
	.loc 1 142 0 is_stmt 0 discriminator 1
	l32r	a13, .LC55
	l32r	a12, .LC56
	movi	a11, 0x8e
	l32r	a10, .LC57
	call8	__assert_func
.LVL55:
.L33:
	.loc 1 143 0 is_stmt 1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	protobuf_c_message_free_unpacked
.LVL56:
.L31:
	retw.n
.LFE17:
	.size	sec0_payload__free_unpacked, .-sec0_payload__free_unpacked
	.section	.rodata.__func__$2526,"a",@progbits
	.align	4
	.type	__func__$2526, @object
	.size	__func__$2526, 28
__func__$2526:
	.string	"sec0_payload__free_unpacked"
	.section	.rodata.__func__$2516,"a",@progbits
	.align	4
	.type	__func__$2516, @object
	.size	__func__$2516, 29
__func__$2516:
	.string	"sec0_payload__pack_to_buffer"
	.section	.rodata.__func__$2511,"a",@progbits
	.align	4
	.type	__func__$2511, @object
	.size	__func__$2511, 19
__func__$2511:
	.string	"sec0_payload__pack"
	.section	.rodata.__func__$2506,"a",@progbits
	.align	4
	.type	__func__$2506, @object
	.size	__func__$2506, 30
__func__$2506:
	.string	"sec0_payload__get_packed_size"
	.section	.rodata.__func__$2498,"a",@progbits
	.align	4
	.type	__func__$2498, @object
	.size	__func__$2498, 31
__func__$2498:
	.string	"s0_session_resp__free_unpacked"
	.section	.rodata.__func__$2488,"a",@progbits
	.align	4
	.type	__func__$2488, @object
	.size	__func__$2488, 32
__func__$2488:
	.string	"s0_session_resp__pack_to_buffer"
	.section	.rodata.__func__$2483,"a",@progbits
	.align	4
	.type	__func__$2483, @object
	.size	__func__$2483, 22
__func__$2483:
	.string	"s0_session_resp__pack"
	.section	.rodata.__func__$2478,"a",@progbits
	.align	4
	.type	__func__$2478, @object
	.size	__func__$2478, 33
__func__$2478:
	.string	"s0_session_resp__get_packed_size"
	.section	.rodata.__func__$2470,"a",@progbits
	.align	4
	.type	__func__$2470, @object
	.size	__func__$2470, 30
__func__$2470:
	.string	"s0_session_cmd__free_unpacked"
	.section	.rodata.__func__$2460,"a",@progbits
	.align	4
	.type	__func__$2460, @object
	.size	__func__$2460, 31
__func__$2460:
	.string	"s0_session_cmd__pack_to_buffer"
	.section	.rodata.__func__$2455,"a",@progbits
	.align	4
	.type	__func__$2455, @object
	.size	__func__$2455, 21
__func__$2455:
	.string	"s0_session_cmd__pack"
	.section	.rodata.__func__$2450,"a",@progbits
	.align	4
	.type	__func__$2450, @object
	.size	__func__$2450, 32
__func__$2450:
	.string	"s0_session_cmd__get_packed_size"
	.global	sec0_msg_type__descriptor
	.section	.rodata.str1.4
	.align	4
.LC58:
	.string	"Sec0MsgType"
	.align	4
.LC59:
	.string	""
	.section	.rodata.sec0_msg_type__descriptor,"a",@progbits
	.align	4
	.type	sec0_msg_type__descriptor, @object
	.size	sec0_msg_type__descriptor, 60
sec0_msg_type__descriptor:
	.word	289609135
	.word	.LC58
	.word	.LC58
	.word	.LC58
	.word	.LC59
	.word	2
	.word	sec0_msg_type__enum_values_by_number
	.word	2
	.word	sec0_msg_type__enum_values_by_name
	.word	1
	.word	sec0_msg_type__value_ranges
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata.str1.4
	.align	4
.LC60:
	.string	"S0_Session_Command"
	.align	4
.LC61:
	.string	"S0_Session_Response"
	.section	.rodata.sec0_msg_type__enum_values_by_name,"a",@progbits
	.align	4
	.type	sec0_msg_type__enum_values_by_name, @object
	.size	sec0_msg_type__enum_values_by_name, 16
sec0_msg_type__enum_values_by_name:
	.word	.LC60
	.word	0
	.word	.LC61
	.word	1
	.section	.rodata.sec0_msg_type__value_ranges,"a",@progbits
	.align	4
	.type	sec0_msg_type__value_ranges, @object
	.size	sec0_msg_type__value_ranges, 16
sec0_msg_type__value_ranges:
	.word	0
	.word	0
	.word	0
	.word	2
	.section	.rodata.str1.4
	.align	4
.LC62:
	.string	"SEC0_MSG_TYPE__S0_Session_Command"
	.align	4
.LC63:
	.string	"SEC0_MSG_TYPE__S0_Session_Response"
	.section	.rodata.sec0_msg_type__enum_values_by_number,"a",@progbits
	.align	4
	.type	sec0_msg_type__enum_values_by_number, @object
	.size	sec0_msg_type__enum_values_by_number, 24
sec0_msg_type__enum_values_by_number:
	.word	.LC60
	.word	.LC62
	.word	0
	.word	.LC61
	.word	.LC63
	.word	1
	.global	sec0_payload__descriptor
	.section	.rodata.str1.4
	.align	4
.LC64:
	.string	"Sec0Payload"
	.section	.rodata.sec0_payload__descriptor,"a",@progbits
	.align	4
	.type	sec0_payload__descriptor, @object
	.size	sec0_payload__descriptor, 60
sec0_payload__descriptor:
	.word	682290937
	.word	.LC64
	.word	.LC64
	.word	.LC64
	.word	.LC59
	.word	24
	.word	3
	.word	sec0_payload__field_descriptors
	.word	sec0_payload__field_indices_by_name
	.word	2
	.word	sec0_payload__number_ranges
	.word	sec0_payload__init
	.word	0
	.word	0
	.word	0
	.section	.rodata.sec0_payload__number_ranges,"a",@progbits
	.align	4
	.type	sec0_payload__number_ranges, @object
	.size	sec0_payload__number_ranges, 24
sec0_payload__number_ranges:
	.word	1
	.word	0
	.word	20
	.word	1
	.word	0
	.word	3
	.section	.rodata.sec0_payload__field_indices_by_name,"a",@progbits
	.align	4
	.type	sec0_payload__field_indices_by_name, @object
	.size	sec0_payload__field_indices_by_name, 12
sec0_payload__field_indices_by_name:
	.word	0
	.word	1
	.word	2
	.section	.rodata.str1.4
	.align	4
.LC65:
	.string	"msg"
	.align	4
.LC66:
	.string	"sc"
	.align	4
.LC67:
	.string	"sr"
	.section	.rodata.sec0_payload__field_descriptors,"a",@progbits
	.align	4
	.type	sec0_payload__field_descriptors, @object
	.size	sec0_payload__field_descriptors, 144
sec0_payload__field_descriptors:
	.word	.LC65
	.word	1
	.word	3
	.word	13
	.word	0
	.word	12
	.word	sec0_msg_type__descriptor
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	.LC66
	.word	20
	.word	3
	.word	16
	.word	16
	.word	20
	.word	s0_session_cmd__descriptor
	.word	0
	.word	4
	.word	0
	.word	0
	.word	0
	.word	.LC67
	.word	21
	.word	3
	.word	16
	.word	16
	.word	20
	.word	s0_session_resp__descriptor
	.word	0
	.word	4
	.word	0
	.word	0
	.word	0
	.global	s0_session_resp__descriptor
	.section	.rodata.str1.4
	.align	4
.LC68:
	.string	"S0SessionResp"
	.section	.rodata.s0_session_resp__descriptor,"a",@progbits
	.align	4
	.type	s0_session_resp__descriptor, @object
	.size	s0_session_resp__descriptor, 60
s0_session_resp__descriptor:
	.word	682290937
	.word	.LC68
	.word	.LC68
	.word	.LC68
	.word	.LC59
	.word	16
	.word	1
	.word	s0_session_resp__field_descriptors
	.word	s0_session_resp__field_indices_by_name
	.word	1
	.word	s0_session_resp__number_ranges
	.word	s0_session_resp__init
	.word	0
	.word	0
	.word	0
	.section	.rodata.s0_session_resp__number_ranges,"a",@progbits
	.align	4
	.type	s0_session_resp__number_ranges, @object
	.size	s0_session_resp__number_ranges, 16
s0_session_resp__number_ranges:
	.word	1
	.word	0
	.word	0
	.word	1
	.section	.rodata.s0_session_resp__field_indices_by_name,"a",@progbits
	.align	4
	.type	s0_session_resp__field_indices_by_name, @object
	.size	s0_session_resp__field_indices_by_name, 4
s0_session_resp__field_indices_by_name:
	.zero	4
	.section	.rodata.str1.4
	.align	4
.LC69:
	.string	"status"
	.section	.rodata.s0_session_resp__field_descriptors,"a",@progbits
	.align	4
	.type	s0_session_resp__field_descriptors, @object
	.size	s0_session_resp__field_descriptors, 48
s0_session_resp__field_descriptors:
	.word	.LC69
	.word	1
	.word	3
	.word	13
	.word	0
	.word	12
	.word	status__descriptor
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.global	s0_session_cmd__descriptor
	.section	.rodata.str1.4
	.align	4
.LC70:
	.string	"S0SessionCmd"
	.section	.rodata.s0_session_cmd__descriptor,"a",@progbits
	.align	4
	.type	s0_session_cmd__descriptor, @object
	.size	s0_session_cmd__descriptor, 60
s0_session_cmd__descriptor:
	.word	682290937
	.word	.LC70
	.word	.LC70
	.word	.LC70
	.word	.LC59
	.word	12
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	s0_session_cmd__init
	.word	0
	.word	0
	.word	0
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI1-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI2-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI3-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI4-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI5-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI6-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI7-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI8-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI9-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI10-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI11-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI12-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI13-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI14-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI15-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI16-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI17-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
	.text
.Letext0:
	.file 2 "/home/raphael/espressif/tools/esp32-toolchain/linux/xtensa-esp32-elf/lib/gcc/xtensa-esp32-elf/5.2.0/include/stddef.h"
	.file 3 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/machine/_default_types.h"
	.file 4 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/stdint.h"
	.file 5 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protobuf-c/protobuf-c/protobuf-c/protobuf-c.h"
	.file 6 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/proto-c/constants.pb-c.h"
	.file 7 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/proto-c/sec0.pb-c.h"
	.file 8 "/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x12df
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF173
	.byte	0xc
	.4byte	.LASF174
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0xd8
	.4byte	0x2c
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
	.byte	0x3
	.byte	0x12
	.4byte	0x53
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
	.byte	0x3
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9e
	.uleb128 0x7
	.4byte	0x91
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa9
	.uleb128 0x8
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0x15
	.4byte	0x48
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2d
	.4byte	0x61
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0xff
	.4byte	0xdf
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.2byte	0x112
	.4byte	0x105
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x128
	.4byte	0xdf
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.2byte	0x132
	.4byte	0x185
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x5
	.2byte	0x144
	.4byte	0x111
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.2byte	0x14e
	.4byte	0x1b7
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x5
	.2byte	0x154
	.4byte	0x191
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x5
	.2byte	0x166
	.4byte	0x1cf
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0xc
	.byte	0x5
	.2byte	0x180
	.4byte	0x204
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x5
	.2byte	0x182
	.4byte	0x609
	.byte	0
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x5
	.2byte	0x185
	.4byte	0x61f
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x5
	.2byte	0x188
	.4byte	0x88
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x5
	.2byte	0x168
	.4byte	0x210
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x4
	.byte	0x5
	.2byte	0x1ba
	.4byte	0x22b
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x5
	.2byte	0x1bc
	.4byte	0x651
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x5
	.2byte	0x16a
	.4byte	0x237
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x3c
	.byte	0x5
	.2byte	0x1ef
	.4byte	0x308
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x5
	.2byte	0x1f1
	.4byte	0xb5
	.byte	0
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x1f4
	.4byte	0x98
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x1f6
	.4byte	0x98
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x1f8
	.4byte	0x98
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x1fa
	.4byte	0x98
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x1fd
	.4byte	0x2c
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x1ff
	.4byte	0x65d
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x202
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x204
	.4byte	0x668
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x207
	.4byte	0x2c
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x209
	.4byte	0x673
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x20c
	.4byte	0x88
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x20e
	.4byte	0x88
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x210
	.4byte	0x88
	.byte	0x34
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x212
	.4byte	0x88
	.byte	0x38
	.byte	0
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x16b
	.4byte	0x314
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0xc
	.byte	0x5
	.2byte	0x218
	.4byte	0x349
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x21a
	.4byte	0x98
	.byte	0
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x21d
	.4byte	0x98
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x220
	.4byte	0x3a
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x16c
	.4byte	0x355
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x8
	.byte	0x5
	.2byte	0x226
	.4byte	0x37d
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x228
	.4byte	0x98
	.byte	0
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x22a
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x16d
	.4byte	0x389
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x30
	.byte	0x5
	.2byte	0x230
	.4byte	0x432
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x232
	.4byte	0x98
	.byte	0
	.uleb128 0xf
	.string	"id"
	.byte	0x5
	.2byte	0x235
	.4byte	0xb5
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x238
	.4byte	0x105
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x23b
	.4byte	0x185
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x242
	.4byte	0x2c
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x248
	.4byte	0x2c
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x255
	.4byte	0xa3
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x258
	.4byte	0xa3
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x25e
	.4byte	0xb5
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x261
	.4byte	0x2c
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x263
	.4byte	0x88
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x265
	.4byte	0x88
	.byte	0x2c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x16e
	.4byte	0x43e
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0x8
	.byte	0x5
	.2byte	0x270
	.4byte	0x466
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x271
	.4byte	0x3a
	.byte	0
	.uleb128 0xe
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x272
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x16f
	.4byte	0x472
	.uleb128 0xd
	.4byte	.LASF85
	.byte	0xc
	.byte	0x5
	.2byte	0x289
	.4byte	0x4a7
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x28b
	.4byte	0x67e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x28d
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x28f
	.4byte	0x689
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x170
	.4byte	0x4b3
	.uleb128 0xd
	.4byte	.LASF88
	.byte	0x3c
	.byte	0x5
	.2byte	0x295
	.4byte	0x584
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x5
	.2byte	0x297
	.4byte	0xb5
	.byte	0
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x29a
	.4byte	0x98
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x29c
	.4byte	0x98
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x29e
	.4byte	0x98
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x2a0
	.4byte	0x98
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x2a6
	.4byte	0x21
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x2a9
	.4byte	0x2c
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x2ab
	.4byte	0x68f
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x2ad
	.4byte	0x69a
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x2b0
	.4byte	0x2c
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x2b2
	.4byte	0x673
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x2b5
	.4byte	0x5d2
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x2b8
	.4byte	0x88
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x2ba
	.4byte	0x88
	.byte	0x34
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x2bc
	.4byte	0x88
	.byte	0x38
	.byte	0
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x171
	.4byte	0x590
	.uleb128 0xd
	.4byte	.LASF96
	.byte	0x10
	.byte	0x5
	.2byte	0x2c2
	.4byte	0x5d2
	.uleb128 0xf
	.string	"tag"
	.byte	0x5
	.2byte	0x2c4
	.4byte	0xb5
	.byte	0
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x2c6
	.4byte	0x1b7
	.byte	0x4
	.uleb128 0xf
	.string	"len"
	.byte	0x5
	.2byte	0x2c8
	.4byte	0x21
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x2ca
	.4byte	0x625
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x17a
	.4byte	0x5de
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5e4
	.uleb128 0x10
	.4byte	0x5ef
	.uleb128 0x11
	.4byte	0x5ef
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x466
	.uleb128 0x12
	.4byte	0x88
	.4byte	0x609
	.uleb128 0x11
	.4byte	0x88
	.uleb128 0x11
	.4byte	0x21
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5f5
	.uleb128 0x10
	.4byte	0x61f
	.uleb128 0x11
	.4byte	0x88
	.uleb128 0x11
	.4byte	0x88
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x60f
	.uleb128 0x6
	.byte	0x4
	.4byte	0xaa
	.uleb128 0x10
	.4byte	0x640
	.uleb128 0x11
	.4byte	0x640
	.uleb128 0x11
	.4byte	0x21
	.uleb128 0x11
	.4byte	0x646
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x204
	.uleb128 0x6
	.byte	0x4
	.4byte	0x64c
	.uleb128 0x7
	.4byte	0xaa
	.uleb128 0x6
	.byte	0x4
	.4byte	0x62b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x663
	.uleb128 0x7
	.4byte	0x308
	.uleb128 0x6
	.byte	0x4
	.4byte	0x66e
	.uleb128 0x7
	.4byte	0x349
	.uleb128 0x6
	.byte	0x4
	.4byte	0x679
	.uleb128 0x7
	.4byte	0x432
	.uleb128 0x6
	.byte	0x4
	.4byte	0x684
	.uleb128 0x7
	.4byte	0x4a7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x584
	.uleb128 0x6
	.byte	0x4
	.4byte	0x695
	.uleb128 0x7
	.4byte	0x37d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6a0
	.uleb128 0x7
	.4byte	0x2c
	.uleb128 0x13
	.4byte	.LASF119
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x1a
	.4byte	0x6ef
	.uleb128 0xa
	.4byte	.LASF100
	.byte	0
	.uleb128 0xa
	.4byte	.LASF101
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF106
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF107
	.byte	0x7
	.uleb128 0x14
	.4byte	.LASF108
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0x6
	.byte	0x24
	.4byte	0x6a5
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0x7
	.byte	0x13
	.4byte	0x705
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0xc
	.byte	0x7
	.byte	0x28
	.4byte	0x71e
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x7
	.byte	0x2a
	.4byte	0x466
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0x7
	.byte	0x14
	.4byte	0x729
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x10
	.byte	0x7
	.byte	0x34
	.4byte	0x74e
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x7
	.byte	0x36
	.4byte	0x466
	.byte	0
	.uleb128 0x16
	.4byte	.LASF115
	.byte	0x7
	.byte	0x37
	.4byte	0x6ef
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0x7
	.byte	0x15
	.4byte	0x759
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x18
	.byte	0x7
	.byte	0x48
	.4byte	0x790
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x7
	.byte	0x4a
	.4byte	0x466
	.byte	0
	.uleb128 0x17
	.string	"msg"
	.byte	0x7
	.byte	0x4e
	.4byte	0x7b6
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF118
	.byte	0x7
	.byte	0x4f
	.4byte	0x7e9
	.byte	0x10
	.uleb128 0x18
	.4byte	0x7f4
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.4byte	.LASF120
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x1d
	.4byte	0x7b6
	.uleb128 0xa
	.4byte	.LASF121
	.byte	0
	.uleb128 0xa
	.4byte	.LASF122
	.byte	0x1
	.uleb128 0x14
	.4byte	.LASF123
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0x7
	.byte	0x21
	.4byte	0x790
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x3e
	.4byte	0x7e9
	.uleb128 0xa
	.4byte	.LASF125
	.byte	0
	.uleb128 0xa
	.4byte	.LASF126
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF127
	.byte	0x15
	.uleb128 0x14
	.4byte	.LASF128
	.4byte	0x7fffffff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0x7
	.byte	0x43
	.4byte	0x7c1
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.byte	0x50
	.4byte	0x811
	.uleb128 0x1a
	.string	"sc"
	.byte	0x7
	.byte	0x54
	.4byte	0x811
	.uleb128 0x1a
	.string	"sr"
	.byte	0x7
	.byte	0x58
	.4byte	0x817
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6fa
	.uleb128 0x6
	.byte	0x4
	.4byte	0x71e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x823
	.uleb128 0x7
	.4byte	0x6fa
	.uleb128 0x6
	.byte	0x4
	.4byte	0x82e
	.uleb128 0x7
	.4byte	0x71e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x839
	.uleb128 0x7
	.4byte	0x74e
	.uleb128 0x1b
	.4byte	.LASF130
	.byte	0x1
	.byte	0xa
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x86c
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0x1
	.byte	0xb
	.4byte	0x811
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF133
	.byte	0x1
	.byte	0xd
	.4byte	0x823
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF131
	.byte	0x1
	.byte	0x37
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x89a
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0x1
	.byte	0x38
	.4byte	0x817
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF133
	.byte	0x1
	.byte	0x3a
	.4byte	0x82e
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF134
	.byte	0x1
	.byte	0x64
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8c8
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0x1
	.byte	0x65
	.4byte	0x8c8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF133
	.byte	0x1
	.byte	0x67
	.4byte	0x839
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x74e
	.uleb128 0x1e
	.4byte	.LASF136
	.byte	0x1
	.byte	0x10
	.4byte	0x21
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x944
	.uleb128 0x1f
	.4byte	.LASF132
	.byte	0x1
	.byte	0x11
	.4byte	0x81d
	.4byte	.LLST0
	.uleb128 0x20
	.4byte	.LASF135
	.4byte	0x954
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2450
	.uleb128 0x21
	.4byte	.LVL4
	.4byte	0x129b
	.4byte	0x933
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2450
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x23
	.4byte	.LVL5
	.4byte	0x12a6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x91
	.4byte	0x954
	.uleb128 0x25
	.4byte	0x81
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.4byte	0x944
	.uleb128 0x1e
	.4byte	.LASF137
	.byte	0x1
	.byte	0x16
	.4byte	0x21
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e2
	.uleb128 0x1f
	.4byte	.LASF132
	.byte	0x1
	.byte	0x17
	.4byte	0x81d
	.4byte	.LLST1
	.uleb128 0x26
	.string	"out"
	.byte	0x1
	.byte	0x18
	.4byte	0x625
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF135
	.4byte	0x9f2
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2455
	.uleb128 0x21
	.4byte	.LVL8
	.4byte	0x129b
	.4byte	0x9cb
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x4a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2455
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x23
	.4byte	.LVL9
	.4byte	0x12b2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x91
	.4byte	0x9f2
	.uleb128 0x25
	.4byte	0x81
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0x9e2
	.uleb128 0x1e
	.4byte	.LASF138
	.byte	0x1
	.byte	0x1d
	.4byte	0x21
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa81
	.uleb128 0x1f
	.4byte	.LASF132
	.byte	0x1
	.byte	0x1e
	.4byte	0x81d
	.4byte	.LLST2
	.uleb128 0x1c
	.4byte	.LASF139
	.byte	0x1
	.byte	0x1f
	.4byte	0x640
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF135
	.4byte	0xa91
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2460
	.uleb128 0x21
	.4byte	.LVL12
	.4byte	0x129b
	.4byte	0xa6a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2460
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x23
	.4byte	.LVL13
	.4byte	0x12be
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x91
	.4byte	0xa91
	.uleb128 0x25
	.4byte	0x81
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.4byte	0xa81
	.uleb128 0x1e
	.4byte	.LASF140
	.byte	0x1
	.byte	0x25
	.4byte	0x811
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xafe
	.uleb128 0x1f
	.4byte	.LASF141
	.byte	0x1
	.byte	0x26
	.4byte	0x657
	.4byte	.LLST3
	.uleb128 0x26
	.string	"len"
	.byte	0x1
	.byte	0x27
	.4byte	0x21
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF98
	.byte	0x1
	.byte	0x28
	.4byte	0x646
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LVL16
	.4byte	0x12ca
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s0_session_cmd__descriptor
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF142
	.byte	0x1
	.byte	0x2e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb82
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0x1
	.byte	0x2f
	.4byte	0x811
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LASF141
	.byte	0x1
	.byte	0x30
	.4byte	0x657
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF135
	.4byte	0xb92
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2470
	.uleb128 0x21
	.4byte	.LVL19
	.4byte	0x129b
	.4byte	0xb6b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2470
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x23
	.4byte	.LVL20
	.4byte	0x12d6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x91
	.4byte	0xb92
	.uleb128 0x25
	.4byte	0x81
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.4byte	0xb82
	.uleb128 0x1e
	.4byte	.LASF143
	.byte	0x1
	.byte	0x3d
	.4byte	0x21
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc0e
	.uleb128 0x1f
	.4byte	.LASF132
	.byte	0x1
	.byte	0x3e
	.4byte	0x828
	.4byte	.LLST4
	.uleb128 0x20
	.4byte	.LASF135
	.4byte	0xc1e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2478
	.uleb128 0x21
	.4byte	.LVL22
	.4byte	0x129b
	.4byte	0xbfd
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2478
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x23
	.4byte	.LVL23
	.4byte	0x12a6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x91
	.4byte	0xc1e
	.uleb128 0x25
	.4byte	0x81
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.4byte	0xc0e
	.uleb128 0x1e
	.4byte	.LASF144
	.byte	0x1
	.byte	0x43
	.4byte	0x21
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcad
	.uleb128 0x1f
	.4byte	.LASF132
	.byte	0x1
	.byte	0x44
	.4byte	0x828
	.4byte	.LLST5
	.uleb128 0x26
	.string	"out"
	.byte	0x1
	.byte	0x45
	.4byte	0x625
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF135
	.4byte	0xcbd
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2483
	.uleb128 0x21
	.4byte	.LVL26
	.4byte	0x129b
	.4byte	0xc96
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x47
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2483
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x23
	.4byte	.LVL27
	.4byte	0x12b2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x91
	.4byte	0xcbd
	.uleb128 0x25
	.4byte	0x81
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.4byte	0xcad
	.uleb128 0x1e
	.4byte	.LASF145
	.byte	0x1
	.byte	0x4a
	.4byte	0x21
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd4c
	.uleb128 0x1f
	.4byte	.LASF132
	.byte	0x1
	.byte	0x4b
	.4byte	0x828
	.4byte	.LLST6
	.uleb128 0x1c
	.4byte	.LASF139
	.byte	0x1
	.byte	0x4c
	.4byte	0x640
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF135
	.4byte	0xd4c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2488
	.uleb128 0x21
	.4byte	.LVL30
	.4byte	0x129b
	.4byte	0xd35
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2488
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x23
	.4byte	.LVL31
	.4byte	0x12be
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x944
	.uleb128 0x1e
	.4byte	.LASF146
	.byte	0x1
	.byte	0x52
	.4byte	0x817
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdb9
	.uleb128 0x1f
	.4byte	.LASF141
	.byte	0x1
	.byte	0x53
	.4byte	0x657
	.4byte	.LLST7
	.uleb128 0x26
	.string	"len"
	.byte	0x1
	.byte	0x54
	.4byte	0x21
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF98
	.byte	0x1
	.byte	0x55
	.4byte	0x646
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LVL34
	.4byte	0x12ca
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s0_session_resp__descriptor
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF147
	.byte	0x1
	.byte	0x5b
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe3d
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0x1
	.byte	0x5c
	.4byte	0x817
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LASF141
	.byte	0x1
	.byte	0x5d
	.4byte	0x657
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF135
	.4byte	0xe3d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2498
	.uleb128 0x21
	.4byte	.LVL37
	.4byte	0x129b
	.4byte	0xe26
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x61
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2498
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x23
	.4byte	.LVL38
	.4byte	0x12d6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xa81
	.uleb128 0x1e
	.4byte	.LASF148
	.byte	0x1
	.byte	0x6a
	.4byte	0x21
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb9
	.uleb128 0x1f
	.4byte	.LASF132
	.byte	0x1
	.byte	0x6b
	.4byte	0x833
	.4byte	.LLST8
	.uleb128 0x20
	.4byte	.LASF135
	.4byte	0xeb9
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2506
	.uleb128 0x21
	.4byte	.LVL40
	.4byte	0x129b
	.4byte	0xea8
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2506
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.uleb128 0x23
	.4byte	.LVL41
	.4byte	0x12a6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xb82
	.uleb128 0x1e
	.4byte	.LASF149
	.byte	0x1
	.byte	0x70
	.4byte	0x21
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf48
	.uleb128 0x1f
	.4byte	.LASF132
	.byte	0x1
	.byte	0x71
	.4byte	0x833
	.4byte	.LLST9
	.uleb128 0x26
	.string	"out"
	.byte	0x1
	.byte	0x72
	.4byte	0x625
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF135
	.4byte	0xf58
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2511
	.uleb128 0x21
	.4byte	.LVL44
	.4byte	0x129b
	.4byte	0xf31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x74
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2511
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.uleb128 0x23
	.4byte	.LVL45
	.4byte	0x12b2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x91
	.4byte	0xf58
	.uleb128 0x25
	.4byte	0x81
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.4byte	0xf48
	.uleb128 0x1e
	.4byte	.LASF150
	.byte	0x1
	.byte	0x77
	.4byte	0x21
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfe7
	.uleb128 0x1f
	.4byte	.LASF132
	.byte	0x1
	.byte	0x78
	.4byte	0x833
	.4byte	.LLST10
	.uleb128 0x1c
	.4byte	.LASF139
	.byte	0x1
	.byte	0x79
	.4byte	0x640
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF135
	.4byte	0xff7
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2516
	.uleb128 0x21
	.4byte	.LVL48
	.4byte	0x129b
	.4byte	0xfd0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2516
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.uleb128 0x23
	.4byte	.LVL49
	.4byte	0x12be
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x91
	.4byte	0xff7
	.uleb128 0x25
	.4byte	0x81
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.4byte	0xfe7
	.uleb128 0x1e
	.4byte	.LASF151
	.byte	0x1
	.byte	0x7f
	.4byte	0x8c8
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1064
	.uleb128 0x1f
	.4byte	.LASF141
	.byte	0x1
	.byte	0x80
	.4byte	0x657
	.4byte	.LLST11
	.uleb128 0x26
	.string	"len"
	.byte	0x1
	.byte	0x81
	.4byte	0x21
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF98
	.byte	0x1
	.byte	0x82
	.4byte	0x646
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.4byte	.LVL52
	.4byte	0x12ca
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	sec0_payload__descriptor
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF152
	.byte	0x1
	.byte	0x88
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10e8
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0x1
	.byte	0x89
	.4byte	0x8c8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LASF141
	.byte	0x1
	.byte	0x8a
	.4byte	0x657
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF135
	.4byte	0x10f8
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2526
	.uleb128 0x21
	.4byte	.LVL55
	.4byte	0x129b
	.4byte	0x10d1
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2526
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.uleb128 0x23
	.4byte	.LVL56
	.4byte	0x12d6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x91
	.4byte	0x10f8
	.uleb128 0x25
	.4byte	0x81
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.4byte	0x10e8
	.uleb128 0x24
	.4byte	0x37d
	.4byte	0x110d
	.uleb128 0x25
	.4byte	0x81
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF153
	.byte	0x1
	.byte	0xa3
	.4byte	0x111e
	.uleb128 0x5
	.byte	0x3
	.4byte	s0_session_resp__field_descriptors
	.uleb128 0x7
	.4byte	0x10fd
	.uleb128 0x24
	.4byte	0x2c
	.4byte	0x1133
	.uleb128 0x25
	.4byte	0x81
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF154
	.byte	0x1
	.byte	0xb2
	.4byte	0x1144
	.uleb128 0x5
	.byte	0x3
	.4byte	s0_session_resp__field_indices_by_name
	.uleb128 0x7
	.4byte	0x1123
	.uleb128 0x24
	.4byte	0x432
	.4byte	0x1159
	.uleb128 0x25
	.4byte	0x81
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.4byte	.LASF155
	.byte	0x1
	.byte	0xb5
	.4byte	0x116a
	.uleb128 0x5
	.byte	0x3
	.4byte	s0_session_resp__number_ranges
	.uleb128 0x7
	.4byte	0x1149
	.uleb128 0x24
	.4byte	0x37d
	.4byte	0x117f
	.uleb128 0x25
	.4byte	0x81
	.byte	0x2
	.byte	0
	.uleb128 0x27
	.4byte	.LASF156
	.byte	0x1
	.byte	0xc9
	.4byte	0x1190
	.uleb128 0x5
	.byte	0x3
	.4byte	sec0_payload__field_descriptors
	.uleb128 0x7
	.4byte	0x116f
	.uleb128 0x24
	.4byte	0x2c
	.4byte	0x11a5
	.uleb128 0x25
	.4byte	0x81
	.byte	0x2
	.byte	0
	.uleb128 0x27
	.4byte	.LASF157
	.byte	0x1
	.byte	0xf0
	.4byte	0x11b6
	.uleb128 0x5
	.byte	0x3
	.4byte	sec0_payload__field_indices_by_name
	.uleb128 0x7
	.4byte	0x1195
	.uleb128 0x24
	.4byte	0x432
	.4byte	0x11cb
	.uleb128 0x25
	.4byte	0x81
	.byte	0x2
	.byte	0
	.uleb128 0x27
	.4byte	.LASF158
	.byte	0x1
	.byte	0xf5
	.4byte	0x11dc
	.uleb128 0x5
	.byte	0x3
	.4byte	sec0_payload__number_ranges
	.uleb128 0x7
	.4byte	0x11bb
	.uleb128 0x24
	.4byte	0x308
	.4byte	0x11f1
	.uleb128 0x25
	.4byte	0x81
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x10a
	.4byte	0x1203
	.uleb128 0x5
	.byte	0x3
	.4byte	sec0_msg_type__enum_values_by_number
	.uleb128 0x7
	.4byte	0x11e1
	.uleb128 0x28
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x10f
	.4byte	0x121a
	.uleb128 0x5
	.byte	0x3
	.4byte	sec0_msg_type__value_ranges
	.uleb128 0x7
	.4byte	0x1149
	.uleb128 0x24
	.4byte	0x349
	.4byte	0x122f
	.uleb128 0x25
	.4byte	0x81
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x112
	.4byte	0x1241
	.uleb128 0x5
	.byte	0x3
	.4byte	sec0_msg_type__enum_values_by_name
	.uleb128 0x7
	.4byte	0x121f
	.uleb128 0x29
	.4byte	.LASF162
	.byte	0x6
	.byte	0x30
	.4byte	0x1251
	.uleb128 0x7
	.4byte	0x22b
	.uleb128 0x2a
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x117
	.4byte	0x1251
	.uleb128 0x5
	.byte	0x3
	.4byte	sec0_msg_type__descriptor
	.uleb128 0x2b
	.4byte	.LASF164
	.byte	0x1
	.byte	0x94
	.4byte	0x684
	.uleb128 0x5
	.byte	0x3
	.4byte	s0_session_cmd__descriptor
	.uleb128 0x2b
	.4byte	.LASF165
	.byte	0x1
	.byte	0xba
	.4byte	0x684
	.uleb128 0x5
	.byte	0x3
	.4byte	s0_session_resp__descriptor
	.uleb128 0x2b
	.4byte	.LASF166
	.byte	0x1
	.byte	0xfb
	.4byte	0x684
	.uleb128 0x5
	.byte	0x3
	.4byte	sec0_payload__descriptor
	.uleb128 0x2c
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0x8
	.byte	0x29
	.uleb128 0x2d
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0x5
	.2byte	0x37f
	.uleb128 0x2d
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0x5
	.2byte	0x393
	.uleb128 0x2d
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0x5
	.2byte	0x3a4
	.uleb128 0x2d
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0x5
	.2byte	0x3bb
	.uleb128 0x2d
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0x5
	.2byte	0x3cf
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xa4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF127:
	.string	"SEC0_PAYLOAD__PAYLOAD_SR"
.LASF76:
	.string	"quantifier_offset"
.LASF101:
	.string	"STATUS__InvalidSecScheme"
.LASF3:
	.string	"size_t"
.LASF62:
	.string	"values_by_name"
.LASF82:
	.string	"ProtobufCIntRange"
.LASF4:
	.string	"__uint8_t"
.LASF69:
	.string	"ProtobufCEnumValue"
.LASF108:
	.string	"_STATUS_IS_INT_SIZE"
.LASF110:
	.string	"S0SessionCmd"
.LASF29:
	.string	"PROTOBUF_C_TYPE_SFIXED64"
.LASF27:
	.string	"PROTOBUF_C_TYPE_INT64"
.LASF146:
	.string	"s0_session_resp__unpack"
.LASF30:
	.string	"PROTOBUF_C_TYPE_UINT32"
.LASF9:
	.string	"long long unsigned int"
.LASF131:
	.string	"s0_session_resp__init"
.LASF44:
	.string	"PROTOBUF_C_WIRE_TYPE_LENGTH_PREFIXED"
.LASF163:
	.string	"sec0_msg_type__descriptor"
.LASF49:
	.string	"free"
.LASF73:
	.string	"ProtobufCFieldDescriptor"
.LASF88:
	.string	"ProtobufCMessageDescriptor"
.LASF45:
	.string	"PROTOBUF_C_WIRE_TYPE_32BIT"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF57:
	.string	"c_name"
.LASF99:
	.string	"ProtobufCMessageInit"
.LASF40:
	.string	"PROTOBUF_C_TYPE_MESSAGE"
.LASF126:
	.string	"SEC0_PAYLOAD__PAYLOAD_SC"
.LASF122:
	.string	"SEC0_MSG_TYPE__S0_Session_Response"
.LASF111:
	.string	"_S0SessionCmd"
.LASF41:
	.string	"ProtobufCType"
.LASF10:
	.string	"long int"
.LASF54:
	.string	"magic"
.LASF20:
	.string	"PROTOBUF_C_LABEL_OPTIONAL"
.LASF100:
	.string	"STATUS__Success"
.LASF147:
	.string	"s0_session_resp__free_unpacked"
.LASF165:
	.string	"s0_session_resp__descriptor"
.LASF33:
	.string	"PROTOBUF_C_TYPE_FIXED64"
.LASF174:
	.string	"/home/raphael/espressif/tools/esp32-sdk/esp-idf/components/protocomm/proto-c/sec0.pb-c.c"
.LASF155:
	.string	"s0_session_resp__number_ranges"
.LASF61:
	.string	"n_value_names"
.LASF107:
	.string	"STATUS__InvalidSession"
.LASF58:
	.string	"package_name"
.LASF169:
	.string	"protobuf_c_message_pack"
.LASF90:
	.string	"n_fields"
.LASF7:
	.string	"__uint32_t"
.LASF128:
	.string	"_SEC0_PAYLOAD__PAYLOAD_IS_INT_SIZE"
.LASF123:
	.string	"_SEC0_MSG_TYPE_IS_INT_SIZE"
.LASF21:
	.string	"PROTOBUF_C_LABEL_REPEATED"
.LASF168:
	.string	"protobuf_c_message_get_packed_size"
.LASF102:
	.string	"STATUS__InvalidProto"
.LASF70:
	.string	"value"
.LASF166:
	.string	"sec0_payload__descriptor"
.LASF137:
	.string	"s0_session_cmd__pack"
.LASF0:
	.string	"unsigned int"
.LASF47:
	.string	"ProtobufCAllocator"
.LASF95:
	.string	"message_init"
.LASF150:
	.string	"sec0_payload__pack_to_buffer"
.LASF37:
	.string	"PROTOBUF_C_TYPE_ENUM"
.LASF148:
	.string	"sec0_payload__get_packed_size"
.LASF85:
	.string	"ProtobufCMessage"
.LASF12:
	.string	"long unsigned int"
.LASF156:
	.string	"sec0_payload__field_descriptors"
.LASF159:
	.string	"sec0_msg_type__enum_values_by_number"
.LASF92:
	.string	"fields_sorted_by_name"
.LASF83:
	.string	"start_value"
.LASF55:
	.string	"name"
.LASF138:
	.string	"s0_session_cmd__pack_to_buffer"
.LASF98:
	.string	"data"
.LASF119:
	.string	"_Status"
.LASF1:
	.string	"short unsigned int"
.LASF154:
	.string	"s0_session_resp__field_indices_by_name"
.LASF60:
	.string	"values"
.LASF94:
	.string	"field_ranges"
.LASF170:
	.string	"protobuf_c_message_pack_to_buffer"
.LASF75:
	.string	"type"
.LASF96:
	.string	"ProtobufCMessageUnknownField"
.LASF74:
	.string	"label"
.LASF171:
	.string	"protobuf_c_message_unpack"
.LASF46:
	.string	"ProtobufCWireType"
.LASF59:
	.string	"n_values"
.LASF104:
	.string	"STATUS__InvalidArgument"
.LASF51:
	.string	"ProtobufCBuffer"
.LASF52:
	.string	"append"
.LASF143:
	.string	"s0_session_resp__get_packed_size"
.LASF114:
	.string	"_S0SessionResp"
.LASF93:
	.string	"n_field_ranges"
.LASF105:
	.string	"STATUS__InternalError"
.LASF32:
	.string	"PROTOBUF_C_TYPE_UINT64"
.LASF53:
	.string	"ProtobufCEnumDescriptor"
.LASF11:
	.string	"sizetype"
.LASF56:
	.string	"short_name"
.LASF50:
	.string	"allocator_data"
.LASF106:
	.string	"STATUS__CryptoError"
.LASF151:
	.string	"sec0_payload__unpack"
.LASF125:
	.string	"SEC0_PAYLOAD__PAYLOAD__NOT_SET"
.LASF134:
	.string	"sec0_payload__init"
.LASF25:
	.string	"PROTOBUF_C_TYPE_SINT32"
.LASF157:
	.string	"sec0_payload__field_indices_by_name"
.LASF130:
	.string	"s0_session_cmd__init"
.LASF152:
	.string	"sec0_payload__free_unpacked"
.LASF132:
	.string	"message"
.LASF118:
	.string	"payload_case"
.LASF86:
	.string	"n_unknown_fields"
.LASF38:
	.string	"PROTOBUF_C_TYPE_STRING"
.LASF97:
	.string	"wire_type"
.LASF124:
	.string	"Sec0MsgType"
.LASF36:
	.string	"PROTOBUF_C_TYPE_BOOL"
.LASF112:
	.string	"base"
.LASF161:
	.string	"sec0_msg_type__enum_values_by_name"
.LASF167:
	.string	"__assert_func"
.LASF5:
	.string	"unsigned char"
.LASF160:
	.string	"sec0_msg_type__value_ranges"
.LASF173:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF6:
	.string	"short int"
.LASF87:
	.string	"unknown_fields"
.LASF26:
	.string	"PROTOBUF_C_TYPE_SFIXED32"
.LASF136:
	.string	"s0_session_cmd__get_packed_size"
.LASF39:
	.string	"PROTOBUF_C_TYPE_BYTES"
.LASF24:
	.string	"PROTOBUF_C_TYPE_INT32"
.LASF18:
	.string	"PROTOBUF_C_FIELD_FLAG_ONEOF"
.LASF135:
	.string	"__func__"
.LASF23:
	.string	"ProtobufCLabel"
.LASF89:
	.string	"sizeof_message"
.LASF116:
	.string	"Sec0Payload"
.LASF117:
	.string	"_Sec0Payload"
.LASF121:
	.string	"SEC0_MSG_TYPE__S0_Session_Command"
.LASF15:
	.string	"uint32_t"
.LASF153:
	.string	"s0_session_resp__field_descriptors"
.LASF162:
	.string	"status__descriptor"
.LASF78:
	.string	"descriptor"
.LASF13:
	.string	"char"
.LASF158:
	.string	"sec0_payload__number_ranges"
.LASF103:
	.string	"STATUS__TooManySessions"
.LASF72:
	.string	"index"
.LASF35:
	.string	"PROTOBUF_C_TYPE_DOUBLE"
.LASF133:
	.string	"init_value"
.LASF139:
	.string	"buffer"
.LASF81:
	.string	"reserved_flags"
.LASF48:
	.string	"alloc"
.LASF43:
	.string	"PROTOBUF_C_WIRE_TYPE_64BIT"
.LASF64:
	.string	"value_ranges"
.LASF77:
	.string	"offset"
.LASF113:
	.string	"S0SessionResp"
.LASF31:
	.string	"PROTOBUF_C_TYPE_FIXED32"
.LASF34:
	.string	"PROTOBUF_C_TYPE_FLOAT"
.LASF22:
	.string	"PROTOBUF_C_LABEL_NONE"
.LASF79:
	.string	"default_value"
.LASF141:
	.string	"allocator"
.LASF145:
	.string	"s0_session_resp__pack_to_buffer"
.LASF17:
	.string	"PROTOBUF_C_FIELD_FLAG_DEPRECATED"
.LASF144:
	.string	"s0_session_resp__pack"
.LASF71:
	.string	"ProtobufCEnumValueIndex"
.LASF142:
	.string	"s0_session_cmd__free_unpacked"
.LASF115:
	.string	"status"
.LASF84:
	.string	"orig_index"
.LASF164:
	.string	"s0_session_cmd__descriptor"
.LASF14:
	.string	"uint8_t"
.LASF80:
	.string	"flags"
.LASF16:
	.string	"PROTOBUF_C_FIELD_FLAG_PACKED"
.LASF140:
	.string	"s0_session_cmd__unpack"
.LASF42:
	.string	"PROTOBUF_C_WIRE_TYPE_VARINT"
.LASF172:
	.string	"protobuf_c_message_free_unpacked"
.LASF91:
	.string	"fields"
.LASF28:
	.string	"PROTOBUF_C_TYPE_SINT64"
.LASF65:
	.string	"reserved1"
.LASF66:
	.string	"reserved2"
.LASF67:
	.string	"reserved3"
.LASF68:
	.string	"reserved4"
.LASF19:
	.string	"PROTOBUF_C_LABEL_REQUIRED"
.LASF109:
	.string	"Status"
.LASF149:
	.string	"sec0_payload__pack"
.LASF129:
	.string	"Sec0Payload__PayloadCase"
.LASF120:
	.string	"_Sec0MsgType"
.LASF63:
	.string	"n_value_ranges"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a) 5.2.0"
