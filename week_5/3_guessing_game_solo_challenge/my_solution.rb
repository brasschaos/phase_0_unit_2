# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    new_game = GuessingGame.new
    if answer = NaN
    	raise 'ArgumentError'
  end
  
  def guess
  	guess = gets.chomp!("^.^ Please enter your guess! : (a number)")
  	if guess == NaN
  		guess = gets.chomp!(":/ Please enter a number as your guess, human: ")
  		if guess == NaN
  			puts "Foolish humans, return to your shopping malls."
  			raise 'ArgumentError'
    	end
    end
  end

  def solved
  solved = false
  if guess > answer
  		return :high
  		new_game.guess
  elsif guess < answer
  		return :low
  		new_game.guess
  elsif guess == answer
  	solved = true
  end
end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
