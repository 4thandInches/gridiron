class AddFile < ActiveRecord::Migration
  def change
    add_attachment :players, :uploaded_file
  end
end
