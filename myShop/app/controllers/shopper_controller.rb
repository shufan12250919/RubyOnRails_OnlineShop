class ShopperController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.order(:name)
  end

  # GET /shopper/1
  # GET /shopper/1.json
  def show
    @product = Product.find params[:id]
  end

  def search
      if params[:search]
        @parameter = params[:search]
        @products = Product.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")
      end
  end
  
end
