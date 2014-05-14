# U2.W4: Create Accountability Groups


# I worked on this challenge [by myself].

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


def groupMaker(array)
  acctGroups = Hash.new

   var count = 0   
  array.each do |eye|
        group1[] = group1 + eye + " "   # adding names to first group
        count ++                        # 
        if count % 4 == 0               # counting up to 4
                  
        
end





# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 


