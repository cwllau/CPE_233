

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


(0001)                       116  || .EQU LEDS 		= 0x74
(0002)                       117  || .EQU SWITCHES 	= 0x75
(0003)                            || 
(0004)                            || .CSEG
(0005)                       016  || .ORG 0x10
(0006)                            || 
(0007)                            || init	MOV		R0, 0x00 	;Set R0 as ISR indicator
            syntax error
            syntax error
            syntax error
            syntax error

(0008)  CS-0x010  0x1A000         || 		SEI					;Unmask interrupts
(0009)                            || 
(0010)                     0x011  || main:
(0011)  CS-0x011  0x32174         || 		IN 		R1, LEDS	;Set R1 as Leds
(0012)  CS-0x012  0x32275         || 		IN 		R2, SWITCHES	;Set R2 as Switches
(0013)  CS-0x013  0x34174         || 		OUT		R1, LEDS	;outputs leds
(0014)  CS-0x014  0x08088         || 		BRN 	main		;do it all again
(0015)                            || 
(0016)  CS-0x015  0x30000  0x015  || ISR:	CMP		R0, 0x00	;Check to see if indicator is off
(0017)  CS-0x016  0x080D2         || 		BREQ	Set_LEDs	
(0018)  CS-0x017  0x242FF         || 		EXOR	R2, 0xFF	;Compliment switches
(0019)  CS-0x018  0x04111         || 		MOV		R1, R2		;With complimented switches, turn on leds
(0020)  CS-0x019  0x1A003         || 		RETIE				;return with interrupt enabled
(0021)                            || 
(0022)                     0x01A  || SET_LEDS:
(0023)  CS-0x01A  0x36001         || 		MOV		R0, 0x01	
(0024)  CS-0x01B  0x04111         || 		MOV		R1, R2		;With corresponding switches, turn on leds
(0025)  CS-0x01C  0x1A003         || 		RETIE				;return with interrupt enabled
(0026)                            || 
(0027)                       1023  || .ORG 0x3FF					;interrupt vector address
(0028)  CS-0x3FF  0x080A8         || 		BRN		ISR			;jump to interrupt service routine
(0029)                            || 							;comment because RAT cries without one





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
ISR            0x015   (0016)  ||  0028 
MAIN           0x011   (0010)  ||  0014 
SET_LEDS       0x01A   (0022)  ||  0017 


-- Directives: .BYTE
------------------------------------------------------------ 
--> No ".BYTE" directives used


-- Directives: .EQU
------------------------------------------------------------ 
LEDS           0x074   (0001)  ||  0011 0013 
SWITCHES       0x075   (0002)  ||  0012 


-- Directives: .DEF
------------------------------------------------------------ 
--> No ".DEF" directives used


-- Directives: .DB
------------------------------------------------------------ 
--> No ".DB" directives used
