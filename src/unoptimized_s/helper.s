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
	.file	"helper.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"\012%s failed: \012\012\000"
	.align	2
.LC1:
	.ascii	"Expected: \000"
	.align	2
.LC2:
	.ascii	"Actual  : \000"
	.text
	.align	2
	.global	print_uint128_test_result
	.type	print_uint128_test_result, %function
print_uint128_test_result:
	@ Function supports interworking.
	@ args = 24, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	push	{lr}
	bl	__gnu_mcount_nc
	sub	ip, fp, #20
	stmia	ip, {r0, r1, r2, r3}
	mov	ip, sp
	add	r3, fp, #4
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	sub	r3, fp, #20
	ldmia	r3, {r0, r1, r2, r3}
	bl	equals_uint128
	mov	r3, r0
	cmp	r3, #0
	beq	.L2
	ldr	r3, [fp, #24]
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, [fp, #24]
	str	r2, [r3, #0]
	b	.L4
.L2:
	ldr	r3, [fp, #24]
	ldr	r3, [r3, #4]
	add	r2, r3, #1
	ldr	r3, [fp, #24]
	str	r2, [r3, #4]
	ldr	r0, .L5
	ldr	r1, [fp, #20]
	bl	printf
	ldr	r0, .L5+4
	bl	printf
	add	r3, fp, #4
	ldmia	r3, {r0, r1, r2, r3}
	bl	print_uint128
	ldr	r0, .L5+8
	bl	printf
	sub	r3, fp, #20
	ldmia	r3, {r0, r1, r2, r3}
	bl	print_uint128
	mov	r0, #10
	bl	putchar
.L4:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, lr}
	bx	lr
.L6:
	.align	2
.L5:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.size	print_uint128_test_result, .-print_uint128_test_result
	.section	.rodata
	.align	2
.LC3:
	.ascii	"%s failed: \012\000"
	.align	2
.LC4:
	.ascii	"Expected: %d\000"
	.align	2
.LC5:
	.ascii	"Actual  : %d\000"
	.text
	.align	2
	.global	print_int_test_result
	.type	print_int_test_result, %function
print_int_test_result:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	push	{lr}
	bl	__gnu_mcount_nc
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	bne	.L8
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	b	.L10
.L8:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #4]
	add	r2, r3, #1
	ldr	r3, [fp, #-20]
	str	r2, [r3, #4]
	ldr	r0, .L11
	ldr	r1, [fp, #-16]
	bl	printf
	ldr	r0, .L11+4
	ldr	r1, [fp, #-12]
	bl	printf
	ldr	r0, .L11+8
	ldr	r1, [fp, #-8]
	bl	printf
.L10:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.size	print_int_test_result, .-print_int_test_result
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
