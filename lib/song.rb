require 'pry'

class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end 
  
  def self.new_by_filename(file_name)
    name = file_name.split(" - ")[1]
    song = self.new(name)
    binding.pry
    artist_1 = file_name.split(" - ")[0]
    song.artist = Artist.find_or_create_by_name(artist_1)
  end
  
end


file_name = "Old Crow Medicine Show - Wagon Wheel - folk.mp3"
Song.new_by_filename(file_name)
# song.artist = artist