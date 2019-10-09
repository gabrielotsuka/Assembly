.data
	x: .space 40
	a: 42
	b: 314

.text

main: 	la $s0, x
	la $s1, a	#s1 = &a
	la $s2, b	#s2 = &b
	
	lw $t0, 0($s1)	#t0 = *a
	lw $t1, 0($s2)	#t1 = *b

	addi $v0, $zero, 10
	sub  $t7, $t1, $t0
	syscall