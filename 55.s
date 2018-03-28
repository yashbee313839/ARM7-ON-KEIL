adres	RN 0
A0		RN 1
A1		RN 2
B0		RN 3
B1		RN 4
C0		RN 5
C1		RN 6
C2		RN 7
C3		RN 8
temp1	RN 9
TEMP2	RN 10
		AREA lab6,DATA, READWRITE
mydatastart SPACE 1024
		AREA lab66,CODE,READONLY
		EXPORT Reset_Handler
Reset_Handler
START   MOV adres,#0x40000000
		LDR A0,[adres],#4
		LDR A1,[adres],#4
		LDR B0,[adres],#4
		LDR B1,[adres],#4
		SMULL C0,C1,B0,A0
		SMLAL C1,C2,B1,A0
		SMLAL C1,temp1,B0,A1
		MOV TEMP2,#0
		ADDS C2,C2,temp1
		ADCS C3,TEMP2,#0
		SMLAL  C2,C3,B1,A1
		STR C3,[adres],#4
		STR C2,[adres],#4
		STR C1,[adres],#4
		STR C0,[adres],#4
STOP 	B 	STOP
		end