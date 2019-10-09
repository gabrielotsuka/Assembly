#programa que verifica a frequencia de ocorrencia de cada numero no vetor
#abordagem destrutiva, número já processado é transformado em -1

.data
	v: 	1,2,3,4,5,2,3,4,,9,1
	sz:	10
	str1:	.asciiz " a freq eh: "
	str2:   .asciiz "\n"
	
.text
main:	la  $s4, str1
	la  $s0, sz
	lw  $s0, 0($s0) 		# carrega o tam do array em s0
	add $s7, $zero, $s0	 	# copia o tam. do array para s7
	
	add $s2, $zero, $zero		# i=0
	add $s6, $zero, $zero		# frequencia do elemento 
	
	la  $s1, v			# Ponteiro para o primeiro elemnto do array

LOOP1: 	#######
	lw  $t0, 0($s1) 		# t0 <- v[i]
	
	slt  $t1, $t0, $zero 		# se t0 < zero então t1 <- 1, senão t1 <- 0
	addi $s2, $s2, 1		# i++
	addi $s1, $s1, 4		# aponta para o próximo elemento do vetor
	bne  $f1, $zero, LOOP1		# se t1 != 0 então o elemento era menor que zero, então não processa, senão continua
	
	addi $t3, $zero, -1
	sw   $t3, -4($s1)		# substitui o elemnto atual por -1 (muda o flag e vc já incrementou la em cima)
	addi $s6, $zero, 1 		# anota uma ocorrếncia
	add  $s3, $s2, $zero		# j = i + 1
	
	add  $s5, $s1, $zero
	
LOOP2: 	lw   $t3, 0($s5)		# carrega t3 <- v[j]
	bne  $t0, $t3, FOLLOW1
	# se for igual
	addi $s6, $s6, 1		#incrementa a ocorrencia
	addi $t3, $zero, -1
	sw   $t3, 0($s5)		# substitui o elemento atual por -1
	
FOLLOW1:addi $s3, $s3, 1		# j
	
	 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	