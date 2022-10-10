; Código para verificação de Instrução
Loop:
	LDI ACC, 0
	ADD ACC,0 ; Nop
	STW @0xFF, ACC
	OUTA @0xFF ; OUTA = RAM[RC:MAddr:n]
	LDI ACC, 5
	ADD ACC,0 ; Nop
	STW @0xFE, ACC
	OUTA @0xFE ; OUTA = RAM[0:F:E]
	LDI ACC, 0xA
	ADD ACC,0 ; Nop
	STW @0xFD, ACC
	OUTA @0xFD ; OUTA = RAM[0:F:D]
	LDI ACC, 0xF
	ADD ACC,0 ; Nop
	STW @0xFC, ACC
	OUTA @0xFC ; OUTA = RAM[0:F:C]
	JPI Loop
	
