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
end

# --- Execute---
# school = School.new("Ruby School")
# School.add(school)