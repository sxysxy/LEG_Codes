#Init r1 = 0 for the data ptr
add+imm2 zero 0 r1

# Read 32 times and store data 
# In memory
label loop
add+imm2 io 0 r0 
store_r r0 r1 0
add+imm2 r1 1 r1
jne+imm2 r1 32 loop

# Write 32 times
# Read data from memory
add+imm2 zero 0 r1
label loop2
load_r 0 r1 r0
add+imm2 r0 0 io
add+imm2 r1 1 r1
jne+imm2 r1 32 loop2