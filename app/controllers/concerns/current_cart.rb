module CurrentCart
 # index cart_id as symbol due to Rails making the current session look like a hash to the controller
  private

    def set_cart 
      @cart = Cart.find(session[:cart_id])  #starts by finding cart_id, if it does not exist it will create a new cart
      rescue ActiveRecord::RecordNotFound   #then store that cart_id inside the session
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
end