class Project < ActiveRecord::Base
  has_many :rewards
  accepts_nested_attributes_for :rewards
  validates_presence_of :title, :description, :goal, :start_date, :end_date

  mount_uploader :image, ImageUploader
  acts_as_taggable
end
