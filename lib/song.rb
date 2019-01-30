
class Song 
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(file_name)
   artist_and_song = file_name.split(" - ")
   artist = Artist.new(artist_and_song[0]).save
   song = self.new(artist_and_song[1])
   song.artist = artist
   song 
  end 
  
    def self.new_by_filename(filename)
    artist_name, song_name, extra = filename.split(" - ")
    song = self.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)
  end
  
end 