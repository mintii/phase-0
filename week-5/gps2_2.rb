# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal
# pizza")
# steps: 
  #  Takes a string and break up white and put into an array. (array.split)
  #  Iterate through each element of the string and use them as keys.
  #  Each step of the items: 
  #  Incrementing the value of the key. Till we reach the end of that list. 
  #  keys = item , value = quantity.
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]
def list_creater(items)
  my_array = items.split(" ")
  my_list = Hash.new(0)
  my_array.each {|item| my_list[item] += 1}
  return my_list
end

items = ""
list_hash = list_creater(items)

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
# Take 1 argument, and 1 optional argument. 
# Increment our hash using the first argument as the key, and the second 
# argument (if given) with 1.
# If no second arg, use the default as 1. 
# Return updated list_hash. 
# output: 
def add_item(list_hash, food, quantity = 1)
  list_hash[food] += quantity
  return list_hash
end

updated_hash = add_item(list_hash, "Lemonade", 2)
updated_hash = add_item(list_hash, "Tomatoes", 3)
updated_hash = add_item(list_hash, "Onions", 1)
updated_hash = add_item(list_hash, "Ice_Cream", 4)


# Method to remove an item from the list
# input: Look at the list and remove a specified item.  
# steps: 
# Do the opposite of add_item()! 
# output: Show the updated list without that item. 
def remove_item(updated_hash, food)
  updated_hash.delete(food)
  return updated_hash
end

updated_and_removed =  remove_item(updated_hash, "Lemonade")

# Method to update the quantity of an item
# input: updated_and_removed (hash), the food, and also the integer/value update
# steps: Call for the key, pass in an argument for the value (to update)
# output: hash with quantities changed

def update_quantity(updated_and_removed, food, quantity)
  updated_and_removed[food] = quantity
  return updated_and_removed
end

new_hash = update_quantity(updated_and_removed, "Ice_Cream", 1)

# Method to print a list and make it look pretty
# input: new_hash
# steps: Use string padding and left/right justification to print hash
# output: prettified new hash

def print_list(new_hash)
  new_hash.each_pair {|key, value| puts "#{key}: #{value}"}
end
p "-----SHOPPING LIST-----"
print_list(new_hash)
p "----------------------"

# Reflection

# What did you learn about pseudocode from working on this challenge?
#   Pseudocode is very helpful in helping to get a start on writing code. But it 
#   needs to be handled with clear diction between pairs programming. 

# What are the tradeoffs of using Arrays and Hashes for this challenge?
#   Arrays are helpful for first saving the list, but not helpful when there's a
#   quantity involved with the items. For that, you ant a hash. 

# What does a method return?
#   A method will return whatever was last computed during its implementation, 
#   or it will return hat you state it to. 

# What kind of things can you pass into methods as arguments?
#   You can pass through variables whihc include strings, integers, array, or 
#   hashes. 

# How can you pass information between methods?
# You want to return the ending value and then save that outcome as a variable. 

# What concepts were solidified in this challenge, and what concepts are 
# still confusing?
# Pseudo coding with a partner was strengthened throughout this challenge, as 
# well as figuring out how hashes and iteration works. I think our vocab could 
# be strengthened on Ruby so we both know for sure what we're learning. 