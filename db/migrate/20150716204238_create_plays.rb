class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.integer :formation_id
      t.string :name

      t.timestamps null: false
    end
  end
end
