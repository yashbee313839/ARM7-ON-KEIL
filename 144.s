      AREA lab6,DATA, READWRITE
mydatastart SPACE 1024
		AREA lab66,CODE,READONLY
		EXPORT Reset_Handler
Reset_Handler

START MOV r0,#0x40000000
      LDR r1,[r0],#4
	  LDRH r2,[r0],#4
	  MOV r3,r2
	  
	  MOV r2,r2,lsl#4
	  
loop  CMP r3,r2
      MOVEQ r6,r1
      BEQ stop
	  CMP r1,r2
	  ADDGE r5,r5,#1
	  MOV r5,r5,LSL#1
	  MOV r2,r2,LSR#1
	  B loop
	    
	  
stop B stop	  