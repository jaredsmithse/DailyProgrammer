# challenges from reddit.com/r/dailyprogrammer
# Challenge 121 Easy 

# Bytelandian Currency is made of coins with integers on them. There 
# is a coin for each non-negative integer (including 0). You have 
# access to a peculiar money changing machine. If you insert a N-valued 
# coin, with N positive, It pays back 3 coins of the value N/2,N/3 and N/4, 
# rounded down. For example, if you insert a 19-valued coin, you get three 
# coins worth 9, 6, and 4. If you insert a 2-valued coin, you get three coins 
# worth 1, 0, and 0. 0-valued coins cannot be used in this machine.

# One day you're bored so you insert a 7-valued coin. You get three coins back, 
# and you then insert each of these back into the machine. You continue to do 
# this with every positive-valued coin you get back, until finally you're left 
# with nothing but 0-valued coins. You count them up and see you have 15 coins.

# How many 0-valued coins could you get starting with a single 1000-valued coin?

# take argument from command line
original_coin = ARGV[0].to_i

# find change for a coin
def get_change(int)
	return int/2,int/3,int/4
end

# go through an array and get change once
# for each coin that is not valued at 0
def get_change_for_each(array)
	array.each_with_index do |e, i|
		if e == 0
			next
		end

		array[i] = get_change(e)
	end
	array.flatten!
end

# make the initial change
coins = get_change(original_coin)

# keep going until you are broke
until coins.all? {|x| x == 0} do
	get_change_for_each(coins)
end

puts coins.size