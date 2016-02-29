# columns = [0, 1, 2, 3, 4]
# board = [
#           [47, 44, 71, 8, 88],  #index 0
          
#           [22, 69, 75, 65, 73], #index 1
        
#           [83, 85, 97, 89, 57], #index 2
          
#           [25, 31, 96, 68, 51], #index 3
       
#           [75, 70, 54, 80, 83] #index 4
#                                 ]
# apple = columns.to_i
# p board_b = board[apple][0]
# p board_i = board[apple][1]
# p board_n = board[apple][2]
# p board_g = board[apple][3]
# p board_o = board[apple][4]
# p "Bingo!"

# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard
  def initialize(board)
    @bingo_board = board
    @call_number = call_number
    
  end
  
  def bingo_board
      puts "B  I  N  G  O"
      puts "-------------"
      @bingo_board.each do |row|
         puts row.map { |column| column.to_s + "" }.join(" ") 
      end
  end
  
  def call_number # will run by randomly choosing a letter and number. 
    letters = ["B", "I", "N", "G", "O"]
    random_num = 54  #rand(50...60)
    call_letter = "N" #letters.sample
    @call_number = Hash[:letter, call_letter ,:number, random_num]
  end
  
  def board_labels
    bingo_hash= Hash.new
    counter = 0
    @bingo_board.each do |row|
      bingo_hash["B#{counter}"] = row[0]
      bingo_hash["I#{counter}"] = row[1]
      bingo_hash["N#{counter}"] = row[2]
      bingo_hash["G#{counter}"] = row[3]
      bingo_hash["O#{counter}"] = row[4]
      counter += 1
    end
     bingo_hash
  end
  
  def bingo_hash
    @bingo_hash = board_labels
  end
  
  def match_holder
    @match = Array.new
  end
  
  def appears_on_board
    match_holder
    bingo_hash.each_pair do |letter, number| 
      if letter.include?(call_number[:letter])
        if  bingo_hash[letter] == call_number[:number]
           @match.push(letter, bingo_hash[letter]) 
           return "We have a match!"
        end
      else
        "Sorry, try again!"
      end
    end
  end
  
  def match
    @match_letter = @match[0]
    @match_letter.split(//)  # array includes call letter and it's location [0] is the letter [1] is the row location
    @match_number = @match[1]  
  end
  
  def board_change
    @bingo_board.each do |row|
        row.each do |value|
          if value == @match_number
            found_row = @bingo_board.rindex(row)
            found_column = row.rindex(value)
            @bingo_board[found_row][found_column] = "X" 
          end
        end
      end
  end 
  
  def mark_x
     appears_on_board
    match
    if @match_letter[0] == "B"
      board_change
    elsif  @match_letter[0] == "I"
      board_change
    elsif  @match_letter[0] == "N"
      board_change
    elsif  @match_letter[0] == "G"
      board_change
    elsif  @match_letter[0] == "O"
      board_change
    else
      "Something is wrong..."
    end
  end
  
  def display
      puts "B  I  N  G  O"
      puts "-------------"
      @bingo_board.each do |row|
         puts row.map { |column| column.to_s + "" }.join(" ") 
      end
  end
  
end 
  

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.bingo_board
puts ""
puts "We're calling the number #{new_game.call_number[:letter]} #{new_game.call_number[:number]}"
p new_game.appears_on_board
new_game.mark_x
new_game.display



#Reflection

# How difficult was pseudocoding this challenge? What do you think of your 
# pseudocoding style?
    # It was difficult to pseudocode. I had difficulty with trying to write out 
    # Ruby classes as psuedocode. 

# What are the benefits of using a class for this challenge?
  # I don't need to pass through as many arguments. Everything feels like it's 
  # _kind_ of working in unison. 

# How can you access coordinates in a nested array?
  # You can iterate through each row, and then iterate through each index of
  # the rows. 

# What methods did you use to access and modify the array?
  # I passed my board into a hash, and then the matching call into an array. 
  # Next, I used the match array to iterate back into my board and change the location into an X. 

# Give an example of a new method you learned while reviewing the Ruby docs. 
# Based on what you see in the docs, what purpose does it serve, and how is it called?
  # I really enjoyed discovering rindex. It can be used to help find the index 
  # value while iterating through an array. 
  
# How did you determine what should be an instance variable versus a 
# local variable?
  # I made everything instance variable. I figured it would be needed again with
  # a different method. 

# What do you feel is most improved in your refactored solution?
  # I still need to do the refactored solution. This needs lots of work. 
  # I can't get my call numbers to work when using random numbers. It causes 
  # other parts of my class to break. 
  # My class is terribly long, so it could use a good day's effort to refactor it. 
