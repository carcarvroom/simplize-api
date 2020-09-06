class Task < ApplicationRecord
  belongs_to :list, optional: true
  has_many :comments
end
