class AddPdfToPlays < ActiveRecord::Migration
  def change
    add_attachment :plays, :pdf_file
  end
end
