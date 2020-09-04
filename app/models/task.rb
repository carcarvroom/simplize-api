class Task < ApplicationRecord
  belongs_to :list
  has_many :comments
end
