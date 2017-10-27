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

  def test_lift_off_returns_true
    result = @rocket.lift_off
    expected = true
    assert_equal(expected, result)
  end

  def test_lift_off_returns_false
    @rocket.lift_off
    result = @rocket.lift_off
    expected = false
    assert_equal(expected, result)
  end

  def test_land_returns_true
    @rocket.lift_off
    result = @rocket.land
    expected = true
    assert_equal(expected, result)
  end

  def test_land_returns_false
    result = @rocket.land
    expected = false
    assert_equal(expected, result)
  end
end
