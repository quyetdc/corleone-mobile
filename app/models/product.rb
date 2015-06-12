class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :distribute
  has_attached_file :image, :styles => { :medium => "365x478>", :thumb => "107x142>" }, :default_url => "missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
