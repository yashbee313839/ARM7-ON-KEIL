max   RN  5       
	   AREA myCODE, CODE ,READONLY
	   EXPORT Reset_Handler
Reset_Handler

Start    MOV R1, #0x40000000
		 LDR R2,[R1],#4
         MOV max,R2

loop     LDR R2,[R1],#4
         CMP R2,max
		 MOVGE max,R2
		 ADD R7,R7,#-1
		 CMP R7,#0
		 BNE loop
stop	b stop
		END