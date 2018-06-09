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
main1:
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 28
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $fp, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 32
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $sp, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 36
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $ra, 0($t0)
	move $fp, $sp
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 40
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	move $sp, $t0
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 12
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 20
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 24
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
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
	li $t0, 10
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	mul $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal allocate
	addi $sp, $sp, 4
	move $t0, $v0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
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
	li $t0, 4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	mul $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
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
	li $t0, 10
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	mul $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal allocate
	addi $sp, $sp, 4
	move $t0, $v0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
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
	li $t0, 4
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 10
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	slt $t0, $t2, $t0
	bne $t0, $zero, body1
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
	jal ClearBoard1
	addi $sp, $sp, 4
	j test2
body3:
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
	jal PrintBoard1
	addi $sp, $sp, 4
body2:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 16
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	addi $sp, $sp, 0
	jal Read
	addi $sp, $sp, 0
	move $t0, $v0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	addi $sp, $sp, -8
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
	li $t0, 16
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 8
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
	jal legal1
	addi $sp, $sp, 8
	move $t0, $v0
	li $t2, 1
	sltu $t0, $t0, $t2
	bne $t0, $zero, body2
	addi $sp, $sp, -12
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
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 16
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 12
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 12
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal DoMove1
	addi $sp, $sp, 12
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 20
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 20
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
	addi $sp, $sp, -8
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
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 16
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal win1
	addi $sp, $sp, 8
	move $t0, $v0
	bne $t0, $zero, ifTrue1
	j ifend1
ifTrue1:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 24
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 12
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
ifend1:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 20
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 100
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	seq $t0, $t2, $t0
	bne $t0, $zero, ifTrue2
	j ifend2
ifTrue2:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 24
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
ifend2:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 12
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
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
	li $t0, 12
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal swap1
	addi $sp, $sp, 4
	move $t0, $v0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
test2:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	li $t2, 1
	sltu $t0, $t0, $t2
	bne $t0, $zero, body3
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
	jal PrintBoard1
	addi $sp, $sp, 4
	addi $sp, $sp, 0
	jal Println
	addi $sp, $sp, 0
	addi $sp, $sp, 0
	jal Println
	addi $sp, $sp, 0
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
	li $t0, 24
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal Print
	addi $sp, $sp, 4
	addi $sp, $sp, 0
	jal Println
	addi $sp, $sp, 0
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
legal1:
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 36
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $fp, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 40
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $sp, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 44
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $ra, 0($t0)
	move $fp, $sp
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 48
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
	slt $t0, $t2, $t0
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
	li $t0, 9
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	slt $t0, $t0, $t2
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	or $t0, $t2, $t0
	bne $t0, $zero, ifTrue3
	j ifend3
ifTrue3:
	li $v0, 0
	j legalend1
ifend3:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	mul $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
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
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	mul $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sne $t0, $t2, $t0
	bne $t0, $zero, ifTrue4
	j ifend4
ifTrue4:
	li $v0, 0
	j legalend1
ifend4:
	li $v0, 1
	j legalend1
legalend1:
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
ClearBoard1:
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 40
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $fp, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 44
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $sp, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 48
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $ra, 0($t0)
	move $fp, $sp
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	move $sp, $t0
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 28
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	j test4
body5:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 32
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	j test3
body4:
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
	li $t0, 4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 28
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	mul $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 32
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	mul $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 32
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 32
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
test3:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 32
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 10
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	slt $t0, $t2, $t0
	bne $t0, $zero, body4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 28
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 28
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
test4:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 28
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 10
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	slt $t0, $t2, $t0
	bne $t0, $zero, body5
ClearBoardend1:
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
PrintBoard1:
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 48
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $fp, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $sp, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 56
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $ra, 0($t0)
	move $fp, $sp
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	move $sp, $t0
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 36
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	j test6
body7:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 40
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	j test5
body6:
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
	li $t0, 4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 36
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	mul $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 40
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	mul $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal Print
	addi $sp, $sp, 4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 40
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 40
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
test5:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 40
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 10
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	slt $t0, $t2, $t0
	bne $t0, $zero, body6
	addi $sp, $sp, 0
	jal Println
	addi $sp, $sp, 0
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 36
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 36
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
test6:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 36
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 10
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	slt $t0, $t2, $t0
	bne $t0, $zero, body7
	addi $sp, $sp, 0
	jal Println
	addi $sp, $sp, 0
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 36
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	j test7
body8:
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
	li $t0, 36
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal Print
	addi $sp, $sp, 4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 36
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 36
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
test7:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 36
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 10
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	slt $t0, $t2, $t0
	bne $t0, $zero, body8
	addi $sp, $sp, 0
	jal Println
	addi $sp, $sp, 0
	addi $sp, $sp, 0
	jal Println
	addi $sp, $sp, 0
PrintBoardend1:
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
swap1:
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 48
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $fp, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $sp, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 56
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $ra, 0($t0)
	move $fp, $sp
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
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
	li $t0, 1
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	seq $t0, $t2, $t0
	bne $t0, $zero, ifTrue5
	li $v0, 1
	j swapend1
	j ifend5
