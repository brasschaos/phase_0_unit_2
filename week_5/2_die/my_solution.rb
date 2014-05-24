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

class Die
  def initialize(labels)
  stringDie = Die.new
  	if labels.empty?         # it cant have a negative value cause its an array 
  	raise 'ArgumentError'
  	end
  end

  def sides
  	return labels.length + " sided string-die."
  end

  def roll
  	theRoll = rand(labels[0]..labels[labels.length])
  	return theRoll
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
