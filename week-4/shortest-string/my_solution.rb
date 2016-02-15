# Shortest String

# I worked on this challenge [by myself,].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
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
  shorty = length_sorted.first
  word_hash.key(shorty)
end

list_of_words = ["cat", "ruby", "christopher"]
p shortest_string(list_of_words)