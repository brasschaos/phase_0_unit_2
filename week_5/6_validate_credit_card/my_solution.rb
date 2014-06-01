# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: an integer
# Output: true or false
# Steps:
#	Check for right number of digits
# 	Split digits into individual elements
# 	Iterate over those elements to mimic Luhn alg, doubling every odd index
# 	Rejoin processed elements together
# 	Check their sum, return true of false


# 3. Initial Solution

# Don't forget to check on intialization for a card length of exactly 16 digits
class CreditCard

def initialize(card)

  cardNumber = card.to_s
  cardNumber.split("") #splits individual digits apart into 16 different elements
  unless cardNumber.size == 16
    raise ArgumentError
  end
  @cardNumber = cardNumber.to_i
end

# def check_card
# 	workable.reverse
# 	workable.each_index do |i|
# 	 if i % 2 == 0
# 	 	workable[i] = workable[i] * 2
# 	 end
# 	end
# 		workable.split("")
# workable.each do |j|
# 	sum += j
# 	if sum % 10 == 0
# 		return true
# 	end
# 	end
# end
#end
# 4. Refactored Solution

def checkpart1 # doubles the odd indicies
    @cardNumber.reverse
    @cardNumber.map.with_index do |n, i|
      if i.even?
        n *= 2
      else n
      end
    end
end

def checkpart2  # splits again after doubling
 sum = 0
 @cardNumber.join("")
 @cardNumber.split("")
 @cardNumber.each do |k|
  sum += k.to_i
end
end

def check_card   # computes and checks the sum for validation
if sum % 10 == 0
  return true
else return false
end
puts sum.to_s
end


end
# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
  raise 'AssertionError!' unless yield
end



# 5. Reflection 
#    had a lot of run around with this one. definitely looked at several other solutions in the process
#