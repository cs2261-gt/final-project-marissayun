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
	.file	"gamebg.c"
	.text
	.global	gamebgPal
	.global	gamebgMap
	.global	gamebgTiles
	.section	.rodata
	.align	2
	.type	gamebgPal, %object
	.size	gamebgPal, 512
gamebgPal:
	.space	512
	.type	gamebgMap, %object
	.size	gamebgMap, 2048
gamebgMap:
	.space	2048
	.type	gamebgTiles, %object
	.size	gamebgTiles, 32
gamebgTiles:
	.space	32
	.ident	"GCC: (devkitARM release 53) 9.1.0"
