class CreatePotatos < ActiveRecord::Migration
  def change
    create_table :potatos do |t|

      t.timestamps null: false
    end
  end
end
