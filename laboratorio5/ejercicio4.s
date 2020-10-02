.data
    tex1: .asciiz "Ingrese primer numero: "
    tex2: .asciiz "Ingresar el segundo numero: "
    tex3: .asciiz "El maximo con un divisor es: "

.text
.globl main
main:
    
    li $v0, 4
    la $a0, tex1
    syscall

    li $t2,0
    li  $v0,5 
    syscall
    move $t2, $v0

    
    li $v0, 4
    la $a0, tex2
    syscall

    li $t3,0
    li  $v0,5 
    syscall
    move $t3, $v0

    li $v0, 4
    la $a0, tex3
    syscall

    move $a0, $t2
    move $a1, $t3

    jal GCD

    add $a0,$v0,$zero 
    li $v0,1
    syscall
    li $v0, 10
syscall

GCD:


    addi $sp, $sp, -12
    sw $ra, 0($sp)
    sw $s0, 4($sp) 
    sw $s1, 8($sp)

    add $s0, $a0, $zero 
    add $s1, $a1, $zero 

    addi $t1, $zero, 0 
    beq $s1, $t1, returnn1

    add $a0, $zero, $s1
    div $s0, $s1
    mfhi $a1

    jal GCD

exitGCD:
    lw $ra, 0 ($sp) 
    lw $s0, 4 ($sp)
    lw $s1, 8 ($sp)
    addi $sp,$sp , 12
    jr $ra
returnn1:
    add $v0, $zero, $s0
    j exitGCD