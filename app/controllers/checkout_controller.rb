class CheckoutController < ApplicationController
  before_action :authenticate_user!
  #before_action :set_cart

  def create
    product = Product.find(params[:id])
      @session = Stripe::Checkout::Session.create({  
        customer: current_user.stripe_customer_id,      
        payment_method_types: ['card'],
        shipping_address_collection: {
          allowed_countries: ['US', 'GB'],
        },
        shipping_options: [
          {
            shipping_rate_data: {
              type: 'fixed_amount',
              fixed_amount: {
                amount: 0,
                currency: 'gbp',
              },
              display_name: 'Free shipping',
              # Delivers between 5-7 business days
              delivery_estimate: {
                minimum: {
                  unit: 'business_day',
                  value: 5,
                },
                maximum: {
                  unit: 'business_day',
                  value: 7,
                },
              }
            }
          },
          {
            shipping_rate_data: {
              type: 'fixed_amount',
              fixed_amount: {
                amount: 0,
                currency: 'gbp',
              },
              display_name: 'Next day air',
              # Delivers in exactly 1 business day
              delivery_estimate: {
                minimum: {
                  unit: 'business_day',
                  value: 1,
                },
                maximum: {
                  unit: 'business_day',
                  value: 3,
                },
              }
            }
          },
        ],
        line_items: [{
          name: product.title,
          amount: product.price,
          currency: "gbp",
          images: [product.image_url],
          quantity: 1
        }],
        
        mode: 'payment',
        success_url: success_url + "?session_id={CHECKOUT_SESSION_ID}",
        cancel_url: cancel_url,
      })
      respond_to do |format|
        format.js 
      end
      
  end

  def success
    if params[:session_id].present? 
      
      @session_with_expand = Stripe::Checkout::Session.retrieve({ id: params[:session_id], expand: ["line_items"]})
      #@session_with_expand.line_items.data.each do |line_item|
      #product = Product.find(params[:id])
      #end
    else
      redirect_to cancel_url, alert: "No info to display"
    end
  end

  def cancel
  end

end