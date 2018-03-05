.DSEG
.ORG 0x10

MYDATA:
MYDATA_: .DB 0x62, 0x1e, 0xe8, 0x0a, 0x50, 0xf6, 0xc4, 0x43, 0x17, 0x00, 0xea, 0x1f, 0x16, 0xa1, 0xc9, 0xb1, 0x26, 0x0f, 0x1e, 0xf8, 0x1f, 0xa2, 0x9b, 0xf1, 0xba,0xf0, 0x35, 0x7e, 0x4a, 0x37 

.CSEG
.ORG 0x50

main: 
	MOV 	R1, MYDATA	;set R1 to address of 1st element in array
	MOV		R2, R1	
	ADD		R2, 0x01	;set R2 to address of 2nd element in array
	MOV		R5, 0x00	;incrementor
	MOV		R6, 0x1C	;nth number in array
	LD		R3, (R1)	;R3 is value from address R1
	LD		R4, (R2)	;R4 is value from address R2
compare:	
	CMP		R4, R3		;compare 1st and 2nd element
	BRCS 	switch		;switch if 2nd element is bigger
	BRN		increment

switch:
	ST		R4, (R1)
	ST		R3, (R2)
	BRN 	increment

increment:
	ADD		R1, 0x01
	ADD		R2, 0x01
	LD		R3, (R1)	;R3 is value from address R1
	LD		R4, (R2)	;R4 is value from address R2
	ADD 	R5, 0x01
	CMP		R6, R5	;comparing it to the nth number in the array
	BRCS	main
	BRN		compare
