	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"game.c"
	.text
	.align	2
	.global	initializeGame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeGame, %function
initializeGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r0, #3
	ldr	r4, .L8
	mov	r3, #256
	ldr	r2, .L8+4
	ldr	r1, .L8+8
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L8+12
	ldr	r1, .L8+16
	mov	lr, pc
	bx	r4
	mov	r2, #0
	mov	r6, #32
	mov	r7, #3
	mov	r9, #64
	mov	fp, #78
	ldr	r1, .L8+20
	strh	r2, [r1]	@ movhi
	ldr	r1, .L8+24
	strh	r2, [r1]	@ movhi
	ldr	r1, .L8+28
	str	r2, [r1]
	ldr	r1, .L8+32
	str	r2, [r1]
	ldr	r1, .L8+36
	str	r2, [r1]
	ldr	r1, .L8+40
	str	r2, [r1]
	ldr	r1, .L8+44
	str	r2, [r1]
	ldr	r1, .L8+48
	str	r2, [r1]
	ldr	r1, .L8+52
	str	r2, [r1]
	ldr	r1, .L8+56
	str	r2, [r1]
	ldr	r1, .L8+60
	str	r2, [r1, #32]
	str	r2, [r1, #24]
	str	r2, [r1, #20]
	str	r2, [r1, #36]
	str	fp, [r1]
	str	r2, [r1, #40]
	str	r9, [r1, #8]
	str	r9, [r1, #12]
	str	r6, [r1, #4]
	str	r7, [r1, #28]
	ldr	r1, .L8+64
	str	r7, [r1]
	ldr	r1, .L8+68
	mov	r5, r2
	str	r2, [r1, #32]
	str	r2, [r1, #24]
	str	r2, [r1, #36]
	mov	r2, #110
	mov	r8, #1
	mov	r10, #240
	str	r2, [r1]
	mov	r2, #6
	mov	r4, r8
	mov	r3, #60
	mov	r0, #16
	mov	lr, #144
	mov	ip, #14
	str	r2, [r1, #20]
	str	r7, [r1, #28]
	str	r6, [r1, #12]
	str	r6, [r1, #16]
	str	r10, [r1, #4]
	str	r8, [r1, #8]
	ldr	r2, .L8+72
.L2:
	str	r3, [r2, #4]
	subs	r3, r3, #20
	str	r0, [r2, #8]
	str	r0, [r2, #12]
	str	lr, [r2]
	str	r4, [r2, #16]
	str	r5, [r2, #24]
	str	ip, [r2, #20]
	add	r2, r2, #28
	bne	.L2
	mov	r1, #135
	mov	r0, #16
	mov	lr, #10
	mov	ip, #15
	ldr	r2, .L8+76
.L3:
	str	r1, [r2, #4]
	add	r1, r1, #20
	cmp	r1, #235
	str	r0, [r2, #8]
	str	r0, [r2, #12]
	str	lr, [r2]
	str	r3, [r2, #16]
	str	r3, [r2, #24]
	str	ip, [r2, #20]
	add	r2, r2, #28
	bne	.L3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	DMANow
	.word	83886592
	.word	tempspritesheetPal
	.word	100728832
	.word	tempspritesheetTiles
	.word	hOff
	.word	vOff
	.word	jump
	.word	spidersCaught
	.word	attacks
	.word	spiderTimer
	.word	seed
	.word	loseGame
	.word	winGame
	.word	frameCounter
	.word	villager
	.word	numLives
	.word	spider
	.word	lives
	.word	caught
	.size	initializeGame, .-initializeGame
	.align	2
	.global	initializeVillager
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeVillager, %function
initializeVillager:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	r1, #64
	mov	lr, #32
	mov	ip, #78
	mov	r0, #3
	ldr	r3, .L12
	stm	r3, {ip, lr}
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r0, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #24]
	str	r2, [r3, #20]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	ldr	lr, [sp], #4
	bx	lr
.L13:
	.align	2
.L12:
	.word	villager
	.size	initializeVillager, .-initializeVillager
	.align	2
	.global	initializeSpider
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeSpider, %function
initializeSpider:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, #1
	mov	r1, #0
	mov	r4, #240
	mov	lr, #3
	mov	r0, #32
	mov	ip, #6
	ldr	r3, .L16
	ldr	r3, [r3, #12]
	add	r3, r3, r3, lsr #31
	asr	r2, r3, r5
	ldr	r3, .L16+4
	rsb	r2, r2, #142
	stm	r3, {r2, r4, r5}
	str	lr, [r3, #28]
	str	ip, [r3, #20]
	str	r0, [r3, #12]
	str	r0, [r3, #16]
	str	r1, [r3, #32]
	str	r1, [r3, #24]
	str	r1, [r3, #36]
	pop	{r4, r5, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	villager
	.word	spider
	.size	initializeSpider, .-initializeSpider
	.align	2
	.global	initializeLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeLives, %function
initializeLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #60
	mov	r1, #16
	mov	r4, #144
	mov	lr, #1
	mov	ip, #0
	mov	r0, #14
	ldr	r3, .L22
.L19:
	str	r2, [r3, #4]
	subs	r2, r2, #20
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r4, [r3]
	str	lr, [r3, #16]
	str	ip, [r3, #24]
	str	r0, [r3, #20]
	add	r3, r3, #28
	bne	.L19
	pop	{r4, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	lives
	.size	initializeLives, .-initializeLives
	.align	2
	.global	initializeCaught
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeCaught, %function
initializeCaught:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #135
	mov	r0, #16
	mov	lr, #10
	mov	r1, #0
	mov	ip, #15
	ldr	r3, .L28
.L25:
	str	r2, [r3, #4]
	add	r2, r2, #20
	cmp	r2, #235
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	lr, [r3]
	str	r1, [r3, #16]
	str	r1, [r3, #24]
	str	ip, [r3, #20]
	add	r3, r3, #28
	bne	.L25
	ldr	lr, [sp], #4
	bx	lr
.L29:
	.align	2
.L28:
	.word	caught
	.size	initializeCaught, .-initializeCaught
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L40
	ldr	r4, .L40+4
	ldr	ip, [r5, #4]
	ldr	r3, [r4, #4]
	mvn	ip, ip, lsl #18
	mvn	r3, r3, lsl #17
	mvn	ip, ip, lsr #18
	mvn	r3, r3, lsr #17
	ldr	r0, .L40+8
	mov	lr, #512
	mov	r2, r0
	mov	r1, r0
	strh	ip, [r0, #2]	@ movhi
	strh	r3, [r0, #42]	@ movhi
	ldr	ip, [r5]
	add	r3, r5, #20
	ldm	r3, {r3, r6}
	ldr	r5, [r4, #24]
	strh	ip, [r0]	@ movhi
	ldr	ip, [r4, #20]
	add	r3, r3, r6, lsl #5
	lsl	r3, r3, #3
	add	ip, ip, r5, lsl #5
	ldr	r4, [r4]
	strh	r3, [r0, #4]	@ movhi
	lsl	ip, ip, #2
	ldr	r3, .L40+12
	strh	ip, [r0, #44]	@ movhi
	strh	r4, [r0, #40]	@ movhi
	add	r4, r3, #84
.L33:
	ldr	r0, [r3, #16]
	cmp	r0, #0
	strheq	lr, [r1, #64]	@ movhi
	beq	.L32
	add	r0, r3, #20
	ldm	r0, {r0, r5}
	ldr	ip, [r3, #4]
	add	r0, r0, r5, lsl #5
	ldr	r5, [r3]
	lsl	r0, r0, #1
	orr	ip, ip, #16384
	strh	r0, [r1, #68]	@ movhi
	strh	ip, [r1, #66]	@ movhi
	strh	r5, [r1, #64]	@ movhi
.L32:
	add	r3, r3, #28
	cmp	r3, r4
	add	r1, r1, #8
	bne	.L33
	mov	r4, #512
	ldr	r3, .L40+16
	add	ip, r3, #140
.L36:
	ldr	r1, [r3, #16]
	cmp	r1, #0
	strheq	r4, [r2, #88]	@ movhi
	beq	.L35
	add	r1, r3, #20
	ldm	r1, {r1, lr}
	ldr	r0, [r3, #4]
	add	r1, r1, lr, lsl #5
	ldr	lr, [r3]
	lsl	r1, r1, #1
	orr	r0, r0, #16384
	strh	r1, [r2, #92]	@ movhi
	strh	r0, [r2, #90]	@ movhi
	strh	lr, [r2, #88]	@ movhi
.L35:
	add	r3, r3, #28
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L36
	pop	{r4, r5, r6, lr}
	bx	lr
.L41:
	.align	2
.L40:
	.word	villager
	.word	spider
	.word	shadowOAM
	.word	lives
	.word	caught
	.size	drawGame, .-drawGame
	.global	__aeabi_idivmod
	.align	2
	.global	updateVillager
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateVillager, %function
updateVillager:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L66
	ldr	r3, [r4, #20]
	cmp	r3, #3
	movne	r2, #3
	strne	r3, [r4, #16]
	ldr	r3, [r4, #32]
	add	r3, r3, r3, lsl #4
	strne	r2, [r4, #20]
	add	r3, r3, r3, lsl #8
	ldr	r2, .L66+4
	ldr	r1, .L66+8
	add	r3, r3, r3, lsl #16
	sub	r2, r2, r3
	cmp	r2, r1
	bcs	.L44
	ldr	r0, [r4, #24]
	ldr	r3, .L66+12
	ldr	r1, [r4, #28]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #24]
.L44:
	ldr	r3, .L66+16
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	ldreq	r1, .L66+20
	streq	r3, [r4, #20]
	ldr	r3, .L66+24
	ldrheq	r2, [r1]
	ldrh	r3, [r3]
	addeq	r2, r2, #1
	strheq	r2, [r1]	@ movhi
	tst	r3, #1
	beq	.L46
	ldr	r2, .L66+28
	ldrh	r2, [r2]
	tst	r2, #1
	moveq	r2, #1
	streq	r2, [r4, #20]
.L46:
	tst	r3, #2
	ldr	r2, [r4]
	beq	.L47
	ldr	r3, .L66+28
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L64
.L47:
	ldr	r1, [r4, #12]
	add	r3, r1, r1, lsr #31
	asr	r3, r3, #1
	rsb	r0, r3, #110
	cmp	r0, r2
	moveq	lr, #0
	ldreq	ip, .L66+32
	rsb	r3, r3, #0
	add	r3, r3, #109
	streq	lr, [ip]
	cmp	r3, r2
	blt	.L49
	rsb	r1, r1, #0
	cmp	r1, r2
	ble	.L65
.L49:
	str	r0, [r4]
.L51:
	ldr	r3, [r4, #20]
	cmp	r3, #3
	moveq	r2, #0
	ldrne	r3, [r4, #32]
	ldreq	r3, [r4, #16]
	addne	r3, r3, #1
	streq	r2, [r4, #24]
	streq	r3, [r4, #20]
	strne	r3, [r4, #32]
	pop	{r4, lr}
	bx	lr
.L65:
	add	r1, r4, #36
	ldmia	r1, {r1, r3}
	add	r3, r1, r3
	adds	r2, r3, r2
	str	r3, [r4, #36]
	movmi	r3, #0
	strpl	r2, [r4]
	strmi	r3, [r4]
	b	.L51
.L64:
	mov	r3, #1
	mvn	ip, #9
	mov	r1, #2
	ldr	r0, .L66+32
	str	ip, [r4, #36]
	str	r3, [r4, #40]
	str	r3, [r0]
	str	r1, [r4, #20]
	sub	r2, r2, #1
	b	.L47
.L67:
	.align	2
.L66:
	.word	villager
	.word	143165576
	.word	286331153
	.word	__aeabi_idivmod
	.word	67109120
	.word	hOff
	.word	oldButtons
	.word	buttons
	.word	jump
	.size	updateVillager, .-updateVillager
	.align	2
	.global	updateSpider
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSpider, %function
updateSpider:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L104
	ldr	r5, [r4, #32]
	add	r3, r5, r5, lsl #4
	ldr	r2, .L104+4
	add	r3, r3, r3, lsl #8
	ldr	r1, .L104+8
	add	r3, r3, r3, lsl #16
	sub	r2, r2, r3
	cmp	r2, r1
	sub	sp, sp, #16
	bcs	.L69
	ldr	r0, [r4, #24]
	ldr	r3, .L104+12
	ldr	r1, [r4, #28]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #24]
.L69:
	ldr	r3, [r4, #36]
	add	r5, r5, #1
	cmp	r3, #0
	str	r5, [r4, #32]
	bne	.L100
.L70:
	ldr	r3, .L104+16
	ldr	r2, [r3]
.L84:
	mov	r0, #240
	mov	r1, #1
	cmp	r2, #5
	str	r0, [r4, #4]
	str	r1, [r4, #36]
	beq	.L101
.L68:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L101:
	mov	r0, #0
	mov	r1, #1
	ldr	r2, .L104+20
	str	r0, [r3]
	str	r1, [r2]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L100:
	ldr	r5, .L104+24
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #12]
	ldr	r1, [r5, #8]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #12
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r6, .L104+28
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L71
	ldr	r3, [r5, #20]
	cmp	r3, #1
	beq	.L102
.L71:
	ldr	r3, [r5, #8]
	ldm	r5, {r1, r2}
	ldr	r0, [r5, #12]
	add	r3, r3, r3, lsr #31
	asr	r3, r3, #1
	str	r0, [sp, #12]
	str	r1, [sp, #4]
	str	r2, [sp]
	str	r3, [sp, #8]
	add	r2, r4, #12
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L75
	mov	r1, #0
	ldr	r3, .L104+32
	ldr	lr, .L104+36
	ldr	r5, .L104+40
	ldr	ip, [r3, #16]
	ldr	r0, [lr]
	ldr	r2, [r5]
	cmp	ip, r1
	ldr	ip, .L104+16
	add	r0, r0, #1
	sub	r2, r2, #1
	str	r0, [lr]
	str	r2, [r5]
	str	r1, [ip]
	bne	.L76
	ldr	r2, [r3, #44]
	cmp	r2, r1
	bne	.L86
	ldr	r2, [r3, #72]
	cmp	r2, r1
	movne	r1, #2
	bne	.L76
.L77:
	mov	ip, #0
	ldr	r3, .L104+44
	add	r1, r3, #140
.L79:
	ldr	r2, [r3, #16]
	cmp	r2, #0
	strne	ip, [r3, #16]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L79
	cmp	r0, #3
	beq	.L80
	mov	r2, #240
	mov	r3, #1
	str	r2, [r4, #4]
	str	r3, [r4, #36]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L75:
	ldr	r3, .L104+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L104+52
	smull	r2, r3, r0, r3
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	sub	r0, r0, r3
	ldr	r2, [r4, #8]
	ldr	r3, [r4, #4]
	add	r0, r0, r0, lsr #31
	add	r0, r2, r0, asr #1
	sub	r0, r3, r0
	cmp	r0, #0
	str	r0, [r4, #4]
	ble	.L70
	ldr	r2, [r4, #36]
	ldr	r3, .L104+16
	cmp	r2, #0
	ldr	r2, [r3]
	beq	.L84
	cmp	r2, #5
	bne	.L68
	b	.L101
.L102:
	ldr	lr, .L104+44
	mov	r1, #0
	mov	r0, lr
	ldr	r3, .L104+16
	ldr	r2, [r3]
	add	r2, r2, #1
	str	r2, [r3]
.L74:
	ldr	ip, [r0, #16]
	cmp	ip, #0
	beq	.L103
	add	r1, r1, #1
	cmp	r1, #5
	add	r0, r0, #28
	bne	.L74
	b	.L84
.L80:
	mov	r2, #0
	mov	r3, #1
	mov	r1, #240
	ldr	r0, .L104+56
	str	r2, [r5]
	str	r2, [lr]
	str	r3, [r4, #36]
	str	r3, [r0]
	str	r1, [r4, #4]
	b	.L68
.L86:
	mov	r1, #1
.L76:
	mov	r2, #0
	rsb	r1, r1, r1, lsl #3
	add	r3, r3, r1, lsl #2
	str	r2, [r3, #16]
	b	.L77
.L103:
	mov	r0, #1
	rsb	r1, r1, r1, lsl #3
	add	r1, lr, r1, lsl #2
	str	r0, [r1, #16]
	b	.L84
.L105:
	.align	2
.L104:
	.word	spider
	.word	143165576
	.word	286331153
	.word	__aeabi_idivmod
	.word	spidersCaught
	.word	winGame
	.word	villager
	.word	collision
	.word	lives
	.word	attacks
	.word	numLives
	.word	caught
	.word	rand
	.word	1431655766
	.word	loseGame
	.size	updateSpider, .-updateSpider
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L108
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldr	r2, .L108+4
	ldrh	r2, [r2]
	lsr	r1, r2, #1
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #20]	@ movhi
	bl	updateVillager
	bl	updateSpider
	ldr	r3, .L108+8
	ldr	r0, [r3]
	ldr	r2, .L108+12
	add	r0, r0, #1
	str	r0, [r3]
	mov	lr, pc
	bx	r2
	pop	{r4, lr}
	bx	lr
.L109:
	.align	2
.L108:
	.word	waitForVBlank
	.word	hOff
	.word	seed
	.word	srand
	.size	updateGame, .-updateGame
	.comm	shadowOAM,1024,4
	.comm	seed,4,4
	.comm	vOff,2,2
	.comm	hOff,2,2
	.comm	jump,4,4
	.comm	frameCounter,4,4
	.comm	winGame,4,4
	.comm	loseGame,4,4
	.comm	spiderTimer,4,4
	.comm	numLives,4,4
	.comm	attacks,4,4
	.comm	spidersCaught,4,4
	.comm	caught,140,4
	.comm	lives,84,4
	.comm	spider,40,4
	.comm	villager,44,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
