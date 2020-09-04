class AddTeamToBoards < ActiveRecord::Migration[6.0]
  def change
    add_reference :boards, :team, null: false, foreign_key: true
  end
end
