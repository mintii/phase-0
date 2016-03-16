# I worked on this challenge [by myself ].
# This challenge took me [#] hours.


# Pseudocode
=begin
1.  Take a List-A of numbers
2   Take an empty named List-B
3.  FOR EACH number on List-A 
4.  IF number on List-A % 3 == 0, Change that number to "Fizz".
        And then move Fizz to List-B.
    ELSE IF number % 5 == 0, Change that number to "Buzz".
        And then move Buzz to List-B. 
    ELSE IF number % 15 == 0, Change that number to "FizzBuzz".
        And then move FizzBuzz to List-B
    ELSE number is none of the above, so just move it to List-B.
5.  After all the numbers are checked, we will present the now filled List-B. 
=end 
# Initial Solution
unfizzed = [1, 2, 3, 4, 5, 10, 12, 15, 18, 20, 22, 23, 24, 25, 27, 30, 33, 35, 105]
# def super_fizzbuzz(array)
#   fizzed =[]
#   array.each do |number|
#     if number % 3 == 0 && number % 15 != 0
#       fizzed.push("Fizz")
#     elsif number % 5 == 0 && number % 15 != 0
#       fizzed.push("Buzz")
#     elsif number % 15 == 0
#       fizzed.push("FizzBuzz")
#     else
#       fizzed.push(number)
#     end
#   end
# p fizzed
# end

# Refactored Solution
def super_fizzbuzz(array)
  fizzed =[]
  array.each do |number|
    fizz = number % 3 == 0 
    buzz = number % 5 == 0 
    fizzbuzz = number % 15 == 0 
    if fizz && !fizzbuzz
      fizzed.push("Fizz")
    elsif buzz && !fizzbuzz
      fizzed.push("Buzz")
    elsif fizzbuzz
      fizzed.push("FizzBuzz")
    else
      fizzed.push(number)
    end
  end
p fizzed
end

super_fizzbuzz(unfizzed)


# Reflection'
=begin
What concepts did you review or learn in this challenge?
I reviewed array iteration and moving values from one array to another. 

What is still confusing to you about Ruby?
Finding novel ways to refactor my if/else statements! 

What are you going to study to get more prepared for Phase 1?
Refactoring. I found a new section in Stack Overflow that is for code review. 
I'm going to try browsing that for some Ruby discussions. 
=end