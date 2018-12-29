class Prac_class
  @@customer_count = 0
  def initialize(id, cust_name, address)
    @customer_id = id
    @customer_name = cust_name
    @customer_add = address
  end
  def show_details
    puts "Customer_id = #{@customer_id}"
    puts "Customer_name = #{@customer_name}"
    puts "Customer_add = #{@customer_add}"
  end
  def customer_count
    @@customer_count += 1
    @count = 0
    @count +=1
    puts "#{@count}"
    puts "total customers is = #{@@customer_count}"
  end
end
cust1 = Prac_class.new("1001", "it's_me", "earth")
cust2 = Prac_class.new("1002", "it's_you", "pluto")
cust3 = Prac_class.new("11","1", "1")
puts
cust1.show_details
puts
cust1.customer_count
cust2.customer_count
cust3.customer_count
puts
