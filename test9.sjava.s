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
PrintBoolean1:
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
	bne $t0, $zero, ifTrue1
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
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal Print
	addi $sp, $sp, 4
	j ifend1
ifTrue1:
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
	li $t0, 1
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal Print
	addi $sp, $sp, 4
ifend1:
PrintBoolean_end1:
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
MakeBool1:
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
	sne $t0, $t2, $t0
	move $v0, $t0
	j MakeBool_end1
MakeBool_end1:
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
	li $t0, 16
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $fp, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 20
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $sp, 0($t0)
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 24
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	sw $ra, 0($t0)
	move $fp, $sp
	move $t0, $sp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 28
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	move $sp, $t0
	j test1
body1:
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 0
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
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
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
	slt $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal PrintBoolean1
	addi $sp, $sp, 4
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
	sle $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal PrintBoolean1
	addi $sp, $sp, 4
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
	slt $t0, $t0, $t2
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal PrintBoolean1
	addi $sp, $sp, 4
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
	sge $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal PrintBoolean1
	addi $sp, $sp, 4
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
	seq $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal PrintBoolean1
	addi $sp, $sp, 4
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
	sne $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal PrintBoolean1
	addi $sp, $sp, 4
	addi $sp, $sp, 0
	jal Println
	addi $sp, $sp, 0
	move $t0, $fp
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 8
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
	li $t0, 0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal MakeBool1
	addi $sp, $sp, 4
	move $t0, $v0
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
	li $t0, 4
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal MakeBool1
	addi $sp, $sp, 4
	move $t0, $v0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
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
	li $t0, 8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal PrintBoolean1
	addi $sp, $sp, 4
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
	jal PrintBoolean1
	addi $sp, $sp, 4
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
	li $t0, 8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
	li $t2, 1
	sltu $t0, $t0, $t2
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal PrintBoolean1
	addi $sp, $sp, 4
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
	li $t2, 1
	sltu $t0, $t0, $t2
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal PrintBoolean1
	addi $sp, $sp, 4
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
	li $t0, 8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
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
	and $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal PrintBoolean1
	addi $sp, $sp, 4
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
	li $t0, 8
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sub $t0, $t2, $t0
	lw $t0, 0($t0)
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
	or $t0, $t2, $t0
	addi $sp, $sp, 4
	lw $t2, 0($sp)
	sw $t0, 0($t2)
	jal PrintBoolean1
	addi $sp, $sp, 4
	addi $sp, $sp, 0
	jal Println
	addi $sp, $sp, 0
test1:
	li $t0, 1
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
