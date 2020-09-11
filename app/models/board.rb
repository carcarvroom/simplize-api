class Board < ApplicationRecord
  include PublicActivity::Model
  tracked
  
  has_many :lists
  has_many :tasks, dependent: :destroy
  belongs_to :team, optional: true
  belongs_to :user, optional: true

  def self.get_my_boards(user_id)
    User.find(user_id).boards
  end

  def self.get_boards_by_type(user_id, board_type)
    Board.get_my_boards(user_id).find_all do |board|
      board.board_type == board_type
    end
  end

end
