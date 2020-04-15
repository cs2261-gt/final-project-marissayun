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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #256
	ldr	r4, .L4
	mov	r0, #3
	ldr	r2, .L4+4
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r2, #64
	mov	lr, #1
	mov	ip, #32
	mov	r0, #3
	mov	r7, #78
	mov	r6, #240
	mov	r5, #110
	mov	r4, #4
	ldr	r1, .L4+20
	strh	r3, [r1]	@ movhi
	ldr	r1, .L4+24
	str	r3, [r1]
	ldr	r1, .L4+28
	str	r3, [r1]
	ldr	r1, .L4+32
	str	r3, [r1]
	ldr	r1, .L4+36
	str	r3, [r1]
	ldr	r1, .L4+40
	str	r3, [r1]
	ldr	r1, .L4+44
	str	r2, [r1, #12]
	str	r2, [r1, #16]
	ldr	r2, .L4+48
	str	r3, [r1, #36]
	str	r3, [r1, #28]
	str	r3, [r1, #24]
	str	r3, [r2, #32]
	str	r3, [r2, #24]
	str	r3, [r2, #36]
	ldr	r3, .L4+52
	stm	r2, {r5, r6}
	str	r7, [r1]
	str	lr, [r1, #8]
	str	lr, [r2, #8]
	str	r4, [r2, #20]
	str	ip, [r1, #4]
	str	ip, [r2, #12]
	str	ip, [r2, #16]
	str	r0, [r1, #32]
	str	r0, [r2, #28]
	str	r0, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	83886592
	.word	tempspritesheetPal
	.word	100728832
	.word	tempspritesheetTiles
	.word	hOff
	.word	spidersCaught
	.word	attacks
	.word	spiderTimer
	.word	seed
	.word	loseGame
	.word	villager
	.word	spider
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
	mov	r1, #64
	mov	r4, #1
	mov	lr, #32
	mov	ip, #78
	mov	r0, #3
	ldr	r3, .L8
	stm	r3, {ip, lr}
	str	r4, [r3, #8]
	str	r1, [r3, #12]
	str	r1, [r3, #16]
	str	r0, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	str	r2, [r3, #24]
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
	push	{r4, r5, lr}
	mov	r5, #1
	mov	r1, #0
	mov	r4, #240
	mov	lr, #3
	mov	r0, #32
	mov	ip, #4
	ldr	r3, .L12
	ldr	r3, [r3, #16]
	add	r3, r3, r3, lsr #31
	asr	r2, r3, r5
	ldr	r3, .L12+4
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
.L13:
	.align	2
.L12:
	.word	villager
	.word	spider
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
	push	{r4, r5, lr}
	ldr	r2, .L16
	ldr	lr, .L16+4
	ldr	ip, [r2, #4]
	ldr	r1, [lr, #4]
	mvn	ip, ip, lsl #18
	mvn	r1, r1, lsl #17
	mvn	ip, ip, lsr #18
	mvn	r1, r1, lsr #17
	add	r0, r2, #24
	ldm	r0, {r0, r5}
	ldr	r4, [r2]
	add	r2, lr, #20
	add	r0, r0, r5, lsl #5
	ldm	r2, {r2, r5}
	ldr	r3, .L16+8
	ldr	lr, [lr]
	add	r2, r2, r5, lsl #5
	lsl	r0, r0, #3
	lsl	r2, r2, #2
	strh	r4, [r3]	@ movhi
	strh	lr, [r3, #32]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	strh	r1, [r3, #34]	@ movhi
	strh	r2, [r3, #36]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	villager
	.word	spider
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
	ldr	r4, .L39
	ldr	r3, [r4, #24]
	cmp	r3, #2
	movne	r2, #2
	ldr	r5, [r4, #36]
	strne	r3, [r4, #20]
	ldr	r3, .L39+4
	strne	r2, [r4, #24]
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #2
	bne	.L20
	ldr	r0, [r4, #28]
	ldr	r3, .L39+8
	ldr	r1, [r4, #32]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #28]
.L20:
	ldr	r3, .L39+12
	ldr	r2, .L39+16
	ldrh	r3, [r3, #48]
	ldrh	r2, [r2]
	ands	r3, r3, #16
	and	r2, r2, #1
	bne	.L21
	ldr	r0, .L39+20
	ldrh	r1, [r0]
	cmp	r2, #0
	add	r2, r1, #1
	str	r3, [r4, #24]
	strh	r2, [r0]	@ movhi
	bne	.L22
.L27:
	add	r5, r5, #1
	str	r5, [r4, #36]
	pop	{r4, r5, r6, lr}
	bx	lr
.L22:
	ldr	r3, .L39+24
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L27
.L24:
	mov	r3, #1
	str	r3, [r4, #24]
	b	.L27
.L21:
	cmp	r2, #0
	beq	.L25
	ldr	r3, .L39+24
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L24
.L25:
	ldr	r3, [r4, #24]
	cmp	r3, #2
	bne	.L27
	mov	r2, #0
	ldr	r3, [r4, #20]
	str	r2, [r4, #28]
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L40:
	.align	2
.L39:
	.word	villager
	.word	1717986919
	.word	__aeabi_idivmod
	.word	67109120
	.word	oldButtons
	.word	hOff
	.word	buttons
	.size	updateVillager, .-updateVillager
	.align	2
	.global	spawnSpider
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnSpider, %function
spawnSpider:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1
	ldr	r3, .L42
	str	r2, [r3, #36]
	bx	lr
.L43:
	.align	2
.L42:
	.word	spider
	.size	spawnSpider, .-spawnSpider
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
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L62
	ldr	r5, [r4, #32]
	add	r3, r5, r5, lsl #4
	ldr	r2, .L62+4
	add	r3, r3, r3, lsl #8
	ldr	r1, .L62+8
	add	r3, r3, r3, lsl #16
	sub	r2, r2, r3
	cmp	r2, r1
	sub	sp, sp, #20
	bcs	.L45
	ldr	r0, [r4, #24]
	ldr	r3, .L62+12
	ldr	r1, [r4, #28]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #24]
.L45:
	ldr	r3, [r4, #36]
	add	r5, r5, #1
	cmp	r3, #0
	str	r5, [r4, #32]
	bne	.L59
	mov	r2, #240
	mov	r3, #1
	str	r2, [r4, #4]
	str	r3, [r4, #36]
.L44:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L59:
	mov	r7, #0
	ldr	r5, .L62+16
	ldm	r5, {r2, r3}
	ldr	r1, [r5, #16]
	str	r2, [sp, #4]
	str	r1, [sp, #12]
	str	r3, [sp]
	str	r7, [sp, #8]
	add	r2, r4, #12
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r6, .L62+20
	mov	lr, pc
	bx	r6
	cmp	r0, r7
	beq	.L47
	ldr	r3, [r5, #24]
	cmp	r3, #1
	beq	.L60
.L47:
	ldr	r3, [r5, #12]
	ldm	r5, {r1, r2}
	ldr	r0, [r5, #16]
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
	beq	.L49
	ldr	r3, [r5, #24]
	bics	r3, r3, #2
	bne	.L49
	ldr	r1, .L62+24
	ldr	r2, [r1]
	cmp	r2, #3
	str	r3, [r4, #36]
	beq	.L61
	ldr	r0, .L62+28
	ldr	r3, [r0]
	add	r2, r2, #1
	sub	r3, r3, #1
	str	r2, [r1]
	str	r3, [r0]
.L51:
	mov	r2, #0
	ldr	r3, .L62+32
	str	r2, [r3]
	b	.L44
.L49:
	ldr	r3, .L62+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L62+40
	smull	r2, r3, r0, r3
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	ldr	r2, [r4, #8]
	sub	r0, r0, r3
	add	r0, r0, r0, lsr #31
	ldr	r3, [r4, #4]
	add	r0, r2, r0, asr #1
	sub	r0, r3, r0
	str	r0, [r4, #4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L60:
	ldr	r2, .L62+32
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r7, [r4, #36]
	str	r3, [r2]
	b	.L44
.L61:
	mov	ip, #1
	ldr	r0, .L62+44
	ldr	r2, .L62+28
	str	r3, [r1]
	str	ip, [r0]
	str	r3, [r2]
	b	.L51
.L63:
	.align	2
.L62:
	.word	spider
	.word	143165576
	.word	286331153
	.word	__aeabi_idivmod
	.word	villager
	.word	collision
	.word	attacks
	.word	lives
	.word	spidersCaught
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
	ldr	r3, .L68
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldr	r2, .L68+4
	ldrh	r2, [r2]
	lsr	r1, r2, #1
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #20]	@ movhi
	bl	updateVillager
	bl	updateSpider
	ldr	r3, .L68+8
	ldr	r0, [r3]
	ldr	r2, .L68+12
	add	r0, r0, #1
	str	r0, [r3]
	mov	lr, pc
	bx	r2
	ldr	r3, .L68+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L68+20
	smull	r2, r3, r0, r3
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	ldr	r2, .L68+24
	sub	r0, r0, r3
	rsb	r3, r0, r0, lsl #5
	add	r0, r0, r3, lsl #2
	ldr	r3, [r2]
	add	r0, r0, r0, lsl #2
	cmp	r3, r0, lsl #3
	movge	r1, #1
	movge	r3, r1
	ldrge	r0, .L68+28
	addlt	r3, r3, #1
	strge	r1, [r0, #36]
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L69:
	.align	2
.L68:
	.word	waitForVBlank
	.word	hOff
	.word	seed
	.word	srand
	.word	rand
	.word	1431655766
	.word	spiderTimer
	.word	spider
	.size	updateGame, .-updateGame
	.comm	shadowOAM,1024,4
	.comm	seed,4,4
	.comm	hOff,2,2
	.comm	loseGame,4,4
	.comm	spiderTimer,4,4
	.comm	lives,4,4
	.comm	attacks,4,4
	.comm	spidersCaught,4,4
	.comm	spider,40,4
	.comm	villager,40,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
