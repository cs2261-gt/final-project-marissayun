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
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #67108864
	mov	r5, #0
	mov	r1, #7936
	mov	r2, #4352
	ldr	r4, .L4
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3]	@ movhi
	strh	r5, [r3, #16]	@ movhi
	mov	r2, #83886080
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L4+8
	ldr	r1, .L4+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L4+16
	ldr	r1, .L4+20
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+28
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L4+32
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+36
	mov	r2, #1
	ldr	r1, .L4+40
	ldr	r0, .L4+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+48
	str	r5, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	startbgPal
	.word	6576
	.word	startbgTiles
	.word	100726784
	.word	startbgMap
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	playSoundA
	.word	1366560
	.word	airport
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #4864
	mov	r2, #7936
	mov	r3, #67108864
	push	{r4, lr}
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L8+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L8+12
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+16
	ldr	r2, .L8+20
	ldrh	r1, [r3, #48]
	ldr	r3, .L8+24
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+28
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	67109120
	.word	buttons
	.word	setupSounds
	.word	setupInterrupts
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	win.part.0, %function
win.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L13:
	.align	2
.L12:
	.word	buttons
	.size	win.part.0, .-win.part.0
	.set	lose.part.0,win.part.0
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r0, #7936
	mov	r1, #4352
	mov	r2, #0
	push	{r4, lr}
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	ldr	r3, .L16
	mov	lr, pc
	bx	r3
	ldr	r3, .L16+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L16+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L16+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L16+16
	mov	lr, pc
	bx	r4
	mov	r3, #6976
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L16+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L16+24
	mov	r0, #3
	ldr	r1, .L16+28
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L16+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	instructionsPal
	.word	instructionsTiles
	.word	100726784
	.word	instructionsMap
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L28
	ldrh	r3, [r3]
	tst	r3, #4
	bxeq	lr
	ldr	r3, .L28+4
	ldrh	r1, [r3]
	push	{r4, lr}
	ands	r4, r1, #4
	beq	.L27
	pop	{r4, lr}
	bx	lr
.L27:
	bl	goToStart
	mov	r1, r4
	ldr	r0, .L28+8
	ldr	r3, .L28+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	oldButtons
	.word	buttons
	.word	close
	.word	playSoundB
	.size	instructions, .-instructions
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #4864
	mov	r5, #67108864
	ldr	r4, .L32
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L32+4
	mov	lr, pc
	bx	r4
	mov	r2, #7168
	mov	r3, #6272
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L32+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L32+12
	ldr	r1, .L32+16
	mov	lr, pc
	bx	r4
	ldr	r2, .L32+20
	mov	r0, #3
	strh	r2, [r5, #8]	@ movhi
	ldr	r3, .L32+24
	ldr	r2, .L32+28
	ldr	r1, .L32+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L32+36
	mov	r0, #3
	ldr	r1, .L32+40
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L32+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L33:
	.align	2
.L32:
	.word	DMANow
	.word	islandPal
	.word	islandTiles
	.word	100720640
	.word	islandMap
	.word	24068
	.word	13872
	.word	100679680
	.word	treesTiles
	.word	100724736
	.word	treesMap
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L46
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L35
	ldr	r2, .L46+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L44
.L35:
	tst	r3, #4
	beq	.L34
	ldr	r3, .L46+4
	ldrh	r1, [r3]
	ands	r4, r1, #4
	beq	.L45
.L34:
	pop	{r4, lr}
	bx	lr
.L45:
	bl	goToInstructions
	mov	r1, r4
	ldr	r0, .L46+8
	ldr	r3, .L46+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L44:
	ldr	r3, .L46+16
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L46+20
	ldr	r3, .L46+24
	ldr	r0, .L46+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L46+32
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L35
.L47:
	.align	2
.L46:
	.word	oldButtons
	.word	buttons
	.word	open
	.word	playSoundB
	.word	stopSound
	.word	1465920
	.word	playSoundA
	.word	islandnight
	.word	initializeGame
	.size	start, .-start
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r0, #7936
	mov	r1, #4352
	mov	r2, #0
	push	{r4, lr}
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	ldr	r3, .L50
	mov	lr, pc
	bx	r3
	ldr	r3, .L50+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L50+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L50+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L50+16
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L50+20
	ldr	r1, .L50+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L50+28
	mov	r0, #3
	ldr	r1, .L50+32
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L50+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L51:
	.align	2
.L50:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	pausebgPal
	.word	5872
	.word	pausebgTiles
	.word	100726784
	.word	pausebgMap
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L60
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L60+4
	ldrh	r1, [r3]
	ands	r1, r1, #8
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L60+8
	ldr	r0, .L60+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L60+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L61:
	.align	2
.L60:
	.word	oldButtons
	.word	buttons
	.word	playSoundB
	.word	close
	.word	unpauseSound
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r0, #7936
	mov	r1, #4352
	mov	r2, #0
	push	{r4, lr}
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	ldr	r3, .L64
	mov	lr, pc
	bx	r3
	ldr	r3, .L64+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L64+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L64+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L64+16
	mov	lr, pc
	bx	r4
	mov	r3, #4736
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L64+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L64+24
	mov	r0, #3
	ldr	r1, .L64+28
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L64+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L65:
	.align	2
.L64:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	winbgPal
	.word	winbgTiles
	.word	100726784
	.word	winbgMap
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L68
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L69:
	.align	2
.L68:
	.word	oldButtons
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r0, #7936
	mov	r1, #4352
	mov	r2, #0
	push	{r4, lr}
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	ldr	r3, .L72
	mov	lr, pc
	bx	r3
	ldr	r3, .L72+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L72+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L72+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L72+16
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L72+20
	ldr	r1, .L72+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L72+28
	mov	r0, #3
	ldr	r1, .L72+32
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L72+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L73:
	.align	2
.L72:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	losebgPal
	.word	4112
	.word	losebgTiles
	.word	100726784
	.word	losebgMap
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L85
	mov	lr, pc
	bx	r3
	ldr	r3, .L85+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L85+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L85+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L85+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L85+20
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L75
	ldr	r3, .L85+24
	ldrh	r1, [r3]
	ands	r4, r1, #4
	beq	.L82
.L75:
	ldr	r4, .L85+28
	ldr	r5, [r4]
	cmp	r5, #0
	bne	.L83
	ldr	r4, .L85+32
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L84
	pop	{r4, r5, r6, lr}
	bx	lr
.L83:
	ldr	r3, .L85+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L85+40
	mov	r2, #1
	ldr	r1, .L85+44
	ldr	r0, .L85+48
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r3, [r4]
	pop	{r4, r5, r6, lr}
	b	goToWin
.L84:
	ldr	r3, .L85+36
	mov	lr, pc
	bx	r3
	str	r5, [r4]
	pop	{r4, r5, r6, lr}
	b	goToLose
.L82:
	ldr	r3, .L85+52
	mov	lr, pc
	bx	r3
	mov	r1, r4
	ldr	r0, .L85+56
	ldr	r3, .L85+60
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToPause
.L86:
	.align	2
.L85:
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	winGame
	.word	loseGame
	.word	stopSound
	.word	playSoundA
	.word	976608
	.word	prologue
	.word	pauseSound
	.word	open
	.word	playSoundB
	.size	game, .-game
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L104
	mov	lr, pc
	bx	r3
	ldr	r4, .L104+4
	ldr	r9, .L104+8
	ldr	r8, .L104+12
	ldr	fp, .L104+16
	ldr	r10, .L104+20
	ldr	r6, .L104+24
	ldr	r7, .L104+28
	ldr	r5, .L104+32
.L96:
	ldrh	r2, [r4]
	strh	r2, [r9]	@ movhi
	ldr	r3, [r8]
	ldrh	r1, [r7, #48]
	strh	r1, [r4]	@ movhi
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L88
.L90:
	.word	.L95
	.word	.L94
	.word	.L93
	.word	.L92
	.word	.L91
	.word	.L89
.L89:
	tst	r2, #8
	ldrne	r3, .L104+36
	movne	lr, pc
	bxne	r3
.L88:
	mov	r3, #512
	mov	r2, #117440512
	mov	r1, r5
	mov	r0, #3
	mov	lr, pc
	bx	r6
	b	.L96
.L91:
	tst	r2, #8
	beq	.L88
	ldr	r3, .L104+40
	mov	lr, pc
	bx	r3
	b	.L88
.L92:
	ldr	r3, .L104+44
	mov	lr, pc
	bx	r3
	b	.L88
.L93:
	ldr	r3, .L104+48
	mov	lr, pc
	bx	r3
	b	.L88
.L95:
	mov	lr, pc
	bx	fp
	b	.L88
.L94:
	mov	lr, pc
	bx	r10
	b	.L88
.L105:
	.align	2
.L104:
	.word	initialize
	.word	buttons
	.word	oldButtons
	.word	state
	.word	start
	.word	instructions
	.word	DMANow
	.word	67109120
	.word	shadowOAM
	.word	lose.part.0
	.word	win.part.0
	.word	game
	.word	pause
	.size	main, .-main
	.text
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
