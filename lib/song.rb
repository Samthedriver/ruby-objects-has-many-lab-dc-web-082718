


class Song
  attr_accessor :artist, :name
  attr_reader :all
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    if self.artist == nil
      return nil
    end
    self.artist.name
  end


end
