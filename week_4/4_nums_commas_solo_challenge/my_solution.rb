# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input? an integer
# What is the output? a sting with the same number with commas inserted every 3 digits
# What are the steps needed to solve the problem? convert the int to a string then add the comma to the right place(s)
# based on the size of the numbers being tested by the spec file......


# 2. Initial Solution  (lazy)

# def separate_comma(int)
# 	string = int.to_s
# 	if string.length >= 7
# 		string = string.insert(-4, ",")
# 		string = string.insert(-9, ",")
# 	elsif string.length <= 6 && string.length >= 4
# 		string = string.insert(-4, ",")
# 	else return string
# 	end
# end
# 3. Refactored Solution (open ended)

def separate_comma(int)
	intString = int.to_s
	intString.to_s.reverse.scan(/\d{1,3}/).join(",").reverse
end

# Reflection
#
#  I looked at the spec for a long time, trying to avoid doing all the business with the slashes and the {1,3}.
#  At one point during this exercise I realized that 90% of the time I spend on these exercises is trying to use the tricks from before,
#  and not using what new things are being shown in each exercise. I may have copied the from the spec file more or less, but its the only thing 
#  I've tried that worked perfectly. So I need to remember that with each exercise, I'm supposed to use new material, not try to make it work purely
#  with what I already know.