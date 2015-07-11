class CreateSituations < ActiveRecord::Migration
  def change
    create_table :situations do |t|
      t.string :time
      t.string :task
      t.integer :itinerary_id

      t.timestamps null: false
    end
  end
end
