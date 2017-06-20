class Project < ActiveRecord::Base
  has_many :rewards
  has_many :pledges, through: :rewards
  has_many :backers, through: :rewards

  validates :title, :description, :goal, :start_date, :end_date, presence: true
end
