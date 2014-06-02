# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode
	create class
		define initialize method(name of board)
		set name of board to instance variable
	end initialize method

	define word creating method
	  iterate over coordinate inputs, taking the first and last characters of each coordinate pair and joining them together
	end word create method

	define row getting method
		take selected array element from within the greater array i.e. the row
	end row getting method

	define column getting method
	  iterate through each row, returning the item in each row matching the selected column
	end column getting method


# 3. Initial Solution


class BoggleBoard
 def initialize(board)
@board = board
 end

	def create_word(*coords)
		coords.map { |coord| @board[coord.first][coord.last]}.join("")
	end

	def get_row(row)
		@board[row].join("")
	end

	def get_col(col)
		@board[0][col] + @board[1][col] + @board[2][col] + @board[3][col]
	end

end

dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE


# create driver test code to retrieve a value at a coordinate here:
def assert 
	raise "Assertion failed!" unless yield
end



# implement tests for each of the methods here:
p boggle_board.get_row(0) == 'brae'
p boggle_board.get_col(3) == 'etre'

# 5. Reflection 