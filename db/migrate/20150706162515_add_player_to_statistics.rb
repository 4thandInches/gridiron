class AddPlayerToStatistics < ActiveRecord::Migration
  def change
    add_column :offensive_stats, :player_id, :integer
    add_column :defensive_stats, :player_id, :integer
    add_column :special_teams_stats, :player_id, :integer
  end
end
