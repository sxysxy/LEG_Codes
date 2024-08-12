add zero io r0    # dividend
add zero io r1    # divisor
add+imm2 zero unused r2  # result

label loop
jlt r0 r1 output
sub r0 r1 r0
add+imm2 r2 1 r2
jump unused unused loop

label output
add+imm2 r2 0 io
add+imm2 r0 0 io