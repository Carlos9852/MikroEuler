; Código para verificação de Instrução
Loop:
	ADD ACC,0 ; Nop
	LDI RC, 2
	LDI ACC, 1
	STW @R, ACC
	OUTA @R ; OUTA = RAM[RC:RB:RA]
	ADD ACC,0 ; Nop
	ADD ACC,0 ; Nop
	ADD ACC,0 ; Nop

	ADD ACC,0 ; Nop
	LDI ACC, 7
	LDI RC, 3
	STW @R, ACC
	OUTA @R ; OUTA = RAM[3:0:0]
	ADD ACC,0 ; Nop
	ADD ACC,0 ; Nop
	ADD ACC,0 ; Nop

	ADD ACC,0 ; Nop
	LDI RC, 4
	LDI ACC, 9
	STW @R, ACC
	OUTA @R ; OUTA = RAM[4:0:0]
	ADD ACC,0 ; Nop
	ADD ACC,0 ; Nop
	ADD ACC,0 ; Nop

	LDI ACC, 0xD
	LDI RC, 7
	LDI RB, 0xA
	STW @R, ACC
	OUTA @R ; OUTA = RAM[7:A:0]
	LDI RC, 0
	LDI RB, 0
	JPI Loop
	
