module Commentable
  def comment
    puts "module line...."
  end
end

class Post
  extend Commentable
  def comment
    puts "class line...."
  end
end

Post.comment
Post.new.comment