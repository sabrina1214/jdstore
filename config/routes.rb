Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'products#index'

namespace :admin do
  resources :products
end

resources :products do
  member do
    post :add_to_cart
  end
end

  resources :carts do
    collection do
      delete :clean
       post :checkout
    end
  end

<<<<<<< HEAD
  resources :cart_items
=======
  namespace :account do
    resources :orders
  end

  
>>>>>>> story5
end
