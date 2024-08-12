jump unused unused main

label move_one
	add zero r1 io
	add+imm2 zero 5 io
	add zero r2 io
	add+imm2 zero 5 io
	ret unused unused unused

label move
	# r0 : disk_nr
	# r1 : source
	# r2 : dest
	# r3 : spare
	# r4 = origin disk_nr
	# r5 = origin source
	# r8 = origin dest
	# r9 = origin spare
	push r0 unused unused 
	push r1 unused unused 
	push r2 unused unused 
	push r3 unused unused 
	push r4 unused unused 
	push r5 unused unused 
	push r8 unused unused 
	push r9 unused unused 
	
	jne+imm2 r0 0 rec_mov
	call pc unused move_one
	jump unused unused move_end
	label rec_mov 
	
	add r0 zero r4
	add r1 zero r5
	add r2 zero r8
	add r3 zero r9
	
	sub+imm2 r4 1 r0
	add r5 zero r1
	add r9 zero r2
	add r8 zero r3
	call pc unused move

	add r4 zero r0
	add r5 zero r1
	add r8 zero r2
	add r9 zero r3
	call pc unused move_one
	
	sub+imm2 r4 1 r0
	add r9 zero r1
	add r8 zero r2
	add r5 zero r3
	call pc unused move
	
	label move_end
	pop unused unused r9
	pop unused unused r8
	pop unused unused r5
	pop unused unused r4
	pop unused unused r3
	pop unused unused r2
	pop unused unused r1
	pop unused unused r0
	ret unused unused unused

label main
	add zero io r0
	add zero io r1
	add zero io r2
	add zero io r3
	
	call pc unused move