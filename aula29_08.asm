.data




.text



main: 	addi $s7, $zero, 10
	add  $s0, $zero, $zero		# i = 0
	add  $s5, $zero, $zero		# acumulador
	
LOOP1:	# le um inteiro
	addi $v0, $zero, 5
	syscall
	# testar se o valor lido é ímpar
	add  $s1, $v0, $zero 	
	addi $s2, $zero, 1  	   	# máscara de bits
	and  $s2, $s2, $s1	
	# verificar se s2 é ímpar
	beq  $s2, $zero, NEXT1
	add  $s5, $s5, $s1
	 	 	 	 	 	 	
NEXT1:	addi $s0, $s0, 1		# i++
	bne  $s0, $s7, LOOP1 	
	
	# imprime o valor acumulado
	addi $v0, $zero, 1
	add  $a0, $s5, $zero 
	
	# return 0
	addi $v0, $zero, 10
	syscall