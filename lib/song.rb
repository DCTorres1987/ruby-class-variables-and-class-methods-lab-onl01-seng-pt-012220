require 'pry'




# 5. Write a class method, .count, that returns the total number of songs created.


class Song

  # 2. There should be an attr_accessor for those three attributes.
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genre_count = 0
  @@artists = []
  @@genres = []

 def initialize(name,artist,genre)
   @name = name 
   @artist = artist 
   @genre = genre
   @@artists << artist
   @@genres << genre
   @@count += 1
 end
 
 def self.count
  @@count 
end

def self.genres 
  @@genres.uniq!
end

 
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
  
 def self.artists 
   @@artists.uniq!
 end

def self.artist_count
    artist_count = {}
    @@genres.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1 
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
 
end 