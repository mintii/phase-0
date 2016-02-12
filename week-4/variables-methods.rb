puts "Can I have your first name?"
first_name = gets.chomp + " "
puts "Can I have your middle name?"
middle_name = gets.chomp + " "
puts "Can I have your last name?"
last_name = gets.chomp 
puts "Thank you for all of that information! It's nice to meet you " + first_name + middle_name + last_name + "!"

puts "What's your favorite number?"
favorite_num = gets.chomp.to_i 
bigger_number = favorite_num + 1
puts "That's a great number and all, but have you heard of #{bigger_number}? It's a bigger and better number!"

# How do you define a local variable?
# Name it something starting with at least a lower case letter, and then use = to set it to a value. 

# How do you define a method?
# starting with def and ending with end 

# What is the difference between a local variable and a method?
#  A local variable holds a value. Methods use those values to do something more dynamically (Taking a name from variable and printing it out in a string.)

# How do you run a ruby program from the command line?
# You want to start up irb! 

# How do you run an RSpec file from the command line?
# "rspec filename_rspec.rb"

# What was confusing about this material? What made sense?
# It was confusing to get the address to appear correctly. The issue I had was that I used puts, and my rspec test kept failing because it was reciving nil. It stumped me for a bit, I felt sure I had everything correct! But then I remembered how puts always has a return value of nil. :) Then it all made sense and I figured out the issue. 