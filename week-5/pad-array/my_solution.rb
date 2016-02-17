# Pad an Array

# I worked on this challenge [by myself, with: Oscar Delgadillo]

# I spent [2] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode
# Inputs--
# -- List of numbers
# -- A number to change the size of the list
# -- Optional "list filler"
# Outputs-- 
# -- List of numbers 
# -- Increased to the selected number size 
# -- Filled in with the list filler

# Take the list of numbers and read  what's on each of the lists
# IF the list size is going to be increased by something larger than the original list. 
# THEN we will take the original values and put it in a new list. 

# We can take the original list and SUBTRACT it from the number. 
#     number - original list = ____

# First we would take the word argument and put it into it's own list. 
# While we fill our new array with the original list, we then push the word into any remaining spaces. 


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here
    if min_size > array.size 
    pad_array = Array.new(min_size - array.size, value) 
    pad_array.each do |x|
      array << x 
    end    
    else
    array 
    end
  p array
end

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  new_array = [] 
  if min_size > array.size 
    pad_array = Array.new(min_size - array.size, value) 
    new_array = array + pad_array 
  else
    array.each do |x|
      new_array << x 
    end 
  end
  p new_array
end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  # Your code here
  if min_size > array.size 
    array.fill(array.size, min_size-array.size) { value }  
  end
  p array
end


def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  new_array = []
  if min_size > array.size
    new_array.concat(array + Array.new(min_size-array.size, value))
  else
    array.each { |x| new_array << x }
  end
  p new_array
end


# 4. Reflection

# Were you successful in breaking the problem down into small steps?
# Yes! It feels that pseudocoding makes more sense with pairs than working solo. 

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# Yes there was a lot of ease with it. The only parts that tripped us up was ine 53 in figuring out what direction we should subtract min_size and array. 
# We also racked our heads a lot on figuring out how to refactor our solutions. I kept feeling like everything looked a-okay. But Oscar wanted to push forward. It was  great practice on how far we can take code and refactor it. 

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# Yes, absolutely. It met the requirements as mentioned in the 5.2 Challenge, and then we passed rspec with no errors. The errors we encountered throughout this problem involved syntax or mismatched arguments which we solved with relative ease. 

# When you refactored, did you find any existing methods in Ruby to clean up your code?
# Yes we found out about .concat and .fill. With .fill we casted it aside at first, but then returned back to it thinking about it in a different perspective. 

# How readable is your solution? Did you and your pair choose descriptive variable names?
# I think it's readable. The only part that we chose not to make too descriptive were the variables we passed through the .each method. 

# What is the difference between destructive and non-destructive methods in your own words?
# Destructive methods come in an shake up objects to be defined with something new than what that object had before the method acted. 
# Non-destructive methods do the opposite. Any objects that pass through the method are not redefined. They remain the same value before and after the method ends. 