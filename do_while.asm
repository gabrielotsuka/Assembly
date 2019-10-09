.data
	

.text
	add  $s0, $zero, $zero		# i = 0
	addi $t0, $zero, 9		# temp = 10

LOOP1:	slt  $s1, $s0, $t0
	# TCHA
	# NA
	# NA
	addi $s0, $s0, 1
	bne  $s1, $zero, LOOP1
	
	li $v0, 10
	syscall