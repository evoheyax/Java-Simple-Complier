	.globl main
main:
	addi $t1,$sp,0
	addi $sp,$sp,-4000
	addi $t2,$sp,0
	addi $t2,$t2,-4000
	la $t3, HEAPPTR
	sw $t2,0($t3)
	sw $ra,4($sp)
	jal main1
	li $v0, 10
	syscall
	#-----------------------------------------
fib1:
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $fp, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $sp, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 12
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $ra, 0($t0)
	move $fp, $sp
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 16
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	move $sp, $t0
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -4
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	seq $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -4
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	seq $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	or $t0, $t2, $t0
	bne $t0, $zero, ifTrue1
	j ifend1
ifTrue1:
	li $v0, 1
	j fib_end1
ifend1:
	addi $sp, $sp, -4
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -4
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal fib1
	addi $sp, $sp, 4
	move $t0, $v0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	addi $sp, $sp, -4
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -4
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 2
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal fib1
	addi $sp, $sp, 4
	move $t0, $v0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	move $v0, $t0
	j fib_end1
fib_end1:
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	lw $ra, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 12
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	lw $fp, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	lw $sp, 0($t0)
	jr $ra
main1:
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $fp, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $sp, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 12
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $ra, 0($t0)
	move $fp, $sp
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 16
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	move $sp, $t0
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	j test1
body1:
	addi $sp, $sp, -4
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	addi $sp, $sp, -4
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal fib1
	addi $sp, $sp, 4
	move $t0, $v0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal Print
	addi $sp, $sp, 4
	addi $sp, $sp, 0
	jal Println
	addi $sp, $sp, 0
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
test1:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 30
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	slt $t0, $t2, $t0
	bne $t0, $zero, body1
main_end1:
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	lw $ra, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 12
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	lw $fp, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	lw $sp, 0($t0)
	jr $ra
	#-----------------------------------------
Print:
	lw $a0, 4($sp)
	li $v0, 1
	syscall
	li $v0,4
	la $a0, sp
	syscall
	jr $ra
Println:
	li $v0,4
	la $a0, cr
	syscall
	jr $ra
Read:
	li $v0,5
	syscall
	jr $ra
allocate:
	la $t2, HEAPPTR
	lw $v0,0($t2)
	lw $t3, 4($sp)
	sub $t3,$v0,$t3
	sw $t3,0($t2)
	jr $ra
	.data
cr:
	.asciiz "\n"
sp:
	.asciiz " "
HEAPPTR:
	.word 0
