.data
		out_stringp: .asciiz "\nIngrese el primer lado del triangulo:\n" 
		out_strings: .asciiz "\nIngrese el segundo lado del triangulo:\n" 
		out_stringt: .asciiz "\nIngrese el tercer lado del triangulo:\n" 
		out_stringc: .asciiz "\nEl triangulo es valido\n" 
		out_stringq: .asciiz "\nEl triangulo no es valido\n" 
.text
main:

	li $v0, 4
	la $a0, out_stringp
	syscall

	li $v0,5
	syscall

	move $t0, $v0

	li $v0, 4
	la $a0, out_strings
	syscall

	li $v0,5
	syscall

	move $t1, $v0

	li $v0, 4
	la $a0, out_stringt
	syscall

	li $v0,5
	syscall

	move $t2, $v0

	add $t5, $t0, $t1
	sgt $s0,$t2,$t5 


	add $t3, $t0, $t2
	sgt $s1,$t1,$t3 

	add $t4, $t1, $t2
	sgt $s2,$t0,$t4 

	or $s4,$s0,$s1
	or $s5,$s4,$s2
	move $a0,$s5


	li $t6, 1

	beq $t6,$a0, LABEL_IF
	LABEL_ELSE:
		la $a0, out_stringc
		b END_LABEL_IF
	LABEL_IF:
		la $a0, out_stringq
	END_LABEL_IF:
		li $v0, 4
		syscall

jr $ra