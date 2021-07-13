require "test/unit"
require_relative "./loudo"
include Test::Unit::Assertions

class LoudoTest < Test::Unit::TestCase
  def test_random_count
    obj = Loudo.new
    obj.random_count(1)
    assert_equal obj, "achyut"
    # x = true
    # assert x, "should be pass"
  end
end