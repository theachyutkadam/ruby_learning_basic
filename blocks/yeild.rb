def my_method
  puts "reached the top"
  yield
  puts "reached the bottom"
end

my_method do
  puts "reached yield"
end

# output
# reached the top
# reached yield
# reached the bottom