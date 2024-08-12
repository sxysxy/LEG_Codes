add+imm2 zero 1 r4

label loop
	add zero io r0
	jne+imm2 r0 32 not_mark
	add+imm2 zero 1 r4
	add+imm2 zero 32 io
	jump unused unused loop
	label not_mark
	jne+imm2 r4 1 not_convert
	sub+imm2 r0 32 r0
	add+imm2 zero 0 r4
	label not_convert
	add r0 zero io
	jump unused unused loop
	