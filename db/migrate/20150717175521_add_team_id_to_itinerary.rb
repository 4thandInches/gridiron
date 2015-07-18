class AddTeamIdToItinerary < ActiveRecord::Migration
  def change
    add_column :itineraries, :team_id, :integer
  end
end
