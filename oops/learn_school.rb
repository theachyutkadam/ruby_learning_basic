class School
  def initialize name
    @name, @classrooms = [], []
    @name.push(name)
  end

  def add_classroom new_classroom
    @classrooms << new_classroom
  end

  def show_classroom classroom_name
    p @classrooms.find(classroom_name)
  end

  def show_classrooms
    @classrooms.each {|classroom| p classroom }
  end
end

class ClassRoom
  def initialize(name)
    @name, @students = name, []
  end

  def add_student(new_student)
    @students << new_student
  end

  def show_students_classroom
    @students.each {|student| p student}
  end

  def sort_student(student)
    @students.each { |x| p x if x == student }
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
  puts "2. Add ClassRooms to School"
  puts "3. List ClassRooms of School"
  puts "4. Add Students to School"
  puts "5. List Students of ClassRooms"
  puts "6. Sort Students as per Name"
  # puts "5.2. Sort Students as per Marks"
  # puts "5.3. Sort Students as Birthdate"
  puts "0. Exit\n"

  print "Enter your Choice: "
  choice = gets.chomp

  case choice
  when "1"
    print "Please specify school name: "
    school_name = gets.chomp
    school = School.new(school_name)
    puts "School #{school_name} created successfully..."
  when "2"
    print "Add classrooms to school: "
    classroom_name = gets.chomp
    classroom = ClassRoom.new(classroom_name)
    school.add_classroom(classroom)
    puts "Classroom #{classroom_name} created successfully..."
  when "3"
    print "Show classrooms to school: \n"
    school.show_classrooms
  when "4"
    print "Student Name: "
    name = gets.chomp
    print "Student Marks: "
    marks = gets.chomp
    print "Student Birthdate e.g(YYYY-MM-DD): "
    birthdate = gets.chomp
    student = Student.new(name, marks, birthdate)
    puts student
    classroom.add_student(student)
  when "5"
    print "List Students of ClassRooms: \n"
    classroom.show_students_classroom
  when "6"
    print "Sort Student by Name: "
    student_name = gets.chomp
    classroom.sort_student(student_name)
  when "0"
    exit
  end
end
