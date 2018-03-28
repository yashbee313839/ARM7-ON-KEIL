		AREA MYCODE,CODE,READONLY
		EXPORT Reset_Handler
Reset_Handler
START	MOV R0,#-2
        MOV R1,#5
        BL subsInt
		BL subsInt2
		
STOP 	B STOP
subsInt CMP R1,R0
        MOVGT r2,#10
		MOV PC,LR
		
subsInt2 CMP R2,#10
         MOV r4,r1
		 MOV r1,r0
		 MOV r0,r4
		 MOV PC,LR
		 