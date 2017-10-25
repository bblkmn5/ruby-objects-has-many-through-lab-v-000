class Artist
    attr_accessor :name

#initialize with name and empty collection of songs
  def initialize(name)
    @name = name
    @songs = []
  end

#adds a new song to artist's @songs array
  def add_song(song)
    @songs << song
#tells song it belongs to the artist
    song.artist = self
  end

#has many songs
  def songs
    2songs
  end

#has many genres, through songs
  def genres
    @songs.collect do |song|
      song.genre
    end
  end
end
