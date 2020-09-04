class Board < ApplicationRecord
  has_many :lists
  has_many :tasks, through: :lists
  belongs_to :team
end
