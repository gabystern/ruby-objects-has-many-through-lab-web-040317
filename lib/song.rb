class Song

  attr_accessor :name, :genre, :artist

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
  end

  # def add_song(song)
  #   song.genre = self
  # end

end
