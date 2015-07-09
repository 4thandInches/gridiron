class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.integer :stat_type_id
      t.integer :player_id
      t.integer :game_id
      t.decimal :value

      t.timestamps null: false
    end
  end
end
