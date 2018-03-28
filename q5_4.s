mydatasize	EQU	 1024
		AREA myData,DATA,NOINIT,READWRITE
mydatastart	SPACE mydatasize
	   AREA myCODE, CODE ,READONLY
	   EXPORT Reset_Handler
Reset_Handler
Start    MOV R1, #0x40000000

loop1	 MOV r3,[R1]
		 LDRB r5,[r1],#1
loop2	 LDRB r6,[r3],#1
		 CMP r5,r6
		 LDRBLE r5,[r1]
		 SWPBLE r5,r5,[r3]
		 STRBLE	r6,[r1]
		 ADD r8,r8,#-1
		 CMP R8,#0
		 BNE loop2
		 ADD R7,R7,#-1
		 CMP r7,#0
		 BNE loop1
stop	b stop
		END