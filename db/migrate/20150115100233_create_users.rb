class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :description
      t.text :skills
      t.string :position
      t.integer :is_captain
      t.string :email_id
      t.integer :captain_id
      t.float :bid_value
      t.string :contact

      t.timestamps null: false
    end
  end
end
