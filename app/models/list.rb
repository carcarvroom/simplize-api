class List < ApplicationRecord
  belongs_to :board
  has_many :tasks
  has_many :comments, through: :tasks

  def self.lists_by_id(board_id)
    List.all.where(board_id: board_id)
  end
end
