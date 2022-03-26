Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  get 'store/index'

  resources :products do 
    get :who_bought, on: :member
  end

  get 'home/about'
  get 'home/contact'  
  root to: 'home#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
