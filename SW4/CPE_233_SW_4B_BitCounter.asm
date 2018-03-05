;-------------------------------------------------------------------------------
;- Programmer: Willis, Colleen
;- Date: 02-05-18
;- Experiment #4A
;-

;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
;- I/O Port Constants 
;------------------------------------------------------------------------------
.EQU SWITCH_PORT = 0x20
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
; Memory Designation Constants
;------------------------------------------------------------------------------
.CSEG 
.ORG 0x10
;------------------------------------------------------------------------------

main:
		IN		R10 ,SWITCH_PORT	; Read the first number to count set bits
        IN		R11 ,SWITCH_PORT	; Read the second number to count set bits
        MOV		R22 ,0x00			; Initialize R10-Bit-Counter to zero
        MOV		R23 ,0x09			; Initialize R10-Shift-Counter to 9
		MOV		R24 ,0x00			; Initialize R11-Bit-Counter to zero
		MOV		R25 ,0x09			; Initialize R11-Shift-Counter to 9
		CLC							; Clear the carry before beginning to count
    
R10BitShifter:
		CLC							; Ensure that the carry flag is cleared before checking
		SUB		R23 ,0x01			; Decrement the shift counter
		BREQ	R11BitShifter		; Switch to R11 if finished with R10
		LSR		R10					; Shift R10 to check the carry flag
		BRCS    incrementR10		; Go to the inrementR10
		BRN		R10BitShifter		; Go back to the top
			
incrementR10:
		ADD		R22 ,0x01			; Increment the R10-Bit-Counter
		BRN		R10BitShifter		; Go back to the R10BitShifter

R11BitShifter:
		CLC							; Ensure that the carry flag is cleared before checking
		SUB		R25 ,0x01			; Decrement the shift counter
		BREQ	compareBitCount		; Go to compare the counts if finished with R11
		LSR		R11					; Shift R11 to check the carry flag
		BRCS    incrementR11		; Go to the inrementR11
		BRN		R11BitShifter		; Go back to the top
		
incrementR11:
		ADD		R24 ,0x01			; Increment the R11-Bit-Counter
		BRN		R11BitShifter		; Go back to the R11BitShifter
		
compareBitCount:
		CLC							; Ensure that the carry flag is cleared before checking
		CMP		R22	,R24			; Compare the number of bits counted
		BREQ	clearR10R11			; If R10 and R11 have the same number of bits set, then clear them
		BRCS	SetR11  			; If R11 had more bits set, then set R11
		BRN		SetR10				; Else if R10 had more bits set, then set R10
		
clearR10R11:
		MOV		R10	,0x00			; Clear R10
		MOV		R11	,0x00			; Clear R11
		BRN		main				; Start the program over
		
SetR10:
		MOV		R10	,R22			; Set R10 to the number of bits counted
		BRN		main				; Start the program over

SetR11:
		MOV		R11	,R24			; Set R10 to the number of bits counted
		BRN		main				; Start the program over
		
