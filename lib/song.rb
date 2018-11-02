require 'pry'
require_relative 'artist.rb' 
require_relative 'mp3_importer.rb' 

class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end 
  
  def self.new_by_filename(file_name)
    song = self.new(file_name.split(" - ")[1])
    song.artist = Artist.find_or_create_by_name(file_name.split(" - ")[0])
    song.artist.save
    song
  end
  
end


file_name = "Michael Jackson - Black or White - pop.mp3"
new_instance = Song.new_by_filename(file_name)
# song.artist = artist