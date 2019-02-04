puts "start program"
def raise_exception
  p "---"
  begin

    puts "before exception arise"

    raise 'exception creation'

    puts "afrer exception arise"

    rescue 
      puts "final saved!"

  end

end
puts "Outside of the begin block1"

raise_exception