# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase
# SOLUTION 
# cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# SOLUTION
# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
#   end
# end

# This is a tricky error. The line number may throw you off.
# Yes it did! I thought something was broken.  

# 1. What is the name of the file with the error?
#  errors.rb

# 2. What is the line number where the error occurs?
# 172, very end of the document. 
# 3. What is the type of error message?
#  syntax error,

# 4. What additional information does the interpreter provide about this type of error?
#  "unexpected end-of-input, expecting keyword_end"

# 5. Where is the error in the code?
#  We need to indent the existing end and provide a second end for the method we've defined. 

# 6. Why did the interpreter give you this error?
# It ran through the rest of the lines after end because it was looking for another end for the method. 

# --- error -------------------------------------------------------

# south_park

#   SOLUTION 
# south_park = 3 

# 1. What is the line number where the error occurs?
# 49

# 2. What is the type of error message?
# "'<main>'"

# 3. What additional information does the interpreter provide about this type of error?
# "undefined local variable or method 'south_park' for main:Object (NameError)"
# 4. Where is the error in the code?
# Ruby thinks this is a variable or method, but it doesn't know what to do with it since it was not defined. 
#
# 5. Why did the interpreter give you this error?
# You need to define this as something. 

# --- error -------------------------------------------------------

# cartman()

# ----Solution -----
# def cartman(taco)
#   puts "Tacos are delicious! I ate #{taco}!"
# end

# puts cartman(5)


# 1. What is the line number where the error occurs?
# 70

# 2. What is the type of error message?
#  "'<main>'"

# 3. What additional information does the interpreter provide about this type of error?
# "undefined local variable or method 'south_park' for main:Object (NameError)"

# 4. Where is the error in the code?
# This looks like a method, but it has not been defined in order for it to run in this manner. 

# 5. Why did the interpreter give you this error?
# You gotta start with a def and then conclude with end. 

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# ---- SOLUTION -----

# def cartmans_phrase()
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# line 97
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#  There's a wrong number of arguements. You're passing 1 argument for 0 arguments defined with the method. 
# 4. Where is the error in the code?
# Occurs in like 95 and 99
# 5. Why did the interpreter give you this error?
# You've defined a method with no arguments, but when you call the argument in line 101 you are providing arguments. Ruby doesn't know what to do with it. 

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# -----SOLUTION -----
# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says("Broccoli is gross.")

# 1. What is the line number where the error occurs?
#  124 and 128

# 2. What is the type of error message?
#  (ArgumentError)

# 3. What additional information does the interpreter provide about this type of error?
#  There's a wrong number of arguements. You're passing 0 argument for the  1 argument defined with the method. 

# 4. Where is the error in the code?
# You need to provide an argument for the method to pass in line.

# 5. Why did the interpreter give you this error?
# You have a method with an argument, but you're calling the method without an argument. Things aren't matching up. 



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# ---SOLUTION ---
# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Carl')

# 1. What is the line number where the error occurs?
# Line 156 and line 160. 
# 2. What is the type of error message?
#  ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# You're passing in 1 argument when Ruby is looking for 2 arguments. In the defining of the method it lists two arguments to pass. 

# 4. Where is the error in the code?
# It's along line 160. Only one argument was given. 
# 5. Why did the interpreter give you this error?
# It's looking for two arguments to run cartmans_lie(lie,name)

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# ----SOLUTION ----

# "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 183
# 2. What is the type of error message?
# TypeError

# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum. 
#
# 4. Where is the error in the code?
#  It's happening with the * sign on line 183
# 5. Why did the interpreter give you this error?
# You can't multiply an integer by a string. However, you can multiple a string by an integer. 
#

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0

# ---SOLUTION ----

# amount_of_kfc_left = 20/2

# 1. What is the line number where the error occurs?
# 205
# 2. What is the type of error message?
#  ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# Divided by 0 
# 4. Where is the error in the code?
#  The issue is with the / symbol 
# 5. Why did the interpreter give you this error?
# Basic math rules-- you can't divide by 0. You can change the 0 to something else, and it will run. 

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 224
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# Cannot load such file -- /home/ubuntu/workspace/dev-box/phase-0/week-4/cartmans_essay.md 

# 4. Where is the error in the code?
# Happening with the file cartmans_essay.md
# 5. Why did the interpreter give you this error?
# It's requiring a file, cartmans_essay.md and it's not one that exists. 



# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment

# Which error was the most difficult to read?
# The first one was most difficult for me. I wasn't sure why it was running through everything and then saying there's an error, why not just specify at the line where the method is defined? Well, that's because the method has been properly defined, but Ruby was simply looking for when it would end. 

# How did you figure out what the issue with the error was?
# For the first problem I copied the code into repl.it and ran it there to see what was the issue. I then noticed how the error was repeating there and then pieced together what was happening. 

# Were you able to determine why each error message happened based on the code?
# Yes, although in cloud9 it shows the errors a little differently. The pieces are all the same as the example in Release 1's instructions, they are just in different orders. So it took a bit of expsure to grow used to how they list where and what is the issue with the code. 

# When you encounter errors in your future code, what process will you follow to help you debug?
# Isolate, test, refactor, repeat. Also using my Google-fu to investigate the issue. 