ifTrue5:
	li $v0, 2
	j swapend1
ifend5:
swapend1:
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
DoMove1:
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $fp, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 64
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $sp, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 68
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $ra, 0($t0)
	move $fp, $sp
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 72
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	move $sp, $t0
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 44
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	j test8
body9:
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
	li $t0, 4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 44
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	mul $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	mul $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sne $t0, $t2, $t0
	bne $t0, $zero, ifTrue6
	j ifend6
ifTrue6:
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
	li $t0, 4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 44
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
	mul $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	mul $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -12
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	j DoMoveend1
ifend6:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 44
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 44
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
test8:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 44
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 10
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	slt $t0, $t2, $t0
	bne $t0, $zero, body9
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
	li $t0, 4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 9
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	mul $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	mul $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -12
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
DoMoveend1:
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
win1:
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 72
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $fp, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 76
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $sp, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 80
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $ra, 0($t0)
	move $fp, $sp
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 84
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	move $sp, $t0
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 48
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	j test9
body10:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 48
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 48
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
test9:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 48
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 10
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	slt $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	addi $sp, $sp, -12
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
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 48
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 12
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal GetBoard1
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	seq $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	and $t0, $t2, $t0
	bne $t0, $zero, body10
	addi $sp, $sp, -12
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
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 48
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 12
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal GetBoard1
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	seq $t0, $t2, $t0
	bne $t0, $zero, ifTrue7
	j ifend7
ifTrue7:
	li $v0, 0
	j winend1
ifend7:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 56
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
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
	li $t0, 4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 48
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	mul $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	mul $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	j test10
body11:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
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
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
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
test10:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 48
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 10
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	slt $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	addi $sp, $sp, -12
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
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 48
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 12
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal GetBoard1
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 56
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	seq $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	and $t0, $t2, $t0
	bne $t0, $zero, body11
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sge $t0, $t2, $t0
	bne $t0, $zero, ifTrue8
	j ifend8
ifTrue8:
	li $v0, 1
	j winend1
ifend8:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	j test11
body12:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
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
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
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
test11:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 10
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	slt $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	addi $sp, $sp, -12
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
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 48
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 12
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal GetBoard1
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 56
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	seq $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	and $t0, $t2, $t0
	bne $t0, $zero, body12
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	j test12
body13:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
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
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
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
test12:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sge $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	addi $sp, $sp, -12
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
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 48
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 12
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal GetBoard1
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 56
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	seq $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	and $t0, $t2, $t0
	bne $t0, $zero, body13
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sge $t0, $t2, $t0
	bne $t0, $zero, ifTrue9
	j ifend9
ifTrue9:
	li $v0, 1
	j winend1
ifend9:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	j test13
body14:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
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
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
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
test13:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 10
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	slt $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 48
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 10
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	slt $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	and $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	addi $sp, $sp, -12
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
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 48
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 12
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal GetBoard1
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 56
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	seq $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	and $t0, $t2, $t0
	bne $t0, $zero, body14
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	j test14
body15:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
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
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
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
test14:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sge $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 48
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sge $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	and $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	addi $sp, $sp, -12
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
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 48
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 12
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal GetBoard1
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 56
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	seq $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	and $t0, $t2, $t0
	bne $t0, $zero, body15
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sge $t0, $t2, $t0
	bne $t0, $zero, ifTrue10
	j ifend10
ifTrue10:
	li $v0, 1
	j winend1
ifend10:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	j test15
body16:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
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
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
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
test15:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 10
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	slt $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 48
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sge $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	and $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	addi $sp, $sp, -12
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
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 48
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 12
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal GetBoard1
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 56
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	seq $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	and $t0, $t2, $t0
	bne $t0, $zero, body16
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 1
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	j test16
body17:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
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
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
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
test16:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sge $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 48
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 10
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	slt $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	and $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	addi $sp, $sp, -12
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
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 48
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 12
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 60
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	add $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal GetBoard1
	addi $sp, $sp, 12
	move $t0, $v0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 56
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	seq $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	and $t0, $t2, $t0
	bne $t0, $zero, body17
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 52
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sge $t0, $t2, $t0
	bne $t0, $zero, ifTrue11
	j ifend11
ifTrue11:
	li $v0, 1
	j winend1
ifend11:
	li $v0, 0
	j winend1
winend1:
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
GetBoard1:
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 76
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $fp, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 80
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $sp, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 84
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $ra, 0($t0)
	move $fp, $sp
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 88
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	move $sp, $t0
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	slt $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 9
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	slt $t0, $t0, $t2
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	or $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -12
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	slt $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	or $t0, $t2, $t0
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -12
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 9
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	slt $t0, $t0, $t2
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	or $t0, $t2, $t0
	bne $t0, $zero, ifTrue12
	j ifend12
ifTrue12:
	li $v0, 0
	j GetBoardend1
ifend12:
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
	li $t0, 4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	mul $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, -12
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	mul $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $v0, 0($t0)
	j GetBoardend1
GetBoardend1:
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
