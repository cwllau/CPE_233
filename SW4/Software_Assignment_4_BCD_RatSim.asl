

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


(0001)                            || ;---------------------------------------------------------------------
(0002)                            || ;- Programmer: Willis, Colleen
(0003)                            || ;- Date: 02-05-18
(0004)                            || ;- Experiment #4A
(0005)                            || ;-
(0006)                            || ;- This program takes a 3 digit BCD value and converts it to
(0007)                            || ;- subtracts one from that value, and outputs the value to the LED 
(0008)                            || ;- ports
(0009)                            || ;--------------------------------------------------------------------
(0010)                            || 
(0011)                            || ;--------------------------------------------------------------------
(0012)                            || ;- I/O Port Constants 
(0013)                            || ;--------------------------------------------------------------------
(0014)                       032  || .EQU SWITCH_PORT = 0x20 ; port for switch input 
(0015)                            || ;--------------------------------------------------------------------
(0016)                            || 
(0017)                            || ;--------------------------------------------------------------------
(0018)                            || ; Memory Designation Constants
(0019)                            || ;--------------------------------------------------------------------
(0020)                            || .CSEG 
(0021)                       016  || .ORG 0x10
(0022)                            || ;--------------------------------------------------------------------
(0023)                            || 
(0024)                     0x010  || main:  
(0025)  CS-0x010  0x33520         || 		IN    R21 ,SWITCH_PORT ; Read in from switch to R21 (100's BCD)
(0026)  CS-0x011  0x33420         || 		IN    R20 ,SWITCH_PORT ; Read in from switch to R20 (10's +1's BCD)
(0027)  CS-0x012  0x37600         || 		MOV   R22 ,0x00        ; Initialize the accumulator to zero
(0028)  CS-0x013  0x37700         || 		MOV   R23 ,0x00        ; Initialize the counter to 0
(0029)                            || 	
(0030)                     0x014  || hundr:  
(0031)  CS-0x014  0x036A8         || 		ADD   R22 ,R21         ; Sum to get R22 x 100
(0032)  CS-0x015  0x29701         || 		ADD   R23 ,0x01        ; Increment the counter
(0033)  CS-0x016  0x31764         || 		CMP   R23 ,0x64        ; Check to see if the counter reached 100
(0034)  CS-0x017  0x080CA         || 		BREQ  tens             ; If finished summing then start on the 10's
(0035)  CS-0x018  0x080A0         || 		BRN   hundr
(0036)                            || 
(0037)                     0x019  || tens: 	
(0038)  CS-0x019  0x058A1         || 		MOV   R24, R20			;R24 is the temp reg (masked value)
(0039)  CS-0x01A  0x379F0         || 		MOV   R25, 0xF0			;R25 is 11110000 clear bit mask
(0040)  CS-0x01B  0x37700         || 		MOV   R23 ,0x00        	;Initialize the counter to 0
(0041)  CS-0x01C  0x018C8         || 		AND   R24, R25			;Clear the lower bits to get the "tens"
(0042)                            || 
(0043)                     0x01D  || tens_shift:						;Clearing to get four bits
(0044)  CS-0x01D  0x18000         || 		CLC
(0045)  CS-0x01E  0x11801         || 		LSR   R24
(0046)  CS-0x01F  0x29701         || 		ADD   R23 ,0x01        ; Increment the counter
(0047)  CS-0x020  0x31704         || 		CMP   R23 ,0x04        ; Check to see if the counter reached 100
(0048)  CS-0x021  0x0811A         || 		BREQ  tens_multiply
(0049)  CS-0x022  0x080E8         || 		BRN	  tens_shift
(0050)                            || 
(0051)                     0x023  || tens_multiply:
(0052)  CS-0x023  0x37700         || 		MOV   R23, 0x00         ;Initialize the counter to 0
(0053)  CS-0x024  0x036C0  0x024  || loop:	ADD   R22, R24 			;accumulating the tens with the hundreds
(0054)  CS-0x025  0x29701         || 		ADD   R23, 0x01			;increment the counter
(0055)  CS-0x026  0x3170A         || 		CMP   R23, 0x0A			;Check to see if the counter reached 10
(0056)  CS-0x027  0x0814A         || 		BREQ  ones
(0057)  CS-0x028  0x08120         || 		BRN   loop
(0058)                            || 
(0059)                     0x029  || ones:
(0060)  CS-0x029  0x3790F         || 		MOV   R25 , 0x0F        ;Mask to clear upper bits
(0061)  CS-0x02A  0x058A1         || 		MOV   R24 , R20			;Store
(0062)  CS-0x02B  0x018C8         || 		AND	  R24 , R25			;Clear the upper bits
(0063)  CS-0x02C  0x036C0         || 		ADD	  R22 , R24			;Add the ones to the accumulator
(0064)  CS-0x02D  0x05FB1         || 		MOV   R31 , R22			;Place the final binary number in register R31





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
HUNDR          0x014   (0030)  ||  0035 
LOOP           0x024   (0053)  ||  0057 
MAIN           0x010   (0024)  ||  
ONES           0x029   (0059)  ||  0056 
TENS           0x019   (0037)  ||  0034 
TENS_MULTIPLY  0x023   (0051)  ||  0048 
TENS_SHIFT     0x01D   (0043)  ||  0049 


-- Directives: .BYTE
------------------------------------------------------------ 
--> No ".BYTE" directives used


-- Directives: .EQU
------------------------------------------------------------ 
SWITCH_PORT    0x020   (0014)  ||  0025 0026 


-- Directives: .DEF
------------------------------------------------------------ 
--> No ".DEF" directives used


-- Directives: .DB
------------------------------------------------------------ 
--> No ".DB" directives used
