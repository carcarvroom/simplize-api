class Team < ApplicationRecord
  has_many :boards
  has_many :users, through: :boards

  def self.all_team_members(team_id)
    team_boards = Board.all.find_all do |board|
      board.team_id === team_id
    end

    members = team_boards.collect do |board|
      board.user
    end
  end

end
