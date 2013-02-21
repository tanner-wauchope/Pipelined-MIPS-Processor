StringLen:
andi $r0, $r0, 0x0
andi $r1, $r1, 0x0
andi $r2, $r2, 0x0
str_len_loop:
lw $r1, 0($r0)
zb $r2, $r1
andi $r1, $r1, 0x0
bne $r2, $r1, str_len_done
addi $r0, $r0, 0x1
j str_len_loop

str_len_done:
lw $r1, 0($r0)
add $r0, $r0, $r0
ffo $r2, $r1
andi $r1, $r1, 0x0
addi $r1, $r1, 0x8
slt $r2, $r2, $r1
andi $r1, $r1, 0x0
addi $r1, $r1, 0x1
beq $r2, $r1, str_len_add
j str_len_end

str_len_add:
addi $r0, $r0, 0x1
j str_len_end

str_len_end:
disp $r0, 0x0
jr $r3