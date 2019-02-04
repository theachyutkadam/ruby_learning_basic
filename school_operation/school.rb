
class Classroom

  @@classroom = []
  def process_classroom_creation
    print "How many class are you like to Add : "
    number_of_class = gets.chomp.to_i
    $school_count = @@classroom
    i = 0
    while i < number_of_class
      print "Enter your #{i+1} class name : "
      c_name = gets.to_s.capitalize
      @@classroom << c_name
      i +=1
    end
    choice_messages_of_classroom
  end

  def choice_messages_of_classroom
    puts "You Add Classroom successfully"
    puts " 1 Display ClassRoom : "
    puts " 2 See Menu list : "
    puts " 3 Exit : "
    print "Enter Your Choice : "
    choice_value = gets.chomp.to_i
    operation_on_variable(choice_value)
  end

  def operation_on_variable(choice_value)
    n= choice_value
    case n
    when 1
      display_class
    when 2
      obj_school=School.new
      obj_school.select_value_for_next_operation
    when 3
      puts "Thanks You"
    else
      if n >=4 || n <=0
        puts "Wrong Choice! Plz Enter the 1 to 4 "
      end
    end
  end

  def display_class
    if @@classroom.nil?
       puts "Your Class Details : "
      @@classroom.each {|cls| puts "#{cls}"}
    else
      puts "Enter first classroom details: "
      process_classroom_creation
    end
  end

end

class Student
  @@student_info = []
  def create_student
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
    @@student_info.each {|attri, val| puts " #{attri} = #{val}"}
    School.new.select_value_for_next_operation
  end

  def show_student_info
    if @@student_info.nil?
      puts "Enter firsts Student Information : "
      obj_student.create_student
    else
      puts " 1 Display All Student : "
      puts " 1 Display classroom student : "
      puts " 2 See Menu List : "
      puts " 3 Exit : "
      print "Enter Your Choice : "
      stud_info = gets.chomp.to_i
      operation_on_student_list(stud_info)
    end
  end

  def operation_on_student_list(stud_info)
    n = stud_info
    case n
    when 1
      @@student_info.each {|attri, val| puts " #{attri} = #{val}"}
    when 2
      select_value_for_next_operation
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

  def school_info
    print "Enter your school name : "
    $school_name = gets
    puts "The School Name is : #{$school_name.capitalize}"
    select_value_for_next_operation
  end

  def select_value_for_next_operation
    puts " 1 Add New ClassRoom : "
    puts " 2 Add New Student : "
    puts " 3 List of ClassRoom : "
    puts " 4 List of Student : "
    puts
    print "Enter Your Choice : "
    selected_choice = gets.chomp.to_i
    operation_on_selected_number(selected_choice)
  end

  def operation_on_selected_number(selected_choice)
    n = selected_choice
    obj_class = Classroom.new
    obj_student = Student.new
    case n
    when 1
      obj_class.process_classroom_creation
    when 2
      obj_student.create_student
    when 3
      obj_class.display_class
    when 4
      obj_student.show_student_info
    else
      if n >=4 || n <=0
        puts "Wrong Choice! Plz Enter the 1 to 4 "
      end
    end
  end

end

obj_school = School.new
obj_school.school_info