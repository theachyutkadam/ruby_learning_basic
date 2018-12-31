class First_super
  def display first = 0, second = 0
    puts "parent class ravi #{first} and surya #{second}"
  end
end
class Second_class < First_super
  def display(a, b)
    super
    super(a, b)
    super()
    puts "this is the sublclass method"
  end
end

obj = Second_class.new
obj.display("RK", "SK")
