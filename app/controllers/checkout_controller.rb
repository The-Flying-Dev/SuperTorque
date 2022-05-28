class CheckoutController < ApplicationController
  #include CurrentCart
  #before_action :set_cart

  def create
    product = Product.find(params[:id])
      @session = Stripe::Checkout::Session.create({        
        payment_method_types: ['card'],
        line_items: [{
          name: product.title,
          amount: product.price,
          currency: "gbp",
          quantity: 1
        }],
        
        mode: 'payment',
        success_url: root_url,
        cancel_url: root_url,
      })
      respond_to do |format|
        format.js 
      end
      
  end

end