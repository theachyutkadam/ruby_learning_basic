# class User
#
#   def say_secret_with_self
#     self.secret
#   end
#
#   protected
#
#   def secret
#     p "this is the protected method"
#     "secret"
#   end
# end
#
# u = User.new
# u.say_secret_with_self


class User

  attr_reader :name

  def initialize(name)
    "initialize methods"
    @name = name
  end

  def ==(other_user)
    p "== method"
    p self.secret == other_user.secret
  end

  protected

  def secret
    p "protected method"
    p "#{name}.#{name.length}"
  end
end

bob = User.new("Bob")
john = User.new("John")
bob == john
