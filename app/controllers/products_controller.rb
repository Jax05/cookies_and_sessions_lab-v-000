class ProductsController < ApplicationController

  def index
    @cart = cart
  end

  def add
    @product = session[:product]
    cart << @product

    redirect_to products_path
  end

end
