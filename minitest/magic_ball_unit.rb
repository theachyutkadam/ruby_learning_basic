# require_relative "test/unit/assertions"
require 'test/unit'
require_relative './magic_ball'
include Test::Unit::Assertions

class MagicBallTest < Test::Unit::TestCase
  def test_world
    hello = 'world'
    assert_equal 'new_world', MagicBall.world, "Hello.world should return a string called 'new_world'"
  end

  x = true

  assert x, 'should be pass'
  # def test_flunk
  #   flunk "You shall not pass"
  # end
end