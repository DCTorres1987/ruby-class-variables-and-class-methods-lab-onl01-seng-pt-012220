require 'pry'




# 5. Write a class method, .count, that returns the total number of songs created.


class Song

  # 2. There should be an attr_accessor for those three attributes.
  attr_accessor :name, :artist, :genre
  
  # 3. Create a class variable, @@count. We will use this variable to keep track of the number of new songs that are created from the Song class. Set this variable equal to 0.
  
  @@count = 0
  @@genre_count = 0
  @@artists = []
  
  # 7. You'll need a class variable, let's call it @@genres, that is equal to an empty array.
  @@genres = []

  # 1. Define your Song class such that an individual song is initialized with a name, artist and genre. 
  
 def initialize(name,artist,genre)
   @name = name 
   @artist = artist 
   @genre = genre
   
   # 4. At what point should we increment our @@count of songs? Whenever a new song is created. Your #initialize method should use the @@count variable and increment the value of that variable by 1.
   
   # 6. Write a class method, .genres that returns an array of all of the genres of existing songs. This array should contain only unique genres––no duplicates! Think about what you'll need to do to get this method working.
   
   @@count += 1
   @@artists << artist
   @@genres << genre
   
   @@genre_count += 1
   
 end
 
 # 9. Write a class method, .artists, that returns an array of all of the artists of the existing songs. This array should only contain unique artists––no repeats! Once again think about what you need to do to implement this behavior.
 
 def self.artists 
   @@artists.uniq!
 end
 
 def self.count
   @@genre_count 
end

def artist_count
end
 
end 