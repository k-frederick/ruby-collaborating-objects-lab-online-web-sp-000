class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end
  def self.all
    @@all
  end
  def self.new_by_filename(filename)

  end
  def artist_name=(name)

  end
end
