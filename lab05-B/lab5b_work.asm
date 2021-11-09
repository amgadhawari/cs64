.data
str: .asciiz "BATS"

.text
main:
	la $t0, str
	lw $t1, 0($t0)
	
    move $a0, $t0
    li $v0, 1
    syscall

exit:
	# TODO: Write code to properly exit a SPIM simulation
	li $v0, 10
	syscall
