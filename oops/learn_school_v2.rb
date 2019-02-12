class School
  @@schools = []
  # create new school
  def self.add(school)
    @@schools << school
  end

  # show school details
  def self.all
    @@schools
  end

  # contructor call with parameter
  def initialize(name)
    @name = name
    @classrooms = []
  end

  # create new classroom
  def add_classroom(classroom)
    @classrooms << classroom
  end

  # show classrooms
  def list_classrooms
    @classrooms
  end
end

class Classroom
  # contructor call with parameter
  def initialize(name)
    @name = name
    @student = []
  end

  # create new student
  def add_student(student)
    @student << student
  end

  # create new multiple students
  def add_students(*args)
    @student << args
  end
end

class Student
  # contructor call with parameter
  def initialize(name, age, birthdate)
    @name, @age, @birthdate = name, age, birthdate
  end
end

# Assignments
# 1. Create Class Diagram with Data Types only - Done
# 2. Add interfaces in Class Diagram - Done
# 3. Implement interface to add School - Done
# 4. Implement interface to add ClassRoom - uncheck
# 5. Implement interface to List ClassRooms of School - uncheck
# 6. Implement interface to add 1 Student in ClassRoom - uncheck
# 7. Implement interface to add n  Students in ClassRoom
# 8. Implement interface to list Students of ClassRoom
# 9. Implement interface to sort Students of ClassRoom

# Learnings
# 1. Findout another way to define class methods and refacor code
#
#
# 3. Implement interface to add School - Done
# --- Execute---
# school = School.new("Ruby School") => #<School:0x0000000255e770 @name="Ruby School", @classrooms=[]>
# School.add(school) => [#<School:0x0000000255e770 @name="Ruby School", @classrooms=[]>]
# School.all => [#<School:0x0000000255e770 @name="Ruby School", @classrooms=[]>]
#
#
# 4. Implement interface to add ClassRoom
# --- Execute---
# school = School.new("ruby") => #<School:0x00000002642790 @name="ruby", @classrooms=[]>
# School.add(school) => [#<School:0x00000002642790 @name="ruby", @classrooms=[]>]
# classroom = Classroom.new("beginners") => #<Classroom:0x0000000261e9f8 @name="beginners", @student=[]>
# classroom => #<Classroom:0x0000000261e9f8 @name="beginners", @student=[]>
# school.add_classroom(classroom) => [#<Classroom:0x0000000261e9f8 @name="beginners", @student=[]>]
# classroom = Classroom.new("ruby") => <Classroom:0x000000027030f8 @name="ruby", @student=[]>
# school = #<School:0x00000002642790 @name="ruby", @classrooms=[#<Classroom:0x0000000261e9f8 @name="beginners", @student=[]>]>
#
#
# 5. Implement interface to List ClassRooms of School
# --- Execute---
# school = School.new("ruby") => #<School:0x0000000269d848 @name="ruby", @classrooms=[]>
# School.add(school) => [#<School:0x0000000269d848 @name="ruby", @classrooms=[]>]
# classroom = Classroom.new("beginners") => #<Classroom:0x0000000266ab00 @name="beginners", @student=[]>
# classroom2 = Classroom.new("graduation") =>#<Classroom:0x00000002651cb8 @name="graduation", @student=[]>
# school.add_classroom(classroom) => [#<Classroom:0x0000000266ab00 @name="beginners", @student=[]>]
# school.add_classroom(classroom2) => [#<Classroom:0x0000000266ab00 @name="beginners", @student=[]>,
    #<Classroom:0x00000002651cb8 @name="graduation", @student=[]>]
# classroom => #<Classroom:0x0000000266ab00 @name="beginners", @student=[]>
# classroom2 => <Classroom:0x000000026336a0 @name="professional", @student=[]>
# school = #<School:0x0000000269d848 @name="ruby", @classrooms=[#<Classroom:0x0000000266ab00 @name="beginners", @student=[]>,
    #<Classroom:0x00000002651cb8 @name="graduation", @student=[]>,
    #<Classroom:0x000000026336a0 @name="professional", @student=[]>]>

# school.list_classrooms => [#<Classroom:0x0000000266ab00 @name="beginners", @student=[]>, #<Classroom:0x00000002651cb8 @name="graduation", @student=[]>,
    #<Classroom:0x000000026336a0 @name="professional", @student=[]>]
#
#
# 6. Implement interface to add 1 Student in ClassRoom
# --- Execute---
# school = School.new("ruby") => #<School:0x00000002315f90 @name="ruby", @classrooms=[]>
# School.add(school) => [#<School:0x00000002315f90 @name="ruby", @classrooms=[]>]
# School.all => [#<School:0x00000002315f90 @name="ruby", @classrooms=[]>]
# classroom1 = Classroom.new("beginners") => #<Classroom:0x000000022f3760 @name="beginners", @student=[]>
# classroom2 = Classroom.new("graduation") => #<Classroom:0x000000026f9fa8 @name="graduation", @student=[]>
# school.add_classroom(classroom1) => [#<Classroom:0x000000022f3760 @name="beginners", @student=[]>]
# school.add_classroom(classroom2) => [#<Classroom:0x000000022f3760 @name="beginners", @student=[]>,
    #<Classroom:0x000000026f9fa8 @name="graduation", @student=[]>]
