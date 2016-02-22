# Pseudocode
# Given a group of 59  place it in a list
# Split this list up so there's at least 4 numbers in smaller lists
# Return the new list

def group
  students = (1...59).to_a
  students.each_slice(5).to_a

end

p group

# If we want to give you a new output each time, we use .shuffle
def group
  students = (1...59).to_a
  students.shuffle.each_slice(5).to_a
end


# What was the most interesting and most difficult part of this challenge?
# Deciding if I should include names or just work with numbers. I was creating 
# a very complicated hash at first, but then I figured that using a range would 
# be the best for a MVP. 

# Do you feel you are improving in your ability to write pseudocode and 
# break the problem down?
# Slowly but surely. I feel more comfortable with pseudocoding tan refactoring. 

# Was your approach for automating this task a good solution? What could have
# made it even better?
# It could be improved by pairing the numbers from the range in students with the names of the students. It could also use type of if/else statement to dynamically change the grouping depending on the size of the range. 

# What data structure did you decide to store the accountability groups in and why? 
# An array, because it was just a range of numbers, no key/value pairing needed. 

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# Really enjoyed playing with .shuffle! 