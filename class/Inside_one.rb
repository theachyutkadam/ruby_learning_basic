CONST = ' out there'
class Inside_one
   CONST = ' in there'
   def where_is_my_CONST
      ::CONST + ' inside one'
   end
end

class Inside_two
   CONST = ' inside two'
   def where_is_my_CONST
      CONST
   end
end

p CONST
puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST
# puts Inside_one::CONST
# puts Object::CONST
puts Object::CONST + Inside_two::CONST
p "======================="
puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST + Inside_two::CONST