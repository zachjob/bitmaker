class Project < ActiveRecord::Base
  has_many :rewards
  has_many :pledges
  has_many :users, through: :pledges # backers
  belongs_to :user # project owner
  has_many :updates


  validates :title, :description, :goal, :start_date, :end_date, :user_id, presence: true
  validate :goal_must_be_positive_number

  def earned
    pledges.sum(&:dollar_amount)
  end

  def check_if_user_already_pledged(user)
    if pledges.map(&:user).include?(user)
      "You have already backed this project."
    end
  end

  def start_date_cannot_be_in_the_past
    if start_date <= Date.today
      errors.add(:start_date, 'Start date cannot be in the future')
    end
  end

  def end_date_later_than_start_date
    if end_date < start_date && end_date.present?
      errors.add(:end_date, 'Must be later than start date')
    end
  end

  def total_pledged_in_project
    self.pledges.sum(:dollar_amount)
  end

  def backed_up?(current_user)
    return self.users.include?(current_user)
  end

  def goal_must_be_positive_number
    if goal <= 0
      errors.add(:goal,"must be greater than 0.")
    end
  end
end
