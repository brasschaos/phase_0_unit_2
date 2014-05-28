# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: an array of strings
# Output: a generated die with the input strings as the faces of the sides
# Steps: same as before but #length and the array indicies will be employed
# => create object
# => set #sides to return proper number of sides
# => set roll to return the string at the randomly selected index within the array of strings


# 3. Initial Solution

# class Die
#   def initialize(sides)
#     @sides = sides
#      raise ArgumentError if sides.empty?
#   end
  
#   def sides
#     return @sides.size
#   end
  
#   def roll
#     return rand(@sides)+1
#   end
# end



# 4. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
     raise ArgumentError if sides.empty?
  end
  
  def sides
    return @sides.size
  end
  
  def roll
    return @sides[rand(@sides.size)]
  end
end





# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
# tricky tricky. no research required, just used to spec file and the rspec results to tweak it right