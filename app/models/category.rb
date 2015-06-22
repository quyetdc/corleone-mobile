class Category < ActiveRecord::Base
  has_many :distributes
  has_many :products

end
