mydatasize	EQU	 1024
		AREA myData,DATA,NOINIT,READWRITE
mydatastart	SPACE mydatasize
	   AREA myCODE, CODE ,READONLY
	   EXPORT Reset_Handler
Reset_Handler
Start    MOV R1, #0x40000000
         MOV R2, #0x40000024

loop     LDR R3,[R1]
         SWP R3,R3,[R2]
		 ADD r2,r2,#4
		 STR R3,[R1],#4
         ADD R7,R7,#-1   
		 CMP R7,#0
		 BNE loop
stop	b stop
		END