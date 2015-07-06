class CreateDefensiveStats < ActiveRecord::Migration
  def change
    create_table :defensive_stats do |t|
      t.integer :tackle
      t.integer :asst_tackle
      t.integer :combined_tackle
      t.integer :sacks
      t.integer :yards_lost_sack
      t.integer :forced_fumble
      t.integer :fumble_recovery
      t.integer :pass_defend
      t.integer :interception
      t.integer :yards_return_interception
      t.integer :touchdown

      t.timestamps null: false
    end
  end
end
