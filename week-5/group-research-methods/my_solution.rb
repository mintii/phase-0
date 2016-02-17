# Research Methods

# I spent [2] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  new_array = Array.new 
  source.each do |x| 
    if x.is_a?(String) == true
      if x.include? thing_to_find
        new_array << x 
      end
    end
  end
  p new_array
end

def my_hash_finding_method(source, thing_to_find)
  new_array = Array.new
  source.each do |key, value|
    if value.is_a?(Integer) == true
      if value == thing_to_find
        new_array << key 
      end
    end
  end
  p new_array
end

my_array_finding_method(i_want_pets, "o")
my_hash_finding_method(my_family_pets_ages, 3)


# Identify and describe the Ruby method(s) you implemented.
#      I used if statements, methods for arrays and methods for hashes. 
#      To add values to the array, I used the << method to push objects to 
#      a new array. 
# Teach your accountability group how to use the methods
#      When you're looking to find values in an array or hash, and you need to 
#      collect those findings into a new array, you  first want to declare that
#      new array. Next, using an each method you can iterate an action needed
#      for each value. Once you narry down th specific pieces you need, you want
#      to push these to the new array you created in the beginning. And you're 
#      done!
# Share any tricks you used to find and decipher the Ruby Docs
#      I drew inspiration and guidelines from week 4's challenges to tackle this
#      challenge. I always prefer reading http://ruby-doc.org/ in conjunction 
#      with Well Grounded Rubyist.






# Person 2
# def my_array_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
# def my_array_sorting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_sorting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
# def my_array_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# # Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#