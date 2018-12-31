class First_example
  def initialize
    puts "this is the constructor of super class"
  end
  def super_method
    puts "this is the super class method ... "
    puts "this method is super_class "
  end
end

class Second_class < First_example
  def initialize
    puts "this is the child class constructor"
  end
end

First_example.new
obj = Second_class.new
obj.super_method
