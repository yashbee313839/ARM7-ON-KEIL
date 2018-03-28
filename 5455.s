q RN 7
r RN 8

      AREA lab6,DATA, READWRITE
mydatastart SPACE 1024
		AREA lab66,CODE,READONLY
		EXPORT Reset_Handler
Reset_Handler

START MOV r0,#0x40000000
      LDR r1,[r0],#4
	  LDRH r2,[r0],#4
	  cmp r2,#0
	  BEQ stop
	  cmp r2,r1
	  MOVGT q,#0
	  MOVGT r,r1
	  BGT stop
	  
	  
	  
loop  SUB r1,r1,r2
      ADD R5,R5,#1
      cmp r2,r1
	  MOVGT q,R5
	  MOVGT r,r1
	  BGT stop
	  B loop
	  
	 	  
	  
stop B stop	  