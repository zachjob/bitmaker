class User < ActiveRecord::Base
  has_many :pledges
  has_secure_password

  validates :password, length: { minimum: 8 }, on: :create
  validates :password, confirmation: true, on: :create
  validates :password_confirmation, presence: true, on: :create

  validates :email, uniqueness: true
end
