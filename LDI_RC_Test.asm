; Código para verificação de Instrução
Loop:
	LDI RC, 1
	LDI RC, 0
	JPI Loop ; JPI [RC:MAddr:LAddr]
	
