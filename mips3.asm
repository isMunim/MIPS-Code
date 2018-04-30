	.file   1 ""
        .section .mdebug.abi32
        .previous
        .nan    legacy
        .module fp=32
        .module nooddspreg
        .abicalls
        .section        .rodata.str1.4,"aMS",@progbits,1
        .align  2
$LC0:
        .ascii  "\012Enter a string: \000"
        .align  2
$LC1:
        .ascii  "\012Enter a character: \000"
        .align  2
$LC2:
        .ascii  "\012Number of occurences of %c = %d\000"
        .align  2
$LC3:
        .ascii  "\012Enter 2 characters: \000"
        .align  2
$LC4:
        .ascii  "\012Number of occurences of %c%c = %d\000"
        .align  2
$LC5:
        .ascii  "\012Repeat? \000"
        .section        .text.startup,"ax",@progbits
        .align  2
        .globl  main
        .set    nomips16
        .set    nomicromips
        .ent    main
        .type   main, @function
main:
        .frame  $sp,176,$31             # vars= 104, regs= 10/0, args= 24, gp= 8
        .mask   0xc0ff0000,-4
        .fmask  0x00000000,0
        .set    noreorder
        .cpload $25
        .set    nomacro
        lw      $5,%got($LC0)($28)
        addiu   $sp,$sp,-176
        lw      $25,%call16(__printf_chk)($28)
        addiu   $5,$5,%lo($LC0)
        .cprestore      24
        movz    $31,$31,$0
        sw      $31,172($sp)
        sw      $22,160($sp)
        sw      $21,156($sp)
        sw      $20,152($sp)
        sw      $19,148($sp)
        sw      $18,144($sp)
        sw      $17,140($sp)
        sw      $fp,168($sp)
        sw      $23,164($sp)
        sw      $16,136($sp)
        .reloc  1f,R_MIPS_JALR,__printf_chk
1:      jalr    $25
        li      $4,1                    # 0x1

        lw      $28,24($sp)
        addiu   $22,$sp,32
        lw      $25,%call16(gets)($28)
        nop
        .reloc  1f,R_MIPS_JALR,gets
1:      jalr    $25
        move    $4,$22

        lw      $28,24($sp)
        nop
        lw      $21,%got($LC1)($28)
        lw      $20,%got($LC2)($28)
        lw      $19,%got($LC3)($28)
        lw      $18,%got($LC4)($28)
        lw      $17,%got($LC5)($28)
        addiu   $21,$21,%lo($LC1)
        addiu   $20,$20,%lo($LC2)
        addiu   $19,$19,%lo($LC3)
        addiu   $18,$18,%lo($LC4)
        addiu   $17,$17,%lo($LC5)
$L8:
        lw      $25,%call16(__printf_chk)($28)
        move    $5,$21
        .reloc  1f,R_MIPS_JALR,__printf_chk
1:      jalr    $25
        li      $4,1                    # 0x1

        lw      $28,24($sp)
        nop
        lw      $25,%call16(getche)($28)
        nop
        .reloc  1f,R_MIPS_JALR,getche
1:      jalr    $25
        nop

        lb      $16,32($sp)
        sll     $23,$2,24
        lw      $28,24($sp)
        beq     $16,$0,$L9
        sra     $23,$23,24

        lw      $25,%call16(__ctype_tolower_loc)($28)
        nop
        .reloc  1f,R_MIPS_JALR,__ctype_tolower_loc
1:      jalr    $25
        sll     $16,$16,2

        lw      $4,0($2)
        sll     $2,$23,2
        addu    $2,$4,$2
        lw      $5,0($2)
        lw      $28,24($sp)
        addiu   $2,$sp,33
        b       $L16
        move    $7,$0

$L3:
        lb      $16,-1($2)
        nop
        beq     $16,$0,$L2
        nop

$L4:
        sll     $16,$16,2
