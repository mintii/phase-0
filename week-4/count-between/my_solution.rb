# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  # Your code goes here!
  range = lower_bound...upper_bound
  counter = 0 
  list_of_integers.each do |x|
    if x >= lower_bound and x <= upper_bound
      counter += 1
    end 
  end 
  counter
end

list_of_integers = [1 , 2, 3, 400]
lower_bound = 1
upper_bound = 100 

p count_between(list_of_integers, lower_bound, upper_bound)
