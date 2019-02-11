class School
  @@school = []
  def initialize
    @classrooms = []
  end

  def self.add(school) #create new school
    @@school << school
  end

  def show # show school
    @@school.each {|x| p "#{@@school.index(x)+1} = #{x}"}
  end

  def create_classroom new_classroom, school_name
    classroom = {classroom: new_classroom, school_name: school_name}
    @classrooms << classroom
  end

  def show_classroom classroom_name
    @classrooms.find do |cm|
      if cm[:classroom] == classroom_name
        p cm 
      end
    end
  end

  def show_classrooms
    @classrooms.each {|classroom| p classroom }
  end
end

class ClassRoom
  @@students = []
  def initialize
  end

  def self.add_student student, classroom
    new_student = {student: student, classroom: classroom}
    @@students << new_student
  end

  def show_students_classroom
    @@students.each {|student| p student}
  end

  def sort_student classroom_name
    # @@students.each { |x| p x if x == student }
    @@students.find do |stud|
      if stud[:classroom] == classroom_name
        p stud
      end
    end
  end
end

class Student
  def initialize(name, marks, birthdate)
    @name, @marks, @birthdate = name, marks, birthdate
  end
end

while true
  print "----------------------------------------------------------\n\n"
  puts "Select Options Using Number"
  puts "1. Create School"
  puts "2. Show School"
  puts "3. Add ClassRooms to School"
  puts "4. List ClassRooms of School"
  puts "5. Find ClassRooms of School"
  puts "6. Add Student to School"
  puts "7. Add N Students to School"
  puts "8. List Students of ClassRooms"
  puts "9. Sort Students by Classroom"
  puts "0. Exit\n"

  print "Enter your Choice: "
  choice = gets.chomp.to_i

  case choice

  when 1
    print "Please specify school name: "
    school_name = gets.chomp
    school = School.new
    School.add(school_name)
    puts "School #{school_name} created successfully..."

  when 2
    puts "School Names: "
    school.show

  when 3
    school.show
    print "Select School for Add Classroom: "
    school_name = gets.chomp
    print "Enter classroom Name: "
    classroom_name = gets.chomp
    school.create_classroom(classroom_name, school_name)
    puts "Classroom #{classroom_name} created successfully..."

  when 4
    school.show_classrooms

  when 5
    school.show_classrooms
    print "Enter Classroom Name: "
    classroom_name = gets.chomp
    school.show_classroom(classroom_name)

  when 6
    print "Enter Student Name: "
    name = gets.chomp
    print "Enter Student Marks: "
    marks = gets.chomp
    print "Enter Student Birthdate e.g(YYYY-MM-DD): "
    birthdate = gets.chomp
    school.show_classrooms
    print "Select Classroom Name: "
    classroom_name = gets.chomp
    student = Student.new(name, marks, birthdate)
    classroom = ClassRoom.new
    ClassRoom.add_student(student, classroom_name)
    puts "Student Add successfully..."

  when 7
    print "How Many Students You Add in ClassRooms: "
    number_student = gets.chomp.to_i
    for i in 1..number_student do
      print "Enter #{i} Number Student Name: "
      name = gets.chomp
      print "Enter #{i} Number Student Marks: "
      marks = gets.chomp
      print "Enter #{i} Number Student Birthdate e.g(YYYY-MM-DD): "
      birthdate = gets.chomp
      school.show_classrooms
      print "Select Classroom Name: "
      classroom_name = gets.chomp
      student = Student.new(name, marks, birthdate)
      classroom = ClassRoom.new
      ClassRoom.add_student(student, classroom_name)    
      puts "Student Add successfully..."
    end
  when 8
    print "List Students of ClassRooms: \n"
    classroom.show_students_classroom

  when 9
    school.show_classrooms
    print "Sort by Classroom, Select Classroom Name: "
    classroom_name = gets.chomp
    classroom.sort_student(classroom_name)
  when 0
    p "Thank You"
    exit
  else
    puts "Invalid Input!!!" if choice <= -1 || choice >= 8
  end
end
