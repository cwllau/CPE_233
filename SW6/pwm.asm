.EQU SWITCHES = 0x20 ; in: switches address
.EQU SSEG_DISP = 0x82 ; out: 7-segment display address
.EQU SSEG_EN = 0x83 ; out: display enable address
.EQU LEDS = 0x40 ; out: LED address 

.CSEG
.ORG 0x40

main:	IN R0, SWITCHES
		MOV R1, 0x00
		BRN loop

loop:	CMP R0, R1
		BREQ toggle
		ADD R1, 0x01
		BRN loop

loop2:  ADD R1, 0x01
		BRCS toggle2
		BRN loop2

toggle: EXOR R30, 0x80
		OUT R30, LEDS
		BRN loop2

toggle2:EXOR R30, 0x80
		OUT R30, LEDS
		BRN main
