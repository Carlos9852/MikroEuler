; Código para verificação de Instrução
WRITE:
	LDI ACC, 0
	STW @0x00, ACC ; RAM Address[RC:0:0]=ACC (Indireto + absoluto)
	LDI ACC, 1
	STW @0x64, ACC ; RAM Address[RC:6:4]=ACC
	LDI ACC, 2
        STW @0xFF, ACC ; RAM Address[RC:Fh:Fh]=ACC
        LDI ACC, 3
	LDI RC, 1
        STW @0xFA, ACC ; RAM Address[1:Fh:Ah]=ACC
        LDI ACC, 4
        STW @0xFD, ACC ; RAM Address[1:Fh:Dh]=ACC
        LDI ACC, 5
        STW @0xFF, ACC ; RAM Address[1:Fh:Fh]=ACC
        LDI ACC, 6
	LDI RC, 2
        STW @0xA5, ACC ; RAM Address[2:Ah:5h]=ACC
        LDI ACC, 7
	LDI RC, 3
        STW @0xB8, ACC ; RAM Address[3:Bh:8]=ACC
        LDI ACC, 8
	LDI RC, 4
        STW @0xF0, ACC ; RAM Address[4:Fh:0]=ACC
        LDI ACC, 9
	LDI RC, 5
        STW @0xDA, ACC ; RAM Address[5:Dh:Ah]=ACC
        LDI ACC, 0xA
	LDI RC, 6
        STW @0xB1, ACC ; RAM Address[6:Bh:1]=ACC
        LDI ACC, 0xB
	LDI RC, 7
        STW @0xC9, ACC ; RAM Address[7:Ch:9]=ACC
        LDI ACC, 0xC
	LDI RC, 7
        STW @0xD3, ACC ; RAM Address[7:Dh:3]=ACC
        LDI ACC, 0xD
	LDI RC, 7
        STW @0xE2, ACC ; RAM Address[7:Eh:2]=ACC
        LDI ACC, 0xE
	LDI RC, 7
        STW @0xEB, ACC ; RAM Address[7:Eh:Bh]=ACC
        LDI ACC, 0XF
        STW @0xF5, ACC ; RAM Address[7:Fh:5]=ACC
READ:
	LDI RC, 0
        ADD ACC, 0 ; NOP
        LDW ACC,@0x00 ; ACC=RAM Address[0:0:0]
	CMP ACC,0
	JPZ VAL1
	JPI ERRO
VAL1:
        ADD ACC, 0
        LDW ACC,@0x64 ; ACC=RAM Address[0:6:4]
	CMP ACC,1
	JPZ VAL2
	JPI ERRO
VAL2:
        ADD ACC, 0
        LDW ACC,@0xFF ; ACC=RAM Address[0:F:F]
	CMP ACC,2
	JPZ VAL3
	JPI ERRO
VAL3:
	LDI RC, 1
        LDW ACC,@0xFA ; ACC=RAM Address[1:F:A]
	CMP ACC,3
	JPZ VAL4
	JPI ERRO
VAL4:
        ADD ACC, 0
        LDW ACC,@0xFD ; ACC=RAM Address[1:F:D]
	CMP ACC,4
	JPZ VAL5
	JPI ERRO
VAL5:
        ADD ACC, 0
        LDW ACC,@0xFF ; ACC=RAM Address[1:F:F]
	CMP ACC,5
	JPZ VAL6
	JPI ERRO
VAL6:
	LDI RC, 2
        LDW ACC,@0xA5 ; ACC=RAM Address[2:A:5]
	CMP ACC,6
	JPZ VAL7
	JPI ERRO
VAL7:
	LDI RC, 3
        LDW ACC,@0xB8 ; ACC=RAM Address[3:B:8]
	CMP ACC,7
	JPZ VAL8
	JPI ERRO
VAL8:
	LDI RC, 4
        LDW ACC,@0XF0 ; ACC=RAM Address[4:F:0]
	CMP ACC,8
	JPZ VAL9
	JPI ERRO
VAL9:
	LDI RC, 5
        LDW ACC,@0XDA ; ACC=RAM Address[5:D:A]
	CMP ACC,9
	JPZ VAL10
	JPI ERRO
VAL10:
	LDI RC, 6
        LDW ACC,@0XB1 ; ACC=RAM Address[6:B:1]
	CMP ACC,0xA
	JPZ VAL11
	JPI ERRO
VAL11:	
	LDI RC, 7
        LDW ACC,@0XC9 ; ACC=RAM Address[7:C:9]
	CMP ACC,0xB
	JPZ VAL12
	JPI ERRO
VAL12:
        ADD ACC, 0
        LDW ACC,@0XD3 ; ACC=RAM Address[7:D:3]
	CMP ACC,0xC
	JPZ VAL13
	JPI ERRO
VAL13:
        ADD ACC, 0
        LDW ACC,@0XE2 ; ACC=RAM Address[7:E:2]
	CMP ACC,0xD
	JPZ VAL14
	JPI ERRO
VAL14:
        ADD ACC, 0
        LDW ACC,@0XEB ; ACC=RAM Address[7:E:B]
	CMP ACC,0xE
	JPZ VAL15
	JPI ERRO
VAL15:
        ADD ACC, 0
        LDW ACC,@0XF5 ; ACC=RAM Address[7:F:5]
	CMP ACC,0xF
	JPZ END
	JPI ERRO
END:
	LDI RC, 0
        JPI READ

ERRO:
	LDI ACC,0
	JPI ERRO; Halt
	
