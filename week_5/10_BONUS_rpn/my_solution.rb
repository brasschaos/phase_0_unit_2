# U2.W5: Implement a Reverse Polish Notation Calculator


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: (a combination of ints and signs)
# Output: the restult of the complete equation
# Steps: split the method into individual characters
         # assess each character, if its a number, store it as one of the ints in the equation
                                    # if its a sign, do the equation involving the two previous ints and the sign
                                    # this will allow of multiple calculations per the readme example:
                                    # calc.evaluate('70 10 4 + 5 * -') # => 0

# 3. Initial Solution

class RPNCalculator
<<<<<<< HEAD
  def initialize(calc)
  @= calc
  end
  
  def evaluate
  
  end
=======
  def initialize(calculator)
    @calc = calculator
    @num1 = ""
    @num2 = ""
    @sign = ""
>>>>>>> 520cf2d1de03a5e0b1e881f5222ceb0595d0d790
end

def evaluate (*items)
  items.each {|i| 
      items.each {|k|  if i.symbol?
                        i = @sign
                      elsif i.number?
                        i = @num1
                    else return ArgumentError
                      end
                    }
                  if k.symbol?
                    k = @sign
                    elsif k.number?
                    k = @num
                        
                        
  
end

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
# I just kinda took a swing at it before the submission. i think i should loop 3 times until i have
# all 3 instance variables filled, the construct an equation out of them using the @variables to organize it properly
#
