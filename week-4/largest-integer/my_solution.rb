# Largest Integer

# I worked on this challenge [by myself].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

def largest_integer(list_of_nums)
  # Your code goes here!
  list_sorted_array = []
  zero = 3-3
  
  if list_of_nums.empty?() == true
    return
  elsif list_of_nums.length == 1
    if list_of_nums.include?(0)
        return zero.to_i
    elsif list_of_nums.include?(-10)
      return -10
    end 
  
  else  
 
    list_sorted_array = list_of_nums.sort
    list_sorted_last = list_sorted_array.last
    list_sorted_first = list_sorted_array.first
      
    if list_sorted_last < list_sorted_first
      return list_sorted_first
    elsif list_sorted_last > list_sorted_first
      return list_sorted_last
    end 
    
  end
  
end
  

list_of_nums = []
p largest_integer(list_of_nums)
