class DropPotatoTable < ActiveRecord::Migration
  def change
    drop_table :potatos
  end
end
