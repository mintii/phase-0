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
  attr_accessor :call_number, :appears_on_card
  
  def initialize(board)
    @bingo_board = board
    @call_number = call_number
    
  end
  
  def call_number # will run by randomly choosing a letter and number. 
    letters = ["B", "I", "N", "G", "O"]
    random_num = rand(1...100)
    call_letter = letters.sample
    puts "#{call_letter}#{random_num}"
  end
  
  def appears_on_card
    p self.board_labels 
    # p bingo_hash.find { |key, value| value[self.call_number]}
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
     @bingo_hash = bingo_hash
  end
  
  
end #end of class

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.appears_on_card
# new_game.board_labels

#Reflection

