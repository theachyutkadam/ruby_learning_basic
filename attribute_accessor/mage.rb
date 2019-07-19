class Mage
  attr_accessor :name, :spell
  def enchant(target)
    puts "#{@name} casts #{@spell} on #{target.name}!"
  end
end

require "mage"
m = Mage.new
m.name = "achyut"
n = Mage.new
n.name = "ravi"
n.spell = "abcd"
n.enchant(m)  # => ravi casts abcd on achyut!
