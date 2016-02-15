# Longest String

# I worked on this challenge [by myself].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  # Your code goes here!
  word_hash = Hash.new
  list_of_words.each do |word|
    word_hash[word] = word.length
  end
  word_length = Array.new
  word_hash.each_value do |value|
    word_length.push(value)
  end
  length_sorted = word_length.sort
  tall_one = length_sorted.last
  word_hash.key(tall_one)
end

list_of_words = ["cat", "ruby", "christopher"]
p longest_string(list_of_words)