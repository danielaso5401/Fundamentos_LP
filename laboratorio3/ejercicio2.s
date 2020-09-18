.data
	out_string: .asciiz "ingrese un numero: "
	out_string2: .asciiz "ingres la cantidad de numeros: "
	out_string3: .asciiz "la suma es:  "
	out_string4: .asciiz "\nel promedio es:  "
	out_string5: .asciiz "\nel mayor es:  "
	out_string6: .asciiz "\nel menor es:  "
.text

main:
	
li.s $f1,0.0
li.s $f2,0.0
li.s $f3,0.0
li.s $f4,1.0
li.s $f5,0.0
li $t1,0
li $t2,0

li $v0, 4
la $a0, out_string2
syscall


li	$v0,5 
syscall
move $t2, $v0



Loop:
	beq $t2, $t1, Exit
	
	li $v0, 4
	la $a0, out_string
	syscall
	
	li	$v0,6 
	syscall
	mov.s $f1,$f0
	

	

	add.s $f12, $f12, $f1
	add.s $f3, $f3, $f4
	add $t1, $t1, 1


	j Loop
Exit:

li $v0, 4
la $a0, out_string3
syscall

li $v0, 2
syscall

li $v0, 4
la $a0, out_string4
syscall

div.s $f12, $f12, $f3
li $v0, 2
syscall
jr $ra
