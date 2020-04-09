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
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r4, .L4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #7168
	mov	r3, #1856
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	ldr	r2, .L4+20
	mov	r0, #3
	strh	r2, [r5, #8]	@ movhi
	ldr	r3, .L4+24
	ldr	r2, .L4+28
	ldr	r1, .L4+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L4+36
	ldr	r1, .L4+40
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L4+44
	ldr	r1, .L4+48
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L4+52
	ldr	r1, .L4+56
	mov	lr, pc
	bx	r4
	mov	r2, #0
	mov	r4, #32
	mov	lr, #78
	mov	ip, #64
	mov	r0, #1
	mov	r1, #3
	ldr	r3, .L4+60
	strh	r2, [r3]	@ movhi
	ldr	r3, .L4+64
	str	r2, [r3]
	ldr	r3, .L4+68
	str	r2, [r3]
	ldr	r3, .L4+72
	str	r2, [r3]
	ldr	r3, .L4+76
	str	r2, [r3, #40]
	str	r2, [r3, #32]
	str	r2, [r3, #28]
	ldr	r2, .L4+80
	str	r4, [r3, #4]
	str	lr, [r3]
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	str	r1, [r3, #36]
	str	r1, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	furtherTreesPal
	.word	furtherTreesTiles
	.word	100720640
	.word	furtherTreesMap
	.word	24068
	.word	5984
	.word	100679680
	.word	treesTiles
	.word	100724736
	.word	treesMap
	.word	83886592
	.word	tempspritesheetPal
	.word	100728832
	.word	tempspritesheetTiles
	.word	hOff
	.word	spidersCaught
	.word	attacks
	.word	loseGame
	.word	villager
	.word	lives
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
	push	{r4, lr}
	mov	r2, #0
	mov	r0, #64
	mov	r4, #32
	mov	lr, #78
	mov	r1, #1
	mov	ip, #3
	ldr	r3, .L8
	str	r4, [r3, #4]
	str	lr, [r3]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	ip, [r3, #36]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r2, [r3, #40]
	str	r2, [r3, #32]
	str	r2, [r3, #28]
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
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
	@ link register save eliminated.
	bx	lr
	.size	initializeSpider, .-initializeSpider
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
	@ link register save eliminated.
	ldr	r1, .L12
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mvn	r2, r2, lsr #18
	add	r3, r1, #28
	ldm	r3, {r3, ip}
	ldr	r0, .L12+4
	ldr	r1, [r1]
	add	r3, r3, ip, lsl #5
	lsl	r3, r3, #3
	strh	r2, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	bx	lr
.L13:
	.align	2
.L12:
	.word	villager
	.word	shadowOAM
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L35
	ldr	r3, [r4, #28]
	cmp	r3, #2
	movne	r2, #2
	ldr	r5, [r4, #40]
	strne	r3, [r4, #24]
	ldr	r3, .L35+4
	strne	r2, [r4, #28]
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #2
	bne	.L16
	ldr	r0, [r4, #32]
	ldr	r3, .L35+8
	ldr	r1, [r4, #36]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #32]
.L16:
	ldr	r3, .L35+12
	ldr	r2, .L35+16
	ldrh	r3, [r3, #48]
	ldrh	r2, [r2]
	ands	r3, r3, #16
	and	r2, r2, #1
	bne	.L17
	cmp	r2, #0
	str	r3, [r4, #28]
	bne	.L18
.L23:
	add	r5, r5, #1
	str	r5, [r4, #40]
	pop	{r4, r5, r6, lr}
	bx	lr
.L18:
	ldr	r3, .L35+20
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L23
.L20:
	mov	r3, #1
	str	r3, [r4, #28]
	b	.L23
.L17:
	cmp	r2, #0
	beq	.L21
	ldr	r3, .L35+20
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L20
.L21:
	ldr	r3, [r4, #28]
	cmp	r3, #2
	bne	.L23
	mov	r2, #0
	ldr	r3, [r4, #24]
	str	r2, [r4, #32]
	str	r3, [r4, #28]
	pop	{r4, r5, r6, lr}
	bx	lr
.L36:
	.align	2
.L35:
	.word	villager
	.word	1717986919
	.word	__aeabi_idivmod
	.word	67109120
	.word	oldButtons
	.word	buttons
	.size	updateVillager, .-updateVillager
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
	ldr	r3, .L43
	ldrh	r3, [r3, #48]
	push	{r4, lr}
	ldr	r4, .L43+4
	tst	r3, #32
	ldrheq	r3, [r4]
	subeq	r3, r3, #1
	strheq	r3, [r4]	@ movhi
	ldr	r3, .L43
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldrheq	r3, [r4]
	addeq	r3, r3, #1
	strheq	r3, [r4]	@ movhi
	ldr	r3, .L43+8
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r2, [r4]
	lsr	r1, r2, #1
	strh	r2, [r3, #16]	@ movhi
	pop	{r4, lr}
	strh	r1, [r3, #20]	@ movhi
	b	updateVillager
.L44:
	.align	2
.L43:
	.word	67109120
	.word	hOff
	.word	waitForVBlank
	.size	updateGame, .-updateGame
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
	@ link register save eliminated.
	bx	lr
	.size	updateSpider, .-updateSpider
	.comm	shadowOAM,1024,4
	.comm	hOff,2,2
	.comm	loseGame,4,4
	.comm	spiderTimer,4,4
	.comm	lives,4,4
	.comm	attacks,4,4
	.comm	spidersCaught,4,4
	.comm	spider,44,4
	.comm	villager,48,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
