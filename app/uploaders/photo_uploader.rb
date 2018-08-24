class PhotoUploader < CarrierWave::Uploader::Base


  include Cloudinary::CarrierWave

  def public_id
    "artpieces/#{model.class}/#{model.id}"
  end


end
