# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself, with: ].


# Original Solution

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


# Refactored Solution


# ugh i never got it working from my own original code. maybe not today but this one has been
# enough to make me eager to come back when i know my way around ruby well enough to do it the way
# i CHOSE instead of ANY way that will work.. enjoyed it as a challege though, bothered me all week :)



# DRIVER TESTS GO BELOW THIS LINE

