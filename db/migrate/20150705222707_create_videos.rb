class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.integer :game_id
      t.string :name

      t.timestamps null: false
    end
  end
end
