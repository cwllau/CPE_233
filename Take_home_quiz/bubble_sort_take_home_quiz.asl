

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


(0001)                            || .DSEG
(0002)                       016  || .ORG 0x10
(0003)                            || 
(0004)                     0x000  || MYDATA:
(0005)  DS-0x010             01E  || MYDATA_: .DB 0x62, 0x1e, 0xe8, 0x0a, 0x50, 0xf6, 0xc4, 0x43, 0x17, 0x00, 0xea, 0x1f, 0x16, 0xa1, 0xc9, 0xb1, 0x26, 0x0f, 0x1e, 0xf8, 0x1f, 0xa2, 0x9b, 0xf1, 0xba,0xf0, 0x35, 0x7e, 0x4a, 0x37 
(0006)                            || 
(0007)                            || .CSEG
(0008)                       080  || .ORG 0x50
(0009)                            || 
(0010)                     0x050  || main: 
-------------------------------------------------------------------------------------------
-STUP-  CS-0x000  0x36062  0x062  ||              MOV     r0,0x62     ; write dseg data to reg
-STUP-  CS-0x001  0x3A010  0x010  ||              LD      r0,0x10     ; place reg data in mem 
-STUP-  CS-0x002  0x3601E  0x01E  ||              MOV     r0,0x1E     ; write dseg data to reg
-STUP-  CS-0x003  0x3A011  0x011  ||              LD      r0,0x11     ; place reg data in mem 
-STUP-  CS-0x004  0x360E8  0x0E8  ||              MOV     r0,0xE8     ; write dseg data to reg
-STUP-  CS-0x005  0x3A012  0x012  ||              LD      r0,0x12     ; place reg data in mem 
-STUP-  CS-0x006  0x3600A  0x00A  ||              MOV     r0,0x0A     ; write dseg data to reg
-STUP-  CS-0x007  0x3A013  0x013  ||              LD      r0,0x13     ; place reg data in mem 
-STUP-  CS-0x008  0x36050  0x050  ||              MOV     r0,0x50     ; write dseg data to reg
-STUP-  CS-0x009  0x3A014  0x014  ||              LD      r0,0x14     ; place reg data in mem 
-STUP-  CS-0x00A  0x360F6  0x0F6  ||              MOV     r0,0xF6     ; write dseg data to reg
-STUP-  CS-0x00B  0x3A015  0x015  ||              LD      r0,0x15     ; place reg data in mem 
-STUP-  CS-0x00C  0x360C4  0x0C4  ||              MOV     r0,0xC4     ; write dseg data to reg
-STUP-  CS-0x00D  0x3A016  0x016  ||              LD      r0,0x16     ; place reg data in mem 
-STUP-  CS-0x00E  0x36043  0x043  ||              MOV     r0,0x43     ; write dseg data to reg
-STUP-  CS-0x00F  0x3A017  0x017  ||              LD      r0,0x17     ; place reg data in mem 
-STUP-  CS-0x010  0x36017  0x017  ||              MOV     r0,0x17     ; write dseg data to reg
-STUP-  CS-0x011  0x3A018  0x018  ||              LD      r0,0x18     ; place reg data in mem 
-STUP-  CS-0x012  0x36000  0x000  ||              MOV     r0,0x00     ; write dseg data to reg
-STUP-  CS-0x013  0x3A019  0x019  ||              LD      r0,0x19     ; place reg data in mem 
-STUP-  CS-0x014  0x360EA  0x0EA  ||              MOV     r0,0xEA     ; write dseg data to reg
-STUP-  CS-0x015  0x3A01A  0x01A  ||              LD      r0,0x1A     ; place reg data in mem 
-STUP-  CS-0x016  0x3601F  0x01F  ||              MOV     r0,0x1F     ; write dseg data to reg
-STUP-  CS-0x017  0x3A01B  0x01B  ||              LD      r0,0x1B     ; place reg data in mem 
-STUP-  CS-0x018  0x36016  0x016  ||              MOV     r0,0x16     ; write dseg data to reg
-STUP-  CS-0x019  0x3A01C  0x01C  ||              LD      r0,0x1C     ; place reg data in mem 
-STUP-  CS-0x01A  0x360A1  0x0A1  ||              MOV     r0,0xA1     ; write dseg data to reg
-STUP-  CS-0x01B  0x3A01D  0x01D  ||              LD      r0,0x1D     ; place reg data in mem 
-STUP-  CS-0x01C  0x360C9  0x0C9  ||              MOV     r0,0xC9     ; write dseg data to reg
-STUP-  CS-0x01D  0x3A01E  0x01E  ||              LD      r0,0x1E     ; place reg data in mem 
-STUP-  CS-0x01E  0x360B1  0x0B1  ||              MOV     r0,0xB1     ; write dseg data to reg
-STUP-  CS-0x01F  0x3A01F  0x01F  ||              LD      r0,0x1F     ; place reg data in mem 
-STUP-  CS-0x020  0x36026  0x026  ||              MOV     r0,0x26     ; write dseg data to reg
-STUP-  CS-0x021  0x3A020  0x020  ||              LD      r0,0x20     ; place reg data in mem 
-STUP-  CS-0x022  0x3600F  0x00F  ||              MOV     r0,0x0F     ; write dseg data to reg
-STUP-  CS-0x023  0x3A021  0x021  ||              LD      r0,0x21     ; place reg data in mem 
-STUP-  CS-0x024  0x3601E  0x01E  ||              MOV     r0,0x1E     ; write dseg data to reg
-STUP-  CS-0x025  0x3A022  0x022  ||              LD      r0,0x22     ; place reg data in mem 
-STUP-  CS-0x026  0x360F8  0x0F8  ||              MOV     r0,0xF8     ; write dseg data to reg
-STUP-  CS-0x027  0x3A023  0x023  ||              LD      r0,0x23     ; place reg data in mem 
-STUP-  CS-0x028  0x3601F  0x01F  ||              MOV     r0,0x1F     ; write dseg data to reg
-STUP-  CS-0x029  0x3A024  0x024  ||              LD      r0,0x24     ; place reg data in mem 
-STUP-  CS-0x02A  0x360A2  0x0A2  ||              MOV     r0,0xA2     ; write dseg data to reg
-STUP-  CS-0x02B  0x3A025  0x025  ||              LD      r0,0x25     ; place reg data in mem 
-STUP-  CS-0x02C  0x3609B  0x09B  ||              MOV     r0,0x9B     ; write dseg data to reg
-STUP-  CS-0x02D  0x3A026  0x026  ||              LD      r0,0x26     ; place reg data in mem 
-STUP-  CS-0x02E  0x360F1  0x0F1  ||              MOV     r0,0xF1     ; write dseg data to reg
-STUP-  CS-0x02F  0x3A027  0x027  ||              LD      r0,0x27     ; place reg data in mem 
-STUP-  CS-0x030  0x360BA  0x0BA  ||              MOV     r0,0xBA     ; write dseg data to reg
-STUP-  CS-0x031  0x3A028  0x028  ||              LD      r0,0x28     ; place reg data in mem 
-STUP-  CS-0x032  0x360F0  0x0F0  ||              MOV     r0,0xF0     ; write dseg data to reg
-STUP-  CS-0x033  0x3A029  0x029  ||              LD      r0,0x29     ; place reg data in mem 
-STUP-  CS-0x034  0x36035  0x035  ||              MOV     r0,0x35     ; write dseg data to reg
-STUP-  CS-0x035  0x3A02A  0x02A  ||              LD      r0,0x2A     ; place reg data in mem 
-STUP-  CS-0x036  0x3607E  0x07E  ||              MOV     r0,0x7E     ; write dseg data to reg
-STUP-  CS-0x037  0x3A02B  0x02B  ||              LD      r0,0x2B     ; place reg data in mem 
-STUP-  CS-0x038  0x3604A  0x04A  ||              MOV     r0,0x4A     ; write dseg data to reg
-STUP-  CS-0x039  0x3A02C  0x02C  ||              LD      r0,0x2C     ; place reg data in mem 
-STUP-  CS-0x03A  0x36037  0x037  ||              MOV     r0,0x37     ; write dseg data to reg
-STUP-  CS-0x03B  0x3A02D  0x02D  ||              LD      r0,0x2D     ; place reg data in mem 
-STUP-  CS-0x03C  0x08280  0x100  ||              BRN     0x50        ; jump to start of .cseg in program mem 
-------------------------------------------------------------------------------------------
(0011)  CS-0x050  0x36110         || 	MOV 	R1, MYDATA	;set R1 to address of 1st element in array
(0012)  CS-0x051  0x04209         || 	MOV		R2, R1	
(0013)  CS-0x052  0x28201         || 	ADD		R2, 0x01	;set R2 to address of 2nd element in array
(0014)  CS-0x053  0x36500         || 	MOV		R5, 0x00	;incrementor
(0015)  CS-0x054  0x3661C         || 	MOV		R6, 0x1C	;nth number in array
(0016)  CS-0x055  0x0430A         || 	LD		R3, (R1)	;R3 is value from address R1
(0017)  CS-0x056  0x04412         || 	LD		R4, (R2)	;R4 is value from address R2
(0018)                     0x057  || compare:	
(0019)  CS-0x057  0x04418         || 	CMP		R4, R3		;compare 1st and 2nd element
(0020)  CS-0x058  0x0A2D0         || 	BRCS 	switch		;switch if 2nd element is bigger
(0021)  CS-0x059  0x082E8         || 	BRN		increment
(0022)                            || 
(0023)                     0x05A  || switch:
(0024)  CS-0x05A  0x0440B         || 	ST		R4, (R1)
(0025)  CS-0x05B  0x04313         || 	ST		R3, (R2)
(0026)  CS-0x05C  0x082E8         || 	BRN 	increment
(0027)                            || 
(0028)                     0x05D  || increment:
(0029)  CS-0x05D  0x28101         || 	ADD		R1, 0x01
(0030)  CS-0x05E  0x28201         || 	ADD		R2, 0x01
(0031)  CS-0x05F  0x0430A         || 	LD		R3, (R1)	;R3 is value from address R1
(0032)  CS-0x060  0x04412         || 	LD		R4, (R2)	;R4 is value from address R2
(0033)  CS-0x061  0x28501         || 	ADD 	R5, 0x01
(0034)  CS-0x062  0x04628         || 	CMP		R6, R5	;comparing it to the nth number in the array
(0035)  CS-0x063  0x0A280         || 	BRCS	main
(0036)  CS-0x064  0x082B8         || 	BRN		compare





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
COMPARE        0x057   (0018)  ||  0036 
INCREMENT      0x05D   (0028)  ||  0021 0026 
MAIN           0x050   (0010)  ||  0035 
MYDATA         0x010   (0004)  ||  0011 
SWITCH         0x05A   (0023)  ||  0020 


-- Directives: .BYTE
------------------------------------------------------------ 
--> No ".BYTE" directives used


-- Directives: .EQU
------------------------------------------------------------ 
--> No ".EQU" directives used


-- Directives: .DEF
------------------------------------------------------------ 
--> No ".DEF" directives used


-- Directives: .DB
------------------------------------------------------------ 
MYDATA_        0x02E   (0005)  ||  
