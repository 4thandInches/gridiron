class CreateClassStatuses < ActiveRecord::Migration
  def change
    create_table :class_statuses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

