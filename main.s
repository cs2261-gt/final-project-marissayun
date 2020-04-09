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
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	start.part.0, %function
start.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L8
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L8+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L9:
	.align	2
.L8:
	.word	buttons
	.word	initializeGame
	.word	state
	.size	start.part.0, .-start.part.0
	.align	2
	.global	goToStart
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
	ldr	r4, .L12
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L12+4
	mov	lr, pc
	bx	r4
	mov	r3, #752
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L12+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L12+12
	ldr	r1, .L12+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L12+28
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L12+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
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
	ldr	r2, .L16+16
	ldr	r3, .L16+20
	ldrh	r2, [r2, #48]
	pop	{r4, lr}
	strh	r2, [r3]	@ movhi
	b	goToStart
.L17:
	.align	2
.L16:
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
	ldr	r3, .L20
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L21:
	.align	2
.L20:
	.word	buttons
	.size	win.part.0, .-win.part.0
	.set	lose.part.0,win.part.0
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
	@ link register save eliminated.
	ldr	r3, .L24
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	start.part.0
.L25:
	.align	2
.L24:
	.word	oldButtons
	.size	start, .-start
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
	mov	r2, #2
	ldr	r3, .L27
	str	r2, [r3]
	bx	lr
.L28:
	.align	2
.L27:
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
	ldr	r3, .L31
	mov	lr, pc
	bx	r3
	ldr	r3, .L31+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L31+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L31+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L31+16
	mov	lr, pc
	bx	r4
	mov	r3, #688
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L31+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L31+24
	mov	r0, #3
	ldr	r1, .L31+28
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L31+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L32:
	.align	2
.L31:
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
	ldr	r3, .L38
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L38+4
	ldrh	r3, [r3]
	tst	r3, #8
	moveq	r2, #2
	ldreq	r3, .L38+8
	streq	r2, [r3]
	bx	lr
.L39:
	.align	2
.L38:
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
	ldr	r3, .L42
	mov	lr, pc
	bx	r3
	ldr	r3, .L42+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L42+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L42+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+16
	mov	lr, pc
	bx	r4
	mov	r3, #1808
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L42+24
	mov	r0, #3
	ldr	r1, .L42+28
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L42+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L43:
	.align	2
.L42:
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
	ldr	r3, .L46
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L47:
	.align	2
.L46:
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
	mov	r3, #2592
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L50+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L50+24
	mov	r0, #3
	ldr	r1, .L50+28
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L50+32
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
	ldr	r3, .L63
	mov	lr, pc
	bx	r3
	ldr	r3, .L63+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L63+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L63+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L63+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L63+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L53
	ldr	r3, .L63+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L60
.L53:
	ldr	r3, .L63+28
	ldr	r2, [r3]
	cmp	r2, #5
	beq	.L61
	ldr	r3, .L63+32
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L62
	pop	{r4, lr}
	bx	lr
.L62:
	mov	r2, #0
	pop	{r4, lr}
	str	r2, [r3]
	b	goToLose
.L60:
	pop	{r4, lr}
	b	goToPause
.L61:
	mov	r2, #0
	pop	{r4, lr}
	str	r2, [r3]
	b	goToWin
.L64:
	.align	2
.L63:
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
	ldr	r3, .L87
	mov	lr, pc
	bx	r3
	ldr	r4, .L87+4
	ldr	r9, .L87+8
	ldr	r5, .L87+12
	ldr	fp, .L87+16
	ldr	r10, .L87+20
	ldr	r7, .L87+24
	ldr	r8, .L87+28
	ldr	r6, .L87+32
.L73:
	ldrh	r1, [r4]
	strh	r1, [r9]	@ movhi
	ldr	r2, [r5]
	ldrh	r3, [r8, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L66
.L68:
	.word	.L72
	.word	.L71
	.word	.L70
	.word	.L69
	.word	.L67
.L67:
	tst	r1, #8
	ldrne	r3, .L87+36
	movne	lr, pc
	bxne	r3
.L66:
	mov	r3, #512
	mov	r2, #117440512
	mov	r1, r6
	mov	r0, #3
	mov	lr, pc
	bx	r7
	b	.L73
.L69:
	tst	r1, #8
	beq	.L66
	ldr	r3, .L87+40
	mov	lr, pc
	bx	r3
	b	.L66
.L70:
	mov	lr, pc
	bx	r10
	b	.L66
.L72:
	tst	r1, #8
	beq	.L66
	mov	lr, pc
	bx	fp
	b	.L66
.L71:
	tst	r1, #8
	beq	.L66
	tst	r3, #8
	moveq	r3, #2
	streq	r3, [r5]
	b	.L66
.L88:
	.align	2
.L87:
	.word	initialize
	.word	buttons
	.word	oldButtons
	.word	state
	.word	start.part.0
	.word	game
	.word	DMANow
	.word	67109120
	.word	shadowOAM
	.word	lose.part.0
	.word	win.part.0
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
