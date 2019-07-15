class Vehicle
  attr_accessor :odometer
  attr_accessor :gas_used

  def accelerate
    puts "Floor It"
  end
  def sound_horn
    puts "Beep! Beep!."
  end
  def steer
    puts "Turn front 2 wheels."
  end
  def mileage
    return @odometer / @gas_used    
  end
end

class Truck < Vehicle
  def ak
    puts "it's me achyut"
  end
end
class Car < Vehicle
  def steer
    puts "Turn front 2 wheels."
  end
end
class Motorcycle < Vehicle
end



truck = Truck.new("10 tire")
car = Car.new.steer

truck.accelerate
truck.steer

car.odometer = 11432
car.gas_used = 355
puts car.mileage