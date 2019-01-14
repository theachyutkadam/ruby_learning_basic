# we are dirctly show are defination massage on screen using << symbol
class User
  class << self
    def food
      puts "Ruby !!!"
    end
  end
  
  def foods
    puts "Rails !!!"
  end
end
puts User.food
puts User.new.foods