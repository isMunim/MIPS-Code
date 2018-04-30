.file 1 ""

.section .mdebug.abi32

.previous

.nan legacy

#.module fp=32

.module nooddspreg

.abicalls

.rdata

.align 2

$LC0:

.ascii "Enter any string\012\000"

.align 2

$LC1:

.ascii "The number of characters in the string are %d\012\000"

.align 2

$LC2:

.ascii "The number of words in the string are %d\000"

.text

.align 2

.globl main

.set nomips16

.set nomicromips

.ent main

#.type main, @function

main:

.frame $fp,144,$31 # vars= 112, regs= 2/0, args= 16, gp= 8

.mask 0xc0000000,-4

.fmask 0x00000000,0

.set noreorder

.cpload $25

.set nomacro

addiu $sp,$sp,-144

sw $31,140($sp)

sw $fp,136($sp)

move $fp,$sp

.cprestore 16

movz $31,$31,$0

sw $0,24($fp)

sw $0,28($fp)

li $2,1 # 0x1

sw $2,32($fp)

lw $2,%call16(clrscr)($28)

nop

move $25,$2

.reloc 1f,R_MIPS_JALR,clrscr

1: jalr $25

nop

lw $28,16($fp)

nop

lw $2,%got($LC0)($28)

nop

addiu $4,$2,%lo($LC0)

lw $2,%call16(puts)($28)

nop

move $25,$2

.reloc 1f,R_MIPS_JALR,puts

1: jalr $25

nop

lw $28,16($fp)

addiu $2,$fp,36

move $4,$2

lw $2,%call16(gets)($28)

nop

move $25,$2

.reloc 1f,R_MIPS_JALR,gets

1: jalr $25

nop

lw $28,16($fp)

sw $0,24($fp)

b $L2

nop

$L3:

lw $2,28($fp)

nop

addiu $2,$2,1

sw $2,28($fp)

lw $2,24($fp)

nop

addiu $2,$2,1

sw $2,24($fp)

$L2:

lw $2,24($fp)

addiu $3,$fp,24

addu $2,$3,$2

lb $2,12($2)

nop

bne $2,$0,$L3

nop

lw $5,28($fp)

lw $2,%got($LC1)($28)

nop

addiu $4,$2,%lo($LC1)

lw $2,%call16(printf)($28)

nop

move $25,$2

.reloc 1f,R_MIPS_JALR,printf

1: jalr $25

nop

lw $28,16($fp)

sw $0,24($fp)

b $L4

nop

$L6:

lw $2,24($fp)

addiu $3,$fp,24

addu $2,$3,$2

lb $3,12($2)

li $2,32 # 0x20

bne $3,$2,$L5

nop

lw $2,32($fp)

nop

addiu $2,$2,1

sw $2,32($fp)

$L5:

lw $2,24($fp)

nop

addiu $2,$2,1

sw $2,24($fp)

$L4:

lw $2,28($fp)

nop

addiu $3,$2,-1

lw $2,24($fp)

nop

slt $2,$3,$2

beq $2,$0,$L6

nop

lw $5,32($fp)

lw $2,%got($LC2)($28)

nop

addiu $4,$2,%lo($LC2)

lw $2,%call16(printf)($28)

nop

move $25,$2

.reloc 1f,R_MIPS_JALR,printf

1: jalr $25

nop

lw $28,16($fp)

nop

move $sp,$fp

lw $31,140($sp)

lw $fp,136($sp)

addiu $sp,$sp,144

j $31

nop

.set macro

.set reorder

.end main

.size main, .-main