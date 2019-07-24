require "pry"

class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name 
  end
  
  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    song = Song.new(song_name)
    song
    artist_object = Artist.find_or_create_by_name(filename)
  end
  
end