class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :jersey_number
      t.string :phone_number
      t.string :email
      t.decimal :weight
      t.string :height
      t.integer :depth_chart_position
      t.integer :class_status_id

      t.timestamps null: false
    end
  end
end
