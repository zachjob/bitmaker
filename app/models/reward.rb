class Reward < ActiveRecord::Base
  belongs_to :project
  has_many :pledges
  has_many :backers, through: :pledges, source: :user

  def dollar_amount
    (amount_in_cents / 100.00).round(2)
  end

end