$L16:
        addu    $16,$4,$16
        lw      $3,0($16)
        nop
        bne     $3,$5,$L3
        addiu   $2,$2,1

        lb      $16,-1($2)
        nop
        bne     $16,$0,$L4
        addiu   $7,$7,1

$L2:
        lw      $25,%call16(__printf_chk)($28)
        move    $6,$23
        move    $5,$20
        .reloc  1f,R_MIPS_JALR,__printf_chk
1:      jalr    $25
        li      $4,1                    # 0x1

        lw      $28,24($sp)
        move    $5,$19
        lw      $25,%call16(__printf_chk)($28)
        nop
        .reloc  1f,R_MIPS_JALR,__printf_chk
1:      jalr    $25
        li      $4,1                    # 0x1

        lw      $28,24($sp)
        nop
        lw      $25,%call16(getche)($28)
        nop
        .reloc  1f,R_MIPS_JALR,getche
1:      jalr    $25
        nop

        lw      $28,24($sp)
        sll     $16,$2,24
        lw      $25,%call16(getche)($28)
        nop
        .reloc  1f,R_MIPS_JALR,getche
1:      jalr    $25
        sra     $16,$16,24

        lb      $23,33($sp)
        sll     $fp,$2,24
        lw      $28,24($sp)
        beq     $23,$0,$L10
        sra     $fp,$fp,24

        lw      $25,%call16(__ctype_tolower_loc)($28)
        nop
        .reloc  1f,R_MIPS_JALR,__ctype_tolower_loc
1:      jalr    $25
        nop

        lw      $4,0($2)
        sll     $2,$16,2
        addu    $2,$4,$2
        sll     $8,$fp,2
        lw      $28,24($sp)
        lw      $5,0($2)
        addu    $8,$4,$8
        move    $3,$22
        b       $L7
        move    $7,$0

$L6:
        lb      $23,1($3)
        nop
        beq     $23,$0,$L5
        nop

$L7:
        lb      $2,0($3)
        nop
        sll     $2,$2,2
        addu    $2,$4,$2
        lw      $2,0($2)
        nop
        bne     $2,$5,$L6
        addiu   $3,$3,1

        sll     $23,$23,2
        addu    $23,$4,$23
        lw      $6,0($23)
        lw      $2,0($8)
        nop
        bne     $6,$2,$L6
        nop

        lb      $23,1($3)
        nop
        bne     $23,$0,$L7
        addiu   $7,$7,1

$L5:
        lw      $25,%call16(__printf_chk)($28)
        move    $6,$16
        move    $5,$18
        sw      $7,16($sp)
        li      $4,1                    # 0x1
        .reloc  1f,R_MIPS_JALR,__printf_chk
1:      jalr    $25
        move    $7,$fp

        lw      $28,24($sp)
        move    $5,$17
        lw      $25,%call16(__printf_chk)($28)
        nop
        .reloc  1f,R_MIPS_JALR,__printf_chk
1:      jalr    $25
        li      $4,1                    # 0x1

        lw      $28,24($sp)
        nop
        lw      $25,%call16(getche)($28)
        nop
        .reloc  1f,R_MIPS_JALR,getche
1:      jalr    $25
        nop

        sll     $2,$2,24
        sra     $2,$2,24
        li      $3,121                  # 0x79
        lw      $28,24($sp)
        beq     $2,$3,$L8
        li      $2,1                    # 0x1

        lw      $31,172($sp)
        lw      $fp,168($sp)
        lw      $23,164($sp)
        lw      $22,160($sp)
        lw      $21,156($sp)
        lw      $20,152($sp)
        lw      $19,148($sp)
        lw      $18,144($sp)
        lw      $17,140($sp)
        lw      $16,136($sp)
        j       $31
        addiu   $sp,$sp,176

$L9:
        b       $L2
        move    $7,$0

$L10:
        b       $L5
        move    $7,$0

        .set    macro
        .set    reorder
        .end    main
        .size   main, .-main