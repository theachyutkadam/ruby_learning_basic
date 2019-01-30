class Classroom
  def create_class
    print "How many class are you like to Add : "
    number_of_class = gets.chomp.to_i
    @@classroom = []
    $school_count = @@classroom
    i = 0
    while i < number_of_class
      print "Enter your #{i+1} class name : "
      c_name = gets.to_s.capitalize
      @@classroom << c_name
      i +=1
    end
    puts "You Add Classroom successfully"
    puts " 1 Display ClassRoom : "
    puts " 2 See Menu list : "
    puts " 3 Exit : "
    print "Enter Your Choice : "
    n = gets.chomp.to_i
    case n
    when 1
      obj_classroom = Classroom.new
      obj_classroom.display_class
    when 2
      obj_school_info = School.new
      obj_school_info.choice_number
    when 3
      puts "Thanks You"
    else
      if n >=4 || n <=0
        puts "Wrong Choice! Plz Enter the 1 to 4 "
      end
    end
  end

  def display_class
    puts "Your Class Details : "
    if @@classroom.nil?
      puts "Enter first classroom details: "
      obj_classroom = Classroom.new
      obj_classroom.display_class
    else
      @@classroom.each {|cls| puts "#{cls}"}
    end
  end
end

class Student
  def create_student
    @@student_info = []
    puts "Add Student Details : "
    print "Select Student ClassRoom using 1 To #{$school_count.count} : "
    classroom_count = gets.to_i
    classroom_count = classroom_count-1
    classroom = $school_count[classroom_count]
    print "Enter Student Name : "
    stud_name = gets
    print "Enter Student Age : "
    stud_age = gets.to_i
    print "Enter Student Mark(%) : "
    stud_mark = gets.chomp.to_f
    stud_info_hash = {stud_name: stud_name, stud_age: stud_age, stud_mark: stud_mark, classroom: classroom}
    @@student_info.push(stud_info_hash)
    puts "-------------Student List-------------------"
    @@student_info.each {|attri, val| puts " #{attri} = #{val}"}
    puts "--------------------------------"
    School.new.choice_number
  end

  def show_student_info
    puts " 1 Display All Student : "
    puts " 1 Display classroom student : "
    puts " 2 See Menu List : "
    puts " 3 Exit : "
    print "Enter Your Choice : "
    n = gets.chomp.to_i
    case n
    when 1
      @@student_info.each {|attri, val| puts " #{attri} = #{val}"}
    when 2
      obj_school_info = School.new
      obj_school_info.choice_number
    when 3
      puts "Thanks You"
    else
      if n >=4 || n <=0
        puts "Wrong Choice! Plz Enter the 1 to 3 "
      end
    end
  end
end

class School
  puts "*****Welcome To SCHOOL PROJECT******"
  i = 0
  print "Enter your school name : "
  $school_name = gets
  puts "The School Name is : #{$school_name.capitalize}"
  def choice_number
    puts " 1 Add New ClassRoom : "
    puts " 2 Add New Student : "
    puts " 3 List of ClassRoom : "
    puts " 4 List of Student : "
    puts
    print "Enter Your Choice : "
    n = gets.chomp.to_i
    case n
    when 1
      obj_classroom = Classroom.new
      obj_classroom.create_class
    when 2
      obj_student = Student.new
      obj_student.create_student
    when 3
      obj_classroom = Classroom.new
      obj_classroom.display_class
    when 4
      obj_student = Student.new
      obj_student.show_student_info
    else
      if n >=4 || n <=0
        puts "Wrong Choice! Plz Enter the 1 to 4 "
      end
    end
  end
end

obj_school = School.new
obj_school.choice_number
