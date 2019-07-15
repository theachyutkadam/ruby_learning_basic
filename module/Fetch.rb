$LOAD_PATH.unshift('.')
require "b.rb"
# require "Comment_perpand.rb"

puts B_DATA

class Test
  prepend Comentable
  prepend Comentable2
  def comment
    puts "this is the class comment method"
  end
end

Test.new.comment
t = Test.new
t.comment
