class Artist
  attr_accessor :name
  attr_reader :songs

  @@allartists = []

  def initialize(name="Beyonce")
    @name = name
    @songs = []
    @@allartists << self
  end

  def add_song(song)
    puts "Song: #{song}/n**********************/n/n/n/n/n"
    song.artist = self
    @songs << song
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    add_song(new_song)
  end

  def self.song_count
    song_count = 0
    @@allartists.each do |artist|
      current_count = artist.songs.length
      if current_count != nil
        song_count += current_count
      end
    end
    song_count
  end

  # def songs
  #   puts "All songs: #{@songs}/n**********************/n/n/n/n/n"
  #   @songs
  # end
end
