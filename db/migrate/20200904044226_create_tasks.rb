class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.integer :owner_id
      t.text :description
      t.string :priority
      t.string :status
      t.boolean :resolved
      t.belongs_to :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
