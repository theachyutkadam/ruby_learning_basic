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
  def sort_by_name
    @@information.key(@name.to_s)
  end
  def sort_by_marks
    p "sort_by_marks"
  end
  def sort_by_birthdate
    p "sort_by_birthdate"
  end
end

student = Student.new("achyut", 87, "1996-07-02")
student = Student.new("kadam", 78, "2012-10-10")
student.add
student.sort_by_name
student.sort_by_marks
student.sort_by_birthdate
# student.add_multiple_student=(5)
student.list_student_n_classroom
