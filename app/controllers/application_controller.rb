class ApplicationController < ActionController::Base
  

  helper_method :ensure_cart_not_empty

  protected 

  

  private
  def ensure_cart_not_empty
    if @cart.line_items.empty?
      redirect_to store_index_url, notice: 'Hey! Add some cars, your Garage is empty'
    end
  end

  
end
