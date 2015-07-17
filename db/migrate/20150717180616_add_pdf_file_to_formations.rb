class AddPdfFileToFormations < ActiveRecord::Migration
  def change
    add_attachment :formations, :pdf_file
  end
end
