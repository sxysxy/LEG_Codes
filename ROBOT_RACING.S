const GO_RIGHT 0
const GO_DOWN  1
const GO_LEFT  2
const GO_UP    3

jump unused unused main

label run_up2_block
	add+imm2 zero GO_RIGHT io
	add+imm2 zero GO_UP io
	add+imm2 zero GO_LEFT io
	add+imm2 zero GO_UP io
	add+imm2 zero GO_UP io
	add+imm2 zero GO_RIGHT io
	add+imm2 zero GO_DOWN io
	add+imm2 zero GO_RIGHT io
	add+imm2 zero GO_UP io
	add+imm2 zero GO_RIGHT io
	add+imm2 zero GO_DOWN io
	add+imm2 zero GO_DOWN io
	add+imm2 zero GO_LEFT io
	add+imm2 zero GO_DOWN io
	add+imm2 zero GO_RIGHT io
	ret unused unused unused

label main
	add+imm2 zero GO_UP io
	add+imm2 zero GO_RIGHT io
	add+imm2 zero GO_DOWN io
	add+imm2 zero GO_RIGHT io
	add+imm2 zero GO_RIGHT io
	add+imm2 zero GO_UP io
	add+imm2 zero GO_LEFT io
	add+imm2 zero GO_UP io
	add+imm2 zero GO_RIGHT io
	add+imm2 zero GO_UP io
	add+imm2 zero GO_LEFT io
	add+imm2 zero GO_LEFT io
	add+imm2 zero GO_DOWN io
	add+imm2 zero GO_LEFT io
	add+imm2 zero GO_UP io
	add+imm2 zero GO_UP io
	
	call pc unused run_up2_block
	
	add+imm2 zero GO_RIGHT io
	
	call pc unused run_up2_block
	
	add+imm2 zero GO_DOWN io
	add+imm2 zero GO_DOWN io
	add+imm2 zero GO_LEFT io
	add+imm2 zero GO_UP io
	add+imm2 zero GO_LEFT io
	add+imm2 zero GO_LEFT io
	add+imm2 zero GO_DOWN io
	add+imm2 zero GO_RIGHT io
	add+imm2 zero GO_DOWN io
	add+imm2 zero GO_LEFT io
	add+imm2 zero GO_DOWN io
	add+imm2 zero GO_RIGHT io
	add+imm2 zero GO_RIGHT io
	add+imm2 zero GO_UP io
	add+imm2 zero GO_RIGHT io
	add+imm2 zero GO_DOWN io
