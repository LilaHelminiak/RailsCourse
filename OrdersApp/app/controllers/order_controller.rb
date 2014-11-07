class OrderController < ApplicationController
  def index
    @orders = Order.all
    @products = Product.all
    @lines = ProductLine.all
  end
end
