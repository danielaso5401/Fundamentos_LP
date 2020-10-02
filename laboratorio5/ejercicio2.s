.data
	tex1: .asciiz "ingrese un numero: "
	tex2: .asciiz "\nlos numeros impares hasta "
	tex3: .asciiz " son: "
	tex4: .asciiz "  "
.text
main:
	li $v0, 4
	la $a0, tex1
	syscall


	li $t2,0
	li $t1,0
	li $t3,1
	li $t4,2
	
	li	$v0,5 
	syscall
	move $t2, $v0

	li $v0, 4
	la $a0, tex2
	syscall

	move $a0, $t2
	li $v0,1
	syscall

	li $v0, 4
	la $a0, tex3
	syscall

	div $t4, $t2, $t4	

	Loop:
	beq $t4, $t1, Exit

	move $a0, $t3
	li $v0,1
	syscall

	li $v0, 4
	la $a0, tex4
	syscall


	add $t3, $t3, 2



	add $t1, $t1, 1
	j Loop
Exit:
jr $ra