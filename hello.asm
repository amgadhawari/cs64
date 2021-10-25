# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	# TODO: write your string definitions here
	myMessage: .asciiz "Enter an integer: \n"
	message: .asciiz "Hello Pandemic World of 2021! \n"
	sMessage: .asciiz "The magic number is "
	snMessage: .asciiz "!!!\n"
    
#Text Area (i.e. instructions)
.text
main:

	# TODO: Write your code here

	#enter integer message
	li $v0, 4
	la $a0, myMessage
	syscall

	#get user input
	li $v0, 5
	syscall

	#store the value
	addi $t0, $zero, 13
	move $t1, $v0
	

	#mult user input with 13
	mult $t0, $t1
	mflo $s0



	#outputs the second message
	li $v0, 4
	la $a0, message
	syscall

	#outputs 3rd message
	li $v0, 4
	la $a0, sMessage
	syscall

	#displays multplied output
	li $v0, 1
	add $a0, $zero, $s0
	syscall
    #outputs 3rd message
	li $v0, 4
	la $a0, snMessage
	syscall



exit:
	# Exit SPIM: Write your code here!
	li $v0, 10
	syscall

