class CheckoutController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def create
    product = Product.find(params[:id])
    Stripe::Checkout::Session.create({
    mode: 'payment',
# Remove the payment_method_types parameter
# to manage payment methods in the Dashboard
    payment_method_types: ['card'],
    line_items: [{
      price_data: {
      # The currency parameter determines which
      # payment methods are used in the Checkout Session.
        currency: 'gbp',
          product_data: {
            name: product.title,
            description: product.description,
          },
          unit_amount: product.price,
        },
        quantity: product.quantity,
      }],
      success_url: root_url,
      cancel_url: root_url,
    })
  end

end