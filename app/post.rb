class Post
  attr_accessor :title, :content, :author
  @@all = []

  extend  #applies to class methods
  include #starts with i, goes for instance methods

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def author=(author)
    raise TypeError, "Post authors must be instances of Author" if !author.is_a?(Author)
    @author = author
  end

  def self.find_by_author_name(name)
    # Iterate over @@all and find the posts where the author's name is equal to name
    # [1,2,3,4,5].select {|num| num.even? }
    @@all.select {|post| post.name == name }
  end

end
