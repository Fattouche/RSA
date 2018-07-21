	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"test_montgomery_exponentiation.c"
	.section	.rodata
	.align	3
	.type	C.5.2166, %object
	.size	C.5.2166, 16
C.5.2166:
	.word	-1053270442
	.word	20508753
	.word	840128501
	.word	674335051
	.align	3
	.type	C.4.2165, %object
	.size	C.4.2165, 16
C.4.2165:
	.word	-919291425
	.word	243098771
	.word	-1266553458
	.word	221639301
	.align	3
	.type	C.3.2164, %object
	.size	C.3.2164, 16
C.3.2164:
	.word	-1100196760
	.word	263259224
	.word	1422985197
	.word	-524942358
	.align	3
	.type	C.2.2163, %object
	.size	C.2.2163, 16
C.2.2163:
	.word	-1495449084
	.word	258367482
	.word	1223401393
	.word	-1298371888
	.align	3
	.type	C.1.2162, %object
	.size	C.1.2162, 16
C.1.2162:
	.word	1613708038
	.word	208400071
	.word	740267489
	.word	1538436146
	.align	2
	.type	C.0.2161, %object
	.size	C.0.2161, 8
C.0.2161:
	.space	8
	.align	2
.LC0:
	.ascii	"High Montgomery exponentiation test\000"
	.align	2
.LC1:
	.ascii	"***** All Montgomery Exponentiation Tests Run *****"
	.ascii	"*\000"
	.align	2
.LC2:
	.ascii	"Passed: %d\012\000"
	.align	2
.LC3:
	.ascii	"Failed: %d\012\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #160
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r3, .L3
	sub	r2, fp, #12
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	ldr	r3, .L3+4
	sub	ip, fp, #28
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r3, .L3+8
	sub	ip, fp, #44
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r3, .L3+12
	sub	ip, fp, #60
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r3, .L3+16
	sub	ip, fp, #76
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	sub	lr, fp, #92
	add	ip, sp, #8
	sub	r3, fp, #44
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	add	ip, sp, #24
	sub	r3, fp, #60
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	add	ip, sp, #40
	sub	r3, fp, #76
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	mov	r2, sp
	sub	r3, fp, #20
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	sub	r3, fp, #28
	ldmia	r3, {r2, r3}
	mov	r0, lr
	bl	montgomery_exponentiation
	ldr	r3, .L3+20
	sub	ip, fp, #108
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	mov	ip, sp
	sub	r3, fp, #108
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r3, .L3+24
	str	r3, [sp, #16]
	sub	r3, fp, #12
	str	r3, [sp, #20]
	sub	r3, fp, #92
	ldmia	r3, {r0, r1, r2, r3}
	bl	print_uint128_test_result
	mov	r0, #10
	bl	putchar
	ldr	r0, .L3+28
	bl	puts
	ldr	r3, [fp, #-12]
	ldr	r0, .L3+32
	mov	r1, r3
	bl	printf
	ldr	r3, [fp, #-8]
	ldr	r0, .L3+36
	mov	r1, r3
	bl	printf
	mov	r0, #10
	bl	putchar
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, lr}
	bx	lr
.L4:
	.align	2
.L3:
	.word	C.0.2161
	.word	C.1.2162
	.word	C.2.2163
	.word	C.3.2164
	.word	C.4.2165
	.word	C.5.2166
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.size	main, .-main
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
