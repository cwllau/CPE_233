

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


(0001)                            || ;Pop and push_example
(0002)                            || 
(0003)                       000  || .EQU IN_ = 0x00
(0004)                            || .CSEG
(0005)                       016  || .ORG 0x10
(0006)                            || 
(0007)  CS-0x010  0x36101  0x010  || main:	MOV		R1, 0x01
(0008)  CS-0x011  0x36202         || 		MOV		R2, 0x02
(0009)  CS-0x012  0x36303         || 		MOV		R3, 0x03
(0010)  CS-0x013  0x36404         || 		MOV		R4, 0x04
(0011)                            || 
(0012)  CS-0x014  0x12401         || 		PUSH	R4
(0013)  CS-0x015  0x12502         || 		POP		R5
(0014)  CS-0x016  0x12502         || 		POP		R5
(0015)  CS-0x017  0x12602         || 		POP		R6
(0016)                            || 
(0017)  CS-0x018  0x12201         || 		PUSH	R2
(0018)  CS-0x019  0x12301         || 		PUSH	R3
(0019)  CS-0x01A  0x12602         || 		POP		R6
(0020)  CS-0x01B  0x12702         || 		POP		R7
(0021)  CS-0x01C  0x12802         || 		POP		R8
(0022)                            || 
(0023)  CS-0x01D  0x12201         || 		PUSH	R2
(0024)  CS-0x01E  0x12201         || 		PUSH	R2
(0025)  CS-0x01F  0x12301         || 		PUSH	R3
(0026)  CS-0x020  0x12401         || 		PUSH 	R4
(0027)  CS-0x021  0x12301         || 		PUSH	R3
(0028)  CS-0x022  0x12501         || 		PUSH	R5





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
MAIN           0x010   (0007)  ||  


-- Directives: .BYTE
------------------------------------------------------------ 
--> No ".BYTE" directives used


-- Directives: .EQU
------------------------------------------------------------ 
IN_            0x000   (0003)  ||  


-- Directives: .DEF
------------------------------------------------------------ 
--> No ".DEF" directives used


-- Directives: .DB
------------------------------------------------------------ 
--> No ".DB" directives used
