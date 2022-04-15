class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :ensure_cart_not_empty

  def authenticate_admin!
    authenticate_user!

    unless current_user.admin?
      redirect_to store_index_url, alert: "Forbidden entry"
    end
  end

  protected 

  def configure_permitted_parameters
    added_attrs = [:email, :username, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: [:email, :password]
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
  

  private
  def ensure_cart_not_empty
    if @cart.line_items.empty?
      redirect_to store_index_url, notice: 'Hey! Add some cars, your Garage is empty'
    end
  end

  
end
