; Código para verificação de Instrução
Loop:
	LDI ACC, 0xC
	STW @0xFF, ACC ; RAM Address=RC:Fh:Fh (Indireto + Absoluto)
	LDI ACC, 7
	NAND ACC, @0xFF ; ACC = 0xB
	JPI Loop
	
