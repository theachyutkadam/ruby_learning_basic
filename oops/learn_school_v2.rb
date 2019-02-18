class School
  @@schools = []
  # create new school
  def self.add school
    @@schools << school
  end

  # show school details
  def self.all
    @@schools
  end

  # contructor call with parameter
  def initialize name
    @name, @classrooms = name, []
  end

  # create new classroom
  def add_classroom classroom
    @classrooms << classroom
  end

  # show classrooms
  def classrooms
    @classrooms
  end
end

class Classroom
  attr_reader :name
  # contructor call with parameter
  def initialize name
    @name, @students = name, []
  end

  # create new student
  def add_student student
    @students << student
  end

  # create multiple new students
  def add_students *students
    @students.push *students
  end

  # show selected classroom students
  def students
    @students
  end

  # sort students by Name
  def sort_student_by_name
    @students.sort_by {|student| student.name}
  end

  # sort students by marks
  def sort_student_by_marks
    @students.sort_by {|student| student.marks}
  end

  # sort students by Birthdate
  def sort_student_by_birthdate
    @students.sort_by {|student| student.birthdate}
  end
end

class Student
  # contructor call with parameter
  attr_reader :name, :marks, :birthdate
  def initialize name, marks, birthdate
    @name, @marks, @birthdate = name, marks, birthdate
  end
end

# Assignments
# 1. Create Class Diagram with Data Types only - Done
# 2. Add interfaces in Class Diagram - Done
# 3. Implement interface to add School - Done
# 4. Implement interface to add ClassRoom - uncheck Done
# 5. Implement interface to List ClassRooms of School - uncheck Done
# 6. Implement interface to add 1 Student in ClassRoom - uncheck Done
# 7. Implement interface to add n  Students in ClassRoom - uncheck Done
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
#
#
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
# classroom1.add_students(student1, student2, student3) =>
    #<Student:0x00000002671680>, #<Student:0x00000002653db0>
    #<Student:0x0000000263e2f8> =>
    #[[<Student:0x00000002671680 @name="achyut", @age=23, @birthdate="1996-07-02">,
    #<Student:0x00000002653db0 @name="surya", @age=27, @birthdate="1991-05-16">,
    #<Student:0x0000000263e2f8 @name="satish", @age=20, @birthdate="1999-07-01">]]
#
#
# 8. Implement interface to list Students of ClassRoom
# --- Execute---
# school = School.new("ruby") => #<School:0x00000002320558 @name="ruby", @classrooms=[]>
# School.add(school) => [#<School:0x00000002320558 @name="ruby", @classrooms=[]>]
# School.all => [#<School:0x00000002320558 @name="ruby", @classrooms=[]>]
# classroom1 = Classroom.new("beginners") => #<Classroom:0x000000023088b8 @name="beginners", @students=[]>
# classroom2 = Classroom.new("graduation") => #<Classroom:0x00000002702180 @name="graduation", @students=[]>
# school.add_classroom(classroom1) => [#<Classroom:0x000000023088b8 @name="beginners", @students=[]>]
# school.add_classroom(classroom2) => [#<Classroom:0x000000023088b8 @name="beginners", @students=[]>,
    #<Classroom:0x00000002702180 @name="graduation", @students=[]>]
