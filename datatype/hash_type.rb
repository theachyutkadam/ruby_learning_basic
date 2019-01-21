laptop = {"company" => "dell", "ram" => "4GB", "price" => 60000}
# puts "++++++++++++++++++++++++++++++++++++++++++++++"
puts laptop
puts "++++++++++++++++++++++++++++++++++++++++++++++"
puts
# puts "laptop price = #{laptop["price"]}"
puts laptop.each {|x, n| puts " #{x} = #{n}"}
puts
puts "+++++++++++++++++++++++++++++++++++++++++++++"
# laptop["ROM"] = "2TB"
# puts "laptop hardisk = #{laptop["ROM"]}"
# puts "+++++++++++++++++++++++++++++++++++++++++++++"

# keyboard = {1 => "qwerty", 2 => "azerty", 3 => "kalq", 4 => "abcd"}
# puts "value of 1 = #{keyboard[1]}"
# puts "value of 2 = #{keyboard[2]}"
# puts "value of 3 = #{keyboard[3]}"

# puts "********************methods*********************"
# puts laptop.size
# puts laptop.count
# puts laptop.to_h
# puts laptop.to_s
# puts "=====key down====00======="
# print laptop.key(3)
# puts
# print keyboard.key(3)
# puts
# puts "=====key? down====11======="
# print laptop.key?(1)
# puts
# print keyboard.key?(1)
# puts
# puts "=====keys down====22======="
# print laptop.keys
# puts
# print "keyboard values #{keyboard.values}"
# puts
# puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
# laptop.shift
# puts laptop