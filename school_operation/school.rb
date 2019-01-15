# puts "*****Welcome To SCHOOL PROJECT******"

# i = 0
# print "Enter your school name : "
# school_name = gets
# puts "The School Name is : #{school_name}"
# puts

# print "How many class are you like to Add : "
# number_of_class = gets.chomp.to_i
# classroom = []
# while i < number_of_class
# 	print "Enter your #{i+1} class name : "
# 	c_name = gets.to_s.capitalize
# 	classroom << c_name
# 	i +=1
# end

# puts
# puts "Your Class Details : "
# classroom.each {|cls| puts "#{cls}"}

# puts "Add Student Details : "
# print "Enter Student Name : "
# stud_name = gets	
# print "Enter Student Age : "
# stud_age = gets.to_i
# print "Enter Student Mark(%) : "
# stud_mark = gets.chomp.to_f
# student_info = {stud_name: stud_name, stud_age: stud_age, stud_mark: stud_mark}
# puts "--------------------------------"
# student_info.each {|stud| puts "#{stud}"}
# puts "--------------------------------"

print "Enter Your Choice : "
n = gets.chomp.to_i
case n
when 1
	puts "Add New ClassRoom : "
when 2
	puts "Add New Student : "
when 3
	puts "List of ClassRoom"
when 4
	puts "List of Student : "
else
	puts "Wrong Choice! "
end