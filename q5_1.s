		AREA reset,CODE,READONLY
		EXPORT Reset_Handler
Reset_Handler
START	CMP r3,#0
		BLE fin
lop		MOVS r3,r3,LSL #1
		ADD r4,r4,#1
		BPL lop
