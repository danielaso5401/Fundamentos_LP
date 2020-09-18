.data
	ms1: .asciiz "Ingrese un numero: " 
	ms_1: .asciiz "Ingrese otro numero: " 
	ms2: .asciiz "La suma es: " 
	ms3: .asciiz "\nLa diferencia es: "
	ms4: .asciiz "\nLa multiplicacion es: "
	ms5: .asciiz "\nLa division es: "
	ms6: .asciiz "\nEl promedio es: "
.text
main:
	la $a0, ms1
	li $v0,4
	syscall

	li $v0,6 #f0
	syscall

	mov.s	$f1, $f0
	la $a0, ms_1
	li $v0,4
	syscall

	li $v0,6 #f0
	syscall

	mov.s	$f2, $f0
	add.s $f12, $f2, $f1 #suma
	mov.s $f13, $f12
	la $a0, ms2
	li $v0,4
	syscall

	li $v0,2
	syscall

	sub.s $f12, $f1, $f2 #resta
	la $a0, ms3
	li $v0,4
	syscall

	li $v0,2
	syscall

	mul.s $f12, $f1, $f2 #multiplicacion
	la $a0, ms4
	li $v0,4
	syscall

	li $v0,2
	syscall

	div.s $f12, $f1, $f2 #division
	la $a0, ms5
	li $v0,4
	syscall

	li $v0,2
	syscall

	li.s $f3,2.0
	div.s $f12, $f13, $f3 #promedio
	la $a0, ms6
	li $v0,4
	syscall

	li $v0, 2
	syscall

	jr	$ra