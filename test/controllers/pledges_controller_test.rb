require 'test_helper'

class PledgesControllerTest < ActionController::TestCase
  # test "create redirects to login when logged out" do
  #   logout_user
  #   project = Project.create(title: "Test Project", description: "A wonderful project", goal: 10000, start_date: 1.day.from_now, end_date: 30.days.from_now)
  #   reward = project.rewards.create(description: "A fun reward", dollar_amount: 1)
  #   pledge = project.pledges.build(dollar_amount: 1, reward: reward)
  #   post :create, params: { pledge: pledge.as_json }
  #   assert_redirected_to login_url
  # end
end
