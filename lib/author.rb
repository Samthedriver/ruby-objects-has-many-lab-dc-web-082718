class Author
  attr_accessor :name, :songs, :posts
  attr_reader :all
  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.add_post(post)
  end

  def self.post_count
    allposts_count = 0
    @@all.each do |author|
      post_count = author.posts.length
      if post_count != nil
        allposts_count += post_count
      end
    end
    allposts_count
  end

end
