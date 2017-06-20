class Project < ActiveRecord::Base
  has_many :rewards
  has_many :pledges
  has_many :backers, through: :pledges, source: :user

  validates :title, :description, :goal, :start_date, :end_date, presence: true
end
