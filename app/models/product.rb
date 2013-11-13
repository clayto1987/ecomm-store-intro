class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price
  validates :name, :description, :price, :presence => true
  validates :price, :numericality => true
end
