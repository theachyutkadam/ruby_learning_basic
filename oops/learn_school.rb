  class School
    attr_accessor :name
    def initialize(name)
      p  @name = name
    end
  end
  school = School.new("Ruby School")
  school.name

  class ClassRoom
    @@name = []
    def name=(name)
      @@name.push(name)
    end
    def name
      p @@name
    end
  end

  classroom = ClassRoom.new()
  classroom.name = "Beginners"
  classroom.name = "Intermediate"
  classroom.name = "Professional"
  classroom.name

  class Student < ClassRoom
    attr_accessor :name, :marks, :birthdate, :classroom
    def initialize(name, marks, birthdate, classroom)
      @name = name
      @marks = marks
      @birthdate = birthdate
      @classroom = classroom
    end
    def information
      student_information = {name: @name, marks: @marks, birthdate: @birthdate, classroom: @@name[@classroom]}
      student_information.each {|attribute, value| puts "#{attribute.capitalize} = #{value}"}
    end
  end

  student = Student.new('achyut', 88, '1996-07-02', 2)
  student.information
