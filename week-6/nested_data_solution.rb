# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target outer_array: "FORE"

array = [[1,2],["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
# array.each do |e|
#   if e.kind_of?(Array)
#     e.each do |second|
#       if second.kind_of?(Array)
#         second.each do |third|
#           if third.kind_of?(Array)
#             p third[0]
#           end 
#         end
#       end
#     end
#   end
# end

# Refactored code
# p array[1][1][2][0]

# ============================================================

# Hole 2
# Target outer_array: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
# hash.each do |key, value|
#   value.each do |k,v|
#     v.each do |x,y|
#       y.each do |a,b|
#           puts b
#         end
#     end
#   end
# end

# ============================================================


# Hole 3
# Target outer_array: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
# nested_data.each do |key, value|
#   inner_hash = value[1]
#   p inner_hash[:hash]
# end


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

# number_array = [5, [10, 15], [20,25,30], 35]
# number_array.map! do |x| 
#   if x.kind_of?(Integer)
#     x + 5
#   else
#     x.collect do |second|
#       second + 5
#     end
#   end
# end
# p number_array



# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

answer = startup_names.map do |outer_array|
  if outer_array.kind_of?(String)
    outer_array.capitalize + 'ly'    
  elsif outer_array.kind_of?(Array)
    outer_array.map do |sub_group|
      if sub_group.kind_of?(String)
        sub_group.capitalize + 'ly'          
      elsif sub_group.kind_of?(Array)
        sub_group.map do |last_group|
          last_group.capitalize + 'ly'    
        end
      end     
    end
  end 
end

p answer 

# ------ Reflection ------
# What are some general rules you can apply to nested arrays?
#   Whatever happens on the outermost array needs to e iterated in some manner with
#   Unless you want to print just a value, you can probably do it with with brackets

# What are some ways you can iterate over nested arrays?
#   Using if/else statements based on the type of object the programs should see
#   Or, iterating through the value and keys within nested hashes. 

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
#   We used .kind_of?() a lot to check for beginnings of a new nested array or hash. 
#   It's a method I know of previously, but I didn't know what useful purposes
#   one could use it within a program. It was a good option to use it because 
#   we needed a way to identify when new array or hashes, and then make specific
#   actions to them. 