# school.list_classrooms => [#<Classroom:0x000000023088b8 @name="beginners", @students=[]>, #<Classroom:0x00000002702180 @name="graduation", @students=[]>]
# student1 = Student.new("achyut", 23, "1996-07-02") => #<Student:0x00000002673728 @name="achyut", @age=23, @birthdate="1996-07-02">
# student2 = Student.new("surya", 27, "1991-05-16") => #<Student:0x00000002659148 @name="surya", @age=27, @birthdate="1991-05-16">
# student3 = Student.new("satish", 20, "1999-07-01") => #<Student:0x0000000263d5d8 @name="satish", @age=20, @birthdate="1999-07-01">
# student4 = Student.new("harry", 20, "2000-12-24") => #<Student:0x0000000261f920 @name="harry", @age=20, @birthdate="2000-12-24">
# classroom2.add_student(student4) => [#<Student:0x0000000261f920 @name="harry", @age=20, @birthdate="2000-12-24">]
# classroom1.add_students(student1, student2, student3) => [[#<Student:0x00000002673728 @name="achyut", @age=23, @birthdate="1996-07-02">,
    #<Student:0x00000002659148@name="surya", @age=27, @birthdate="1991-05-16">,
    #<Student:0x0000000263d5d8 @name="satish", @age=20, @birthdate="1999-07-01">]]
# classroom1.students => [[#<Student:0x000000026e7218 @name="achyut", @age=23, @birthdate="1996-07-02">,
    #<Student:0x000000026c4d80 @name="surya", @age=27, @birthdate="1991-05-16">,
    #<Student:0x000000026b05b0 @name="satish", @age=20, @birthdate="1999-07-01">]]
# classroom2.students => [#<Student:0x0000000268f680 @name="harry", @age=20, @birthdate="2000-12-24">]

#
#
# 9. Implement interface to sort Students of ClassRoom
# --- Execute---
#school = School.new("ruby") => #<School:0x000000027c5e78 @name="ruby", @classrooms=[]>
#School.add(school) => #<School:0x000000027c5e78 @name="ruby", @classrooms=[]>]
#School.all => [#<School:0x000000027c5e78 @name="ruby", @classrooms=[]>]
#classroom1 = Classroom.new("beginners") => #<Classroom:0x0000000279a1b0 @name="beginners", @students=[]>
#classroom2 = Classroom.new("graduation") => #<Classroom:0x00000002786610 @name="graduation", @students=[]>
#school.add_classroom(classroom1) => [#<Classroom:0x0000000279a1b0 @name="beginners", @students=[]>]
#school.add_classroom(classroom2) =>
    #<Classroom:0x0000000279a1b0 @name="beginners", @students=[]>
    #<Classroom:0x00000002786610 @name="graduation", @students=[]>]
#school.list_classrooms =>
    #<Classroom:0x0000000279a1b0 @name="beginners", @students=[]>
    #<Classroom:0x00000002786610 @name="graduation", @students=[]>]

#student1 = Student.new("achyut", 01, "1996-07-02") => #<Student:0x00000002744fd0 @name="achyut", @age=1, @birthdate="1996-07-02">
#student2 = Student.new("surya", 49, "1991-06-16") => #<Student:0x00000002727638 @name="surya", @age=49, @birthdate="1991-06-16">
#student3 = Student.new("satish", 59, "1999-12-01") => #<Student:0x00000002711630 @name="satish", @age=59, @birthdate="1999-12-01">
#student4 = Student.new("bhalu", 20, "1991-03-24") => #<Student:0x000000026f3978 @name="bhalu", @age=20, @birthdate="1991-03-24">
#student5 = Student.new("chandu", 60, "1900-01-15") => #<Student:0x000000026d01d0 @name="chandu", @age=60, @birthdate="1900-01-15">
#student6 = Student.new("datta", 67, "1995-02-08") => #<Student:0x000000026b3030 @name="datta", @age=67, @birthdate="1995-02-08">
#student7 = Student.new("datta", 87, "1993-08-14") => #<Student:0x00000002699a90 @name="datta", @age=87, @birthdate="1993-08-14">
#student8 = Student.new("avinash", 54, "1994-05-31") => #<Student:0x0000000267b8b0 @name="avinash", @age=54, @birthdate="1994-05-31">
#student9 = Student.new("dipak", 45, "2000-11-28") => #<Student:0x000000026626d0 @name="dipak", @age=45, @birthdate="2000-11-28">

