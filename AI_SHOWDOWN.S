add+imm2 zero 3 io

add zero io r0

jeq+imm2 r0 6 ROUND1_6 
jeq+imm2 r0 7 ROUND1_7
jeq+imm2 r0 8 ROUND1_8
label ROUND1_6
	add+imm2 zero 1 io
	jump unused unused ROUND1_END
label ROUND1_7
	add+imm2 zero 2 io
	jump unused unused ROUND1_END
label ROUND1_8
	add+imm2 zero 3 io
label ROUND1_END 

add zero io r0

jeq+imm2 r0 2 ROUND2_2
jeq+imm2 r0 3 ROUND2_3
jeq+imm2 r0 4 ROUND2_4
label ROUND2_2
	add+imm2 zero 1 io
	jump unused unused ROUND2_END
label ROUND2_3
	add+imm2 zero 2 io
	jump unused unused ROUND2_END
label ROUND2_4
	add+imm2 zero 3 io
label ROUND2_END

