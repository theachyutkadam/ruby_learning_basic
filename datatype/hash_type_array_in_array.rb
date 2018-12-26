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
puts "keys of music = #{music.keys}"


first_name = "achyut"
last_name = "kadam".freeze
hash_name = {first_name => 100, last_name => 300}
puts "try to learning with freeze value"
puts "#{hash_name.key(100).equal? first_name}"
puts "try to learning with freeze value"
puts "#{hash_name.key(300).equal? last_name}"

hash_name.clear
puts "hash are cleared #{hash_name}"