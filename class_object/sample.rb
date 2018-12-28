class Sample
  def speeding(vehicle_name, speed, fuel_type)
    puts "Vehicle Name #{vehicle_name}"
    puts "Speed = #{speed}"
    puts "Fuel Type = #{fuel_type}"
  end
  def driving(vehicle_name, speed, fuel_type)
    puts "Vehicle Name #{vehicle_name}"
    puts "Speed = #{speed}"
    puts "Fuel Type = #{fuel_type}"
  end
end

test = Sample.new
puts
test.speeding("discover", 120, "petrol")
puts "***************************************"
test.driving("fourtuner", 240, "diesel")
puts

class Customer
  def speeding(vehicle_name, speed, fuel_type)
    @vehicle_names = vehicle_name
    @speeds = speed
    @fuel_types = fuel_type

    print " #{@vehicle_names}"
    print " #{@speeds}"
    puts " #{@fuel_types}"
  end
end
test1 = Customer.new
test2 = Customer.new
test1.speeding("discover", "120", "petrol")
test2.speeding("fourtuner", "240", "diesel")