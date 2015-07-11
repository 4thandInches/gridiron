class AddCodeToPosition < ActiveRecord::Migration
  def change
    add_column :positions, :code, :string
  end
end
