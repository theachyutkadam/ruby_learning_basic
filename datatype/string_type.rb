# puts "String data type";
# puts 'escape using "\\" ';
# puts 'that\'s right';
# puts "\\\\\\double quate\\\\\	";
# puts '\\\\\\single quete\\\\\	';
# p "*****************************************"
# f_name = "mo"
# l_name = "bile"
# msg = "hi"
# var = "rubyonrails"
# puts f_name + l_name
# p msg * 5
#
# puts var.upcase
# puts var.capitalize
# puts var.length
# puts var.reverse
#
# puts "a sting".object_id
# puts "a sting".object_id
# puts "a sting".object_id
# p "*****************************************"
# p "*****************************************"
# puts :a_sting.object_id
# puts :a_sting.object_id
# puts :a_sting.object_id
#
# puts "Hello!"
# puts :Hello!

wrk = "define_labs"
# puts wrk.dump #make
# puts wrk.crypt("define_labs") #encrypting the name
# puts wrk.chr #accept first later
# puts wrk.byteslice(3) #find number of specling using pass argument
# puts wrk.succ
# puts wrk.strip
# puts wrk.squeeze
# puts "==="
# puts wrk.unicode_normalize
# puts wrk.upto("a2")
# puts wrk.capitalize
# puts wrk.sum
# puts wrk.casecmp(2)
# puts wrk.center(5)
# print wrk.chars
# puts
# puts wrk.chomp
# puts wrk.chop
# puts wrk.chr
# puts wrk.clear
# puts wrk.codepoints
# puts wrk.concat(5)
# puts wrk.count(6.to_s)
# puts wrk.crypt(10.to_s)
day = "Wednesday"
# puts day.+@ #not WORKABLE
# puts day.delete(3.to_s) #NOT WORKABLE
# puts day.delete_prefix #NOT WORKABLE
# puts day.delete_suffix #NOT WORKABLE
# puts day.downcase!
# puts day.dump
# puts day.each_byte {|d| print "#{d}\t"}
# puts
# puts day.each_char {|d| print "#{d}\t"}
# puts
# puts day.each_codepoint {|d| print "#{d}\t"}
# puts day.each_grapheme_cluster {|d| print "#{d}\t"} #NOT WORKABLE
# puts day.=~(8)
# puts "today is << #{day}"
# puts day.%[id, self.object_id]
# puts day.empty?
# puts day.encoding
# puts day.encode #not understand
# puts day.encode! #not understand
# puts day.end_with?
# puts day.force_encoding(12.to_s)
# puts day.freeze
# puts day.getbyte(0)
# puts day.getbyte(1)
# puts day.getbyte(2)
# puts day.getbyte(3)
# puts day.grapheme_clusters #NOT WORKABLE
puts day.capitalize
puts day.gsub(/([ea])/, '<\1>')
puts day.gsub(/./) {|s| s.ord.to_s + ' '}
