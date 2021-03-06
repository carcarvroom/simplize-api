class User < ApplicationRecord
  include PublicActivity::Model
  tracked
  
  has_many :members
  has_many :teams, through: :members
  has_many :comments
  has_many :boards

  has_secure_password
  validates :username, uniqueness: true
  validates :description, length: { maximum: 500, too_long: "Maximum of 500 characters." }

end
