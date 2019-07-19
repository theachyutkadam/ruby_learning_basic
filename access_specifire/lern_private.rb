class User

  def initialize
    secret
  end

  def say_secret_with_self
    p "first method"
    self.say_secret
  end

  def say_secret
    p "this is second method"
    secret
  end

  private

  def secret
    p "this is third method"
    puts "secret achyut"
  end
end

u = User.new
# u.say_secret
# u.say_secret_with_self
u.send(secret)
