music = { song: ["vande matram", "jan gan man"], singer: ["raheman", "mahadevan", "joshi", "kale"]}
student = { personal: {"s_name" => "achyut"}, marks: {"math" => 65, "sci" => 80, "marathi" => 45, "economic" => 95}}
puts "==========================================="
puts "music #{music.keys}"
puts "music #{music.length}"
puts "===================================== old hash ====================================="
puts "#{music}"
music.replace({song: ["vande_matram", "dil_se_re"], singer: ["raheman", "mahadevan", "joshi", "kale"]})
puts "===================================== new hash ====================================="
puts "#{music}"
# puts "keys of student = #{music.keys(vande matram)}"
puts "keys of student = #{student.personal.keys(achyut)}"	
