# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution

class Die
  def initialize(sides)
    # code goes here
    @sides = sides
    if @sides < 1
     raise ArgumentError.new("You need a minimum of 1 side!")
    end
  end

  def sides
    # code goes here
    @sides
  end

  def roll
    # code goes here
    rand(1..@sides)
  end
end

die = Die.new(6)
die.roll



# 3. Refactored Solution







# 4. Reflection

# What is an ArgumentError and why would you use one?
  # An ArgumentError is helpful when you have a specific number of arguments
  # needed when defining the initialization method for a Class. I used it
  # because it makes little sense to have a coint hat's less than one side long.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
#   It was fun creating my first class. I also liked playing with rand(). It's 
#  a similar function to shuffle that I used on an array for another 
#  challenge this week. 

# What is a Ruby class?
#   A Class is a collection of method definitions. They are grouped together to
#   have some relation and function. 

# Why would you use a Ruby class?
#   Classes are helpful for grouping methods so you can quickly call upon them 
#   and share these methods among other parts of your program. 

# What is the difference between a local variable and an instance variable?
#   A local variable can only occur within the method they were  defined in. 
#   An instance variable has to be used with the class it's created in. 

# Where can an instance variable be used?
#     They can be used in evvery instance of the Class they were created within. 