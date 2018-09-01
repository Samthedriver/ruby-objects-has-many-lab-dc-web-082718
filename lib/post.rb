class Post
  attr_accessor :title, :author
  attr_reader :all
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    if self.author == nil
      return nil
    end 
    self.author.name
  end

end
