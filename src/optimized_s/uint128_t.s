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
	.file	"uint128_t.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"ERROR: %s\000"
	.text
	.align	2
	.global	error
	.type	error, %function
error:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	push	{lr}
	bl	__gnu_mcount_nc
	str	r0, [fp, #-8]
	ldr	r0, .L3
	ldr	r1, [fp, #-8]
	bl	printf
	mov	r0, #1
	bl	exit
.L4:
	.align	2
.L3:
	.word	.LC0
	.size	error, .-error
	.align	2
	.global	and_uint128
	.type	and_uint128, %function
and_uint128:
	@ Function supports interworking.
	@ args = 32, pretend = 8, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	stmfd	sp!, {r4, r5, fp}
	add	fp, sp, #8
	sub	sp, sp, #20
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r5, r0
	add	r1, fp, #4
	stmia	r1, {r2, r3}
	add	r2, fp, #12
	ldmia	r2, {r1-r2}
	add	r4, fp, #28
	ldmia	r4, {r3-r4}
	and	r3, r3, r1
	and	r4, r4, r2
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	ldmib	fp, {r1-r2}
	add	r4, fp, #20
	ldmia	r4, {r3-r4}
	and	r3, r3, r1
	and	r4, r4, r2
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
	mov	ip, r5
	sub	r3, fp, #28
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	mov	r0, r5
	sub	sp, fp, #8
	ldmfd	sp!, {r4, r5, fp}
	add	sp, sp, #8
	bx	lr
	.size	and_uint128, .-and_uint128
	.align	2
	.global	or_uint128
	.type	or_uint128, %function
or_uint128:
	@ Function supports interworking.
	@ args = 32, pretend = 8, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	stmfd	sp!, {r4, r5, fp}
	add	fp, sp, #8
	sub	sp, sp, #20
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r5, r0
	add	r1, fp, #4
	stmia	r1, {r2, r3}
	add	r2, fp, #12
	ldmia	r2, {r1-r2}
	add	r4, fp, #28
	ldmia	r4, {r3-r4}
	orr	r3, r3, r1
	orr	r4, r4, r2
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	ldmib	fp, {r1-r2}
	add	r4, fp, #20
	ldmia	r4, {r3-r4}
	orr	r3, r3, r1
	orr	r4, r4, r2
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
	mov	ip, r5
	sub	r3, fp, #28
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	mov	r0, r5
	sub	sp, fp, #8
	ldmfd	sp!, {r4, r5, fp}
	add	sp, sp, #8
	bx	lr
	.size	or_uint128, .-or_uint128
	.section	.rodata
	.align	3
	.type	C.0.1658, %object
	.size	C.0.1658, 16
C.0.1658:
	.space	16
	.align	2
.LC1:
	.ascii	"Overflow on addition: \000"
	.align	2
.LC2:
	.ascii	"Left: \000"
	.align	2
.LC3:
	.ascii	"Right: \000"
	.align	2
.LC4:
	.ascii	"Result: \000"
	.align	2
.LC5:
	.ascii	"\000"
	.text
	.align	2
	.global	add_uint128
	.type	add_uint128, %function
add_uint128:
	@ Function supports interworking.
	@ args = 32, pretend = 8, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, #8
	stmfd	sp!, {r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #60
	push	{lr}
	bl	__gnu_mcount_nc
	str	r0, [fp, #-72]
	add	r1, fp, #4
	stmia	r1, {r2, r3}
	ldr	r3, .L17
	sub	ip, fp, #36
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	add	r2, fp, #12
	ldmia	r2, {r1-r2}
	add	r4, fp, #28
	ldmia	r4, {r3-r4}
	adds	r3, r3, r1
	adc	r4, r4, r2
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
	sub	r3, fp, #28
	ldmia	r3, {r2-r3}
	str	r2, [fp, #-68]
	str	r3, [fp, #-64]
	add	r4, fp, #12
	ldmia	r4, {r3-r4}
	str	r3, [fp, #-60]
	str	r4, [fp, #-56]
	ldr	r2, [fp, #-64]
	cmp	r4, r2
	movhi	r3, #1
	movhi	r4, #0
	strhi	r3, [fp, #-36]
	strhi	r4, [fp, #-32]
	ldr	r1, [fp, #-56]
	ldr	r2, [fp, #-64]
	cmp	r1, r2
	bne	.L10
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	movhi	r3, #1
	movhi	r4, #0
	strhi	r3, [fp, #-36]
	strhi	r4, [fp, #-32]
	ldr	r4, [fp, #-60]
	ldr	r2, [fp, #-68]
	cmp	r4, r2
	b	.L10
.L10:
	sub	r6, fp, #36
	ldmia	r6, {r5-r6}
	ldmib	fp, {r1-r2}
	add	r4, fp, #20
	ldmia	r4, {r3-r4}
	adds	r3, r3, r1
	adc	r4, r4, r2
	adds	r3, r3, r5
	adc	r4, r4, r6
	str	r3, [fp, #-36]
	str	r4, [fp, #-32]
	sub	r4, fp, #36
	ldmia	r4, {r3-r4}
	str	r3, [fp, #-52]
	str	r4, [fp, #-48]
	ldmib	fp, {r2-r3}
	str	r2, [fp, #-44]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	ldr	r4, [fp, #-48]
	cmp	r3, r4
	bhi	.L16
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-48]
	cmp	r2, r3
	bne	.L12
	ldr	r4, [fp, #-44]
	ldr	r2, [fp, #-52]
	cmp	r4, r2
	bhi	.L16
	ldr	r3, [fp, #-44]
	ldr	r4, [fp, #-52]
	cmp	r3, r4
	b	.L12
.L16:
	ldr	r0, .L17+4
	bl	puts
	ldr	r0, .L17+8
	bl	printf
	add	r3, fp, #4
	ldmia	r3, {r0, r1, r2, r3}
	bl	print_uint128
	ldr	r0, .L17+12
	bl	printf
	add	r3, fp, #20
	ldmia	r3, {r0, r1, r2, r3}
	bl	print_uint128
	ldr	r0, .L17+16
	bl	printf
	sub	r3, fp, #36
	ldmia	r3, {r0, r1, r2, r3}
	bl	print_uint128
	ldr	r0, .L17+20
	bl	error
.L12:
	ldr	ip, [fp, #-72]
	sub	r3, fp, #36
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r0, [fp, #-72]
	sub	sp, fp, #16
	ldmfd	sp!, {r4, r5, r6, fp, lr}
	add	sp, sp, #8
	bx	lr
.L18:
	.align	2
.L17:
	.word	C.0.1658
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.size	add_uint128, .-add_uint128
	.align	2
	.global	equals_uint128
	.type	equals_uint128, %function
equals_uint128:
	@ Function supports interworking.
	@ args = 16, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, fp}
	add	fp, sp, #4
	sub	sp, sp, #56
	push	{lr}
	bl	__gnu_mcount_nc
	sub	ip, fp, #20
	stmia	ip, {r0, r1, r2, r3}
	sub	r3, fp, #12
	ldmia	r3, {r2-r3}
	str	r2, [fp, #-60]
	str	r3, [fp, #-56]
	add	r4, fp, #12
	ldmia	r4, {r3-r4}
	str	r3, [fp, #-52]
	str	r4, [fp, #-48]
	ldr	r4, [fp, #-60]
	ldr	r2, [fp, #-52]
	cmp	r4, r2
	bne	.L20
	ldr	r3, [fp, #-56]
	ldr	r4, [fp, #-48]
	cmp	r3, r4
	bne	.L20
	sub	r3, fp, #20
	ldmia	r3, {r2-r3}
	str	r2, [fp, #-44]
	str	r3, [fp, #-40]
	ldmib	fp, {r3-r4}
	str	r3, [fp, #-36]
	str	r4, [fp, #-32]
	ldr	r4, [fp, #-44]
	ldr	r2, [fp, #-36]
	cmp	r4, r2
	bne	.L20
	ldr	r3, [fp, #-40]
	ldr	r4, [fp, #-32]
	cmp	r3, r4
	bne	.L20
	mov	r2, #1
	str	r2, [fp, #-24]
	b	.L21
.L20:
	mov	r3, #0
	str	r3, [fp, #-24]
.L21:
	ldr	r3, [fp, #-24]
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {r4, fp}
	bx	lr
	.size	equals_uint128, .-equals_uint128
	.section	.rodata
	.align	3
	.type	C.1.1697, %object
	.size	C.1.1697, 16
C.1.1697:
	.space	16
	.text
	.align	2
	.global	multiply_uint128
	.type	multiply_uint128, %function
multiply_uint128:
	@ Function supports interworking.
	@ args = 16, pretend = 8, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	push	{lr}
	bl	__gnu_mcount_nc
	str	r0, [fp, #-28]
	str	r1, [fp, #-24]
	add	r1, fp, #4
	stmia	r1, {r2, r3}
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L24
	ldr	ip, [fp, #-28]
	add	r3, fp, #4
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	b	.L23
.L24:
	ldr	r3, .L27
	sub	ip, fp, #20
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	ip, [fp, #-28]
	sub	r3, fp, #20
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
.L23:
	ldr	r0, [fp, #-28]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	add	sp, sp, #8
	bx	lr
.L28:
	.align	2
.L27:
	.word	C.1.1697
	.size	multiply_uint128, .-multiply_uint128
	.section	.rodata
	.align	3
	.type	C.2.1708, %object
	.size	C.2.1708, 16
C.2.1708:
	.space	16
	.text
	.align	2
	.global	bitshift_uint128_right
	.type	bitshift_uint128_right, %function
bitshift_uint128_right:
	@ Function supports interworking.
	@ args = 16, pretend = 8, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	stmfd	sp!, {r4, r5, r6, r7, fp}
	add	fp, sp, #16
	sub	sp, sp, #28
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r7, r0
	add	r1, fp, #4
	stmia	r1, {r2, r3}
	ldr	r3, .L31
	sub	ip, fp, #44
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	add	r4, fp, #12
	ldmia	r4, {r3-r4}
	movs	r4, r4, lsr #1
	mov	r3, r3, rrx
	str	r3, [fp, #-36]
	str	r4, [fp, #-32]
	ldmib	fp, {r5-r6}
	ldmib	fp, {r3-r4}
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
	ldmib	fp, {r3-r4}
	movs	r4, r4, lsr #1
	mov	r3, r3, rrx
	str	r3, [fp, #-44]
	str	r4, [fp, #-40]
	sub	r1, fp, #36
	ldmia	r1, {r0-r1}
	ldr	r2, [fp, #-28]
	mov	r4, r2, asl #31
	mov	r3, #0
	orr	r3, r3, r0
	orr	r4, r4, r1
	str	r3, [fp, #-36]
	str	r4, [fp, #-32]
	mov	ip, r7
	sub	r3, fp, #44
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	mov	r0, r7
	sub	sp, fp, #16
	ldmfd	sp!, {r4, r5, r6, r7, fp}
	add	sp, sp, #8
	bx	lr
.L32:
	.align	2
.L31:
	.word	C.2.1708
	.size	bitshift_uint128_right, .-bitshift_uint128_right
	.section	.rodata
	.align	3
	.type	C.3.1734, %object
	.size	C.3.1734, 16
C.3.1734:
	.space	16
	.align	2
.LC6:
	.ascii	"Underflow on 128 bit subtraction\012\000"
	.text
	.align	2
	.global	subtract_uint128
	.type	subtract_uint128, %function
subtract_uint128:
	@ Function supports interworking.
	@ args = 32, pretend = 8, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, #8
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #92
	push	{lr}
	bl	__gnu_mcount_nc
	str	r0, [fp, #-96]
	add	r1, fp, #4
	stmia	r1, {r2, r3}
	ldmib	fp, {r2-r3}
	str	r2, [fp, #-92]
	str	r3, [fp, #-88]
	add	r4, fp, #20
	ldmia	r4, {r3-r4}
	str	r3, [fp, #-84]
	str	r4, [fp, #-80]
	ldr	r4, [fp, #-80]
	ldr	r2, [fp, #-88]
	cmp	r4, r2
	bhi	.L41
	ldr	r3, [fp, #-80]
	ldr	r4, [fp, #-88]
	cmp	r3, r4
	bne	.L34
	ldr	r2, [fp, #-84]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bhi	.L41
	ldr	r4, [fp, #-84]
	ldr	r2, [fp, #-92]
	cmp	r4, r2
	b	.L34
.L41:
	ldr	r0, .L44
	bl	error
	b	.L36
.L34:
	ldmib	fp, {r3-r4}
	str	r3, [fp, #-76]
	str	r4, [fp, #-72]
	add	r3, fp, #20
	ldmia	r3, {r2-r3}
	str	r2, [fp, #-68]
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-76]
	ldr	r4, [fp, #-68]
	cmp	r3, r4
	bne	.L36
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-64]
	cmp	r2, r3
	bne	.L36
	add	r3, fp, #12
	ldmia	r3, {r2-r3}
	str	r2, [fp, #-60]
	str	r3, [fp, #-56]
	add	r4, fp, #20
	ldmia	r4, {r3-r4}
	str	r3, [fp, #-52]
	str	r4, [fp, #-48]
	ldr	r4, [fp, #-48]
	ldr	r2, [fp, #-56]
	cmp	r4, r2
	bhi	.L42
	ldr	r3, [fp, #-48]
	ldr	r4, [fp, #-56]
	cmp	r3, r4
	bne	.L36
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	bhi	.L42
	ldr	r4, [fp, #-52]
	ldr	r2, [fp, #-60]
	cmp	r4, r2
	b	.L36
.L42:
	ldr	r0, .L44
	bl	error
.L36:
	ldr	r3, .L44+4
	sub	ip, fp, #28
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	add	r2, fp, #12
	ldmia	r2, {r1-r2}
	add	r4, fp, #28
	ldmia	r4, {r3-r4}
	subs	r3, r1, r3
	sbc	r4, r2, r4
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	sub	r4, fp, #20
	ldmia	r4, {r3-r4}
	str	r3, [fp, #-44]
	str	r4, [fp, #-40]
	add	r3, fp, #12
	ldmia	r3, {r2-r3}
	str	r2, [fp, #-36]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-40]
	ldr	r4, [fp, #-32]
	cmp	r3, r4
	bhi	.L43
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	bne	.L38
	ldr	r4, [fp, #-44]
	ldr	r2, [fp, #-36]
	cmp	r4, r2
	bhi	.L43
	ldr	r3, [fp, #-44]
	ldr	r4, [fp, #-36]
	cmp	r3, r4
	b	.L38
.L43:
	ldmib	fp, {r3-r4}
	mvn	r1, #0
	mvn	r2, #0
	adds	r3, r3, r1
	adc	r4, r4, r2
	stmib	fp, {r3-r4}
.L38:
	ldmib	fp, {r1-r2}
	add	r4, fp, #20
	ldmia	r4, {r3-r4}
	subs	r3, r1, r3
	sbc	r4, r2, r4
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
	ldr	ip, [fp, #-96]
	sub	r3, fp, #28
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r0, [fp, #-96]
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, lr}
	add	sp, sp, #8
	bx	lr
.L45:
	.align	2
.L44:
	.word	.LC6
	.word	C.3.1734
	.size	subtract_uint128, .-subtract_uint128
	.align	2
	.global	greater_than_or_equal_uint128
	.type	greater_than_or_equal_uint128, %function
greater_than_or_equal_uint128:
	@ Function supports interworking.
	@ args = 16, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, fp}
	add	fp, sp, #4
	sub	sp, sp, #72
	push	{lr}
	bl	__gnu_mcount_nc
	sub	ip, fp, #20
	stmia	ip, {r0, r1, r2, r3}
	sub	r3, fp, #20
	ldmia	r3, {r2-r3}
	str	r2, [fp, #-76]
	str	r3, [fp, #-72]
	ldmib	fp, {r3-r4}
	str	r3, [fp, #-68]
	str	r4, [fp, #-64]
	ldr	r4, [fp, #-72]
	ldr	r2, [fp, #-64]
	cmp	r4, r2
	bhi	.L53
	ldr	r3, [fp, #-72]
	ldr	r4, [fp, #-64]
	cmp	r3, r4
	bne	.L47
	ldr	r2, [fp, #-76]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bhi	.L53
	ldr	r4, [fp, #-76]
	ldr	r2, [fp, #-68]
	cmp	r4, r2
	b	.L47
.L53:
	mov	r3, #1
	str	r3, [fp, #-56]
	b	.L49
.L47:
	sub	r3, fp, #20
	ldmia	r3, {r2-r3}
	str	r2, [fp, #-52]
	str	r3, [fp, #-48]
	ldmib	fp, {r3-r4}
	str	r3, [fp, #-44]
	str	r4, [fp, #-40]
	ldr	r4, [fp, #-52]
	ldr	r2, [fp, #-44]
	cmp	r4, r2
	bne	.L50
	ldr	r3, [fp, #-48]
	ldr	r4, [fp, #-40]
	cmp	r3, r4
	bne	.L50
	sub	r2, fp, #20
	ldmia	r2, {r1-r2}
	mov	r3, r1
	orr	r3, r3, r2
	cmp	r3, #0
	bne	.L50
	sub	r3, fp, #12
	ldmia	r3, {r2-r3}
	str	r2, [fp, #-36]
	str	r3, [fp, #-32]
	add	r4, fp, #12
	ldmia	r4, {r3-r4}
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
	ldr	r4, [fp, #-24]
	ldr	r2, [fp, #-32]
	cmp	r4, r2
	bhi	.L50
	ldr	r3, [fp, #-24]
	ldr	r4, [fp, #-32]
	cmp	r3, r4
	bne	.L54
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bhi	.L50
	ldr	r4, [fp, #-28]
	ldr	r2, [fp, #-36]
	cmp	r4, r2
.L54:
	mov	r3, #1
	str	r3, [fp, #-56]
	b	.L49
.L50:
	mov	r4, #0
	str	r4, [fp, #-56]
.L49:
	ldr	r3, [fp, #-56]
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {r4, fp}
	bx	lr
	.size	greater_than_or_equal_uint128, .-greater_than_or_equal_uint128
	.section	.rodata
	.align	2
.LC7:
	.ascii	"0x%016llx%016llx\000"
	.text
	.align	2
	.global	print_uint128
	.type	print_uint128, %function
print_uint128:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #28
	push	{lr}
	bl	__gnu_mcount_nc
	sub	ip, fp, #28
	stmia	ip, {r0, r1, r2, r3}
	sub	r2, fp, #28
	ldmia	r2, {r1-r2}
	sub	r4, fp, #20
	ldmia	r4, {r3-r4}
	stmia	sp, {r3-r4}
	ldr	r0, .L57
	mov	r3, r2
	mov	r2, r1
	bl	printf
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, lr}
	bx	lr
.L58:
	.align	2
.L57:
	.word	.LC7
	.size	print_uint128, .-print_uint128
	.section	.rodata
	.align	2
.LC8:
	.ascii	"Bit index out of range\000"
	.text
	.align	2
	.global	getBitAtIndex
	.type	getBitAtIndex, %function
getBitAtIndex:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #28
	push	{lr}
	bl	__gnu_mcount_nc
	sub	ip, fp, #36
	stmia	ip, {r0, r1, r2, r3}
	ldr	r3, [fp, #4]
	cmp	r3, #127
	ble	.L60
	ldr	r0, .L66
	bl	error
.L60:
	ldr	r3, [fp, #4]
	cmp	r3, #63
	ble	.L61
	sub	r2, fp, #36
	ldmia	r2, {r1-r2}
	ldr	r3, [fp, #4]
	sub	r0, r3, #64
	sub	ip, r0, #32
	mov	r6, r2, lsr ip
	rsb	r3, r0, #32
	mov	r5, r2, asl r3
	cmp	ip, #0
	mov	r3, r1, lsr r0
	orr	r3, r5, r3
	movge	r3, r6
	mov	r4, r2, lsr r0
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L62
	mov	r3, #1
	str	r3, [fp, #-40]
	b	.L63
.L62:
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L63
.L61:
	sub	r2, fp, #28
	ldmia	r2, {r1-r2}
	ldr	r3, [fp, #4]
	sub	r0, r3, #32
	mov	r5, r2, lsr r0
	ldr	r3, [fp, #4]
	rsb	r3, r3, #32
	mov	r6, r2, asl r3
	ldr	ip, [fp, #4]
	cmp	r0, #0
	ldr	r0, [fp, #4]
	mov	r3, r1, lsr ip
	orr	r3, r6, r3
	movge	r3, r5
	mov	r4, r2, lsr r0
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L64
	mov	r3, #1
	str	r3, [fp, #-40]
	b	.L63
.L64:
	mov	r3, #0
	str	r3, [fp, #-40]
.L63:
	ldr	r3, [fp, #-40]
	mov	r0, r3
	sub	sp, fp, #16
	ldmfd	sp!, {r4, r5, r6, fp, lr}
	bx	lr
.L67:
	.align	2
.L66:
	.word	.LC8
	.size	getBitAtIndex, .-getBitAtIndex
	.align	2
	.global	getNumBits
	.type	getNumBits, %function
getNumBits:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #36
	push	{lr}
	bl	__gnu_mcount_nc
	sub	ip, fp, #36
	stmia	ip, {r0, r1, r2, r3}
	sub	r4, fp, #28
	ldmia	r4, {r3-r4}
	mov	r0, r3
	mov	r1, r4
	bl	getLongBits
	mov	r3, r0
	str	r3, [fp, #-20]
	sub	r4, fp, #36
	ldmia	r4, {r3-r4}
	mov	r0, r3
	mov	r1, r4
	bl	getLongBits
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L69
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-40]
	b	.L70
.L69:
	ldr	r3, [fp, #-16]
	add	r3, r3, #64
	str	r3, [fp, #-40]
.L70:
	ldr	r3, [fp, #-40]
	mov	r0, r3
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, lr}
	bx	lr
	.size	getNumBits, .-getNumBits
	.align	2
	.global	getLongBits
	.type	getLongBits, %function
getLongBits:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, fp}
	add	fp, sp, #4
	sub	sp, sp, #16
	push	{lr}
	bl	__gnu_mcount_nc
	str	r0, [fp, #-20]
	str	r1, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L73
.L74:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
	sub	r4, fp, #20
	ldmia	r4, {r3-r4}
	movs	r4, r4, lsr #1
	mov	r3, r3, rrx
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
.L73:
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	orr	r3, r3, r2
	cmp	r3, #0
	bne	.L74
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {r4, fp}
	bx	lr
	.size	getLongBits, .-getLongBits
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
