
##########################
###  Hunter T. Chapman ###
##  									  ##
#   bootcoder@gmail.com  #
##########################
# 				RUBY      		 #
#  Prime Multiplication  #
#        Tables          #
##########################

require 'awesome_print'

##########################
# 			PSEUDO CODE
##########################
=begin

***INPUT***

User Input from CLI after initial 10x10 grid printout
User can input prime position on x and y axis to find a given prime product

***OUTPUT***

Initial output to STDOUT is a  10x10 grid of integers
each col and row contains a prime from 2[0] - 29[10]

if user inputs additional request output their input with the product displayed below

after each output yield a prompt for additional input or exit

***Concept Pseudo***

input_params
	build xtable
		check_list
			return if list
			build list with params if not
				is_prime?
	print row from list
		set first row as base variable
	print second row as base[i]
		second row [i] should be the product of itself and base[i] with relevant math 		
input_params || break

***METHODS***

FUNCITON is_prime? 
	which takes a single integer as input (prime_chk_num)
	** purpose of method is to check if a given int is prime, returns boolean

	DECLARE a variable num_container and set to an empty array 
	return true if prime_chk_num == 2 #### Special Case Hard Coded ####
	return false if the prime_chk_num is even
	FOR LOOP
		count from 3 up to the prime_chk_num
		IF i is odd
			INLINE IF
				if prime_chk_num modulus i is 0
				push i into num_container
			END IF
		END IF
	END FOR LOOP
	check num_container, if it contains exactly 1 element return true
	false ### this implicit return ensures any edge cases not accounted for return false 
END FUNCTION


FUNCTION build_list 
	which takes a single integer as its input. (prime_arr_length)
	** purpose of method is to generate a list of known primes to quickly reference later.

	DECLARE a variable prime_arr and set equal to empty array
	DECLARE a variable chk_num = 0
	UNTIL LOOP
		until prime_arr length == prime_arr_length
			shovel chk_num into prime_arr if is_prime?(chk_num) is true
	END UNTIL
	write contents of prime_arr to primes.txt file with each line containing exactly 1 prime
END FUNCTION


FUNCTION print_xtables
	which takes int inputs for x and y axis default both to 10
	**prints a grid of primes multiplied
	
	**expected output
	    2   3   5   7   11  13  17  19  23  29
  2   4   6   10  14  22  26  34  38  46  58
  3   6   9   15  21  33  39  51  57  69  87
  5   10  15  25  35  55  65  85  95 115 145
  7   14  21  35  49  77  91 119 133 161 203
  11  22  33  55  77 121 143 187 209 253 319
  13  26  39  65  91 143 169 221 247 299 377
  17  34  51  85 119 187 221 289 323 391 493
  19  38  57  95 133 209 247 323 361 437 551
  23  46  69 115 161 253 299 391 437 529 667
  29  58  87 145 203 319 377 493 551 667 841

	axis = check_list(x,y)

	print axis with a tab between each element and at beginning
	
	EACH_WITH_INDEX AXIS var prime
		print prime * axis[i] with a tab between each 
	END EACH
				
END FUNCTION


FUNCTION calc_primes
	which takes 2 inputs(x,y)
	p1 = check_position(x)
	p2 = check_position(y)
	product = p1 * p2
END FUNCTION


FUNCTION check_position 
	which takes a single integer input, (prime_pos)
	check_list at position 0 through prime_pos
	return list.last	
END FUNCTION


FUNCTION check_value 
	which takes a single integer input, (prime_position)
	** easy stretch **
END FUNCTION


FUNCTION check_list
	which takes two integer inputs, (start_pos, end_pos)
	**check the list for two given prime positions return if or build new and return
	lines = file.readlines primes.txt
	IF lines contain both start and end position return the lines there
	ELSE build_list(end_pos) 
	check_list(start-end_pos)
END FUNCTION


=end
