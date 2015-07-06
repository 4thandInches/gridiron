class CreateOffensiveStats < ActiveRecord::Migration
  def change
    create_table :offensive_stats do |t|
      t.integer :passing_yards
      t.integer :passing_attempts
      t.integer :pass_completions
      t.decimal :completion_percentage
      t.integer :twenty_pass
      t.integer :passing_td
      t.integer :longest_pass
      t.integer :sacks
      t.integer :interceptions
      t.integer :rushing_yards
      t.integer :longest_rush
      t.integer :rushing_attempts
      t.integer :twenty_rush
      t.decimal :average_yards_rush
      t.integer :rushing_td
      t.integer :fumbles
      t.integer :receiving_yards
      t.integer :receptions
      t.integer :targets
      t.integer :drops
      t.integer :receiving_td
      t.integer :twenty_reception
      t.integer :longest_reception
      t.integer :average_reception

      t.timestamps null: false
    end
  end
end
