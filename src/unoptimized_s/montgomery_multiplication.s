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
	.type	C.8.1743, %object
	.size	C.8.1743, 16
C.8.1743:
	.space	16
	.align	3
	.type	C.7.1732, %object
	.size	C.7.1732, 16
C.7.1732:
	.space	16
	.align	3
	.type	C.6.1689, %object
	.size	C.6.1689, 16
C.6.1689:
	.space	16
	.align	3
	.type	C.5.1678, %object
	.size	C.5.1678, 16
C.5.1678:
	.space	16
	.align	3
	.type	C.0.1657, %object
	.size	C.0.1657, 16
C.0.1657:
	.space	16
	.align	2
.LC0:
	.ascii	"/* start of first add */\000"
	.align	2
.LC1:
	.ascii	"/* start of second add */\000"
	.align	2
.LC2:
	.ascii	"/* start of bitshift */\000"
	.align	2
.LC3:
	.ascii	"/* end of inlining */\000"
	.align	2
.LC4:
	.ascii	"/* start of second inlining */\000"
	.align	2
.LC5:
	.ascii	"/* end of second inlining */\000"
	.text
	.align	2
	.global	montgomery_multiplication
	.type	montgomery_multiplication, %function
montgomery_multiplication:
	@ Function supports interworking.
	@ args = 48, pretend = 8, frame = 240
	@ frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, #8
	stmfd	sp!, {r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #268
	push	{lr}
	bl	__gnu_mcount_nc
	str	r0, [fp, #-256]
	add	r1, fp, #4
	stmia	r1, {r2, r3}
	ldr	r3, .L21
	sub	ip, fp, #84
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	mov	r3, #0
	str	r3, [sp, #0]
	add	r3, fp, #20
	ldmia	r3, {r0, r1, r2, r3}
	bl	getBitAtIndex
	mov	r3, r0
	str	r3, [fp, #-56]
	add	r3, fp, #36
	ldmia	r3, {r0, r1, r2, r3}
	bl	getNumBits
	mov	r3, r0
	str	r3, [fp, #-52]
	add	r3, fp, #4
	ldmia	r3, {r0, r1, r2, r3}
	bl	getNumBits
	mov	r3, r0
	str	r3, [fp, #-48]
	add	r3, fp, #20
	ldmia	r3, {r0, r1, r2, r3}
	bl	getNumBits
	mov	r3, r0
	str	r3, [fp, #-44]
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	movge	r3, r2
	movlt	r3, r3
	str	r3, [fp, #-40]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	movge	r3, r2
	movlt	r3, r3
	str	r3, [fp, #-40]
	add	r4, fp, #12
	ldmia	r4, {r3-r4}
	and	r3, r3, #1
	str	r3, [fp, #-184]
	mov	r0, #0
	str	r0, [fp, #-188]
	b	.L2
.L8:
	sub	r4, fp, #76
	ldmia	r4, {r3-r4}
	and	r3, r3, #1
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-56]
	ldr	r2, [fp, #-184]
	and	r3, r2, r3
	str	r3, [fp, #-64]
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-64]
	eor	r3, r2, r3
	str	r3, [fp, #-68]
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
	str	r3, [fp, #-92]
	str	r4, [fp, #-88]
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
	str	r3, [fp, #-100]
	str	r4, [fp, #-96]
	add	r2, fp, #44
	ldmia	r2, {r1-r2}
	ldr	r3, [fp, #-68]
	mov	r4, r3, asr #31
	mul	r0, r3, r2
	mul	ip, r1, r4
	add	r0, r0, ip
	umull	r5, r6, r1, r3
	mov	r3, r5
	mov	r4, r6
	add	r0, r0, r4
	mov	r4, r0
	str	r3, [fp, #-108]
	str	r4, [fp, #-104]
	add	r2, fp, #36
	ldmia	r2, {r1-r2}
	ldr	r3, [fp, #-68]
	mov	r4, r3, asr #31
	mul	r0, r3, r2
	mul	ip, r1, r4
	add	r0, r0, ip
	umull	r5, r6, r1, r3
	mov	r3, r5
	mov	r4, r6
	add	r0, r0, r4
	mov	r4, r0
	str	r3, [fp, #-116]
	str	r4, [fp, #-112]
	ldr	r0, .L21+4
	bl	asm
	ldr	r3, .L21+8
	sub	ip, fp, #132
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	sub	r2, fp, #76
	ldmia	r2, {r1-r2}
	sub	r4, fp, #92
	ldmia	r4, {r3-r4}
	adds	r3, r3, r1
	adc	r4, r4, r2
	str	r3, [fp, #-124]
	str	r4, [fp, #-120]
	sub	r3, fp, #124
	ldmia	r3, {r2-r3}
	str	r2, [fp, #-252]
	str	r3, [fp, #-248]
	sub	r4, fp, #76
	ldmia	r4, {r3-r4}
	str	r3, [fp, #-244]
	str	r4, [fp, #-240]
	ldr	r4, [fp, #-240]
	ldr	r5, [fp, #-248]
	cmp	r4, r5
	bhi	.L17
	ldr	r6, [fp, #-240]
	ldr	r0, [fp, #-248]
	cmp	r6, r0
	bne	.L3
	ldr	r2, [fp, #-244]
	ldr	r3, [fp, #-252]
	cmp	r2, r3
	bhi	.L17
	ldr	r4, [fp, #-244]
	ldr	r5, [fp, #-252]
	cmp	r4, r5
	b	.L3
.L17:
	mov	r3, #1
	mov	r4, #0
	str	r3, [fp, #-132]
	str	r4, [fp, #-128]
.L3:
	sub	r6, fp, #132
	ldmia	r6, {r5-r6}
	sub	r2, fp, #84
	ldmia	r2, {r1-r2}
	sub	r4, fp, #100
	ldmia	r4, {r3-r4}
	adds	r3, r3, r1
	adc	r4, r4, r2
	adds	r3, r3, r5
	adc	r4, r4, r6
	str	r3, [fp, #-132]
	str	r4, [fp, #-128]
	ldr	r0, .L21+12
	bl	asm
	ldr	r3, .L21+16
	sub	ip, fp, #148
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	sub	r2, fp, #124
	ldmia	r2, {r1-r2}
	sub	r4, fp, #108
	ldmia	r4, {r3-r4}
	adds	r3, r3, r1
	adc	r4, r4, r2
	str	r3, [fp, #-140]
	str	r4, [fp, #-136]
	sub	r3, fp, #140
	ldmia	r3, {r2-r3}
	str	r2, [fp, #-236]
	str	r3, [fp, #-232]
	sub	r4, fp, #124
	ldmia	r4, {r3-r4}
	str	r3, [fp, #-228]
	str	r4, [fp, #-224]
	ldr	r4, [fp, #-224]
	ldr	r5, [fp, #-232]
	cmp	r4, r5
	bhi	.L18
	ldr	r6, [fp, #-224]
	ldr	r0, [fp, #-232]
	cmp	r6, r0
	bne	.L5
	ldr	r2, [fp, #-228]
	ldr	r3, [fp, #-236]
	cmp	r2, r3
	bhi	.L18
	ldr	r4, [fp, #-228]
	ldr	r5, [fp, #-236]
	cmp	r4, r5
	b	.L5
.L18:
	mov	r3, #1
	mov	r4, #0
	str	r3, [fp, #-148]
	str	r4, [fp, #-144]
.L5:
	sub	r6, fp, #148
	ldmia	r6, {r5-r6}
	sub	r2, fp, #132
	ldmia	r2, {r1-r2}
	sub	r4, fp, #116
	ldmia	r4, {r3-r4}
	adds	r3, r3, r1
	adc	r4, r4, r2
	adds	r3, r3, r5
	adc	r4, r4, r6
	str	r3, [fp, #-148]
	str	r4, [fp, #-144]
	ldr	r0, .L21+20
	bl	asm
	sub	r4, fp, #140
	ldmia	r4, {r3-r4}
	movs	r4, r4, lsr #1
	mov	r3, r3, rrx
	str	r3, [fp, #-76]
	str	r4, [fp, #-72]
	sub	r6, fp, #148
	ldmia	r6, {r5-r6}
	sub	r4, fp, #148
	ldmia	r4, {r3-r4}
	adds	r3, r3, r3
	adc	r4, r4, r4
	mov	r1, r3
	mov	r2, r4
	mvn	r3, #0
	mvn	r4, #0
	adds	r3, r3, r1
	adc	r4, r4, r2
	and	r3, r3, r5
	and	r4, r4, r6
	str	r3, [fp, #-36]
	str	r4, [fp, #-32]
	sub	r4, fp, #148
	ldmia	r4, {r3-r4}
	movs	r4, r4, lsr #1
	mov	r3, r3, rrx
	str	r3, [fp, #-84]
	str	r4, [fp, #-80]
	sub	r1, fp, #76
	ldmia	r1, {r0-r1}
	ldr	r2, [fp, #-36]
	mov	r4, r2, asl #31
	mov	r3, #0
	orr	r3, r3, r0
	orr	r4, r4, r1
	str	r3, [fp, #-76]
	str	r4, [fp, #-72]
	ldr	r0, .L21+24
	bl	asm
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
	ldr	r4, [fp, #-188]
	add	r4, r4, #1
	str	r4, [fp, #-188]
.L2:
	ldr	r3, [fp, #-40]
	ldr	r5, [fp, #-188]
	cmp	r5, r3
	bge	.L9
	ldr	r6, [fp, #-188]
	add	r3, r6, #1
	cmp	r3, #63
	ble	.L8
	b	.L9
.L14:
	sub	r4, fp, #76
	ldmia	r4, {r3-r4}
	and	r3, r3, #1
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-56]
	ldr	r0, [fp, #-184]
	and	r3, r0, r3
	str	r3, [fp, #-64]
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-64]
	eor	r3, r2, r3
	str	r3, [fp, #-68]
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
	str	r3, [fp, #-92]
	str	r4, [fp, #-88]
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
	str	r3, [fp, #-100]
	str	r4, [fp, #-96]
	add	r2, fp, #44
	ldmia	r2, {r1-r2}
	ldr	r3, [fp, #-68]
	mov	r4, r3, asr #31
	mul	r0, r3, r2
	mul	ip, r1, r4
	add	r0, r0, ip
	umull	r5, r6, r1, r3
	mov	r3, r5
	mov	r4, r6
	add	r0, r0, r4
	mov	r4, r0
	str	r3, [fp, #-108]
	str	r4, [fp, #-104]
	add	r2, fp, #36
	ldmia	r2, {r1-r2}
	ldr	r3, [fp, #-68]
	mov	r4, r3, asr #31
	mul	r0, r3, r2
	mul	ip, r1, r4
	add	r0, r0, ip
	umull	r5, r6, r1, r3
	mov	r3, r5
	mov	r4, r6
	add	r0, r0, r4
	mov	r4, r0
	str	r3, [fp, #-116]
	str	r4, [fp, #-112]
	ldr	r0, .L21+28
	bl	asm
	ldr	r3, .L21+32
	sub	ip, fp, #164
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	sub	r2, fp, #76
	ldmia	r2, {r1-r2}
	sub	r4, fp, #92
	ldmia	r4, {r3-r4}
	adds	r3, r3, r1
	adc	r4, r4, r2
	str	r3, [fp, #-156]
	str	r4, [fp, #-152]
	sub	r3, fp, #156
	ldmia	r3, {r2-r3}
	str	r2, [fp, #-220]
	str	r3, [fp, #-216]
	sub	r4, fp, #76
	ldmia	r4, {r3-r4}
	str	r3, [fp, #-212]
	str	r4, [fp, #-208]
	ldr	r4, [fp, #-208]
	ldr	r5, [fp, #-216]
	cmp	r4, r5
	bhi	.L19
	ldr	r6, [fp, #-208]
	ldr	r0, [fp, #-216]
	cmp	r6, r0
	bne	.L10
	ldr	r2, [fp, #-212]
	ldr	r3, [fp, #-220]
	cmp	r2, r3
	bhi	.L19
	ldr	r4, [fp, #-212]
	ldr	r5, [fp, #-220]
	cmp	r4, r5
	b	.L10
.L19:
	mov	r3, #1
	mov	r4, #0
	str	r3, [fp, #-164]
	str	r4, [fp, #-160]
.L10:
	sub	r6, fp, #164
	ldmia	r6, {r5-r6}
	sub	r2, fp, #84
	ldmia	r2, {r1-r2}
	sub	r4, fp, #100
	ldmia	r4, {r3-r4}
	adds	r3, r3, r1
	adc	r4, r4, r2
	adds	r3, r3, r5
	adc	r4, r4, r6
	str	r3, [fp, #-164]
	str	r4, [fp, #-160]
	ldr	r3, .L21+36
	sub	ip, fp, #180
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	sub	r2, fp, #156
	ldmia	r2, {r1-r2}
	sub	r4, fp, #108
	ldmia	r4, {r3-r4}
	adds	r3, r3, r1
	adc	r4, r4, r2
	str	r3, [fp, #-172]
	str	r4, [fp, #-168]
	sub	r3, fp, #172
	ldmia	r3, {r2-r3}
	str	r2, [fp, #-204]
	str	r3, [fp, #-200]
	sub	r4, fp, #156
	ldmia	r4, {r3-r4}
	str	r3, [fp, #-196]
	str	r4, [fp, #-192]
	ldr	r4, [fp, #-192]
	ldr	r5, [fp, #-200]
	cmp	r4, r5
	bhi	.L20
	ldr	r6, [fp, #-192]
	ldr	r0, [fp, #-200]
	cmp	r6, r0
	bne	.L12
	ldr	r2, [fp, #-196]
	ldr	r3, [fp, #-204]
	cmp	r2, r3
	bhi	.L20
	ldr	r4, [fp, #-196]
	ldr	r5, [fp, #-204]
	cmp	r4, r5
	b	.L12
.L20:
	mov	r3, #1
	mov	r4, #0
	str	r3, [fp, #-180]
	str	r4, [fp, #-176]
.L12:
	sub	r6, fp, #180
	ldmia	r6, {r5-r6}
	sub	r2, fp, #164
	ldmia	r2, {r1-r2}
	sub	r4, fp, #116
	ldmia	r4, {r3-r4}
	adds	r3, r3, r1
	adc	r4, r4, r2
	adds	r3, r3, r5
	adc	r4, r4, r6
	str	r3, [fp, #-180]
	str	r4, [fp, #-176]
	sub	r4, fp, #172
	ldmia	r4, {r3-r4}
	movs	r4, r4, lsr #1
	mov	r3, r3, rrx
	str	r3, [fp, #-76]
	str	r4, [fp, #-72]
	sub	r6, fp, #180
	ldmia	r6, {r5-r6}
	sub	r4, fp, #180
	ldmia	r4, {r3-r4}
	adds	r3, r3, r3
	adc	r4, r4, r4
	mov	r1, r3
	mov	r2, r4
	mvn	r3, #0
	mvn	r4, #0
	adds	r3, r3, r1
	adc	r4, r4, r2
	and	r3, r3, r5
	and	r4, r4, r6
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
	sub	r4, fp, #180
	ldmia	r4, {r3-r4}
	movs	r4, r4, lsr #1
	mov	r3, r3, rrx
	str	r3, [fp, #-84]
	str	r4, [fp, #-80]
	sub	r1, fp, #76
	ldmia	r1, {r0-r1}
	ldr	r2, [fp, #-28]
	mov	r4, r2, asl #31
	mov	r3, #0
	orr	r3, r3, r0
	orr	r4, r4, r1
	str	r3, [fp, #-76]
	str	r4, [fp, #-72]
	ldr	r0, .L21+40
	bl	asm
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
	ldr	r4, [fp, #-188]
	add	r4, r4, #1
	str	r4, [fp, #-188]
.L9:
	ldr	r3, [fp, #-40]
	ldr	r5, [fp, #-188]
	cmp	r5, r3
	blt	.L14
	mov	ip, sp
	add	r3, fp, #36
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	sub	r3, fp, #84
	ldmia	r3, {r0, r1, r2, r3}
	bl	greater_than_or_equal_uint128
	mov	r3, r0
	cmp	r3, #0
	beq	.L15
	sub	lr, fp, #84
	add	ip, sp, #8
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
	bl	subtract_uint128
.L15:
	ldr	ip, [fp, #-256]
	sub	r3, fp, #84
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r0, [fp, #-256]
	sub	sp, fp, #16
	ldmfd	sp!, {r4, r5, r6, fp, lr}
	add	sp, sp, #8
	bx	lr
.L22:
	.align	2
.L21:
	.word	C.0.1657
	.word	.LC0
	.word	C.5.1678
	.word	.LC1
	.word	C.6.1689
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	C.7.1732
	.word	C.8.1743
	.word	.LC5
	.size	montgomery_multiplication, .-montgomery_multiplication
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
