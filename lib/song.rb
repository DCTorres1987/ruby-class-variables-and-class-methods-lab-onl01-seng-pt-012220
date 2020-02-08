require 'pry'




# 5. Write a class method, .count, that returns the total number of songs created.


class Song

  # 2. There should be an attr_accessor for those three attributes.
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  # @@genre_count = 0
  @@artists = []
  @@genres = []


 def initialize(name,artist,genre)
   @name = name 
   @artist = artist 
   @genre = genre
   @@artists << artist
   @@genres << genre
   @@count += 1
  # @@genre_count += 1
 end
 
 def self.artists 
   @@artists.uniq!
 end
 
# def self.count
#   @@genre_count 
# end

# def artist_count
# end
 
end 