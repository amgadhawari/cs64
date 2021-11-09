# conversion.asm program
# Don't forget to:
#   make all arguments to any function go in $a0 and/or $a1
#   make all returned values from functions go in $v0

.text
conv:
    # TODO: Write your function code here
	li $t0, 0
	li $t1, 0

	li $s3, 3
	li $s5, 5

	
	main_loop: 
		bge $t1, 5, return

		sll $t3, $a0, 1
		add $t0, $t0, $t3
		sub $t0, $t0, $a1
		blt $a0, $s3, less3
		addi $a1, $a1, -1




	less3:
		addi $a0, $a0, 1
		addi $t1, $t1, 1
		j main_loop

	return:
		move $v0, $t0
		jr		$ra

	

main:

	# TODO: Write your main function code here
	li $a0, 5
    li $a1, 7

    jal conv

	move $a0, $v0
    li $v0, 1
    syscall
exit:
	# TODO: Write code to properly exit a SPIM simulation
	li $v0, 10
	syscall
