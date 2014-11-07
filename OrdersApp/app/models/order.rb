class Order < ActiveRecord::Base
  has_many :product_line
  has_many :product, through: :product_line  
end
