# Die Class 2: Arbitrary Symbols


# I worked on this challenge [  with: Tomasz Sok ].
# I spent [1] hours on this challenge.

# Pseudocode

# Input:  Give an array of letters
# Output: Randomly show one of those letters 
# Steps:  1. Store alphabets in array. 
#         2. When we roll, pick the letters to be used in output. 
#         3. With can use the random method on it to find the letter to return. 


# Initial Solution

class Die
  attr_reader :sides, :labels
  def initialize(labels)
    
    @labels = labels
    @sides = labels.length 
    @roll = labels.sample
    if labels.empty? 
      raise ArgumentError.new("You need to give me labels!")
    end
  end
  
  def roll
    labels.sample
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p die.sides
p die.roll

# Refactored Solution


# class Die
#   attr_reader :sides, :labels
#   def initialize(labels)
    
#     @labels = labels
#     @sides = labels.length 
#     @roll = labels.sample
#     if labels.empty? 
#       raise ArgumentError.new("You need to give me labels!")
#     end
#   end
  
#   def roll
#     labels.sample
#   end
# end

# die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
# p die.sides
# p die.roll


# Reflection
# What were the main differences between this die class and the last one you 
# created in terms of implementation? Did you need to change much logic to get 
# this to work?
#   I did not need to change much logic. The main difference in play was how one
#   would roll the die and what they would receive. Instead of rolling for a 
#   random range number, we are now rolling by picking a sample from an array. 
#   This sample method makes the die class feel a lot more dynamic, because we 
#   could put lots of things into the array and then see what it randomly draws.

# What does this exercise teach you about making code that is easily 
# changeable or modifiable? 
#   Yes indeed! It was also necessary practice on furthering my understanding of
#   classes and its parts. :) 

# What new methods did you learn when working on this challenge, if any?
#   I learned about the array method, .sample. I was planning to use rand() for 
#   my roll method but it wasn't working. Then working with Tom he helped 
#   illustrate what was needed to complete the roll. 

# What concepts about classes were you able to solidify in this challenge?
#   I was able to understand more on what is needed in the def initialize and 
#   why we use attr_reader , writer, or accessor. Still learning more about the
#   methods in classes. 