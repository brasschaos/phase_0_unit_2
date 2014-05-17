# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input? an array
# What is the output? the given array, padded up to the given size, with new indices containing a set string or other object
# What are the steps needed to solve the problem? determine size of given array, set new size to goal size, fill extras with apple
# Two methods, one that creates a new array with the solution, one where the solution is the same variable as the given array.


# 2. Initial Solution                Destructive
# Class Array
# def pad!(pad_size, padding = nil)
# 	return self if self.length >= pad_size

# 	until self.length == pad_size
# 		self.push(padding)
# 	end

# end
# ########                             Constructive
# Class Array
# def pad(pad_size, padding = nil)
# ary = self.dup
# 	until ary.length == pad_size.length
# 		ary.push(padding)
# 	end
# end


# 3. Refactored Solutions
class Array
def pad(size, padder = nil)
	ary = self.dup
	while ary.length < size
		ary << padder
	end
	return ary
end

def pad!(size, padder = nil)
	while self.length < size
		self << padder
	end
	return self
end
end

# 4. Reflection 
# More new methods! enumerators and self are new ones to me, but seem simple enough. I spent most of my time trying to find out how to
# link the enumerator to the blocks inside the method. Also, class does not need to be capitalized. Thats a note to myself.
