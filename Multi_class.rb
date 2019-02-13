class Test
  def name=(name)
    @name = name
  end
  def name
    @name
  end
end
obj = Test.new
obj.write_name = "ruby"
obj.read_name

class Mobile
  def name=(name)
    @name = name
  end
  def name
    @name
  end
end
mobile = Mobile.new
mobile.name = "vivo v9"
mobile.name #=> "vivo v9"

class Keyboard
  def name
    @name
  end
  def name=(name)
    @name = name
  end
end
keyboard = Keyboard.new
keyboard.name = "machanical"
keyboard.name

class Bike
  def name=(name)
    @name = name
  end
  def name
    @name
  end
end
bike = Bike.new
bike.name = "pulsar"
bike.name

class Laptop
  def name=(name)
    @name = name
  end
  def name
    @name
  end
end
laptop = Laptop.new
laptop.name = "DELL"
laptop.name

class Bottle
  attr_accessor :name
end
bottle = Bottle.new
bottle.name = "plastic"
bottle.name

class Food
  attr_reader :dish
  def initialize(dish)
    @dish = dish
  end
end
fd = Food.new("dal_khichdi")
fd.dish