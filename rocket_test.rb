require "minitest/autorun"
require "minitest/pride"
require_relative "rocket"

class RocketTest < Minitest::Test
  def setup
    @rocket = Rocket.new
  end

  def teardown
    @rocket = nil
  end

  def test_less_than_zero_returns_true
    skip
    result =
    expected =
    assert_equal(expected, result)
  end
end
