class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.string :organization
      t.string :position
      t.string :location
      t.string :profile_img
      t.string :description
      t.string :age
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
