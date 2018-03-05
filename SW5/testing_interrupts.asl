

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
BACK1          0x018   (0032)  ||  
DISABLE_INTS   0x041   (0087)  ||  
DONE           0x045   (0093)  ||  
FOR1           0x020   (0041)  ||  
FOR2           0x031   (0064)  ||  
IN_FOR1        0x024   (0048)  ||  
IN_FOR2        0x035   (0071)  ||  
ISR            0x03C   (0081)  ||  
MAIN           0x013   (0026)  ||  
MID_FOR1       0x022   (0045)  ||  
MID_FOR2       0x033   (0068)  ||  
OUT_FOR1       0x020   (0042)  ||  
OUT_FOR2       0x031   (0065)  ||  
VECTOR         0x3FF   (0097)  ||  


-- Directives: .BYTE
------------------------------------------------------------ 
--> No ".BYTE" directives used


-- Directives: .EQU
------------------------------------------------------------ 
LED_PORT       0x040   (0017)  ||  
LOOP_COUNT     0x0FF   (0016)  ||  
SSG_PORT       0x081   (0018)  ||  


-- Directives: .DEF
------------------------------------------------------------ 
--> No ".DEF" directives used


-- Directives: .DB
------------------------------------------------------------ 
--> No ".DB" directives used
