# challenges from reddit.com/r/dailyprogrammer
# Challenge 104 Intermediate (Bracket Racket)

# Write a function, where given a string of arbitrary characters, returns true if all brackets (defined as parentheses,
# square-brakets, curly-braces, and chevrons) are correectly paired and ordered. This is to say that all brackets, if 
# they enclose other brackets, enclose both the paired opening and closing characters.

# Input Description :
#   string data - a given string that may or may not have correctly formed brackets
# Output Description :
#   return true or false - true if the given string is correctly bracket formed

# Sample Inputs and Outputs :
#   "123", "(abc)", "()abc()", and "([<{abc123abc}>])" should return true, but "(abc[123)abc]" (wrong pairing)
#   and "(abc>" (not closed) should return false.



# implementing my own string method that will reverse the string symmetrically to compare closure
class String
  def reverse_brackets
    flipped_string = ""
    self.each_char do |char|
      case char
      when "("
        flipped_string.insert(0, ")")
      when ")"
        flipped_string.insert(0, "(")
      when "["
        flipped_string.insert(0, "]")
      when "]"
        flipped_string.insert(0, "[")
      when "{"
        flipped_string.insert(0, "}")
      when "}"
        flipped_string.insert(0, "{") 
      when "<"
        flipped_string.insert(0, ">")
      when ">"
        flipped_string.insert(0, "<")
      end
    end
    return flipped_string
  end
end

# uses regex to clear out everything but the brackets and proceeds to check whether or not they close
# by using the symmetric reverse method i added to the string class
def check_closed(string)
  str = string.gsub(/[^(\[<{}>\])]/,"")
  print str == str.reverse_brackets
end

#printing out the examples with formatting
puts ""
print "'123' should return true                : "
check_closed("123")
puts ""

print "'()abc()' should return true            : " 
check_closed("()abc()")
puts ""

print "'([<{abc123abc}>])' should return true  : " 
check_closed("([<{abc123abc}>])")
puts ""



print "'(abc[123)abc]' should return false     : " 
check_closed("(abc[123)abc]")
puts ""

print "'(abc>' should return false             : " 
check_closed("(abc>")
puts "\n\n"


  