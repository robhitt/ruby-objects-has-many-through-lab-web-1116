class Artist
  attr_accessor :songs, :genres
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song_obj)
    @songs << song_obj
    song_obj.artist = self
  end

  def genres
    @songs.collect do |song_object|
      song_object.genre
    end
  end

end
