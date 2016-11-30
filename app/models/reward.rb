class Reward < ActiveRecord::Base
  belongs_to :project

  def dollar_amount
    (amount / 100.00).round(2)
  end

end
