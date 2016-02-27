# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [6] hours on this challenge.

# Pseudocode

# Input: Give it answer
# Output: Told if it's high, low, or correct
# Steps: 
# 1. Get an answer from user
# 2. Check if that answer matches what they are guessing with
# 3. Rank that guess to if it's high, low, or correct to answer
# 4. Return if it's high low or correct
#


# Initial Solution

# class GuessingGame 
#   def initialize(answer)
#     @answer = answer
#   end

#   def guess(given_guess)
#     @guess = given_guess
#     if @guess > @answer
#       return :high
#     elsif @guess < @answer
#       return :low
#     else
#       return :correct
#     end
#   end
  
#   def solved?
#     if @answer == @guess
#       return true
#     else
#       return false
#     end
#   end
# end

# Refactored Solution
class GuessingGame
  attr_accessor :answer
  def initialize(answer)
    @answer = answer
  end

  def guess(given_guess)
    @guess = given_guess
    if @guess > @answer
      :high
    elsif @guess < @answer
      :low
    else
      :correct
    end
  end
  
  def solved?
     @answer == @guess? true : false 
  end
  
end

# Reflection

=begin
 How do instance variables and methods represent the
 characteristics and behaviors (actions) of a real-world
 objects?
    If your class was to create a registery for your different pets and the care 
    and upkeeping needed for them, then each would have similar actions,but are 
    handled at different quantities.  Your PetCare class could have methods of 
    food type and feeding time, but these would differ for your instance class for
    your dog or your iguana. 
  
 When should you use instance variables? What do they do
 for you?
    Instance variables are needed in order to create an instance of that class. 
    When your class has defined methods within it, instance variables are helpful
    for passing values between methods. 
  
 Explain how to use flow control. Did you have any 
 trouble using it in this challenge? If so, what did you
 struggle with?
   Flow control is the idea of your program flowing between true or false evaluations. 
   This challenge was not the most difficult of all challenges I have currently 
   received which involve if/else statements. I strugged primarily with instance 
   variables and some other rabbit holes I attempted with this program. 
  
  Why do you think this code requires you to return
  symbols? What are the benefits of using symbols?
      We can ensure the correct returns are being  used for the program. If we 
      were to test out our guess method where we returned the symbols as well as 
      their object id's, we can then know for sure that the correct thing is returning. 
      With strings, the same can't b assured. We also need to set them to a variable, 
      which can lead to excess memory used in larger programs. 

=end


