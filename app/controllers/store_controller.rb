class StoreController < ApplicationController
  skip_before_action :authenticate_user!
  
  include CurrentCart
  before_action :set_cart
  
  def index
    @products = Product.order(:title) #organizes products alphabetically
  end

  
end
