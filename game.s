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
	mov	r3, #0
	mov	r1, #3
	ldr	r4, .L4+44
	ldr	lr, .L4+48
	ldr	ip, .L4+52
	ldr	r0, .L4+56
	ldr	r2, .L4+60
	strh	r3, [r4]	@ movhi
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
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
	.word	hOff
	.word	spidersCaught
	.word	attacks
	.word	loseGame
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
	@ link register save eliminated.
	bx	lr
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
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L14
	ldrh	r3, [r3, #48]
	push	{r4, lr}
	ldr	r4, .L14+4
	tst	r3, #32
	ldrheq	r3, [r4]
	subeq	r3, r3, #1
	strheq	r3, [r4]	@ movhi
	ldr	r3, .L14
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldrheq	r3, [r4]
	addeq	r3, r3, #1
	strheq	r3, [r4]	@ movhi
	ldr	r3, .L14+8
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r2, [r4]
	lsr	r1, r2, #1
	strh	r2, [r3, #16]	@ movhi
	pop	{r4, lr}
	strh	r1, [r3, #20]	@ movhi
	bx	lr
.L15:
	.align	2
.L14:
	.word	67109120
	.word	hOff
	.word	waitForVBlank
	.size	updateGame, .-updateGame
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
	bx	lr
	.size	drawGame, .-drawGame
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
	@ link register save eliminated.
	bx	lr
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
	.comm	villager,44,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
