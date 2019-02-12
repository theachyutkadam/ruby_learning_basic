class School
  @@schools = []
  # create new school
  def self.add(school)
    @@schools << school
  end

  def self.all
    @@schools
  end

  def initialize(name)
    @name = name
    @classrooms = []
  end

  def add_classroom(classroom)
    @classrooms << classroom
  end
end

class Classroom
  def initialize(name)
    @name = name
    @student = []
  end
end




# Assignments
# 1. Create Class Diagram with Data Types only - Done
# 2. Add interfaces in Class Diagram - Done
# 3. Implement interface to add School - Done
# 4. Implement interface to add ClassRoom
# 5. Implement interface to List ClassRooms of School
# 6. Implement interface to add 1 Student in ClassRoom
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