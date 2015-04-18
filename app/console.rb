require 'pry'

require './author'
require './post'

def reload
  load './author.rb'
  load './post.rb'
end

Pry.start
