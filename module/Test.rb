module Food2
  def test_object
    p "second module"
  end
end
module Food
  VAR = 1
  def test_object
    p "first module"
  end
end

class Cookies
  include Food2
  include Food
end

# food = Cookies.new
# food.test_object
# Cookies.ancestors

puts Food::VAR