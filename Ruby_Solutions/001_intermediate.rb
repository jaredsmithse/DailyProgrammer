# challenges from reddit.com/r/dailyprogrammer
# Challenge 001 Intermediate 

# Create a program that will allow you to enter events organizable by hour. there must 
# be menu options of some form, and you must be able to easily edit, add, and delete 
# events without directly changing the source code.

# (Note that by menu i don't necessarily mean gui. As long as you can easily access 
# the different options and receive prompts and instructions telling you how to use 
# the program, it will probably be fine.)

@schedule = Hash.new { |hash, key| hash[key] = [] }

def scheduling()
  puts "To ask for a list of commands, type 'help'. Otherwise, start as you wish."
  input = gets.chomp
  
  
  while input != 'exit'
    if input == 'help'
      print_help_options()
      input = gets.chomp
      next
    elsif input == 'add'
      
      puts "What is the name of the event?"
      name = gets.chomp
      
      puts "What time is this going to happend at?"
      time = gets.chomp
      
      add(name,time)
      
      puts "What next?"
      input = gets.chomp
      next
    elsif input == 'delete'
      delete()
      input = gets.chomp
      next
    elsif input == 'show'
      show_schedule()
      input = gets.chomp
      next
    else
      puts "I didn't get that, please try again."
      input = gets.chomp
      next
    end
    
  end  
end

def add(name, time)
  @schedule[name] = schedule + [] + time
  puts "Added #{name}, times are now #{schedule[name]}."
end

def delete()
  puts "deleting schedule"
end

def show_schedule()
  puts "showing schedule"
end

def print_help_options()
  puts "help   : list of commands"
  puts "add    : add event"
  puts "delete : delete event"
  puts "show   : list events"
  puts "exit   : end program"
end

scheduling()