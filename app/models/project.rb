class Project < ActiveRecord::Base
  has_many :rewards
  has_many :pledges
  has_many :users, through: :pledges # backers
  belongs_to :user # project owner

  validates :title, :description, :goal, :start_date, :end_date, :user_id, presence: true

  def earned
    pledges.sum(&:dollar_amount)
  end

  # def earned
  #   pledges.sum do |pledge|
  #     pledge.dollar_amount
  #   end
  # end
  # def earned
  #   total = 0
  #   pledges.each do |pledge|
  #     total += pledge.dollar_amount
  #   end
  #   total
  # end
end
