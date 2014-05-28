# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

# class GuessingGame
#   def initialize(answer)
#     new_game = GuessingGame.new
#     if answer = NaN
#     	raise ArgumentError
#   end
  
#   def guess
#   	guess = gets.chomp!("^.^ Please enter your guess! : (a number)")
#   	if guess == NaN
#   		guess = gets.chomp!(" >:( Please enter a number as your guess, human: ")
#   		if guess == NaN
#   			puts "Foolish humans. Return to your shopping malls."
#   			raise ArgumentError
#     	end
#     end
#   end

#   def solved
#   solved = false
#   if guess > answer
#   		return :high
#   		new_game.guess
#   elsif guess < answer
#   		return :low
#   		new_game.guess
#   elsif guess == answer
#   	solved = true
#   end
# end
# end



# 4. Refactored Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
  end
  
  def guess(num)
      @last_guess = num
      if num == @answer
        return :correct
      elsif num > @answer
        return :high
      elsif num < @answer
        return :low
      end
  end

  def solved?
     if @last_guess == @answer
      solved = true
    else solved = false
    end
end

end




# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(600)

puts game.guess(599) == :low # => true
puts game.guess(601) == :high # => true
puts game.guess(600) == :correct # => true




# 5. Reflection 
#
#  this one turned out to be more simple than i thought, and i wrote my first
#  original driver code, so ive got that going for me.