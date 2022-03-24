class StoreController < ApplicationController
  def index
    @products = Product.order(:title) #organizes products alphabetically
  end
end
