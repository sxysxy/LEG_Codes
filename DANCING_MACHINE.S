jump unused unused main

label seed_next
	# Args: R2 = input_seed
	# Returns: R0 = next_seed
	#          R1 = direction
	#push r3 unused unused
	#push r4 unused unused 
	
	shr+imm2 r2 1 r3
	xor r2 r3 r3
	shl+imm2 r3 1 r4
	xor r3 r4 r3
	shr+imm2 r3 2 r4
	xor r3 r4 r0
	and+imm2 r0 3 r1
	
	#pop unused unused r4
	#pop unused unused r3
	ret unused unused unused

label main
	add zero io r2
	label loop
		call pc unused seed_next
		add r1 zero io
		add zero r0 r2
		jump unused unused loop
	
	