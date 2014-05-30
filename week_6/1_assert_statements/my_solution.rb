# U2.W6: Testing Assert Statements
 
# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
#
# method definition
#   raises an assertion failed unless the code outside the method is true
# method end

# defines variable name as 'bettysue'
# true assertion for contents of name variable
# false assertion for inconsistant value to name variable, error raised

# 3. Copy your selected challenge here

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


game = GuessingGame.new(600)

puts game.guess(599) == :low # => true
puts game.guess(601) == :high # => true
puts game.guess(600) == :correct # => true



# 4. Convert your driver test code from that challenge into Assert Statements
p assert {game.guess(600) == :correct}
p assert {game.guess(599) == :low}            #   } all return nil
p assert {game.guess(601) == :high}

# 5. Reflection
# As ruby does, it's an alternate method for testing. I'm sure there are situations that
# each are preferred. The trick is to not comment out the assert method.