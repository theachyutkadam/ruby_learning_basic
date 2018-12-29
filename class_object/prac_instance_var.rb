class Prac_instance
  def initialize(id, f_name, address)
    @cust_id = id
    @cust_name = f_name
    @cust_add = address
  end
  def cust_details
    puts "Customer id = #{@cust_id}"
    puts "Customer first name = #{@cust_name}"
    puts "Customer add = #{@cust_add}"
  end
end

cust1 = Prac_instance.new("1001", "ruby", "india")
cust2 = Prac_instance.new("1002", "rails", "japan")

cust1.cust_details
puts
puts "---------------------"
puts
cust2.cust_details