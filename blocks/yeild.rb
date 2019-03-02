def my_method
  puts "before yield"
  yield
  puts "after yield"
end
my_method do
  puts "reached yield"
end

# output
# before yield
# after yield
# reached yield

def main
	value = yield
	puts "this is #{value}"
end

main do
	2
end #pass value by yield

def a_method(&block)
  p block
end

a_method { "x" }



a_proc = Proc.new { "x" }
a_method(&a_proc) # call using object

# yield = this statement is use to return a value agin function call location..


