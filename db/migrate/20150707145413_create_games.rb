class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :opponent
      t.string :location
      t.datetime :time
      t.boolean :home

      t.timestamps null: false
    end
  end
end
