class ProductsController < ApplicationController

  def index
    @cart = cart
  end

  def add
    @product = session[:product]
    raise @product.inspect
    cart << @product

    redirect_to root_path
  end

end
