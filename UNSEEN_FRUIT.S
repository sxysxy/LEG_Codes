const TURN_LEFT   0
const GO_FORWARD  1
const TURN_RIGHT  2
const JUST_WAIT   3
const ENTER       4
const ATTACK      5
const BLOCK_NOTHING  92

# Go to the correct place
add+imm2 zero TURN_LEFT io
add+imm2 zero GO_FORWARD io
add+imm2 zero TURN_LEFT io
add+imm2 zero GO_FORWARD io
add+imm2 zero GO_FORWARD io
add+imm2 zero GO_FORWARD io
add+imm2 zero GO_FORWARD io
add+imm2 zero TURN_LEFT io
add+imm2 zero GO_FORWARD io
add+imm2 zero TURN_RIGHT io
add+imm2 zero GO_FORWARD io

# Test the id of wall
# add+imm2 zero ENTER io
# add io zero r0

label loop
	add+imm2 zero ENTER io
	add io zero r0
	jeq+imm2 r0 BLOCK_NOTHING loop
	load_r unused r0 r1
	jeq+imm2 r1 1 TURN_STOP
	add+imm2 r1 1 r1
	store_r r1 r0 unused
	jump unused unused loop
	
label TURN_STOP
	add+imm2 zero TURN_RIGHT io
	add+imm2 zero ENTER io


