class AddDepthChartPositionToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :depth_chart_position, :integer
  end
end
