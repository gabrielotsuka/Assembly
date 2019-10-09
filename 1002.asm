.data
	str1: 	 .asciiz "Insert the value of the radius: "
	str2:	 .asciiz "The area is "
	str3:	 .asciiz "\n"
	zeroDou: .double 0.0
	pi:	 .double 3.14159
	
.text 
	ldc1 $f2, zeroDou	# Define um registrador 0 para double, como $zero para inteiro
	ldc1 $f4, pi		# Carrega o valor da constante pi em f4
	
	# printf ("Insert the value of the radius");
	li $v0, 4		# Código para printar string 4
	la $a0, str1
	syscall
	
	# scanf("%lf", &r);
	li $v0, 7		
	syscall
	
	# r = r*r*pi
	mul.d $f0, $f0, $f0
	mul.d $f0, $f0, $f4
	
	# printf ("The area is ")
	li $v0, 4
	la $a0, str2
	syscall
	
	# Printa double
	li $v0, 3
	add.d $f12, $f2, $f0
	syscall
	
	# printf("\n");
	li $v0, 4
	la $a0, str3
	syscall
	
	# return 0
	li $v0, 10
	syscall