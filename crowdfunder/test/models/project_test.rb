require 'test_helper'

class ProjectTest < ActiveSupport::TestCase

  test 'valid project can be created' do
    owner = new_user
    owner.save
    project = new_project
    project.user = owner
    project.save
    assert project.valid?
    assert project.persisted?
    assert project.user
  end

  test 'project is invalid without owner' do
    project = new_project
    project.user = nil
    project.save
    assert project.invalid?, 'Project should not save without owner.'
  end

  def new_project
    Project.new(
      title:       'Cool new boardgame',
      description: 'Trade sheep',
      start_date:  Date.today,
      end_date:    Date.today + 1.month,
      goal:        50000
    )
  end

  def new_user
    User.new(
      first_name:            'Sally',
      last_name:             'Lowenthal',
      email:                 'sally@example.com',
      password:              'passpass',
      password_confirmation: 'passpass'
    )
  end

  test 'project start date cannot be in the past' do
      # arrange
      new_project.start_date= Date.yesterday

      # act
      new_project.save

      # assert
      assert new_project.invalid?, 'Start date cannot be in the past'
    end

    test 'project end date later than start date' do
      # arrange
      new_project.end_date = Date.yesterday

      # act
      new_project.save

      # assert
      assert new_project.invalid?, 'End date must be later'
    end

    test 'total pledged in project' do
        userA = User.create!(first_name: "Lan", last_name: "Phan", email: "pablo@email.com", password: "password", password_confirmation: "password")

        userB = User.create!(first_name: "Patrick", last_name: "Stewart", email: "patrick@email.com", password: "password", password_confirmation: "password")

        project1 = Project.create!(
          title:       'Anti-theft backpack',
          description: 'anti-cut backpack and waterproof',
          start_date:  Date.tomorrow,
          end_date:    Date.tomorrow + 1.month,
          goal:        50000,
          user:        userA
        )

        assert_equal project1.total_pledged_in_project, 0

        pledge = Pledge.create!(
          dollar_amount:  50.00,
          project:        project1,
          user:           userB
        )

        assert_equal( project1.total_pledged_in_project, 50.00)
      end

end
