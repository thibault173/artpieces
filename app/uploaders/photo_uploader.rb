class PhotoUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  def public_id
    if model.id.nil?
      "artpieces/#{model.class}/#{model.name}"
    else
      "artpieces/#{model.class}/#{model.id}"
    end
  end

end
