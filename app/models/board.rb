class Board < ApplicationRecord
  belongs_to :user
  belongs_to :team
  has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :team
end
