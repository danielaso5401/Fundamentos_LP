.data
	tex1: .asciiz "Ingrese un numero: "
	tex2: .asciiz "El numero ingresado es par"
	tex3: .asciiz "El numero ingresado es impar"
.text
main: 
	addi $t0, $0, 2
	la $a0, tex1
	li $v0, 4
	syscall

	li $2,5
	syscall

	div $2, $t0
	mfhi $t1
	
	beq $t1, $0, print_1
		la $a0, tex3
		li $2, 4
		syscall
	j fin
	print_1: la $a0, tex2

	li $2, 4
	syscall
	j fin
	fin: li $2, 10
	syscall
j $ra