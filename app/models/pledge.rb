class Pledge < ApplicationRecord
  belongs_to :user
  belongs_to :project

  validates :dollar_amount, presence: true
  validates :user, presence: true
  validate :test_if_pledger_is_the_owner

  def test_if_pledger_is_the_owner
    if user == project.user
      errors.add(:user_id,"Cannot pledge to own project")
    end
  end
end
