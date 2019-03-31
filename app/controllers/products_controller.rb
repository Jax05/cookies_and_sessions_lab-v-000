class ProductsController < ApplicationController

  def index
    @cart = cart
  end

  def add
    @product = params[:product]
    raise @product.inspect
    cart << @product

    redirect_to root_path
  end

end
