class Genre
  @@all = []

  attr_accessor :songs, :artists, :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    songs.map {|song| song.artist}
  end

  def self.all
    @@all
  end
end
