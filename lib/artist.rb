class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  def self.all
    @@all
  end
  def add_song(song)
    @songs << song
  end
  def songs
    @songs
  end
  def self.find_or_create_by_name(name)
    artist = @@all.find {|artist| artist.name == name}
  if artist == nil
    artist = Artist.new(name)
    artist.save
  end
  @@all.last
  end
  def print_songs
    songs.each { |song| puts song.name}
  end
  def save
    @@all << self
  end
end
