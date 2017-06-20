class Pledge < ApplicationRecord
  belongs_to :user
  belongs_to :project

  validate :enough_pledged

  def enough_pledged
    unless self.dollar_amount >= reward.dollar_amount
      self.errors.add(:dollar_amount, "pledged must be at least $#{reward.dollar_amount}")
    end
  end
end
