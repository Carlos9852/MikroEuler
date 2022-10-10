;Operações Lógicas

#DEFINE portA     $0x00
#DEFINE portB     $0x01
#DEFINE Result 	  $0x02
#DEFINE ResultB	  $0x03
#DEFINE Flag_Mult $0x04
#DEFINE Ret       $0x05



Loop:
	ina acc
	stw acc, @portA
	inb
	stw acc, @portB
	inc acc
	outc acc
	cmp acc, 0x00
	jpz And
	cmp acc, 0x01
	jpz Or
	cmp acc, 0x02
	jpz Not
	cmp acc, 0x03
	jpz Nnd
	cmp acc, 0x04
	jpz Nor
	cmp acc, 0x05
	jpz Xor
	cmp acc, 0x06
	jpz Xnor
	cmp acc, 0x07
	jpz Soma
	cmp acc, 0x08
	jpz Subt
	
	cmp acc, 0x09
	jpz Mult

And:
	ldw acc, @portA
	nand acc, @portB
	nand acc, 0x0f
	outa acc
	jpi Loop

Or:
	ldw acc, @portA
	nand acc, 0x0f
	stw acc, @portA
	ldw acc, @portB
	nand acc, 0x0f
	stw acc, @portB
	nand acc, @portA
	outa acc
	jpi Loop
	
Not:
	ldw acc, @portA
	nand acc, 0x0f
	outa acc
	jpi Loop

Nnd:
	ldw acc, @portA
	nand acc, @portB
	outa acc
	jpi Loop

Nor:
	ldw acc, @portA
	nand acc, 0x0f
	stw acc, @portA
	ldw acc, @portB
	nand acc, 0x0f
	stw acc, @portB
	nand acc, @portA
	nand acc, 0x0f
	outa acc
	jpi Loop
	
Xor:
	ldw acc, @portA
	nand acc, @portB
	stw acc, @Result
	nand acc, @portA
	stw acc, @portA
	ldw acc, @portB
	nand acc, @Result
	stw acc, @portB
	nand acc, @portA
	outa acc
	jpi Loop
	
Xnor:
	ldw acc, @portA
	nand acc, @portB
	stw acc, @Result
	ldw acc, @portA
	nand acc, 0x0f
	stw acc, @portA
	ldw acc, @portB
	nand acc, 0x0f
	stw acc, @portB
	nand acc, @portA
	nand acc, @Result
	outa acc
	jpi Loop
	
Soma:
	ldw acc, @portA
	add acc, @portB
	outa acc
	jpc SomaB
	outb 0x00
	jpi Loop	
SomaB:
	ldi acc, 0x01
	outb acc
	jpi Loop
	

Subt:
	ldw acc, @portB
	cmp acc, @portA
	jpc Subt1
	jpi Error
Subt1:
	outd 0x00
	sub acc, @portA
	outa acc
	jpi Loop
	
Mult:
	outa @Result
	outb @ResultB
	ldi acc, 0x00
	stw acc, @Result
	stw acc, @ResultB
	stw acc, @Flag_Mult

MultA:
	ldw acc, @Result
	add acc, @portB
	stw acc, @Result
	jpc MultB
	Ret:	
	ldw acc, @Flag_Mult
	add acc, 0x01
	stw acc, @Flag_Mult
	cmp acc, @portA
	jpz Loop
	jpi MultA
MultB:
	ldw acc, @ResultB
	add acc, 0x01
	stw acc, @ResultB
	jpi Ret
	
	

Error:
	outd 0x0f
	jpi Loop