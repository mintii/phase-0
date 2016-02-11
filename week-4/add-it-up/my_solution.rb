# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Tomasz Sok].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of Numbers
# Output: Calculate the sum of all the numbers
# Steps to solve the problem.


# 1. total initial solution



# 3. total refactored solution

# 4. sentence_maker pseudocode

# Looking at this from my notes: 
# numbers = [1,2,3,4,5]
# numbers.each { |element| puts element}
#  Take this array and for each eleemnt, print it to the console. 

# Therefore... 
# #Starting sum at 0, take this array and at each point i add it to sum

# Steps to solve the problem.


def total(x)
    x.inject(0) {|sum, i|  sum + i }
end


# 5. sentence_maker initial solution

array = ["alaska", "has", "over", 586, "thousand", "miles"]

def sentence_maker(x)
    sentece = x.join(" ") + "."
    sentece.capitalize
end

# 6. sentence_maker refactored solution

