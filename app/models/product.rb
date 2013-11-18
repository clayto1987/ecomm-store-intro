class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price, :category_id, :image_filename
  belongs_to :category
  validates :name, :description, :price, :presence => true
  validates :price, :numericality => true
end
