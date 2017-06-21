require 'test_helper'

class PledgeTest < ActiveSupport::TestCase

  test 'owner cannot back own project' do
    owner = NewUser
    owner.save
    project = NewProject
    project.owner = owner
    project.save
    pledge = Pledge.new(dollar_amount: 3.00, project: project)
    pledge.user = owner
    pledge.save
    assert pledge.invalid?, 'Owner should not be able to pledge towards own project'
  end

  NewProject = Project.new(
    title:       'Cool new boardgame',
    description: 'Trade sheep',
    start_date:  Date.today,
    end_date:    Date.today + 1.month,
    goal:        50000
  )

  NewUser = User.new(
    first_name:            'Sally',
    last_name:             'Lowenthal',
    email:                 'sally@example.com',
    password:              'passpass',
    password_confirmation: 'passpass'
  )

end
