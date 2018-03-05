

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


(0001)                       032  || .EQU SWITCHES = 0x20 ; in: switches address
(0002)                       130  || .EQU SSEG_DISP = 0x82 ; out: 7-segment display address
(0003)                       131  || .EQU SSEG_EN = 0x83 ; out: display enable address
(0004)                       064  || .EQU LEDS = 0x40 ; out: LED address 
(0005)                            || 
(0006)                            || .CSEG
(0007)                       064  || .ORG 0x40
(0008)                            || 
(0009)  CS-0x040  0x32020  0x040  || main:	IN R0, SWITCHES
(0010)  CS-0x041  0x36100         || 		MOV R1, 0x00
(0011)  CS-0x042  0x08218         || 		BRN loop
(0012)                            || 
(0013)  CS-0x043  0x04008  0x043  || loop:	CMP R0, R1
(0014)  CS-0x044  0x08252         || 		BREQ toggle
(0015)  CS-0x045  0x28101         || 		ADD R1, 0x01
(0016)  CS-0x046  0x08218         || 		BRN loop
(0017)                            || 
(0018)  CS-0x047  0x28101  0x047  || loop2:  ADD R1, 0x01
(0019)  CS-0x048  0x0A268         || 		BRCS toggle2
(0020)  CS-0x049  0x08238         || 		BRN loop2
(0021)                            || 
(0022)  CS-0x04A  0x25E80  0x04A  || toggle: EXOR R30, 0x80
(0023)  CS-0x04B  0x35E40         || 		OUT R30, LEDS
(0024)  CS-0x04C  0x08238         || 		BRN loop2
(0025)                            || 
(0026)  CS-0x04D  0x25E80  0x04D  || toggle2:EXOR R30, 0x80
(0027)  CS-0x04E  0x35E40         || 		OUT R30, LEDS
(0028)  CS-0x04F  0x08200         || 		BRN main





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
LOOP           0x043   (0013)  ||  0011 0016 
LOOP2          0x047   (0018)  ||  0020 0024 
MAIN           0x040   (0009)  ||  0028 
TOGGLE         0x04A   (0022)  ||  0014 
TOGGLE2        0x04D   (0026)  ||  0019 


-- Directives: .BYTE
------------------------------------------------------------ 
--> No ".BYTE" directives used


-- Directives: .EQU
------------------------------------------------------------ 
LEDS           0x040   (0004)  ||  0023 0027 
SSEG_DISP      0x082   (0002)  ||  
SSEG_EN        0x083   (0003)  ||  
SWITCHES       0x020   (0001)  ||  0009 


-- Directives: .DEF
------------------------------------------------------------ 
--> No ".DEF" directives used


-- Directives: .DB
------------------------------------------------------------ 
--> No ".DB" directives used
