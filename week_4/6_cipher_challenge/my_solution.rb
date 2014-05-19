# U2.W4: Cipher Challenge


# I worked on this challenge with: .



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



# def north_korean_cipher(coded_message)
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
#   decoded_sentence = []
#   cipher = {"e" => "a",   
#             "f" => "b",   
#             "g" => "c", 
#             "h" => "d", 
#             "i" => "e", 
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}
            
#   input.each do |x| # What is #each doing here? >>> Its looping over the coded message by individual character
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? 
#                          # >>> Its resetting the decoder, after it becomes true it sets the decoded letter into the decoded_sentance array.
#     cipher.each_key do |y| # What is #each_key doing here? >>> Iterating over the cipher hash for the value to change it to.
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#                  # >>> X is the input, which is the coded message. Y is the cipher key to which the value is the proper letter to decode the message.
#         # puts "I am comparing x and y. X is #{x} and Y is #{y}."        # >>> i dont understand why this is here
#         decoded_sentence << cipher[y]                 # >>> the key:value pair is placed into the result array
#         found_match = true                   # >>> reset_switch to tell if the coded character is translated or not
#         break  # Why is it breaking here? >>> to reset for the next letter since the input matched the cipher.
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" # What the heck is this doing? 
#         decoded_sentence << " "      # >>> Spaces in the code are represented by the special characters for 2 - 8, respectively
#         found_match = true           # >>> reset_switch
#         break
#       elsif (0..9).to_a.include?(x) # What does "(0..9).to_a" do?
#         decoded_sentence << x   # >>> creates [0, 1, 2, 3, 4, 5, 6, 7, 8 , 9], so if the coded message contains a number it remains unchanged
#         found_match = true       # >>> reset_switch, always the last thing before the break
#         break
#       end 
#     end
#     if not found_match  # What is this looking for? >>> if the input was not changed before, it is inserted into the result unchanged
#       decoded_sentence << x                                                                         
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")        # takes decoded input and makes it a typically readable string
 
#   if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. # >>> it looks for numbers in a string
#     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...            ...so we divide all numbers by 100
#   end
#   return decoded_sentence # What is this returning?                                                                     ...except his height
# end                       # >>> the processed but not necessarily decoded message                                          ...return 5'9" if height < 5'9"          

# Your Refactored Solution


def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("")
  decoded_sentence = []
  cipher = {"e" => "a",   
            "f" => "b",   
            "g" => "c", 
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
  input.each do |x|
    if x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*"
      decoded_sentence << " "
      break
    elsif x.match(/[a-z]/)    # no process to automate the cipher yet
      cipher.each_key do |y|
        if x == y
          decoded_sentence << cipher[y]    # goes once
      break
      end
    

    elsif x.match(/\d+/)
      decoded_sentence << x.to_i / 100
      break
    else decoded_sentence << x
      break
    end  
      decoded_sentence = decoded_sentence.join("")
      return decoded_sentence
  end
end


# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!")# == "i want a coke!" #This is driver code and should print true
# Find out what that hoon is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")# == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")# == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")# == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")# == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")# == "can somebody just get me 100 bags of cool ranch doritos?"            
# haha i love cool ranch


# Reflection
 # omg regular expressions are cool
 #  at this point i managed to refactor a few lines out of it but im pretty sure i need to implement the found_match switch to get
 #  it to do more than just the first letter
