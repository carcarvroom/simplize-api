class Board < ApplicationRecord
  belongs_to :user
  belongs_to :team
  has_many :tasks, dependent: :destroy

  def self.boards_by_team(team_id)
    boards = Board.all.find_all do |board|
      board.team_id === team_id
    end
  end

end
