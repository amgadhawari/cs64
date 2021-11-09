# print_array.asm program
# Don't forget to:
#   make all arguments to any function go in $a0 and/or $a1
#   make all returned values from functions go in $v0

.data
	# TODO: Write your initializations here
	array:				.word 1 2 13 34 54 65 71 18 29 10
	print:				.asciiz "The contents of the array are:\n" 
	nline: 				.asciiz "\n"

.text
printA:
	move $t0, $a0
	move $t1, $a1

	li $t2, 0

	loop:
	bge $t2, $t1, end

	lw $a0, 0($t0)

	li $v0, 1
	syscall
	
	li $v0, 4
	la $a0, nline
	syscall

	addiu $t0, $t0, 4

	addi $t2, $t2, 1
	end:
	jr $ra

main:

	# TODO: Write your main function code here
	li $v0, 4
	la $a0, print
	syscall
	
	la $a0, array
	li $a1, 10

	jal printA

exit:
	# TODO: Write code to properly exit a SPIM simulation
	li $v0, 10
	syscall
