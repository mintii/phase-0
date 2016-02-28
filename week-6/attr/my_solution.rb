#Attr Methods

# I worked on this challenge [by myself]

# I spent [2.5] hours on this challenge.

# Release 5:

# class Profile
#   attr_accessor :age, :name, :occupation

#   def initialize
#     @age = 27
#     @name = "Kim"
#     @occupation = "Cartographer"
#   end

#   def print_info
#     puts
#     puts "age: #{@age}"
#     puts
#     puts "name: #{@name}"
#     puts
#     puts "occupation: #{@occupation}"
#     puts
#   end
# end

# instance_of_profile = Profile.new
# puts "--- printing age -----"
# sleep 0.8
# p instance_of_profile.age

# puts "--- printing name ----"
# sleep 0.8
# p instance_of_profile.name

# puts "--- printing occupation ----"
# sleep 0.8
# p instance_of_profile.occupation

# puts "--- changing profile information ----"
# 20.times do
#   print "."
#   sleep 0.1
# end

# instance_of_profile.age = 28
# instance_of_profile.name = "Taylor"
# instance_of_profile.occupation = "Rare Coins Trader"


# puts
# puts "---- printing all profile info -----"
# sleep 0.8
# instance_of_profile.print_info

class NameData
  attr_reader :name
  def initialize
  @name = "Brittney"
  end

end


class Greetings
  def initialize
    @new_person = NameData.new 
  end
  
  def hello
    p "Hello #{@new_person.name}! How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello


# Reflection
  # Release 1 
  #  What are these methods doing?
    # Reader methods allows you to read the instance variable outside of a class. 
    # For example, what_is_age and what_is_name both are reading what value is 
    # stored in instance variables. We can call on those outside of the class 
    # to read off what it has. 
    # Writer methods allow you change the value of an instance variable outide 
    # of a class. For example, we have change_my_age, change_my_name, and 
    #  change_my_occupation which are all writers. They are taking in parameters
    # to modify pre-existing instance variables. 
    
  #  How are they modifying or returning the value of instance variables?
    # Readers are simply returning the values. They are just like the fancy plates 
    # your grandparents hang on the wall: just for looking at, not touching. 
    # Writers modify the instance variable's value. In the methods change_my_age, 
    # change_my_name, and change_my_occupation they are simply recieving something 
    # new, and reassigning that to the instance variable. I say reassigning these
    # three methods were all initialized earlier when the class instance was
    # first created. 
# ----------------------------------------------------------------------------    
  # Release 2
  # What changed between the last release and this release?
    # The method what_is_age was removed and a symbol :age was created along 
    # attr_reader. Everything else remains the same. 
    
  # What was replaced?
    # attr_reader was added. This is helped to return a value or state outside 
    # the class. This returning action happens when we call .age which returns 
    # the value of @age. 
    
  # Is this code simpler than the last?
    # Yes, it helps with not repeating ourself! 
# ----------------------------------------------------------------------------    
  # Release 3 
  # What changed between the last release and this release?
  # We removed another method, this time we removed change_my_age=(new_age)
  # What was replaced?
  # attr_writer was replaced. What this will do is allowfor the :age method to be
  # changeable when accessed outside of the class. 
  # Is this code simpler than the last?
  # Yes! We now have 2 lines of code for 2 methods to do 6 lines of work. :) 
# ----------------------------------------------------------------------------    
  # Release 6
  # What is a reader method? 
    # A reader method helps with returning a value or state outside of the class. 
    # It does not change what it's returning. 
    
  # What is a writer method?
    # A writer method helps to change a value of a variable outside of the class. 
    # It is not readable like a readr method. If you want both, it's recommended
    # to use an attr_accessor. 
    
  # What do the attr methods do for you?
    # Helps to take on the roles of multiple methods so you can keep your code DRY
    # and easier to read and understand. By placing them as symbols we are making 
    # them "locked" so they cannot be edited. 
    #   
  # Should you always use an accessor to cover your bases? Why or why not?
    # No, because it can potentially leave your program with loop holes to be 
    # compromised. Plus, it's never a good idea to have a junk draw for your code. 
    
  # What is confusing to you about these methods?
    # They are just tricky to remember among all of the other objects, logic, and
    # semantics. There's a lot I'm juggling currently. I think after 3 examples 
    # on classes by Andrew, 5-10 re-reads of Chapter 3 in Well-Grounded Rubyist, 
    # and reaching out to lots of other sources am I now finally starting to 
    # understand it. :)  When it clicks with Ruby, it feels great. 