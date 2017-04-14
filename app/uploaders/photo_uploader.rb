# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  def default_url(*args)
    ActionController::Base.helpers.asset_path("fallback/default.png")
  end
end

