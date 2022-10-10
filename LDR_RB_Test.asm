; Código para verificação de Instrução
Loop:
	LDI ACC, 0xE
	LDR RB
	CMP ACC, RB
	JPZ VAL1
	OUTA 1 ; Sinaliza Erro
	JPI ERRO
VAL1:
	LDI ACC, 0xA
	LDR RB
	CMP ACC, RB
	JPZ VAL2
	OUTA 1 ; Sinaliza Erro
	JPI ERRO
VAL2:
	LDI ACC, 5
	LDR RB
	CMP ACC, RB
	JPZ VAL3
	OUTA 1 ; Sinaliza Erro
	JPI ERRO
VAL3:
	LDI ACC, 2
	LDR RB
	CMP ACC, RB
	JPZ Loop
	OUTA 1 ; Sinaliza Erro
	JPI ERRO
END:
	JPI Loop
ERRO:
	JPI ERRO
	
