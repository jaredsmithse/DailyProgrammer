# challenges from reddit.com/r/dailyprogrammer
# Challenge 123 Easy 

# As a crude form of hashing function, Lars wants to sum the digits of 
# a number. Then he wants to sum the digits of the result, and repeat 
# until he have only one digit left. He learnt that this is called the 
# [2] digital root of a number, but the Wikipedia article is just 
# confusing him.

def digital_root(int)
	#get the sum of digits
	sum = 0
	for digit in int.to_s.chars
		sum += digit.to_i
	end

	#if we dont have the root yet, recurse
	sum = digital_root(sum) if sum > 9
	
	#return the sum to the next level or invoker
	return sum

end

puts digital_root(1073741824)