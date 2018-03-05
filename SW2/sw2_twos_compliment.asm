;--------------------------------------------------------------------
;- Programmer: Colleen Lau, Tedmon Tran
;- Date: 01-26-2018
;- Experiment #2
;-

.EQU INPUT = 0xA7 ; port for switches ----- INPUT
.EQU OUTPUT = 0x0B8 ; port for LED output --- OUTOUT

.CSEG
.ORG 0x01
init: SEI ; enable interrupts

main_loop:	
		IN 		r0, INPUT 	;reads data from port 0xA7
		MOV 	r1,0xFF
		EXOR 	r0,r1 		;exor w/ one for two's complement
		ADD 	r0,0x01 	;add one for two's complement
		OUT 	r0, OUTPUT	;outputs the signed number
		BRN 	main_loop	;
