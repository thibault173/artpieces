class PhotoUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  def public_id
    if model.id.nil?
      if model.name.nil?
        "artpieces/#{model.class}/#{model.email}"
      else
        "artpieces/#{model.class}/#{model.name}"
      end
    else
      "artpieces/#{model.class}/#{model.id}"
    end
  end

end
