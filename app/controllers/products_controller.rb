class ProductsController < ApplicationController

  def index
    session.clear
  end

  def add
    cart << params[:product]

    redirect_to root_path
  end

end
