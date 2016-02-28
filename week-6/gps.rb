# Your Names
# 1) Brittney Braxton  
# 2) Mike Verthein

# We spent [2.5] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
    
  raise ArgumentError.new("#{item_to_make} is not a valid input") unless library[item_to_make]
  
  remaining_ingredients = num_of_ingredients % library[item_to_make] 
  food_count = num_of_ingredients / library[item_to_make] 
  
  suggested_treats = { "cookies" => "gingerbread house", "cake" => "wedding cake", "pie" => "stargazy pie" } 
  #stargazy pie is worth a Google 
    
  serving_size_answer = "Calculations complete: Make #{food_count} of #{item_to_make}"
  
  serving_size_answer = serving_size_answer + ", you have #{remaining_ingredients} leftover ingredients. You can also make #{suggested_treats[item_to_make]} with your leftovers!" if remaining_ingredients > 0
  
  serving_size_answer
end
    

# p serving_size_calc("pie", 7) == 'Calculations complete: Make 1 of pie'
p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?
    It's very important to carefully read over the code you're about to edit
    so that you know both the logic as well as the input and output. By doing 
    this it gives you a better idea on refactoring and what could be improved. 
Did you learn any new methods? What did you learn about them?
    No, i learned no new methods during this challenge, but I learned some 
    interesting ways to order if/else statements to help with readability. 
What did you learn about accessing data in hashes? 
  I found it really creative how the hash, library, was broken up into desserts 
  and serving size. This allowed for an understandable approach to what was stored
  and what needed to be calculated. 
What concepts were solidified when working through this challenge?
  It seems that I could take more time with my refactoring than what I currently
  dedicate time towards. So far it feels that once I have the solution, I don't
  want to look at the code anymore. Similar to writing drafts of an essay, 
  it can be very helpful to look at it a second or third time to find new flaws. 
=end

