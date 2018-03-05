;--------------------------------------------------------------------
;- Programmer: Colleen Lau, Tedmon Tran
;- Date: 01-26-2018
;- Experiment #2
;-
;- This program does something really cool. Here's the description...
;--------------------------------------------------------------------
;--------------------------------------------------------------------
;- I/O Constants
;--------------------------------------------------------------------
.EQU INPUT = 0x99 ; port for switches ----- INPUT
.EQU OUTPUT = 0x33 ; port for LED output --- OUTOUT

;.EQU BTN_PORT = 0x10 ; port for button input - INPUT

SEG
.ORG 0x01
init: SEI ; enable interrupts

main_loop: 
 MOV	r0, 0x00	;cumulator
 IN 	r1, INPUT 	;reads data from port 0x99
 ADD 	r0,r1 		;add r0 to r1 
 ADD 	r0,r1 		;add r0 to r1 *2
 ADD 	r0,r1 		;add r0 to r1 *3
 OUT 	r0, OUTPUT	;output data*3 to port 0x33 
 BRN 	main_loop