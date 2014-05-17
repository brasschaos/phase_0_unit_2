# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, solo challenge ].

# 1. Pseudocode

# What is the input? the input is an array of numbers or strings
# What is the output? (i.e. What should the code return?) 
# What are the steps needed to solve the problem? shouldsee which type of array it is, then run it through the appropriate code


# 2. Initial Solution          hadnt looked up median yet, was going for mathmatical average
# def median(array)
# sum = 0
# average = 0
# 	array.each do |i|
# 		sum = sum + i
# 	end
# 	average = sum/array.length
# end


# and then research, and evolved into

# def median(array)
#   	array.sort!
#   if array.length.odd?
# 		return array[array.length / 2]
# 		end
#   if array.length.even?
# 		return array[(array.length -1) / 2]
# 	end
# end


# 3. Refactored Solution

# def median(array)
#   	array.sort!
#   if array.length.odd?
# 		return array[(array.length -1) / 2]
# 		end
#   if array.length.even?
# 		return array[(array.length) / 2]
# 	end
# end

# post pairing session with justin 5/14/2014
def median(array)
  	array.sort!
  	half = array.length / 2
  if array.length.odd?
		return (array[half  + 0.5])
		else
		return ((array[half] + array[half -1]) / 2.0)
	end
end

# 4. Reflection 

# rspec is really cool
# 
# 
# 
# 
# 
# 
# 
