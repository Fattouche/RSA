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
	.file	"montgomery_exponentiation.c"
	.section	.rodata
	.align	3
	.type	C.3.1651, %object
	.size	C.3.1651, 16
C.3.1651:
	.word	0
	.word	0
	.word	1
	.word	0
	.text
	.align	2
	.global	montgomery_exponentiation
	.type	montgomery_exponentiation, %function
montgomery_exponentiation:
	@ Function supports interworking.
	@ args = 64, pretend = 8, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, #8
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #140
	push	{lr}
	bl	__gnu_mcount_nc
	str	r0, [fp, #-104]
	add	r1, fp, #4
	stmia	r1, {r2, r3}
	add	r3, fp, #36
	ldmia	r3, {r0, r1, r2, r3}
	bl	getNumBits
	mov	r3, r0
	str	r3, [fp, #-32]
	add	r3, fp, #4
	ldmia	r3, {r0, r1, r2, r3}
	bl	getNumBits
	mov	r3, r0
	str	r3, [fp, #-28]
	add	r3, fp, #20
	ldmia	r3, {r0, r1, r2, r3}
	bl	getNumBits
	mov	r3, r0
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	movge	r3, r2
	movlt	r3, r3
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	movge	r3, r2
	movlt	r3, r3
	str	r3, [fp, #-20]
	ldr	r3, .L6
	sub	ip, fp, #52
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	sub	r4, fp, #68
	add	ip, sp, #8
	add	r3, fp, #52
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	add	ip, sp, #24
	add	r3, fp, #36
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	mov	r2, sp
	sub	r3, fp, #44
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	sub	r3, fp, #52
	ldmia	r3, {r2, r3}
	mov	r0, r4
	bl	montgomery_multiplication
	sub	r4, fp, #84
	add	ip, sp, #8
	add	r3, fp, #52
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	add	ip, sp, #24
	add	r3, fp, #36
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	mov	r2, sp
	add	r3, fp, #12
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	add	r3, fp, #4
	ldmia	r3, {r2, r3}
	mov	r0, r4
	bl	montgomery_multiplication
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L2
.L4:
	ldr	r3, [fp, #-16]
	str	r3, [sp, #0]
	add	r3, fp, #20
	ldmia	r3, {r0, r1, r2, r3}
	bl	getBitAtIndex
	mov	r3, r0
	cmp	r3, #0
	beq	.L3
	sub	lr, fp, #100
	add	ip, sp, #8
	sub	r3, fp, #84
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	add	ip, sp, #24
	add	r3, fp, #36
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	mov	r2, sp
	sub	r3, fp, #60
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	sub	r3, fp, #68
	ldmia	r3, {r2, r3}
	mov	r0, lr
	bl	montgomery_multiplication
	sub	ip, fp, #68
	sub	r3, fp, #100
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
.L3:
	sub	lr, fp, #100
	add	ip, sp, #8
	sub	r3, fp, #84
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	add	ip, sp, #24
	add	r3, fp, #36
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	mov	r2, sp
	sub	r3, fp, #76
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	sub	r3, fp, #84
	ldmia	r3, {r2, r3}
	mov	r0, lr
	bl	montgomery_multiplication
	sub	ip, fp, #84
	sub	r3, fp, #100
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	blt	.L4
	sub	lr, fp, #100
	add	ip, sp, #8
	sub	r3, fp, #68
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	add	ip, sp, #24
	add	r3, fp, #36
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	mov	r2, sp
	sub	r3, fp, #44
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	sub	r3, fp, #52
	ldmia	r3, {r2, r3}
	mov	r0, lr
	bl	montgomery_multiplication
	sub	ip, fp, #68
	sub	r3, fp, #100
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	ip, [fp, #-104]
	sub	r3, fp, #68
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r0, [fp, #-104]
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, lr}
	add	sp, sp, #8
	bx	lr
.L7:
	.align	2
.L6:
	.word	C.3.1651
	.size	montgomery_exponentiation, .-montgomery_exponentiation
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
