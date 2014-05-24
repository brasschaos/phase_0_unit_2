# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: an integer
# Output: true or false
# Steps: split input into individual digits
#        manipulate individual digits using array indicies to mimic luhn alg, one step at a time


# 3. Initial Solution

# Don't forget to check on intialization for a card length of exactly 16 digits
class CreditCard
def initialize(cardNum)
	if cardNum.length != 16
		raise 'ArgumentError'
	end
	@workable = cardNum.split("")
end

def check_card
	@workable.each do |i|
	 if @workable[i % 2 != 0]
	 	@workable[i] = @workable[i] * 2
	 end
	end
	@workable.join("")
		@workable.split("")
@workable.each do |j|
	sum += @workable[j]
	if sum % 10 == 0
		return true
end

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
