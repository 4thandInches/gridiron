class Play < ActiveRecord::Base
  
  has_attached_file :pdf_file
  validates_attachment_content_type :pdf_file, content_type: ['image/jpeg', 'image/png', 'application/pdf']

end
