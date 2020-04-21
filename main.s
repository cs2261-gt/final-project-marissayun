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
	mov	r3, #6720
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
	@ link register save eliminated.
	ldr	r3, .L23
	ldrh	r3, [r3]
	tst	r3, #4
	bxeq	lr
	ldr	r3, .L23+4
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	b	goToStart
.L24:
	.align	2
.L23:
	.word	oldButtons
	.word	buttons
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
	ldr	r4, .L27
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L27+4
	mov	lr, pc
	bx	r4
	mov	r2, #7168
	mov	r3, #6272
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L27+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L27+12
	ldr	r1, .L27+16
	mov	lr, pc
	bx	r4
	ldr	r2, .L27+20
	mov	r0, #3
	strh	r2, [r5, #8]	@ movhi
	ldr	r3, .L27+24
	ldr	r2, .L27+28
	ldr	r1, .L27+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L27+36
	mov	r0, #3
	ldr	r1, .L27+40
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L27+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L28:
	.align	2
.L27:
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
	ldr	r4, .L41
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L30
	ldr	r2, .L41+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L39
.L30:
	tst	r3, #4
	beq	.L29
	ldr	r3, .L41+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L40
.L29:
	pop	{r4, lr}
	bx	lr
.L40:
	pop	{r4, lr}
	b	goToInstructions
.L39:
	ldr	r3, .L41+8
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L41+12
	ldr	r3, .L41+16
	ldr	r0, .L41+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L41+24
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L30
.L42:
	.align	2
.L41:
	.word	oldButtons
	.word	buttons
	.word	stopSound
	.word	1465920
	.word	playSoundA
	.word	islandnight
	.word	initializeGame
	.size	start, .-start
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause.part.0, %function
pause.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L48
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L48+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L49:
	.align	2
.L48:
	.word	buttons
	.word	unpauseSound
	.size	pause.part.0, .-pause.part.0
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
	ldr	r3, .L52
	mov	lr, pc
	bx	r3
	ldr	r3, .L52+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L52+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L52+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L52+16
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L52+20
	ldr	r1, .L52+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L52+28
	mov	r0, #3
	ldr	r1, .L52+32
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L52+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L53:
	.align	2
.L52:
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
	@ link register save eliminated.
	ldr	r3, .L56
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	pause.part.0
.L57:
	.align	2
.L56:
	.word	oldButtons
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
	ldr	r3, .L60
	mov	lr, pc
	bx	r3
	ldr	r3, .L60+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L60+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L60+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L60+16
	mov	lr, pc
	bx	r4
	mov	r3, #832
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L60+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L60+24
	mov	r0, #3
	ldr	r1, .L60+28
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L60+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L61:
	.align	2
.L60:
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
	ldr	r3, .L64
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L65:
	.align	2
.L64:
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
	ldr	r3, .L68
	mov	lr, pc
	bx	r3
	ldr	r3, .L68+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L68+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L68+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L68+16
	mov	lr, pc
	bx	r4
	mov	r3, #1072
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L68+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L68+24
	mov	r0, #3
	ldr	r1, .L68+28
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L68+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L69:
	.align	2
.L68:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	losebgPal
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
	ldr	r3, .L81
	mov	lr, pc
	bx	r3
	ldr	r3, .L81+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L81+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L81+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L81+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L81+20
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L71
	ldr	r3, .L81+24
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L78
.L71:
	ldr	r4, .L81+28
	ldr	r5, [r4]
	cmp	r5, #0
	bne	.L79
	ldr	r4, .L81+32
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L80
	pop	{r4, r5, r6, lr}
	bx	lr
.L79:
	ldr	r3, .L81+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L81+40
	mov	r2, #1
	ldr	r1, .L81+44
	ldr	r0, .L81+48
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r3, [r4]
	pop	{r4, r5, r6, lr}
	b	goToWin
.L80:
	ldr	r3, .L81+36
	mov	lr, pc
	bx	r3
	str	r5, [r4]
	pop	{r4, r5, r6, lr}
	b	goToLose
.L78:
	ldr	r3, .L81+52
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToPause
.L82:
	.align	2
.L81:
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
	ldr	r3, .L106
	mov	lr, pc
	bx	r3
	ldr	r4, .L106+4
	ldr	r9, .L106+8
	ldr	r8, .L106+12
	ldr	fp, .L106+16
	ldr	r10, .L106+20
	ldr	r6, .L106+24
	ldr	r7, .L106+28
	ldr	r5, .L106+32
.L92:
	ldrh	r1, [r4]
	strh	r1, [r9]	@ movhi
	ldr	r2, [r8]
	ldrh	r3, [r7, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L84
.L86:
	.word	.L91
	.word	.L90
	.word	.L89
	.word	.L88
	.word	.L87
	.word	.L85
.L85:
	tst	r1, #8
	ldrne	r3, .L106+36
	movne	lr, pc
	bxne	r3
.L84:
	mov	r3, #512
	mov	r2, #117440512
	mov	r1, r5
	mov	r0, #3
	mov	lr, pc
	bx	r6
	b	.L92
.L87:
	tst	r1, #8
	beq	.L84
	ldr	r3, .L106+40
	mov	lr, pc
	bx	r3
	b	.L84
.L88:
	mov	lr, pc
	bx	r10
	b	.L84
.L89:
	tst	r1, #8
	beq	.L84
	ldr	r3, .L106+44
	mov	lr, pc
	bx	r3
	b	.L84
.L91:
	mov	lr, pc
	bx	fp
	b	.L84
.L90:
	tst	r1, #4
	beq	.L84
	tst	r3, #4
	bne	.L84
	ldr	r3, .L106+48
	mov	lr, pc
	bx	r3
	b	.L84
.L107:
	.align	2
.L106:
	.word	initialize
	.word	buttons
	.word	oldButtons
	.word	state
	.word	start
	.word	game
	.word	DMANow
	.word	67109120
	.word	shadowOAM
	.word	lose.part.0
	.word	win.part.0
	.word	pause.part.0
	.word	goToStart
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
