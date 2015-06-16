require 'carrierwave/orm/activerecord'

class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :distribute
  mount_uploader :image, ImageUploader
end
