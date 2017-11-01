class Update < ApplicationRecord
  validates :title, :description, presence: true

  belongs_to :project
end
