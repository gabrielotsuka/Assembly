.data 
	str1:	.asciiz "Num: "
	str2:	.asciiz "Horas: "
	str3:	.asciiz "R$/h: " 
	str4: 	.asciiz "NUMBER = "
	str5: 	.asciiz "SALARY = U$ "
	endl:	.asciiz "\n"
	
.text
	li $v0, 4
	la $a0, str1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $zero, $v0		# t0 contém Num
	
	li $v0, 4
	la $a0, str2
	syscall
	
	li $v0, 7
	syscall
	mov.d $f2, $f0			# f2 contém num de horas
	
	li $v0, 4
	la $a0, str3
	syscall
	
	li $v0, 7
	syscall				
	mov.d $f4, $f0			# f4 contém sal/h
	
	li $v0, 4
	la $a0, endl
	syscall
	
	li $v0, 4
	la $a0, str4
	syscall
	
	# printf ("%d", num)
	li $v0, 1
	add $a0, $zero, $t0
	syscall
	
	li $v0, 4
	la $a0, endl
	syscall
	
	li $v0, 4
	la $a0, str5
	syscall
		
	mul.d $f12, $f4, $f2
	li $v0, 3
	syscall
	
	li $v0, 4
	la $a0, endl
	syscall
	
	
	
	