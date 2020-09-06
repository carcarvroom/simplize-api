class AddUserToBoards < ActiveRecord::Migration[6.0]
  def change
    add_reference :boards, :user, foreign_key: true
  end
end
