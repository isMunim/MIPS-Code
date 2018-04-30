.data
	inputX: .asciiz "\nPlease input x: "
	inputY: .asciiz "\nPlease input y: "

repeat: 	
	.asciiz "\nEnter 0 to repeat the program \n"

.text

main: 

	li $v0, 4 			# system call code for printing 4
	la $a0, inputX 			# load address of x
	syscall 			# operating system call
	li $v0, 5 			# system call code for integer 5
	syscall 			# operating system call
	add $t1, $v0, $zero 		# Copy the value of input integer stored in register $v0 to register $t1 holding x, $zero is register containing zero
	li $v0, 4 			# system call code for printing 4
	la $a0, inputY 			# load address of  y
	syscall 			# operating system call
	li $v0, 5 			# system call code for integer 5
	syscall 			# operating system call
	add $t2, $v0, $zero 		# Copy the value of input integer stored in register $v0 to register $t2 holding y, $zero is register containing zero

loop1: 
	divu $t1, $t2 			# divide x/y
	mfhi $t3 			# remainder of division copied to $t3
	add $t1,$t2,$zero 		# x will be equal to y for next iteration
	add $t2,$t3,$zero 		# y will be equal to x%y for next iteration
	bgtz $t2, loop1 		# brach again to loop1 for next iteration if $t2 is greater than zero
	li $v0, 1 			# service 1 is print integer
	add $a0, $t1, $zero 		# load desired value into argument register $a0, which is stored in $t1 i.e. GCD of x and y
	syscall 			# operating system call
	li $v0, 4 			# system call code for printing 4
	la $a0, repeat 			# load address of string asking to repeat the procedure
	syscall 			# operating system call
	li $v0, 5 			# system call code for integer 5
	syscall 			# operating system call
	beq $v0,$zero, main 		# Jump again to the begining of program if user input 0 which means he want to repeat
	li $v0, 10 			# system call code for exit = 10
	syscall 			# operating system call