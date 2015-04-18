class Post
  attr_accessor :title, :content, :author
  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_author_name(name)
    # Iterate over @@all and find the posts where the author's name is equal to name
    # [1,2,3,4,5].select {|num| num.even? }
    @@all.select {|post| post.name == name }
  end

end