# school.list_classrooms => [#<Classroom:0x000000022f3760 @name="beginners", @student=[]>, #<Classroom:0x000000026f9fa8 @name="graduation", @student=[]>]
# student1 = Student.new("achyut", 23, "1996-07-02") => #<Student:0x00000002671d60 @name="achyut", @age=23, @birthdate="1996-07-02"> 
# student2 = Student.new("surya", 27, "1991-05-16") => #<Student:0x00000002653bd0 @name="surya", @age=27, @birthdate="1991-05-16">
# student3 = Student.new("satish", 20, "1999-07-01") => #<Student:0x0000000263e870 @name="satish", @age=20, @birthdate="1999-07-01">
# classroom1.add_student(student1) => [#<Student:0x00000002671d60 @name="achyut", @age=23, @birthdate="1996-07-02">]
# classroom1.add_student(student2) => [#<Student:0x00000002671d60 @name="achyut", @age=23, @birthdate="1996-07-02">,
    #<Student:0x00000002653bd0 @name="surya", @age=27, @birthdate="1991-05-16">]
# classroom2.add_student(student3) => [#<Student:0x0000000263e870 @name="satish", @age=20, @birthdate="1999-07-01">]
# school => #<School:0x00000002315f90 @name="ruby", @classrooms=[#<Classroom:0x000000022f3760 @name="beginners",
    #@student=[#<Student:0x00000002671d60 @name="achyut", @age=23, @birthdate="1996-07-02">,
    #<Student:0x00000002653bd0 @name="surya", @age=27, @birthdate="1991-05-16">]>,
    #<Classroom:0x000000026f9fa8 @name="graduation", @student=[#<Student:0x0000000263e870 @name="satish", @age=20, @birthdate="1999-07-01">]>]>
# classroom1 => Classroom:0x000000022f3760 @name="beginners", @student=[#<Student:0x00000002671d60 @name="achyut", @age=23, @birthdate="1996-07-02">,
    #<Student:0x00000002653bd0 @name="surya", @age=27, @birthdate="1991-05-16">]>
# classroom2 => #<Classroom:0x000000026f9fa8 @name="graduation", @student=[#<Student:0x0000000263e870 @name="satish", @age=20, @birthdate="1999-07-01">]>

# 7. Implement interface to add n  Students in ClassRoom
# --- Execute---
# school = School.new("ruby") => #<School:0x00000002310298 @name="ruby", @classrooms=[]>
# School.add(school) => [#<School:0x00000002310298 @name="ruby", @classrooms=[]>]
# School.all => [#<School:0x00000002310298 @name="ruby", @classrooms=[]>]
# classroom1 = Classroom.new("beginners") => #<Classroom:0x00000002711e50 @name="beginners", @student=[]>
# classroom2 = Classroom.new("graduation") => #<Classroom:0x0000000250cda8 @name="graduation", @student=[]>
# school.add_classroom(classroom1) => [#<Classroom:0x00000002711e50 @name="beginners", @student=[]>]
# school.add_classroom(classroom2) => [#<Classroom:0x00000002711e50 @name="beginners", @student=[]>,
    #<Classroom:0x0000000250cda8 @name="graduation", @student=[]>]
# school.list_classrooms => [#<Classroom:0x00000002711e50 @name="beginners", @student=[]>, #<Classroom:0x0000000250cda8 @name="graduation", @student=[]>]
# student1 = Student.new("achyut", 23, "1996-07-02") => #<Student:0x00000002671680 @name="achyut", @age=23, @birthdate="1996-07-02">
# student2 = Student.new("surya", 27, "1991-05-16") => #<Student:0x00000002653db0 @name="surya", @age=27, @birthdate="1991-05-16">
# student3 = Student.new("satish", 20, "1999-07-01") => #<Student:0x0000000263e2f8 @name="satish", @age=20, @birthdate="1999-07-01">
# student4 = Student.new("harry", 20, "2000-12-24") => #<Student:0x00000002631c88 @name="harry", @age=20, @birthdate="2000-12-24">
#  => 
# classroom2.add_student(student4) => [#<Student:0x00000002631c88 @name="harry", @age=20, @birthdate="2000-12-24">]
# classroom1.add_students(student1, student2, student3) => #<Student:0x00000002671680>
#<Student:0x00000002653db0>
#<Student:0x0000000263e2f8> =>
    #[[<Student:0x00000002671680 @name="achyut", @age=23, @birthdate="1996-07-02">,
    #<Student:0x00000002653db0 @name="surya", @age=27, @birthdate="1991-05-16">,
    #<Student:0x0000000263e2f8 @name="satish", @age=20, @birthdate="1999-07-01">]]
