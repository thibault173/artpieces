class PhotoUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  def public_id
    if model.is_a?(Piece)
      "artpieces/#{model.class}/#{model.name}"
    else
      "artpieces/#{model.class}/#{model.id}"
    end
  end

end
