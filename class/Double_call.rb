# we are dirctly show are defination massage on screen using << symbol
class User
	class << self
		def food
			puts "Ruby !!!"
		end
	end
end
puts User.food