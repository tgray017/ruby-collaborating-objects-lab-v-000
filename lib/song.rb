require 'pry'

class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end 
  
  def self.new_by_filename(file_name)
    song = self.new(file_name.split(" - ")[1])
        binding.pry
    song.artist = Artist.find_or_create_by_name(file_name.split(" - ")[0])
  end
  
end


file_name = "Old Crow Medicine Show - Wagon Wheel - folk.mp3"
Song.new_by_filename(file_name)
# song.artist = artist