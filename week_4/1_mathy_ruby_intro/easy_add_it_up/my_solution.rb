# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input? The input is an array of numbers
# What is the output? The output is the sum of the numbers in the array
# What are the steps needed to solve the problem? I will iterate over the array, adding the next number to a total within a variable
# that it returns after the loop is complete


# 2. Initial Solution
# def total(Array)
#	toats = 0
#	Array.each do |i|
#		toats = toats + i
#  end



# 3. Refactored Solution
def total(array)
	toats = 0
	array.each do |i|
		toats = toats + i
end
return toats
end

# 4. Reflection 

# Capitalized array as the argument for some reason, forgot to return total in the initial.
# Refactored seems to work according to rspec at this point, proceding to sentance_makes


# 1. Pseudocode

# The input is an array of strings or numbers
# The output is a structured sentance containing the elements in the array, in order.
# First, all array elements must be made into strings if they are not already strings.
# Second, the elements will be iterized over one by one and placed into a string variable as a complete sentance.

# 2. Initial Solution
#
# def sentence_maker(array)
#  complete = ()
#  array.each do |i|
#  complete = complete + i.to_s
#  end
#  puts complete
# end

# 3 Refactored Solution

def sentence_maker(array)
	complete = ""
	array.each do |i|
		complete = complete + i.to_s + " "
	end
	complete.insert(-2, ".")
	return complete.strip.capitalize
end

# 4. Reflection

# Seemed pretty simple, my impressions of how to structure the code and the order in which to do things was not far off.
# needed a little cleanup at the end so i learned those new methods, .strip and .insert
# yay! it checks out with rspec, 8 examples 0 failures
#   I changed the 'require_relative' in the array_total_spec.rb to just 'require', it wasnt working before that.
#
