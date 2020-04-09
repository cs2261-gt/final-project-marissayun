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
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r3, #752
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L4+28
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	startbgPal
	.word	startbgTiles
	.word	100726784
	.word	startbgMap
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
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
	ldr	r2, .L8+16
	ldr	r3, .L8+20
	ldrh	r2, [r2, #48]
	pop	{r4, lr}
	strh	r2, [r3]	@ movhi
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
	push	{r4, lr}
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
	mov	r3, #688
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
	ldr	r4, .L30
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L19
	ldr	r2, .L30+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L28
.L19:
	tst	r3, #4
	beq	.L18
	ldr	r3, .L30+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L29
.L18:
	pop	{r4, lr}
	bx	lr
.L29:
	pop	{r4, lr}
	b	goToInstructions
.L28:
	ldr	r3, .L30+8
	mov	lr, pc
	bx	r3
	mov	r1, #3
	ldr	r2, .L30+12
	ldrh	r3, [r4]
	str	r1, [r2]
	b	.L19
.L31:
	.align	2
.L30:
	.word	oldButtons
	.word	buttons
	.word	initializeGame
	.word	state
	.size	start, .-start
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
	ldr	r3, .L37
	ldrh	r3, [r3]
	tst	r3, #4
	bxeq	lr
	ldr	r3, .L37+4
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	b	goToStart
.L38:
	.align	2
.L37:
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
	@ link register save eliminated.
	mov	r2, #3
	ldr	r3, .L40
	str	r2, [r3]
	bx	lr
.L41:
	.align	2
.L40:
	.word	state
	.size	goToGame, .-goToGame
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
	push	{r4, lr}
	ldr	r3, .L44
	mov	lr, pc
	bx	r3
	ldr	r3, .L44+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L44+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L44+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L44+16
	mov	lr, pc
	bx	r4
	mov	r3, #688
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L44+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L44+24
	mov	r0, #3
	ldr	r1, .L44+28
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L44+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L45:
	.align	2
.L44:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	pausebgPal
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
	ldr	r3, .L51
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L51+4
	ldrh	r3, [r3]
	tst	r3, #8
	moveq	r2, #3
	ldreq	r3, .L51+8
	streq	r2, [r3]
	bx	lr
.L52:
	.align	2
.L51:
	.word	oldButtons
	.word	buttons
	.word	state
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
	push	{r4, lr}
	ldr	r3, .L55
	mov	lr, pc
	bx	r3
	ldr	r3, .L55+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L55+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L55+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L55+16
	mov	lr, pc
	bx	r4
	mov	r3, #1808
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L55+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L55+24
	mov	r0, #3
	ldr	r1, .L55+28
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L55+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L56:
	.align	2
.L55:
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
	ldr	r3, .L59
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L60:
	.align	2
.L59:
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
	push	{r4, lr}
	ldr	r3, .L63
	mov	lr, pc
	bx	r3
	ldr	r3, .L63+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L63+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L63+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L63+16
	mov	lr, pc
	bx	r4
	mov	r3, #2592
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L63+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L63+24
	mov	r0, #3
	ldr	r1, .L63+28
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L63+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L64:
	.align	2
.L63:
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
	push	{r4, lr}
	ldr	r3, .L76
	mov	lr, pc
	bx	r3
	ldr	r3, .L76+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L76+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L76+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L76+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L76+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L66
	ldr	r3, .L76+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L73
.L66:
	ldr	r3, .L76+28
	ldr	r2, [r3]
	cmp	r2, #5
	beq	.L74
	ldr	r3, .L76+32
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L75
	pop	{r4, lr}
	bx	lr
.L75:
	mov	r2, #1
	pop	{r4, lr}
	str	r2, [r3]
	b	goToLose
.L73:
	pop	{r4, lr}
	b	goToPause
.L74:
	mov	r2, #0
	pop	{r4, lr}
	str	r2, [r3]
	b	goToWin
.L77:
	.align	2
.L76:
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	spidersCaught
	.word	loseGame
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
	ldr	r3, .L101
	mov	lr, pc
	bx	r3
	ldr	r4, .L101+4
	ldr	r9, .L101+8
	ldr	r5, .L101+12
	ldr	fp, .L101+16
	ldr	r10, .L101+20
	ldr	r7, .L101+24
	ldr	r8, .L101+28
	ldr	r6, .L101+32
.L87:
	ldrh	r1, [r4]
	strh	r1, [r9]	@ movhi
	ldr	r2, [r5]
	ldrh	r3, [r8, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L79
.L81:
	.word	.L86
	.word	.L85
	.word	.L84
	.word	.L83
	.word	.L82
	.word	.L80
.L80:
	tst	r1, #8
	ldrne	r3, .L101+36
	movne	lr, pc
	bxne	r3
.L79:
	mov	r3, #512
	mov	r2, #117440512
	mov	r1, r6
	mov	r0, #3
	mov	lr, pc
	bx	r7
	b	.L87
.L82:
	tst	r1, #8
	beq	.L79
	ldr	r3, .L101+40
	mov	lr, pc
	bx	r3
	b	.L79
.L83:
	mov	lr, pc
	bx	r10
	b	.L79
.L84:
	tst	r1, #8
	beq	.L79
	tst	r3, #8
	moveq	r3, #3
	streq	r3, [r5]
	b	.L79
.L86:
	mov	lr, pc
	bx	fp
	b	.L79
.L85:
	tst	r1, #4
	beq	.L79
	tst	r3, #4
	bne	.L79
	ldr	r3, .L101+44
	mov	lr, pc
	bx	r3
	b	.L79
.L102:
	.align	2
.L101:
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
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
