require 'minitest/autorun'
require_relative 'magic_ball'

class MagicBallTest < Minitest::Test
  def test_ask_return_an_answer
    magic_ball = MagicBall.new
    assert_includes MagicBall::ANSWERS, magic_ball.ask("Most likely?")
  end

  def test_predefined_answers_is_array
    assert_kind_of Array, MagicBall::ANSWERS
  end

  def test_predefined_answers_is_not_empty
    refute_empty MagicBall::ANSWERS
  end

  def test_raises_error_when_question_is_number
    assert_raises "Question has invalid format." do
      magic_ball = MagicBall.new
      magic_ball.ask(1)
    end
  end

  # def test_addition_parameter_is_a_number
    # assert_raises "Invalid values." do
      # magic_ball = MagicBall.new
      # magic_ball.addition('first', 'second')
    # end
  # end

  def test_addition_of_two_number
    # assert_raises "Invalid values." do
      magic_ball = MagicBall.new
      puts "--------------"
      puts magic_ball.addition(5, 5)
      puts "--------------"
      assert magic_ball.addition(5, 5), 10
      # assert addition == 10
    # end
  end

end