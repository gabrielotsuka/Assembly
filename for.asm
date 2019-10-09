.data


.text
	add $s0, $zero, $zero
LOOP1:	slti $s1, $s0, 10
	beq  $s1, $s0, EXIT1
	# TCHA
	# NA
	# NA
	addi $s0, $s0, 1
	j LOOP1
	
EXIT1:	li $v0, 10
	syscall