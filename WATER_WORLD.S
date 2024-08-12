const N 16
jump _ _ main
	
label find_left_max
	# args: r1 = position
	# returns: r0 = height 
	push r3 _ _
	push r4 _ _
	
	xor r0 r0 r0
	xor r3 r3 r3
	
	label find_left_loop
		load_r _ r3 r4
		jgt r4 r0 update_left
		jump _ _ not_update_left
		label update_left
		add r4 zero r0
		label not_update_left
		add+imm2 r3 1 r3
		jeq r3 r1 find_left_end
		jump _ _ find_left_loop
		
	label find_left_end
	pop _ _ r4
	pop _ _ r3
	ret _ _ _

label find_right_max
	# args: r1 = position
	# returns: r0 = height 
	push r3 _ _
	push r4 _ _
	
	xor r0 r0 r0
	add+imm2 r1 1 r3
	
	label find_right_loop
		load_r _ r3 r4
		jgt r4 r0 update_right
		jump _ _ not_update_right
		label update_right
		add r4 zero r0
		label not_update_right
		add+imm2 r3 1 r3
		jeq+imm2 r3 N find_right_end
		jump _ _ find_right_loop
		
	label find_right_end
	pop _ _ r4
	pop _ _ r3
	ret _ _ _
	
label solve
	# returns : r0 = answer
	push r1 _ _
	push r3 _ _
	push r4 _ _
	push r5 _ _
	push r8 _ _

	add+imm2 zero 1 r1
	xor r8 r8 r8
	label solve_loop
		call pc _ find_left_max
		add zero r0 r3
		call pc _ find_right_max
		add zero r0 r4
		
		jlt r3 r4 makesure_r3_min
		add zero r4 r3
		label makesure_r3_min
		
		load_r _ r1 r5
		jlt r3 r5 solve_loop_end
		sub r3 r5 r3
		add r8 r3 r8
		label solve_loop_end
		
		add+imm2 r1 1 r1
		jeq+imm2 r1 N-1 solve_end
		jump _ _ solve_loop
		
	label solve_end
	
	add zero r8 r0
	
	pop _ _ r8
	pop _ _ r5
	pop _ _ r4
	pop _ _ r3
	pop _ _ r1
	ret _ _ _
	
label main
	xor r0 r0 r0
	label read_loop
		add io zero r1
		store_r r1 r0 _
		add+imm2 r0 1 r0
		jne+imm2 r0 N read_loop
		
	call pc _ solve
	add zero r0 io
	
	
	