# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below
def array_concat(array_1, array_2)
  # Your code here
  
  new_array = Array.new
  array_1.each do |entry|
      if array_1.empty? == false
          new_array.push(entry)
      end
  end
  
  array_2.each do |entry|
      if array_2.empty? == false
          new_array.push(entry)
      end
  end
  
  new_array
end
array_1 = [1, 2, 3]
array_2 = ["apple", "tacos"]

p array_concat(array_1, array_2)