class RemoveDepthPositionFromPlayers < ActiveRecord::Migration
  def change
    remove_column :players, :depth_chart_position
  end
end
