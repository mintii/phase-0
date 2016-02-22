# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def separate_comma(number)
  string = number.to_s
  array =[]
  big_num_array = []
  array = number.split("")
  array.reverse!
  p array.length
  commas_location = 0 
  counter = 0
  
  if array.length < 4
    string
  elsif array.length < 7 
      until  commas_location == 3
         if array.length % 3 == 0 
          commas_location = ((array.length / 3 - 1) * 3).to_i
          p "Answer A is #{commas_location}"
          p array.insert(commas_location, ",")    
        else 
          commas_location = ((array.length / 3) *3).to_i
          p "Answer B is #{commas_location}"
          p array.insert(commas_location, ",")
         end
    commas_location
     end
    array.join.reverse
  else #for all ints greater than 6
    n = 0 
    p "Original Length #{original_length = array.length}"
    array.reverse!
      until n == original_length
        n +=1
        big_num_array.push(array.pop)
        p big_num_array
          if n % 3 == 0
            p n
            big_num_array.push(",")  
          end
      end
    big_num_array.join.reverse
  end
end

number = 1000
p separate_comma(number)


# 2. Refactored Solution

def separate_comma(number)
  string = number.to_s
  working_array =[]
  big_num_array = []
  working_array = string.split("")
  working_array.reverse!
  commas_location = 0 

  if working_array.length < 4
    string
  elsif working_array.length < 7 
         if working_array.length % 3 == 0 
          commas_location = ((working_array.length / 3 - 1) * 3)
          working_array.insert(commas_location, ",")    
        else 
          commas_location = ((working_array.length / 3) *3)
          working_array.insert(commas_location, ",")
         end
    working_array.join.reverse
  else #for all ints greater than 6
    n = 0 
    original_length = working_array.length
    working_array.reverse!
      until n == original_length
        n +=1
        big_num_array.push(working_array.pop)
          if n % 3 == 0 
            big_num_array.push(",")  
          end
      end
    big_num_array.join.reverse
  end
end

number = 100000000
p separate_comma(number)



# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
# I wanted to test first how to insert the commas, but I kept running into road blocks based on the overall length of the number where commas were inserting into the wrong places. So I had to break apart numbers that are bigger than 1000 but less than 100,000 and another set for those greater than 100,000. 
# Was your pseudocode effective in helping you build a successful initial solution?
# It certainly helped me think apart my problem. I had about 5 drafts I was working on for this solution until I found a successful answer. Using pseudocode helped me break down logically what I wanted to do in each step. 
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# How did you initially iterate through the data structure?
# I iterated by using insert and calculating the places where commas_location should go. 
# Do you feel your refactored solution is more readable than your initial solution? Why?
