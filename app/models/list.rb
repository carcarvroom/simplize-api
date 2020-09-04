class List < ApplicationRecord
  belongs_to :board
  has_many :tasks
  has_many :comments, through: :tasks
end
