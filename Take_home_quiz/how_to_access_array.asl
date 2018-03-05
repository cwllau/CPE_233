

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


(0001)                            || ;.DSEG
(0002)                            || ;.ORG 0x10
(0003)                            || 
(0004)                            || ;MYDATA: .DB 0x62, 0x1e, 0xe8, 0x0a, 0x50, 0xf6, 0xc4,
(0005)                            || ;0x43, 0x17, 0x00, 0xea, 0x1f, 0x16, 0xa1, 0xc9, 0xb1,
(0006)                            || ;0x26, 0x0f, 0x1e, 0xf8, 0x1f, 0xa2, 0x9b, 0xf1, 0xba,
(0007)                            || ;0xf0, 0x35, 0x7e, 0x4a, 0x37 
(0008)                            || 
(0009)                            || ;--------------------------------------------------------------------
(0010)                            || ;- Memory Designation
(0011)                            || ;--------------------------------------------------------------------
(0012)                            || .DSEG
(0013)                       016  || .ORG 0x10
(0014)                     0x000  || DOG:
(0015)                     0x000  || WHAT:
(0016)  DS-0x010             007  || COW: .DB 0xFF, 0xFE, 0xFD, 0xFC, 0xFB, 0x01, 0x02
(0017)                     0x000  || WHY:
(0018)                            || ;--------------------------------------------------------------------
(0019)                            || .CSEG
(0020)                       032  || .ORG 0x20
(0021)                            || 
-------------------------------------------------------------------------------------------
-STUP-  CS-0x000  0x360FF  0x0FF  ||              MOV     r0,0xFF     ; write dseg data to reg
-STUP-  CS-0x001  0x3A010  0x010  ||              LD      r0,0x10     ; place reg data in mem 
-STUP-  CS-0x002  0x360FE  0x0FE  ||              MOV     r0,0xFE     ; write dseg data to reg
-STUP-  CS-0x003  0x3A011  0x011  ||              LD      r0,0x11     ; place reg data in mem 
-STUP-  CS-0x004  0x360FD  0x0FD  ||              MOV     r0,0xFD     ; write dseg data to reg
-STUP-  CS-0x005  0x3A012  0x012  ||              LD      r0,0x12     ; place reg data in mem 
-STUP-  CS-0x006  0x360FC  0x0FC  ||              MOV     r0,0xFC     ; write dseg data to reg
-STUP-  CS-0x007  0x3A013  0x013  ||              LD      r0,0x13     ; place reg data in mem 
-STUP-  CS-0x008  0x360FB  0x0FB  ||              MOV     r0,0xFB     ; write dseg data to reg
-STUP-  CS-0x009  0x3A014  0x014  ||              LD      r0,0x14     ; place reg data in mem 
-STUP-  CS-0x00A  0x36001  0x001  ||              MOV     r0,0x01     ; write dseg data to reg
-STUP-  CS-0x00B  0x3A015  0x015  ||              LD      r0,0x15     ; place reg data in mem 
-STUP-  CS-0x00C  0x36002  0x002  ||              MOV     r0,0x02     ; write dseg data to reg
-STUP-  CS-0x00D  0x3A016  0x016  ||              LD      r0,0x16     ; place reg data in mem 
-STUP-  CS-0x00E  0x08100  0x100  ||              BRN     0x20        ; jump to start of .cseg in program mem 
-------------------------------------------------------------------------------------------
(0022)  CS-0x020  0x37F10  0x020  || main_loop: MOV r31, DOG ; dog is a label with a value
(0023)                            || ; value placed in r31
(0024)  CS-0x021  0x041FA         || LD r1,(r31) ; grab value from memory loc=0x10
(0025)  CS-0x022  0x29F03         || ADD r31,0x03 ; increase value
(0026)  CS-0x023  0x041FA         || LD r1,(r31) ; grab value from memory loc=0x13
(0027)  CS-0x024  0x08100         || BRN main_loop ; do it again





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
DOG            0x010   (0014)  ||  0022 
MAIN_LOOP      0x020   (0022)  ||  0027 
WHAT           0x010   (0015)  ||  
WHY            0x017   (0017)  ||  


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
COW            0x017   (0016)  ||  
