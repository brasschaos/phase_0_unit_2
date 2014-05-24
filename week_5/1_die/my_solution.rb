# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:  a maximum number of sides
# Output: function generates a die that can be #roll-ed to return a random number up to the number of sides chosen.
# Steps: define number of sides as a n, set random floor to 1 and set random range cealing to n. Set function to return random number within range. 


# 3. Initial Solution

class Die
  def initialize(sides)
    die = Die.new
  end
  
  def sides
    return sides + " sided die."
  end
  
  def roll
    roll = rand(1..sides)
    return roll
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 