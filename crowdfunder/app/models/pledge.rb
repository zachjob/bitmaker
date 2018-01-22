class Pledge < ApplicationRecord
  belongs_to :user
  belongs_to :project

  validates :dollar_amount, presence: true
  validates :user, presence: true
  validate :test_if_pledger_is_the_owner
  validate :dollar_amount_must_be_greater_than_zero

  def test_if_pledger_is_the_owner
    if user == project.user
      errors.add(:user_id,"Cannot pledge to own project")
    end
  end

  def dollar_amount_must_be_greater_than_zero
    if dollar_amount <= 0
      errors.add(:user_id,"Pledge must be greater than 0.")
    end
  end
end
