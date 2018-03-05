.EQU LEDS 		= 0x74
.EQU SWITCHES 	= 0x75

.CSEG
.ORG 0x10

init	MOV		R0, 0x00 	;Set R0 as ISR indicator
		SEI					;Unmask interrupts

main:
		IN 		R1, LEDS	;Set R1 as Leds
		IN 		R2, SWITCHES	;Set R2 as Switches
		OUT		R1, LEDS	;outputs leds
		BRN 	main		;do it all again

ISR:	CMP		R0, 0x00	;Check to see if indicator is off
		BREQ	Set_LEDs	
		EXOR	R2, 0xFF	;Compliment switches
		MOV		R1, R2		;With complimented switches, turn on leds
		RETIE				;return with interrupt enabled

SET_LEDS:
		MOV		R0, 0x01	
		MOV		R1, R2		;With corresponding switches, turn on leds
		RETIE				;return with interrupt enabled

.ORG 0x3FF					;interrupt vector address
							;comment because RAT cries without one