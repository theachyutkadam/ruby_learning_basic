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
    @classrooms.find {|cm| p cm if cm[:classroom] == classroom_name }
  end

  def show_classrooms
    @classrooms.each {|classroom| p classroom }
  end
end

class ClassRoom
  @@students = []
  def initialize
  end

  def self.add_student new_student
    @@students << new_student
  end

  def show_students_classroom
    @@students.each {|student| p student}
  end

  def sort_student student
    @@students.each { |x| p x if x == student }
  end
end

class Student
  def initialize(name, marks, birthdate)
    @name, @marks, @birthdate = name, marks, birthdate
  end
end

while true
  print "----------------------------------------------------------\n\n"
  puts "Select Options"
  puts "1. Create School"
  puts "2. Show School"
  puts "3. Add ClassRooms to School"
  puts "4. List ClassRooms of School"
  puts "5. Find ClassRooms of School"
  puts "6. Add Students to School"
  puts "7. List Students of ClassRooms"
  puts "8. Sort Students as per Name"
  puts "0. Exit\n"

  print "Enter your Choice: "
  choice = gets.chomp

  case choice

  when "1"
    print "Please specify school name: "
    school_name = gets.chomp
    school = School.new
    School.add(school_name)
    puts "School #{school_name} created successfully..."

  when "2"
    puts "School Name: "
    school.show

  when "3"
    school.show
    print "Which School to Add Classroom: "
    school_name = gets.chomp
    print "Enter classroom Name: "
    classroom_name = gets.chomp
    school.create_classroom(classroom_name, school_name)
    puts "Classroom #{classroom_name} created successfully..."

  when "4"
    school.show_classrooms

  when "5"
    school.show_classrooms
    print "Enter Classroom Name: "
    classroom_name = gets.chomp
    school.show_classroom(classroom_name)

  when "6"
    print "Student Name: "
    name = gets.chomp
    print "Student Marks: "
    marks = gets.chomp
    print "Student Birthdate e.g(YYYY-MM-DD): "
    birthdate = gets.chomp
    student = Student.new(name, marks, birthdate)
    puts student
    classroom = ClassRoom.new
    ClassRoom.add_student(student)

  when "7"
    print "List Students of ClassRooms: \n"
    classroom.show_students_classroom

  when "8"
    print "Sort Student by Name: "
    student_name = gets.chomp
    classroom.sort_student(student_name)
  when "0"
    exit
  end
end
