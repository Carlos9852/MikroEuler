; Código para verificação de Instrução
Loop:
	LDI ACC, 0xC
	LDI RA, 0xF
	LDI RB, 0xF
	LDI RC, 0x7 ; Address = 7FFh = 2047 (última posição da RAM de 2k)
	STW @R, ACC ; RAM Address=RC:RB:RA (Indireto)
	LDI ACC, 7
	NAND ACC, @R ; ACC = 0xB
	LDI RC, 0
	JPI Loop
	
