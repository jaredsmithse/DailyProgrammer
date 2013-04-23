# challenges from reddit.com/r/dailyprogrammer
# Challenge 122 Easy 

# Find words in a word list that contain all the 
# vowels in alphabetical order, non-repeated, where 
# vowels are defined as A E I O U Y.

file = File.new(ARGV[0],"r")

re = /[^aeiouy]*[a][^aeiouy]*[e][^aeiouy]*[i][^aeiouy]*[o][^aeiouy]*[u][^aeiouy]*[y][^aeiouy]*/

for word in file

	next if word.size < 6
	
	puts word if word.match re

end