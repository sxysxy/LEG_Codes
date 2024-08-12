# Read from input to memory
xor r1 r1 r1

label read_loop
	add zero io r0
	store_r r0 r1 unused
	add+imm2 r1 r1 1
	jne+imm2 r1 15 read_loop

# Now r1 stores the number of 
#    elements

# r3 points the last element
add r1 zero r3
sub+imm2 r3 1 r3

# In each loop, find the minium value
label sort_loop1
	load_r unused r3 r4
	# Now r4 = the last element
	# Compare r4 with all others
	# Let r5 point to the comparing
	#     element
	# Let r10 point to the max
	#     element
	xor r5 r5 r5
	xor r10 r10 r10
	label sort_loop2
		load_r unused r5 r8
		jlt r8 r4 no_exchange_value
		# r4 > r8, let r4 = r8
		add r8 zero r4
		add zero r5 r10
		label no_exchange_value
		add+imm2 r5 1 r5
		jle r5 r3 sort_loop2
	# Exchange the max element
	#    with that last element
	load_r unused r10 r8
	load_r unused r3 r9
	store_r r8 r3 unused 
	store_r r9 r10 unused
	
	# Decrease the bound
	jeq+imm2 r3 0 end_sort
	sub+imm2 r3 1 r3
	jump unused unused sort_loop1
label end_sort

xor r0 r0 r0
label output_loop
	load_r unused r0 r2
	add r2 zero io
	add+imm2 r0 1 r0
	jne r0 r1 output_loop
	
label end

	
