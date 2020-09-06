class AddTeamToBoards < ActiveRecord::Migration[6.0]
  def change
    add_reference :boards, :team, foreign_key: true
  end
end
