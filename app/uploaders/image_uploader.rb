# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "public/products"
  end

  version :thumbnail do
    process :resize_to_limit => [105, 142]
  end
end