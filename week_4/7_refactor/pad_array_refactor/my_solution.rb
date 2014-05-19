# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge [by myself ].



# 1. First Person's solution I liked
#    What I learned from this solution
# Copy solution here:





# 2. Second Person's solution I liked
#    What I learned from this solution
# Copy solution here:




# 3. My original solution:

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


# 4. My refactored solution:
 # There has to be a smarter way. id love to see it



# 5. Reflection

# It seems like just as my group was starting to come together, we had the groups allegedly shuffled for week_4. 
# Now it seems like its more difficult to pair, and the only pairing i've done this week was with someone out of my old group.