.data

str_input: .asciiz "\nEnter a string: (at most 100 chars) "
char_input: .asciiz "\Enter a character to search in the string: (case sensitive) "
result: .asciiz "\nThe Number of occurences: "
substr_input: .asciiz "\nEnter a string of two characters: (case sensitive) \n" 
substr_result: .asciiz "\nNumber of occurrences for the searched 2 char string:  \n"
repeat: .asciiz "\nDo you want to repeat this program? 0 for yes, 1 for no: \n"

str_buffer: .space 100
char_buffer: .space 1
substr_buffer: .space 2

.text
.globl main

main:
	#Taking input from user 
begin:	la $a0, str_input
	li $v0, 4
	syscall
	
	#Getting string
	li $v0, 8
	la $a0, str_buffer 
	li $a1, 100 #Maximum is 100 chars
	syscall
	
	move $s0, $a0 
	
	#Asking for input
	la $a0, char_input
	li $v0, 4
	syscall
	
	#Getting char
	li $v0, 8
	la $a0, char_buffer 
	li $a1, 100 #Maximum is 100 chars
	syscall
	
	move $s1, $a0
	lb $s1, 0($s1) #Move char to $s1
	
	add $t0, $s0, $zero
	addi $s3, $zero, 0 #init counter to 0
	
	#Loop through each character in string
str_loop:	lb $t1, 0($t0)
	beqz $t1, str_break 
	
	bne $t1, $s1, not_equal 
	addi $s3, $s3, 1 #if match, increment counter
	
not_equal:
	addi $t0, $t0, 1
	j str_loop
	
str_break:
	#Number of occurences 
	la $a0, result
	li $v0, 4
	syscall
	
	#Print
	move $a0, $s3
	li $v0, 1 
	syscall

	#Ask for sub string
	la $a0, substr_input
	li $v0, 4
	syscall
	
	#Get substring
	li $v0, 8 
	la $a0, substr_buffer
	li $a1, 3 
	syscall
	
	#iterate through string
	move $s4, $a0 
	lb $t4, 0($s4) 
	lb $t5, 1($s4) 

	add $t0, $s0, $zero #first char
	addi $s3, $zero, 0 #initialize count to 0
	
substr_loop:	
	lb $t1, 0($t0) #$t1 = A[i]
	
	move $a0, $t1
	li $v0, 11
	syscall
	
	beqz $t1, substr_break 
	
	bne $t4, $t1, substr_not_equal
	
	lb $t6, 1($t0) 
	bne $t5, $t6, substr_not_equal 
	addi $s3, $s3, 1 #if match, increment counter
	
substr_not_equal:
	addi $t0, $t0, 1 #increment i
	j substr_loop
	
substr_break:
	#Num of occurences 
	la $a0, substr_result
	li $v0, 4
	syscall
	
	#Print our occurrances
	move $a0, $s3
	li $v0, 1 
	syscall
	
	#Loop through again
	la $a0, repeat
	li $v0, 4
	syscall
	
	#Get User input for repeat
	li $v0, 5
	syscall
	beqz $v0, begin #Compare to 0
	#End
	li $v0,10
	syscall
