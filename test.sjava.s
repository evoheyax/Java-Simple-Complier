	.globl	main
main:
	addi	$t1,	$sp,	0
	addi	$sp,	$sp,	-4000
	addi	$t2,	$sp,	0
	addi	$t2,	$t2,	-4000
	la	$t3,	HEAPPTR
	sw	$t2,	0($t3)
	sw	$ra,	4($sp)
	jal	main1
	li	$v0,	10
	syscall
myprint1:
	sw	$fp,	-4($sp)
	sw	$sp,	-8($sp)
	sw	$ra,	-12($sp)
	move	$fp,	$sp
	addi	$sp,	$sp,	-16
	addi $sp, $sp, -4
	move	$t0,	$fp
	sw	$t0,	0($sp)
	addi	$sp,	$sp,	-4
	li	$t0,	-4
	addi	$sp,	$sp,	4
	lw	$t2,	0($sp)
	sub	$t0,	$t2,	$t0
	lw $t0, 0($t0)
	sw	$t0,	4($sp)
	jal Print
	addi $sp, $sp, 4
myprint_end1:
	lw	$ra,	4($sp)
	lw	$fp,	12($sp)
	lw	$sp,	8($sp)
	jr	$ra
main1:
	sw	$fp,	0($sp)
	sw	$sp,	-4($sp)
	sw	$ra,	-8($sp)
	move	$fp,	$sp
	addi	$sp,	$sp,	-12
	addi $sp, $sp, -4
	li	$t0,	1
	sw	$t0,	4($sp)
	jal myprint1
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	li	$t0,	2
	sw	$t0,	4($sp)
	jal myprint1
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	li	$t0,	3
	sw	$t0,	4($sp)
	jal myprint1
	addi $sp, $sp, 4
main_end1:
	lw	$ra,	4($sp)
	lw	$fp,	12($sp)
	lw	$sp,	8($sp)
	jr	$ra
Print:
	lw	$a0,	4($sp)
	li	$v0,	1
	syscall
	li	$v0,	4
	la	$a0,	sp
	syscall
	jr	$ra
Println:
	li	$v0,	4
	la	$a0,	cr
	syscall
	jr	$ra
Read:
	li	$v0,	5
	syscall
	jr	$ra
allocate:
	la	$t2,	HEAPPTR
	lw	$v0,	0($t2)
	lw	$t3,	4($sp)
	sub	$t3,	$v0,	$t3
	sw	$t3,	0($t2)
	jr	$ra
	.data
cr:
	.asciiz	"\n"
sp:
	.asciiz	" "
HEAPPTR:
	.word	0
