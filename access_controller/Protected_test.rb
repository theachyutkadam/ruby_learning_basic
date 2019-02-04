class Protected_test
  def initialize
      geeks_2
      self.geeks_2
   end

  def geeks_1
       puts " geeks_1 method is called"
   end

  protected

  def geeks_2
       puts " geeks_2 method is called"
  end
end
obj = Protected_test.new
obj.geeks_1
obj.geeks_2