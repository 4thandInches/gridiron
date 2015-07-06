class Video < ActiveRecord::Base
  has_attached_file :film,
                    :storage => :s3,
                    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }

  validates_attachment_content_type :film, :content_type => /\Aimage\/.*\Z/

  def s3_credentials
    {:bucket => ENV["S3_BUCKET_NAME"],
     :access_key_id => ENV["AWS_ACCESS_KEY_ID"],
     :secret_access_key => ENV["AWS_SECRET_ACCESS_KEY"]}
  end

end
