class Genre

  attr_accessor :songs, :artists
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

  def add_song(song_obj)
    @songs << song_obj
  end

  def artists
    @songs.collect do |song_object|
      song_object.artist
    end
  end

end
