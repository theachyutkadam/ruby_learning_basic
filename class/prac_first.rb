$var_value = "definelabs"
class Prac_first
	def first_statement
	puts "first_statement function #{$var_value}"	
	end
end
class Prac_second
	def second_statement
		puts "second_statement function #{$var_value}"
	end
end

puts "======================"
puts
first_class = Prac_variable.new
second_class = Prac_second.new
first_class.first_statement
second_class.second_statement
puts
puts "======================"