OCTAL:
andi $r0, $r0, 0x00
andi $r1, $r1, 0x00
andi $r2, $r2, 0x00

lw $r0, 0($r0)
addi $r1, $r1, 0x07
sllv $r0, $r0, $r1
srlv $r0, $r0, $r1		# finish getting bottom 9 bits

and $r2, $r0, $r1

andi $r1, $r1, 0x00
addi $r1, $r1, 0x03
srlv $r0, $r0, $r1

andi $r1, $r1, 0x00
addi $r1, $r1, 0x04
sllv $r0, $r0, $r1

or $r0, $r0, $r2 # finish inserting first zero bit

andi $r1, $r1, 0x00
addi $r1, $r1, 0x7f
and $r2, $r0, $r1

andi $r1, $r1, 0x00
addi $r1, $r1, 0x07
srlv $r0, $r0, $r1

andi $r1, $r1, 0x00
addi $r1, $r1, 0x08
sllv $r0, $r0, $r1

or $r0, $r0, $r2 # finish inserting second zero bit

disp $r0, 0