p "============================= School ============================="
  class School
    def name
      p "#{@name}"
    end
    def name=(name)
      @name = name
    end
  end
  school = School.new
  school.name = "Ruby School"
  school.name

  p "============================= ClassRoom ============================="
  class ClassRoom
    def name=(name)
      @name = []
      @name.push(name)
    end
    def name
      p @name
    end
  end
  classroom = ClassRoom.new
  classroom.name = "Beginners"
  classroom.name
  classroom.name = "Intermediate"
  classroom.name
  classroom.name = "Professional"
  classroom.name

  p "============================= Student ============================="
  class Student
    def information
      p "#{@name}"
      p "#{@marks}"
      p "#{@birthdate}"
    end
    def name=(name)
      @name = name
    end
    def marks=(marks)
      @marks = marks
    end
    def birthdate=(birthdate)
      @birthdate = birthdate
    end
  end

  student = Student.new
  # student.names('achyut', '88', '1996-07-02')
  student.name = "achyut"
  student.marks = 88
  student.birthdate = "1999-07-02"
  student.information
