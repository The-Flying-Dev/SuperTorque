Rails.application.routes.draw do

  
  get 'admin' => 'admin#index'

  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  
  #resources :admins
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :orders
  resources :products
  resources :line_items
  resources :carts
  resources :contacts, only: [:new, :create]
  get 'store/index'
  

  resources :products do 
    get :who_bought, on: :member
  end

  get 'home/about'
  
  root to: 'home#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
