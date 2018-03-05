

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


(0001)                            || ;Pop and push
(0002)                            || 
(0003)                       000  || .EQU IN_ = 0x00
(0004)                            || .CSEG
(0005)                       016  || .ORG 0x10
(0006)                            || 
(0007)  CS-0x010  0x37FD0  0x010  || main:	MOV		R31, 0xD0		;set users stack pointer
(0008)  CS-0x011  0x37CD0         || 		MOV 	R28, 0xD0		;set stack pointer for registers
(0009)                            || 
(0010)  CS-0x012  0x08111         || 		CALL push_				;Pushing 1st element
(0011)  CS-0x013  0x08141         || 		CALL pop_				;Popping 1st element
(0012)                            || 
(0013)  CS-0x014  0x08111         || 		CALL push_				;Pushing 2nd element
(0014)  CS-0x015  0x08111         || 		CALL push_				;Pushing 3rd element
(0015)  CS-0x016  0x08141         || 		CALL pop_				;Popping 3rd element
(0016)                            || 
(0017)  CS-0x017  0x08111         || 		CALL push_				;Pushing 4th element
(0018)  CS-0x018  0x08111         || 		CALL push_				;Pushing 5th element
(0019)  CS-0x019  0x08111         || 		CALL push_				;Pushing 6th element
(0020)  CS-0x01A  0x08141         || 		CALL pop_				;Popping 6th element
(0021)  CS-0x01B  0x08141         || 		CALL pop_				;Popping 5th element
(0022)  CS-0x01C  0x08111         || 		CALL push_				;Pushing 7th element
(0023)  CS-0x01D  0x08141         || 		CALL pop_				;Popping 7th element
(0024)  CS-0x01E  0x08141         || 		CALL pop_				;Popping 4th element
(0025)  CS-0x01F  0x08141         || 		CALL pop_				;Popping 2nd element
(0026)                            || 								;Stack now empty
(0027)  CS-0x020  0x37C00         || 		MOV R28, 0x00			;Not permanently altering R28
(0028)  CS-0x021  0x08080         || 		BRN main
(0029)                            || 
(0030)  CS-0x022  0x33E00  0x022  || push_: 	IN	R30, IN_			;User inputs value to push
(0031)  CS-0x023  0x2DC01         || 		SUB	R28, 0x01			;Memory stack pointer decremented
(0032)  CS-0x024  0x05EE3         || 		ST	R30, (R28)			;Input stored in memory location
(0033)  CS-0x025  0x37E00         || 		MOV	R30, 0x00			;Sets R30 to 0
(0034)  CS-0x026  0x05FE2         || 		LD	R31, (R28)			;Sets "user's" stack pointer to current stack pointer
(0035)  CS-0x027  0x18002         || 		RET
(0036)                            || 
(0037)  CS-0x028  0x05FE2  0x028  || pop_:	LD	R31, (R28)			;Sets "user's" stack pointer to current stack pointer
(0038)  CS-0x029  0x29C01         || 		ADD	R28, 0x01			;Memory stack pointer incremented
(0039)  CS-0x02A  0x18002         || 		RET
(0040)                            || ;comment why





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
MAIN           0x010   (0007)  ||  0028 
POP_           0x028   (0037)  ||  0011 0015 0020 0021 0023 0024 0025 
PUSH_          0x022   (0030)  ||  0010 0013 0014 0017 0018 0019 0022 


-- Directives: .BYTE
------------------------------------------------------------ 
--> No ".BYTE" directives used


-- Directives: .EQU
------------------------------------------------------------ 
IN_            0x000   (0003)  ||  0030 


-- Directives: .DEF
------------------------------------------------------------ 
--> No ".DEF" directives used


-- Directives: .DB
------------------------------------------------------------ 
--> No ".DB" directives used
