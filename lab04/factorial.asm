# Factorial.asm program
#

# Assembly (NON-RECURSIVE) version of:
#   int n, fn=1;
#   cout << "Enter a number:\n";
#   cin >> n;
#   for (int x = 2; x <= n; x++) {
#       fn = fn * x;
#   }
#   cout << "Factorial of " << x << " is:\n" << fn << "\n";
#
.data

	# TODO: Write your initializations here

prompt: 	.asciiz "Enter a number:\n"
prompt1:	.asciiz "Factorial of "
prompt2: 	.asciiz " is:\n"
prompt3:	.asciiz "\n"

#Text Area (i.e. instructions)
.text
main:

	# TODO: Write your code here
	li $t0, 0
	li $t1, 1 
	li $t2, 2
	
	li $v0, 4
	la $a0, prompt
	syscall

	li $v0, 5
	syscall

	move $t0, $t0
	
	mult $t0, $t2
	mflo $t3

	
	li $v0, 4
	la $a0, prompt1
	syscall

	li $v0, 1
	move $a0, $t0
	syscall

	li $v0, 4
	la $a0, prompt2
	syscall

	li $v0, 1
	move $a0, $t3
	syscall

	li $v0, 4
	la $a0, prompt3
	syscall

loop:
	bgt $t0, $t2, exit
	addi $t1, $t1, 1
	mult $t0, $t2
	mflo $t3
	j loop
	

exit:
	# TODO: Write code to properly exit a SPIM simulation
	li $v0, 10
	syscall
