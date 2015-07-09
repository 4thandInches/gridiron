class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :school
      t.string :head_coach
      t.string :location
      t.string :division
      t.string :conference

      t.timestamps null: false
    end
  end
end
