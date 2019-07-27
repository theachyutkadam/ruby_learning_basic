class String
  def green; "\e[32m#{self}\e[0m" end
  def red; "\e[31m#{self}\e[0m" end
  def blue; "\e[34m#{self}\e[0m" end
  def brown; "\e[33m#{self}\e[0m" end
  def magenta; "\e[35m#{self}\e[0m" end
end

puts "THIS IS THE TESTING PROGRAM BY AJIT "

$count = 1
$round = 1
$players = ["achyut", "ravi", "priya", "omkar"]
puts "Now We Playing #{$round} Round".red

def random_count(player)
  number = rand(1..8)
  puts
  puts "#{$players[player - 1]}'s Random Number: ".blue + " #{number}".green
end

while true
  $players = ["achyut", "ravi", "priya", "omkar"]
  for i in 0..3
    print "#{i + 1} = #{$players[i].capitalize} \t".magenta
  end
  print "\nSelect Your Name Using Number: ".brown
  choice = gets.chomp.to_i

  $count = $count + 1
  if $count == 5
    $round = $round + 1
    $count = 1
    puts "\e[H\e[2J"
    puts "Now We are Playing #{$round} Round".red
  end

  case choice
  when 1
    puts random_count(1)
  when 2
    puts random_count(2)
  when 3
    puts random_count(3)
  when 4
    puts random_count(4)
  when 0
    p "Thank You We Are Play Total #{$round} Rounds".blue
    exit
  else
    puts "Invalid Input!!!" if choice <= 0 || choice >= 5
  end
end
