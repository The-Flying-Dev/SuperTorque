Rails.application.routes.draw do

  devise_for :users

  resources :orders
  resources :products
  #resources :line_items
  #resources :carts  
  resources :contacts, only: [:create]
  post 'checkout/create', to: 'checkout#create'
  resources :webhooks, only: [:create]
  get "success", to: "checkout#success"
  get "cancel", to: "checkout#cancel"  
  
  #url => controller + action => prefix. eg: shop_path
  get '/shop', to: 'store#index', as: :shop 
  get '/about', to: 'home#about', as: :about
  get '/contact', to: 'contacts#new', as: :contact


  resources :products do 
    get :who_bought, on: :member
  end

  
  
  root to: 'home#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
