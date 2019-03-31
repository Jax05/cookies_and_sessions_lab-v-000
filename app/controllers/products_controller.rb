class ProductsController < ApplicationController

  def index
    session.clear
    @cart = cart
  end

  def add
    @product = session[:product]
    cart << @product

    redirect_to root_path
  end

end
