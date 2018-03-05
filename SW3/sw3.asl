

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
(0002)                            || ;- Software Assignment 3, Swapping registers
(0003)                            || ;-Colleen, Brittany, Joshua
(0004)                            || ;--------------------------------------------------------------------
(0005)                       016  || .EQU LED_PORT = 0x10		; port address for output
(0006)                       064  || .EQU SWITCH_PORT = 0x40 	; port address for input
(0007)                            || ;--------------------------------------------------------------------
(0008)                            || 
(0009)                            || .CSEG
(0010)                       048  || .ORG 0x30 				; instruction storage starts here
(0011)                            || 
(0012)  CS-0x030  0x3606E  0x030  || 	main: MOV R0, 0x6E
(0013)  CS-0x031  0x36167         || 	MOV R1, 0x67
(0014)  CS-0x032  0x36208         || 	MOV R2, 0x08
(0015)  CS-0x033  0x36300         || 	MOV R3, 0x00
(0016)  CS-0x034  0x18000         || 	CLC 
(0017)  CS-0x035  0x10301  0x035  || 	main2: LSR R3
(0018)  CS-0x036  0x10001         || 	LSR R0
(0019)  CS-0x037  0x10101         || 	LSR R1
(0020)  CS-0x038  0x10300         || 	LSL R3
(0021)  CS-0x039  0x2C201         || 	SUB R2, 0x01
(0022)  CS-0x03A  0x081AB         || 	BRNE main2 ;0x35
(0023)  CS-0x03B  0x10301         || 	LSR R3
(0024)  CS-0x03C  0x10001         || 	LSR R0
(0025)  CS-0x03D  0x08180         || 	BRN main ;0x30





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
MAIN           0x030   (0012)  ||  0025 
MAIN2          0x035   (0017)  ||  0022 


-- Directives: .BYTE
------------------------------------------------------------ 
--> No ".BYTE" directives used


-- Directives: .EQU
------------------------------------------------------------ 
LED_PORT       0x010   (0005)  ||  
SWITCH_PORT    0x040   (0006)  ||  


-- Directives: .DEF
------------------------------------------------------------ 
--> No ".DEF" directives used


-- Directives: .DB
------------------------------------------------------------ 
--> No ".DB" directives used
