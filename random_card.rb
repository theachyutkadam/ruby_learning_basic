class String
  def blue; "\e[34m#{self}\e[0m" end
  def green; "\e[32m#{self}\e[0m" end
  def magenta; "\e[35m#{self}\e[0m" end
end

def random_number(number_of_cards)
  for i in 1..number_of_cards
    @row = (1..99).to_a.shuffle.sample(9)
    @rand_four = @row.sample(4)
    @rand_four.each_with_index do |v|
      @row.each_with_index do |j, i|
        if v == j
          @row[i] = 0
        end
      end
    end
    puts "++++++++++++++><++++++++++++++".blue
    puts "#{@row}".green
  end
  puts "++++++++++++++><++++++++++++++".blue
end

print "Select 1 to 4 Cards: ".magenta
choice = gets.chomp.to_i

case choice
when 1
  puts random_number(1)
when 2
  puts random_number(2)
when 3
  puts random_number(3)
when 4
  puts random_number(4)
when 0
  exit
else
  puts "Invalid Input!!!" if choice <= 0 || choice >= 5
end