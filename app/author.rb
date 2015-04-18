class Author
  attr_accessor :name

  def posts
    # Ask the Post class for all the blog posts that belong to this current author
    Post.find_by_author_name(self.name) #=> [#<Post<, #<Post>]
  end
end
