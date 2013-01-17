# (Easy) Guess-that-number game!
# Author : Jared Smith

#A "guess-that-number" game is exactly what it sounds like: a number is guessed at 
#random by the computer, and you must guess that number to win! The only thing the 
#computer tells you is if your guess is below or above the number.

#Your goal is to write a program that, upon initialization, guesses a number 
#between 1 and 100 (inclusive), and asks you for your guess. If you type a number, 
#the program must either tell you if you won (you guessed the computer's number), 
#or if your guess was below the computer's number, or if your guess was above the 
#computer's number. If the user ever types "exit", the program must terminate.




def play_game()
	answer = Random.new.rand(1..100)
	puts "Welcome to guess-that-numbers game! I have already picked a number in [1, 100]. Please make a guess. Type \"exit\" to quit."
	guess = gets.chomp
	while guess != 'exit'
		if guess == answer.to_s
			puts "Correct! That is my number, you win!"
			return
		elsif guess < answer.to_s
			puts "Wrong. That number is below my number."
			guess = gets.chomp
			next
		elsif guess > answer.to_s
			puts "Wrong. That number is above my number."
			guess = gets.chomp
			next
		else
			puts "Can't understand your guess, try again please : "
			guess = gets.chomp
			next
		end
	end
end

play_game()

