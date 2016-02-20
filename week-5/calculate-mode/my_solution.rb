# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Wesley El-Amin]

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? 

## The input will be an array of objects.

# What is the output? (i.e. What should the code return?)
## The output will be an array containing the most frequent value(s).

# What are the steps needed to solve the problem?
## Start by taking the array and store each index as a key in a new hash. 
## Next, the value associated with each index will be stored as the 
## corresponding value in that new hash. Finally, return an array that
## contains the most frequent values in the hash.


# 1. Initial Solution

def mode(array)
  mode_hash = Hash.new(0)
  array.each do |thing|
    mode_hash[thing] = mode_hash[thing] += 1
  end
  result = []
  something = 0
  mode_hash.each_pair do |key, value|
    something = value if value > something
  end
  mode_hash.each_pair do |key, value|
    result.push(key) if value == something
  end
  return result.uniq
end


# 3. Refactored Solution
def mode(array)
  mode_hash = Hash.new(0)
  array.each do |thing|
    mode_hash[thing] = array.count(thing)
  end  
  result = []
  mode_hash.each_pair do |key, value|
    result.push(key) if value == mode_hash.each_value.max
  end
  p result
end

array = [1, 5, 7, 3, 5, 5, 7, 7]
mode(array)


# 4. Reflection

# Which data structure did you and your pair decide to implement and why?
#   We moved the values in an index to a hash so we can count the frequencies 
#   which words or numbers are appearing. We made this decision because then it 
#   would be clearer to associate how many times the work or number appears than
#   within an array.

# Were you more successful breaking this problem down into implementable 
# pseudocode than the last with a pair? 
#   This one felt more difficult than with 5.2 It has more moving pieces one needs
#   to account for in order to properly pseudocode and implement. 

# What issues/successes did you run into when translating your pseudocode 
# to code?
#   We missed some of the moving parts in order to get the code working. I think 
#   we left pseudocoding too early and jumped into writing code. This is totally
#   a retrospective realization though. I did suggest during our pairing that maybe
#   we try to go back to pseudocoding and rethink the steps needed to achieve 
#   output, but my partner felt sure we were on the right track and we should keep
#   up with the current code. 

# What methods did you use to iterate through the content? 
#   We used .each to iterate. 
#
# Did you find any good ones when you were refactoring? 
# Were they difficult to implement?
#   We refactored mode_hash[thing] = mode_hash[thing] += 1  and changed it to 
#   mode_hash[thing] = array.count(thing) It wasn't too difficult to implement. 

