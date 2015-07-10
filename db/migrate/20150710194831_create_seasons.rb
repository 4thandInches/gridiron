class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.string :year
      t.integer :team_id

      t.timestamps null: false
    end
  end
end
