; Código para verificação de Instrução
Loop:
	LDI ACC, 0xC
	NAND ACC, 7 ; ACC = 0xB
	JPI Loop
	
