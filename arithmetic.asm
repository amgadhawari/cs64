# arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.text

main:

	# TODO: Write your code here
	
    
	# Get user's 1st input
	li $v0, 5
	syscall
	
	move $t0, $v0

    # Get user's 2ne input
	li $v0, 5
	syscall

	move $t1, $v0

	sub $t2, $t0, $t1

	

	sll $t3, $t2, 7

	addi $t4,$t3, 32
	

	#print or show the age
	li $v0, 1
	move $a0, $t4
	syscall

	



  

exit:
	# Exit SPIM: Write your code here!
	li $v0, 10
	syscall
