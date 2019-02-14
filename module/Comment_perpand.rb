module Comentable
  def comment
    puts "i like module"
  end
end

module Comentable2
  def comment
    puts "i like module its second module"
  end
end


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
