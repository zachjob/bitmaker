require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "email must be unique" do
    user = User.create(email: "bettymaker@gmail.com", password: "12345678", password_confirmation: "12345678")
    user2 = User.new(email: "bettymaker@gmail.com", password: "00000000", password_confirmation: "00000000")
    refute user2.valid?
  end

  test "user must include password_confirmation on create" do
    user = User.new(email: "bettymaker@gmail.com", password: "12345678")
    refute user.valid?
  end

  test "password must match confirmation" do
    user = User.new(email: "bettymaker@gmail.com", password: "12345678", password_confirmation: "87654321")
    refute user.valid?
  end

  test "password must be at least 8 characters long" do
    user = User.new(email: "bettymaker@gmail.com", password: "1234", password_confirmation: "1234")
    refute user.valid?
  end

  test 'name' do
    # arrange
    user = User.new(first_name: "Lan", last_name: "Phan")

    # assert
    assert user.name == "Lan Phan", "User name doesn't contain first and last name"
  end

  test 'total_pledged' do
    userA = User.create!(first_name: "Lan", last_name: "Phan", email: "lan@email.com", password: "password", password_confirmation: "password")

    userB = User.create!(first_name: "Patrick", last_name: "Stewart", email: "patrick@email.com", password: "password", password_confirmation: "password")

    project1 = Project.create!(
      title:       'Anti-cut backpack',
      description: 'prevent burgulars from cutting your backpack',
      start_date:  Date.tomorrow,
      end_date:    Date.tomorrow + 2.month,
      goal:        30000,
      user:        userA
    )

    pledge = Pledge.create!(
      dollar_amount:  50.00,
      project:        project1,
      user:           userB
    )

    pledge = Pledge.create!(
      dollar_amount:  50.00,
      project:        project1,
      user:           userB
    )

    assert_equal(userB.total_pledged, 100.00)
    assert_equal(userA.total_pledged, 0)
  end

end
