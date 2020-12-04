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

end
