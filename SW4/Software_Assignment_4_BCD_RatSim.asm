;---------------------------------------------------------------------
;- Programmer: Willis, Colleen
;- Date: 02-05-18
;- Experiment #4A
;-
;- This program takes a 3 digit BCD value and converts it to
;- subtracts one from that value, and outputs the value to the LED 
;- ports
;--------------------------------------------------------------------

;--------------------------------------------------------------------
;- I/O Port Constants 
;--------------------------------------------------------------------
.EQU SWITCH_PORT = 0x20 ; port for switch input 
;--------------------------------------------------------------------

;--------------------------------------------------------------------
; Memory Designation Constants
;--------------------------------------------------------------------
.CSEG 
.ORG 0x10
;--------------------------------------------------------------------

main:  
		IN    R21 ,SWITCH_PORT ; Read in from switch to R21 (100's BCD)
		IN    R20 ,SWITCH_PORT ; Read in from switch to R20 (10's +1's BCD)
		MOV   R22 ,0x00        ; Initialize the accumulator to zero
		MOV   R23 ,0x00        ; Initialize the counter to 0
	
hundr:  
		ADD   R22 ,R21         ; Sum to get R22 x 100
		ADD   R23 ,0x01        ; Increment the counter
		CMP   R23 ,0x64        ; Check to see if the counter reached 100
		BREQ  tens             ; If finished summing then start on the 10's
		BRN   hundr

tens: 	
		MOV   R24, R20			;R24 is the temp reg (masked value)
		MOV   R25, 0xF0			;R25 is 11110000 clear bit mask
		MOV   R23 ,0x00        	;Initialize the counter to 0
		AND   R24, R25			;Clear the lower bits to get the "tens"

tens_shift:						;Clearing to get four bits
		CLC
		LSR   R24
		ADD   R23 ,0x01        ; Increment the counter
		CMP   R23 ,0x04        ; Check to see if the counter reached 100
		BREQ  tens_multiply
		BRN	  tens_shift

tens_multiply:
		MOV   R23, 0x00         ;Initialize the counter to 0
loop:	ADD   R22, R24 			;accumulating the tens with the hundreds
		ADD   R23, 0x01			;increment the counter
		CMP   R23, 0x0A			;Check to see if the counter reached 10
		BREQ  ones
		BRN   loop

ones:
		MOV   R25 , 0x0F        ;Mask to clear upper bits
		MOV   R24 , R20			;Store
		AND	  R24 , R25			;Clear the upper bits
		ADD	  R22 , R24			;Add the ones to the accumulator
		MOV   R31 , R22			;Place the final binary number in register R31
