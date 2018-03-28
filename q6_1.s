adres	RN 0
op1		RN 1
op2		RN 2
		AREA lab6,DATA, READWRITE
mydatastart SPACE 1024
		AREA lab66,CODE,READONLY
		EXPORT Reset_Handler
Reset_Handler
START   MOV adres,#0x40000000
		LDR op1,[adres],#4
		LDR op2,[adres],#4
		SMULL r3,r4,op1,op2
		STR r3,[adres],#4
		STR r4,[adres]
STOP 	B 	STOP
		end