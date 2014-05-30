# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself, with: ].


# Pseudocode


# define play method(song_title)
# print "playing song_title + .."
# end play method

# define includes?(song_title)
# if self includes song_title return true
# end includes?

# define display
# prints list in order
# end display

# define add method(title)
# add song_title array to end of my_playlist array
# end add method

# define num_of_tracks
# return self.size
# end num_of_tracks             songs will == 1
#                               playlist will == current size

# define remove method(song_title)
# removes song_title from my_playlist, wherever it is
# if song isnt in list, ends normally since the idea is to get the song off the list anyway
#   possible expansion to only remove first occurance if song is in list multiple times, or all occurrances. not sure yet
# end remove method

# define play_all method
# loop through my_playlist once, from top to bottom
# print out "playing song_title..." for #each song
# when reach end of list print out "playlist finished"
# 	end play_all method

# define Playlist class(song1, song2, song3)
# define initialize method
# add songs to list[[song1],[song2],[song3]]
# end initialize method

# define class Song(song_title, song_artist)

# define initialize method
# create array variable called song_title, containing one index, song_artist
# end initialize method

# Initial Solution



class Playlist		#creates new playlists
		attr_reader :playlist
	
	def initialize(*songs)
		@playlist = songs
		if @playlist.empty?
		puts "Creation failed.."
		else
		puts "Playlist created.."
	  	end
    end

	def add(*songs) # adds a song or songs to a list. 
		songs.each {|song| @playlist << song}
		puts "#{songs.length} songs added.."
	end
	
	def num_of_tracks       # says how long a list is
		return @playlist.length
	end
	
	def remove(song)			# removes a song from a list
		@playlist.delete(song)
		puts  "Song removed.."
	end

	def includes?(searchForThisTrack)			#checks to see if a song is in a list
	@playlist.include?(searchForThisTrack)
	end
	
	def play_all 					# runs #play on each list item
		puts "Playing all!"	
		@playlist.each {|song| song.play}
		puts "List finished.."
	end

	def display
		puts "Display songs in list with a loop"
	end

	
end


class Song	 # creates songs
	
		attr_reader :song_title, :song_artist
	
	def initialize (title, artist)		
		@song_title = title
		@song_artist = artist
		puts "Initialized: " + @song_title + " by " + @song_artist
	end

	def play         #plays a song
		puts "Now playing: " + @song_title + " by " + @song_artist + ".."
	end

	end


# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 							 # 7 methods to define: add, num_of_tracks, play, remove, includes?, play_all, display
my_playlist.add(lying_from_you, angels)

p my_playlist.num_of_tracks == 5

going_under.play

my_playlist.remove(angels)

p my_playlist.includes?(lying_from_you) == true

my_playlist.play_all

my_playlist.display





# Reflection 