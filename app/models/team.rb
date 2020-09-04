class Team < ApplicationRecord
  has_many :members
  has_many :users, through: :members
  has_many :boards
end
