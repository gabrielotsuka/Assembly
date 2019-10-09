.data 
	str1: 	.asciiz "Insert first value: "
	str2:	.asciiz "Insert second value: "
	str3: 	.asciiz "The result is "
	endl:	.asciiz "\n"

.text
	# printf("Insert first value: ");
	li $v0, 4		# Carrega o código 4 no v0
	la $a0, str1		# Carrega o endereço de str1 no a0
	syscall
	
	# scanf("%d", &A);
	li $v0, 5		# Lê inteiro e armazena em v0
	syscall
	add $t0, $zero, $v0 	# Armazena em t0 o valor lido
	
	# printf("Insert second value:");
	li $v0, 4
	la $a0, str2
	syscall
	
	# scanf("%d", &B);
	li $v0, 5
	syscall
	add $t1, $zero, $v0
	
	# C = A + B
	add $t2, $t0, $t1
	
	# printf("The result is ");
	li $v0, 4
	la $a0, str3
	syscall
	
	# printf("%d", C);
	li $v0, 1
	add $a0, $zero, $t2
	syscall
	
	# printf("\n");
	li $v0, 4
	la $a0, endl
	syscall
	
	# return 0;
	li $v0, 10
	syscall
		