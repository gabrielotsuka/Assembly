#utils.asm
#
#DESC: define um monte de macros comumente utilizadas em 
#diversos programas
#
#DDA 26.09.16

.macro printNewLine
       li $v0, 4
       la $a0, enter
       syscall
.end_macro

.macro ImprimeInteiro (%int_reg)
	li      $v0, 1
        add     $a0, $zero, %int_reg 
        syscall
        printNewLine
.end_macro

.macro ImprimeString (%str_reg_addr)
	li      $v0, 4
        add     $a0, $zero, %str_reg_addr 
        syscall
        printNewLine
.end_macro

.macro LeInteiro
	li      $v0, 5
	syscall
.end_macro

.macro done
	li $v0, 10 
	syscall
.end_macro

.macro PUSH
	addi    $sp, $sp, -60
	sw      $ra, 4($sp)
	sw      $a0, 8($sp)
	sw      $a1, 12($sp)
	sw      $a2, 16($sp)
	sw      $a3, 20($sp)
	sw      $v0, 24($sp)
	sw      $v1, 28($sp)
	sw      $s0, 32($sp)
	sw      $s1, 36($sp)
	sw      $s2, 40($sp)
	sw      $s3, 44($sp)
	sw      $s4, 48($sp)
	sw      $s5, 52($sp)
	sw      $s6, 56($sp)
	sw      $s7, 60($sp)	   
.end_macro

.macro POP
	lw      $ra, 4($sp)
	lw      $a0, 8($sp)
	lw      $a1, 12($sp)
	lw      $a2, 16($sp)
	lw      $a3, 20($sp)
	lw      $v0, 24($sp)
	lw      $v1, 28($sp)
	lw      $s0, 32($sp)
	lw      $s1, 36($sp)
	lw      $s2, 40($sp)
	lw      $s3, 44($sp)
	lw      $s4, 48($sp)
	lw      $s5, 52($sp)
	lw      $s6, 56($sp)
	lw      $s7, 60($sp)
	addi    $sp, $sp, 60
.end_macro


#algumas strings uteis
.data 

enter:    .asciiz    "\n"


#----------------------------------------------------------
#max (a0, a1)
#DESC: testa qual dos nÃºmeros Ã© maior e o retorna 
#DDA 26.09.16

#.text 

#max:    PUSH
	
#IF1:    slt     $s0, $a0, $a1
#        bne     $s0, $zero, SETA_A1
#SETA_A0:add     $t0, $zero, $a0        
#        j       SAIIF1
#SETA_A1:add     $t0, $zero, $a1        
#     
#SAIIF1: POP
#        add     $v0, $zero, $t0
#        jr      $ra
