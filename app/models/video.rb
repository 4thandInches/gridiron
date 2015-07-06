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


# def video?
#   [ 'application/x-mp4',
#     'video/mpeg',
#     'video/quicktime',
#     'video/x-la-asf',
#     'video/x-ms-asf',
#     'video/x-msvideo',
#     'video/x-sgi-movie',
#     'video/x-flv',
#     'flv-application/octet-stream',
#     'video/3gpp',
#     'video/3gpp2',
#     'video/3gpp-tt',
#     'video/BMPEG',
#     'video/BT656',
#     'video/CelB',
#     'video/DV',
#     'video/H261',
#     'video/H263',
#     'video/H263-1998',
#     'video/H263-2000',
#     'video/H264',
#     'video/JPEG',
#     'video/MJ2',
#     'video/MP1S',
#     'video/MP2P',
#     'video/MP2T',
#     'video/mp4',
#     'video/MP4V-ES',
#     'video/MPV',
#     'video/mpeg4',
#     'video/mpeg4-generic',
#     'video/nv',
#     'video/parityfec',
#     'video/pointer',
#     'video/raw',
#     'video/rtx' ].include?(asset.content_type)
# end
