;--------------------------------------------------------------------
;- Software Assignment 3, Swapping registers
;-Colleen, Brittany, Joshua
;--------------------------------------------------------------------
.EQU LED_PORT = 0x10		; port address for output
.EQU SWITCH_PORT = 0x40 	; port address for input
;--------------------------------------------------------------------

.CSEG
.ORG 0x30 				; instruction storage starts here

	main: MOV R0, 0x6E
	MOV R1, 0x67
	MOV R2, 0x08
	MOV R3, 0x00
	CLC 
	main2: LSR R3
	LSR R0
	LSR R1
	LSL R3
	SUB R2, 0x01
	BRNE main2 ;0x35
	LSR R3
	LSR R0
	BRN main ;0x30
