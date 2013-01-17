# challenges from reddit.com/r/dailyprogrammer
# Challenge 001 Easy 

# Create a program that will ask the user name, age, and reddit username. 
# Have it tell them the information back in the format:
# 'Your name is (name), you are (age) years old, and your username is (username).'

# For extra credit, have the program log this information in a file to be accessed later.

require 'yaml'

def user_input()
  users = {}
  
  puts "What is your name?"
  name = gets.chomp.capitalize
  
  puts "How old are you?"
  age = gets.chomp
  
  puts "What is your Reddit username?"
  username = gets.chomp
  
  puts "Your name is #{name}, you are #{age} years old, and your username is #{username}."
  
  
end

user_input()