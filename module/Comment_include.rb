module Comments1
  def comment
    puts "I like module comment"
  end
end

module Comments2
  def comment
    puts "I like 2nd comment"
  end
end

class First
  include Comments1
  include Comments2
  def comment
    puts "class comment"
  end
end

class Second
  include Comments1
end

Second.ancestors

First.new.comment
s = Second.new
s.comment