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
	.type	C.0.1650, %object
	.size	C.0.1650, 16
C.0.1650:
	.space	16
	.text
	.align	2
	.global	montgomery_multiplication
	.type	montgomery_multiplication, %function
montgomery_multiplication:
	@ Function supports interworking.
	@ args = 48, pretend = 8, frame = 176
	@ frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, #8
	stmfd	sp!, {r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #204
	push	{lr}
	bl	__gnu_mcount_nc
	str	r0, [fp, #-192]
	add	r1, fp, #4
	stmia	r1, {r2, r3}
	ldr	r3, .L9
	sub	ip, fp, #132
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	mov	r3, #0
	str	r3, [sp, #0]
	add	r3, fp, #20
	ldmia	r3, {r0, r1, r2, r3}
	bl	getBitAtIndex
	str	r0, [fp, #-40]
	add	r3, fp, #36
	ldmia	r3, {r0, r1, r2, r3}
	bl	getNumBits
	str	r0, [fp, #-36]
	add	r0, fp, #4
	ldmia	r0, {r0, r1, r2, r3}
	bl	getNumBits
	str	r0, [fp, #-32]
	add	r0, fp, #20
	ldmia	r0, {r0, r1, r2, r3}
	bl	getNumBits
	str	r0, [fp, #-28]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	movge	r3, r2
	mov r2, r3
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	movge	r3, r2
	str	r3, [fp, #-24]
	add	r4, fp, #12
	ldmia	r4, {r3-r4}
	and	r3, r3, #1
	str	r3, [fp, #-184]
	mov	r0, #0
	str	r0, [fp, #-188]
	b	.L2
.L4:
	sub	r4, fp, #124
	ldmia	r4, {r3-r4}
	and	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-184]
	and	r1, r2, r1
	str	r1, [fp, #-48]
	eor	r3, r3, r1
	str	r3, [fp, #-52]
	add	r2, fp, #28
	ldmia	r2, {r1-r2}
	ldr	r5, [fp, #-184]
	mov	r4, r5, asr #31
	mul	r0, r5, r2
	mul	ip, r1, r4
	add	r0, r0, ip
	umull	r5, r6, r1, r5
	add	r4, r0, r6
	str	r5, [fp, #-140]
	str	r4, [fp, #-136]
	add	r2, fp, #20
	ldmia	r2, {r1-r2}
	ldr	r6, [fp, #-184]
	mov	r4, r6, asr #31
	mul	r0, r6, r2
	mul	ip, r1, r4
	add	r0, r0, ip
	umull	r5, r6, r1, r6
	add	r4, r0, r6
	str	r5, [fp, #-148]
	str	r4, [fp, #-144]
	add	r2, fp, #44
	ldmia	r2, {r1-r2}
	ldr	r3, [fp, #-52]
	mov	r4, r3, asr #31
	mul	r0, r3, r2
	mul	ip, r1, r4
	add	r0, r0, ip
	umull	r5, r6, r1, r3
	add	r4, r0, r6
	str	r5, [fp, #-156]
	str	r4, [fp, #-152]
	add	r2, fp, #36
	ldmia	r2, {r1-r2}
	ldr	r3, [fp, #-52]
	mov	r4, r3, asr #31
	mul	r0, r3, r2
	mul	ip, r1, r4
	add	r0, r0, ip
	umull	r5, r6, r1, r3
	add	r4, r0, r6
	str	r5, [fp, #-164]
	str	r4, [fp, #-160]
	sub	lr, fp, #116
	add	ip, sp, #8
	sub	r3, fp, #148
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	mov	r2, sp
	sub	r3, fp, #124
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	sub	r3, fp, #132
	ldmia	r3, {r2, r3}
	mov	r0, lr
	bl	add_uint128
	sub	r4, fp, #100
	add	ip, sp, #8
	sub	r3, fp, #164
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	mov	r2, sp
	sub	r3, fp, #108
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	sub	r3, fp, #116
	ldmia	r3, {r2, r3}
	mov	r0, r4
	bl	add_uint128
	sub	ip, fp, #132
	mov	r2, sp
	sub	r3, fp, #92
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	sub	r3, fp, #100
	ldmia	r3, {r2, r3}
	mov	r0, ip
	bl	bitshift_uint128_right
	ldr	r6, [fp, #-188]
	add	r1, r6, #1
	sub	r0, r1, #32
	mov	r3, #1
	mov	ip, r3, asl r0
	rsb	r2, r1, #32
	mov	r3, #1
	mov	r5, r3, lsr r2
	mov	r2, #0
	cmp	r0, #0
	mov	r0, #1
	mov	r4, r2, asl r1
	orr	r4, r5, r4
	movge	r4, ip
	mov	r3, r0, asl r1
	add	r2, fp, #12
	ldmia	r2, {r1-r2}
	and	r1, r1, r3
	and	r2, r2, r4
	ldr	r3, [fp, #-188]
	add	r0, r3, #1
	sub	ip, r0, #32
	mov	r6, r2, lsr ip
	rsb	r3, r0, #32
	mov	r5, r2, asl r3
	cmp	ip, #0
	mov	r3, r1, lsr r0
	orr	r3, r5, r3
	movge	r3, r6
	mov	r4, r2, lsr r0
	str	r3, [fp, #-184]
	ldr	r5, [fp, #-188]
	add	r5, r5, #1
	str	r5, [fp, #-188]
.L2:
	ldr	r3, [fp, #-24]
	ldr	r6, [fp, #-188]
	cmp	r6, r3
	bge	.L5
	ldr	r0, [fp, #-188]
	cmp	r0, #62
	ble	.L4
	b	.L5
.L6:
	sub	r4, fp, #124
	ldmia	r4, {r3-r4}
	and	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-40]
	ldr	r2, [fp, #-184]
	and	r3, r2, r3
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	eor	r3, r2, r3
	str	r3, [fp, #-52]
	add	r2, fp, #28
	ldmia	r2, {r1-r2}
	ldr	r5, [fp, #-184]
	mov	r3, r5
	mov	r4, r3, asr #31
	mul	r0, r3, r2
	mul	ip, r1, r4
	add	r0, r0, ip
	umull	r5, r6, r1, r3
	mov	r3, r5
	mov	r4, r6
	add	r0, r0, r4
	mov	r4, r0
	str	r3, [fp, #-140]
	str	r4, [fp, #-136]
	add	r2, fp, #20
	ldmia	r2, {r1-r2}
	ldr	r6, [fp, #-184]
	mov	r3, r6
	mov	r4, r3, asr #31
	mul	r0, r3, r2
	mul	ip, r1, r4
	add	r0, r0, ip
	umull	r5, r6, r1, r3
	mov	r3, r5
	mov	r4, r6
	add	r0, r0, r4
	mov	r4, r0
	str	r3, [fp, #-148]
	str	r4, [fp, #-144]
	add	r2, fp, #44
	ldmia	r2, {r1-r2}
	ldr	r3, [fp, #-52]
	mov	r4, r3, asr #31
	mul	r0, r3, r2
	mul	ip, r1, r4
	add	r0, r0, ip
	umull	r5, r6, r1, r3
	mov	r3, r5
	mov	r4, r6
	add	r0, r0, r4
	mov	r4, r0
	str	r3, [fp, #-156]
	str	r4, [fp, #-152]
	add	r2, fp, #36
	ldmia	r2, {r1-r2}
	ldr	r3, [fp, #-52]
	mov	r4, r3, asr #31
	mul	r0, r3, r2
	mul	ip, r1, r4
	add	r0, r0, ip
	umull	r5, r6, r1, r3
	mov	r3, r5
	mov	r4, r6
	add	r0, r0, r4
	mov	r4, r0
	str	r3, [fp, #-164]
	str	r4, [fp, #-160]
	sub	lr, fp, #84
	add	ip, sp, #8
	sub	r3, fp, #148
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	mov	r2, sp
	sub	r3, fp, #124
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	sub	r3, fp, #132
	ldmia	r3, {r2, r3}
	mov	r0, lr
	bl	add_uint128
	sub	r4, fp, #68
	add	ip, sp, #8
	sub	r3, fp, #164
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
	sub	ip, fp, #180
	mov	r2, sp
	sub	r3, fp, #60
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	sub	r3, fp, #68
	ldmia	r3, {r2, r3}
	mov	r0, ip
	bl	bitshift_uint128_right
	sub	ip, fp, #132
	sub	r3, fp, #180
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r6, [fp, #-188]
	sub	r1, r6, #63
	sub	r0, r1, #32
	mov	r3, #1
	mov	ip, r3, asl r0
	rsb	r2, r1, #32
	mov	r3, #1
	mov	r5, r3, lsr r2
	mov	r2, #0
	cmp	r0, #0
	mov	r0, #1
	mov	r4, r2, asl r1
	orr	r4, r5, r4
	movge	r4, ip
	mov	r3, r0, asl r1
	ldmib	fp, {r1-r2}
	and	r1, r1, r3
	and	r2, r2, r4
	ldr	r3, [fp, #-188]
	sub	r0, r3, #63
	sub	ip, r0, #32
	mov	r6, r2, lsr ip
	rsb	r3, r0, #32
	mov	r5, r2, asl r3
	cmp	ip, #0
	mov	r3, r1, lsr r0
	orr	r3, r5, r3
	movge	r3, r6
	mov	r4, r2, lsr r0
	str	r3, [fp, #-184]
	ldr	r5, [fp, #-188]
	add	r5, r5, #1
	str	r5, [fp, #-188]
.L5:
	ldr	r3, [fp, #-24]
	ldr	r6, [fp, #-188]
	cmp	r6, r3
	blt	.L6
	mov	ip, sp
	add	r3, fp, #36
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	sub	r3, fp, #132
	ldmia	r3, {r0, r1, r2, r3}
	bl	greater_than_or_equal_uint128
	mov	r3, r0
	cmp	r3, #0
	beq	.L7
	sub	lr, fp, #180
	add	ip, sp, #8
	add	r3, fp, #36
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	mov	r2, sp
	sub	r3, fp, #124
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	sub	r3, fp, #132
	ldmia	r3, {r2, r3}
	mov	r0, lr
	bl	subtract_uint128
	sub	ip, fp, #132
	sub	r3, fp, #180
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
.L7:
	ldr	ip, [fp, #-192]
	sub	r3, fp, #132
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r0, [fp, #-192]
	sub	sp, fp, #16
	ldmfd	sp!, {r4, r5, r6, fp, lr}
	add	sp, sp, #8
	bx	lr
.L10:
	.align	2
.L9:
	.word	C.0.1650
	.size	montgomery_multiplication, .-montgomery_multiplication
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
