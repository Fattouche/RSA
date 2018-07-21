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
	.file	"montgomery_multiplication.c"
	.section	.rodata
	.align	3
	.type	C.0.2156, %object
	.size	C.0.2156, 16
C.0.2156:
	.space	16
	.text
	.align	2
	.global	montgomery_multiplication
	.type	montgomery_multiplication, %function
montgomery_multiplication:
	@ Function supports interworking.
	@ args = 48, pretend = 8, frame = 144
	@ frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, #8
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #172
	push	{lr}
	bl	__gnu_mcount_nc
	str	r0, [fp, #-152]
	add	r1, fp, #4
	stmia	r1, {r2, r3}
	ldr	r3, .L6
	sub	ip, fp, #100
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	mov	r3, #0
	str	r3, [sp, #0]
	add	r3, fp, #20
	ldmia	r3, {r0, r1, r2, r3}
	bl	getBitAtIndex
	mov	r3, r0
	str	r3, [fp, #-32]
	add	r3, fp, #36
	ldmia	r3, {r0, r1, r2, r3}
	bl	getNumBits
	mov	r3, r0
	str	r3, [fp, #-28]
	add	r3, fp, #4
	ldmia	r3, {r0, r1, r2, r3}
	bl	getNumBits
	mov	r3, r0
	str	r3, [fp, #-24]
	add	r3, fp, #20
	ldmia	r3, {r0, r1, r2, r3}
	bl	getNumBits
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	movge	r3, r2
	movlt	r3, r3
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	movge	r3, r2
	movlt	r3, r3
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-48]
	b	.L2
.L3:
	mov	r3, #0
	str	r3, [sp, #0]
	sub	r3, fp, #100
	ldmia	r3, {r0, r1, r2, r3}
	bl	getBitAtIndex
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-48]
	str	r3, [sp, #0]
	add	r3, fp, #4
	ldmia	r3, {r0, r1, r2, r3}
	bl	getBitAtIndex
	mov	r3, r0
	str	r3, [fp, #-44]
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-32]
	and	r3, r2, r3
	str	r3, [fp, #-40]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-40]
	eor	r3, r2, r3
	str	r3, [fp, #-52]
	sub	ip, fp, #116
	mov	r2, sp
	add	r3, fp, #28
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	add	r3, fp, #20
	ldmia	r3, {r2, r3}
	mov	r0, ip
	ldr	r1, [fp, #-44]
	bl	multiply_uint128
	sub	ip, fp, #132
	mov	r2, sp
	add	r3, fp, #44
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	add	r3, fp, #36
	ldmia	r3, {r2, r3}
	mov	r0, ip
	ldr	r1, [fp, #-52]
	bl	multiply_uint128
	sub	r4, fp, #84
	add	ip, sp, #8
	sub	r3, fp, #116
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	mov	r2, sp
	sub	r3, fp, #92
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	sub	r3, fp, #100
	ldmia	r3, {r2, r3}
	mov	r0, r4
	bl	add_uint128
	sub	r4, fp, #68
	add	ip, sp, #8
	sub	r3, fp, #132
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	mov	r2, sp
	sub	r3, fp, #76
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	sub	r3, fp, #84
	ldmia	r3, {r2, r3}
	mov	r0, r4
	bl	add_uint128
	sub	ip, fp, #100
	mov	r3, #1
	str	r3, [sp, #8]
	mov	r2, sp
	sub	r3, fp, #60
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	sub	r3, fp, #68
	ldmia	r3, {r2, r3}
	mov	r0, ip
	bl	bitshift_uint128_right
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L2:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	blt	.L3
	mov	ip, sp
	add	r3, fp, #36
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	sub	r3, fp, #100
	ldmia	r3, {r0, r1, r2, r3}
	bl	greater_than_or_equal_uint128
	mov	r3, r0
	cmp	r3, #0
	beq	.L4
	sub	lr, fp, #148
	add	ip, sp, #8
	add	r3, fp, #36
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	mov	r2, sp
	sub	r3, fp, #92
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	sub	r3, fp, #100
	ldmia	r3, {r2, r3}
	mov	r0, lr
	bl	subtract_uint128
	sub	ip, fp, #100
	sub	r3, fp, #148
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
.L4:
	ldr	ip, [fp, #-152]
	sub	r3, fp, #100
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r0, [fp, #-152]
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, lr}
	add	sp, sp, #8
	bx	lr
.L7:
	.align	2
.L6:
	.word	C.0.2156
	.size	montgomery_multiplication, .-montgomery_multiplication
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
