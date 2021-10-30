# maximum.asm program
#

.data

	# TODO: Complete these declarations / initializations

prompt1:	.asciiz "Enter the next number:\n"
result:	    .asciiz "Maximum: "
nKey:       .asciiz "\n"

#Text Area (i.e. instructions)
.text

main:

	# TODO: Write your code here
    # You can have other labels expressed here, if you need to

	#asks user for the first number
	li $v0, 4
	la $a0, prompt1
	syscall

	#reads my input
	li $v0, 5 
	syscall

	move $s0, $v0
	
	#asks user for the second number
	li $v0, 4
	la $a0, prompt1
	syscall

	#reads my input
	li $v0, 5
	syscall

	move $s1,$v0

    #asks user for the third number
	li $v0, 4
	la $a0, prompt1
	syscall

    #reads my input
	li $v0, 5
	syscall

	move $s2, $v0

	slt $t0, $s0, $s1
	li $t1, 1
	beq $t0, $t1, branch

	slt $t0, $s0, $s2
	li $t1, 1
	beq $t0, $t1, branch2
 
	li $v0, 4
	la $a0, result
	syscall

	li $v0, 1
	move $a0, $s0
	syscall
	
	li $v0, 4
	la $a0, nKey
	syscall
	
	# TODO: Write code to properly exit a SPIM simulation
	li $v0, 10
	syscall	

branch:
	slt $t0, $s1, $s0
	li $t1, 1
	beq $t0, $t1, branch1
	
	

	
branch1:
	slt $t0, $s1, $s2
	li $t1, 1
	beq $t0, $t1, branch2
	
	li $v0, 4
	la $a0, result
	syscall

	li $v0, 1
	move $a0, $s1
	syscall
	
	li $v0, 4
	la $a0, nKey
	syscall
	
	
	# TODO: Write code to properly exit a SPIM simulation
	li $v0, 10
	syscall
branch2: 
	slt $t0, $s2, $s1
	li $t1, 1
	beq $t0, $t1, branch3
	
	li $v0, 4
	la $a0, result
	syscall

	li $v0, 1
	move $a0, $s2
	syscall
	
	li $v0, 4
	la $a0, nKey
	syscall
	
	# TODO: Write code to properly exit a SPIM simulation
	li $v0, 10
	syscall
branch3:
	
	li $v0, 4
	la $a0, result
	syscall

	li $v0, 1
	move $a0, $s1
	syscall
	
	li $v0, 4
	la $a0, nKey
	syscall

	# TODO: Write code to properly exit a SPIM simulation
	li $v0, 10
	syscall


exit:
	# TODO: Write code to properly exit a SPIM simulation
	li $v0, 10
	syscall

