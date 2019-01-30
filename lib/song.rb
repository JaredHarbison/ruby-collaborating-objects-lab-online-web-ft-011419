
class Song 
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(filename)
    artist_name, song_name = filename.split(" - ")
    song = self.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)
  end
  
end 