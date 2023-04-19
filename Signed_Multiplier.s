#starting values
addi x8, x8, 10
addi x9, x9, -3

#check sign of multiplier
add x10, x10, x9
srai x10, x10, 15

beqz x10, positive
andi x10, x10, 0

#multiply negative
negativeloop:
addi x9, x9, 1
add x10, x10, x8
bnez x9, negativeloop

#make output negative
addi x11, x11, -1
xor x10, x10, x11
addi x10, x10, 1
andi x11, x11, 0
beqz x9, end

#multiply positive
positive:
beqz x9, end
andi x10, x10, 0
positiveloop:
addi x9, x9, -1
add x10, x10, x8
bnez x9, positiveloop

#display final output and end
end:
add x11, x11, x10
