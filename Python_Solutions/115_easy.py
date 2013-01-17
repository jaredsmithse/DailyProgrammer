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

import random
def play_game():
	answer = random.randrange(1,100)
	print "Welcome to guess-that-numbers game! I have already picked a number in [1, 100]. Please make a guess. Type \"exit\" to quit. \n"
	guess = raw_input()
	
	while guess != 'exit':
		if int(guess) < answer:
			print "Guess higher..."
			guess = raw_input()
			continue
		elif int(guess) > answer:
			print "Guess lower..."
			guess = raw_input()
			continue
		elif int(guess) == answer:
			print "Correct! That is my number, you win!"
			break

play_game()
