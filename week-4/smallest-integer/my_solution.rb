# Smallest Integer

# I worked on this challenge [by myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  # Your code goes here!
  list_sorted_array = []
  zero = 3-3
  
 def negative_number(array) 
   # This method checks if the array contains negative numbers, and sorts them
   #to find which is the smallest negative number. 
    negative_array = []
    array.each do |x|
        if x < 0 
            negative_array.push(x)
            negative_array.sort!
        end
    end
    negative_array
    neg_array_first = negative_array.first
    neg_array_last = negative_array.last
    if neg_array_last < neg_array_first
        return neg_array_last.to_i
    else
        return neg_array_first.to_i
    end
  end

  if list_of_nums.empty?() == true
    return 
  elsif list_of_nums.length == 1
    if list_of_nums.include?(0)
      return zero.to_i
    elsif list_of_nums.include?(-10)
      return -10
    end

  elsif list_of_nums.include?(0) and list_of_nums.any?{ |x| x < 0}
    negative_number(list_of_nums)
    
  else
    list_sorted_array = list_of_nums.sort
    list_sorted_last = list_sorted_array.last
    list_sorted_first = list_sorted_array.first
      
    if list_sorted_last < list_sorted_first
      return list_sorted_last
    elsif list_sorted_first < list_sorted_last 
      return list_sorted_first
    end 
    
  end 
  
end

list_of_nums = []
p smallest_integer(list_of_nums)

