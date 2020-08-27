class Team < ApplicationRecord
  has_many :users
  has_many :boards
  accepts_nested_attributes_for :users
end
