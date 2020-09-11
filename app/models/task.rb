class Task < ApplicationRecord
  include PublicActivity::Model
  tracked
  
  belongs_to :list, optional: true
  belongs_to :board, optional: true
  has_many :comments

  validates :title, presence: true
end
