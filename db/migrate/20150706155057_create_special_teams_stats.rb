class CreateSpecialTeamsStats < ActiveRecord::Migration
  def change
    create_table :special_teams_stats do |t|
      t.integer :field_goals_attempted
      t.integer :field_goals_made
      t.decimal :field_goal_percentage
      t.integer :longest_field_goal
      t.integer :range_one_to_nineteen
      t.integer :range_twenty_to_twentynine
      t.integer :range_thirty_to_thirtynine
      t.integer :range_forty_to_fortynine
      t.integer :range_fifty_plus
      t.integer :point_made
      t.integer :point_attempt
      t.integer :punt
      t.integer :total_yards_punt
      t.integer :longest_punt
      t.decimal :average_yards_punt
      t.decimal :net_punt_average
      t.integer :blocked_punt
      t.integer :punts_in_redzone
      t.integer :touchbacks
      t.integer :fair_catch

      t.timestamps null: false
    end
  end
end
