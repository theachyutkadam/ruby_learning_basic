  class Person
    attr_accessor :name, :age, :sex
    def initialize(name, age, sex)
      @name = name
      @age = age
      @sex = sex
    end
    # def name=(name)
    #  @name=name
    # end
  end 

  obj = Person.new("achyut kadam", 23, "male")
  # obj.name="surya"
  puts obj.name
  puts obj.age
  puts obj.sex


  # class Person
  #   def initialize(name)
  #     @name = name
  #   end

  #   def self.define_attr(attr)
  #     p "============================1"
  #     puts "first"
  #     define_method(attr) do
  #       instance_variable_get("@#{attr}")
  #     end
  #     puts "second"
  #     p "============================2"
  #     define_method("#{attr}=") do |val|
  #       instance_variable_set("@#{attr}", val)
  #     end
  #     p "============================"
  #     puts "last"
  #   end
  # end

  # john = Person.new("achyut")
  # Person.define_attr(:name)
  # # john.name = "kadam"
  # puts john.name # => Jim