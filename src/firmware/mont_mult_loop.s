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
mov	r4, r5, asr #31
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