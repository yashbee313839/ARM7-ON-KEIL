mydatasize	EQU	 1024
		AREA myData,DATA,NOINIT,READWRITE
mydatastart	SPACE mydatasize
	   AREA myCODE, CODE ,READONLY
	   EXPORT Reset_Handler
Reset_Handler
        MOV R1, #0x40000000
loop    LDRB R3,[R1]

        ADD R2,R1,#1
loop2   LDRB R4,[R2]
		CMP R3,r4
		SWPBGT R3,R4,[R1]
		STRBGT R3,[R2]
		ADD R2,R2,#1
		CMP R2,#0x4000000A
		BLT loop2
		
		ADD R1,R1,#1
		CMP R1,#0x4000000A
		BLT loop
Stop    B Stop
        END
		
		