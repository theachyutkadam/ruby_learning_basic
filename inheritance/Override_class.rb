class Override
  def super_method
    puts "this is the parent class method"
  end
end

class Ruby < Override
  def super_method
    puts "Override method & its child class method"
  end
end

# ror = Ruby.new
ror = Override.new
ror.super_method
