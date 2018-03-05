

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
(0006)                            || 
(0007)                       167  || .EQU INPUT = 0xA7 ; port for switches ----- INPUT
(0008)                       184  || .EQU OUTPUT = 0x0B8 ; port for LED output --- OUTOUT
(0009)                            || 
(0010)                            || .CSEG
(0011)                       001  || .ORG 0x01
(0012)  CS-0x001  0x1A000  0x001  || init: SEI ; enable interrupts
(0013)                            || 
(0014)                     0x002  || main_loop:	
(0015)  CS-0x002  0x320A7         || 		IN 		r0, INPUT 	;reads data from port 0xA7
(0016)  CS-0x003  0x361FF         || 		MOV 	r1,0xFF
(0017)  CS-0x004  0x0000A         || 		EXOR 	r0,r1 		;exor w/ one for two's complement
(0018)  CS-0x005  0x28001         || 		ADD 	r0,0x01 	;add one for two's complement
(0019)  CS-0x006  0x340B8         || 		OUT 	r0, OUTPUT	;outputs the signed number
(0020)  CS-0x007  0x08010         || 		BRN 	main_loop	;





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
INIT           0x001   (0012)  ||  
MAIN_LOOP      0x002   (0014)  ||  0020 


-- Directives: .BYTE
------------------------------------------------------------ 
--> No ".BYTE" directives used


-- Directives: .EQU
------------------------------------------------------------ 
INPUT          0x0A7   (0007)  ||  0015 
OUTPUT         0x0B8   (0008)  ||  0019 


-- Directives: .DEF
------------------------------------------------------------ 
--> No ".DEF" directives used


-- Directives: .DB
------------------------------------------------------------ 
--> No ".DB" directives used
