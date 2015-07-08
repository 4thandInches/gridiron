class AddIndices < ActiveRecord::Migration
  def change
    add_index :roles, :player_id
    add_index :roles, :position_id
    add_index :memberships, :player_id
    add_index :memberships, :game_id
  end
end
