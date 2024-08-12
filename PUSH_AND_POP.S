label loop
	add zero io r2
	jne r2 zero do_push
	pop unused unused r8
	add zero r8 io
	jump unused unused cond_end
	label do_push
	push r2 unused unused
	label cond_end
	jump unused unused loop