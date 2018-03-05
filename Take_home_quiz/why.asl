

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
(0004)  DS-0x010             019  || MYDATA: .DB 0x62, 0x1e, 0xe8, 0x0a, 0x50, 0xf6, 0xc4, 0x43, 0x17, 0x00, 0xea, 0x1f, 0x16, 0xa1, 0xc9, 0xb1, 0x26, 0x0f, 0x1e, 0xf8, 0x1f, 0xa2, 0x9b, 0xf1, 0xba
(0005)                            || 
(0006)                            || .CSEG
(0007)                       112  || .ORG 0x70
(0008)                            || 
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
-STUP-  CS-0x032  0x08380  0x100  ||              BRN     0x70        ; jump to start of .cseg in program mem 
-------------------------------------------------------------------------------------------
(0009)  CS-0x070  0x37F29  0x070  || main_loop: MOV r31, MYDATA ; dog is a label with a value
3, 0x17, 0x00, 0xea, 0x1f, 0x16, 0xa1, 0xc9, 0xb1, 0x26, 0x0f, 0x1e, 0xf8, 0x1f, 0xa2, 0x9b, 0xf1, 0xba





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
MAIN_LOOP      0x070   (0009)  ||  


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
MYDATA         0x029   (0004)  ||  0009 
