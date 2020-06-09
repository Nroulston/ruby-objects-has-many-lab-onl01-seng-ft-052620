require "pry"

class Artist
  attr_accessor :name
  
  @@all = []
  def initialize(artist_name)
    @name = artist_name  
    save
  end
  
  def save
    @@all << self
  end
  
  # takes the song object and accesses the artist reader
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    
  end

  def songs
  Song.all
  end

  def self.song_count
    Song.all.count
  end
  
 
end








