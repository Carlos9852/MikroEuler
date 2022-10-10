#DEFINE End_Ret $0x5DC

; Endereços para a rotina Delay_ms
#DEFINE End_CT0 $0x5D0
#DEFINE End_CT1 $0x5D1
#DEFINE End_Cyc $0x5D2

; LCD Test
LDI ACC,0
STW @End_Ret, ACC; Salva índice de retorno na RAM
LDI RC,>Delay_ms

LDI ACC,0xF ; 
STW @End_Ret, ACC  ; Ajuste do tempo de atraso para Delay_ms
JPI Delay_ms

RET_Delay_ms_00:
; Inicialização
OUTA 0
OUTB 0
OUTB 2
SUB ACC,0
OUTB 0
LDI ACC,1
STW @End_Ret, ACC
LDI RC,>Delay_ms
JPI Delay_ms

RET_Delay_ms_01:
OUTA 2
OUTB 2
SUB ACC,0
OUTB 0
LDI ACC,2
STW @End_Ret, ACC
LDI RC,>Delay_ms
JPI Delay_ms

RET_Delay_ms_02:
OUTA 2
OUTB 2
SUB ACC,0
OUTB 0
LDI ACC,3
STW @End_Ret, ACC
LDI RC,>Delay_ms
JPI Delay_ms

RET_Delay_ms_03:
OUTA 8
OUTB 2
SUB ACC,0
OUTB 0
LDI ACC,4
STW @End_Ret, ACC
LDI RC,>Delay_ms
JPI Delay_ms

RET_Delay_ms_04:
OUTA 0
OUTB 2
SUB ACC,0
OUTB 0
LDI ACC,5
STW @End_Ret, ACC
LDI RC,>Delay_ms
JPI Delay_ms

RET_Delay_ms_05:
OUTA 0xE
OUTB 2
SUB ACC,0
OUTB 0
LDI ACC,6
STW @End_Ret, ACC
LDI RC,>Delay_ms
JPI Delay_ms

RET_Delay_ms_06:
OUTA 0
OUTB 2
SUB ACC,0
OUTB 0
LDI ACC,7
STW @End_Ret, ACC
LDI RC,>Delay_ms
JPI Delay_ms

RET_Delay_ms_07:
OUTA 6
OUTB 2
SUB ACC,0
OUTB 0
LDI ACC,8
STW @End_Ret, ACC
LDI RC,>Delay_ms
JPI Delay_ms

RET_Delay_ms_08:
OUTA 4
OUTB 3
SUB ACC,0
OUTB 1
LDI ACC,9
STW @End_Ret, ACC
LDI RC,>Delay_ms
JPI Delay_ms

RET_Delay_ms_09:
OUTA 0xD
OUTB 3
SUB ACC,0
LDI ACC,0xA
STW @End_Ret, ACC
LDI RC,>Delay_ms
JPI Delay_ms


SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0

SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0

SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0

SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0

SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0

SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0

SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0




Delay_ms:
LDI ACC,0
STW @End_CT0, ACC
STW @End_CT1, ACC

Delay1_ms:
CMP ACC, 0xF
JPZ Delay2_ms
ADD ACC,1
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
JPI Delay1_ms

Delay2_ms:
LDW ACC, @End_CT0
CMP ACC, @End_Cyc
JPZ Delay3_ms
ADD ACC,1
STW @End_CT0, ACC
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
LDI ACC,0
JPI Delay1_ms

Delay3_ms:
LDW ACC, @End_CT1
CMP ACC, @End_Cyc
JPZ DelayEnd_ms
ADD ACC,1
STW @End_CT1, ACC
SUB ACC,0
SUB ACC,0
SUB ACC,0
SUB ACC,0
LDI ACC,0
STW @End_CT0, ACC
JPI Delay2_ms

DelayEnd_ms:
;LDW ACC,@End_Ret
;CMP ACC,0xF
;JPZ DelayEnd_ms_10

LDW ACC,@End_Ret
JPZ Delay_ms_RET_00

CMP ACC,1
JPZ Delay_ms_RET_01
CMP ACC,2
JPZ Delay_ms_RET_02
CMP ACC,3
JPZ Delay_ms_RET_03
CMP ACC,4
JPZ Delay_ms_RET_04
CMP ACC,5
JPZ Delay_ms_RET_05
CMP ACC,6
JPZ Delay_ms_RET_06
CMP ACC,7
JPZ Delay_ms_RET_07
CMP ACC,8
JPZ Delay_ms_RET_08
CMP ACC,9
JPZ Delay_ms_RET_09

;DelayEnd_ms_10:
;LDW ACC,RAM

Pare:
JPI Pare

Delay_ms_RET_00:
LDI RC,>RET_Delay_ms_00
JPI RET_Delay_ms_00

Delay_ms_RET_01:
LDI RC,>RET_Delay_ms_01
JPI RET_Delay_ms_01

Delay_ms_RET_02:
LDI RC,>RET_Delay_ms_02
JPI RET_Delay_ms_02

Delay_ms_RET_03:
LDI RC,>RET_Delay_ms_03
JPI RET_Delay_ms_03

Delay_ms_RET_04:
LDI RC,>RET_Delay_ms_04
JPI RET_Delay_ms_04

Delay_ms_RET_05:
LDI RC,>RET_Delay_ms_05
JPI RET_Delay_ms_05

Delay_ms_RET_06:
LDI RC,>RET_Delay_ms_06
JPI RET_Delay_ms_06

Delay_ms_RET_07:
LDI RC,>RET_Delay_ms_07
JPI RET_Delay_ms_07

Delay_ms_RET_08:
LDI RC,>RET_Delay_ms_08
JPI RET_Delay_ms_08

Delay_ms_RET_09:
LDI RC,>RET_Delay_ms_09
JPI RET_Delay_ms_09
