sub	r4, fp, #76
ldmia	r4, {r3-r4}
and	r3, r3, #1
str	r3, [fp, #-60]
ldr	r3, [fp, #-56]
and	r3, r2, r3
str	r3, [fp, #-64]
ldr	r3, [fp, #-64]
eor	r3, r2, r3
str	r3, [fp, #-68]
ldmia	r2, {r1-r2}
mov	r4, r5, asr #31
mul	ip, r1, r4
add	r0, r0, ip
mov	r3, r5
add	r0, r0, r4
mov	r4, r0
str	r4, [fp, #-88]
ldmia	r2, {r1-r2}
mov	r3, r6
mov	r4, r3, asr #31
mul	ip, r1, r4
add	r0, r0, ip
mov	r3, r5
add	r0, r0, r4
mov	r4, r0
str	r4, [fp, #-96]
ldmia	r2, {r1-r2}
mov	r4, r3, asr #31
mul	ip, r1, r4
add	r0, r0, ip
mov	r3, r5
add	r0, r0, r4
mov	r4, r0
str	r4, [fp, #-104]
ldmia	r2, {r1-r2}
mov	r4, r3, asr #31
mul	ip, r1, r4
add	r0, r0, ip
mov	r3, r5
add	r0, r0, r4
mov	r4, r0
str	r4, [fp, #-112]
ldmia	r3, {r0, r1, r2, r3}
stmia	ip, {r0, r1, r2, r3}
sub	r2, fp, #76
ldmia	r2, {r1-r2}
ldmia	r4, {r3-r4}
adds	r3, r3, r1
str	r3, [fp, #-124]
sub	r3, fp, #124
ldmia	r3, {r2-r3}
str	r2, [fp, #-252]
sub	r4, fp, #76
ldmia	r4, {r3-r4}
str	r3, [fp, #-244]
