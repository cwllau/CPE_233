;Pop and push

.EQU IN_ = 0x00
.CSEG
.ORG 0x10

main:	MOV		R31, 0xD0		;set users stack pointer
		MOV 	R28, 0xD0		;set stack pointer for registers

		CALL push_				;Pushing 1st element
		CALL pop_				;Popping 1st element

		CALL push_				;Pushing 2nd element
		CALL push_				;Pushing 3rd element
		CALL pop_				;Popping 3rd element

		CALL push_				;Pushing 4th element
		CALL push_				;Pushing 5th element
		CALL push_				;Pushing 6th element
		CALL pop_				;Popping 6th element
		CALL pop_				;Popping 5th element
		CALL push_				;Pushing 7th element
		CALL pop_				;Popping 7th element
		CALL pop_				;Popping 4th element
		CALL pop_				;Popping 2nd element
								;Stack now empty
		MOV R28, 0x00			;Not permanently altering R28
		BRN main

push_: 	IN	R30, IN_			;User inputs value to push
		SUB	R28, 0x01			;Memory stack pointer decremented
		ST	R30, (R28)			;Input stored in memory location
		MOV	R30, 0x00			;Sets R30 to 0
		LD	R31, (R28)			;Sets "user's" stack pointer to current stack pointer
		RET

pop_:	LD	R31, (R28)			;Sets "user's" stack pointer to current stack pointer
		ADD	R28, 0x01			;Memory stack pointer incremented
		RET
;comment why
