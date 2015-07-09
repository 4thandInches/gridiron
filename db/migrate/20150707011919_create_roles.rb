class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :player_id
      t.integer :position_id

      t.timestamps null: false
    end
  end
end
