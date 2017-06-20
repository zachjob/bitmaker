require 'test_helper'

class ProjectTest < ActiveSupport::TestCase

  test 'valid project can be created' do
    project = new_project
    project.save
    assert project.valid?
    assert project.persisted?
  end


  # To implement the story:
  # "As a user, when I create a new project I should become that project’s owner"
  # - remove the above
  # - uncomment the following two tests

  # test 'project is valid with owner' do
  #   owner   = create_user
  #   project = new_project
  #   project.owner = owner
  #   project.save
  #   assert project.valid?
  #   assert project.owner
  # end

  # test 'project is invalid without owner' do
  #   project = new_project
  #   project.save
  #   assert project.invalid?
  # end

  private

  def new_project
    project = Project.new(
      title:       'Cool new boardgame',
      description: 'Trade sheep',
      start_date:  Date.today,
      end_date:    Date.today + 1.month,
      goal:        50000
    )
  end

  def create_user
    User.create!(
      first_name:            'Sally',
      last_name:             'Lowenthal',
      email:                 'sally@example.com',
      password:              'passpass',
      password_confirmation: 'passpass'
    )
  end

end
