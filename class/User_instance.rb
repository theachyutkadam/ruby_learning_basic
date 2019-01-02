class User_instance
	def self.first_name(f_name)
		puts "users first_name is : #{f_name}"
		@@first_name = f_name
	end

	def village_name(v_name)
		puts "#{@@first_name} village name is : #{v_name}"
		@add = v_name
	end

	def address
		puts "users address is : #{@add}"
	end
end

User_instance.first_name("achyutam")
user_obj = User_instance.new
user_obj.village_name("saykhindi")
user_obj.address