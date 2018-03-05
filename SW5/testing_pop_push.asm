;Pop and push_example

.EQU IN_ = 0x00
.CSEG
.ORG 0x10

main:	MOV		R1, 0x01
		MOV		R2, 0x02
		MOV		R3, 0x03
		MOV		R4, 0x04

		PUSH	R4
		POP		R5
		POP		R5
		POP		R6

		PUSH	R2
		PUSH	R3
		POP		R6
		POP		R7
		POP		R8

		PUSH	R2
		PUSH	R2
		PUSH	R3
		PUSH 	R4
		PUSH	R3
		PUSH	R5
