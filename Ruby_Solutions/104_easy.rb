# challenges from reddit.com/r/dailyprogrammer
# Challenge 104 Easy (Powerplant Simulation)

# A powerplant for the city of Redmond goes offline every third day because of local demands. On top of this, the
# powerplant has to go offline for maintenance every 100 days. Keeping things complicated, on every 14th day, the 
# powerplant is turned off for refueling. Your goal is to write a function which returns the number of days the 
# powerplant is operational given anumber of days to simulate.

# Formal Inputs & Outputs:
#   Input Description : 
#     Integer days - the number of days we want to simulate the powerplant
#   Output Description : 
#     Return the number of days the powerplant is operational.

# Sample Inputs & Outputs:
#   The function, given 10, should return 7 (3 days removed because of maintenance every third day).

def calculate_days_active(days)
  days_active = days
  for i in 1..days
    days_active -= 1 if (i%3 == 0) || (i%14 == 0) || (i%14 == 0)
  end
  puts "In the next #{days} days, the powerplant in Redmond will be active #{days_active} days."
end

calculate_days_active(100)