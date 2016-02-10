# Good Guess

# I worked on this challenge [by myself].
# Your Solution Below
puts "Can I have a number please?"
number = gets.chomp.to_i

def good_guess(number)
  if number == 42
    true
  else
    false
  end
end

puts good_guess(number)



