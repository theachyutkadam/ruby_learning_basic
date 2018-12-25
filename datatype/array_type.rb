words = ["sun", "mon", nil, nil, "tue"]
join = [ "wed", "thurs", "fri"]
words << "sat"
puts ""
puts words.compact
words[0] = "SUN"
puts words[0]
same1 = [1, 2, 3, 4]
same2 = [3, 4]
print words + join
 puts 
print same1 - same2
puts
num = [1,2,3,4,5,6,8,9]
puts
print num
puts
print num.rotate(1)
puts
print num.rotate(2)
puts