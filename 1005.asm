.data
	str1: 	.asciiz "P1: "
	str2:	.asciiz "P2: "
	str3:	.asciiz "MEDIA = "
	endl:	.asciiz "\n"
	zerod:	.double 0.0
	wA:	.double 3.5
	wB:	.double 7.5
	divi:	.double 11.0
	
.text
	li $v0, 4
	la $a0, str1
	syscall
	
	li $v0, 7
	syscall
	# f2 = A
	mov.d $f2, $f0
	
	li $v0, 4
	la $a0, str2
	syscall
	
	li $v0, 7
	syscall
	# f4 = B
	mov.d $f4, $f0
	
	# f6 = 3.5
	ldc1 $f6, wA
	
	# f8 = 7.5
	ldc1 $f8, wB
	
	# f12 = A*3.5 + B*7.5
	mul.d $f10, $f2, $f6
	mul.d $f12, $f4, $f8
	add.d $f12, $f12, $f10
	
	# f10 = 10
	ldc1 $f10, divi
	
	# f12 = f12/11
	div.d $f12, $f12, $f10
	
	li $v0, 4
	la $a0, str3
	syscall
	
	li $v0, 3
	syscall
	
	li $v0, 4
	la $a0, endl
	syscall
	
	li $v0, 10
	syscall