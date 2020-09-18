.data
	out_string: .asciiz "\ningrese un numero: "
	out_string2: .asciiz "\nel numero  "
	out_string3: .asciiz " si es multiplo "
	out_string4: .asciiz " no es multiplo "

.text 
main: 
	li $t1, 1 
 	li $t2, 21
	li $v0, 4
 	la $a0, out_string
 	syscall

 	li $v0, 5
 	syscall
 	move $t0, $v0 
 	
	Loop:
		beq $t1, $t2, Exit				
		div $t1, $t0
		mfhi $a0
		beq $a0, 0, LABEL_IF
		 LABEL_ELSE:
		 	li $v0, 4
		 	la $a0, out_string2
		 	syscall
		 	
		 	li $v0, 1
		 	move $a0, $t1
		 	syscall
		 	
		 	li $v0, 4
		 	la $a0, out_string4
		 	syscall

		 	li $v0, 1
		 	move $a0, $t0
		 	syscall
		 	b END_LABEL_IF
		  LABEL_IF:
		  	li $v0, 4
		 	la $a0, out_string2
		 	syscall
		 	
		 	li $v0, 1
		 	move $a0, $t1
		 	syscall
		 	
		 	li $v0, 4
		 	la $a0, out_string3
		 	syscall

		 	li $v0, 1
		 	move $a0, $t0
		 	syscall
		  END_LABEL_IF:
		  	add $t1, $t1, 1 
		j Loop
	Exit:			
jr $ra