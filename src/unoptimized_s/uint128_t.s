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
	.text
	.align	2
	.global	add_uint128
	.type	add_uint128, %function
add_uint128:
	@ Function supports interworking.
	@ args = 32, pretend = 8, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	stmfd	sp!, {r4, r5, r6, fp}
	add	fp, sp, #12
	sub	sp, sp, #40
	push	{lr}
	bl	__gnu_mcount_nc
	str	r0, [fp, #-48]
	add	r1, fp, #4
	stmia	r1, {r2, r3}
	ldr	r3, .L14
	sub	ip, fp, #28
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	add	r2, fp, #12
	ldmia	r2, {r1-r2}
	add	r4, fp, #28
	ldmia	r4, {r3-r4}
	adds	r3, r3, r1
	adc	r4, r4, r2
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	sub	r3, fp, #20
	ldmia	r3, {r2-r3}
	str	r2, [fp, #-44]
	str	r3, [fp, #-40]
	add	r4, fp, #12
	ldmia	r4, {r3-r4}
	str	r3, [fp, #-36]
	str	r4, [fp, #-32]
	ldr	r4, [fp, #-32]
	ldr	r2, [fp, #-40]
	cmp	r4, r2
	bhi	.L13
	ldr	r3, [fp, #-32]
	ldr	r4, [fp, #-40]
	cmp	r3, r4
	bne	.L10
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bhi	.L13
	ldr	r4, [fp, #-36]
	ldr	r2, [fp, #-44]
	cmp	r4, r2
	b	.L10
.L13:
	mov	r3, #1
	mov	r4, #0
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
.L10:
	sub	r6, fp, #28
	ldmia	r6, {r5-r6}
	ldmib	fp, {r1-r2}
	add	r4, fp, #20
	ldmia	r4, {r3-r4}
	adds	r3, r3, r1
	adc	r4, r4, r2
	adds	r3, r3, r5
	adc	r4, r4, r6
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
	ldr	ip, [fp, #-48]
	sub	r3, fp, #28
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r0, [fp, #-48]
	sub	sp, fp, #12
	ldmfd	sp!, {r4, r5, r6, fp}
	add	sp, sp, #8
	bx	lr
.L15:
	.align	2
.L14:
	.word	C.0.1658
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
	bne	.L17
	ldr	r3, [fp, #-56]
	ldr	r4, [fp, #-48]
	cmp	r3, r4
	bne	.L17
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
	bne	.L17
	ldr	r3, [fp, #-40]
	ldr	r4, [fp, #-32]
	cmp	r3, r4
	bne	.L17
	mov	r2, #1
	str	r2, [fp, #-24]
	b	.L18
.L17:
	mov	r3, #0
	str	r3, [fp, #-24]
.L18:
	ldr	r3, [fp, #-24]
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {r4, fp}
	bx	lr
	.size	equals_uint128, .-equals_uint128
	.section	.rodata
	.align	3
	.type	C.1.1693, %object
	.size	C.1.1693, 16
C.1.1693:
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
	beq	.L21
	ldr	ip, [fp, #-28]
	add	r3, fp, #4
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	b	.L20
.L21:
	ldr	r3, .L24
	sub	ip, fp, #20
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	ip, [fp, #-28]
	sub	r3, fp, #20
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
.L20:
	ldr	r0, [fp, #-28]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	add	sp, sp, #8
	bx	lr
.L25:
	.align	2
.L24:
	.word	C.1.1693
	.size	multiply_uint128, .-multiply_uint128
	.section	.rodata
	.align	3
	.type	C.2.1704, %object
	.size	C.2.1704, 16
C.2.1704:
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
	ldr	r3, .L28
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
.L29:
	.align	2
.L28:
	.word	C.2.1704
	.size	bitshift_uint128_right, .-bitshift_uint128_right
	.section	.rodata
	.align	3
	.type	C.3.1730, %object
	.size	C.3.1730, 16
C.3.1730:
	.space	16
	.align	2
.LC1:
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
	bhi	.L38
	ldr	r3, [fp, #-80]
	ldr	r4, [fp, #-88]
	cmp	r3, r4
	bne	.L31
	ldr	r2, [fp, #-84]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bhi	.L38
	ldr	r4, [fp, #-84]
	ldr	r2, [fp, #-92]
	cmp	r4, r2
	b	.L31
.L38:
	ldr	r0, .L41
	bl	error
	b	.L33
.L31:
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
	bne	.L33
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-64]
	cmp	r2, r3
	bne	.L33
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
	bhi	.L39
	ldr	r3, [fp, #-48]
	ldr	r4, [fp, #-56]
	cmp	r3, r4
	bne	.L33
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	bhi	.L39
	ldr	r4, [fp, #-52]
	ldr	r2, [fp, #-60]
	cmp	r4, r2
	b	.L33
.L39:
	ldr	r0, .L41
	bl	error
.L33:
	ldr	r3, .L41+4
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
	bhi	.L40
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	bne	.L35
	ldr	r4, [fp, #-44]
	ldr	r2, [fp, #-36]
	cmp	r4, r2
	bhi	.L40
	ldr	r3, [fp, #-44]
	ldr	r4, [fp, #-36]
	cmp	r3, r4
	b	.L35
.L40:
	ldmib	fp, {r3-r4}
	mvn	r1, #0
	mvn	r2, #0
	adds	r3, r3, r1
	adc	r4, r4, r2
	stmib	fp, {r3-r4}
.L35:
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
.L42:
	.align	2
.L41:
	.word	.LC1
	.word	C.3.1730
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
	bhi	.L50
	ldr	r3, [fp, #-72]
	ldr	r4, [fp, #-64]
	cmp	r3, r4
	bne	.L44
	ldr	r2, [fp, #-76]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bhi	.L50
	ldr	r4, [fp, #-76]
	ldr	r2, [fp, #-68]
	cmp	r4, r2
	b	.L44
.L50:
	mov	r3, #1
	str	r3, [fp, #-56]
	b	.L46
.L44:
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
	bne	.L47
	ldr	r3, [fp, #-48]
	ldr	r4, [fp, #-40]
	cmp	r3, r4
	bne	.L47
	sub	r2, fp, #20
	ldmia	r2, {r1-r2}
	mov	r3, r1
	orr	r3, r3, r2
	cmp	r3, #0
	bne	.L47
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
	bhi	.L47
	ldr	r3, [fp, #-24]
	ldr	r4, [fp, #-32]
	cmp	r3, r4
	bne	.L51
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bhi	.L47
	ldr	r4, [fp, #-28]
	ldr	r2, [fp, #-36]
	cmp	r4, r2
.L51:
	mov	r3, #1
	str	r3, [fp, #-56]
	b	.L46
.L47:
	mov	r4, #0
	str	r4, [fp, #-56]
.L46:
	ldr	r3, [fp, #-56]
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {r4, fp}
	bx	lr
	.size	greater_than_or_equal_uint128, .-greater_than_or_equal_uint128
	.section	.rodata
	.align	2
.LC2:
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
	ldr	r0, .L54
	mov	r3, r2
	mov	r2, r1
	bl	printf
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, lr}
	bx	lr
.L55:
	.align	2
.L54:
	.word	.LC2
	.size	print_uint128, .-print_uint128
	.section	.rodata
	.align	2
.LC3:
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
	ble	.L57
	ldr	r0, .L63
	bl	error
.L57:
	ldr	r3, [fp, #4]
	cmp	r3, #63
	ble	.L58
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
	beq	.L59
	mov	r3, #1
	str	r3, [fp, #-40]
	b	.L60
.L59:
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L60
.L58:
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
	beq	.L61
	mov	r3, #1
	str	r3, [fp, #-40]
	b	.L60
.L61:
	mov	r3, #0
	str	r3, [fp, #-40]
.L60:
	ldr	r3, [fp, #-40]
	mov	r0, r3
	sub	sp, fp, #16
	ldmfd	sp!, {r4, r5, r6, fp, lr}
	bx	lr
.L64:
	.align	2
.L63:
	.word	.LC3
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
	bne	.L66
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-40]
	b	.L67
.L66:
	ldr	r3, [fp, #-16]
	add	r3, r3, #64
	str	r3, [fp, #-40]
.L67:
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
	b	.L70
.L71:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
	sub	r4, fp, #20
	ldmia	r4, {r3-r4}
	movs	r4, r4, lsr #1
	mov	r3, r3, rrx
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
.L70:
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	orr	r3, r3, r2
	cmp	r3, #0
	bne	.L71
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {r4, fp}
	bx	lr
	.size	getLongBits, .-getLongBits
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
