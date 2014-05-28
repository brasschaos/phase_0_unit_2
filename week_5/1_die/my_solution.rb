# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:  a maximum number of sides
# Output: function generates a die that can be #roll-ed to return a random number up to the number of sides chosen.
# Steps: define number of sides as a n, set random floor to 1 and set random range cealing to n. Set function to return random number within range. 

 
# 3. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
     raise ArgumentError if sides < 1
  end
  
  def sides
    return @sides
  end
  
  def roll
    return rand(@sides)+1
  end
end



# 4. Refactored Solution

# stayed pretty simple actually, only minimal method research




# 1. DRIVER TESTS GO BELOW THIS LINE 





# 5. Reflection 
# im clueless about producing driver code at this point, nothing i have read explains it
# in a way that makes sense to me as far as knowing what to type in to get the results i want.
# i could write a book report about the theory of driver code