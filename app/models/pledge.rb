class Pledge < ApplicationRecord
  belongs_to :user
  belongs_to :reward
  has_one :project, through: :reward
  
  validate :enough_pledged

  def enough_pledged
    unless amount_in_cents >= reward.amount_in_cents
      self.errors.add(:amount_in_cents, "Amount pledged must be at least $#{reward.dollar_amount}")
    end
  end
end