#classroom2.add_student(student4) => #<Student:0x000000026f3978 @name="bhalu", @age=20, @birthdate="1991-03-24">]
#classroom1.add_students(student5, student3, student2, student4, student1, student8, student7, student6, student9)
#<Student:0x000000026d01d0 @name="chandu", @age=60, @birthdate="1900-01-15">
#<Student:0x00000002711630 @name="satish", @age=59, @birthdate="1999-12-01">
#<Student:0x00000002727638 @name="surya", @age=49, @birthdate="1991-06-16">
#<Student:0x000000026f3978 @name="bhalu", @age=20, @birthdate="1991-03-24">
#<Student:0x00000002744fd0 @name="achyut", @age=1, @birthdate="1996-07-02">
#<Student:0x0000000267b8b0 @name="avinash", @age=54, @birthdate="1994-05-31">
#<Student:0x00000002699a90 @name="datta", @age=87, @birthdate="1993-08-14">
#<Student:0x000000026b3030 @name="datta", @age=67, @birthdate="1995-02-08">
#<Student:0x000000026626d0 @name="dipak", @age=45, @birthdate="2000-11-28">

#classroom1.sort_student_by_name =>
#<Student:0x00000002744fd0 @name="achyut", @age=1, @birthdate="1996-07-02">
#<Student:0x0000000267b8b0 @name="avinash", @age=54, @birthdate="1994-05-31">
#<Student:0x000000026f3978 @name="bhalu", @age=20, @birthdate="1991-03-24">
#<Student:0x000000026d01d0 @name="chandu", @age=60, @birthdate="1900-01-15">
#<Student:0x00000002699a90 @name="datta", @age=87, @birthdate="1993-08-14">
#<Student:0x000000026b3030 @name="datta", @age=67, @birthdate="1995-02-08">
#<Student:0x000000026626d0 @name="dipak", @age=45, @birthdate="2000-11-28">
#<Student:0x00000002711630 @name="satish", @age=59, @birthdate="1999-12-01">
#<Student:0x00000002727638 @name="surya", @age=49, @birthdate="1991-06-16">]
#
#classroom1.sort_student_by_age =>
#<Student:0x00000002744fd0 @name="achyut", @age=1, @birthdate="1996-07-02">
#<Student:0x000000026f3978 @name="bhalu", @age=20, @birthdate="1991-03-24">
#<Student:0x000000026626d0 @name="dipak", @age=45, @birthdate="2000-11-28">
#<Student:0x00000002727638 @name="surya", @age=49, @birthdate="1991-06-16">
#<Student:0x0000000267b8b0 @name="avinash", @age=54, @birthdate="1994-05-31">
#<Student:0x00000002711630 @name="satish", @age=59, @birthdate="1999-12-01">
#<Student:0x000000026d01d0 @name="chandu", @age=60, @birthdate="1900-01-15">
#<Student:0x000000026b3030 @name="datta", @age=67, @birthdate="1995-02-08">
#<Student:0x00000002699a90 @name="datta", @age=87, @birthdate="1993-08-14">
#
#classroom1.sort_student_by_birthdate
#<Student:0x000000026d01d0 @name="chandu", @age=60, @birthdate="1900-01-15">
#<Student:0x000000026f3978 @name="bhalu", @age=20, @birthdate="1991-03-24">
#<Student:0x00000002727638 @name="surya", @age=49, @birthdate="1991-06-16">
#<Student:0x00000002699a90 @name="datta", @age=87, @birthdate="1993-08-14">
#<Student:0x0000000267b8b0 @name="avinash", @age=54, @birthdate="1994-05-31">
#<Student:0x000000026b3030 @name="datta", @age=67, @birthdate="1995-02-08">
#<Student:0x00000002744fd0 @name="achyut", @age=1, @birthdate="1996-07-02">
#<Student:0x00000002711630 @name="satish", @age=59, @birthdate="1999-12-01">
#<Student:0x000000026626d0 @name="dipak", @age=45, @birthdate="2000-11-28">]
