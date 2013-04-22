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