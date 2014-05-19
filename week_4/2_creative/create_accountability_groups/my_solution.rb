# U2.W4: Create Accountability Groups


# I worked on this challenge with Justin Harnoss.

# 2. Pseudocode

# Input:       An array of first names
# Output:      Names seperated into groups of 4 as evenly as possible
# Steps:       Iterate through the array, placing names into variables. Every 5th person is the 1st in a new variable
#              so as to have groups of 4. For every remainder name after sorting them into 4, each group will receive
#              one extra name (with 2 left over, group1 gets a fifth member and so does group2.
#              With 3 names left over, groups 1, 2, and 3 would each get a fifth member.
#              Initally it sounds like nested loops for this one, maybe a method for creating new groups.
#              Actually I'll try using a hash so I dont have to try and create variables on the fly. 
#              I don't want to define groups from the start, I'd rather create them as needed for Tony Hawk style points.
#
#         
#         array[eye]?
# 
# 3. Initial Solution


# def groupMaker(array)
#   acctGroups = Hash.new

#    var count = 0   
#   array.each do |eye|
#         group1[] = group1 + eye + " "   # adding names to first group
#         count ++                        # 
#         if count % 4 == 0               # counting up to 4
                          
# end





# 4. Refactored Solution

# def groupMaker(array)
#   array.shuffle!
#   acctGroups = []
#    until array.empty?
#   acctGroups.push(array.pop(4))
#   end
# end

def create_cohort(n)
  $cohort = Array.new
  i = 1
  (n).times do
  $cohort.push("Person "+ i.to_s)
  i += 1
  end
  puts $cohort
end

def groupMaker(array)
  array.shuffle!
  acctGroups = []
   until array.empty?
  acctGroups.push(array.pop(4))
  end
  acctGroups.each do |g|
    if g.length < 4
   g.push(acctGroups.pop(4))      
end




# 1. DRIVER TESTS GO BELOW THIS LINE    >>> Copied from Harnoss and adapted <<<


#1 Takes an array as input
def test1(array)
	puts "Test1: Should take an array as argument -> "
	array.class == Array ? true : false
end
#2 Gives an array as ouput
def test2(array)
	puts "Test2: Should return an array -> "
	groupMaker(array).class == Array ? true : false
end

#3 Gives an array of arrays as output
def test3(array)
	puts "Test3: Should return an array of arrays -> "
	groupMaker(array).any? {|x| x.class != Array} ? false : true
end

#4 Groups have max 4 members
def test4(array)
	puts "Test4: Groups should have 4 members max -> "
	groupMaker(array).any? {|x| x.length > 4} ? false : true
end

#5 Creates groups randomly
def test5(array)
	puts "Test5: Groups should be created randomly ->"
	groupMaker(array) != groupMaker(array) ? true : false
end

#TESTS
test1($cohort)
test2($cohort)
test3($cohort)
test4($cohort)
test5($cohort)




# 5. Reflection 

# Man this was more complex than i thought it would be, mostly because driver code is giving me a lot of trouble. 
# Justin helped me realize a few new ideas, which helped me cut my code down by several lines.
