# Simple Substrings

# I worked on this challenge [by myself].


# Your Solution Below

puts "Where do you live?"
state = gets.chomp

def welcome(state)
  if state == "CA"
    puts "Welcome to California!"
  else
    puts "You should move to California!"
  end 
end 

puts welcome(state)