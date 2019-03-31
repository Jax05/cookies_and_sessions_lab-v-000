class ProductsController < ApplicationController

  def index
    # session.clear
    @cart = cart
    raise @cart.inspect
  end

  def add
    @product = params[:product]
    cart << @product

    redirect_to root_path
  end

end
