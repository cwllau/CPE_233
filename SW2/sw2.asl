

List FileKey 
----------------------------------------------------------------------
C1      C2      C3      C4    || C5
--------------------------------------------------------------
C1:  Address (decimal) of instruction in source file. 
C2:  Segment (code or data) and address (in code or data segment) 
       of inforation associated with current linte. Note that not all
       source lines will contain information in this field.  
C3:  Opcode bits (this field only appears for valid instructions.
C4:  Data field; lists data for labels and assorted directives. 
C5:  Raw line from source code.
----------------------------------------------------------------------


(0001)                            || ;--------------------------------------------------------------------
(0002)                            || ;- Programmer: Colleen Lau, Tedmon Tran
(0003)                            || ;- Date: 01-26-2018
(0004)                            || ;- Experiment #2
(0005)                            || ;-
(0006)                            || ;- This program does something really cool. Here's the description...
(0007)                            || ;--------------------------------------------------------------------
(0008)                            || ;--------------------------------------------------------------------
(0009)                            || ;- I/O Constants
(0010)                            || ;--------------------------------------------------------------------
(0011)                       153  || .EQU INPUT = 0x99 ; port for switches ----- INPUT
(0012)                       051  || .EQU OUTPUT = 0x33 ; port for LED output --- OUTOUT
(0013)                            || 
(0014)                            || ;.EQU BTN_PORT = 0x10 ; port for button input - INPUT
(0015)                            || 
(0016)                       001  || .ORG 0x01
            syntax error

(0017)  CS-0x001  0x1A000  0x001  || init: SEI ; enable interrupts
(0018)                            || 
(0019)                     0x002  || main_loop: 
(0020)  CS-0x002  0x36000         ||  MOV	r0, 0x00	;cumulator
(0021)  CS-0x003  0x32199         ||  IN 	r1, INPUT 	;reads data from port 0x99
(0022)  CS-0x004  0x02008         ||  ADD 	r0,r1 		;add r0 to r1 
(0023)  CS-0x005  0x02008         ||  ADD 	r0,r1 		;add r0 to r1 *2
(0024)  CS-0x006  0x02008         ||  ADD 	r0,r1 		;add r0 to r1 *3
(0025)  CS-0x007  0x34033         ||  OUT 	r0, OUTPUT	;output data*3 to port 0x33 
(0026)  CS-0x008  0x08010         ||  BRN 	main_loop
	;output data*3 to port 0x33 
(0027)                            ||  BRN 	main_loop
	;output data*3 to port 0x33 





Symbol Table Key 
----------------------------------------------------------------------
C1             C2     C3      ||  C4+
-------------  ----   ----        -------
C1:  name of symbol
C2:  the value of symbol 
C3:  source code line number where symbol defined
C4+: source code line number of where symbol is referenced 
----------------------------------------------------------------------


-- Labels
------------------------------------------------------------ 
INIT           0x001   (0017)  ||  
MAIN_LOOP      0x002   (0019)  ||  0026 


-- Directives: .BYTE
------------------------------------------------------------ 
--> No ".BYTE" directives used


-- Directives: .EQU
------------------------------------------------------------ 
INPUT          0x099   (0011)  ||  0021 
OUTPUT         0x033   (0012)  ||  0025 


-- Directives: .DEF
------------------------------------------------------------ 
--> No ".DEF" directives used


-- Directives: .DB
------------------------------------------------------------ 
--> No ".DB" directives used
