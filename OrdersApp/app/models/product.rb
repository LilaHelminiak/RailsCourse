class Product < ActiveRecord::Base
  has_many :product_line
  has_many :orders, through: :product_line  
end
