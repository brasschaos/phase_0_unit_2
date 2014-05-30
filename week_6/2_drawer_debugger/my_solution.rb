# U2.W6: Drawer Debugger


# I worked on this challenge [by myself, with: ].


# 2. Original Code

class Drawer

attr_reader :contents

# Are there any more methods needed in this class?

	def initialize
		@contents = []
		@open = true
	  end

	def open
		@open = true
	  end

	def close
		@open = false
	  end 

	def add_item(item)
		@contents << item
	  end

	def remove_item(item = @contents.pop) #what is `#pop` doing?
		@contents.delete(item)
	  end

	def dump(item = contents.pop)  # what should this method return?    i get the feeling it should empty the drawer all at once
		@contents.each {|item| @contents.delete(item)}
		if @contents.empty?
		puts "Your drawer is on the_floor."
	else puts "Your drawer is not empty"
	  end
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	  end
end

class Silverware
attr_reader :type

# Are there any more methods needed in this class? omg yes!

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	  end

	def eat
		puts "Eating with the #{type}!"
		@clean = false
	  end

	def clean_silverware
		puts "cleaning the #{type}!"
		@clean = true
	end

end

the_floor = Drawer.new
puts "floor created"
knife1 = Silverware.new("knife1")
puts "created knife1"
silverware_drawer = Drawer.new
puts "drawer created"

silverware_drawer.add_item(knife1)
puts "knife1 added to silverware_drawer"

silverware_drawer.add_item(Silverware.new("spoon"))
puts "created and added spoon to silverware_drawer"

silverware_drawer.add_item(Silverware.new("fork"))
puts "created and added fork to silverware_drawer"

silverware_drawer.view_contents

silverware_drawer.remove_item
puts "removed top item from silverware_drawer"
silverware_drawer.view_contents
puts "remaining silverware is shown"
sharp_knife = Silverware.new("sharp_knife")
puts "created sharp_knife"

silverware_drawer.add_item(sharp_knife)
puts "put sharp_knife in silverware_drawer"
silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
puts "removed sharp_knife from silverware_drawer"
removed_knife.eat
puts "ate with sharp_knife, destroyed sharp_knife and created removed_knife"
removed_knife.clean_silverware
puts "cleaned removed_knife, destroyed removed_knife and created sharp_knife"
silverware_drawer.add_item(sharp_knife)
puts "put sharp_knife in silverware_drawer"
silverware_drawer.view_contents
silverware_drawer.dump
puts "emptied silverware_drawer"
silverware_drawer.view_contents #What should this return? nothing cause its empty now
puts "should be empty"
fork = Silverware.new("fork")
puts "created fork, drawer empty" #add some puts statements to help you trace through the code...
fork.eat
puts "ate with fork"

#BONUS SECTION

fork.clean_silverware
silverware_drawer.add_item(fork)
puts "put the fork in the drawer"
silverware_drawer.view_contents

# DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 