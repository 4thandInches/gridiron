class AddDepthPositionToRoles < ActiveRecord::Migration
  def change
    add_column :roles, :depth_chart_position, :integer
  end
end
