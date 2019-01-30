
class Song 
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(filename)
    split_name = filename.split(" - ")
    song = self.new(split_name[0])
    artist = Artist.find_or_create_by_name(split_name)
    artist.add_song(song)
  end
  
end 