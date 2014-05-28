# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode

# Initial Solution
def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end

  p create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
  p create_word(boggle_board, [0,1], [0,2], [1,2]) #=> returns "rad"

# Refactored Solution
# n/a

# DRIVER TESTS GO BELOW THIS LINE
p create_word(boggle_board, [2,1], [3,1], [3,2], [3,3])                                    == 'cake'
p create_word(boggle_board, [2,3], [3,3], [2,2], [3,1], [3,0], [2,0])                      == 'relate'
p create_word(boggle_board, [0,1], [2,0], [1,3], [3,1], [2,2], [1,0], [0,2], [3,0], [3,3]) == 'retaliate' # hashtag NWA

# Reflection 
#
# seems pretty straightforward. that create_word method took me a few readings to wrap my head around
#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# Initial Solution
def get_row(board, row)
 board[row]
end

# Refactored Solution
#
# n/a

# DRIVER TESTS GO BELOW THIS LINE

p get_row(boggle_board, 1) ==  ["i", "o", "d", "t"]

# Reflection 
#
# simple enough


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Initial Solution
def get_column(board, col)
	board.map {|row| row[col] }
end
# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
p get_column(boggle_board, 1) == ["r", "o", "c", "a"]

# Reflection 
#
# i didn't fully understand #create_word until after this one, and using #map myself