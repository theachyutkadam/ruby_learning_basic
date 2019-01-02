class Override
  def super_method
    puts "this is the parent class method"
  end
  def time
    puts Time.now
  end
end

class Ruby < Override
  def super_method
    puts "Override method & its child class method"
  end
  def first_name
    puts "achyut"
  end
end

rb = Ruby.new
puts "222222222222222"
rb.super_method
rb.first_name
rb.time
puts "222222222222222"
ror = Override.new
ror.super_method
