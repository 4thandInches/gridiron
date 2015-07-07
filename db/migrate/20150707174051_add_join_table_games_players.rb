class AddJoinTableGamesPlayers < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :player_id
      t.integer :game_id
    end
  end
end
