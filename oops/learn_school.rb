class School
  def add_school=(name)
    @name = name
  end
  def show
    @name
  end
end
school = School.new
school.add_school = "Ruby School"
school.show

class ClassRoom
  @@name = []
  def add_classroom=(name)
    @@name.push(name)
    @@name.last
  end
  def list_classroom
    @@name
  end
end
classroom = ClassRoom.new
classroom.add_classroom = "Beginners"
classroom.add_classroom = "Professional"
classroom.list_classroom

class Student
  def initialize(name, marks, birthdate)
    @name = name
    @marks = marks
    @birthdate = birthdate
    add
  end
  @@information = []
  def add
    @@information << {name: @name, marks: @marks, birthdate: @birthdate}
  end
  # def add_multiple_student=(value)
  #   value.each {|x| x.add_single_student("achyut")}
  # end
  def list_student_n_classroom
    p "list_student_n_classroom"
  end
  def sort_by_name=(name)
    p @@information.find {|x| x[:name] == name}
  end
  def sort_by_marks=(marks)
    p @@information.find {|x| x[:marks] == marks}
  end
  def sort_by_birthdate=(birthdate)
    @@information.find do |x|
      if x[:birthdate] == birthdate
        puts "#{x}"
      end
    end
  end
end

student = Student.new("achyut", 77, "1996-07-02")
student = Student.new("kadam", 64, "2000-10-10")
student = Student.new("surya", 80, "1992-10-10")
student.sort_by_name = "kadam"
# student.add
student.sort_by_marks = 64
student.sort_by_birthdate = "1992-10-10"
# student.add_multiple_student=(5)
student.list_student_n_classroom
