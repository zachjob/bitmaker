require 'minitest/autorun'
require 'minitest/pride'
require './robot.rb'

class TestRobot < MiniTest::Test

  def test_that_foreign_robot_needing_repairs_sent_to_station_1
    # arrange
    robo = Robot.new
    robo.needs_repairs = true
    robo.foreign_model = true
    # act
    robo.station
    # assert
    assert_equal(1, robo.station)
  end

  def test_that_vintage_robot_needing_repairs_sent_to_station_2
    # arrange
    robo = Robot.new
    robo.needs_repairs = true
    robo.vintage_model = true
    # act
    robo.station
    # assert
    assert_equal(2, robo.station)
  end

  def test_that_standard_robot_needing_repairs_sent_to_station_3
    # arrange
    robo = Robot.new
    robo.needs_repairs = true
    # act
    robo.station
    # assert
    assert_equal(3, robo.station)
  end

  def test_that_robot_in_good_condition_sent_to_station_4
    # arrange
    robo = Robot.new
    robo.needs_repairs = false
    # act
    robo.station
    # assert
    assert_equal(4, robo.station)
  end

  def test_prioritize_tasks_with_empty_todo_list_returns_negative_one
    # arrange
    robo = Robot.new
    robo.todos = []
    # act
    robo.prioritize_tasks
    # assert
    assert_equal(-1, robo.prioritize_tasks)
  end

  def test_prioritize_tasks_with_todos_returns_max_todo_value
    # arrange
    robo = Robot.new
    robo.todos = ["Go to the store.", "Buy milk.",]
    # act
    robo.prioritize_tasks
    # assert
    expected_result = robo.todos.max
    assert_equal(expected_result, robo.prioritize_tasks)
  end

  def test_workday_on_day_off_returns_false
    # arrange
    robo = Robot.new
    robo.day_off = "Wednesday"
    # act
    robo.workday?("Wednesday")
    # assert
    actual_result = robo.workday?("Wednesday")
    assert_equal(false, actual_result)
  end

  def test_workday_not_day_off_returns_true
    # arrange
    robo = Robot.new
    robo.day_off = "Wednesday"
    # act
    robo.workday?("Thursday")
    # assert
    actual_result = robo.workday?("Thursday")
    assert_equal(true, actual_result)
  end

end
