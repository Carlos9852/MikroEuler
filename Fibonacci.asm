#DEFINE First  $0x00
#DEFINE Second $0x01
#DEFINE Sum    $0x03

Init:
	ldi acc, 0
	stw acc, @First
	outa @First
	ldi acc, 1
	stw acc, @Second
	outa @Second
	
Loop:
	ldw acc, @First
	add acc, @Second
	stw acc, @Sum
	outa @Sum
	ldw acc, @Second
	stw acc, @First
	ldw acc, @Sum
	stw acc, @Second
	cmp  acc, 0x0D
	jpc DispB
	jpi Loop

DispB:
	sub acc, 0
	jpi DispB
	