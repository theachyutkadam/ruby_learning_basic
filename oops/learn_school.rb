  class Student
    def initialize(name, marks, birthdate)
      @name = name
      @marks = marks
      @birthdate = birthdate
    end
  end

  class ClassRoom
    def initialize(name)
      @name = name
      @students = []
    end
    def add_student(new_student)
      @students << new_student
    end
    def show_students_by_classroom
      @students
    end
    def sort_student(student)
      @students.each do |x|
        if x == student
          p x
        end
      end
    end
  end

  class School
    def initialize(name)
      @classrooms = []
    end
    def add_classroom(new_classroom)
      @classrooms << new_classroom
    end
    def show_classroom(classroom_name)
      @classrooms.find(classroom_name)
    end
    def show_classrooms
      @classrooms
    end
    def school_details(school)
      p school
    end
  end

  school_1 = School.new("Ruby School")
  school_1.school_details(school_1)

  classroom_1 = ClassRoom.new("Beginners")
  classroom_2 = ClassRoom.new("Graduate")
  classroom_3 = ClassRoom.new("Professional")

  student_1 = Student.new("AA_1", 71, "1991-04-01")
  student_2 = Student.new("BB_2", 62, "1992-05-02")
  student_3 = Student.new("CC_3", 83, "1993-06-03")
  student_4 = Student.new("DD_4", 74, "1994-07-04")
  student_5 = Student.new("EE_5", 65, "1995-08-05")
  student_6 = Student.new("FF_6", 86, "1996-09-06")
  student_7 = Student.new("GG_7", 77, "1997-10-07")
  student_8 = Student.new("HH_8", 68, "1998-11-08")
  student_9 = Student.new("II_9", 89, "1999-12-09")

  school_1.add_classroom(classroom_1)
  school_1.add_classroom(classroom_2)
  school_1.add_classroom(classroom_3)

  school_1.show_classroom(classroom_1)
  school_1.show_classroom(classroom_2)
  school_1.show_classroom(classroom_3)
  school_1.show_classrooms

  classroom_1.add_student(student_1)
  classroom_1.add_student(student_2)
  classroom_1.add_student(student_3)
  classroom_2.add_student(student_4)
  classroom_2.add_student(student_5)
  classroom_2.add_student(student_6)
  classroom_3.add_student(student_7)
  classroom_3.add_student(student_8)
  classroom_3.add_student(student_9)
  classroom_1.show_students_by_classroom
  classroom_1.sort_student(student_1)
