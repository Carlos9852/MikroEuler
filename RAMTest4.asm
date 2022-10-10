; *******************************************************************
; RAM TESTER (16 FIRST ADDRESSES)
; -------------------------------------------------------------------
; Example of an assembly language source file for MirkoEuler v0.19.
; This program tests the first 16 RAM memory addresses.
; First, the value 0 is written to a memory address and then, it is
; verified. After that, the next value "1" is written and it is verified.
; And so, all the others values (2 to Fh) is written and verified.
; If write/read is ok, the output A is used as an indicator.
; If write/read fails, the output B is used as an indicator.
; ===================================================================
; The code below the DEMO label, is only to demonstrate some
; capabilities of the assembler.
; -------------------------------------------------------------------
; Summary of the main features of the assembler for the MikroLeo:
; @ is used to indicate a RAM address.
; Decimal or hexadecimal immediate values could be indicated for
; example by 5 or 0xd.
; The $ could be used to indicate an immediate value that can be
; decimal (e.g. $5) or hexadecimal (e.g. $0xd).
; @R is used to indicate that an address is composed by RD:RB:RA
; (AMODE=1, indirect address mode).
; All text that comes after semicolon is a comment.
; All text that comes before : is a Label that will be converted
; into an address.
; The assembler is not case-sensitive, so, for example, ACC is
; equal to AcC.
; Constants could be defined by the directive #define, for example,
; to define a decimal constant:
; #define Const1 $0
; In the same way, to define a hexadecimal constant:
; #define Const2 $0xA
; Note that the $ symbol must be used to define a constant.
; The address of a label could be loaded into a register by the
; use of characters '[', '>', '<' and ']'. To remember this, think
; about an address with 4 nibble as [><].
; Thus, to load the least significant nibble, ] is used.
; To load the next nibble, < is used and so on.
; For example, to load the penultimate nibble from the label TEST
; into the RD register:
; LDI RD,>TEST
; Pay attention with the labels because the assembler does not verify
; if there is duplicated label.
; *******************************************************************

#define CONST1 $8 ; Defines the constant CONST1 with value 8.
#define coNsTAnt2 $0x9
#dEfine rOUTine1 $0XFA ; Defines two nibbles that can be used as an absolute address for JPI, JPC and JPZ instructions
#define kKKk $0xF ; Define the constant kKKk with hexadecimal value 0xF.

INI:
	LDI RA,0 ; Initializes a Memory Address
	LDI RD, 0
	LDI RB,$0
	LDI ACC,0 ; Initializes first value to be writted in RAM
TEST1:
	; Test RAM for values between 0-F
	STW @R,ACC ; RAM[RD:RB:RA] receives ACC
	CMP ACC,@R ; ACC == RAM[RD:RB:RA] ?
	JPZ INCVALUE ; If yes, increment the value
	JPI ERRO

INCVALUE:
	ADD ACC,1 ; Next value to be written in RAM
	CMP ACC,0 ; Have all (0 - Fh) values been tested?
	JPZ INCRAM ; If yes, increment the RAM addres
	JPI TEST1 ; If not, do test with next value

INCRAM:
	; Increments low RAM Address (RA)
	STW @0xFF,ACC ; Saves ACC
	LDA RA ; Get last address to ACC (ACC <= RA)
	ADD ACC, $1 ; Increment the Address (ACC <= ACC + 1)
	LDR RA ; Update the Address (RA <= ACC)
	LDW ACC, @0xFF ; Recover ACC

RAMOK:
	; Indicates at Output A that RAM is Ok
	OUTA 9 ; Turn on bit 3 and 0
	SUB ACC,0 ; Nop
	OUTA 6 ; Turn on bit 2 and 1
	JPI TEST1
ERRO:
	OUTB 0XF ; Indicates at output B that the RAM test fail
	JPI ERRO ; Halt
; ==== End of RAM Test ====



;DEMO:
;	LDI RD, CONST1 ; Loads into RD the value of CONST1
;	LDI RA,constant2 ; Initializes a Memory Address
;LOop:
;	JPI Loop ; Halt
;	SUB ACC, $1
;	SUB ACC, RA
;	SUB ACC, @0X58
;	SUB ACC, @R
;	JPI @R
;	JPZ @R
;	JPZ ERRO
;	JPC ROUTine1
;	JPC @R
;	ADD ACC, $1
;	ADD ACC, 5
;	ADD ACC, 0XF
;	ADD ACC, RB
;	ADD ACC, RA
;	ADD ACC, @0X45
;	ADD ACC, @R
;	aDd aCc, CoNsT1
;	SUB ACC, ConstanT2
;	nand acc, @r
;	ina acc
;	inb
;	inc acc
;	ind
