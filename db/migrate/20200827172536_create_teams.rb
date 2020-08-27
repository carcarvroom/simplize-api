class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :organization
      t.integer :user_id

      t.timestamps
    end
  end
end
